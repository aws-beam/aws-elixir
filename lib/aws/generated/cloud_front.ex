# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CloudFront do
  @moduledoc """
  Amazon CloudFront

  This is the *Amazon CloudFront API Reference*.

  This guide is for developers who need detailed information about CloudFront API
  actions, data types, and errors. For detailed information about CloudFront
  features, see the [Amazon CloudFront Developer Guide](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Introduction.html).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      response_headers_policy_in_use() :: %{
        "Message" => String.t()
      }

  """
  @type response_headers_policy_in_use() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_distribution_tenant_request() :: %{}

  """
  @type get_distribution_tenant_request() :: %{}

  @typedoc """

  ## Example:

      invalidation_summary() :: %{
        "CreateTime" => non_neg_integer(),
        "Id" => String.t(),
        "Status" => String.t()
      }

  """
  @type invalidation_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_origin_access_controls() :: %{
        "Message" => String.t()
      }

  """
  @type too_many_origin_access_controls() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      realtime_metrics_subscription_config() :: %{
        "RealtimeMetricsSubscriptionStatus" => list(any())
      }

  """
  @type realtime_metrics_subscription_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      key_value_store_association() :: %{
        "KeyValueStoreARN" => String.t()
      }

  """
  @type key_value_store_association() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      signer() :: %{
        "AwsAccountNumber" => String.t(),
        "KeyPairIds" => key_pair_ids()
      }

  """
  @type signer() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_cache_policy_request() :: %{
        optional("IfMatch") => String.t(),
        required("CachePolicyConfig") => cache_policy_config()
      }

  """
  @type update_cache_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_response_headers_policies_result() :: %{
        "ResponseHeadersPolicyList" => response_headers_policy_list()
      }

  """
  @type list_response_headers_policies_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cloud_front_origin_access_identity_already_exists() :: %{
        "Message" => String.t()
      }

  """
  @type cloud_front_origin_access_identity_already_exists() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_realtime_log_configs_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => integer()
      }

  """
  @type list_realtime_log_configs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_connection_group_request() :: %{
        optional("AnycastIpListId") => String.t(),
        optional("Enabled") => boolean(),
        optional("Ipv6Enabled") => boolean(),
        required("IfMatch") => String.t()
      }

  """
  @type update_connection_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_origin_groups_per_distribution() :: %{
        "Message" => String.t()
      }

  """
  @type too_many_origin_groups_per_distribution() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      end_point() :: %{
        "KinesisStreamConfig" => kinesis_stream_config(),
        "StreamType" => String.t()
      }

  """
  @type end_point() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_response_headers_policy_result() :: %{
        "ETag" => String.t(),
        "ResponseHeadersPolicy" => response_headers_policy()
      }

  """
  @type update_response_headers_policy_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_association() :: %{
        "Message" => String.t()
      }

  """
  @type invalid_association() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      streaming_distribution_not_disabled() :: %{
        "Message" => String.t()
      }

  """
  @type streaming_distribution_not_disabled() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_realtime_log_config_request() :: %{
        optional("ARN") => String.t(),
        optional("Name") => String.t()
      }

  """
  @type delete_realtime_log_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_origin_request_policies_result() :: %{
        "OriginRequestPolicyList" => origin_request_policy_list()
      }

  """
  @type list_origin_request_policies_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cannot_change_immutable_public_key_fields() :: %{
        "Message" => String.t()
      }

  """
  @type cannot_change_immutable_public_key_fields() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_function_associations() :: %{
        "Message" => String.t()
      }

  """
  @type too_many_function_associations() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_origin_access_identity() :: %{
        "Message" => String.t()
      }

  """
  @type invalid_origin_access_identity() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      forwarded_values() :: %{
        "Cookies" => cookie_preference(),
        "Headers" => headers(),
        "QueryString" => boolean(),
        "QueryStringCacheKeys" => query_string_cache_keys()
      }

  """
  @type forwarded_values() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      distribution_not_disabled() :: %{
        "Message" => String.t()
      }

  """
  @type distribution_not_disabled() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("Resource") => String.t(),
        required("Tags") => tags()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      realtime_log_configs() :: %{
        "IsTruncated" => boolean(),
        "Items" => list(realtime_log_config()),
        "Marker" => String.t(),
        "MaxItems" => integer(),
        "NextMarker" => String.t()
      }

  """
  @type realtime_log_configs() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      no_such_continuous_deployment_policy() :: %{
        "Message" => String.t()
      }

  """
  @type no_such_continuous_deployment_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_continuous_deployment_policy_request() :: %{}

  """
  @type get_continuous_deployment_policy_request() :: %{}

  @typedoc """

  ## Example:

      update_key_group_result() :: %{
        "ETag" => String.t(),
        "KeyGroup" => key_group()
      }

  """
  @type update_key_group_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_custom_headers_in_response_headers_policy() :: %{
        "Message" => String.t()
      }

  """
  @type too_many_custom_headers_in_response_headers_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_response_headers_policies() :: %{
        "Message" => String.t()
      }

  """
  @type too_many_response_headers_policies() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_cookies_in_cache_policy() :: %{
        "Message" => String.t()
      }

  """
  @type too_many_cookies_in_cache_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_invalidations_in_progress() :: %{
        "Message" => String.t()
      }

  """
  @type too_many_invalidations_in_progress() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      status_codes() :: %{
        "Items" => list(integer()),
        "Quantity" => integer()
      }

  """
  @type status_codes() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      vpc_origin_endpoint_config() :: %{
        "Arn" => String.t(),
        "HTTPPort" => integer(),
        "HTTPSPort" => integer(),
        "Name" => String.t(),
        "OriginProtocolPolicy" => list(any()),
        "OriginSslProtocols" => origin_ssl_protocols()
      }

  """
  @type vpc_origin_endpoint_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_streaming_distribution_config_request() :: %{}

  """
  @type get_streaming_distribution_config_request() :: %{}

  @typedoc """

  ## Example:

      lambda_function_associations() :: %{
        "Items" => list(lambda_function_association()),
        "Quantity" => integer()
      }

  """
  @type lambda_function_associations() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_continuous_deployment_policies() :: %{
        "Message" => String.t()
      }

  """
  @type too_many_continuous_deployment_policies() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_long_c_s_p_in_response_headers_policy() :: %{
        "Message" => String.t()
      }

  """
  @type too_long_c_s_p_in_response_headers_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      field_level_encryption_summary() :: %{
        "Comment" => String.t(),
        "ContentTypeProfileConfig" => content_type_profile_config(),
        "Id" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "QueryArgProfileConfig" => query_arg_profile_config()
      }

  """
  @type field_level_encryption_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_distribution_tenant_by_domain_request() :: %{
        required("Domain") => String.t()
      }

  """
  @type get_distribution_tenant_by_domain_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      query_arg_profile_empty() :: %{
        "Message" => String.t()
      }

  """
  @type query_arg_profile_empty() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_origin_request_policy_request() :: %{}

  """
  @type get_origin_request_policy_request() :: %{}

  @typedoc """

  ## Example:

      distribution_config_with_tags() :: %{
        "DistributionConfig" => distribution_config(),
        "Tags" => tags()
      }

  """
  @type distribution_config_with_tags() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      connection_group_summary() :: %{
        "AnycastIpListId" => String.t(),
        "Arn" => String.t(),
        "CreatedTime" => non_neg_integer(),
        "ETag" => String.t(),
        "Enabled" => boolean(),
        "Id" => String.t(),
        "IsDefault" => boolean(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t(),
        "RoutingEndpoint" => String.t(),
        "Status" => String.t()
      }

  """
  @type connection_group_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cannot_update_entity_while_in_use() :: %{
        "Message" => String.t()
      }

  """
  @type cannot_update_entity_while_in_use() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      copy_distribution_result() :: %{
        "Distribution" => distribution(),
        "ETag" => String.t(),
        "Location" => String.t()
      }

  """
  @type copy_distribution_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_origin_request_policy_request() :: %{
        optional("IfMatch") => String.t()
      }

  """
  @type delete_origin_request_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_cloud_front_origin_access_identity_request() :: %{}

  """
  @type get_cloud_front_origin_access_identity_request() :: %{}

  @typedoc """

  ## Example:

      illegal_origin_access_configuration() :: %{
        "Message" => String.t()
      }

  """
  @type illegal_origin_access_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_distribution_tenant_request() :: %{
        optional("ConnectionGroupId") => String.t(),
        optional("Customizations") => customizations(),
        optional("Enabled") => boolean(),
        optional("ManagedCertificateRequest") => managed_certificate_request(),
        optional("Parameters") => list(parameter()),
        optional("Tags") => tags(),
        required("DistributionId") => String.t(),
        required("Domains") => list(domain_item()),
        required("Name") => String.t()
      }

  """
  @type create_distribution_tenant_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_field_level_encryption_profile_request() :: %{}

  """
  @type get_field_level_encryption_profile_request() :: %{}

  @typedoc """

  ## Example:

      invalid_if_match_version() :: %{
        "Message" => String.t()
      }

  """
  @type invalid_if_match_version() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_origin_request_policy_result() :: %{
        "ETag" => String.t(),
        "OriginRequestPolicy" => origin_request_policy()
      }

  """
  @type update_origin_request_policy_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_field_level_encryption_profile_request() :: %{
        required("FieldLevelEncryptionProfileConfig") => field_level_encryption_profile_config()
      }

  """
  @type create_field_level_encryption_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_distributions_associated_to_cache_policy() :: %{
        "Message" => String.t()
      }

  """
  @type too_many_distributions_associated_to_cache_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      trusted_key_group_does_not_exist() :: %{
        "Message" => String.t()
      }

  """
  @type trusted_key_group_does_not_exist() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      distribution_resource_id() :: %{
        "DistributionId" => String.t(),
        "DistributionTenantId" => String.t()
      }

  """
  @type distribution_resource_id() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      continuous_deployment_policy_list() :: %{
        "Items" => list(continuous_deployment_policy_summary()),
        "MaxItems" => integer(),
        "NextMarker" => String.t(),
        "Quantity" => integer()
      }

  """
  @type continuous_deployment_policy_list() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_realtime_log_config_result() :: %{
        "RealtimeLogConfig" => realtime_log_config()
      }

  """
  @type create_realtime_log_config_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      anycast_ip_list() :: %{
        "AnycastIps" => list(String.t()),
        "Arn" => String.t(),
        "Id" => String.t(),
        "IpCount" => integer(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t(),
        "Status" => String.t()
      }

  """
  @type anycast_ip_list() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      encryption_entities() :: %{
        "Items" => list(encryption_entity()),
        "Quantity" => integer()
      }

  """
  @type encryption_entities() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_cloud_front_origin_access_identity_config_result() :: %{
        "CloudFrontOriginAccessIdentityConfig" => cloud_front_origin_access_identity_config(),
        "ETag" => String.t()
      }

  """
  @type get_cloud_front_origin_access_identity_config_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_origin_request_policies_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => integer(),
        optional("Type") => list(any())
      }

  """
  @type list_origin_request_policies_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_query_string_parameters() :: %{
        "Message" => String.t()
      }

  """
  @type invalid_query_string_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_domain_association_request() :: %{
        optional("IfMatch") => String.t(),
        required("Domain") => String.t(),
        required("TargetResource") => distribution_resource_id()
      }

  """
  @type update_domain_association_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_monitoring_subscription_result() :: %{
        "MonitoringSubscription" => monitoring_subscription()
      }

  """
  @type get_monitoring_subscription_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_functions() :: %{
        "Message" => String.t()
      }

  """
  @type too_many_functions() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_distributions_associated_to_origin_request_policy() :: %{
        "Message" => String.t()
      }

  """
  @type too_many_distributions_associated_to_origin_request_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_function_result() :: %{
        "ContentType" => String.t(),
        "ETag" => String.t(),
        "FunctionCode" => binary()
      }

  """
  @type get_function_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_distributions_associated_to_key_group() :: %{
        "Message" => String.t()
      }

  """
  @type too_many_distributions_associated_to_key_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_tagging() :: %{
        "Message" => String.t()
      }

  """
  @type invalid_tagging() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_continuous_deployment_policy_config_request() :: %{}

  """
  @type get_continuous_deployment_policy_config_request() :: %{}

  @typedoc """

  ## Example:

      origin_request_policy_config() :: %{
        "Comment" => String.t(),
        "CookiesConfig" => origin_request_policy_cookies_config(),
        "HeadersConfig" => origin_request_policy_headers_config(),
        "Name" => String.t(),
        "QueryStringsConfig" => origin_request_policy_query_strings_config()
      }

  """
  @type origin_request_policy_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      parameter_definition_schema() :: %{
        "StringSchema" => string_schema_config()
      }

  """
  @type parameter_definition_schema() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_key_value_stores_result() :: %{
        "KeyValueStoreList" => key_value_store_list()
      }

  """
  @type list_key_value_stores_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_continuous_deployment_policy_result() :: %{
        "ContinuousDeploymentPolicy" => continuous_deployment_policy(),
        "ETag" => String.t()
      }

  """
  @type update_continuous_deployment_policy_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_protocol_settings() :: %{
        "Message" => String.t()
      }

  """
  @type invalid_protocol_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_vpc_origin_request() :: %{
        required("IfMatch") => String.t(),
        required("VpcOriginEndpointConfig") => vpc_origin_endpoint_config()
      }

  """
  @type update_vpc_origin_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      field_level_encryption_list() :: %{
        "Items" => list(field_level_encryption_summary()),
        "MaxItems" => integer(),
        "NextMarker" => String.t(),
        "Quantity" => integer()
      }

  """
  @type field_level_encryption_list() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_response_headers_policy_request() :: %{}

  """
  @type get_response_headers_policy_request() :: %{}

  @typedoc """

  ## Example:

      list_distributions_by_web_acl_id_result() :: %{
        "DistributionList" => distribution_list()
      }

  """
  @type list_distributions_by_web_acl_id_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      public_key_already_exists() :: %{
        "Message" => String.t()
      }

  """
  @type public_key_already_exists() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      continuous_deployment_single_weight_config() :: %{
        "SessionStickinessConfig" => session_stickiness_config(),
        "Weight" => float()
      }

  """
  @type continuous_deployment_single_weight_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      response_headers_policy_strict_transport_security() :: %{
        "AccessControlMaxAgeSec" => integer(),
        "IncludeSubdomains" => boolean(),
        "Override" => boolean(),
        "Preload" => boolean()
      }

  """
  @type response_headers_policy_strict_transport_security() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_streaming_distribution_config_result() :: %{
        "ETag" => String.t(),
        "StreamingDistributionConfig" => streaming_distribution_config()
      }

  """
  @type get_streaming_distribution_config_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      entity_not_found() :: %{
        "Message" => String.t()
      }

  """
  @type entity_not_found() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_field_level_encryption_config_request() :: %{
        optional("IfMatch") => String.t(),
        required("FieldLevelEncryptionConfig") => field_level_encryption_config()
      }

  """
  @type update_field_level_encryption_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_monitoring_subscription_result() :: %{}

  """
  @type delete_monitoring_subscription_result() :: %{}

  @typedoc """

  ## Example:

      list_invalidations_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => integer()
      }

  """
  @type list_invalidations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_in_use() :: %{
        "Message" => String.t()
      }

  """
  @type resource_in_use() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      domain_item() :: %{
        "Domain" => String.t()
      }

  """
  @type domain_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_cache_policy_result() :: %{
        "CachePolicy" => cache_policy(),
        "ETag" => String.t()
      }

  """
  @type update_cache_policy_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_distribution_tenant_request() :: %{
        optional("ConnectionGroupId") => String.t(),
        optional("Customizations") => customizations(),
        optional("DistributionId") => String.t(),
        optional("Domains") => list(domain_item()),
        optional("Enabled") => boolean(),
        optional("ManagedCertificateRequest") => managed_certificate_request(),
        optional("Parameters") => list(parameter()),
        required("IfMatch") => String.t()
      }

  """
  @type update_distribution_tenant_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflicting_alias() :: %{
        "AccountId" => String.t(),
        "Alias" => String.t(),
        "DistributionId" => String.t()
      }

  """
  @type conflicting_alias() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_distributions_by_cache_policy_id_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => integer()
      }

  """
  @type list_distributions_by_cache_policy_id_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_field_level_encryption_content_type_profiles() :: %{
        "Message" => String.t()
      }

  """
  @type too_many_field_level_encryption_content_type_profiles() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_connection_group_by_routing_endpoint_request() :: %{
        required("RoutingEndpoint") => String.t()
      }

  """
  @type get_connection_group_by_routing_endpoint_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      continuous_deployment_policy_already_exists() :: %{
        "Message" => String.t()
      }

  """
  @type continuous_deployment_policy_already_exists() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cache_policy_config() :: %{
        "Comment" => String.t(),
        "DefaultTTL" => float(),
        "MaxTTL" => float(),
        "MinTTL" => float(),
        "Name" => String.t(),
        "ParametersInCacheKeyAndForwardedToOrigin" => parameters_in_cache_key_and_forwarded_to_origin()
      }

  """
  @type cache_policy_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      trusted_key_groups() :: %{
        "Enabled" => boolean(),
        "Items" => list(String.t()),
        "Quantity" => integer()
      }

  """
  @type trusted_key_groups() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_cloud_front_origin_access_identity_request() :: %{
        optional("IfMatch") => String.t(),
        required("CloudFrontOriginAccessIdentityConfig") => cloud_front_origin_access_identity_config()
      }

  """
  @type update_cloud_front_origin_access_identity_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cloud_front_origin_access_identity_summary() :: %{
        "Comment" => String.t(),
        "Id" => String.t(),
        "S3CanonicalUserId" => String.t()
      }

  """
  @type cloud_front_origin_access_identity_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_invalidations_for_distribution_tenant_result() :: %{
        "InvalidationList" => invalidation_list()
      }

  """
  @type list_invalidations_for_distribution_tenant_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      origin_access_control_list() :: %{
        "IsTruncated" => boolean(),
        "Items" => list(origin_access_control_summary()),
        "Marker" => String.t(),
        "MaxItems" => integer(),
        "NextMarker" => String.t(),
        "Quantity" => integer()
      }

  """
  @type origin_access_control_list() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      geo_restriction() :: %{
        "Items" => list(String.t()),
        "Quantity" => integer(),
        "RestrictionType" => list(any())
      }

  """
  @type geo_restriction() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      response_headers_policy_content_type_options() :: %{
        "Override" => boolean()
      }

  """
  @type response_headers_policy_content_type_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_origin_access_control_request() :: %{
        required("OriginAccessControlConfig") => origin_access_control_config()
      }

  """
  @type create_origin_access_control_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_origin_request_policy_config_request() :: %{}

  """
  @type get_origin_request_policy_config_request() :: %{}

  @typedoc """

  ## Example:

      copy_distribution_request() :: %{
        optional("Enabled") => boolean(),
        optional("IfMatch") => String.t(),
        optional("Staging") => boolean(),
        required("CallerReference") => String.t()
      }

  """
  @type copy_distribution_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_connection_group_request() :: %{}

  """
  @type get_connection_group_request() :: %{}

  @typedoc """

  ## Example:

      test_result() :: %{
        "ComputeUtilization" => String.t(),
        "FunctionErrorMessage" => String.t(),
        "FunctionExecutionLogs" => list(String.t()),
        "FunctionOutput" => String.t(),
        "FunctionSummary" => function_summary()
      }

  """
  @type test_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_cloud_front_origin_access_identity_result() :: %{
        "CloudFrontOriginAccessIdentity" => cloud_front_origin_access_identity(),
        "ETag" => String.t()
      }

  """
  @type update_cloud_front_origin_access_identity_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      origin_group_member() :: %{
        "OriginId" => String.t()
      }

  """
  @type origin_group_member() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      distribution_summary() :: %{
        "ARN" => String.t(),
        "AliasICPRecordals" => list(alias_i_c_p_recordal()),
        "Aliases" => aliases(),
        "AnycastIpListId" => String.t(),
        "CacheBehaviors" => cache_behaviors(),
        "Comment" => String.t(),
        "ConnectionMode" => list(any()),
        "CustomErrorResponses" => custom_error_responses(),
        "DefaultCacheBehavior" => default_cache_behavior(),
        "DomainName" => String.t(),
        "ETag" => String.t(),
        "Enabled" => boolean(),
        "HttpVersion" => list(any()),
        "Id" => String.t(),
        "IsIPV6Enabled" => boolean(),
        "LastModifiedTime" => non_neg_integer(),
        "OriginGroups" => origin_groups(),
        "Origins" => origins(),
        "PriceClass" => list(any()),
        "Restrictions" => restrictions(),
        "Staging" => boolean(),
        "Status" => String.t(),
        "ViewerCertificate" => viewer_certificate(),
        "WebACLId" => String.t()
      }

  """
  @type distribution_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_cloud_front_origin_access_identities_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => integer()
      }

  """
  @type list_cloud_front_origin_access_identities_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      alias_i_c_p_recordal() :: %{
        "CNAME" => String.t(),
        "ICPRecordalStatus" => list(any())
      }

  """
  @type alias_i_c_p_recordal() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_cloud_front_origin_access_identities_result() :: %{
        "CloudFrontOriginAccessIdentityList" => cloud_front_origin_access_identity_list()
      }

  """
  @type list_cloud_front_origin_access_identities_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      session_stickiness_config() :: %{
        "IdleTTL" => integer(),
        "MaximumTTL" => integer()
      }

  """
  @type session_stickiness_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_public_keys_result() :: %{
        "PublicKeyList" => public_key_list()
      }

  """
  @type list_public_keys_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_field_level_encryption_configs_result() :: %{
        "FieldLevelEncryptionList" => field_level_encryption_list()
      }

  """
  @type list_field_level_encryption_configs_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      parameter_definition() :: %{
        "Definition" => parameter_definition_schema(),
        "Name" => String.t()
      }

  """
  @type parameter_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      field_level_encryption_config_in_use() :: %{
        "Message" => String.t()
      }

  """
  @type field_level_encryption_config_in_use() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      default_cache_behavior() :: %{
        "AllowedMethods" => allowed_methods(),
        "CachePolicyId" => String.t(),
        "Compress" => boolean(),
        "DefaultTTL" => float(),
        "FieldLevelEncryptionId" => String.t(),
        "ForwardedValues" => forwarded_values(),
        "FunctionAssociations" => function_associations(),
        "GrpcConfig" => grpc_config(),
        "LambdaFunctionAssociations" => lambda_function_associations(),
        "MaxTTL" => float(),
        "MinTTL" => float(),
        "OriginRequestPolicyId" => String.t(),
        "RealtimeLogConfigArn" => String.t(),
        "ResponseHeadersPolicyId" => String.t(),
        "SmoothStreaming" => boolean(),
        "TargetOriginId" => String.t(),
        "TrustedKeyGroups" => trusted_key_groups(),
        "TrustedSigners" => trusted_signers(),
        "ViewerProtocolPolicy" => list(any())
      }

  """
  @type default_cache_behavior() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      field_level_encryption_profile() :: %{
        "FieldLevelEncryptionProfileConfig" => field_level_encryption_profile_config(),
        "Id" => String.t(),
        "LastModifiedTime" => non_neg_integer()
      }

  """
  @type field_level_encryption_profile() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      illegal_update() :: %{
        "Message" => String.t()
      }

  """
  @type illegal_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_key_value_store_result() :: %{
        "ETag" => String.t(),
        "KeyValueStore" => key_value_store(),
        "Location" => String.t()
      }

  """
  @type create_key_value_store_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dns_configuration() :: %{
        "Domain" => String.t(),
        "Reason" => String.t(),
        "Status" => list(any())
      }

  """
  @type dns_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      continuous_deployment_policy_summary() :: %{
        "ContinuousDeploymentPolicy" => continuous_deployment_policy()
      }

  """
  @type continuous_deployment_policy_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_functions_result() :: %{
        "FunctionList" => function_list()
      }

  """
  @type list_functions_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cloud_front_origin_access_identity_in_use() :: %{
        "Message" => String.t()
      }

  """
  @type cloud_front_origin_access_identity_in_use() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_connection_group_request() :: %{
        required("IfMatch") => String.t()
      }

  """
  @type delete_connection_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_function_result() :: %{
        "ETag" => String.t(),
        "FunctionSummary" => function_summary()
      }

  """
  @type describe_function_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      key_group_config() :: %{
        "Comment" => String.t(),
        "Items" => list(String.t()),
        "Name" => String.t()
      }

  """
  @type key_group_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_origin() :: %{
        "DomainName" => String.t(),
        "OriginAccessIdentity" => String.t()
      }

  """
  @type s3_origin() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_invalidations_for_distribution_tenant_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => integer()
      }

  """
  @type list_invalidations_for_distribution_tenant_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      response_headers_policy() :: %{
        "Id" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "ResponseHeadersPolicyConfig" => response_headers_policy_config()
      }

  """
  @type response_headers_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_t_t_l_order() :: %{
        "Message" => String.t()
      }

  """
  @type invalid_t_t_l_order() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_connection_group_result() :: %{
        "ConnectionGroup" => connection_group(),
        "ETag" => String.t()
      }

  """
  @type update_connection_group_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      field_level_encryption_profile_already_exists() :: %{
        "Message" => String.t()
      }

  """
  @type field_level_encryption_profile_already_exists() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      test_function_result() :: %{
        "TestResult" => test_result()
      }

  """
  @type test_function_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      monitoring_subscription() :: %{
        "RealtimeMetricsSubscriptionConfig" => realtime_metrics_subscription_config()
      }

  """
  @type monitoring_subscription() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_public_key_config_request() :: %{}

  """
  @type get_public_key_config_request() :: %{}

  @typedoc """

  ## Example:

      get_invalidation_result() :: %{
        "Invalidation" => invalidation()
      }

  """
  @type get_invalidation_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied() :: %{
        "Message" => String.t()
      }

  """
  @type access_denied() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      streaming_logging_config() :: %{
        "Bucket" => String.t(),
        "Enabled" => boolean(),
        "Prefix" => String.t()
      }

  """
  @type streaming_logging_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_invalidation_request() :: %{
        required("InvalidationBatch") => invalidation_batch()
      }

  """
  @type create_invalidation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      query_string_cache_keys() :: %{
        "Items" => list(String.t()),
        "Quantity" => integer()
      }

  """
  @type query_string_cache_keys() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_streaming_distribution_request() :: %{
        required("StreamingDistributionConfig") => streaming_distribution_config()
      }

  """
  @type create_streaming_distribution_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      origin_access_control_summary() :: %{
        "Description" => String.t(),
        "Id" => String.t(),
        "Name" => String.t(),
        "OriginAccessControlOriginType" => list(any()),
        "SigningBehavior" => list(any()),
        "SigningProtocol" => list(any())
      }

  """
  @type origin_access_control_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_key_group_config_request() :: %{}

  """
  @type get_key_group_config_request() :: %{}

  @typedoc """

  ## Example:

      too_many_cookie_names_in_white_list() :: %{
        "Message" => String.t()
      }

  """
  @type too_many_cookie_names_in_white_list() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_distribution_request() :: %{
        required("DistributionConfig") => distribution_config()
      }

  """
  @type create_distribution_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_distribution_tenant_by_domain_result() :: %{
        "DistributionTenant" => distribution_tenant(),
        "ETag" => String.t()
      }

  """
  @type get_distribution_tenant_by_domain_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_continuous_deployment_policy_request() :: %{
        required("ContinuousDeploymentPolicyConfig") => continuous_deployment_policy_config()
      }

  """
  @type create_continuous_deployment_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      logging_config() :: %{
        "Bucket" => String.t(),
        "Enabled" => boolean(),
        "IncludeCookies" => boolean(),
        "Prefix" => String.t()
      }

  """
  @type logging_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_argument() :: %{
        "Message" => String.t()
      }

  """
  @type invalid_argument() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      response_headers_policy_referrer_policy() :: %{
        "Override" => boolean(),
        "ReferrerPolicy" => list(any())
      }

  """
  @type response_headers_policy_referrer_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("Resource") => String.t(),
        required("TagKeys") => tag_keys()
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_streaming_distribution_result() :: %{
        "ETag" => String.t(),
        "Location" => String.t(),
        "StreamingDistribution" => streaming_distribution()
      }

  """
  @type create_streaming_distribution_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_web_acl_id() :: %{
        "Message" => String.t()
      }

  """
  @type invalid_web_acl_id() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_cookies_in_origin_request_policy() :: %{
        "Message" => String.t()
      }

  """
  @type too_many_cookies_in_origin_request_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_cache_policy_result() :: %{
        "CachePolicy" => cache_policy(),
        "ETag" => String.t()
      }

  """
  @type get_cache_policy_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_continuous_deployment_policy_result() :: %{
        "ContinuousDeploymentPolicy" => continuous_deployment_policy(),
        "ETag" => String.t(),
        "Location" => String.t()
      }

  """
  @type create_continuous_deployment_policy_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      key_group() :: %{
        "Id" => String.t(),
        "KeyGroupConfig" => key_group_config(),
        "LastModifiedTime" => non_neg_integer()
      }

  """
  @type key_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_distributions_by_key_group_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => integer()
      }

  """
  @type list_distributions_by_key_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_public_key_request() :: %{
        optional("IfMatch") => String.t(),
        required("PublicKeyConfig") => public_key_config()
      }

  """
  @type update_public_key_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      content_type_profile() :: %{
        "ContentType" => String.t(),
        "Format" => list(any()),
        "ProfileId" => String.t()
      }

  """
  @type content_type_profile() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_distribution_web_acl_result() :: %{
        "ETag" => String.t(),
        "Id" => String.t(),
        "WebACLArn" => String.t()
      }

  """
  @type associate_distribution_web_acl_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_key_group_result() :: %{
        "ETag" => String.t(),
        "KeyGroup" => key_group()
      }

  """
  @type get_key_group_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      geo_restriction_customization() :: %{
        "Locations" => list(String.t()),
        "RestrictionType" => list(any())
      }

  """
  @type geo_restriction_customization() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_invalidation_for_distribution_tenant_result() :: %{
        "Invalidation" => invalidation(),
        "Location" => String.t()
      }

  """
  @type create_invalidation_for_distribution_tenant_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_distributions_by_anycast_ip_list_id_result() :: %{
        "DistributionList" => distribution_list()
      }

  """
  @type list_distributions_by_anycast_ip_list_id_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      origin_request_policy_headers_config() :: %{
        "HeaderBehavior" => list(any()),
        "Headers" => headers()
      }

  """
  @type origin_request_policy_headers_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_too_large() :: %{
        "Message" => String.t()
      }

  """
  @type batch_too_large() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      query_arg_profiles() :: %{
        "Items" => list(query_arg_profile()),
        "Quantity" => integer()
      }

  """
  @type query_arg_profiles() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      anycast_ip_list_summary() :: %{
        "Arn" => String.t(),
        "Id" => String.t(),
        "IpCount" => integer(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t(),
        "Status" => String.t()
      }

  """
  @type anycast_ip_list_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_continuous_deployment_policy_request() :: %{
        optional("IfMatch") => String.t(),
        required("ContinuousDeploymentPolicyConfig") => continuous_deployment_policy_config()
      }

  """
  @type update_continuous_deployment_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      response_headers_policy_access_control_allow_origins() :: %{
        "Items" => list(String.t()),
        "Quantity" => integer()
      }

  """
  @type response_headers_policy_access_control_allow_origins() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      function_association() :: %{
        "EventType" => list(any()),
        "FunctionARN" => String.t()
      }

  """
  @type function_association() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      key_group_already_exists() :: %{
        "Message" => String.t()
      }

  """
  @type key_group_already_exists() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_realtime_log_config_request() :: %{
        optional("ARN") => String.t(),
        optional("Name") => String.t()
      }

  """
  @type get_realtime_log_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      key_group_list() :: %{
        "Items" => list(key_group_summary()),
        "MaxItems" => integer(),
        "NextMarker" => String.t(),
        "Quantity" => integer()
      }

  """
  @type key_group_list() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_distribution_tenant_result() :: %{
        "DistributionTenant" => distribution_tenant(),
        "ETag" => String.t()
      }

  """
  @type get_distribution_tenant_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      continuous_deployment_policy() :: %{
        "ContinuousDeploymentPolicyConfig" => continuous_deployment_policy_config(),
        "Id" => String.t(),
        "LastModifiedTime" => non_neg_integer()
      }

  """
  @type continuous_deployment_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      origin_shield() :: %{
        "Enabled" => boolean(),
        "OriginShieldRegion" => String.t()
      }

  """
  @type origin_shield() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      entity_already_exists() :: %{
        "Message" => String.t()
      }

  """
  @type entity_already_exists() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      content_type_profiles() :: %{
        "Items" => list(content_type_profile()),
        "Quantity" => integer()
      }

  """
  @type content_type_profiles() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      response_headers_policy_frame_options() :: %{
        "FrameOption" => list(any()),
        "Override" => boolean()
      }

  """
  @type response_headers_policy_frame_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_field_level_encryption_profiles_result() :: %{
        "FieldLevelEncryptionProfileList" => field_level_encryption_profile_list()
      }

  """
  @type list_field_level_encryption_profiles_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      entity_size_limit_exceeded() :: %{
        "Message" => String.t()
      }

  """
  @type entity_size_limit_exceeded() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      field_level_encryption_profile_in_use() :: %{
        "Message" => String.t()
      }

  """
  @type field_level_encryption_profile_in_use() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      no_such_field_level_encryption_config() :: %{
        "Message" => String.t()
      }

  """
  @type no_such_field_level_encryption_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cache_policy_list() :: %{
        "Items" => list(cache_policy_summary()),
        "MaxItems" => integer(),
        "NextMarker" => String.t(),
        "Quantity" => integer()
      }

  """
  @type cache_policy_list() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_public_keys_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => integer()
      }

  """
  @type list_public_keys_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_distribution_config_result() :: %{
        "DistributionConfig" => distribution_config(),
        "ETag" => String.t()
      }

  """
  @type get_distribution_config_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_key_value_stores_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => integer(),
        optional("Status") => String.t()
      }

  """
  @type list_key_value_stores_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      streaming_distribution() :: %{
        "ARN" => String.t(),
        "ActiveTrustedSigners" => active_trusted_signers(),
        "DomainName" => String.t(),
        "Id" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "Status" => String.t(),
        "StreamingDistributionConfig" => streaming_distribution_config()
      }

  """
  @type streaming_distribution() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      origins() :: %{
        "Items" => list(origin()),
        "Quantity" => integer()
      }

  """
  @type origins() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      no_such_cloud_front_origin_access_identity() :: %{
        "Message" => String.t()
      }

  """
  @type no_such_cloud_front_origin_access_identity() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_field_level_encryption_config_request() :: %{
        optional("IfMatch") => String.t()
      }

  """
  @type delete_field_level_encryption_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      function_size_limit_exceeded() :: %{
        "Message" => String.t()
      }

  """
  @type function_size_limit_exceeded() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cached_methods() :: %{
        "Items" => list(list(any())()),
        "Quantity" => integer()
      }

  """
  @type cached_methods() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_origin_access_control() :: %{
        "Message" => String.t()
      }

  """
  @type invalid_origin_access_control() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_connection_groups_result() :: %{
        "ConnectionGroups" => list(connection_group_summary()),
        "NextMarker" => String.t()
      }

  """
  @type list_connection_groups_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_key_value_store_result() :: %{
        "ETag" => String.t(),
        "KeyValueStore" => key_value_store()
      }

  """
  @type describe_key_value_store_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_domain_conflicts_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => integer(),
        required("Domain") => String.t(),
        required("DomainControlValidationResource") => distribution_resource_id()
      }

  """
  @type list_domain_conflicts_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_origin() :: %{
        "Message" => String.t()
      }

  """
  @type invalid_origin() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cache_behaviors() :: %{
        "Items" => list(cache_behavior()),
        "Quantity" => integer()
      }

  """
  @type cache_behaviors() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      custom_headers() :: %{
        "Items" => list(origin_custom_header()),
        "Quantity" => integer()
      }

  """
  @type custom_headers() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      field_level_encryption_config_already_exists() :: %{
        "Message" => String.t()
      }

  """
  @type field_level_encryption_config_already_exists() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_realtime_log_config_request() :: %{
        required("EndPoints") => list(end_point()),
        required("Fields") => list(String.t()),
        required("Name") => String.t(),
        required("SamplingRate") => float()
      }

  """
  @type create_realtime_log_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      unsupported_operation() :: %{
        "Message" => String.t()
      }

  """
  @type unsupported_operation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_headers_in_cache_policy() :: %{
        "Message" => String.t()
      }

  """
  @type too_many_headers_in_cache_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      function_associations() :: %{
        "Items" => list(function_association()),
        "Quantity" => integer()
      }

  """
  @type function_associations() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_certificates() :: %{
        "Message" => String.t()
      }

  """
  @type too_many_certificates() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_conflicting_aliases_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => integer(),
        required("Alias") => String.t(),
        required("DistributionId") => String.t()
      }

  """
  @type list_conflicting_aliases_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_streaming_distribution_with_tags_request() :: %{
        required("StreamingDistributionConfigWithTags") => streaming_distribution_config_with_tags()
      }

  """
  @type create_streaming_distribution_with_tags_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_managed_certificate_details_result() :: %{
        "ManagedCertificateDetails" => managed_certificate_details()
      }

  """
  @type get_managed_certificate_details_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      traffic_config() :: %{
        "SingleHeaderConfig" => continuous_deployment_single_header_config(),
        "SingleWeightConfig" => continuous_deployment_single_weight_config(),
        "Type" => list(any())
      }

  """
  @type traffic_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cache_policy_cookies_config() :: %{
        "CookieBehavior" => list(any()),
        "Cookies" => cookie_names()
      }

  """
  @type cache_policy_cookies_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_cloud_front_origin_access_identity_request() :: %{
        optional("IfMatch") => String.t()
      }

  """
  @type delete_cloud_front_origin_access_identity_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      lambda_function_association() :: %{
        "EventType" => list(any()),
        "IncludeBody" => boolean(),
        "LambdaFunctionARN" => String.t()
      }

  """
  @type lambda_function_association() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_key_value_store_request() :: %{}

  """
  @type describe_key_value_store_request() :: %{}

  @typedoc """

  ## Example:

      get_distribution_config_request() :: %{}

  """
  @type get_distribution_config_request() :: %{}

  @typedoc """

  ## Example:

      create_vpc_origin_request() :: %{
        optional("Tags") => tags(),
        required("VpcOriginEndpointConfig") => vpc_origin_endpoint_config()
      }

  """
  @type create_vpc_origin_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_public_key_request() :: %{
        optional("IfMatch") => String.t()
      }

  """
  @type delete_public_key_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      distribution_config() :: %{
        "Aliases" => aliases(),
        "AnycastIpListId" => String.t(),
        "CacheBehaviors" => cache_behaviors(),
        "CallerReference" => String.t(),
        "Comment" => String.t(),
        "ConnectionMode" => list(any()),
        "ContinuousDeploymentPolicyId" => String.t(),
        "CustomErrorResponses" => custom_error_responses(),
        "DefaultCacheBehavior" => default_cache_behavior(),
        "DefaultRootObject" => String.t(),
        "Enabled" => boolean(),
        "HttpVersion" => list(any()),
        "IsIPV6Enabled" => boolean(),
        "Logging" => logging_config(),
        "OriginGroups" => origin_groups(),
        "Origins" => origins(),
        "PriceClass" => list(any()),
        "Restrictions" => restrictions(),
        "Staging" => boolean(),
        "TenantConfig" => tenant_config(),
        "ViewerCertificate" => viewer_certificate(),
        "WebACLId" => String.t()
      }

  """
  @type distribution_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_continuous_deployment_policy_result() :: %{
        "ContinuousDeploymentPolicy" => continuous_deployment_policy(),
        "ETag" => String.t()
      }

  """
  @type get_continuous_deployment_policy_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_required_protocol() :: %{
        "Message" => String.t()
      }

  """
  @type invalid_required_protocol() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_function_request() :: %{
        optional("Stage") => list(any())
      }

  """
  @type get_function_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      origin_request_policy_cookies_config() :: %{
        "CookieBehavior" => list(any()),
        "Cookies" => cookie_names()
      }

  """
  @type origin_request_policy_cookies_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_key_value_store_result() :: %{
        "ETag" => String.t(),
        "KeyValueStore" => key_value_store()
      }

  """
  @type update_key_value_store_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_key_groups_result() :: %{
        "KeyGroupList" => key_group_list()
      }

  """
  @type list_key_groups_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_key_group_request() :: %{
        required("KeyGroupConfig") => key_group_config()
      }

  """
  @type create_key_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_response_headers_policy_request() :: %{
        optional("IfMatch") => String.t()
      }

  """
  @type delete_response_headers_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      origin_access_control_in_use() :: %{
        "Message" => String.t()
      }

  """
  @type origin_access_control_in_use() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      precondition_failed() :: %{
        "Message" => String.t()
      }

  """
  @type precondition_failed() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_connection_groups_request() :: %{
        optional("AssociationFilter") => connection_group_association_filter(),
        optional("Marker") => String.t(),
        optional("MaxItems") => integer()
      }

  """
  @type list_connection_groups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      connection_group_association_filter() :: %{
        "AnycastIpListId" => String.t()
      }

  """
  @type connection_group_association_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      public_key_list() :: %{
        "Items" => list(public_key_summary()),
        "MaxItems" => integer(),
        "NextMarker" => String.t(),
        "Quantity" => integer()
      }

  """
  @type public_key_list() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_response_headers_policy_request() :: %{
        optional("IfMatch") => String.t(),
        required("ResponseHeadersPolicyConfig") => response_headers_policy_config()
      }

  """
  @type update_response_headers_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      response_headers_policy_custom_headers_config() :: %{
        "Items" => list(response_headers_policy_custom_header()),
        "Quantity" => integer()
      }

  """
  @type response_headers_policy_custom_headers_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_cache_policy_config_request() :: %{}

  """
  @type get_cache_policy_config_request() :: %{}

  @typedoc """

  ## Example:

      list_distributions_by_connection_mode_result() :: %{
        "DistributionList" => distribution_list()
      }

  """
  @type list_distributions_by_connection_mode_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_key_groups_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => integer()
      }

  """
  @type list_key_groups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_distribution_cnames() :: %{
        "Message" => String.t()
      }

  """
  @type too_many_distribution_cnames() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      no_such_origin_request_policy() :: %{
        "Message" => String.t()
      }

  """
  @type no_such_origin_request_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      no_such_distribution() :: %{
        "Message" => String.t()
      }

  """
  @type no_such_distribution() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag() :: %{
        "Key" => String.t(),
        "Value" => String.t()
      }

  """
  @type tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_field_level_encryption_profile_config_request() :: %{}

  """
  @type get_field_level_encryption_profile_config_request() :: %{}

  @typedoc """

  ## Example:

      cache_policy_summary() :: %{
        "CachePolicy" => cache_policy(),
        "Type" => list(any())
      }

  """
  @type cache_policy_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      query_arg_profile() :: %{
        "ProfileId" => String.t(),
        "QueryArg" => String.t()
      }

  """
  @type query_arg_profile() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_distribution_tenants_request() :: %{
        optional("AssociationFilter") => distribution_tenant_association_filter(),
        optional("Marker") => String.t(),
        optional("MaxItems") => integer()
      }

  """
  @type list_distribution_tenants_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      response_headers_policy_access_control_expose_headers() :: %{
        "Items" => list(String.t()),
        "Quantity" => integer()
      }

  """
  @type response_headers_policy_access_control_expose_headers() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_origin_config() :: %{
        "OriginAccessIdentity" => String.t()
      }

  """
  @type s3_origin_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_distribution_request() :: %{
        optional("IfMatch") => String.t(),
        required("DistributionConfig") => distribution_config()
      }

  """
  @type update_distribution_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_trusted_signers() :: %{
        "Message" => String.t()
      }

  """
  @type too_many_trusted_signers() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_function_request() :: %{
        required("IfMatch") => String.t()
      }

  """
  @type delete_function_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      publish_function_result() :: %{
        "FunctionSummary" => function_summary()
      }

  """
  @type publish_function_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_distribution_web_acl_request() :: %{
        optional("IfMatch") => String.t()
      }

  """
  @type disassociate_distribution_web_acl_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_query_strings_in_origin_request_policy() :: %{
        "Message" => String.t()
      }

  """
  @type too_many_query_strings_in_origin_request_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tenant_config() :: %{
        "ParameterDefinitions" => list(parameter_definition())
      }

  """
  @type tenant_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_domain_conflicts_result() :: %{
        "DomainConflicts" => list(domain_conflict()),
        "NextMarker" => String.t()
      }

  """
  @type list_domain_conflicts_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_cache_policies() :: %{
        "Message" => String.t()
      }

  """
  @type too_many_cache_policies() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_connection_group_request() :: %{
        optional("AnycastIpListId") => String.t(),
        optional("Enabled") => boolean(),
        optional("Ipv6Enabled") => boolean(),
        optional("Tags") => tags(),
        required("Name") => String.t()
      }

  """
  @type create_connection_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      response_headers_policy_remove_headers_config() :: %{
        "Items" => list(response_headers_policy_remove_header()),
        "Quantity" => integer()
      }

  """
  @type response_headers_policy_remove_headers_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_error_code() :: %{
        "Message" => String.t()
      }

  """
  @type invalid_error_code() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_distributions_result() :: %{
        "DistributionList" => distribution_list()
      }

  """
  @type list_distributions_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_response_headers_policies_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => integer(),
        optional("Type") => list(any())
      }

  """
  @type list_response_headers_policies_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      field_level_encryption() :: %{
        "FieldLevelEncryptionConfig" => field_level_encryption_config(),
        "Id" => String.t(),
        "LastModifiedTime" => non_neg_integer()
      }

  """
  @type field_level_encryption() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_geo_restriction_parameter() :: %{
        "Message" => String.t()
      }

  """
  @type invalid_geo_restriction_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      key_value_store_associations() :: %{
        "Items" => list(key_value_store_association()),
        "Quantity" => integer()
      }

  """
  @type key_value_store_associations() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      vpc_origin_config() :: %{
        "OriginKeepaliveTimeout" => integer(),
        "OriginReadTimeout" => integer(),
        "VpcOriginId" => String.t()
      }

  """
  @type vpc_origin_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      origin_access_control() :: %{
        "Id" => String.t(),
        "OriginAccessControlConfig" => origin_access_control_config()
      }

  """
  @type origin_access_control() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      origin_request_policy_already_exists() :: %{
        "Message" => String.t()
      }

  """
  @type origin_request_policy_already_exists() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      origin_request_policy() :: %{
        "Id" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "OriginRequestPolicyConfig" => origin_request_policy_config()
      }

  """
  @type origin_request_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      response_headers_policy_already_exists() :: %{
        "Message" => String.t()
      }

  """
  @type response_headers_policy_already_exists() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      continuous_deployment_policy_in_use() :: %{
        "Message" => String.t()
      }

  """
  @type continuous_deployment_policy_in_use() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      response_headers_policy_list() :: %{
        "Items" => list(response_headers_policy_summary()),
        "MaxItems" => integer(),
        "NextMarker" => String.t(),
        "Quantity" => integer()
      }

  """
  @type response_headers_policy_list() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_connection_group_result() :: %{
        "ConnectionGroup" => connection_group(),
        "ETag" => String.t()
      }

  """
  @type get_connection_group_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_origin_access_control_request() :: %{
        optional("IfMatch") => String.t(),
        required("OriginAccessControlConfig") => origin_access_control_config()
      }

  """
  @type update_origin_access_control_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_realtime_log_config_result() :: %{
        "RealtimeLogConfig" => realtime_log_config()
      }

  """
  @type update_realtime_log_config_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_distributions_with_function_associations() :: %{
        "Message" => String.t()
      }

  """
  @type too_many_distributions_with_function_associations() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_anycast_ip_list_result() :: %{
        "AnycastIpList" => anycast_ip_list(),
        "ETag" => String.t()
      }

  """
  @type get_anycast_ip_list_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      missing_body() :: %{
        "Message" => String.t()
      }

  """
  @type missing_body() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cookie_names() :: %{
        "Items" => list(String.t()),
        "Quantity" => integer()
      }

  """
  @type cookie_names() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_query_strings_in_cache_policy() :: %{
        "Message" => String.t()
      }

  """
  @type too_many_query_strings_in_cache_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      inconsistent_quantities() :: %{
        "Message" => String.t()
      }

  """
  @type inconsistent_quantities() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_headers_for_s3_origin() :: %{
        "Message" => String.t()
      }

  """
  @type invalid_headers_for_s3_origin() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_distributions_by_cache_policy_id_result() :: %{
        "DistributionIdList" => distribution_id_list()
      }

  """
  @type list_distributions_by_cache_policy_id_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_distribution_tenant_web_acl_result() :: %{
        "ETag" => String.t(),
        "Id" => String.t()
      }

  """
  @type disassociate_distribution_tenant_web_acl_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      field_patterns() :: %{
        "Items" => list(String.t()),
        "Quantity" => integer()
      }

  """
  @type field_patterns() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      monitoring_subscription_already_exists() :: %{
        "Message" => String.t()
      }

  """
  @type monitoring_subscription_already_exists() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_lambda_function_association() :: %{
        "Message" => String.t()
      }

  """
  @type invalid_lambda_function_association() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_distribution_tenants_by_customization_request() :: %{
        optional("CertificateArn") => String.t(),
        optional("Marker") => String.t(),
        optional("MaxItems") => integer(),
        optional("WebACLArn") => String.t()
      }

  """
  @type list_distribution_tenants_by_customization_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tags() :: %{
        "Items" => list(tag())
      }

  """
  @type tags() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      anycast_ip_list_collection() :: %{
        "IsTruncated" => boolean(),
        "Items" => list(anycast_ip_list_summary()),
        "Marker" => String.t(),
        "MaxItems" => integer(),
        "NextMarker" => String.t(),
        "Quantity" => integer()
      }

  """
  @type anycast_ip_list_collection() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      distribution() :: %{
        "ARN" => String.t(),
        "ActiveTrustedKeyGroups" => active_trusted_key_groups(),
        "ActiveTrustedSigners" => active_trusted_signers(),
        "AliasICPRecordals" => list(alias_i_c_p_recordal()),
        "DistributionConfig" => distribution_config(),
        "DomainName" => String.t(),
        "Id" => String.t(),
        "InProgressInvalidationBatches" => integer(),
        "LastModifiedTime" => non_neg_integer(),
        "Status" => String.t()
      }

  """
  @type distribution() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      parameter() :: %{
        "Name" => String.t(),
        "Value" => String.t()
      }

  """
  @type parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_cache_policy_request() :: %{
        required("CachePolicyConfig") => cache_policy_config()
      }

  """
  @type create_cache_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_distribution_tenants_result() :: %{
        "DistributionTenantList" => list(distribution_tenant_summary()),
        "NextMarker" => String.t()
      }

  """
  @type list_distribution_tenants_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      origin_request_policy_query_strings_config() :: %{
        "QueryStringBehavior" => list(any()),
        "QueryStrings" => query_string_names()
      }

  """
  @type origin_request_policy_query_strings_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_origin_keepalive_timeout() :: %{
        "Message" => String.t()
      }

  """
  @type invalid_origin_keepalive_timeout() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_continuous_deployment_policies_result() :: %{
        "ContinuousDeploymentPolicyList" => continuous_deployment_policy_list()
      }

  """
  @type list_continuous_deployment_policies_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      kinesis_stream_config() :: %{
        "RoleARN" => String.t(),
        "StreamARN" => String.t()
      }

  """
  @type kinesis_stream_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_forward_cookies() :: %{
        "Message" => String.t()
      }

  """
  @type invalid_forward_cookies() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_key_group_result() :: %{
        "ETag" => String.t(),
        "KeyGroup" => key_group(),
        "Location" => String.t()
      }

  """
  @type create_key_group_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_key_group_request() :: %{
        optional("IfMatch") => String.t()
      }

  """
  @type delete_key_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_field_level_encryption_config_result() :: %{
        "ETag" => String.t(),
        "FieldLevelEncryption" => field_level_encryption(),
        "Location" => String.t()
      }

  """
  @type create_field_level_encryption_config_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      realtime_log_config_already_exists() :: %{
        "Message" => String.t()
      }

  """
  @type realtime_log_config_already_exists() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      no_such_cache_policy() :: %{
        "Message" => String.t()
      }

  """
  @type no_such_cache_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      aliases() :: %{
        "Items" => list(String.t()),
        "Quantity" => integer()
      }

  """
  @type aliases() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_distribution_tenants_by_customization_result() :: %{
        "DistributionTenantList" => list(distribution_tenant_summary()),
        "NextMarker" => String.t()
      }

  """
  @type list_distribution_tenants_by_customization_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_alias_request() :: %{
        required("Alias") => String.t()
      }

  """
  @type associate_alias_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      origin_groups() :: %{
        "Items" => list(origin_group()),
        "Quantity" => integer()
      }

  """
  @type origin_groups() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      encryption_entity() :: %{
        "FieldPatterns" => field_patterns(),
        "ProviderId" => String.t(),
        "PublicKeyId" => String.t()
      }

  """
  @type encryption_entity() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalidation_batch() :: %{
        "CallerReference" => String.t(),
        "Paths" => paths()
      }

  """
  @type invalidation_batch() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_streaming_distributions_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => integer()
      }

  """
  @type list_streaming_distributions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      trusted_signer_does_not_exist() :: %{
        "Message" => String.t()
      }

  """
  @type trusted_signer_does_not_exist() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_vpc_origin_result() :: %{
        "ETag" => String.t(),
        "VpcOrigin" => vpc_origin()
      }

  """
  @type get_vpc_origin_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_distributions_by_connection_mode_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => integer()
      }

  """
  @type list_distributions_by_connection_mode_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_cloud_front_origin_access_identity_request() :: %{
        required("CloudFrontOriginAccessIdentityConfig") => cloud_front_origin_access_identity_config()
      }

  """
  @type create_cloud_front_origin_access_identity_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      no_such_streaming_distribution() :: %{
        "Message" => String.t()
      }

  """
  @type no_such_streaming_distribution() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_origin_read_timeout() :: %{
        "Message" => String.t()
      }

  """
  @type invalid_origin_read_timeout() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_invalidation_request() :: %{}

  """
  @type get_invalidation_request() :: %{}

  @typedoc """

  ## Example:

      continuous_deployment_policy_config() :: %{
        "Enabled" => boolean(),
        "StagingDistributionDnsNames" => staging_distribution_dns_names(),
        "TrafficConfig" => traffic_config()
      }

  """
  @type continuous_deployment_policy_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_origin_request_policy_config_result() :: %{
        "ETag" => String.t(),
        "OriginRequestPolicyConfig" => origin_request_policy_config()
      }

  """
  @type get_origin_request_policy_config_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_response_headers_policy_result() :: %{
        "ETag" => String.t(),
        "Location" => String.t(),
        "ResponseHeadersPolicy" => response_headers_policy()
      }

  """
  @type create_response_headers_policy_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_key_value_store_request() :: %{
        required("Comment") => String.t(),
        required("IfMatch") => String.t()
      }

  """
  @type update_key_value_store_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      customizations() :: %{
        "Certificate" => certificate(),
        "GeoRestrictions" => geo_restriction_customization(),
        "WebAcl" => web_acl_customization()
      }

  """
  @type customizations() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_domain_name_for_origin_access_control() :: %{
        "Message" => String.t()
      }

  """
  @type invalid_domain_name_for_origin_access_control() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      response_headers_policy_content_security_policy() :: %{
        "ContentSecurityPolicy" => String.t(),
        "Override" => boolean()
      }

  """
  @type response_headers_policy_content_security_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      managed_certificate_details() :: %{
        "CertificateArn" => String.t(),
        "CertificateStatus" => list(any()),
        "ValidationTokenDetails" => list(validation_token_detail()),
        "ValidationTokenHost" => list(any())
      }

  """
  @type managed_certificate_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      public_key() :: %{
        "CreatedTime" => non_neg_integer(),
        "Id" => String.t(),
        "PublicKeyConfig" => public_key_config()
      }

  """
  @type public_key() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      domain_conflict() :: %{
        "AccountId" => String.t(),
        "Domain" => String.t(),
        "ResourceId" => String.t(),
        "ResourceType" => list(any())
      }

  """
  @type domain_conflict() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_field_level_encryption_profile_request() :: %{
        optional("IfMatch") => String.t(),
        required("FieldLevelEncryptionProfileConfig") => field_level_encryption_profile_config()
      }

  """
  @type update_field_level_encryption_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      field_level_encryption_profile_summary() :: %{
        "Comment" => String.t(),
        "EncryptionEntities" => encryption_entities(),
        "Id" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t()
      }

  """
  @type field_level_encryption_profile_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      function_summary() :: %{
        "FunctionConfig" => function_config(),
        "FunctionMetadata" => function_metadata(),
        "Name" => String.t(),
        "Status" => String.t()
      }

  """
  @type function_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_key_groups_associated_to_distribution() :: %{
        "Message" => String.t()
      }

  """
  @type too_many_key_groups_associated_to_distribution() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_cache_policy_result() :: %{
        "CachePolicy" => cache_policy(),
        "ETag" => String.t(),
        "Location" => String.t()
      }

  """
  @type create_cache_policy_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_key_value_store_request() :: %{
        optional("Comment") => String.t(),
        optional("ImportSource") => import_source(),
        required("Name") => String.t()
      }

  """
  @type create_key_value_store_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      origin_custom_header() :: %{
        "HeaderName" => String.t(),
        "HeaderValue" => String.t()
      }

  """
  @type origin_custom_header() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_field_level_encryption_profiles_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => integer()
      }

  """
  @type list_field_level_encryption_profiles_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_vpc_origins_result() :: %{
        "VpcOriginList" => vpc_origin_list()
      }

  """
  @type list_vpc_origins_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cache_policy_already_exists() :: %{
        "Message" => String.t()
      }

  """
  @type cache_policy_already_exists() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_headers_in_forwarded_values() :: %{
        "Message" => String.t()
      }

  """
  @type too_many_headers_in_forwarded_values() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      response_headers_policy_remove_header() :: %{
        "Header" => String.t()
      }

  """
  @type response_headers_policy_remove_header() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_field_level_encryption_request() :: %{}

  """
  @type get_field_level_encryption_request() :: %{}

  @typedoc """

  ## Example:

      invalid_minimum_protocol_version() :: %{
        "Message" => String.t()
      }

  """
  @type invalid_minimum_protocol_version() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      key_value_store_list() :: %{
        "Items" => list(key_value_store()),
        "MaxItems" => integer(),
        "NextMarker" => String.t(),
        "Quantity" => integer()
      }

  """
  @type key_value_store_list() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_cloud_front_origin_access_identity_result() :: %{
        "CloudFrontOriginAccessIdentity" => cloud_front_origin_access_identity(),
        "ETag" => String.t()
      }

  """
  @type get_cloud_front_origin_access_identity_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      query_string_names() :: %{
        "Items" => list(String.t()),
        "Quantity" => integer()
      }

  """
  @type query_string_names() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_field_level_encryption_result() :: %{
        "ETag" => String.t(),
        "FieldLevelEncryption" => field_level_encryption()
      }

  """
  @type get_field_level_encryption_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_streaming_distribution_request() :: %{
        optional("IfMatch") => String.t(),
        required("StreamingDistributionConfig") => streaming_distribution_config()
      }

  """
  @type update_streaming_distribution_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_streaming_distributions() :: %{
        "Message" => String.t()
      }

  """
  @type too_many_streaming_distributions() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      no_such_origin_access_control() :: %{
        "Message" => String.t()
      }

  """
  @type no_such_origin_access_control() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cannot_delete_entity_while_in_use() :: %{
        "Message" => String.t()
      }

  """
  @type cannot_delete_entity_while_in_use() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflicting_aliases_list() :: %{
        "Items" => list(conflicting_alias()),
        "MaxItems" => integer(),
        "NextMarker" => String.t(),
        "Quantity" => integer()
      }

  """
  @type conflicting_aliases_list() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_field_level_encryption_profiles() :: %{
        "Message" => String.t()
      }

  """
  @type too_many_field_level_encryption_profiles() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_field_level_encryption_configs_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => integer()
      }

  """
  @type list_field_level_encryption_configs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      distribution_tenant_association_filter() :: %{
        "ConnectionGroupId" => String.t(),
        "DistributionId" => String.t()
      }

  """
  @type distribution_tenant_association_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_public_key_result() :: %{
        "ETag" => String.t(),
        "PublicKey" => public_key()
      }

  """
  @type update_public_key_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_field_level_encryption_config_request() :: %{}

  """
  @type get_field_level_encryption_config_request() :: %{}

  @typedoc """

  ## Example:

      too_many_field_level_encryption_configs() :: %{
        "Message" => String.t()
      }

  """
  @type too_many_field_level_encryption_configs() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_key_value_store_request() :: %{
        required("IfMatch") => String.t()
      }

  """
  @type delete_key_value_store_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_origin_custom_headers() :: %{
        "Message" => String.t()
      }

  """
  @type too_many_origin_custom_headers() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_distribution_web_acl_result() :: %{
        "ETag" => String.t(),
        "Id" => String.t()
      }

  """
  @type disassociate_distribution_web_acl_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_function_result() :: %{
        "ETag" => String.t(),
        "FunctionSummary" => function_summary(),
        "Location" => String.t()
      }

  """
  @type create_function_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      distribution_already_exists() :: %{
        "Message" => String.t()
      }

  """
  @type distribution_already_exists() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      field_level_encryption_config() :: %{
        "CallerReference" => String.t(),
        "Comment" => String.t(),
        "ContentTypeProfileConfig" => content_type_profile_config(),
        "QueryArgProfileConfig" => query_arg_profile_config()
      }

  """
  @type field_level_encryption_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_cache_policies_result() :: %{
        "CachePolicyList" => cache_policy_list()
      }

  """
  @type list_cache_policies_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      active_trusted_signers() :: %{
        "Enabled" => boolean(),
        "Items" => list(signer()),
        "Quantity" => integer()
      }

  """
  @type active_trusted_signers() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_vpc_origin_request() :: %{
        required("IfMatch") => String.t()
      }

  """
  @type delete_vpc_origin_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cloud_front_origin_access_identity() :: %{
        "CloudFrontOriginAccessIdentityConfig" => cloud_front_origin_access_identity_config(),
        "Id" => String.t(),
        "S3CanonicalUserId" => String.t()
      }

  """
  @type cloud_front_origin_access_identity() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_functions_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => integer(),
        optional("Stage") => list(any())
      }

  """
  @type list_functions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_origins() :: %{
        "Message" => String.t()
      }

  """
  @type too_many_origins() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_distributions_with_single_function_arn() :: %{
        "Message" => String.t()
      }

  """
  @type too_many_distributions_with_single_function_arn() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_anycast_ip_list_request() :: %{
        optional("Tags") => tags(),
        required("IpCount") => integer(),
        required("Name") => String.t()
      }

  """
  @type create_anycast_ip_list_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_distributions_with_lambda_associations() :: %{
        "Message" => String.t()
      }

  """
  @type too_many_distributions_with_lambda_associations() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      no_such_resource() :: %{
        "Message" => String.t()
      }

  """
  @type no_such_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_invalidation_for_distribution_tenant_request() :: %{}

  """
  @type get_invalidation_for_distribution_tenant_request() :: %{}

  @typedoc """

  ## Example:

      distribution_list() :: %{
        "IsTruncated" => boolean(),
        "Items" => list(distribution_summary()),
        "Marker" => String.t(),
        "MaxItems" => integer(),
        "NextMarker" => String.t(),
        "Quantity" => integer()
      }

  """
  @type distribution_list() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_disabled() :: %{
        "Message" => String.t()
      }

  """
  @type resource_not_disabled() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      response_headers_policy_config() :: %{
        "Comment" => String.t(),
        "CorsConfig" => response_headers_policy_cors_config(),
        "CustomHeadersConfig" => response_headers_policy_custom_headers_config(),
        "Name" => String.t(),
        "RemoveHeadersConfig" => response_headers_policy_remove_headers_config(),
        "SecurityHeadersConfig" => response_headers_policy_security_headers_config(),
        "ServerTimingHeadersConfig" => response_headers_policy_server_timing_headers_config()
      }

  """
  @type response_headers_policy_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_cache_policy_request() :: %{
        optional("IfMatch") => String.t()
      }

  """
  @type delete_cache_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_result() :: %{
        "Tags" => tags()
      }

  """
  @type list_tags_for_resource_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      certificate() :: %{
        "Arn" => String.t()
      }

  """
  @type certificate() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_response_headers_policy_config_request() :: %{}

  """
  @type get_response_headers_policy_config_request() :: %{}

  @typedoc """

  ## Example:

      too_many_field_level_encryption_encryption_entities() :: %{
        "Message" => String.t()
      }

  """
  @type too_many_field_level_encryption_encryption_entities() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_distribution_web_acl_request() :: %{
        optional("IfMatch") => String.t(),
        required("WebACLArn") => String.t()
      }

  """
  @type associate_distribution_web_acl_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_lambda_function_associations() :: %{
        "Message" => String.t()
      }

  """
  @type too_many_lambda_function_associations() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_streaming_distribution_cnames() :: %{
        "Message" => String.t()
      }

  """
  @type too_many_streaming_distribution_cnames() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_anycast_ip_list_result() :: %{
        "AnycastIpList" => anycast_ip_list(),
        "ETag" => String.t()
      }

  """
  @type create_anycast_ip_list_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      grpc_config() :: %{
        "Enabled" => boolean()
      }

  """
  @type grpc_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      distribution_tenant() :: %{
        "Arn" => String.t(),
        "ConnectionGroupId" => String.t(),
        "CreatedTime" => non_neg_integer(),
        "Customizations" => customizations(),
        "DistributionId" => String.t(),
        "Domains" => list(domain_result()),
        "Enabled" => boolean(),
        "Id" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t(),
        "Parameters" => list(parameter()),
        "Status" => String.t(),
        "Tags" => tags()
      }

  """
  @type distribution_tenant() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      function_config() :: %{
        "Comment" => String.t(),
        "KeyValueStoreAssociations" => key_value_store_associations(),
        "Runtime" => list(any())
      }

  """
  @type function_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_streaming_distributions_result() :: %{
        "StreamingDistributionList" => streaming_distribution_list()
      }

  """
  @type list_streaming_distributions_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      origin_request_policy_summary() :: %{
        "OriginRequestPolicy" => origin_request_policy(),
        "Type" => list(any())
      }

  """
  @type origin_request_policy_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_keys() :: %{
        "Items" => list(String.t())
      }

  """
  @type tag_keys() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_realtime_log_configs() :: %{
        "Message" => String.t()
      }

  """
  @type too_many_realtime_log_configs() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      verify_dns_configuration_result() :: %{
        "DnsConfigurationList" => list(dns_configuration())
      }

  """
  @type verify_dns_configuration_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cache_policy_in_use() :: %{
        "Message" => String.t()
      }

  """
  @type cache_policy_in_use() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_vpc_origin_result() :: %{
        "ETag" => String.t(),
        "Location" => String.t(),
        "VpcOrigin" => vpc_origin()
      }

  """
  @type create_vpc_origin_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      origin_group() :: %{
        "FailoverCriteria" => origin_group_failover_criteria(),
        "Id" => String.t(),
        "Members" => origin_group_members(),
        "SelectionCriteria" => list(any())
      }

  """
  @type origin_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_key_group_request() :: %{}

  """
  @type get_key_group_request() :: %{}

  @typedoc """

  ## Example:

      get_public_key_request() :: %{}

  """
  @type get_public_key_request() :: %{}

  @typedoc """

  ## Example:

      create_distribution_result() :: %{
        "Distribution" => distribution(),
        "ETag" => String.t(),
        "Location" => String.t()
      }

  """
  @type create_distribution_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      custom_error_response() :: %{
        "ErrorCachingMinTTL" => float(),
        "ErrorCode" => integer(),
        "ResponseCode" => String.t(),
        "ResponsePagePath" => String.t()
      }

  """
  @type custom_error_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_distributions_associated_to_response_headers_policy() :: %{
        "Message" => String.t()
      }

  """
  @type too_many_distributions_associated_to_response_headers_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      test_function_request() :: %{
        optional("Stage") => list(any()),
        required("EventObject") => binary(),
        required("IfMatch") => String.t()
      }

  """
  @type test_function_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_monitoring_subscription_result() :: %{
        "MonitoringSubscription" => monitoring_subscription()
      }

  """
  @type create_monitoring_subscription_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      response_headers_policy_custom_header() :: %{
        "Header" => String.t(),
        "Override" => boolean(),
        "Value" => String.t()
      }

  """
  @type response_headers_policy_custom_header() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      no_such_function_exists() :: %{
        "Message" => String.t()
      }

  """
  @type no_such_function_exists() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_vpc_origin_result() :: %{
        "ETag" => String.t(),
        "VpcOrigin" => vpc_origin()
      }

  """
  @type delete_vpc_origin_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_field_level_encryption_profile_config_result() :: %{
        "ETag" => String.t(),
        "FieldLevelEncryptionProfileConfig" => field_level_encryption_profile_config()
      }

  """
  @type get_field_level_encryption_profile_config_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      origin_ssl_protocols() :: %{
        "Items" => list(list(any())()),
        "Quantity" => integer()
      }

  """
  @type origin_ssl_protocols() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_cloud_front_origin_access_identities() :: %{
        "Message" => String.t()
      }

  """
  @type too_many_cloud_front_origin_access_identities() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_anycast_ip_list_request() :: %{
        required("IfMatch") => String.t()
      }

  """
  @type delete_anycast_ip_list_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      field_level_encryption_profile_config() :: %{
        "CallerReference" => String.t(),
        "Comment" => String.t(),
        "EncryptionEntities" => encryption_entities(),
        "Name" => String.t()
      }

  """
  @type field_level_encryption_profile_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_origin_access_controls_result() :: %{
        "OriginAccessControlList" => origin_access_control_list()
      }

  """
  @type list_origin_access_controls_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_distribution_tenant_web_acl_request() :: %{
        optional("IfMatch") => String.t()
      }

  """
  @type disassociate_distribution_tenant_web_acl_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_distribution_tenant_request() :: %{
        required("IfMatch") => String.t()
      }

  """
  @type delete_distribution_tenant_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_distributions_by_web_acl_id_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => integer()
      }

  """
  @type list_distributions_by_web_acl_id_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_distributions_by_response_headers_policy_id_result() :: %{
        "DistributionIdList" => distribution_id_list()
      }

  """
  @type list_distributions_by_response_headers_policy_id_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_vpc_origin_result() :: %{
        "ETag" => String.t(),
        "VpcOrigin" => vpc_origin()
      }

  """
  @type update_vpc_origin_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_monitoring_subscription_request() :: %{}

  """
  @type get_monitoring_subscription_request() :: %{}

  @typedoc """

  ## Example:

      origin() :: %{
        "ConnectionAttempts" => integer(),
        "ConnectionTimeout" => integer(),
        "CustomHeaders" => custom_headers(),
        "CustomOriginConfig" => custom_origin_config(),
        "DomainName" => String.t(),
        "Id" => String.t(),
        "OriginAccessControlId" => String.t(),
        "OriginPath" => String.t(),
        "OriginShield" => origin_shield(),
        "S3OriginConfig" => s3_origin_config(),
        "VpcOriginConfig" => vpc_origin_config()
      }

  """
  @type origin() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_field_level_encryption_profile_result() :: %{
        "ETag" => String.t(),
        "FieldLevelEncryptionProfile" => field_level_encryption_profile(),
        "Location" => String.t()
      }

  """
  @type create_field_level_encryption_profile_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_domain_association_result() :: %{
        "Domain" => String.t(),
        "ETag" => String.t(),
        "ResourceId" => String.t()
      }

  """
  @type update_domain_association_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_public_keys_in_key_group() :: %{
        "Message" => String.t()
      }

  """
  @type too_many_public_keys_in_key_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      continuous_deployment_single_header_config() :: %{
        "Header" => String.t(),
        "Value" => String.t()
      }

  """
  @type continuous_deployment_single_header_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_distributions_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => integer()
      }

  """
  @type list_distributions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_invalidation_for_distribution_tenant_result() :: %{
        "Invalidation" => invalidation()
      }

  """
  @type get_invalidation_for_distribution_tenant_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_realtime_log_config_request() :: %{
        optional("ARN") => String.t(),
        optional("EndPoints") => list(end_point()),
        optional("Fields") => list(String.t()),
        optional("Name") => String.t(),
        optional("SamplingRate") => float()
      }

  """
  @type update_realtime_log_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_distribution_result() :: %{
        "Distribution" => distribution(),
        "ETag" => String.t()
      }

  """
  @type get_distribution_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_cache_behaviors() :: %{
        "Message" => String.t()
      }

  """
  @type too_many_cache_behaviors() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_origin_access_control_request() :: %{}

  """
  @type get_origin_access_control_request() :: %{}

  @typedoc """

  ## Example:

      list_invalidations_result() :: %{
        "InvalidationList" => invalidation_list()
      }

  """
  @type list_invalidations_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      function_list() :: %{
        "Items" => list(function_summary()),
        "MaxItems" => integer(),
        "NextMarker" => String.t(),
        "Quantity" => integer()
      }

  """
  @type function_list() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      managed_certificate_request() :: %{
        "CertificateTransparencyLoggingPreference" => list(any()),
        "PrimaryDomainName" => String.t(),
        "ValidationTokenHost" => list(any())
      }

  """
  @type managed_certificate_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_cloud_front_origin_access_identity_config_request() :: %{}

  """
  @type get_cloud_front_origin_access_identity_config_request() :: %{}

  @typedoc """

  ## Example:

      response_headers_policy_server_timing_headers_config() :: %{
        "Enabled" => boolean(),
        "SamplingRate" => float()
      }

  """
  @type response_headers_policy_server_timing_headers_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      headers() :: %{
        "Items" => list(String.t()),
        "Quantity" => integer()
      }

  """
  @type headers() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      realtime_log_config_in_use() :: %{
        "Message" => String.t()
      }

  """
  @type realtime_log_config_in_use() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      streaming_distribution_summary() :: %{
        "ARN" => String.t(),
        "Aliases" => aliases(),
        "Comment" => String.t(),
        "DomainName" => String.t(),
        "Enabled" => boolean(),
        "Id" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "PriceClass" => list(any()),
        "S3Origin" => s3_origin(),
        "Status" => String.t(),
        "TrustedSigners" => trusted_signers()
      }

  """
  @type streaming_distribution_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_distributions_by_anycast_ip_list_id_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => integer()
      }

  """
  @type list_distributions_by_anycast_ip_list_id_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_distribution_tenant_result() :: %{
        "DistributionTenant" => distribution_tenant(),
        "ETag" => String.t()
      }

  """
  @type update_distribution_tenant_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_distributions_by_realtime_log_config_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => integer(),
        optional("RealtimeLogConfigArn") => String.t(),
        optional("RealtimeLogConfigName") => String.t()
      }

  """
  @type list_distributions_by_realtime_log_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      response_headers_policy_cors_config() :: %{
        "AccessControlAllowCredentials" => boolean(),
        "AccessControlAllowHeaders" => response_headers_policy_access_control_allow_headers(),
        "AccessControlAllowMethods" => response_headers_policy_access_control_allow_methods(),
        "AccessControlAllowOrigins" => response_headers_policy_access_control_allow_origins(),
        "AccessControlExposeHeaders" => response_headers_policy_access_control_expose_headers(),
        "AccessControlMaxAgeSec" => integer(),
        "OriginOverride" => boolean()
      }

  """
  @type response_headers_policy_cors_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      origin_group_failover_criteria() :: %{
        "StatusCodes" => status_codes()
      }

  """
  @type origin_group_failover_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_key_groups() :: %{
        "Message" => String.t()
      }

  """
  @type too_many_key_groups() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{
        required("Resource") => String.t()
      }

  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_public_key_config_result() :: %{
        "ETag" => String.t(),
        "PublicKeyConfig" => public_key_config()
      }

  """
  @type get_public_key_config_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      test_function_failed() :: %{
        "Message" => String.t()
      }

  """
  @type test_function_failed() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_response_headers_policy_config_result() :: %{
        "ETag" => String.t(),
        "ResponseHeadersPolicyConfig" => response_headers_policy_config()
      }

  """
  @type get_response_headers_policy_config_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      function_already_exists() :: %{
        "Message" => String.t()
      }

  """
  @type function_already_exists() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      origin_group_members() :: %{
        "Items" => list(origin_group_member()),
        "Quantity" => integer()
      }

  """
  @type origin_group_members() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      streaming_distribution_already_exists() :: %{
        "Message" => String.t()
      }

  """
  @type streaming_distribution_already_exists() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_default_root_object() :: %{
        "Message" => String.t()
      }

  """
  @type invalid_default_root_object() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_distributions_by_vpc_origin_id_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => integer()
      }

  """
  @type list_distributions_by_vpc_origin_id_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_origin_request_policy_result() :: %{
        "ETag" => String.t(),
        "Location" => String.t(),
        "OriginRequestPolicy" => origin_request_policy()
      }

  """
  @type create_origin_request_policy_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_distributions_by_origin_request_policy_id_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => integer()
      }

  """
  @type list_distributions_by_origin_request_policy_id_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_distribution_tenant_web_acl_request() :: %{
        optional("IfMatch") => String.t(),
        required("WebACLArn") => String.t()
      }

  """
  @type associate_distribution_tenant_web_acl_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cname_already_exists() :: %{
        "Message" => String.t()
      }

  """
  @type cname_already_exists() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      field_level_encryption_profile_size_exceeded() :: %{
        "Message" => String.t()
      }

  """
  @type field_level_encryption_profile_size_exceeded() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_response_headers_policy_request() :: %{
        required("ResponseHeadersPolicyConfig") => response_headers_policy_config()
      }

  """
  @type create_response_headers_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_field_level_encryption_field_patterns() :: %{
        "Message" => String.t()
      }

  """
  @type too_many_field_level_encryption_field_patterns() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_continuous_deployment_policy_config_result() :: %{
        "ContinuousDeploymentPolicyConfig" => continuous_deployment_policy_config(),
        "ETag" => String.t()
      }

  """
  @type get_continuous_deployment_policy_config_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      domain_result() :: %{
        "Domain" => String.t(),
        "Status" => list(any())
      }

  """
  @type domain_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_anycast_ip_list_request() :: %{}

  """
  @type get_anycast_ip_list_request() :: %{}

  @typedoc """

  ## Example:

      origin_request_policy_list() :: %{
        "Items" => list(origin_request_policy_summary()),
        "MaxItems" => integer(),
        "NextMarker" => String.t(),
        "Quantity" => integer()
      }

  """
  @type origin_request_policy_list() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      key_value_store() :: %{
        "ARN" => String.t(),
        "Comment" => String.t(),
        "Id" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t(),
        "Status" => String.t()
      }

  """
  @type key_value_store() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_remove_headers_in_response_headers_policy() :: %{
        "Message" => String.t()
      }

  """
  @type too_many_remove_headers_in_response_headers_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_origin_request_policies() :: %{
        "Message" => String.t()
      }

  """
  @type too_many_origin_request_policies() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_origin_access_control_result() :: %{
        "ETag" => String.t(),
        "OriginAccessControl" => origin_access_control()
      }

  """
  @type get_origin_access_control_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_origin_access_control_request() :: %{
        optional("IfMatch") => String.t()
      }

  """
  @type delete_origin_access_control_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_continuous_deployment_policy_request() :: %{
        optional("IfMatch") => String.t()
      }

  """
  @type delete_continuous_deployment_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_cloud_front_origin_access_identity_result() :: %{
        "CloudFrontOriginAccessIdentity" => cloud_front_origin_access_identity(),
        "ETag" => String.t(),
        "Location" => String.t()
      }

  """
  @type create_cloud_front_origin_access_identity_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_response_headers_policy_result() :: %{
        "ETag" => String.t(),
        "ResponseHeadersPolicy" => response_headers_policy()
      }

  """
  @type get_response_headers_policy_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_token_detail() :: %{
        "Domain" => String.t(),
        "RedirectFrom" => String.t(),
        "RedirectTo" => String.t()
      }

  """
  @type validation_token_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      web_acl_customization() :: %{
        "Action" => list(any()),
        "Arn" => String.t()
      }

  """
  @type web_acl_customization() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_distributions_by_key_group_result() :: %{
        "DistributionIdList" => distribution_id_list()
      }

  """
  @type list_distributions_by_key_group_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_cache_policies_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => integer(),
        optional("Type") => list(any())
      }

  """
  @type list_cache_policies_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      no_such_invalidation() :: %{
        "Message" => String.t()
      }

  """
  @type no_such_invalidation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_query_string_parameters() :: %{
        "Message" => String.t()
      }

  """
  @type too_many_query_string_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      illegal_delete() :: %{
        "Message" => String.t()
      }

  """
  @type illegal_delete() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_viewer_certificate() :: %{
        "Message" => String.t()
      }

  """
  @type invalid_viewer_certificate() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_distribution_result() :: %{
        "Distribution" => distribution(),
        "ETag" => String.t()
      }

  """
  @type update_distribution_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_conflicting_aliases_result() :: %{
        "ConflictingAliasesList" => conflicting_aliases_list()
      }

  """
  @type list_conflicting_aliases_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_distribution_with_staging_config_request() :: %{
        optional("IfMatch") => String.t(),
        optional("StagingDistributionId") => String.t()
      }

  """
  @type update_distribution_with_staging_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      paths() :: %{
        "Items" => list(String.t()),
        "Quantity" => integer()
      }

  """
  @type paths() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      vpc_origin() :: %{
        "Arn" => String.t(),
        "CreatedTime" => non_neg_integer(),
        "Id" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "Status" => String.t(),
        "VpcOriginEndpointConfig" => vpc_origin_endpoint_config()
      }

  """
  @type vpc_origin() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_relative_path() :: %{
        "Message" => String.t()
      }

  """
  @type invalid_relative_path() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_field_level_encryption_config_request() :: %{
        required("FieldLevelEncryptionConfig") => field_level_encryption_config()
      }

  """
  @type create_field_level_encryption_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      verify_dns_configuration_request() :: %{
        optional("Domain") => String.t(),
        required("Identifier") => String.t()
      }

  """
  @type verify_dns_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_origin_access_control_result() :: %{
        "ETag" => String.t(),
        "Location" => String.t(),
        "OriginAccessControl" => origin_access_control()
      }

  """
  @type create_origin_access_control_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_streaming_distribution_request() :: %{
        optional("IfMatch") => String.t()
      }

  """
  @type delete_streaming_distribution_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      no_such_response_headers_policy() :: %{
        "Message" => String.t()
      }

  """
  @type no_such_response_headers_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cloud_front_origin_access_identity_config() :: %{
        "CallerReference" => String.t(),
        "Comment" => String.t()
      }

  """
  @type cloud_front_origin_access_identity_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      k_g_key_pair_ids() :: %{
        "KeyGroupId" => String.t(),
        "KeyPairIds" => key_pair_ids()
      }

  """
  @type k_g_key_pair_ids() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalidation_list() :: %{
        "IsTruncated" => boolean(),
        "Items" => list(invalidation_summary()),
        "Marker" => String.t(),
        "MaxItems" => integer(),
        "NextMarker" => String.t(),
        "Quantity" => integer()
      }

  """
  @type invalidation_list() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_public_key_result() :: %{
        "ETag" => String.t(),
        "Location" => String.t(),
        "PublicKey" => public_key()
      }

  """
  @type create_public_key_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_distribution_tenant_result() :: %{
        "DistributionTenant" => distribution_tenant(),
        "ETag" => String.t()
      }

  """
  @type create_distribution_tenant_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      response_headers_policy_access_control_allow_methods() :: %{
        "Items" => list(list(any())()),
        "Quantity" => integer()
      }

  """
  @type response_headers_policy_access_control_allow_methods() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      response_headers_policy_security_headers_config() :: %{
        "ContentSecurityPolicy" => response_headers_policy_content_security_policy(),
        "ContentTypeOptions" => response_headers_policy_content_type_options(),
        "FrameOptions" => response_headers_policy_frame_options(),
        "ReferrerPolicy" => response_headers_policy_referrer_policy(),
        "StrictTransportSecurity" => response_headers_policy_strict_transport_security(),
        "XSSProtection" => response_headers_policy_x_s_s_protection()
      }

  """
  @type response_headers_policy_security_headers_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      realtime_log_config_owner_mismatch() :: %{
        "Message" => String.t()
      }

  """
  @type realtime_log_config_owner_mismatch() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_distribution_with_tags_result() :: %{
        "Distribution" => distribution(),
        "ETag" => String.t(),
        "Location" => String.t()
      }

  """
  @type create_distribution_with_tags_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_origin_request_policy_request() :: %{
        optional("IfMatch") => String.t(),
        required("OriginRequestPolicyConfig") => origin_request_policy_config()
      }

  """
  @type update_origin_request_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      vpc_origin_list() :: %{
        "IsTruncated" => boolean(),
        "Items" => list(vpc_origin_summary()),
        "Marker" => String.t(),
        "MaxItems" => integer(),
        "NextMarker" => String.t(),
        "Quantity" => integer()
      }

  """
  @type vpc_origin_list() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      origin_access_control_already_exists() :: %{
        "Message" => String.t()
      }

  """
  @type origin_access_control_already_exists() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_distribution_request() :: %{}

  """
  @type get_distribution_request() :: %{}

  @typedoc """

  ## Example:

      streaming_distribution_config_with_tags() :: %{
        "StreamingDistributionConfig" => streaming_distribution_config(),
        "Tags" => tags()
      }

  """
  @type streaming_distribution_config_with_tags() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_field_level_encryption_profile_request() :: %{
        optional("IfMatch") => String.t()
      }

  """
  @type delete_field_level_encryption_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_function_request() :: %{
        required("FunctionCode") => binary(),
        required("FunctionConfig") => function_config(),
        required("IfMatch") => String.t()
      }

  """
  @type update_function_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_origin_access_control_result() :: %{
        "ETag" => String.t(),
        "OriginAccessControl" => origin_access_control()
      }

  """
  @type update_origin_access_control_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      import_source() :: %{
        "SourceARN" => String.t(),
        "SourceType" => list(any())
      }

  """
  @type import_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_connection_group_by_routing_endpoint_result() :: %{
        "ConnectionGroup" => connection_group(),
        "ETag" => String.t()
      }

  """
  @type get_connection_group_by_routing_endpoint_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_distribution_request() :: %{
        optional("IfMatch") => String.t()
      }

  """
  @type delete_distribution_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      field_level_encryption_profile_list() :: %{
        "Items" => list(field_level_encryption_profile_summary()),
        "MaxItems" => integer(),
        "NextMarker" => String.t(),
        "Quantity" => integer()
      }

  """
  @type field_level_encryption_profile_list() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_distributions_by_realtime_log_config_result() :: %{
        "DistributionList" => distribution_list()
      }

  """
  @type list_distributions_by_realtime_log_config_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      no_such_origin() :: %{
        "Message" => String.t()
      }

  """
  @type no_such_origin() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      query_arg_profile_config() :: %{
        "ForwardWhenQueryArgProfileIsUnknown" => boolean(),
        "QueryArgProfiles" => query_arg_profiles()
      }

  """
  @type query_arg_profile_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_field_level_encryption_config_result() :: %{
        "ETag" => String.t(),
        "FieldLevelEncryptionConfig" => field_level_encryption_config()
      }

  """
  @type get_field_level_encryption_config_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_distributions_by_vpc_origin_id_result() :: %{
        "DistributionIdList" => distribution_id_list()
      }

  """
  @type list_distributions_by_vpc_origin_id_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_monitoring_subscription_request() :: %{}

  """
  @type delete_monitoring_subscription_request() :: %{}

  @typedoc """

  ## Example:

      no_such_monitoring_subscription() :: %{
        "Message" => String.t()
      }

  """
  @type no_such_monitoring_subscription() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_function_request() :: %{
        required("FunctionCode") => binary(),
        required("FunctionConfig") => function_config(),
        required("Name") => String.t()
      }

  """
  @type create_function_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      allowed_methods() :: %{
        "CachedMethods" => cached_methods(),
        "Items" => list(list(any())()),
        "Quantity" => integer()
      }

  """
  @type allowed_methods() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_origin_access_controls_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => integer()
      }

  """
  @type list_origin_access_controls_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      public_key_summary() :: %{
        "Comment" => String.t(),
        "CreatedTime" => non_neg_integer(),
        "EncodedKey" => String.t(),
        "Id" => String.t(),
        "Name" => String.t()
      }

  """
  @type public_key_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      illegal_field_level_encryption_config_association_with_cache_behavior() :: %{
        "Message" => String.t()
      }

  """
  @type illegal_field_level_encryption_config_association_with_cache_behavior() :: %{
          String.t() => any()
        }

  @typedoc """

  ## Example:

      cloud_front_origin_access_identity_list() :: %{
        "IsTruncated" => boolean(),
        "Items" => list(cloud_front_origin_access_identity_summary()),
        "Marker" => String.t(),
        "MaxItems" => integer(),
        "NextMarker" => String.t(),
        "Quantity" => integer()
      }

  """
  @type cloud_front_origin_access_identity_list() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_distributions_by_origin_request_policy_id_result() :: %{
        "DistributionIdList" => distribution_id_list()
      }

  """
  @type list_distributions_by_origin_request_policy_id_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_public_keys() :: %{
        "Message" => String.t()
      }

  """
  @type too_many_public_keys() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_cache_policy_config_result() :: %{
        "CachePolicyConfig" => cache_policy_config(),
        "ETag" => String.t()
      }

  """
  @type get_cache_policy_config_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cache_policy() :: %{
        "CachePolicyConfig" => cache_policy_config(),
        "Id" => String.t(),
        "LastModifiedTime" => non_neg_integer()
      }

  """
  @type cache_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      public_key_config() :: %{
        "CallerReference" => String.t(),
        "Comment" => String.t(),
        "EncodedKey" => String.t(),
        "Name" => String.t()
      }

  """
  @type public_key_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_streaming_distribution_result() :: %{
        "ETag" => String.t(),
        "StreamingDistribution" => streaming_distribution()
      }

  """
  @type get_streaming_distribution_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_connection_group_result() :: %{
        "ConnectionGroup" => connection_group(),
        "ETag" => String.t()
      }

  """
  @type create_connection_group_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_managed_certificate_details_request() :: %{}

  """
  @type get_managed_certificate_details_request() :: %{}

  @typedoc """

  ## Example:

      create_distribution_with_tags_request() :: %{
        required("DistributionConfigWithTags") => distribution_config_with_tags()
      }

  """
  @type create_distribution_with_tags_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_streaming_distribution_result() :: %{
        "ETag" => String.t(),
        "StreamingDistribution" => streaming_distribution()
      }

  """
  @type update_streaming_distribution_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_continuous_deployment_policies_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => integer()
      }

  """
  @type list_continuous_deployment_policies_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      response_headers_policy_x_s_s_protection() :: %{
        "ModeBlock" => boolean(),
        "Override" => boolean(),
        "Protection" => boolean(),
        "ReportUri" => String.t()
      }

  """
  @type response_headers_policy_x_s_s_protection() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      custom_error_responses() :: %{
        "Items" => list(custom_error_response()),
        "Quantity" => integer()
      }

  """
  @type custom_error_responses() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      no_such_field_level_encryption_profile() :: %{
        "Message" => String.t()
      }

  """
  @type no_such_field_level_encryption_profile() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_invalidation_result() :: %{
        "Invalidation" => invalidation(),
        "Location" => String.t()
      }

  """
  @type create_invalidation_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      vpc_origin_summary() :: %{
        "Arn" => String.t(),
        "CreatedTime" => non_neg_integer(),
        "Id" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t(),
        "OriginEndpointArn" => String.t(),
        "Status" => String.t()
      }

  """
  @type vpc_origin_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_key_group_config_result() :: %{
        "ETag" => String.t(),
        "KeyGroupConfig" => key_group_config()
      }

  """
  @type get_key_group_config_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_function_association() :: %{
        "Message" => String.t()
      }

  """
  @type invalid_function_association() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cache_behavior() :: %{
        "AllowedMethods" => allowed_methods(),
        "CachePolicyId" => String.t(),
        "Compress" => boolean(),
        "DefaultTTL" => float(),
        "FieldLevelEncryptionId" => String.t(),
        "ForwardedValues" => forwarded_values(),
        "FunctionAssociations" => function_associations(),
        "GrpcConfig" => grpc_config(),
        "LambdaFunctionAssociations" => lambda_function_associations(),
        "MaxTTL" => float(),
        "MinTTL" => float(),
        "OriginRequestPolicyId" => String.t(),
        "PathPattern" => String.t(),
        "RealtimeLogConfigArn" => String.t(),
        "ResponseHeadersPolicyId" => String.t(),
        "SmoothStreaming" => boolean(),
        "TargetOriginId" => String.t(),
        "TrustedKeyGroups" => trusted_key_groups(),
        "TrustedSigners" => trusted_signers(),
        "ViewerProtocolPolicy" => list(any())
      }

  """
  @type cache_behavior() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_invalidation_for_distribution_tenant_request() :: %{
        required("InvalidationBatch") => invalidation_batch()
      }

  """
  @type create_invalidation_for_distribution_tenant_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_field_level_encryption_config_result() :: %{
        "ETag" => String.t(),
        "FieldLevelEncryption" => field_level_encryption()
      }

  """
  @type update_field_level_encryption_config_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      parameters_in_cache_key_and_forwarded_to_origin() :: %{
        "CookiesConfig" => cache_policy_cookies_config(),
        "EnableAcceptEncodingBrotli" => boolean(),
        "EnableAcceptEncodingGzip" => boolean(),
        "HeadersConfig" => cache_policy_headers_config(),
        "QueryStringsConfig" => cache_policy_query_strings_config()
      }

  """
  @type parameters_in_cache_key_and_forwarded_to_origin() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_realtime_log_configs_result() :: %{
        "RealtimeLogConfigs" => realtime_log_configs()
      }

  """
  @type list_realtime_log_configs_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cache_policy_headers_config() :: %{
        "HeaderBehavior" => list(any()),
        "Headers" => headers()
      }

  """
  @type cache_policy_headers_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_origin_request_policy_request() :: %{
        required("OriginRequestPolicyConfig") => origin_request_policy_config()
      }

  """
  @type create_origin_request_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      public_key_in_use() :: %{
        "Message" => String.t()
      }

  """
  @type public_key_in_use() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_distribution_tenant_web_acl_result() :: %{
        "ETag" => String.t(),
        "Id" => String.t(),
        "WebACLArn" => String.t()
      }

  """
  @type associate_distribution_tenant_web_acl_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      function_in_use() :: %{
        "Message" => String.t()
      }

  """
  @type function_in_use() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_headers_in_origin_request_policy() :: %{
        "Message" => String.t()
      }

  """
  @type too_many_headers_in_origin_request_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_anycast_ip_lists_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => integer()
      }

  """
  @type list_anycast_ip_lists_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      string_schema_config() :: %{
        "Comment" => String.t(),
        "DefaultValue" => String.t(),
        "Required" => boolean()
      }

  """
  @type string_schema_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      viewer_certificate() :: %{
        "ACMCertificateArn" => String.t(),
        "Certificate" => String.t(),
        "CertificateSource" => list(any()),
        "CloudFrontDefaultCertificate" => boolean(),
        "IAMCertificateId" => String.t(),
        "MinimumProtocolVersion" => list(any()),
        "SSLSupportMethod" => list(any())
      }

  """
  @type viewer_certificate() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cache_policy_query_strings_config() :: %{
        "QueryStringBehavior" => list(any()),
        "QueryStrings" => query_string_names()
      }

  """
  @type cache_policy_query_strings_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_distributions_by_response_headers_policy_id_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => integer()
      }

  """
  @type list_distributions_by_response_headers_policy_id_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      origin_access_control_config() :: %{
        "Description" => String.t(),
        "Name" => String.t(),
        "OriginAccessControlOriginType" => list(any()),
        "SigningBehavior" => list(any()),
        "SigningProtocol" => list(any())
      }

  """
  @type origin_access_control_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      no_such_realtime_log_config() :: %{
        "Message" => String.t()
      }

  """
  @type no_such_realtime_log_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_public_key_result() :: %{
        "ETag" => String.t(),
        "PublicKey" => public_key()
      }

  """
  @type get_public_key_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      publish_function_request() :: %{
        required("IfMatch") => String.t()
      }

  """
  @type publish_function_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      trusted_signers() :: %{
        "Enabled" => boolean(),
        "Items" => list(String.t()),
        "Quantity" => integer()
      }

  """
  @type trusted_signers() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      streaming_distribution_list() :: %{
        "IsTruncated" => boolean(),
        "Items" => list(streaming_distribution_summary()),
        "Marker" => String.t(),
        "MaxItems" => integer(),
        "NextMarker" => String.t(),
        "Quantity" => integer()
      }

  """
  @type streaming_distribution_list() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_function_request() :: %{
        optional("Stage") => list(any())
      }

  """
  @type describe_function_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      staging_distribution_dns_names() :: %{
        "Items" => list(String.t()),
        "Quantity" => integer()
      }

  """
  @type staging_distribution_dns_names() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      response_headers_policy_summary() :: %{
        "ResponseHeadersPolicy" => response_headers_policy(),
        "Type" => list(any())
      }

  """
  @type response_headers_policy_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_anycast_ip_lists_result() :: %{
        "AnycastIpLists" => anycast_ip_list_collection()
      }

  """
  @type list_anycast_ip_lists_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_origin_request_policy_result() :: %{
        "ETag" => String.t(),
        "OriginRequestPolicy" => origin_request_policy()
      }

  """
  @type get_origin_request_policy_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      no_such_public_key() :: %{
        "Message" => String.t()
      }

  """
  @type no_such_public_key() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      entity_limit_exceeded() :: %{
        "Message" => String.t()
      }

  """
  @type entity_limit_exceeded() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_public_key_request() :: %{
        required("PublicKeyConfig") => public_key_config()
      }

  """
  @type create_public_key_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_distributions() :: %{
        "Message" => String.t()
      }

  """
  @type too_many_distributions() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      function_metadata() :: %{
        "CreatedTime" => non_neg_integer(),
        "FunctionARN" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "Stage" => list(any())
      }

  """
  @type function_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_origin_access_control_config_result() :: %{
        "ETag" => String.t(),
        "OriginAccessControlConfig" => origin_access_control_config()
      }

  """
  @type get_origin_access_control_config_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      restrictions() :: %{
        "GeoRestriction" => geo_restriction()
      }

  """
  @type restrictions() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      key_pair_ids() :: %{
        "Items" => list(String.t()),
        "Quantity" => integer()
      }

  """
  @type key_pair_ids() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_cache_policy_request() :: %{}

  """
  @type get_cache_policy_request() :: %{}

  @typedoc """

  ## Example:

      invalid_response_code() :: %{
        "Message" => String.t()
      }

  """
  @type invalid_response_code() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_vpc_origins_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => integer()
      }

  """
  @type list_vpc_origins_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalidation() :: %{
        "CreateTime" => non_neg_integer(),
        "Id" => String.t(),
        "InvalidationBatch" => invalidation_batch(),
        "Status" => String.t()
      }

  """
  @type invalidation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cookie_preference() :: %{
        "Forward" => list(any()),
        "WhitelistedNames" => cookie_names()
      }

  """
  @type cookie_preference() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_key_group_request() :: %{
        optional("IfMatch") => String.t(),
        required("KeyGroupConfig") => key_group_config()
      }

  """
  @type update_key_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      distribution_tenant_summary() :: %{
        "Arn" => String.t(),
        "ConnectionGroupId" => String.t(),
        "CreatedTime" => non_neg_integer(),
        "Customizations" => customizations(),
        "DistributionId" => String.t(),
        "Domains" => list(domain_result()),
        "ETag" => String.t(),
        "Enabled" => boolean(),
        "Id" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t(),
        "Status" => String.t()
      }

  """
  @type distribution_tenant_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      streaming_distribution_config() :: %{
        "Aliases" => aliases(),
        "CallerReference" => String.t(),
        "Comment" => String.t(),
        "Enabled" => boolean(),
        "Logging" => streaming_logging_config(),
        "PriceClass" => list(any()),
        "S3Origin" => s3_origin(),
        "TrustedSigners" => trusted_signers()
      }

  """
  @type streaming_distribution_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_field_level_encryption_query_arg_profiles() :: %{
        "Message" => String.t()
      }

  """
  @type too_many_field_level_encryption_query_arg_profiles() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      active_trusted_key_groups() :: %{
        "Enabled" => boolean(),
        "Items" => list(k_g_key_pair_ids()),
        "Quantity" => integer()
      }

  """
  @type active_trusted_key_groups() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      realtime_log_config() :: %{
        "ARN" => String.t(),
        "EndPoints" => list(end_point()),
        "Fields" => list(String.t()),
        "Name" => String.t(),
        "SamplingRate" => float()
      }

  """
  @type realtime_log_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_vpc_origin_request() :: %{}

  """
  @type get_vpc_origin_request() :: %{}

  @typedoc """

  ## Example:

      get_origin_access_control_config_request() :: %{}

  """
  @type get_origin_access_control_config_request() :: %{}

  @typedoc """

  ## Example:

      distribution_id_list() :: %{
        "IsTruncated" => boolean(),
        "Items" => list(String.t()),
        "Marker" => String.t(),
        "MaxItems" => integer(),
        "NextMarker" => String.t(),
        "Quantity" => integer()
      }

  """
  @type distribution_id_list() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_location_code() :: %{
        "Message" => String.t()
      }

  """
  @type invalid_location_code() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      staging_distribution_in_use() :: %{
        "Message" => String.t()
      }

  """
  @type staging_distribution_in_use() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      connection_group() :: %{
        "AnycastIpListId" => String.t(),
        "Arn" => String.t(),
        "CreatedTime" => non_neg_integer(),
        "Enabled" => boolean(),
        "Id" => String.t(),
        "Ipv6Enabled" => boolean(),
        "IsDefault" => boolean(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t(),
        "RoutingEndpoint" => String.t(),
        "Status" => String.t(),
        "Tags" => tags()
      }

  """
  @type connection_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      origin_request_policy_in_use() :: %{
        "Message" => String.t()
      }

  """
  @type origin_request_policy_in_use() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      key_group_summary() :: %{
        "KeyGroup" => key_group()
      }

  """
  @type key_group_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_monitoring_subscription_request() :: %{
        required("MonitoringSubscription") => monitoring_subscription()
      }

  """
  @type create_monitoring_subscription_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_distributions_associated_to_field_level_encryption_config() :: %{
        "Message" => String.t()
      }

  """
  @type too_many_distributions_associated_to_field_level_encryption_config() :: %{
          String.t() => any()
        }

  @typedoc """

  ## Example:

      content_type_profile_config() :: %{
        "ContentTypeProfiles" => content_type_profiles(),
        "ForwardWhenContentTypeIsUnknown" => boolean()
      }

  """
  @type content_type_profile_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      response_headers_policy_access_control_allow_headers() :: %{
        "Items" => list(String.t()),
        "Quantity" => integer()
      }

  """
  @type response_headers_policy_access_control_allow_headers() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      custom_origin_config() :: %{
        "HTTPPort" => integer(),
        "HTTPSPort" => integer(),
        "OriginKeepaliveTimeout" => integer(),
        "OriginProtocolPolicy" => list(any()),
        "OriginReadTimeout" => integer(),
        "OriginSslProtocols" => origin_ssl_protocols()
      }

  """
  @type custom_origin_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_streaming_distribution_with_tags_result() :: %{
        "ETag" => String.t(),
        "Location" => String.t(),
        "StreamingDistribution" => streaming_distribution()
      }

  """
  @type create_streaming_distribution_with_tags_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_field_level_encryption_profile_result() :: %{
        "ETag" => String.t(),
        "FieldLevelEncryptionProfile" => field_level_encryption_profile()
      }

  """
  @type get_field_level_encryption_profile_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_streaming_distribution_request() :: %{}

  """
  @type get_streaming_distribution_request() :: %{}

  @typedoc """

  ## Example:

      get_realtime_log_config_result() :: %{
        "RealtimeLogConfig" => realtime_log_config()
      }

  """
  @type get_realtime_log_config_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_distribution_with_staging_config_result() :: %{
        "Distribution" => distribution(),
        "ETag" => String.t()
      }

  """
  @type update_distribution_with_staging_config_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_field_level_encryption_profile_result() :: %{
        "ETag" => String.t(),
        "FieldLevelEncryptionProfile" => field_level_encryption_profile()
      }

  """
  @type update_field_level_encryption_profile_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_distributions_associated_to_origin_access_control() :: %{
        "Message" => String.t()
      }

  """
  @type too_many_distributions_associated_to_origin_access_control() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_function_result() :: %{
        "ETag" => String.t(),
        "FunctionSummary" => function_summary()
      }

  """
  @type update_function_result() :: %{String.t() => any()}

  @type associate_alias_errors() ::
          no_such_distribution()
          | too_many_distribution_cnames()
          | invalid_argument()
          | access_denied()
          | illegal_update()

  @type associate_distribution_tenant_web_acl_errors() ::
          precondition_failed()
          | invalid_argument()
          | access_denied()
          | entity_not_found()
          | invalid_if_match_version()

  @type associate_distribution_web_acl_errors() ::
          precondition_failed()
          | invalid_argument()
          | access_denied()
          | entity_not_found()
          | invalid_if_match_version()

  @type copy_distribution_errors() ::
          too_many_distributions_associated_to_origin_access_control()
          | too_many_distributions_associated_to_field_level_encryption_config()
          | invalid_location_code()
          | invalid_response_code()
          | too_many_distributions()
          | no_such_realtime_log_config()
          | invalid_function_association()
          | illegal_field_level_encryption_config_association_with_cache_behavior()
          | no_such_origin()
          | realtime_log_config_owner_mismatch()
          | no_such_response_headers_policy()
          | invalid_relative_path()
          | invalid_viewer_certificate()
          | too_many_query_string_parameters()
          | cname_already_exists()
          | invalid_default_root_object()
          | too_many_cache_behaviors()
          | too_many_distributions_associated_to_response_headers_policy()
          | too_many_lambda_function_associations()
          | too_many_distributions_with_lambda_associations()
          | too_many_distributions_with_single_function_arn()
          | too_many_origins()
          | distribution_already_exists()
          | too_many_origin_custom_headers()
          | invalid_minimum_protocol_version()
          | too_many_headers_in_forwarded_values()
          | too_many_key_groups_associated_to_distribution()
          | invalid_origin_read_timeout()
          | trusted_signer_does_not_exist()
          | no_such_cache_policy()
          | invalid_forward_cookies()
          | invalid_origin_keepalive_timeout()
          | invalid_lambda_function_association()
          | invalid_headers_for_s3_origin()
          | inconsistent_quantities()
          | missing_body()
          | too_many_distributions_with_function_associations()
          | invalid_geo_restriction_parameter()
          | invalid_error_code()
          | too_many_trusted_signers()
          | no_such_distribution()
          | no_such_origin_request_policy()
          | too_many_distribution_cnames()
          | precondition_failed()
          | invalid_required_protocol()
          | too_many_certificates()
          | invalid_origin()
          | invalid_origin_access_control()
          | no_such_field_level_encryption_config()
          | invalid_web_acl_id()
          | invalid_argument()
          | too_many_cookie_names_in_white_list()
          | access_denied()
          | invalid_t_t_l_order()
          | invalid_protocol_settings()
          | too_many_distributions_associated_to_key_group()
          | too_many_distributions_associated_to_origin_request_policy()
          | invalid_query_string_parameters()
          | trusted_key_group_does_not_exist()
          | too_many_distributions_associated_to_cache_policy()
          | invalid_if_match_version()
          | invalid_origin_access_identity()
          | too_many_function_associations()
          | too_many_origin_groups_per_distribution()

  @type create_anycast_ip_list_errors() ::
          entity_limit_exceeded()
          | unsupported_operation()
          | entity_already_exists()
          | invalid_argument()
          | access_denied()
          | invalid_tagging()

  @type create_cache_policy_errors() ::
          cache_policy_already_exists()
          | inconsistent_quantities()
          | too_many_query_strings_in_cache_policy()
          | too_many_cache_policies()
          | too_many_headers_in_cache_policy()
          | invalid_argument()
          | access_denied()
          | too_many_cookies_in_cache_policy()

  @type create_cloud_front_origin_access_identity_errors() ::
          too_many_cloud_front_origin_access_identities()
          | inconsistent_quantities()
          | missing_body()
          | invalid_argument()
          | cloud_front_origin_access_identity_already_exists()

  @type create_connection_group_errors() ::
          entity_limit_exceeded()
          | entity_already_exists()
          | invalid_argument()
          | access_denied()
          | entity_not_found()
          | invalid_tagging()

  @type create_continuous_deployment_policy_errors() ::
          staging_distribution_in_use()
          | inconsistent_quantities()
          | invalid_argument()
          | access_denied()
          | continuous_deployment_policy_already_exists()
          | too_many_continuous_deployment_policies()

  @type create_distribution_errors() ::
          too_many_distributions_associated_to_origin_access_control()
          | too_many_distributions_associated_to_field_level_encryption_config()
          | invalid_location_code()
          | invalid_response_code()
          | too_many_distributions()
          | entity_limit_exceeded()
          | no_such_realtime_log_config()
          | invalid_function_association()
          | illegal_field_level_encryption_config_association_with_cache_behavior()
          | no_such_origin()
          | realtime_log_config_owner_mismatch()
          | no_such_response_headers_policy()
          | invalid_relative_path()
          | invalid_viewer_certificate()
          | too_many_query_string_parameters()
          | cname_already_exists()
          | invalid_default_root_object()
          | too_many_cache_behaviors()
          | too_many_distributions_associated_to_response_headers_policy()
          | too_many_lambda_function_associations()
          | too_many_distributions_with_lambda_associations()
          | too_many_distributions_with_single_function_arn()
          | too_many_origins()
          | distribution_already_exists()
          | too_many_origin_custom_headers()
          | invalid_minimum_protocol_version()
          | too_many_headers_in_forwarded_values()
          | too_many_key_groups_associated_to_distribution()
          | invalid_domain_name_for_origin_access_control()
          | invalid_origin_read_timeout()
          | trusted_signer_does_not_exist()
          | no_such_cache_policy()
          | invalid_forward_cookies()
          | invalid_origin_keepalive_timeout()
          | invalid_lambda_function_association()
          | invalid_headers_for_s3_origin()
          | inconsistent_quantities()
          | missing_body()
          | too_many_distributions_with_function_associations()
          | continuous_deployment_policy_in_use()
          | invalid_geo_restriction_parameter()
          | invalid_error_code()
          | too_many_trusted_signers()
          | no_such_origin_request_policy()
          | too_many_distribution_cnames()
          | invalid_required_protocol()
          | too_many_certificates()
          | invalid_origin()
          | invalid_origin_access_control()
          | no_such_field_level_encryption_config()
          | invalid_web_acl_id()
          | invalid_argument()
          | too_many_cookie_names_in_white_list()
          | access_denied()
          | invalid_t_t_l_order()
          | entity_not_found()
          | invalid_protocol_settings()
          | too_many_distributions_associated_to_key_group()
          | too_many_distributions_associated_to_origin_request_policy()
          | invalid_query_string_parameters()
          | trusted_key_group_does_not_exist()
          | too_many_distributions_associated_to_cache_policy()
          | illegal_origin_access_configuration()
          | no_such_continuous_deployment_policy()
          | invalid_origin_access_identity()
          | too_many_function_associations()
          | too_many_origin_groups_per_distribution()

  @type create_distribution_tenant_errors() ::
          entity_limit_exceeded()
          | cname_already_exists()
          | entity_already_exists()
          | invalid_argument()
          | access_denied()
          | entity_not_found()
          | invalid_tagging()
          | invalid_association()

  @type create_distribution_with_tags_errors() ::
          too_many_distributions_associated_to_origin_access_control()
          | too_many_distributions_associated_to_field_level_encryption_config()
          | invalid_location_code()
          | invalid_response_code()
          | too_many_distributions()
          | no_such_realtime_log_config()
          | invalid_function_association()
          | illegal_field_level_encryption_config_association_with_cache_behavior()
          | no_such_origin()
          | realtime_log_config_owner_mismatch()
          | no_such_response_headers_policy()
          | invalid_relative_path()
          | invalid_viewer_certificate()
          | too_many_query_string_parameters()
          | cname_already_exists()
          | invalid_default_root_object()
          | too_many_cache_behaviors()
          | too_many_distributions_associated_to_response_headers_policy()
          | too_many_lambda_function_associations()
          | too_many_distributions_with_lambda_associations()
          | too_many_distributions_with_single_function_arn()
          | too_many_origins()
          | distribution_already_exists()
          | too_many_origin_custom_headers()
          | invalid_minimum_protocol_version()
          | too_many_headers_in_forwarded_values()
          | too_many_key_groups_associated_to_distribution()
          | invalid_domain_name_for_origin_access_control()
          | invalid_origin_read_timeout()
          | trusted_signer_does_not_exist()
          | no_such_cache_policy()
          | invalid_forward_cookies()
          | invalid_origin_keepalive_timeout()
          | invalid_lambda_function_association()
          | invalid_headers_for_s3_origin()
          | inconsistent_quantities()
          | missing_body()
          | too_many_distributions_with_function_associations()
          | continuous_deployment_policy_in_use()
          | invalid_geo_restriction_parameter()
          | invalid_error_code()
          | too_many_trusted_signers()
          | no_such_origin_request_policy()
          | too_many_distribution_cnames()
          | invalid_required_protocol()
          | too_many_certificates()
          | invalid_origin()
          | invalid_origin_access_control()
          | no_such_field_level_encryption_config()
          | invalid_web_acl_id()
          | invalid_argument()
          | too_many_cookie_names_in_white_list()
          | access_denied()
          | invalid_t_t_l_order()
          | entity_not_found()
          | invalid_protocol_settings()
          | invalid_tagging()
          | too_many_distributions_associated_to_key_group()
          | too_many_distributions_associated_to_origin_request_policy()
          | invalid_query_string_parameters()
          | trusted_key_group_does_not_exist()
          | too_many_distributions_associated_to_cache_policy()
          | illegal_origin_access_configuration()
          | no_such_continuous_deployment_policy()
          | invalid_origin_access_identity()
          | too_many_function_associations()
          | too_many_origin_groups_per_distribution()

  @type create_field_level_encryption_config_errors() ::
          too_many_field_level_encryption_query_arg_profiles()
          | no_such_field_level_encryption_profile()
          | too_many_field_level_encryption_configs()
          | inconsistent_quantities()
          | field_level_encryption_config_already_exists()
          | invalid_argument()
          | too_many_field_level_encryption_content_type_profiles()
          | query_arg_profile_empty()

  @type create_field_level_encryption_profile_errors() ::
          no_such_public_key()
          | too_many_field_level_encryption_field_patterns()
          | field_level_encryption_profile_size_exceeded()
          | too_many_field_level_encryption_encryption_entities()
          | too_many_field_level_encryption_profiles()
          | inconsistent_quantities()
          | invalid_argument()
          | field_level_encryption_profile_already_exists()

  @type create_function_errors() ::
          function_already_exists()
          | unsupported_operation()
          | function_size_limit_exceeded()
          | invalid_argument()
          | too_many_functions()

  @type create_invalidation_errors() ::
          inconsistent_quantities()
          | missing_body()
          | no_such_distribution()
          | batch_too_large()
          | invalid_argument()
          | access_denied()
          | too_many_invalidations_in_progress()

  @type create_invalidation_for_distribution_tenant_errors() ::
          inconsistent_quantities()
          | missing_body()
          | batch_too_large()
          | invalid_argument()
          | access_denied()
          | entity_not_found()
          | too_many_invalidations_in_progress()

  @type create_key_group_errors() ::
          too_many_key_groups()
          | too_many_public_keys_in_key_group()
          | key_group_already_exists()
          | invalid_argument()

  @type create_key_value_store_errors() ::
          entity_limit_exceeded()
          | unsupported_operation()
          | entity_size_limit_exceeded()
          | entity_already_exists()
          | invalid_argument()
          | access_denied()

  @type create_monitoring_subscription_errors() ::
          monitoring_subscription_already_exists()
          | no_such_distribution()
          | unsupported_operation()
          | access_denied()

  @type create_origin_access_control_errors() ::
          origin_access_control_already_exists()
          | invalid_argument()
          | too_many_origin_access_controls()

  @type create_origin_request_policy_errors() ::
          too_many_headers_in_origin_request_policy()
          | too_many_origin_request_policies()
          | inconsistent_quantities()
          | origin_request_policy_already_exists()
          | too_many_query_strings_in_origin_request_policy()
          | too_many_cookies_in_origin_request_policy()
          | invalid_argument()
          | access_denied()

  @type create_public_key_errors() ::
          too_many_public_keys() | invalid_argument() | public_key_already_exists()

  @type create_realtime_log_config_errors() ::
          too_many_realtime_log_configs()
          | realtime_log_config_already_exists()
          | invalid_argument()
          | access_denied()

  @type create_response_headers_policy_errors() ::
          too_many_remove_headers_in_response_headers_policy()
          | inconsistent_quantities()
          | response_headers_policy_already_exists()
          | invalid_argument()
          | access_denied()
          | too_long_c_s_p_in_response_headers_policy()
          | too_many_response_headers_policies()
          | too_many_custom_headers_in_response_headers_policy()

  @type create_streaming_distribution_errors() ::
          cname_already_exists()
          | streaming_distribution_already_exists()
          | too_many_streaming_distribution_cnames()
          | too_many_streaming_distributions()
          | trusted_signer_does_not_exist()
          | inconsistent_quantities()
          | missing_body()
          | too_many_trusted_signers()
          | invalid_origin()
          | invalid_origin_access_control()
          | invalid_argument()
          | access_denied()
          | invalid_origin_access_identity()

  @type create_streaming_distribution_with_tags_errors() ::
          cname_already_exists()
          | streaming_distribution_already_exists()
          | too_many_streaming_distribution_cnames()
          | too_many_streaming_distributions()
          | trusted_signer_does_not_exist()
          | inconsistent_quantities()
          | missing_body()
          | too_many_trusted_signers()
          | invalid_origin()
          | invalid_origin_access_control()
          | invalid_argument()
          | access_denied()
          | invalid_tagging()
          | invalid_origin_access_identity()

  @type create_vpc_origin_errors() ::
          entity_limit_exceeded()
          | inconsistent_quantities()
          | unsupported_operation()
          | entity_already_exists()
          | invalid_argument()
          | access_denied()
          | invalid_tagging()

  @type delete_anycast_ip_list_errors() ::
          illegal_delete()
          | cannot_delete_entity_while_in_use()
          | precondition_failed()
          | unsupported_operation()
          | invalid_argument()
          | access_denied()
          | entity_not_found()
          | invalid_if_match_version()

  @type delete_cache_policy_errors() ::
          illegal_delete()
          | cache_policy_in_use()
          | no_such_cache_policy()
          | precondition_failed()
          | access_denied()
          | invalid_if_match_version()

  @type delete_cloud_front_origin_access_identity_errors() ::
          precondition_failed()
          | no_such_cloud_front_origin_access_identity()
          | access_denied()
          | cloud_front_origin_access_identity_in_use()
          | invalid_if_match_version()

  @type delete_connection_group_errors() ::
          resource_not_disabled()
          | cannot_delete_entity_while_in_use()
          | precondition_failed()
          | access_denied()
          | entity_not_found()
          | invalid_if_match_version()

  @type delete_continuous_deployment_policy_errors() ::
          continuous_deployment_policy_in_use()
          | precondition_failed()
          | invalid_argument()
          | access_denied()
          | invalid_if_match_version()
          | no_such_continuous_deployment_policy()

  @type delete_distribution_errors() ::
          no_such_distribution()
          | precondition_failed()
          | access_denied()
          | resource_in_use()
          | invalid_if_match_version()
          | distribution_not_disabled()

  @type delete_distribution_tenant_errors() ::
          resource_not_disabled()
          | precondition_failed()
          | access_denied()
          | entity_not_found()
          | invalid_if_match_version()

  @type delete_field_level_encryption_config_errors() ::
          precondition_failed()
          | no_such_field_level_encryption_config()
          | access_denied()
          | field_level_encryption_config_in_use()
          | invalid_if_match_version()

  @type delete_field_level_encryption_profile_errors() ::
          no_such_field_level_encryption_profile()
          | precondition_failed()
          | field_level_encryption_profile_in_use()
          | access_denied()
          | invalid_if_match_version()

  @type delete_function_errors() ::
          function_in_use()
          | no_such_function_exists()
          | precondition_failed()
          | unsupported_operation()
          | invalid_if_match_version()

  @type delete_key_group_errors() ::
          no_such_resource()
          | precondition_failed()
          | resource_in_use()
          | invalid_if_match_version()

  @type delete_key_value_store_errors() ::
          cannot_delete_entity_while_in_use()
          | precondition_failed()
          | unsupported_operation()
          | access_denied()
          | entity_not_found()
          | invalid_if_match_version()

  @type delete_monitoring_subscription_errors() ::
          no_such_monitoring_subscription()
          | no_such_distribution()
          | unsupported_operation()
          | access_denied()

  @type delete_origin_access_control_errors() ::
          no_such_origin_access_control()
          | precondition_failed()
          | origin_access_control_in_use()
          | access_denied()
          | invalid_if_match_version()

  @type delete_origin_request_policy_errors() ::
          origin_request_policy_in_use()
          | illegal_delete()
          | no_such_origin_request_policy()
          | precondition_failed()
          | access_denied()
          | invalid_if_match_version()

  @type delete_public_key_errors() ::
          no_such_public_key()
          | public_key_in_use()
          | precondition_failed()
          | access_denied()
          | invalid_if_match_version()

  @type delete_realtime_log_config_errors() ::
          no_such_realtime_log_config()
          | realtime_log_config_in_use()
          | invalid_argument()
          | access_denied()

  @type delete_response_headers_policy_errors() ::
          no_such_response_headers_policy()
          | illegal_delete()
          | precondition_failed()
          | access_denied()
          | invalid_if_match_version()
          | response_headers_policy_in_use()

  @type delete_streaming_distribution_errors() ::
          no_such_streaming_distribution()
          | precondition_failed()
          | access_denied()
          | invalid_if_match_version()
          | streaming_distribution_not_disabled()

  @type delete_vpc_origin_errors() ::
          illegal_delete()
          | cannot_delete_entity_while_in_use()
          | precondition_failed()
          | unsupported_operation()
          | invalid_argument()
          | access_denied()
          | entity_not_found()
          | invalid_if_match_version()

  @type describe_function_errors() :: no_such_function_exists() | unsupported_operation()

  @type describe_key_value_store_errors() ::
          unsupported_operation() | invalid_argument() | access_denied() | entity_not_found()

  @type disassociate_distribution_tenant_web_acl_errors() ::
          precondition_failed()
          | invalid_argument()
          | access_denied()
          | entity_not_found()
          | invalid_if_match_version()

  @type disassociate_distribution_web_acl_errors() ::
          precondition_failed()
          | invalid_argument()
          | access_denied()
          | entity_not_found()
          | invalid_if_match_version()

  @type get_anycast_ip_list_errors() ::
          unsupported_operation() | invalid_argument() | access_denied() | entity_not_found()

  @type get_cache_policy_errors() :: no_such_cache_policy() | access_denied()

  @type get_cache_policy_config_errors() :: no_such_cache_policy() | access_denied()

  @type get_cloud_front_origin_access_identity_errors() ::
          no_such_cloud_front_origin_access_identity() | access_denied()

  @type get_cloud_front_origin_access_identity_config_errors() ::
          no_such_cloud_front_origin_access_identity() | access_denied()

  @type get_connection_group_errors() :: access_denied() | entity_not_found()

  @type get_connection_group_by_routing_endpoint_errors() :: access_denied() | entity_not_found()

  @type get_continuous_deployment_policy_errors() ::
          access_denied() | no_such_continuous_deployment_policy()

  @type get_continuous_deployment_policy_config_errors() ::
          access_denied() | no_such_continuous_deployment_policy()

  @type get_distribution_errors() :: no_such_distribution() | access_denied()

  @type get_distribution_config_errors() :: no_such_distribution() | access_denied()

  @type get_distribution_tenant_errors() :: access_denied() | entity_not_found()

  @type get_distribution_tenant_by_domain_errors() :: access_denied() | entity_not_found()

  @type get_field_level_encryption_errors() ::
          no_such_field_level_encryption_config() | access_denied()

  @type get_field_level_encryption_config_errors() ::
          no_such_field_level_encryption_config() | access_denied()

  @type get_field_level_encryption_profile_errors() ::
          no_such_field_level_encryption_profile() | access_denied()

  @type get_field_level_encryption_profile_config_errors() ::
          no_such_field_level_encryption_profile() | access_denied()

  @type get_function_errors() :: no_such_function_exists() | unsupported_operation()

  @type get_invalidation_errors() ::
          no_such_invalidation() | no_such_distribution() | access_denied()

  @type get_invalidation_for_distribution_tenant_errors() ::
          no_such_invalidation() | access_denied() | entity_not_found()

  @type get_key_group_errors() :: no_such_resource()

  @type get_key_group_config_errors() :: no_such_resource()

  @type get_managed_certificate_details_errors() :: access_denied() | entity_not_found()

  @type get_monitoring_subscription_errors() ::
          no_such_monitoring_subscription()
          | no_such_distribution()
          | unsupported_operation()
          | access_denied()

  @type get_origin_access_control_errors() :: no_such_origin_access_control() | access_denied()

  @type get_origin_access_control_config_errors() ::
          no_such_origin_access_control() | access_denied()

  @type get_origin_request_policy_errors() :: no_such_origin_request_policy() | access_denied()

  @type get_origin_request_policy_config_errors() ::
          no_such_origin_request_policy() | access_denied()

  @type get_public_key_errors() :: no_such_public_key() | access_denied()

  @type get_public_key_config_errors() :: no_such_public_key() | access_denied()

  @type get_realtime_log_config_errors() ::
          no_such_realtime_log_config() | invalid_argument() | access_denied()

  @type get_response_headers_policy_errors() ::
          no_such_response_headers_policy() | access_denied()

  @type get_response_headers_policy_config_errors() ::
          no_such_response_headers_policy() | access_denied()

  @type get_streaming_distribution_errors() :: no_such_streaming_distribution() | access_denied()

  @type get_streaming_distribution_config_errors() ::
          no_such_streaming_distribution() | access_denied()

  @type get_vpc_origin_errors() ::
          unsupported_operation() | invalid_argument() | access_denied() | entity_not_found()

  @type list_anycast_ip_lists_errors() ::
          unsupported_operation() | invalid_argument() | access_denied() | entity_not_found()

  @type list_cache_policies_errors() ::
          no_such_cache_policy() | invalid_argument() | access_denied()

  @type list_cloud_front_origin_access_identities_errors() :: invalid_argument()

  @type list_conflicting_aliases_errors() :: no_such_distribution() | invalid_argument()

  @type list_connection_groups_errors() ::
          invalid_argument() | access_denied() | entity_not_found()

  @type list_continuous_deployment_policies_errors() ::
          invalid_argument() | access_denied() | no_such_continuous_deployment_policy()

  @type list_distribution_tenants_errors() ::
          invalid_argument() | access_denied() | entity_not_found()

  @type list_distribution_tenants_by_customization_errors() ::
          invalid_argument() | access_denied() | entity_not_found()

  @type list_distributions_errors() :: invalid_argument()

  @type list_distributions_by_anycast_ip_list_id_errors() ::
          unsupported_operation() | invalid_argument() | access_denied() | entity_not_found()

  @type list_distributions_by_cache_policy_id_errors() ::
          no_such_cache_policy() | invalid_argument() | access_denied()

  @type list_distributions_by_connection_mode_errors() :: invalid_argument() | access_denied()

  @type list_distributions_by_key_group_errors() :: no_such_resource() | invalid_argument()

  @type list_distributions_by_origin_request_policy_id_errors() ::
          no_such_origin_request_policy() | invalid_argument() | access_denied()

  @type list_distributions_by_realtime_log_config_errors() :: invalid_argument()

  @type list_distributions_by_response_headers_policy_id_errors() ::
          no_such_response_headers_policy() | invalid_argument() | access_denied()

  @type list_distributions_by_vpc_origin_id_errors() ::
          unsupported_operation() | invalid_argument() | access_denied() | entity_not_found()

  @type list_distributions_by_web_acl_id_errors() :: invalid_web_acl_id() | invalid_argument()

  @type list_domain_conflicts_errors() ::
          invalid_argument() | access_denied() | entity_not_found()

  @type list_field_level_encryption_configs_errors() :: invalid_argument()

  @type list_field_level_encryption_profiles_errors() :: invalid_argument()

  @type list_functions_errors() :: unsupported_operation() | invalid_argument()

  @type list_invalidations_errors() ::
          no_such_distribution() | invalid_argument() | access_denied()

  @type list_invalidations_for_distribution_tenant_errors() ::
          invalid_argument() | access_denied() | entity_not_found()

  @type list_key_groups_errors() :: invalid_argument()

  @type list_key_value_stores_errors() ::
          unsupported_operation() | invalid_argument() | access_denied()

  @type list_origin_access_controls_errors() :: invalid_argument()

  @type list_origin_request_policies_errors() ::
          no_such_origin_request_policy() | invalid_argument() | access_denied()

  @type list_public_keys_errors() :: invalid_argument()

  @type list_realtime_log_configs_errors() ::
          no_such_realtime_log_config() | invalid_argument() | access_denied()

  @type list_response_headers_policies_errors() ::
          no_such_response_headers_policy() | invalid_argument() | access_denied()

  @type list_streaming_distributions_errors() :: invalid_argument()

  @type list_tags_for_resource_errors() ::
          no_such_resource() | invalid_argument() | access_denied() | invalid_tagging()

  @type list_vpc_origins_errors() ::
          unsupported_operation() | invalid_argument() | access_denied() | entity_not_found()

  @type publish_function_errors() ::
          no_such_function_exists()
          | precondition_failed()
          | unsupported_operation()
          | invalid_argument()
          | invalid_if_match_version()

  @type tag_resource_errors() ::
          no_such_resource() | invalid_argument() | access_denied() | invalid_tagging()

  @type test_function_errors() ::
          test_function_failed()
          | no_such_function_exists()
          | unsupported_operation()
          | invalid_argument()
          | invalid_if_match_version()

  @type untag_resource_errors() ::
          no_such_resource() | invalid_argument() | access_denied() | invalid_tagging()

  @type update_cache_policy_errors() ::
          cache_policy_already_exists()
          | no_such_cache_policy()
          | inconsistent_quantities()
          | too_many_query_strings_in_cache_policy()
          | precondition_failed()
          | too_many_headers_in_cache_policy()
          | invalid_argument()
          | access_denied()
          | illegal_update()
          | invalid_if_match_version()
          | too_many_cookies_in_cache_policy()

  @type update_cloud_front_origin_access_identity_errors() ::
          inconsistent_quantities()
          | missing_body()
          | precondition_failed()
          | no_such_cloud_front_origin_access_identity()
          | invalid_argument()
          | access_denied()
          | illegal_update()
          | invalid_if_match_version()

  @type update_connection_group_errors() ::
          entity_limit_exceeded()
          | precondition_failed()
          | entity_already_exists()
          | invalid_argument()
          | access_denied()
          | resource_in_use()
          | entity_not_found()
          | invalid_if_match_version()

  @type update_continuous_deployment_policy_errors() ::
          staging_distribution_in_use()
          | inconsistent_quantities()
          | precondition_failed()
          | invalid_argument()
          | access_denied()
          | invalid_if_match_version()
          | no_such_continuous_deployment_policy()

  @type update_distribution_errors() ::
          too_many_distributions_associated_to_origin_access_control()
          | too_many_distributions_associated_to_field_level_encryption_config()
          | staging_distribution_in_use()
          | invalid_location_code()
          | invalid_response_code()
          | no_such_realtime_log_config()
          | invalid_function_association()
          | illegal_field_level_encryption_config_association_with_cache_behavior()
          | no_such_origin()
          | realtime_log_config_owner_mismatch()
          | no_such_response_headers_policy()
          | invalid_relative_path()
          | invalid_viewer_certificate()
          | too_many_query_string_parameters()
          | cname_already_exists()
          | invalid_default_root_object()
          | too_many_cache_behaviors()
          | too_many_distributions_associated_to_response_headers_policy()
          | too_many_lambda_function_associations()
          | too_many_distributions_with_lambda_associations()
          | too_many_distributions_with_single_function_arn()
          | too_many_origins()
          | too_many_origin_custom_headers()
          | invalid_minimum_protocol_version()
          | too_many_headers_in_forwarded_values()
          | too_many_key_groups_associated_to_distribution()
          | invalid_domain_name_for_origin_access_control()
          | invalid_origin_read_timeout()
          | trusted_signer_does_not_exist()
          | no_such_cache_policy()
          | invalid_forward_cookies()
          | invalid_origin_keepalive_timeout()
          | invalid_lambda_function_association()
          | invalid_headers_for_s3_origin()
          | inconsistent_quantities()
          | missing_body()
          | too_many_distributions_with_function_associations()
          | continuous_deployment_policy_in_use()
          | invalid_geo_restriction_parameter()
          | invalid_error_code()
          | too_many_trusted_signers()
          | no_such_distribution()
          | no_such_origin_request_policy()
          | too_many_distribution_cnames()
          | precondition_failed()
          | invalid_required_protocol()
          | too_many_certificates()
          | invalid_origin_access_control()
          | no_such_field_level_encryption_config()
          | invalid_web_acl_id()
          | invalid_argument()
          | too_many_cookie_names_in_white_list()
          | access_denied()
          | invalid_t_t_l_order()
          | illegal_update()
          | entity_not_found()
          | too_many_distributions_associated_to_key_group()
          | too_many_distributions_associated_to_origin_request_policy()
          | invalid_query_string_parameters()
          | trusted_key_group_does_not_exist()
          | too_many_distributions_associated_to_cache_policy()
          | invalid_if_match_version()
          | illegal_origin_access_configuration()
          | no_such_continuous_deployment_policy()
          | invalid_origin_access_identity()
          | too_many_function_associations()
          | too_many_origin_groups_per_distribution()

  @type update_distribution_tenant_errors() ::
          entity_limit_exceeded()
          | cname_already_exists()
          | precondition_failed()
          | entity_already_exists()
          | invalid_argument()
          | access_denied()
          | entity_not_found()
          | invalid_if_match_version()
          | invalid_association()

  @type update_distribution_with_staging_config_errors() ::
          too_many_distributions_associated_to_origin_access_control()
          | too_many_distributions_associated_to_field_level_encryption_config()
          | invalid_location_code()
          | invalid_response_code()
          | no_such_realtime_log_config()
          | invalid_function_association()
          | illegal_field_level_encryption_config_association_with_cache_behavior()
          | no_such_origin()
          | realtime_log_config_owner_mismatch()
          | no_such_response_headers_policy()
          | invalid_relative_path()
          | invalid_viewer_certificate()
          | too_many_query_string_parameters()
          | cname_already_exists()
          | invalid_default_root_object()
          | too_many_cache_behaviors()
          | too_many_distributions_associated_to_response_headers_policy()
          | too_many_lambda_function_associations()
          | too_many_distributions_with_lambda_associations()
          | too_many_distributions_with_single_function_arn()
          | too_many_origins()
          | too_many_origin_custom_headers()
          | invalid_minimum_protocol_version()
          | too_many_headers_in_forwarded_values()
          | too_many_key_groups_associated_to_distribution()
          | invalid_origin_read_timeout()
          | trusted_signer_does_not_exist()
          | no_such_cache_policy()
          | invalid_forward_cookies()
          | invalid_origin_keepalive_timeout()
          | invalid_lambda_function_association()
          | invalid_headers_for_s3_origin()
          | inconsistent_quantities()
          | missing_body()
          | too_many_distributions_with_function_associations()
          | invalid_geo_restriction_parameter()
          | invalid_error_code()
          | too_many_trusted_signers()
          | no_such_distribution()
          | no_such_origin_request_policy()
          | too_many_distribution_cnames()
          | precondition_failed()
          | invalid_required_protocol()
          | too_many_certificates()
          | invalid_origin_access_control()
          | no_such_field_level_encryption_config()
          | invalid_web_acl_id()
          | invalid_argument()
          | too_many_cookie_names_in_white_list()
          | access_denied()
          | invalid_t_t_l_order()
          | illegal_update()
          | entity_not_found()
          | too_many_distributions_associated_to_key_group()
          | too_many_distributions_associated_to_origin_request_policy()
          | invalid_query_string_parameters()
          | trusted_key_group_does_not_exist()
          | too_many_distributions_associated_to_cache_policy()
          | invalid_if_match_version()
          | invalid_origin_access_identity()
          | too_many_function_associations()
          | too_many_origin_groups_per_distribution()

  @type update_domain_association_errors() ::
          precondition_failed()
          | invalid_argument()
          | access_denied()
          | illegal_update()
          | entity_not_found()
          | invalid_if_match_version()

  @type update_field_level_encryption_config_errors() ::
          too_many_field_level_encryption_query_arg_profiles()
          | no_such_field_level_encryption_profile()
          | inconsistent_quantities()
          | precondition_failed()
          | no_such_field_level_encryption_config()
          | invalid_argument()
          | access_denied()
          | illegal_update()
          | too_many_field_level_encryption_content_type_profiles()
          | invalid_if_match_version()
          | query_arg_profile_empty()

  @type update_field_level_encryption_profile_errors() ::
          no_such_public_key()
          | no_such_field_level_encryption_profile()
          | too_many_field_level_encryption_field_patterns()
          | field_level_encryption_profile_size_exceeded()
          | too_many_field_level_encryption_encryption_entities()
          | inconsistent_quantities()
          | precondition_failed()
          | invalid_argument()
          | access_denied()
          | field_level_encryption_profile_already_exists()
          | illegal_update()
          | invalid_if_match_version()

  @type update_function_errors() ::
          no_such_function_exists()
          | precondition_failed()
          | unsupported_operation()
          | function_size_limit_exceeded()
          | invalid_argument()
          | invalid_if_match_version()

  @type update_key_group_errors() ::
          too_many_public_keys_in_key_group()
          | no_such_resource()
          | precondition_failed()
          | key_group_already_exists()
          | invalid_argument()
          | invalid_if_match_version()

  @type update_key_value_store_errors() ::
          precondition_failed()
          | unsupported_operation()
          | invalid_argument()
          | access_denied()
          | entity_not_found()
          | invalid_if_match_version()

  @type update_origin_access_control_errors() ::
          origin_access_control_already_exists()
          | no_such_origin_access_control()
          | precondition_failed()
          | invalid_argument()
          | access_denied()
          | illegal_update()
          | invalid_if_match_version()

  @type update_origin_request_policy_errors() ::
          too_many_headers_in_origin_request_policy()
          | inconsistent_quantities()
          | origin_request_policy_already_exists()
          | too_many_query_strings_in_origin_request_policy()
          | no_such_origin_request_policy()
          | precondition_failed()
          | too_many_cookies_in_origin_request_policy()
          | invalid_argument()
          | access_denied()
          | illegal_update()
          | invalid_if_match_version()

  @type update_public_key_errors() ::
          no_such_public_key()
          | precondition_failed()
          | invalid_argument()
          | access_denied()
          | illegal_update()
          | invalid_if_match_version()
          | cannot_change_immutable_public_key_fields()

  @type update_realtime_log_config_errors() ::
          no_such_realtime_log_config() | invalid_argument() | access_denied()

  @type update_response_headers_policy_errors() ::
          no_such_response_headers_policy()
          | too_many_remove_headers_in_response_headers_policy()
          | inconsistent_quantities()
          | response_headers_policy_already_exists()
          | precondition_failed()
          | invalid_argument()
          | access_denied()
          | illegal_update()
          | invalid_if_match_version()
          | too_long_c_s_p_in_response_headers_policy()
          | too_many_custom_headers_in_response_headers_policy()

  @type update_streaming_distribution_errors() ::
          cname_already_exists()
          | too_many_streaming_distribution_cnames()
          | no_such_streaming_distribution()
          | trusted_signer_does_not_exist()
          | inconsistent_quantities()
          | missing_body()
          | too_many_trusted_signers()
          | precondition_failed()
          | invalid_origin_access_control()
          | invalid_argument()
          | access_denied()
          | illegal_update()
          | invalid_if_match_version()
          | invalid_origin_access_identity()

  @type update_vpc_origin_errors() ::
          entity_limit_exceeded()
          | inconsistent_quantities()
          | precondition_failed()
          | unsupported_operation()
          | entity_already_exists()
          | invalid_argument()
          | access_denied()
          | illegal_update()
          | entity_not_found()
          | invalid_if_match_version()
          | cannot_update_entity_while_in_use()

  @type verify_dns_configuration_errors() ::
          invalid_argument() | access_denied() | entity_not_found()

  def metadata do
    %{
      api_version: "2020-05-31",
      content_type: "text/xml",
      credential_scope: "us-east-1",
      endpoint_prefix: "cloudfront",
      global?: true,
      hostname: "cloudfront.amazonaws.com",
      protocol: "rest-xml",
      service_id: "CloudFront",
      signature_version: "v4",
      signing_name: "cloudfront",
      target_prefix: nil
    }
  end

  @doc """
  Associates an alias (also known as a CNAME or an alternate domain name) with a
  CloudFront distribution.

  With this operation you can move an alias that's already in use on a CloudFront
  distribution to a different distribution in one step. This prevents the downtime
  that could occur if you first remove the alias from one distribution and then
  separately add the alias to another distribution.

  To use this operation to associate an alias with a distribution, you provide the
  alias and the ID of the target distribution for the alias. For more information,
  including how to set up the target distribution, prerequisites that you must
  complete, and other restrictions, see [Moving an alternate domain name to a different
  distribution](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/CNAMEs.html#alternate-domain-names-move)
  in the *Amazon CloudFront Developer Guide*.
  """
  @spec associate_alias(map(), String.t(), associate_alias_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_alias_errors()}
  def associate_alias(%Client{} = client, target_distribution_id, input, options \\ []) do
    url_path =
      "/2020-05-31/distribution/#{AWS.Util.encode_uri(target_distribution_id)}/associate-alias"

    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"Alias", "Alias"}
      ]
      |> Request.build_params(input)

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
  Associates the WAF web ACL with a distribution tenant.
  """
  @spec associate_distribution_tenant_web_acl(
          map(),
          String.t(),
          associate_distribution_tenant_web_acl_request(),
          list()
        ) ::
          {:ok, associate_distribution_tenant_web_acl_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_distribution_tenant_web_acl_errors()}
  def associate_distribution_tenant_web_acl(%Client{} = client, id, input, options \\ []) do
    url_path = "/2020-05-31/distribution-tenant/#{AWS.Util.encode_uri(id)}/associate-web-acl"

    {headers, input} =
      [
        {"IfMatch", "If-Match"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

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
  Associates the WAF web ACL with a distribution.
  """
  @spec associate_distribution_web_acl(
          map(),
          String.t(),
          associate_distribution_web_acl_request(),
          list()
        ) ::
          {:ok, associate_distribution_web_acl_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_distribution_web_acl_errors()}
  def associate_distribution_web_acl(%Client{} = client, id, input, options \\ []) do
    url_path = "/2020-05-31/distribution/#{AWS.Util.encode_uri(id)}/associate-web-acl"

    {headers, input} =
      [
        {"IfMatch", "If-Match"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

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
  Creates a staging distribution using the configuration of the provided primary
  distribution.

  A staging distribution is a copy of an existing distribution (called the primary
  distribution) that you can use in a continuous deployment workflow.

  After you create a staging distribution, you can use `UpdateDistribution` to
  modify the staging distribution's configuration. Then you can use
  `CreateContinuousDeploymentPolicy` to incrementally move traffic to the staging
  distribution.

  This API operation requires the following IAM permissions:

    *
  [GetDistribution](https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_GetDistribution.html)     *
  [CreateDistribution](https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_CreateDistribution.html)

    *
  [CopyDistribution](https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_CopyDistribution.html)
  """
  @spec copy_distribution(map(), String.t(), copy_distribution_request(), list()) ::
          {:ok, copy_distribution_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, copy_distribution_errors()}
  def copy_distribution(%Client{} = client, primary_distribution_id, input, options \\ []) do
    url_path = "/2020-05-31/distribution/#{AWS.Util.encode_uri(primary_distribution_id)}/copy"

    {headers, input} =
      [
        {"IfMatch", "If-Match"},
        {"Staging", "Staging"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}, {"Location", "Location"}]
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
  Creates an Anycast static IP list.
  """
  @spec create_anycast_ip_list(map(), create_anycast_ip_list_request(), list()) ::
          {:ok, create_anycast_ip_list_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_anycast_ip_list_errors()}
  def create_anycast_ip_list(%Client{} = client, input, options \\ []) do
    url_path = "/2020-05-31/anycast-ip-list"
    headers = []
    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
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
      202
    )
  end

  @doc """
  Creates a cache policy.

  After you create a cache policy, you can attach it to one or more cache
  behaviors. When it's attached to a cache behavior, the cache policy determines
  the following:

    * The values that CloudFront includes in the *cache key*. These
  values can include HTTP headers, cookies, and URL query strings. CloudFront uses
  the cache key to find an object in its cache that it can return to the viewer.

    * The default, minimum, and maximum time to live (TTL) values that
  you want objects to stay in the CloudFront cache.

  The headers, cookies, and query strings that are included in the cache key are
  also included in requests that CloudFront sends to the origin. CloudFront sends
  a request when it can't find an object in its cache that matches the request's
  cache key. If you want to send values to the origin but *not* include them in
  the cache key, use `OriginRequestPolicy`.

  For more information about cache policies, see [Controlling the cache key](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html)
  in the *Amazon CloudFront Developer Guide*.
  """
  @spec create_cache_policy(map(), create_cache_policy_request(), list()) ::
          {:ok, create_cache_policy_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_cache_policy_errors()}
  def create_cache_policy(%Client{} = client, input, options \\ []) do
    url_path = "/2020-05-31/cache-policy"
    headers = []
    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}, {"Location", "Location"}]
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
  Creates a new origin access identity.

  If you're using Amazon S3 for your origin, you can use an origin access identity
  to require users to access your content using a CloudFront URL instead of the
  Amazon S3 URL. For more information about how to use origin access identities,
  see [Serving Private Content through CloudFront](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html)
  in the *Amazon CloudFront Developer Guide*.
  """
  @spec create_cloud_front_origin_access_identity(
          map(),
          create_cloud_front_origin_access_identity_request(),
          list()
        ) ::
          {:ok, create_cloud_front_origin_access_identity_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_cloud_front_origin_access_identity_errors()}
  def create_cloud_front_origin_access_identity(%Client{} = client, input, options \\ []) do
    url_path = "/2020-05-31/origin-access-identity/cloudfront"
    headers = []
    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}, {"Location", "Location"}]
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
  Creates a connection group.
  """
  @spec create_connection_group(map(), create_connection_group_request(), list()) ::
          {:ok, create_connection_group_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_connection_group_errors()}
  def create_connection_group(%Client{} = client, input, options \\ []) do
    url_path = "/2020-05-31/connection-group"
    headers = []
    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
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
  Creates a continuous deployment policy that distributes traffic for a custom
  domain name to two different CloudFront distributions.

  To use a continuous deployment policy, first use `CopyDistribution` to create a
  staging distribution, then use `UpdateDistribution` to modify the staging
  distribution's configuration.

  After you create and update a staging distribution, you can use a continuous
  deployment policy to incrementally move traffic to the staging distribution.
  This workflow enables you to test changes to a distribution's configuration
  before moving all of your domain's production traffic to the new configuration.
  """
  @spec create_continuous_deployment_policy(
          map(),
          create_continuous_deployment_policy_request(),
          list()
        ) ::
          {:ok, create_continuous_deployment_policy_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_continuous_deployment_policy_errors()}
  def create_continuous_deployment_policy(%Client{} = client, input, options \\ []) do
    url_path = "/2020-05-31/continuous-deployment-policy"
    headers = []
    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}, {"Location", "Location"}]
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
  Creates a CloudFront distribution.
  """
  @spec create_distribution(map(), create_distribution_request(), list()) ::
          {:ok, create_distribution_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_distribution_errors()}
  def create_distribution(%Client{} = client, input, options \\ []) do
    url_path = "/2020-05-31/distribution"
    headers = []
    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}, {"Location", "Location"}]
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
  Creates a distribution tenant.
  """
  @spec create_distribution_tenant(map(), create_distribution_tenant_request(), list()) ::
          {:ok, create_distribution_tenant_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_distribution_tenant_errors()}
  def create_distribution_tenant(%Client{} = client, input, options \\ []) do
    url_path = "/2020-05-31/distribution-tenant"
    headers = []
    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
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
  Create a new distribution with tags.

  This API operation requires the following IAM permissions:

    *
  [CreateDistribution](https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_CreateDistribution.html)     *
  [TagResource](https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_TagResource.html)
  """
  @spec create_distribution_with_tags(map(), create_distribution_with_tags_request(), list()) ::
          {:ok, create_distribution_with_tags_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_distribution_with_tags_errors()}
  def create_distribution_with_tags(%Client{} = client, input, options \\ []) do
    url_path = "/2020-05-31/distribution?WithTags"
    headers = []
    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}, {"Location", "Location"}]
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
  Create a new field-level encryption configuration.
  """
  @spec create_field_level_encryption_config(
          map(),
          create_field_level_encryption_config_request(),
          list()
        ) ::
          {:ok, create_field_level_encryption_config_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_field_level_encryption_config_errors()}
  def create_field_level_encryption_config(%Client{} = client, input, options \\ []) do
    url_path = "/2020-05-31/field-level-encryption"
    headers = []
    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}, {"Location", "Location"}]
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
  Create a field-level encryption profile.
  """
  @spec create_field_level_encryption_profile(
          map(),
          create_field_level_encryption_profile_request(),
          list()
        ) ::
          {:ok, create_field_level_encryption_profile_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_field_level_encryption_profile_errors()}
  def create_field_level_encryption_profile(%Client{} = client, input, options \\ []) do
    url_path = "/2020-05-31/field-level-encryption-profile"
    headers = []
    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}, {"Location", "Location"}]
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
  Creates a CloudFront function.

  To create a function, you provide the function code and some configuration
  information about the function. The response contains an Amazon Resource Name
  (ARN) that uniquely identifies the function.

  When you create a function, it's in the `DEVELOPMENT` stage. In this stage, you
  can test the function with `TestFunction`, and update it with `UpdateFunction`.

  When you're ready to use your function with a CloudFront distribution, use
  `PublishFunction` to copy the function from the `DEVELOPMENT` stage to `LIVE`.
  When it's live, you can attach the function to a distribution's cache behavior,
  using the function's ARN.
  """
  @spec create_function(map(), create_function_request(), list()) ::
          {:ok, create_function_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_function_errors()}
  def create_function(%Client{} = client, input, options \\ []) do
    url_path = "/2020-05-31/function"
    headers = []
    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}, {"Location", "Location"}]
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
  Create a new invalidation.

  For more information, see [Invalidating files](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Invalidation.html)
  in the *Amazon CloudFront Developer Guide*.
  """
  @spec create_invalidation(map(), String.t(), create_invalidation_request(), list()) ::
          {:ok, create_invalidation_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_invalidation_errors()}
  def create_invalidation(%Client{} = client, distribution_id, input, options \\ []) do
    url_path = "/2020-05-31/distribution/#{AWS.Util.encode_uri(distribution_id)}/invalidation"
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
  Creates an invalidation for a distribution tenant.

  For more information, see [Invalidating files](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Invalidation.html)
  in the *Amazon CloudFront Developer Guide*.
  """
  @spec create_invalidation_for_distribution_tenant(
          map(),
          String.t(),
          create_invalidation_for_distribution_tenant_request(),
          list()
        ) ::
          {:ok, create_invalidation_for_distribution_tenant_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_invalidation_for_distribution_tenant_errors()}
  def create_invalidation_for_distribution_tenant(%Client{} = client, id, input, options \\ []) do
    url_path = "/2020-05-31/distribution-tenant/#{AWS.Util.encode_uri(id)}/invalidation"
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
  Creates a key group that you can use with [CloudFront signed URLs and signed cookies](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html).

  To create a key group, you must specify at least one public key for the key
  group. After you create a key group, you can reference it from one or more cache
  behaviors. When you reference a key group in a cache behavior, CloudFront
  requires signed URLs or signed cookies for all requests that match the cache
  behavior. The URLs or cookies must be signed with a private key whose
  corresponding public key is in the key group. The signed URL or cookie contains
  information about which public key CloudFront should use to verify the
  signature. For more information, see [Serving private content](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html)
  in the *Amazon CloudFront Developer Guide*.
  """
  @spec create_key_group(map(), create_key_group_request(), list()) ::
          {:ok, create_key_group_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_key_group_errors()}
  def create_key_group(%Client{} = client, input, options \\ []) do
    url_path = "/2020-05-31/key-group"
    headers = []
    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}, {"Location", "Location"}]
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
  Specifies the key value store resource to add to your account.

  In your account, the key value store names must be unique. You can also import
  key value store data in JSON format from an S3 bucket by providing a valid
  `ImportSource` that you own.
  """
  @spec create_key_value_store(map(), create_key_value_store_request(), list()) ::
          {:ok, create_key_value_store_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_key_value_store_errors()}
  def create_key_value_store(%Client{} = client, input, options \\ []) do
    url_path = "/2020-05-31/key-value-store"
    headers = []
    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}, {"Location", "Location"}]
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
  Enables or disables additional Amazon CloudWatch metrics for the specified
  CloudFront distribution.

  The additional metrics incur an additional cost.

  For more information, see [Viewing additional CloudFront distribution metrics](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/viewing-cloudfront-metrics.html#monitoring-console.distributions-additional)
  in the *Amazon CloudFront Developer Guide*.
  """
  @spec create_monitoring_subscription(
          map(),
          String.t(),
          create_monitoring_subscription_request(),
          list()
        ) ::
          {:ok, create_monitoring_subscription_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_monitoring_subscription_errors()}
  def create_monitoring_subscription(%Client{} = client, distribution_id, input, options \\ []) do
    url_path =
      "/2020-05-31/distributions/#{AWS.Util.encode_uri(distribution_id)}/monitoring-subscription"

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
  Creates a new origin access control in CloudFront.

  After you create an origin access control, you can add it to an origin in a
  CloudFront distribution so that CloudFront sends authenticated (signed) requests
  to the origin.

  This makes it possible to block public access to the origin, allowing viewers
  (users) to access the origin's content only through CloudFront.

  For more information about using a CloudFront origin access control, see
  [Restricting access to an Amazon Web Services origin](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-restricting-access-to-origin.html)
  in the *Amazon CloudFront Developer Guide*.
  """
  @spec create_origin_access_control(map(), create_origin_access_control_request(), list()) ::
          {:ok, create_origin_access_control_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_origin_access_control_errors()}
  def create_origin_access_control(%Client{} = client, input, options \\ []) do
    url_path = "/2020-05-31/origin-access-control"
    headers = []
    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}, {"Location", "Location"}]
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
  Creates an origin request policy.

  After you create an origin request policy, you can attach it to one or more
  cache behaviors. When it's attached to a cache behavior, the origin request
  policy determines the values that CloudFront includes in requests that it sends
  to the origin. Each request that CloudFront sends to the origin includes the
  following:

    * The request body and the URL path (without the domain name) from
  the viewer request.

    * The headers that CloudFront automatically includes in every origin
  request, including `Host`, `User-Agent`, and `X-Amz-Cf-Id`.

    * All HTTP headers, cookies, and URL query strings that are
  specified in the cache policy or the origin request policy. These can include
  items from the viewer request and, in the case of headers, additional ones that
  are added by CloudFront.

  CloudFront sends a request when it can't find a valid object in its cache that
  matches the request. If you want to send values to the origin and also include
  them in the cache key, use `CachePolicy`.

  For more information about origin request policies, see [Controlling origin requests](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html)
  in the *Amazon CloudFront Developer Guide*.
  """
  @spec create_origin_request_policy(map(), create_origin_request_policy_request(), list()) ::
          {:ok, create_origin_request_policy_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_origin_request_policy_errors()}
  def create_origin_request_policy(%Client{} = client, input, options \\ []) do
    url_path = "/2020-05-31/origin-request-policy"
    headers = []
    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}, {"Location", "Location"}]
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
  Uploads a public key to CloudFront that you can use with [signed URLs and signed cookies](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html),
  or with [field-level encryption](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/field-level-encryption.html).
  """
  @spec create_public_key(map(), create_public_key_request(), list()) ::
          {:ok, create_public_key_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_public_key_errors()}
  def create_public_key(%Client{} = client, input, options \\ []) do
    url_path = "/2020-05-31/public-key"
    headers = []
    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}, {"Location", "Location"}]
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
  Creates a real-time log configuration.

  After you create a real-time log configuration, you can attach it to one or more
  cache behaviors to send real-time log data to the specified Amazon Kinesis data
  stream.

  For more information about real-time log configurations, see [Real-time logs](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/real-time-logs.html)
  in the *Amazon CloudFront Developer Guide*.
  """
  @spec create_realtime_log_config(map(), create_realtime_log_config_request(), list()) ::
          {:ok, create_realtime_log_config_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_realtime_log_config_errors()}
  def create_realtime_log_config(%Client{} = client, input, options \\ []) do
    url_path = "/2020-05-31/realtime-log-config"
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
  Creates a response headers policy.

  A response headers policy contains information about a set of HTTP headers. To
  create a response headers policy, you provide some metadata about the policy and
  a set of configurations that specify the headers.

  After you create a response headers policy, you can use its ID to attach it to
  one or more cache behaviors in a CloudFront distribution. When it's attached to
  a cache behavior, the response headers policy affects the HTTP headers that
  CloudFront includes in HTTP responses to requests that match the cache behavior.
  CloudFront adds or removes response headers according to the configuration of
  the response headers policy.

  For more information, see [Adding or removing HTTP headers in CloudFront responses](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/modifying-response-headers.html)
  in the *Amazon CloudFront Developer Guide*.
  """
  @spec create_response_headers_policy(map(), create_response_headers_policy_request(), list()) ::
          {:ok, create_response_headers_policy_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_response_headers_policy_errors()}
  def create_response_headers_policy(%Client{} = client, input, options \\ []) do
    url_path = "/2020-05-31/response-headers-policy"
    headers = []
    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}, {"Location", "Location"}]
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
  This API is deprecated.

  Amazon CloudFront is deprecating real-time messaging protocol (RTMP)
  distributions on December 31, 2020. For more information, [read the announcement](http://forums.aws.amazon.com/ann.jspa?annID=7356) on the Amazon
  CloudFront discussion forum.
  """
  @spec create_streaming_distribution(map(), create_streaming_distribution_request(), list()) ::
          {:ok, create_streaming_distribution_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_streaming_distribution_errors()}
  def create_streaming_distribution(%Client{} = client, input, options \\ []) do
    url_path = "/2020-05-31/streaming-distribution"
    headers = []
    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}, {"Location", "Location"}]
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
  This API is deprecated.

  Amazon CloudFront is deprecating real-time messaging protocol (RTMP)
  distributions on December 31, 2020. For more information, [read the announcement](http://forums.aws.amazon.com/ann.jspa?annID=7356) on the Amazon
  CloudFront discussion forum.
  """
  @spec create_streaming_distribution_with_tags(
          map(),
          create_streaming_distribution_with_tags_request(),
          list()
        ) ::
          {:ok, create_streaming_distribution_with_tags_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_streaming_distribution_with_tags_errors()}
  def create_streaming_distribution_with_tags(%Client{} = client, input, options \\ []) do
    url_path = "/2020-05-31/streaming-distribution?WithTags"
    headers = []
    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}, {"Location", "Location"}]
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
  Create an Amazon CloudFront VPC origin.
  """
  @spec create_vpc_origin(map(), create_vpc_origin_request(), list()) ::
          {:ok, create_vpc_origin_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_vpc_origin_errors()}
  def create_vpc_origin(%Client{} = client, input, options \\ []) do
    url_path = "/2020-05-31/vpc-origin"
    headers = []
    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}, {"Location", "Location"}]
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
      202
    )
  end

  @doc """
  Deletes an Anycast static IP list.
  """
  @spec delete_anycast_ip_list(map(), String.t(), delete_anycast_ip_list_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_anycast_ip_list_errors()}
  def delete_anycast_ip_list(%Client{} = client, id, input, options \\ []) do
    url_path = "/2020-05-31/anycast-ip-list/#{AWS.Util.encode_uri(id)}"

    {headers, input} =
      [
        {"IfMatch", "If-Match"}
      ]
      |> Request.build_params(input)

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
      204
    )
  end

  @doc """
  Deletes a cache policy.

  You cannot delete a cache policy if it's attached to a cache behavior. First
  update your distributions to remove the cache policy from all cache behaviors,
  then delete the cache policy.

  To delete a cache policy, you must provide the policy's identifier and version.
  To get these values, you can use `ListCachePolicies` or `GetCachePolicy`.
  """
  @spec delete_cache_policy(map(), String.t(), delete_cache_policy_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_cache_policy_errors()}
  def delete_cache_policy(%Client{} = client, id, input, options \\ []) do
    url_path = "/2020-05-31/cache-policy/#{AWS.Util.encode_uri(id)}"

    {headers, input} =
      [
        {"IfMatch", "If-Match"}
      ]
      |> Request.build_params(input)

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
      204
    )
  end

  @doc """
  Delete an origin access identity.
  """
  @spec delete_cloud_front_origin_access_identity(
          map(),
          String.t(),
          delete_cloud_front_origin_access_identity_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_cloud_front_origin_access_identity_errors()}
  def delete_cloud_front_origin_access_identity(%Client{} = client, id, input, options \\ []) do
    url_path = "/2020-05-31/origin-access-identity/cloudfront/#{AWS.Util.encode_uri(id)}"

    {headers, input} =
      [
        {"IfMatch", "If-Match"}
      ]
      |> Request.build_params(input)

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
      204
    )
  end

  @doc """
  Deletes a connection group.
  """
  @spec delete_connection_group(map(), String.t(), delete_connection_group_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_connection_group_errors()}
  def delete_connection_group(%Client{} = client, id, input, options \\ []) do
    url_path = "/2020-05-31/connection-group/#{AWS.Util.encode_uri(id)}"

    {headers, input} =
      [
        {"IfMatch", "If-Match"}
      ]
      |> Request.build_params(input)

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
      204
    )
  end

  @doc """
  Deletes a continuous deployment policy.

  You cannot delete a continuous deployment policy that's attached to a primary
  distribution. First update your distribution to remove the continuous deployment
  policy, then you can delete the policy.
  """
  @spec delete_continuous_deployment_policy(
          map(),
          String.t(),
          delete_continuous_deployment_policy_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_continuous_deployment_policy_errors()}
  def delete_continuous_deployment_policy(%Client{} = client, id, input, options \\ []) do
    url_path = "/2020-05-31/continuous-deployment-policy/#{AWS.Util.encode_uri(id)}"

    {headers, input} =
      [
        {"IfMatch", "If-Match"}
      ]
      |> Request.build_params(input)

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
      204
    )
  end

  @doc """
  Delete a distribution.
  """
  @spec delete_distribution(map(), String.t(), delete_distribution_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_distribution_errors()}
  def delete_distribution(%Client{} = client, id, input, options \\ []) do
    url_path = "/2020-05-31/distribution/#{AWS.Util.encode_uri(id)}"

    {headers, input} =
      [
        {"IfMatch", "If-Match"}
      ]
      |> Request.build_params(input)

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
      204
    )
  end

  @doc """
  Deletes a distribution tenant.

  If you use this API operation to delete a distribution tenant that is currently
  enabled, the request will fail.

  To delete a distribution tenant, you must first disable the distribution tenant
  by using the `UpdateDistributionTenant` API operation.
  """
  @spec delete_distribution_tenant(
          map(),
          String.t(),
          delete_distribution_tenant_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_distribution_tenant_errors()}
  def delete_distribution_tenant(%Client{} = client, id, input, options \\ []) do
    url_path = "/2020-05-31/distribution-tenant/#{AWS.Util.encode_uri(id)}"

    {headers, input} =
      [
        {"IfMatch", "If-Match"}
      ]
      |> Request.build_params(input)

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
      204
    )
  end

  @doc """
  Remove a field-level encryption configuration.
  """
  @spec delete_field_level_encryption_config(
          map(),
          String.t(),
          delete_field_level_encryption_config_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_field_level_encryption_config_errors()}
  def delete_field_level_encryption_config(%Client{} = client, id, input, options \\ []) do
    url_path = "/2020-05-31/field-level-encryption/#{AWS.Util.encode_uri(id)}"

    {headers, input} =
      [
        {"IfMatch", "If-Match"}
      ]
      |> Request.build_params(input)

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
      204
    )
  end

  @doc """
  Remove a field-level encryption profile.
  """
  @spec delete_field_level_encryption_profile(
          map(),
          String.t(),
          delete_field_level_encryption_profile_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_field_level_encryption_profile_errors()}
  def delete_field_level_encryption_profile(%Client{} = client, id, input, options \\ []) do
    url_path = "/2020-05-31/field-level-encryption-profile/#{AWS.Util.encode_uri(id)}"

    {headers, input} =
      [
        {"IfMatch", "If-Match"}
      ]
      |> Request.build_params(input)

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
      204
    )
  end

  @doc """
  Deletes a CloudFront function.

  You cannot delete a function if it's associated with a cache behavior. First,
  update your distributions to remove the function association from all cache
  behaviors, then delete the function.

  To delete a function, you must provide the function's name and version (`ETag`
  value). To get these values, you can use `ListFunctions` and `DescribeFunction`.
  """
  @spec delete_function(map(), String.t(), delete_function_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_function_errors()}
  def delete_function(%Client{} = client, name, input, options \\ []) do
    url_path = "/2020-05-31/function/#{AWS.Util.encode_uri(name)}"

    {headers, input} =
      [
        {"IfMatch", "If-Match"}
      ]
      |> Request.build_params(input)

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
      204
    )
  end

  @doc """
  Deletes a key group.

  You cannot delete a key group that is referenced in a cache behavior. First
  update your distributions to remove the key group from all cache behaviors, then
  delete the key group.

  To delete a key group, you must provide the key group's identifier and version.
  To get these values, use `ListKeyGroups` followed by `GetKeyGroup` or
  `GetKeyGroupConfig`.
  """
  @spec delete_key_group(map(), String.t(), delete_key_group_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_key_group_errors()}
  def delete_key_group(%Client{} = client, id, input, options \\ []) do
    url_path = "/2020-05-31/key-group/#{AWS.Util.encode_uri(id)}"

    {headers, input} =
      [
        {"IfMatch", "If-Match"}
      ]
      |> Request.build_params(input)

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
      204
    )
  end

  @doc """
  Specifies the key value store to delete.
  """
  @spec delete_key_value_store(map(), String.t(), delete_key_value_store_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_key_value_store_errors()}
  def delete_key_value_store(%Client{} = client, name, input, options \\ []) do
    url_path = "/2020-05-31/key-value-store/#{AWS.Util.encode_uri(name)}"

    {headers, input} =
      [
        {"IfMatch", "If-Match"}
      ]
      |> Request.build_params(input)

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
      204
    )
  end

  @doc """
  Disables additional CloudWatch metrics for the specified CloudFront
  distribution.
  """
  @spec delete_monitoring_subscription(
          map(),
          String.t(),
          delete_monitoring_subscription_request(),
          list()
        ) ::
          {:ok, delete_monitoring_subscription_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_monitoring_subscription_errors()}
  def delete_monitoring_subscription(%Client{} = client, distribution_id, input, options \\ []) do
    url_path =
      "/2020-05-31/distributions/#{AWS.Util.encode_uri(distribution_id)}/monitoring-subscription"

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
  Deletes a CloudFront origin access control.

  You cannot delete an origin access control if it's in use. First, update all
  distributions to remove the origin access control from all origins, then delete
  the origin access control.
  """
  @spec delete_origin_access_control(
          map(),
          String.t(),
          delete_origin_access_control_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_origin_access_control_errors()}
  def delete_origin_access_control(%Client{} = client, id, input, options \\ []) do
    url_path = "/2020-05-31/origin-access-control/#{AWS.Util.encode_uri(id)}"

    {headers, input} =
      [
        {"IfMatch", "If-Match"}
      ]
      |> Request.build_params(input)

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
      204
    )
  end

  @doc """
  Deletes an origin request policy.

  You cannot delete an origin request policy if it's attached to any cache
  behaviors. First update your distributions to remove the origin request policy
  from all cache behaviors, then delete the origin request policy.

  To delete an origin request policy, you must provide the policy's identifier and
  version. To get the identifier, you can use `ListOriginRequestPolicies` or
  `GetOriginRequestPolicy`.
  """
  @spec delete_origin_request_policy(
          map(),
          String.t(),
          delete_origin_request_policy_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_origin_request_policy_errors()}
  def delete_origin_request_policy(%Client{} = client, id, input, options \\ []) do
    url_path = "/2020-05-31/origin-request-policy/#{AWS.Util.encode_uri(id)}"

    {headers, input} =
      [
        {"IfMatch", "If-Match"}
      ]
      |> Request.build_params(input)

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
      204
    )
  end

  @doc """
  Remove a public key you previously added to CloudFront.
  """
  @spec delete_public_key(map(), String.t(), delete_public_key_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_public_key_errors()}
  def delete_public_key(%Client{} = client, id, input, options \\ []) do
    url_path = "/2020-05-31/public-key/#{AWS.Util.encode_uri(id)}"

    {headers, input} =
      [
        {"IfMatch", "If-Match"}
      ]
      |> Request.build_params(input)

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
      204
    )
  end

  @doc """
  Deletes a real-time log configuration.

  You cannot delete a real-time log configuration if it's attached to a cache
  behavior. First update your distributions to remove the real-time log
  configuration from all cache behaviors, then delete the real-time log
  configuration.

  To delete a real-time log configuration, you can provide the configuration's
  name or its Amazon Resource Name (ARN). You must provide at least one. If you
  provide both, CloudFront uses the name to identify the real-time log
  configuration to delete.
  """
  @spec delete_realtime_log_config(map(), delete_realtime_log_config_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_realtime_log_config_errors()}
  def delete_realtime_log_config(%Client{} = client, input, options \\ []) do
    url_path = "/2020-05-31/delete-realtime-log-config"
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
  Deletes a response headers policy.

  You cannot delete a response headers policy if it's attached to a cache
  behavior. First update your distributions to remove the response headers policy
  from all cache behaviors, then delete the response headers policy.

  To delete a response headers policy, you must provide the policy's identifier
  and version. To get these values, you can use `ListResponseHeadersPolicies` or
  `GetResponseHeadersPolicy`.
  """
  @spec delete_response_headers_policy(
          map(),
          String.t(),
          delete_response_headers_policy_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_response_headers_policy_errors()}
  def delete_response_headers_policy(%Client{} = client, id, input, options \\ []) do
    url_path = "/2020-05-31/response-headers-policy/#{AWS.Util.encode_uri(id)}"

    {headers, input} =
      [
        {"IfMatch", "If-Match"}
      ]
      |> Request.build_params(input)

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
      204
    )
  end

  @doc """
  Delete a streaming distribution.

  To delete an RTMP distribution using the CloudFront API, perform the following
  steps.

  **To delete an RTMP distribution using the CloudFront API**:

    1. Disable the RTMP distribution.

    2. Submit a `GET Streaming Distribution Config` request to get the
  current configuration and the `Etag` header for the distribution.

    3. Update the XML document that was returned in the response to your
  `GET Streaming Distribution Config` request to change the value of `Enabled` to
  `false`.

    4. Submit a `PUT Streaming Distribution Config` request to update
  the configuration for your distribution. In the request body, include the XML
  document that you updated in Step 3. Then set the value of the HTTP `If-Match`
  header to the value of the `ETag` header that CloudFront returned when you
  submitted the `GET Streaming Distribution Config` request in Step 2.

    5. Review the response to the `PUT Streaming Distribution Config`
  request to confirm that the distribution was successfully disabled.

    6. Submit a `GET Streaming Distribution Config` request to confirm
  that your changes have propagated. When propagation is complete, the value of
  `Status` is `Deployed`.

    7. Submit a `DELETE Streaming Distribution` request. Set the value
  of the HTTP `If-Match` header to the value of the `ETag` header that CloudFront
  returned when you submitted the `GET Streaming Distribution Config` request in
  Step 2.

    8. Review the response to your `DELETE Streaming Distribution`
  request to confirm that the distribution was successfully deleted.

  For information about deleting a distribution using the CloudFront console, see
  [Deleting a Distribution](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/HowToDeleteDistribution.html)
  in the *Amazon CloudFront Developer Guide*.
  """
  @spec delete_streaming_distribution(
          map(),
          String.t(),
          delete_streaming_distribution_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_streaming_distribution_errors()}
  def delete_streaming_distribution(%Client{} = client, id, input, options \\ []) do
    url_path = "/2020-05-31/streaming-distribution/#{AWS.Util.encode_uri(id)}"

    {headers, input} =
      [
        {"IfMatch", "If-Match"}
      ]
      |> Request.build_params(input)

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
      204
    )
  end

  @doc """
  Delete an Amazon CloudFront VPC origin.
  """
  @spec delete_vpc_origin(map(), String.t(), delete_vpc_origin_request(), list()) ::
          {:ok, delete_vpc_origin_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_vpc_origin_errors()}
  def delete_vpc_origin(%Client{} = client, id, input, options \\ []) do
    url_path = "/2020-05-31/vpc-origin/#{AWS.Util.encode_uri(id)}"

    {headers, input} =
      [
        {"IfMatch", "If-Match"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

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
      202
    )
  end

  @doc """
  Gets configuration information and metadata about a CloudFront function, but not
  the function's code.

  To get a function's code, use `GetFunction`.

  To get configuration information and metadata about a function, you must provide
  the function's name and stage. To get these values, you can use `ListFunctions`.
  """
  @spec describe_function(map(), String.t(), String.t() | nil, list()) ::
          {:ok, describe_function_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_function_errors()}
  def describe_function(%Client{} = client, name, stage \\ nil, options \\ []) do
    url_path = "/2020-05-31/function/#{AWS.Util.encode_uri(name)}/describe"
    headers = []
    query_params = []

    query_params =
      if !is_nil(stage) do
        [{"Stage", stage} | query_params]
      else
        query_params
      end

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Specifies the key value store and its configuration.
  """
  @spec describe_key_value_store(map(), String.t(), list()) ::
          {:ok, describe_key_value_store_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_key_value_store_errors()}
  def describe_key_value_store(%Client{} = client, name, options \\ []) do
    url_path = "/2020-05-31/key-value-store/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Disassociates a distribution tenant from the WAF web ACL.
  """
  @spec disassociate_distribution_tenant_web_acl(
          map(),
          String.t(),
          disassociate_distribution_tenant_web_acl_request(),
          list()
        ) ::
          {:ok, disassociate_distribution_tenant_web_acl_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_distribution_tenant_web_acl_errors()}
  def disassociate_distribution_tenant_web_acl(%Client{} = client, id, input, options \\ []) do
    url_path = "/2020-05-31/distribution-tenant/#{AWS.Util.encode_uri(id)}/disassociate-web-acl"

    {headers, input} =
      [
        {"IfMatch", "If-Match"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

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
  Disassociates a distribution from the WAF web ACL.
  """
  @spec disassociate_distribution_web_acl(
          map(),
          String.t(),
          disassociate_distribution_web_acl_request(),
          list()
        ) ::
          {:ok, disassociate_distribution_web_acl_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_distribution_web_acl_errors()}
  def disassociate_distribution_web_acl(%Client{} = client, id, input, options \\ []) do
    url_path = "/2020-05-31/distribution/#{AWS.Util.encode_uri(id)}/disassociate-web-acl"

    {headers, input} =
      [
        {"IfMatch", "If-Match"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

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
  Gets an Anycast static IP list.
  """
  @spec get_anycast_ip_list(map(), String.t(), list()) ::
          {:ok, get_anycast_ip_list_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_anycast_ip_list_errors()}
  def get_anycast_ip_list(%Client{} = client, id, options \\ []) do
    url_path = "/2020-05-31/anycast-ip-list/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a cache policy, including the following metadata:

    * The policy's identifier.

    * The date and time when the policy was last modified.

  To get a cache policy, you must provide the policy's identifier. If the cache
  policy is attached to a distribution's cache behavior, you can get the policy's
  identifier using `ListDistributions` or `GetDistribution`. If the cache policy
  is not attached to a cache behavior, you can get the identifier using
  `ListCachePolicies`.
  """
  @spec get_cache_policy(map(), String.t(), list()) ::
          {:ok, get_cache_policy_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_cache_policy_errors()}
  def get_cache_policy(%Client{} = client, id, options \\ []) do
    url_path = "/2020-05-31/cache-policy/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a cache policy configuration.

  To get a cache policy configuration, you must provide the policy's identifier.
  If the cache policy is attached to a distribution's cache behavior, you can get
  the policy's identifier using `ListDistributions` or `GetDistribution`. If the
  cache policy is not attached to a cache behavior, you can get the identifier
  using `ListCachePolicies`.
  """
  @spec get_cache_policy_config(map(), String.t(), list()) ::
          {:ok, get_cache_policy_config_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_cache_policy_config_errors()}
  def get_cache_policy_config(%Client{} = client, id, options \\ []) do
    url_path = "/2020-05-31/cache-policy/#{AWS.Util.encode_uri(id)}/config"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get the information about an origin access identity.
  """
  @spec get_cloud_front_origin_access_identity(map(), String.t(), list()) ::
          {:ok, get_cloud_front_origin_access_identity_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_cloud_front_origin_access_identity_errors()}
  def get_cloud_front_origin_access_identity(%Client{} = client, id, options \\ []) do
    url_path = "/2020-05-31/origin-access-identity/cloudfront/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get the configuration information about an origin access identity.
  """
  @spec get_cloud_front_origin_access_identity_config(map(), String.t(), list()) ::
          {:ok, get_cloud_front_origin_access_identity_config_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_cloud_front_origin_access_identity_config_errors()}
  def get_cloud_front_origin_access_identity_config(%Client{} = client, id, options \\ []) do
    url_path = "/2020-05-31/origin-access-identity/cloudfront/#{AWS.Util.encode_uri(id)}/config"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a connection group.
  """
  @spec get_connection_group(map(), String.t(), list()) ::
          {:ok, get_connection_group_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_connection_group_errors()}
  def get_connection_group(%Client{} = client, identifier, options \\ []) do
    url_path = "/2020-05-31/connection-group/#{AWS.Util.encode_uri(identifier)}"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a connection group by using the endpoint that you
  specify.
  """
  @spec get_connection_group_by_routing_endpoint(map(), String.t(), list()) ::
          {:ok, get_connection_group_by_routing_endpoint_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_connection_group_by_routing_endpoint_errors()}
  def get_connection_group_by_routing_endpoint(
        %Client{} = client,
        routing_endpoint,
        options \\ []
      ) do
    url_path = "/2020-05-31/connection-group"
    headers = []
    query_params = []

    query_params =
      if !is_nil(routing_endpoint) do
        [{"RoutingEndpoint", routing_endpoint} | query_params]
      else
        query_params
      end

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a continuous deployment policy, including metadata (the policy's identifier
  and the date and time when the policy was last modified).
  """
  @spec get_continuous_deployment_policy(map(), String.t(), list()) ::
          {:ok, get_continuous_deployment_policy_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_continuous_deployment_policy_errors()}
  def get_continuous_deployment_policy(%Client{} = client, id, options \\ []) do
    url_path = "/2020-05-31/continuous-deployment-policy/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets configuration information about a continuous deployment policy.
  """
  @spec get_continuous_deployment_policy_config(map(), String.t(), list()) ::
          {:ok, get_continuous_deployment_policy_config_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_continuous_deployment_policy_config_errors()}
  def get_continuous_deployment_policy_config(%Client{} = client, id, options \\ []) do
    url_path = "/2020-05-31/continuous-deployment-policy/#{AWS.Util.encode_uri(id)}/config"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get the information about a distribution.
  """
  @spec get_distribution(map(), String.t(), list()) ::
          {:ok, get_distribution_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_distribution_errors()}
  def get_distribution(%Client{} = client, id, options \\ []) do
    url_path = "/2020-05-31/distribution/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get the configuration information about a distribution.
  """
  @spec get_distribution_config(map(), String.t(), list()) ::
          {:ok, get_distribution_config_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_distribution_config_errors()}
  def get_distribution_config(%Client{} = client, id, options \\ []) do
    url_path = "/2020-05-31/distribution/#{AWS.Util.encode_uri(id)}/config"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a distribution tenant.
  """
  @spec get_distribution_tenant(map(), String.t(), list()) ::
          {:ok, get_distribution_tenant_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_distribution_tenant_errors()}
  def get_distribution_tenant(%Client{} = client, identifier, options \\ []) do
    url_path = "/2020-05-31/distribution-tenant/#{AWS.Util.encode_uri(identifier)}"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a distribution tenant by the associated domain.
  """
  @spec get_distribution_tenant_by_domain(map(), String.t(), list()) ::
          {:ok, get_distribution_tenant_by_domain_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_distribution_tenant_by_domain_errors()}
  def get_distribution_tenant_by_domain(%Client{} = client, domain, options \\ []) do
    url_path = "/2020-05-31/distribution-tenant"
    headers = []
    query_params = []

    query_params =
      if !is_nil(domain) do
        [{"domain", domain} | query_params]
      else
        query_params
      end

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get the field-level encryption configuration information.
  """
  @spec get_field_level_encryption(map(), String.t(), list()) ::
          {:ok, get_field_level_encryption_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_field_level_encryption_errors()}
  def get_field_level_encryption(%Client{} = client, id, options \\ []) do
    url_path = "/2020-05-31/field-level-encryption/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get the field-level encryption configuration information.
  """
  @spec get_field_level_encryption_config(map(), String.t(), list()) ::
          {:ok, get_field_level_encryption_config_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_field_level_encryption_config_errors()}
  def get_field_level_encryption_config(%Client{} = client, id, options \\ []) do
    url_path = "/2020-05-31/field-level-encryption/#{AWS.Util.encode_uri(id)}/config"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get the field-level encryption profile information.
  """
  @spec get_field_level_encryption_profile(map(), String.t(), list()) ::
          {:ok, get_field_level_encryption_profile_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_field_level_encryption_profile_errors()}
  def get_field_level_encryption_profile(%Client{} = client, id, options \\ []) do
    url_path = "/2020-05-31/field-level-encryption-profile/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get the field-level encryption profile configuration information.
  """
  @spec get_field_level_encryption_profile_config(map(), String.t(), list()) ::
          {:ok, get_field_level_encryption_profile_config_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_field_level_encryption_profile_config_errors()}
  def get_field_level_encryption_profile_config(%Client{} = client, id, options \\ []) do
    url_path = "/2020-05-31/field-level-encryption-profile/#{AWS.Util.encode_uri(id)}/config"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the code of a CloudFront function.

  To get configuration information and metadata about a function, use
  `DescribeFunction`.

  To get a function's code, you must provide the function's name and stage. To get
  these values, you can use `ListFunctions`.
  """
  @spec get_function(map(), String.t(), String.t() | nil, list()) ::
          {:ok, get_function_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_function_errors()}
  def get_function(%Client{} = client, name, stage \\ nil, options \\ []) do
    url_path = "/2020-05-31/function/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(stage) do
        [{"Stage", stage} | query_params]
      else
        query_params
      end

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"Content-Type", "ContentType"}, {"ETag", "ETag"}]
      )

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get the information about an invalidation.
  """
  @spec get_invalidation(map(), String.t(), String.t(), list()) ::
          {:ok, get_invalidation_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_invalidation_errors()}
  def get_invalidation(%Client{} = client, distribution_id, id, options \\ []) do
    url_path =
      "/2020-05-31/distribution/#{AWS.Util.encode_uri(distribution_id)}/invalidation/#{AWS.Util.encode_uri(id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a specific invalidation for a distribution tenant.
  """
  @spec get_invalidation_for_distribution_tenant(map(), String.t(), String.t(), list()) ::
          {:ok, get_invalidation_for_distribution_tenant_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_invalidation_for_distribution_tenant_errors()}
  def get_invalidation_for_distribution_tenant(
        %Client{} = client,
        distribution_tenant_id,
        id,
        options \\ []
      ) do
    url_path =
      "/2020-05-31/distribution-tenant/#{AWS.Util.encode_uri(distribution_tenant_id)}/invalidation/#{AWS.Util.encode_uri(id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a key group, including the date and time when the key group was last
  modified.

  To get a key group, you must provide the key group's identifier. If the key
  group is referenced in a distribution's cache behavior, you can get the key
  group's identifier using `ListDistributions` or `GetDistribution`. If the key
  group is not referenced in a cache behavior, you can get the identifier using
  `ListKeyGroups`.
  """
  @spec get_key_group(map(), String.t(), list()) ::
          {:ok, get_key_group_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_key_group_errors()}
  def get_key_group(%Client{} = client, id, options \\ []) do
    url_path = "/2020-05-31/key-group/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a key group configuration.

  To get a key group configuration, you must provide the key group's identifier.
  If the key group is referenced in a distribution's cache behavior, you can get
  the key group's identifier using `ListDistributions` or `GetDistribution`. If
  the key group is not referenced in a cache behavior, you can get the identifier
  using `ListKeyGroups`.
  """
  @spec get_key_group_config(map(), String.t(), list()) ::
          {:ok, get_key_group_config_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_key_group_config_errors()}
  def get_key_group_config(%Client{} = client, id, options \\ []) do
    url_path = "/2020-05-31/key-group/#{AWS.Util.encode_uri(id)}/config"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets details about the CloudFront managed ACM certificate.
  """
  @spec get_managed_certificate_details(map(), String.t(), list()) ::
          {:ok, get_managed_certificate_details_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_managed_certificate_details_errors()}
  def get_managed_certificate_details(%Client{} = client, identifier, options \\ []) do
    url_path = "/2020-05-31/managed-certificate/#{AWS.Util.encode_uri(identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about whether additional CloudWatch metrics are enabled for the
  specified CloudFront distribution.
  """
  @spec get_monitoring_subscription(map(), String.t(), list()) ::
          {:ok, get_monitoring_subscription_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_monitoring_subscription_errors()}
  def get_monitoring_subscription(%Client{} = client, distribution_id, options \\ []) do
    url_path =
      "/2020-05-31/distributions/#{AWS.Util.encode_uri(distribution_id)}/monitoring-subscription"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a CloudFront origin access control, including its unique identifier.
  """
  @spec get_origin_access_control(map(), String.t(), list()) ::
          {:ok, get_origin_access_control_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_origin_access_control_errors()}
  def get_origin_access_control(%Client{} = client, id, options \\ []) do
    url_path = "/2020-05-31/origin-access-control/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a CloudFront origin access control configuration.
  """
  @spec get_origin_access_control_config(map(), String.t(), list()) ::
          {:ok, get_origin_access_control_config_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_origin_access_control_config_errors()}
  def get_origin_access_control_config(%Client{} = client, id, options \\ []) do
    url_path = "/2020-05-31/origin-access-control/#{AWS.Util.encode_uri(id)}/config"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets an origin request policy, including the following metadata:

    * The policy's identifier.

    * The date and time when the policy was last modified.

  To get an origin request policy, you must provide the policy's identifier. If
  the origin request policy is attached to a distribution's cache behavior, you
  can get the policy's identifier using `ListDistributions` or `GetDistribution`.
  If the origin request policy is not attached to a cache behavior, you can get
  the identifier using `ListOriginRequestPolicies`.
  """
  @spec get_origin_request_policy(map(), String.t(), list()) ::
          {:ok, get_origin_request_policy_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_origin_request_policy_errors()}
  def get_origin_request_policy(%Client{} = client, id, options \\ []) do
    url_path = "/2020-05-31/origin-request-policy/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets an origin request policy configuration.

  To get an origin request policy configuration, you must provide the policy's
  identifier. If the origin request policy is attached to a distribution's cache
  behavior, you can get the policy's identifier using `ListDistributions` or
  `GetDistribution`. If the origin request policy is not attached to a cache
  behavior, you can get the identifier using `ListOriginRequestPolicies`.
  """
  @spec get_origin_request_policy_config(map(), String.t(), list()) ::
          {:ok, get_origin_request_policy_config_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_origin_request_policy_config_errors()}
  def get_origin_request_policy_config(%Client{} = client, id, options \\ []) do
    url_path = "/2020-05-31/origin-request-policy/#{AWS.Util.encode_uri(id)}/config"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a public key.
  """
  @spec get_public_key(map(), String.t(), list()) ::
          {:ok, get_public_key_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_public_key_errors()}
  def get_public_key(%Client{} = client, id, options \\ []) do
    url_path = "/2020-05-31/public-key/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a public key configuration.
  """
  @spec get_public_key_config(map(), String.t(), list()) ::
          {:ok, get_public_key_config_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_public_key_config_errors()}
  def get_public_key_config(%Client{} = client, id, options \\ []) do
    url_path = "/2020-05-31/public-key/#{AWS.Util.encode_uri(id)}/config"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a real-time log configuration.

  To get a real-time log configuration, you can provide the configuration's name
  or its Amazon Resource Name (ARN). You must provide at least one. If you provide
  both, CloudFront uses the name to identify the real-time log configuration to
  get.
  """
  @spec get_realtime_log_config(map(), get_realtime_log_config_request(), list()) ::
          {:ok, get_realtime_log_config_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_realtime_log_config_errors()}
  def get_realtime_log_config(%Client{} = client, input, options \\ []) do
    url_path = "/2020-05-31/get-realtime-log-config"
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
  Gets a response headers policy, including metadata (the policy's identifier and
  the date and time when the policy was last modified).

  To get a response headers policy, you must provide the policy's identifier. If
  the response headers policy is attached to a distribution's cache behavior, you
  can get the policy's identifier using `ListDistributions` or `GetDistribution`.
  If the response headers policy is not attached to a cache behavior, you can get
  the identifier using `ListResponseHeadersPolicies`.
  """
  @spec get_response_headers_policy(map(), String.t(), list()) ::
          {:ok, get_response_headers_policy_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_response_headers_policy_errors()}
  def get_response_headers_policy(%Client{} = client, id, options \\ []) do
    url_path = "/2020-05-31/response-headers-policy/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a response headers policy configuration.

  To get a response headers policy configuration, you must provide the policy's
  identifier. If the response headers policy is attached to a distribution's cache
  behavior, you can get the policy's identifier using `ListDistributions` or
  `GetDistribution`. If the response headers policy is not attached to a cache
  behavior, you can get the identifier using `ListResponseHeadersPolicies`.
  """
  @spec get_response_headers_policy_config(map(), String.t(), list()) ::
          {:ok, get_response_headers_policy_config_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_response_headers_policy_config_errors()}
  def get_response_headers_policy_config(%Client{} = client, id, options \\ []) do
    url_path = "/2020-05-31/response-headers-policy/#{AWS.Util.encode_uri(id)}/config"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a specified RTMP distribution, including the distribution
  configuration.
  """
  @spec get_streaming_distribution(map(), String.t(), list()) ::
          {:ok, get_streaming_distribution_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_streaming_distribution_errors()}
  def get_streaming_distribution(%Client{} = client, id, options \\ []) do
    url_path = "/2020-05-31/streaming-distribution/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get the configuration information about a streaming distribution.
  """
  @spec get_streaming_distribution_config(map(), String.t(), list()) ::
          {:ok, get_streaming_distribution_config_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_streaming_distribution_config_errors()}
  def get_streaming_distribution_config(%Client{} = client, id, options \\ []) do
    url_path = "/2020-05-31/streaming-distribution/#{AWS.Util.encode_uri(id)}/config"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get the details of an Amazon CloudFront VPC origin.
  """
  @spec get_vpc_origin(map(), String.t(), list()) ::
          {:ok, get_vpc_origin_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_vpc_origin_errors()}
  def get_vpc_origin(%Client{} = client, id, options \\ []) do
    url_path = "/2020-05-31/vpc-origin/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists your Anycast static IP lists.
  """
  @spec list_anycast_ip_lists(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_anycast_ip_lists_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_anycast_ip_lists_errors()}
  def list_anycast_ip_lists(%Client{} = client, marker \\ nil, max_items \\ nil, options \\ []) do
    url_path = "/2020-05-31/anycast-ip-list"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a list of cache policies.

  You can optionally apply a filter to return only the managed policies created by
  Amazon Web Services, or only the custom policies created in your Amazon Web
  Services account.

  You can optionally specify the maximum number of items to receive in the
  response. If the total number of items in the list exceeds the maximum that you
  specify, or the default maximum, the response is paginated. To get the next page
  of items, send a subsequent request that specifies the `NextMarker` value from
  the current response as the `Marker` value in the subsequent request.
  """
  @spec list_cache_policies(map(), String.t() | nil, String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_cache_policies_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_cache_policies_errors()}
  def list_cache_policies(
        %Client{} = client,
        marker \\ nil,
        max_items \\ nil,
        type \\ nil,
        options \\ []
      ) do
    url_path = "/2020-05-31/cache-policy"
    headers = []
    query_params = []

    query_params =
      if !is_nil(type) do
        [{"Type", type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists origin access identities.
  """
  @spec list_cloud_front_origin_access_identities(
          map(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_cloud_front_origin_access_identities_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_cloud_front_origin_access_identities_errors()}
  def list_cloud_front_origin_access_identities(
        %Client{} = client,
        marker \\ nil,
        max_items \\ nil,
        options \\ []
      ) do
    url_path = "/2020-05-31/origin-access-identity/cloudfront"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a list of aliases (also called CNAMEs or alternate domain names) that
  conflict or overlap with the provided alias, and the associated CloudFront
  distributions and Amazon Web Services accounts for each conflicting alias.

  In the returned list, the distribution and account IDs are partially hidden,
  which allows you to identify the distributions and accounts that you own, but
  helps to protect the information of ones that you don't own.

  Use this operation to find aliases that are in use in CloudFront that conflict
  or overlap with the provided alias. For example, if you provide
  `www.example.com` as input, the returned list can include `www.example.com` and
  the overlapping wildcard alternate domain name (`*.example.com`), if they exist.
  If you provide `*.example.com` as input, the returned list can include
  `*.example.com` and any alternate domain names covered by that wildcard (for
  example, `www.example.com`, `test.example.com`, `dev.example.com`, and so on),
  if they exist.

  To list conflicting aliases, you provide the alias to search and the ID of a
  distribution in your account that has an attached SSL/TLS certificate that
  includes the provided alias. For more information, including how to set up the
  distribution and certificate, see [Moving an alternate domain name to a different
  distribution](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/CNAMEs.html#alternate-domain-names-move)
  in the *Amazon CloudFront Developer Guide*.

  You can optionally specify the maximum number of items to receive in the
  response. If the total number of items in the list exceeds the maximum that you
  specify, or the default maximum, the response is paginated. To get the next page
  of items, send a subsequent request that specifies the `NextMarker` value from
  the current response as the `Marker` value in the subsequent request.
  """
  @spec list_conflicting_aliases(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_conflicting_aliases_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_conflicting_aliases_errors()}
  def list_conflicting_aliases(
        %Client{} = client,
        alias,
        distribution_id,
        marker \\ nil,
        max_items \\ nil,
        options \\ []
      ) do
    url_path = "/2020-05-31/conflicting-alias"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(distribution_id) do
        [{"DistributionId", distribution_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(alias) do
        [{"Alias", alias} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the connection groups in your Amazon Web Services account.
  """
  @spec list_connection_groups(map(), list_connection_groups_request(), list()) ::
          {:ok, list_connection_groups_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_connection_groups_errors()}
  def list_connection_groups(%Client{} = client, input, options \\ []) do
    url_path = "/2020-05-31/connection-groups"
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
  Gets a list of the continuous deployment policies in your Amazon Web Services
  account.

  You can optionally specify the maximum number of items to receive in the
  response. If the total number of items in the list exceeds the maximum that you
  specify, or the default maximum, the response is paginated. To get the next page
  of items, send a subsequent request that specifies the `NextMarker` value from
  the current response as the `Marker` value in the subsequent request.
  """
  @spec list_continuous_deployment_policies(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_continuous_deployment_policies_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_continuous_deployment_policies_errors()}
  def list_continuous_deployment_policies(
        %Client{} = client,
        marker \\ nil,
        max_items \\ nil,
        options \\ []
      ) do
    url_path = "/2020-05-31/continuous-deployment-policy"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the distribution tenants in your Amazon Web Services account.
  """
  @spec list_distribution_tenants(map(), list_distribution_tenants_request(), list()) ::
          {:ok, list_distribution_tenants_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_distribution_tenants_errors()}
  def list_distribution_tenants(%Client{} = client, input, options \\ []) do
    url_path = "/2020-05-31/distribution-tenants"
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
  Lists distribution tenants by the customization that you specify.

  You must specify either the `CertificateArn` parameter or `WebACLArn` parameter,
  but not both in the same request.
  """
  @spec list_distribution_tenants_by_customization(
          map(),
          list_distribution_tenants_by_customization_request(),
          list()
        ) ::
          {:ok, list_distribution_tenants_by_customization_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_distribution_tenants_by_customization_errors()}
  def list_distribution_tenants_by_customization(%Client{} = client, input, options \\ []) do
    url_path = "/2020-05-31/distribution-tenants-by-customization"
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
  List CloudFront distributions.
  """
  @spec list_distributions(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_distributions_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_distributions_errors()}
  def list_distributions(%Client{} = client, marker \\ nil, max_items \\ nil, options \\ []) do
    url_path = "/2020-05-31/distribution"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the distributions in your account that are associated with the specified
  `AnycastIpListId`.
  """
  @spec list_distributions_by_anycast_ip_list_id(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_distributions_by_anycast_ip_list_id_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_distributions_by_anycast_ip_list_id_errors()}
  def list_distributions_by_anycast_ip_list_id(
        %Client{} = client,
        anycast_ip_list_id,
        marker \\ nil,
        max_items \\ nil,
        options \\ []
      ) do
    url_path =
      "/2020-05-31/distributionsByAnycastIpListId/#{AWS.Util.encode_uri(anycast_ip_list_id)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a list of distribution IDs for distributions that have a cache behavior
  that's associated with the specified cache policy.

  You can optionally specify the maximum number of items to receive in the
  response. If the total number of items in the list exceeds the maximum that you
  specify, or the default maximum, the response is paginated. To get the next page
  of items, send a subsequent request that specifies the `NextMarker` value from
  the current response as the `Marker` value in the subsequent request.
  """
  @spec list_distributions_by_cache_policy_id(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_distributions_by_cache_policy_id_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_distributions_by_cache_policy_id_errors()}
  def list_distributions_by_cache_policy_id(
        %Client{} = client,
        cache_policy_id,
        marker \\ nil,
        max_items \\ nil,
        options \\ []
      ) do
    url_path = "/2020-05-31/distributionsByCachePolicyId/#{AWS.Util.encode_uri(cache_policy_id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the distributions by the connection mode that you specify.
  """
  @spec list_distributions_by_connection_mode(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_distributions_by_connection_mode_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_distributions_by_connection_mode_errors()}
  def list_distributions_by_connection_mode(
        %Client{} = client,
        connection_mode,
        marker \\ nil,
        max_items \\ nil,
        options \\ []
      ) do
    url_path = "/2020-05-31/distributionsByConnectionMode/#{AWS.Util.encode_uri(connection_mode)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a list of distribution IDs for distributions that have a cache behavior
  that references the specified key group.

  You can optionally specify the maximum number of items to receive in the
  response. If the total number of items in the list exceeds the maximum that you
  specify, or the default maximum, the response is paginated. To get the next page
  of items, send a subsequent request that specifies the `NextMarker` value from
  the current response as the `Marker` value in the subsequent request.
  """
  @spec list_distributions_by_key_group(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_distributions_by_key_group_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_distributions_by_key_group_errors()}
  def list_distributions_by_key_group(
        %Client{} = client,
        key_group_id,
        marker \\ nil,
        max_items \\ nil,
        options \\ []
      ) do
    url_path = "/2020-05-31/distributionsByKeyGroupId/#{AWS.Util.encode_uri(key_group_id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a list of distribution IDs for distributions that have a cache behavior
  that's associated with the specified origin request policy.

  You can optionally specify the maximum number of items to receive in the
  response. If the total number of items in the list exceeds the maximum that you
  specify, or the default maximum, the response is paginated. To get the next page
  of items, send a subsequent request that specifies the `NextMarker` value from
  the current response as the `Marker` value in the subsequent request.
  """
  @spec list_distributions_by_origin_request_policy_id(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_distributions_by_origin_request_policy_id_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_distributions_by_origin_request_policy_id_errors()}
  def list_distributions_by_origin_request_policy_id(
        %Client{} = client,
        origin_request_policy_id,
        marker \\ nil,
        max_items \\ nil,
        options \\ []
      ) do
    url_path =
      "/2020-05-31/distributionsByOriginRequestPolicyId/#{AWS.Util.encode_uri(origin_request_policy_id)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a list of distributions that have a cache behavior that's associated with
  the specified real-time log configuration.

  You can specify the real-time log configuration by its name or its Amazon
  Resource Name (ARN). You must provide at least one. If you provide both,
  CloudFront uses the name to identify the real-time log configuration to list
  distributions for.

  You can optionally specify the maximum number of items to receive in the
  response. If the total number of items in the list exceeds the maximum that you
  specify, or the default maximum, the response is paginated. To get the next page
  of items, send a subsequent request that specifies the `NextMarker` value from
  the current response as the `Marker` value in the subsequent request.
  """
  @spec list_distributions_by_realtime_log_config(
          map(),
          list_distributions_by_realtime_log_config_request(),
          list()
        ) ::
          {:ok, list_distributions_by_realtime_log_config_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_distributions_by_realtime_log_config_errors()}
  def list_distributions_by_realtime_log_config(%Client{} = client, input, options \\ []) do
    url_path = "/2020-05-31/distributionsByRealtimeLogConfig"
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
  Gets a list of distribution IDs for distributions that have a cache behavior
  that's associated with the specified response headers policy.

  You can optionally specify the maximum number of items to receive in the
  response. If the total number of items in the list exceeds the maximum that you
  specify, or the default maximum, the response is paginated. To get the next page
  of items, send a subsequent request that specifies the `NextMarker` value from
  the current response as the `Marker` value in the subsequent request.
  """
  @spec list_distributions_by_response_headers_policy_id(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_distributions_by_response_headers_policy_id_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_distributions_by_response_headers_policy_id_errors()}
  def list_distributions_by_response_headers_policy_id(
        %Client{} = client,
        response_headers_policy_id,
        marker \\ nil,
        max_items \\ nil,
        options \\ []
      ) do
    url_path =
      "/2020-05-31/distributionsByResponseHeadersPolicyId/#{AWS.Util.encode_uri(response_headers_policy_id)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List CloudFront distributions by their VPC origin ID.
  """
  @spec list_distributions_by_vpc_origin_id(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_distributions_by_vpc_origin_id_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_distributions_by_vpc_origin_id_errors()}
  def list_distributions_by_vpc_origin_id(
        %Client{} = client,
        vpc_origin_id,
        marker \\ nil,
        max_items \\ nil,
        options \\ []
      ) do
    url_path = "/2020-05-31/distributionsByVpcOriginId/#{AWS.Util.encode_uri(vpc_origin_id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List the distributions that are associated with a specified WAF web ACL.
  """
  @spec list_distributions_by_web_acl_id(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_distributions_by_web_acl_id_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_distributions_by_web_acl_id_errors()}
  def list_distributions_by_web_acl_id(
        %Client{} = client,
        web_acl_id,
        marker \\ nil,
        max_items \\ nil,
        options \\ []
      ) do
    url_path = "/2020-05-31/distributionsByWebACLId/#{AWS.Util.encode_uri(web_acl_id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists existing domain associations that conflict with the domain that you
  specify.

  You can use this API operation when transferring domains to identify potential
  domain conflicts. Domain conflicts must be resolved first before they can be
  moved.
  """
  @spec list_domain_conflicts(map(), list_domain_conflicts_request(), list()) ::
          {:ok, list_domain_conflicts_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_domain_conflicts_errors()}
  def list_domain_conflicts(%Client{} = client, input, options \\ []) do
    url_path = "/2020-05-31/domain-conflicts"
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
  List all field-level encryption configurations that have been created in
  CloudFront for this account.
  """
  @spec list_field_level_encryption_configs(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_field_level_encryption_configs_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_field_level_encryption_configs_errors()}
  def list_field_level_encryption_configs(
        %Client{} = client,
        marker \\ nil,
        max_items \\ nil,
        options \\ []
      ) do
    url_path = "/2020-05-31/field-level-encryption"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Request a list of field-level encryption profiles that have been created in
  CloudFront for this account.
  """
  @spec list_field_level_encryption_profiles(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_field_level_encryption_profiles_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_field_level_encryption_profiles_errors()}
  def list_field_level_encryption_profiles(
        %Client{} = client,
        marker \\ nil,
        max_items \\ nil,
        options \\ []
      ) do
    url_path = "/2020-05-31/field-level-encryption-profile"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a list of all CloudFront functions in your Amazon Web Services account.

  You can optionally apply a filter to return only the functions that are in the
  specified stage, either `DEVELOPMENT` or `LIVE`.

  You can optionally specify the maximum number of items to receive in the
  response. If the total number of items in the list exceeds the maximum that you
  specify, or the default maximum, the response is paginated. To get the next page
  of items, send a subsequent request that specifies the `NextMarker` value from
  the current response as the `Marker` value in the subsequent request.
  """
  @spec list_functions(map(), String.t() | nil, String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_functions_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_functions_errors()}
  def list_functions(
        %Client{} = client,
        marker \\ nil,
        max_items \\ nil,
        stage \\ nil,
        options \\ []
      ) do
    url_path = "/2020-05-31/function"
    headers = []
    query_params = []

    query_params =
      if !is_nil(stage) do
        [{"Stage", stage} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists invalidation batches.
  """
  @spec list_invalidations(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_invalidations_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_invalidations_errors()}
  def list_invalidations(
        %Client{} = client,
        distribution_id,
        marker \\ nil,
        max_items \\ nil,
        options \\ []
      ) do
    url_path = "/2020-05-31/distribution/#{AWS.Util.encode_uri(distribution_id)}/invalidation"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the invalidations for a distribution tenant.
  """
  @spec list_invalidations_for_distribution_tenant(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_invalidations_for_distribution_tenant_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_invalidations_for_distribution_tenant_errors()}
  def list_invalidations_for_distribution_tenant(
        %Client{} = client,
        id,
        marker \\ nil,
        max_items \\ nil,
        options \\ []
      ) do
    url_path = "/2020-05-31/distribution-tenant/#{AWS.Util.encode_uri(id)}/invalidation"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a list of key groups.

  You can optionally specify the maximum number of items to receive in the
  response. If the total number of items in the list exceeds the maximum that you
  specify, or the default maximum, the response is paginated. To get the next page
  of items, send a subsequent request that specifies the `NextMarker` value from
  the current response as the `Marker` value in the subsequent request.
  """
  @spec list_key_groups(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_key_groups_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_key_groups_errors()}
  def list_key_groups(%Client{} = client, marker \\ nil, max_items \\ nil, options \\ []) do
    url_path = "/2020-05-31/key-group"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Specifies the key value stores to list.
  """
  @spec list_key_value_stores(map(), String.t() | nil, String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_key_value_stores_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_key_value_stores_errors()}
  def list_key_value_stores(
        %Client{} = client,
        marker \\ nil,
        max_items \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path = "/2020-05-31/key-value-store"
    headers = []
    query_params = []

    query_params =
      if !is_nil(status) do
        [{"Status", status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the list of CloudFront origin access controls (OACs) in this Amazon Web
  Services account.

  You can optionally specify the maximum number of items to receive in the
  response. If the total number of items in the list exceeds the maximum that you
  specify, or the default maximum, the response is paginated. To get the next page
  of items, send another request that specifies the `NextMarker` value from the
  current response as the `Marker` value in the next request.

  If you're not using origin access controls for your Amazon Web Services account,
  the `ListOriginAccessControls` operation doesn't return the `Items` element in
  the response.
  """
  @spec list_origin_access_controls(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_origin_access_controls_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_origin_access_controls_errors()}
  def list_origin_access_controls(
        %Client{} = client,
        marker \\ nil,
        max_items \\ nil,
        options \\ []
      ) do
    url_path = "/2020-05-31/origin-access-control"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a list of origin request policies.

  You can optionally apply a filter to return only the managed policies created by
  Amazon Web Services, or only the custom policies created in your Amazon Web
  Services account.

  You can optionally specify the maximum number of items to receive in the
  response. If the total number of items in the list exceeds the maximum that you
  specify, or the default maximum, the response is paginated. To get the next page
  of items, send a subsequent request that specifies the `NextMarker` value from
  the current response as the `Marker` value in the subsequent request.
  """
  @spec list_origin_request_policies(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_origin_request_policies_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_origin_request_policies_errors()}
  def list_origin_request_policies(
        %Client{} = client,
        marker \\ nil,
        max_items \\ nil,
        type \\ nil,
        options \\ []
      ) do
    url_path = "/2020-05-31/origin-request-policy"
    headers = []
    query_params = []

    query_params =
      if !is_nil(type) do
        [{"Type", type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List all public keys that have been added to CloudFront for this account.
  """
  @spec list_public_keys(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_public_keys_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_public_keys_errors()}
  def list_public_keys(%Client{} = client, marker \\ nil, max_items \\ nil, options \\ []) do
    url_path = "/2020-05-31/public-key"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a list of real-time log configurations.

  You can optionally specify the maximum number of items to receive in the
  response. If the total number of items in the list exceeds the maximum that you
  specify, or the default maximum, the response is paginated. To get the next page
  of items, send a subsequent request that specifies the `NextMarker` value from
  the current response as the `Marker` value in the subsequent request.
  """
  @spec list_realtime_log_configs(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_realtime_log_configs_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_realtime_log_configs_errors()}
  def list_realtime_log_configs(
        %Client{} = client,
        marker \\ nil,
        max_items \\ nil,
        options \\ []
      ) do
    url_path = "/2020-05-31/realtime-log-config"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a list of response headers policies.

  You can optionally apply a filter to get only the managed policies created by
  Amazon Web Services, or only the custom policies created in your Amazon Web
  Services account.

  You can optionally specify the maximum number of items to receive in the
  response. If the total number of items in the list exceeds the maximum that you
  specify, or the default maximum, the response is paginated. To get the next page
  of items, send a subsequent request that specifies the `NextMarker` value from
  the current response as the `Marker` value in the subsequent request.
  """
  @spec list_response_headers_policies(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_response_headers_policies_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_response_headers_policies_errors()}
  def list_response_headers_policies(
        %Client{} = client,
        marker \\ nil,
        max_items \\ nil,
        type \\ nil,
        options \\ []
      ) do
    url_path = "/2020-05-31/response-headers-policy"
    headers = []
    query_params = []

    query_params =
      if !is_nil(type) do
        [{"Type", type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List streaming distributions.
  """
  @spec list_streaming_distributions(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_streaming_distributions_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_streaming_distributions_errors()}
  def list_streaming_distributions(
        %Client{} = client,
        marker \\ nil,
        max_items \\ nil,
        options \\ []
      ) do
    url_path = "/2020-05-31/streaming-distribution"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List tags for a CloudFront resource.

  For more information, see [Tagging a distribution](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/tagging.html)
  in the *Amazon CloudFront Developer Guide*.
  """
  @spec list_tags_for_resource(map(), String.t(), list()) ::
          {:ok, list_tags_for_resource_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource, options \\ []) do
    url_path = "/2020-05-31/tagging"
    headers = []
    query_params = []

    query_params =
      if !is_nil(resource) do
        [{"Resource", resource} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List the CloudFront VPC origins in your account.
  """
  @spec list_vpc_origins(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_vpc_origins_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_vpc_origins_errors()}
  def list_vpc_origins(%Client{} = client, marker \\ nil, max_items \\ nil, options \\ []) do
    url_path = "/2020-05-31/vpc-origin"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Publishes a CloudFront function by copying the function code from the
  `DEVELOPMENT` stage to `LIVE`.

  This automatically updates all cache behaviors that are using this function to
  use the newly published copy in the `LIVE` stage.

  When a function is published to the `LIVE` stage, you can attach the function to
  a distribution's cache behavior, using the function's Amazon Resource Name
  (ARN).

  To publish a function, you must provide the function's name and version (`ETag`
  value). To get these values, you can use `ListFunctions` and `DescribeFunction`.
  """
  @spec publish_function(map(), String.t(), publish_function_request(), list()) ::
          {:ok, publish_function_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, publish_function_errors()}
  def publish_function(%Client{} = client, name, input, options \\ []) do
    url_path = "/2020-05-31/function/#{AWS.Util.encode_uri(name)}/publish"

    {headers, input} =
      [
        {"IfMatch", "If-Match"}
      ]
      |> Request.build_params(input)

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
  Add tags to a CloudFront resource.

  For more information, see [Tagging a distribution](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/tagging.html)
  in the *Amazon CloudFront Developer Guide*.
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/2020-05-31/tagging?Operation=Tag"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"Resource", "Resource"}
      ]
      |> Request.build_params(input)

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
  Tests a CloudFront function.

  To test a function, you provide an *event object* that represents an HTTP
  request or response that your CloudFront distribution could receive in
  production. CloudFront runs the function, passing it the event object that you
  provided, and returns the function's result (the modified event object) in the
  response. The response also contains function logs and error messages, if any
  exist. For more information about testing functions, see [Testing functions](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/managing-functions.html#test-function)
  in the *Amazon CloudFront Developer Guide*.

  To test a function, you provide the function's name and version (`ETag` value)
  along with the event object. To get the function's name and version, you can use
  `ListFunctions` and `DescribeFunction`.
  """
  @spec test_function(map(), String.t(), test_function_request(), list()) ::
          {:ok, test_function_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, test_function_errors()}
  def test_function(%Client{} = client, name, input, options \\ []) do
    url_path = "/2020-05-31/function/#{AWS.Util.encode_uri(name)}/test"

    {headers, input} =
      [
        {"IfMatch", "If-Match"}
      ]
      |> Request.build_params(input)

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
  Remove tags from a CloudFront resource.

  For more information, see [Tagging a distribution](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/tagging.html)
  in the *Amazon CloudFront Developer Guide*.
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/2020-05-31/tagging?Operation=Untag"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"Resource", "Resource"}
      ]
      |> Request.build_params(input)

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
  Updates a cache policy configuration.

  When you update a cache policy configuration, all the fields are updated with
  the values provided in the request. You cannot update some fields independent of
  others. To update a cache policy configuration:

    1. Use `GetCachePolicyConfig` to get the current configuration.

    2. Locally modify the fields in the cache policy configuration that
  you want to update.

    3. Call `UpdateCachePolicy` by providing the entire cache policy
  configuration, including the fields that you modified and those that you didn't.
  """
  @spec update_cache_policy(map(), String.t(), update_cache_policy_request(), list()) ::
          {:ok, update_cache_policy_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_cache_policy_errors()}
  def update_cache_policy(%Client{} = client, id, input, options \\ []) do
    url_path = "/2020-05-31/cache-policy/#{AWS.Util.encode_uri(id)}"

    {headers, input} =
      [
        {"IfMatch", "If-Match"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

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
  Update an origin access identity.
  """
  @spec update_cloud_front_origin_access_identity(
          map(),
          String.t(),
          update_cloud_front_origin_access_identity_request(),
          list()
        ) ::
          {:ok, update_cloud_front_origin_access_identity_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_cloud_front_origin_access_identity_errors()}
  def update_cloud_front_origin_access_identity(%Client{} = client, id, input, options \\ []) do
    url_path = "/2020-05-31/origin-access-identity/cloudfront/#{AWS.Util.encode_uri(id)}/config"

    {headers, input} =
      [
        {"IfMatch", "If-Match"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

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
  Updates a connection group.
  """
  @spec update_connection_group(map(), String.t(), update_connection_group_request(), list()) ::
          {:ok, update_connection_group_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_connection_group_errors()}
  def update_connection_group(%Client{} = client, id, input, options \\ []) do
    url_path = "/2020-05-31/connection-group/#{AWS.Util.encode_uri(id)}"

    {headers, input} =
      [
        {"IfMatch", "If-Match"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

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
  Updates a continuous deployment policy.

  You can update a continuous deployment policy to enable or disable it, to change
  the percentage of traffic that it sends to the staging distribution, or to
  change the staging distribution that it sends traffic to.

  When you update a continuous deployment policy configuration, all the fields are
  updated with the values that are provided in the request. You cannot update some
  fields independent of others. To update a continuous deployment policy
  configuration:

    1. Use `GetContinuousDeploymentPolicyConfig` to get the current
  configuration.

    2. Locally modify the fields in the continuous deployment policy
  configuration that you want to update.

    3. Use `UpdateContinuousDeploymentPolicy`, providing the entire
  continuous deployment policy configuration, including the fields that you
  modified and those that you didn't.
  """
  @spec update_continuous_deployment_policy(
          map(),
          String.t(),
          update_continuous_deployment_policy_request(),
          list()
        ) ::
          {:ok, update_continuous_deployment_policy_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_continuous_deployment_policy_errors()}
  def update_continuous_deployment_policy(%Client{} = client, id, input, options \\ []) do
    url_path = "/2020-05-31/continuous-deployment-policy/#{AWS.Util.encode_uri(id)}"

    {headers, input} =
      [
        {"IfMatch", "If-Match"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

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
  Updates the configuration for a CloudFront distribution.

  The update process includes getting the current distribution configuration,
  updating it to make your changes, and then submitting an `UpdateDistribution`
  request to make the updates.

  ## To update a web distribution using the CloudFront API

    1. Use `GetDistributionConfig` to get the current configuration,
  including the version identifier (`ETag`).

    2. Update the distribution configuration that was returned in the
  response. Note the following important requirements and restrictions:

      * You must copy the `ETag` field value from the
  response. (You'll use it for the `IfMatch` parameter in your request.) Then,
  remove the `ETag` field from the distribution configuration.

      * You can't change the value of `CallerReference`.

    3. Submit an `UpdateDistribution` request, providing the updated
  distribution configuration. The new configuration replaces the existing
  configuration. The values that you specify in an `UpdateDistribution` request
  are not merged into your existing configuration. Make sure to include all
  fields: the ones that you modified and also the ones that you didn't.
  """
  @spec update_distribution(map(), String.t(), update_distribution_request(), list()) ::
          {:ok, update_distribution_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_distribution_errors()}
  def update_distribution(%Client{} = client, id, input, options \\ []) do
    url_path = "/2020-05-31/distribution/#{AWS.Util.encode_uri(id)}/config"

    {headers, input} =
      [
        {"IfMatch", "If-Match"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

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
  Updates a distribution tenant.
  """
  @spec update_distribution_tenant(
          map(),
          String.t(),
          update_distribution_tenant_request(),
          list()
        ) ::
          {:ok, update_distribution_tenant_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_distribution_tenant_errors()}
  def update_distribution_tenant(%Client{} = client, id, input, options \\ []) do
    url_path = "/2020-05-31/distribution-tenant/#{AWS.Util.encode_uri(id)}"

    {headers, input} =
      [
        {"IfMatch", "If-Match"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

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
  Copies the staging distribution's configuration to its corresponding primary
  distribution.

  The primary distribution retains its `Aliases` (also known as alternate domain
  names or CNAMEs) and `ContinuousDeploymentPolicyId` value, but otherwise its
  configuration is overwritten to match the staging distribution.

  You can use this operation in a continuous deployment workflow after you have
  tested configuration changes on the staging distribution. After using a
  continuous deployment policy to move a portion of your domain name's traffic to
  the staging distribution and verifying that it works as intended, you can use
  this operation to copy the staging distribution's configuration to the primary
  distribution. This action will disable the continuous deployment policy and move
  your domain's traffic back to the primary distribution.

  This API operation requires the following IAM permissions:

    *
  [GetDistribution](https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_GetDistribution.html)     *
  [UpdateDistribution](https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_UpdateDistribution.html)
  """
  @spec update_distribution_with_staging_config(
          map(),
          String.t(),
          update_distribution_with_staging_config_request(),
          list()
        ) ::
          {:ok, update_distribution_with_staging_config_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_distribution_with_staging_config_errors()}
  def update_distribution_with_staging_config(%Client{} = client, id, input, options \\ []) do
    url_path = "/2020-05-31/distribution/#{AWS.Util.encode_uri(id)}/promote-staging-config"

    {headers, input} =
      [
        {"IfMatch", "If-Match"}
      ]
      |> Request.build_params(input)

    custom_headers = []

    {query_params, input} =
      [
        {"StagingDistributionId", "StagingDistributionId"}
      ]
      |> Request.build_params(input)

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

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
  Moves a domain from its current distribution or distribution tenant to another
  one.
  """
  @spec update_domain_association(map(), update_domain_association_request(), list()) ::
          {:ok, update_domain_association_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_domain_association_errors()}
  def update_domain_association(%Client{} = client, input, options \\ []) do
    url_path = "/2020-05-31/domain-association"

    {headers, input} =
      [
        {"IfMatch", "If-Match"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
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
      200
    )
  end

  @doc """
  Update a field-level encryption configuration.
  """
  @spec update_field_level_encryption_config(
          map(),
          String.t(),
          update_field_level_encryption_config_request(),
          list()
        ) ::
          {:ok, update_field_level_encryption_config_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_field_level_encryption_config_errors()}
  def update_field_level_encryption_config(%Client{} = client, id, input, options \\ []) do
    url_path = "/2020-05-31/field-level-encryption/#{AWS.Util.encode_uri(id)}/config"

    {headers, input} =
      [
        {"IfMatch", "If-Match"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

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
  Update a field-level encryption profile.
  """
  @spec update_field_level_encryption_profile(
          map(),
          String.t(),
          update_field_level_encryption_profile_request(),
          list()
        ) ::
          {:ok, update_field_level_encryption_profile_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_field_level_encryption_profile_errors()}
  def update_field_level_encryption_profile(%Client{} = client, id, input, options \\ []) do
    url_path = "/2020-05-31/field-level-encryption-profile/#{AWS.Util.encode_uri(id)}/config"

    {headers, input} =
      [
        {"IfMatch", "If-Match"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

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
  Updates a CloudFront function.

  You can update a function's code or the comment that describes the function. You
  cannot update a function's name.

  To update a function, you provide the function's name and version (`ETag` value)
  along with the updated function code. To get the name and version, you can use
  `ListFunctions` and `DescribeFunction`.
  """
  @spec update_function(map(), String.t(), update_function_request(), list()) ::
          {:ok, update_function_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_function_errors()}
  def update_function(%Client{} = client, name, input, options \\ []) do
    url_path = "/2020-05-31/function/#{AWS.Util.encode_uri(name)}"

    {headers, input} =
      [
        {"IfMatch", "If-Match"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETtag", "ETag"}]
      )

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
  Updates a key group.

  When you update a key group, all the fields are updated with the values provided
  in the request. You cannot update some fields independent of others. To update a
  key group:

    1. Get the current key group with `GetKeyGroup` or
  `GetKeyGroupConfig`.

    2. Locally modify the fields in the key group that you want to
  update. For example, add or remove public key IDs.

    3. Call `UpdateKeyGroup` with the entire key group object, including
  the fields that you modified and those that you didn't.
  """
  @spec update_key_group(map(), String.t(), update_key_group_request(), list()) ::
          {:ok, update_key_group_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_key_group_errors()}
  def update_key_group(%Client{} = client, id, input, options \\ []) do
    url_path = "/2020-05-31/key-group/#{AWS.Util.encode_uri(id)}"

    {headers, input} =
      [
        {"IfMatch", "If-Match"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

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
  Specifies the key value store to update.
  """
  @spec update_key_value_store(map(), String.t(), update_key_value_store_request(), list()) ::
          {:ok, update_key_value_store_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_key_value_store_errors()}
  def update_key_value_store(%Client{} = client, name, input, options \\ []) do
    url_path = "/2020-05-31/key-value-store/#{AWS.Util.encode_uri(name)}"

    {headers, input} =
      [
        {"IfMatch", "If-Match"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

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
  Updates a CloudFront origin access control.
  """
  @spec update_origin_access_control(
          map(),
          String.t(),
          update_origin_access_control_request(),
          list()
        ) ::
          {:ok, update_origin_access_control_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_origin_access_control_errors()}
  def update_origin_access_control(%Client{} = client, id, input, options \\ []) do
    url_path = "/2020-05-31/origin-access-control/#{AWS.Util.encode_uri(id)}/config"

    {headers, input} =
      [
        {"IfMatch", "If-Match"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

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
  Updates an origin request policy configuration.

  When you update an origin request policy configuration, all the fields are
  updated with the values provided in the request. You cannot update some fields
  independent of others. To update an origin request policy configuration:

    1. Use `GetOriginRequestPolicyConfig` to get the current
  configuration.

    2. Locally modify the fields in the origin request policy
  configuration that you want to update.

    3. Call `UpdateOriginRequestPolicy` by providing the entire origin
  request policy configuration, including the fields that you modified and those
  that you didn't.
  """
  @spec update_origin_request_policy(
          map(),
          String.t(),
          update_origin_request_policy_request(),
          list()
        ) ::
          {:ok, update_origin_request_policy_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_origin_request_policy_errors()}
  def update_origin_request_policy(%Client{} = client, id, input, options \\ []) do
    url_path = "/2020-05-31/origin-request-policy/#{AWS.Util.encode_uri(id)}"

    {headers, input} =
      [
        {"IfMatch", "If-Match"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

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
  Update public key information.

  Note that the only value you can change is the comment.
  """
  @spec update_public_key(map(), String.t(), update_public_key_request(), list()) ::
          {:ok, update_public_key_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_public_key_errors()}
  def update_public_key(%Client{} = client, id, input, options \\ []) do
    url_path = "/2020-05-31/public-key/#{AWS.Util.encode_uri(id)}/config"

    {headers, input} =
      [
        {"IfMatch", "If-Match"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

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
  Updates a real-time log configuration.

  When you update a real-time log configuration, all the parameters are updated
  with the values provided in the request. You cannot update some parameters
  independent of others. To update a real-time log configuration:

    1. Call `GetRealtimeLogConfig` to get the current real-time log
  configuration.

    2. Locally modify the parameters in the real-time log configuration
  that you want to update.

    3. Call this API (`UpdateRealtimeLogConfig`) by providing the entire
  real-time log configuration, including the parameters that you modified and
  those that you didn't.

  You cannot update a real-time log configuration's `Name` or `ARN`.
  """
  @spec update_realtime_log_config(map(), update_realtime_log_config_request(), list()) ::
          {:ok, update_realtime_log_config_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_realtime_log_config_errors()}
  def update_realtime_log_config(%Client{} = client, input, options \\ []) do
    url_path = "/2020-05-31/realtime-log-config"
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
  Updates a response headers policy.

  When you update a response headers policy, the entire policy is replaced. You
  cannot update some policy fields independent of others. To update a response
  headers policy configuration:

    1. Use `GetResponseHeadersPolicyConfig` to get the current policy's
  configuration.

    2. Modify the fields in the response headers policy configuration
  that you want to update.

    3. Call `UpdateResponseHeadersPolicy`, providing the entire response
  headers policy configuration, including the fields that you modified and those
  that you didn't.
  """
  @spec update_response_headers_policy(
          map(),
          String.t(),
          update_response_headers_policy_request(),
          list()
        ) ::
          {:ok, update_response_headers_policy_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_response_headers_policy_errors()}
  def update_response_headers_policy(%Client{} = client, id, input, options \\ []) do
    url_path = "/2020-05-31/response-headers-policy/#{AWS.Util.encode_uri(id)}"

    {headers, input} =
      [
        {"IfMatch", "If-Match"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

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
  Update a streaming distribution.
  """
  @spec update_streaming_distribution(
          map(),
          String.t(),
          update_streaming_distribution_request(),
          list()
        ) ::
          {:ok, update_streaming_distribution_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_streaming_distribution_errors()}
  def update_streaming_distribution(%Client{} = client, id, input, options \\ []) do
    url_path = "/2020-05-31/streaming-distribution/#{AWS.Util.encode_uri(id)}/config"

    {headers, input} =
      [
        {"IfMatch", "If-Match"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

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
  Update an Amazon CloudFront VPC origin in your account.
  """
  @spec update_vpc_origin(map(), String.t(), update_vpc_origin_request(), list()) ::
          {:ok, update_vpc_origin_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_vpc_origin_errors()}
  def update_vpc_origin(%Client{} = client, id, input, options \\ []) do
    url_path = "/2020-05-31/vpc-origin/#{AWS.Util.encode_uri(id)}"

    {headers, input} =
      [
        {"IfMatch", "If-Match"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

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
      202
    )
  end

  @doc """
  Verify the DNS configuration for your domain names.

  This API operation checks whether your domain name points to the correct routing
  endpoint of the connection group, such as d111111abcdef8.cloudfront.net. You can
  use this API operation to troubleshoot and resolve DNS configuration issues.
  """
  @spec verify_dns_configuration(map(), verify_dns_configuration_request(), list()) ::
          {:ok, verify_dns_configuration_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, verify_dns_configuration_errors()}
  def verify_dns_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/2020-05-31/verify-dns-configuration"
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
