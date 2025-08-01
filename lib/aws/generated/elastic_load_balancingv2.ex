# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ElasticLoadBalancingv2 do
  @moduledoc """
  Elastic Load Balancing

  A load balancer distributes incoming traffic across targets, such as your EC2
  instances.

  This enables you to increase the availability of your application. The load
  balancer also
  monitors the health of its registered targets and ensures that it routes traffic
  only to
  healthy targets. You configure your load balancer to accept incoming traffic by
  specifying one
  or more listeners, which are configured with a protocol and port number for
  connections from
  clients to the load balancer. You configure a target group with a protocol and
  port number for
  connections from the load balancer to the targets, and with health check
  settings to be used
  when checking the health status of the targets.

  Elastic Load Balancing supports the following types of load balancers:
  Application Load
  Balancers, Network Load Balancers, Gateway Load Balancers, and Classic Load
  Balancers. This
  reference covers the following load balancer types:

    *
  Application Load Balancer - Operates at the application layer (layer 7) and
  supports
  HTTP and HTTPS.

    *
  Network Load Balancer - Operates at the transport layer (layer 4) and supports
  TCP,
  TLS, and UDP.

    *
  Gateway Load Balancer - Operates at the network layer (layer 3).

  For more information, see the [Elastic Load Balancing User Guide](https://docs.aws.amazon.com/elasticloadbalancing/latest/userguide/).

  All Elastic Load Balancing operations are idempotent, which means that they
  complete at
  most one time. If you repeat an operation, it succeeds.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      describe_listener_attributes_input() :: %{
        required("ListenerArn") => String.t() | atom()
      }
      
  """
  @type describe_listener_attributes_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      target_health() :: %{
        "Description" => String.t() | atom(),
        "Reason" => list(any()),
        "State" => list(any())
      }
      
  """
  @type target_health() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_target_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type invalid_target_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_rules_input() :: %{
        optional("ListenerArn") => String.t() | atom(),
        optional("Marker") => String.t() | atom(),
        optional("PageSize") => integer(),
        optional("RuleArns") => list(String.t() | atom())
      }
      
  """
  @type describe_rules_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_trust_store_ca_certificates_bundle_output() :: %{
        "Location" => String.t() | atom()
      }
      
  """
  @type get_trust_store_ca_certificates_bundle_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_capacity_reservation_output() :: %{
        "CapacityReservationState" => list(zonal_capacity_reservation_state()),
        "DecreaseRequestsRemaining" => integer(),
        "LastModifiedTime" => non_neg_integer(),
        "MinimumLoadBalancerCapacity" => minimum_load_balancer_capacity()
      }
      
  """
  @type describe_capacity_reservation_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      trust_store_revocation() :: %{
        "NumberOfRevokedEntries" => float(),
        "RevocationId" => float(),
        "RevocationType" => list(any()),
        "TrustStoreArn" => String.t() | atom()
      }
      
  """
  @type trust_store_revocation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      minimum_load_balancer_capacity() :: %{
        "CapacityUnits" => integer()
      }
      
  """
  @type minimum_load_balancer_capacity() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      availability_zone() :: %{
        "LoadBalancerAddresses" => list(load_balancer_address()),
        "OutpostId" => String.t() | atom(),
        "SourceNatIpv6Prefixes" => list(String.t() | atom()),
        "SubnetId" => String.t() | atom(),
        "ZoneName" => String.t() | atom()
      }
      
  """
  @type availability_zone() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_resource_policy_output() :: %{
        "Policy" => String.t() | atom()
      }
      
  """
  @type get_resource_policy_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      revocation_content() :: %{
        "RevocationType" => list(any()),
        "S3Bucket" => String.t() | atom(),
        "S3Key" => String.t() | atom(),
        "S3ObjectVersion" => String.t() | atom()
      }
      
  """
  @type revocation_content() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_listener_output() :: %{}
      
  """
  @type delete_listener_output() :: %{}

  @typedoc """

  ## Example:
      
      administrative_override() :: %{
        "Description" => String.t() | atom(),
        "Reason" => list(any()),
        "State" => list(any())
      }
      
  """
  @type administrative_override() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      add_trust_store_revocations_output() :: %{
        "TrustStoreRevocations" => list(trust_store_revocation())
      }
      
  """
  @type add_trust_store_revocations_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_target_group_output() :: %{
        "TargetGroups" => list(target_group())
      }
      
  """
  @type create_target_group_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      listener() :: %{
        "AlpnPolicy" => list(String.t() | atom()),
        "Certificates" => list(certificate()),
        "DefaultActions" => list(action()),
        "ListenerArn" => String.t() | atom(),
        "LoadBalancerArn" => String.t() | atom(),
        "MutualAuthentication" => mutual_authentication_attributes(),
        "Port" => integer(),
        "Protocol" => list(any()),
        "SslPolicy" => String.t() | atom()
      }
      
  """
  @type listener() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_in_use_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type resource_in_use_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      availability_zone_not_supported_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type availability_zone_not_supported_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_listener_input() :: %{
        optional("AlpnPolicy") => list(String.t() | atom()),
        optional("Certificates") => list(certificate()),
        optional("MutualAuthentication") => mutual_authentication_attributes(),
        optional("Port") => integer(),
        optional("Protocol") => list(any()),
        optional("SslPolicy") => String.t() | atom(),
        optional("Tags") => list(tag()),
        required("DefaultActions") => list(action()),
        required("LoadBalancerArn") => String.t() | atom()
      }
      
  """
  @type create_listener_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_load_balancer_output() :: %{}
      
  """
  @type delete_load_balancer_output() :: %{}

  @typedoc """

  ## Example:
      
      add_listener_certificates_output() :: %{
        "Certificates" => list(certificate())
      }
      
  """
  @type add_listener_certificates_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      modify_target_group_output() :: %{
        "TargetGroups" => list(target_group())
      }
      
  """
  @type modify_target_group_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      set_security_groups_input() :: %{
        optional("EnforceSecurityGroupInboundRulesOnPrivateLinkTraffic") => list(any()),
        required("LoadBalancerArn") => String.t() | atom(),
        required("SecurityGroups") => list(String.t() | atom())
      }
      
  """
  @type set_security_groups_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      add_tags_output() :: %{}
      
  """
  @type add_tags_output() :: %{}

  @typedoc """

  ## Example:
      
      modify_trust_store_input() :: %{
        optional("CaCertificatesBundleS3ObjectVersion") => String.t() | atom(),
        required("CaCertificatesBundleS3Bucket") => String.t() | atom(),
        required("CaCertificatesBundleS3Key") => String.t() | atom(),
        required("TrustStoreArn") => String.t() | atom()
      }
      
  """
  @type modify_trust_store_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      modify_target_group_attributes_input() :: %{
        required("Attributes") => list(target_group_attribute()),
        required("TargetGroupArn") => String.t() | atom()
      }
      
  """
  @type modify_target_group_attributes_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      add_listener_certificates_input() :: %{
        required("Certificates") => list(certificate()),
        required("ListenerArn") => String.t() | atom()
      }
      
  """
  @type add_listener_certificates_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      set_subnets_input() :: %{
        optional("EnablePrefixForIpv6SourceNat") => list(any()),
        optional("IpAddressType") => list(any()),
        optional("SubnetMappings") => list(subnet_mapping()),
        optional("Subnets") => list(String.t() | atom()),
        required("LoadBalancerArn") => String.t() | atom()
      }
      
  """
  @type set_subnets_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      subnet_mapping() :: %{
        "AllocationId" => String.t() | atom(),
        "IPv6Address" => String.t() | atom(),
        "PrivateIPv4Address" => String.t() | atom(),
        "SourceNatIpv6Prefix" => String.t() | atom(),
        "SubnetId" => String.t() | atom()
      }
      
  """
  @type subnet_mapping() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      ssl_policy() :: %{
        "Ciphers" => list(cipher()),
        "Name" => String.t() | atom(),
        "SslProtocols" => list(String.t() | atom()),
        "SupportedLoadBalancerTypes" => list(String.t() | atom())
      }
      
  """
  @type ssl_policy() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      fixed_response_action_config() :: %{
        "ContentType" => String.t() | atom(),
        "MessageBody" => String.t() | atom(),
        "StatusCode" => String.t() | atom()
      }
      
  """
  @type fixed_response_action_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      modify_listener_output() :: %{
        "Listeners" => list(listener())
      }
      
  """
  @type modify_listener_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      deregister_targets_input() :: %{
        required("TargetGroupArn") => String.t() | atom(),
        required("Targets") => list(target_description())
      }
      
  """
  @type deregister_targets_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      trust_store_association() :: %{
        "ResourceArn" => String.t() | atom()
      }
      
  """
  @type trust_store_association() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      add_tags_input() :: %{
        required("ResourceArns") => list(String.t() | atom()),
        required("Tags") => list(tag())
      }
      
  """
  @type add_tags_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      mutual_authentication_attributes() :: %{
        "AdvertiseTrustStoreCaNames" => list(any()),
        "IgnoreClientCertificateExpiry" => boolean(),
        "Mode" => String.t() | atom(),
        "TrustStoreArn" => String.t() | atom(),
        "TrustStoreAssociationStatus" => list(any())
      }
      
  """
  @type mutual_authentication_attributes() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      limit() :: %{
        "Max" => String.t() | atom(),
        "Name" => String.t() | atom()
      }
      
  """
  @type limit() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_configuration_request_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type invalid_configuration_request_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      subnet_not_found_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type subnet_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_rule_output() :: %{
        "Rules" => list(rule())
      }
      
  """
  @type create_rule_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      add_trust_store_revocations_input() :: %{
        optional("RevocationContents") => list(revocation_content()),
        required("TrustStoreArn") => String.t() | atom()
      }
      
  """
  @type add_trust_store_revocations_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_target_group_attributes_output() :: %{
        "Attributes" => list(target_group_attribute())
      }
      
  """
  @type describe_target_group_attributes_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      too_many_rules_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type too_many_rules_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      target_description() :: %{
        "AvailabilityZone" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "Port" => integer()
      }
      
  """
  @type target_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_trust_stores_output() :: %{
        "NextMarker" => String.t() | atom(),
        "TrustStores" => list(trust_store())
      }
      
  """
  @type describe_trust_stores_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_ssl_policies_input() :: %{
        optional("LoadBalancerType") => list(any()),
        optional("Marker") => String.t() | atom(),
        optional("Names") => list(String.t() | atom()),
        optional("PageSize") => integer()
      }
      
  """
  @type describe_ssl_policies_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_load_balancer_output() :: %{
        "LoadBalancers" => list(load_balancer())
      }
      
  """
  @type create_load_balancer_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_target_group_output() :: %{}
      
  """
  @type delete_target_group_output() :: %{}

  @typedoc """

  ## Example:
      
      too_many_load_balancers_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type too_many_load_balancers_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      remove_tags_output() :: %{}
      
  """
  @type remove_tags_output() :: %{}

  @typedoc """

  ## Example:
      
      allocation_id_not_found_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type allocation_id_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      insufficient_capacity_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type insufficient_capacity_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_rule_output() :: %{}
      
  """
  @type delete_rule_output() :: %{}

  @typedoc """

  ## Example:
      
      create_trust_store_input() :: %{
        optional("CaCertificatesBundleS3ObjectVersion") => String.t() | atom(),
        optional("Tags") => list(tag()),
        required("CaCertificatesBundleS3Bucket") => String.t() | atom(),
        required("CaCertificatesBundleS3Key") => String.t() | atom(),
        required("Name") => String.t() | atom()
      }
      
  """
  @type create_trust_store_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_association_same_account_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type delete_association_same_account_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      query_string_condition_config() :: %{
        "Values" => list(query_string_key_value_pair())
      }
      
  """
  @type query_string_condition_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      duplicate_listener_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type duplicate_listener_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      query_string_key_value_pair() :: %{
        "Key" => String.t() | atom(),
        "Value" => String.t() | atom()
      }
      
  """
  @type query_string_key_value_pair() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_trust_store_revocation_content_output() :: %{
        "Location" => String.t() | atom()
      }
      
  """
  @type get_trust_store_revocation_content_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      host_header_condition_config() :: %{
        "Values" => list(String.t() | atom())
      }
      
  """
  @type host_header_condition_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_ssl_policies_output() :: %{
        "NextMarker" => String.t() | atom(),
        "SslPolicies" => list(ssl_policy())
      }
      
  """
  @type describe_ssl_policies_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_trust_store_revocation() :: %{
        "NumberOfRevokedEntries" => float(),
        "RevocationId" => float(),
        "RevocationType" => list(any()),
        "TrustStoreArn" => String.t() | atom()
      }
      
  """
  @type describe_trust_store_revocation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      authenticate_oidc_action_config() :: %{
        "AuthenticationRequestExtraParams" => map(),
        "AuthorizationEndpoint" => String.t() | atom(),
        "ClientId" => String.t() | atom(),
        "ClientSecret" => String.t() | atom(),
        "Issuer" => String.t() | atom(),
        "OnUnauthenticatedRequest" => list(any()),
        "Scope" => String.t() | atom(),
        "SessionCookieName" => String.t() | atom(),
        "SessionTimeout" => float(),
        "TokenEndpoint" => String.t() | atom(),
        "UseExistingClientSecret" => boolean(),
        "UserInfoEndpoint" => String.t() | atom()
      }
      
  """
  @type authenticate_oidc_action_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      redirect_action_config() :: %{
        "Host" => String.t() | atom(),
        "Path" => String.t() | atom(),
        "Port" => String.t() | atom(),
        "Protocol" => String.t() | atom(),
        "Query" => String.t() | atom(),
        "StatusCode" => list(any())
      }
      
  """
  @type redirect_action_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_tags_input() :: %{
        required("ResourceArns") => list(String.t() | atom())
      }
      
  """
  @type describe_tags_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      priority_in_use_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type priority_in_use_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_target_group_input() :: %{
        optional("HealthCheckEnabled") => boolean(),
        optional("HealthCheckIntervalSeconds") => integer(),
        optional("HealthCheckPath") => String.t() | atom(),
        optional("HealthCheckPort") => String.t() | atom(),
        optional("HealthCheckProtocol") => list(any()),
        optional("HealthCheckTimeoutSeconds") => integer(),
        optional("HealthyThresholdCount") => integer(),
        optional("IpAddressType") => list(any()),
        optional("Matcher") => matcher(),
        optional("Port") => integer(),
        optional("Protocol") => list(any()),
        optional("ProtocolVersion") => String.t() | atom(),
        optional("Tags") => list(tag()),
        optional("TargetType") => list(any()),
        optional("UnhealthyThresholdCount") => integer(),
        optional("VpcId") => String.t() | atom(),
        required("Name") => String.t() | atom()
      }
      
  """
  @type create_target_group_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      certificate_not_found_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type certificate_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      deregister_targets_output() :: %{}
      
  """
  @type deregister_targets_output() :: %{}

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
      
      modify_listener_input() :: %{
        optional("AlpnPolicy") => list(String.t() | atom()),
        optional("Certificates") => list(certificate()),
        optional("DefaultActions") => list(action()),
        optional("MutualAuthentication") => mutual_authentication_attributes(),
        optional("Port") => integer(),
        optional("Protocol") => list(any()),
        optional("SslPolicy") => String.t() | atom(),
        required("ListenerArn") => String.t() | atom()
      }
      
  """
  @type modify_listener_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      prior_request_not_complete_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type prior_request_not_complete_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      too_many_unique_target_groups_per_load_balancer_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type too_many_unique_target_groups_per_load_balancer_exception() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      delete_load_balancer_input() :: %{
        required("LoadBalancerArn") => String.t() | atom()
      }
      
  """
  @type delete_load_balancer_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      set_rule_priorities_output() :: %{
        "Rules" => list(rule())
      }
      
  """
  @type set_rule_priorities_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_description() :: %{
        "ResourceArn" => String.t() | atom(),
        "Tags" => list(tag())
      }
      
  """
  @type tag_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_target_group_input() :: %{
        required("TargetGroupArn") => String.t() | atom()
      }
      
  """
  @type delete_target_group_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      target_group_tuple() :: %{
        "TargetGroupArn" => String.t() | atom(),
        "Weight" => integer()
      }
      
  """
  @type target_group_tuple() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      set_subnets_output() :: %{
        "AvailabilityZones" => list(availability_zone()),
        "EnablePrefixForIpv6SourceNat" => list(any()),
        "IpAddressType" => list(any())
      }
      
  """
  @type set_subnets_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      incompatible_protocols_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type incompatible_protocols_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_listener_output() :: %{
        "Listeners" => list(listener())
      }
      
  """
  @type create_listener_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      revocation_id_not_found_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type revocation_id_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      set_ip_address_type_input() :: %{
        required("IpAddressType") => list(any()),
        required("LoadBalancerArn") => String.t() | atom()
      }
      
  """
  @type set_ip_address_type_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      register_targets_output() :: %{}
      
  """
  @type register_targets_output() :: %{}

  @typedoc """

  ## Example:
      
      too_many_target_groups_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type too_many_target_groups_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_shared_trust_store_association_input() :: %{
        required("ResourceArn") => String.t() | atom(),
        required("TrustStoreArn") => String.t() | atom()
      }
      
  """
  @type delete_shared_trust_store_association_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_listener_input() :: %{
        required("ListenerArn") => String.t() | atom()
      }
      
  """
  @type delete_listener_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_listener_attributes_output() :: %{
        "Attributes" => list(listener_attribute())
      }
      
  """
  @type describe_listener_attributes_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      load_balancer_state() :: %{
        "Code" => list(any()),
        "Reason" => String.t() | atom()
      }
      
  """
  @type load_balancer_state() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      trust_store_not_found_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type trust_store_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      remove_listener_certificates_input() :: %{
        required("Certificates") => list(certificate()),
        required("ListenerArn") => String.t() | atom()
      }
      
  """
  @type remove_listener_certificates_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      forward_action_config() :: %{
        "TargetGroupStickinessConfig" => target_group_stickiness_config(),
        "TargetGroups" => list(target_group_tuple())
      }
      
  """
  @type forward_action_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_trust_store_ca_certificates_bundle_input() :: %{
        required("TrustStoreArn") => String.t() | atom()
      }
      
  """
  @type get_trust_store_ca_certificates_bundle_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      load_balancer_not_found_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type load_balancer_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_tags_output() :: %{
        "TagDescriptions" => list(tag_description())
      }
      
  """
  @type describe_tags_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      too_many_actions_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type too_many_actions_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      trust_store_association_not_found_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type trust_store_association_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_trust_stores_input() :: %{
        optional("Marker") => String.t() | atom(),
        optional("Names") => list(String.t() | atom()),
        optional("PageSize") => integer(),
        optional("TrustStoreArns") => list(String.t() | atom())
      }
      
  """
  @type describe_trust_stores_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      too_many_targets_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type too_many_targets_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      operation_not_permitted_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type operation_not_permitted_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_listener_certificates_output() :: %{
        "Certificates" => list(certificate()),
        "NextMarker" => String.t() | atom()
      }
      
  """
  @type describe_listener_certificates_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_trust_store_associations_input() :: %{
        optional("Marker") => String.t() | atom(),
        optional("PageSize") => integer(),
        required("TrustStoreArn") => String.t() | atom()
      }
      
  """
  @type describe_trust_store_associations_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      target_health_description() :: %{
        "AdministrativeOverride" => administrative_override(),
        "AnomalyDetection" => anomaly_detection(),
        "HealthCheckPort" => String.t() | atom(),
        "Target" => target_description(),
        "TargetHealth" => target_health()
      }
      
  """
  @type target_health_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_load_balancer_action_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type invalid_load_balancer_action_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      rule() :: %{
        "Actions" => list(action()),
        "Conditions" => list(rule_condition()),
        "IsDefault" => boolean(),
        "Priority" => String.t() | atom(),
        "RuleArn" => String.t() | atom()
      }
      
  """
  @type rule() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_rule_input() :: %{
        optional("Tags") => list(tag()),
        required("Actions") => list(action()),
        required("Conditions") => list(rule_condition()),
        required("ListenerArn") => String.t() | atom(),
        required("Priority") => integer()
      }
      
  """
  @type create_rule_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      set_rule_priorities_input() :: %{
        required("RulePriorities") => list(rule_priority_pair())
      }
      
  """
  @type set_rule_priorities_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_account_limits_output() :: %{
        "Limits" => list(limit()),
        "NextMarker" => String.t() | atom()
      }
      
  """
  @type describe_account_limits_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_trust_store_output() :: %{}
      
  """
  @type delete_trust_store_output() :: %{}

  @typedoc """

  ## Example:
      
      revocation_content_not_found_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type revocation_content_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      too_many_listeners_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type too_many_listeners_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_load_balancers_input() :: %{
        optional("LoadBalancerArns") => list(String.t() | atom()),
        optional("Marker") => String.t() | atom(),
        optional("Names") => list(String.t() | atom()),
        optional("PageSize") => integer()
      }
      
  """
  @type describe_load_balancers_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      rule_priority_pair() :: %{
        "Priority" => integer(),
        "RuleArn" => String.t() | atom()
      }
      
  """
  @type rule_priority_pair() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      duplicate_target_group_name_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type duplicate_target_group_name_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      modify_ip_pools_output() :: %{
        "IpamPools" => ipam_pools()
      }
      
  """
  @type modify_ip_pools_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      capacity_reservation_pending_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type capacity_reservation_pending_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_listeners_output() :: %{
        "Listeners" => list(listener()),
        "NextMarker" => String.t() | atom()
      }
      
  """
  @type describe_listeners_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_load_balancer_attributes_output() :: %{
        "Attributes" => list(load_balancer_attribute())
      }
      
  """
  @type describe_load_balancer_attributes_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      certificate() :: %{
        "CertificateArn" => String.t() | atom(),
        "IsDefault" => boolean()
      }
      
  """
  @type certificate() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      modify_load_balancer_attributes_output() :: %{
        "Attributes" => list(load_balancer_attribute())
      }
      
  """
  @type modify_load_balancer_attributes_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      load_balancer_attribute() :: %{
        "Key" => String.t() | atom(),
        "Value" => String.t() | atom()
      }
      
  """
  @type load_balancer_attribute() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      remove_trust_store_revocations_input() :: %{
        required("RevocationIds") => list(float()),
        required("TrustStoreArn") => String.t() | atom()
      }
      
  """
  @type remove_trust_store_revocations_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      too_many_certificates_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type too_many_certificates_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      ssl_policy_not_found_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type ssl_policy_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      remove_listener_certificates_output() :: %{}
      
  """
  @type remove_listener_certificates_output() :: %{}

  @typedoc """

  ## Example:
      
      invalid_security_group_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type invalid_security_group_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      action() :: %{
        "AuthenticateCognitoConfig" => authenticate_cognito_action_config(),
        "AuthenticateOidcConfig" => authenticate_oidc_action_config(),
        "FixedResponseConfig" => fixed_response_action_config(),
        "ForwardConfig" => forward_action_config(),
        "Order" => integer(),
        "RedirectConfig" => redirect_action_config(),
        "TargetGroupArn" => String.t() | atom(),
        "Type" => list(any())
      }
      
  """
  @type action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      modify_listener_attributes_output() :: %{
        "Attributes" => list(listener_attribute())
      }
      
  """
  @type modify_listener_attributes_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_trust_store_associations_output() :: %{
        "NextMarker" => String.t() | atom(),
        "TrustStoreAssociations" => list(trust_store_association())
      }
      
  """
  @type describe_trust_store_associations_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      authenticate_cognito_action_config() :: %{
        "AuthenticationRequestExtraParams" => map(),
        "OnUnauthenticatedRequest" => list(any()),
        "Scope" => String.t() | atom(),
        "SessionCookieName" => String.t() | atom(),
        "SessionTimeout" => float(),
        "UserPoolArn" => String.t() | atom(),
        "UserPoolClientId" => String.t() | atom(),
        "UserPoolDomain" => String.t() | atom()
      }
      
  """
  @type authenticate_cognito_action_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_trust_store_input() :: %{
        required("TrustStoreArn") => String.t() | atom()
      }
      
  """
  @type delete_trust_store_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_target_groups_output() :: %{
        "NextMarker" => String.t() | atom(),
        "TargetGroups" => list(target_group())
      }
      
  """
  @type describe_target_groups_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      remove_trust_store_revocations_output() :: %{}
      
  """
  @type remove_trust_store_revocations_output() :: %{}

  @typedoc """

  ## Example:
      
      capacity_units_limit_exceeded_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type capacity_units_limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      target_group_stickiness_config() :: %{
        "DurationSeconds" => integer(),
        "Enabled" => boolean()
      }
      
  """
  @type target_group_stickiness_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      http_request_method_condition_config() :: %{
        "Values" => list(String.t() | atom())
      }
      
  """
  @type http_request_method_condition_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_resource_policy_input() :: %{
        required("ResourceArn") => String.t() | atom()
      }
      
  """
  @type get_resource_policy_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_trust_store_revocations_input() :: %{
        optional("Marker") => String.t() | atom(),
        optional("PageSize") => integer(),
        optional("RevocationIds") => list(float()),
        required("TrustStoreArn") => String.t() | atom()
      }
      
  """
  @type describe_trust_store_revocations_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      too_many_trust_store_revocation_entries_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type too_many_trust_store_revocation_entries_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      rule_condition() :: %{
        "Field" => String.t() | atom(),
        "HostHeaderConfig" => host_header_condition_config(),
        "HttpHeaderConfig" => http_header_condition_config(),
        "HttpRequestMethodConfig" => http_request_method_condition_config(),
        "PathPatternConfig" => path_pattern_condition_config(),
        "QueryStringConfig" => query_string_condition_config(),
        "SourceIpConfig" => source_ip_condition_config(),
        "Values" => list(String.t() | atom())
      }
      
  """
  @type rule_condition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      modify_capacity_reservation_output() :: %{
        "CapacityReservationState" => list(zonal_capacity_reservation_state()),
        "DecreaseRequestsRemaining" => integer(),
        "LastModifiedTime" => non_neg_integer(),
        "MinimumLoadBalancerCapacity" => minimum_load_balancer_capacity()
      }
      
  """
  @type modify_capacity_reservation_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      modify_ip_pools_input() :: %{
        optional("IpamPools") => ipam_pools(),
        optional("RemoveIpamPools") => list(list(any())()),
        required("LoadBalancerArn") => String.t() | atom()
      }
      
  """
  @type modify_ip_pools_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      capacity_decrease_requests_limit_exceeded_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type capacity_decrease_requests_limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      target_group_association_limit_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type target_group_association_limit_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      modify_load_balancer_attributes_input() :: %{
        required("Attributes") => list(load_balancer_attribute()),
        required("LoadBalancerArn") => String.t() | atom()
      }
      
  """
  @type modify_load_balancer_attributes_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_load_balancer_input() :: %{
        optional("CustomerOwnedIpv4Pool") => String.t() | atom(),
        optional("EnablePrefixForIpv6SourceNat") => list(any()),
        optional("IpAddressType") => list(any()),
        optional("IpamPools") => ipam_pools(),
        optional("Scheme") => list(any()),
        optional("SecurityGroups") => list(String.t() | atom()),
        optional("SubnetMappings") => list(subnet_mapping()),
        optional("Subnets") => list(String.t() | atom()),
        optional("Tags") => list(tag()),
        optional("Type") => list(any()),
        required("Name") => String.t() | atom()
      }
      
  """
  @type create_load_balancer_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      too_many_trust_stores_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type too_many_trust_stores_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_target_group_attributes_input() :: %{
        required("TargetGroupArn") => String.t() | atom()
      }
      
  """
  @type describe_target_group_attributes_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      duplicate_tag_keys_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type duplicate_tag_keys_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      target_group() :: %{
        "HealthCheckEnabled" => boolean(),
        "HealthCheckIntervalSeconds" => integer(),
        "HealthCheckPath" => String.t() | atom(),
        "HealthCheckPort" => String.t() | atom(),
        "HealthCheckProtocol" => list(any()),
        "HealthCheckTimeoutSeconds" => integer(),
        "HealthyThresholdCount" => integer(),
        "IpAddressType" => list(any()),
        "LoadBalancerArns" => list(String.t() | atom()),
        "Matcher" => matcher(),
        "Port" => integer(),
        "Protocol" => list(any()),
        "ProtocolVersion" => String.t() | atom(),
        "TargetGroupArn" => String.t() | atom(),
        "TargetGroupName" => String.t() | atom(),
        "TargetType" => list(any()),
        "UnhealthyThresholdCount" => integer(),
        "VpcId" => String.t() | atom()
      }
      
  """
  @type target_group() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      load_balancer() :: %{
        "AvailabilityZones" => list(availability_zone()),
        "CanonicalHostedZoneId" => String.t() | atom(),
        "CreatedTime" => non_neg_integer(),
        "CustomerOwnedIpv4Pool" => String.t() | atom(),
        "DNSName" => String.t() | atom(),
        "EnablePrefixForIpv6SourceNat" => list(any()),
        "EnforceSecurityGroupInboundRulesOnPrivateLinkTraffic" => String.t() | atom(),
        "IpAddressType" => list(any()),
        "IpamPools" => ipam_pools(),
        "LoadBalancerArn" => String.t() | atom(),
        "LoadBalancerName" => String.t() | atom(),
        "Scheme" => list(any()),
        "SecurityGroups" => list(String.t() | atom()),
        "State" => load_balancer_state(),
        "Type" => list(any()),
        "VpcId" => String.t() | atom()
      }
      
  """
  @type load_balancer() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_target_health_input() :: %{
        optional("Include") => list(list(any())()),
        optional("Targets") => list(target_description()),
        required("TargetGroupArn") => String.t() | atom()
      }
      
  """
  @type describe_target_health_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      matcher() :: %{
        "GrpcCode" => String.t() | atom(),
        "HttpCode" => String.t() | atom()
      }
      
  """
  @type matcher() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      duplicate_trust_store_name_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type duplicate_trust_store_name_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_trust_store_revocations_output() :: %{
        "NextMarker" => String.t() | atom(),
        "TrustStoreRevocations" => list(describe_trust_store_revocation())
      }
      
  """
  @type describe_trust_store_revocations_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_listeners_input() :: %{
        optional("ListenerArns") => list(String.t() | atom()),
        optional("LoadBalancerArn") => String.t() | atom(),
        optional("Marker") => String.t() | atom(),
        optional("PageSize") => integer()
      }
      
  """
  @type describe_listeners_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      register_targets_input() :: %{
        required("TargetGroupArn") => String.t() | atom(),
        required("Targets") => list(target_description())
      }
      
  """
  @type register_targets_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      set_ip_address_type_output() :: %{
        "IpAddressType" => list(any())
      }
      
  """
  @type set_ip_address_type_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_load_balancer_attributes_input() :: %{
        required("LoadBalancerArn") => String.t() | atom()
      }
      
  """
  @type describe_load_balancer_attributes_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_revocation_content_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type invalid_revocation_content_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      a_l_p_n_policy_not_supported_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type a_l_p_n_policy_not_supported_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      target_group_not_found_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type target_group_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_listener_certificates_input() :: %{
        optional("Marker") => String.t() | atom(),
        optional("PageSize") => integer(),
        required("ListenerArn") => String.t() | atom()
      }
      
  """
  @type describe_listener_certificates_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      too_many_registrations_for_target_id_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type too_many_registrations_for_target_id_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_trust_store_revocation_content_input() :: %{
        required("RevocationId") => float(),
        required("TrustStoreArn") => String.t() | atom()
      }
      
  """
  @type get_trust_store_revocation_content_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      trust_store_in_use_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type trust_store_in_use_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_rules_output() :: %{
        "NextMarker" => String.t() | atom(),
        "Rules" => list(rule())
      }
      
  """
  @type describe_rules_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_account_limits_input() :: %{
        optional("Marker") => String.t() | atom(),
        optional("PageSize") => integer()
      }
      
  """
  @type describe_account_limits_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      load_balancer_address() :: %{
        "AllocationId" => String.t() | atom(),
        "IPv6Address" => String.t() | atom(),
        "IpAddress" => String.t() | atom(),
        "PrivateIPv4Address" => String.t() | atom()
      }
      
  """
  @type load_balancer_address() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      modify_rule_input() :: %{
        optional("Actions") => list(action()),
        optional("Conditions") => list(rule_condition()),
        required("RuleArn") => String.t() | atom()
      }
      
  """
  @type modify_rule_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_rule_input() :: %{
        required("RuleArn") => String.t() | atom()
      }
      
  """
  @type delete_rule_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_capacity_reservation_input() :: %{
        required("LoadBalancerArn") => String.t() | atom()
      }
      
  """
  @type describe_capacity_reservation_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      ipam_pools() :: %{
        "Ipv4IpamPoolId" => String.t() | atom()
      }
      
  """
  @type ipam_pools() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_ca_certificates_bundle_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type invalid_ca_certificates_bundle_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      health_unavailable_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type health_unavailable_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_load_balancers_output() :: %{
        "LoadBalancers" => list(load_balancer()),
        "NextMarker" => String.t() | atom()
      }
      
  """
  @type describe_load_balancers_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      target_group_attribute() :: %{
        "Key" => String.t() | atom(),
        "Value" => String.t() | atom()
      }
      
  """
  @type target_group_attribute() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      modify_capacity_reservation_input() :: %{
        optional("MinimumLoadBalancerCapacity") => minimum_load_balancer_capacity(),
        optional("ResetCapacityReservation") => boolean(),
        required("LoadBalancerArn") => String.t() | atom()
      }
      
  """
  @type modify_capacity_reservation_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_subnet_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type invalid_subnet_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      trust_store_not_ready_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type trust_store_not_ready_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_target_groups_input() :: %{
        optional("LoadBalancerArn") => String.t() | atom(),
        optional("Marker") => String.t() | atom(),
        optional("Names") => list(String.t() | atom()),
        optional("PageSize") => integer(),
        optional("TargetGroupArns") => list(String.t() | atom())
      }
      
  """
  @type describe_target_groups_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      duplicate_load_balancer_name_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type duplicate_load_balancer_name_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      remove_tags_input() :: %{
        required("ResourceArns") => list(String.t() | atom()),
        required("TagKeys") => list(String.t() | atom())
      }
      
  """
  @type remove_tags_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      http_header_condition_config() :: %{
        "HttpHeaderName" => String.t() | atom(),
        "Values" => list(String.t() | atom())
      }
      
  """
  @type http_header_condition_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      listener_not_found_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type listener_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      path_pattern_condition_config() :: %{
        "Values" => list(String.t() | atom())
      }
      
  """
  @type path_pattern_condition_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      ca_certificates_bundle_not_found_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type ca_certificates_bundle_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      zonal_capacity_reservation_state() :: %{
        "AvailabilityZone" => String.t() | atom(),
        "EffectiveCapacityUnits" => float(),
        "State" => capacity_reservation_status()
      }
      
  """
  @type zonal_capacity_reservation_state() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_scheme_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type invalid_scheme_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      capacity_reservation_status() :: %{
        "Code" => list(any()),
        "Reason" => String.t() | atom()
      }
      
  """
  @type capacity_reservation_status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      anomaly_detection() :: %{
        "MitigationInEffect" => list(any()),
        "Result" => list(any())
      }
      
  """
  @type anomaly_detection() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_target_health_output() :: %{
        "TargetHealthDescriptions" => list(target_health_description())
      }
      
  """
  @type describe_target_health_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      source_ip_condition_config() :: %{
        "Values" => list(String.t() | atom())
      }
      
  """
  @type source_ip_condition_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cipher() :: %{
        "Name" => String.t() | atom(),
        "Priority" => integer()
      }
      
  """
  @type cipher() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      rule_not_found_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type rule_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_trust_store_output() :: %{
        "TrustStores" => list(trust_store())
      }
      
  """
  @type create_trust_store_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      set_security_groups_output() :: %{
        "EnforceSecurityGroupInboundRulesOnPrivateLinkTraffic" => list(any()),
        "SecurityGroupIds" => list(String.t() | atom())
      }
      
  """
  @type set_security_groups_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      modify_trust_store_output() :: %{
        "TrustStores" => list(trust_store())
      }
      
  """
  @type modify_trust_store_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      listener_attribute() :: %{
        "Key" => String.t() | atom(),
        "Value" => String.t() | atom()
      }
      
  """
  @type listener_attribute() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      too_many_tags_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type too_many_tags_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      unsupported_protocol_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type unsupported_protocol_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      modify_listener_attributes_input() :: %{
        required("Attributes") => list(listener_attribute()),
        required("ListenerArn") => String.t() | atom()
      }
      
  """
  @type modify_listener_attributes_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      modify_target_group_input() :: %{
        optional("HealthCheckEnabled") => boolean(),
        optional("HealthCheckIntervalSeconds") => integer(),
        optional("HealthCheckPath") => String.t() | atom(),
        optional("HealthCheckPort") => String.t() | atom(),
        optional("HealthCheckProtocol") => list(any()),
        optional("HealthCheckTimeoutSeconds") => integer(),
        optional("HealthyThresholdCount") => integer(),
        optional("Matcher") => matcher(),
        optional("UnhealthyThresholdCount") => integer(),
        required("TargetGroupArn") => String.t() | atom()
      }
      
  """
  @type modify_target_group_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      modify_rule_output() :: %{
        "Rules" => list(rule())
      }
      
  """
  @type modify_rule_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_shared_trust_store_association_output() :: %{}
      
  """
  @type delete_shared_trust_store_association_output() :: %{}

  @typedoc """

  ## Example:
      
      trust_store() :: %{
        "Name" => String.t() | atom(),
        "NumberOfCaCertificates" => integer(),
        "Status" => list(any()),
        "TotalRevokedEntries" => float(),
        "TrustStoreArn" => String.t() | atom()
      }
      
  """
  @type trust_store() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      modify_target_group_attributes_output() :: %{
        "Attributes" => list(target_group_attribute())
      }
      
  """
  @type modify_target_group_attributes_output() :: %{(String.t() | atom()) => any()}

  @type add_listener_certificates_errors() ::
          listener_not_found_exception()
          | too_many_certificates_exception()
          | certificate_not_found_exception()

  @type add_tags_errors() ::
          too_many_tags_exception()
          | rule_not_found_exception()
          | listener_not_found_exception()
          | target_group_not_found_exception()
          | duplicate_tag_keys_exception()
          | load_balancer_not_found_exception()
          | trust_store_not_found_exception()

  @type add_trust_store_revocations_errors() ::
          invalid_revocation_content_exception()
          | too_many_trust_store_revocation_entries_exception()
          | revocation_content_not_found_exception()
          | trust_store_not_found_exception()

  @type create_listener_errors() ::
          unsupported_protocol_exception()
          | too_many_tags_exception()
          | trust_store_not_ready_exception()
          | too_many_registrations_for_target_id_exception()
          | target_group_not_found_exception()
          | a_l_p_n_policy_not_supported_exception()
          | target_group_association_limit_exception()
          | ssl_policy_not_found_exception()
          | too_many_certificates_exception()
          | too_many_listeners_exception()
          | invalid_load_balancer_action_exception()
          | too_many_targets_exception()
          | too_many_actions_exception()
          | load_balancer_not_found_exception()
          | trust_store_not_found_exception()
          | incompatible_protocols_exception()
          | too_many_unique_target_groups_per_load_balancer_exception()
          | certificate_not_found_exception()
          | duplicate_listener_exception()
          | invalid_configuration_request_exception()

  @type create_load_balancer_errors() ::
          too_many_tags_exception()
          | invalid_scheme_exception()
          | duplicate_load_balancer_name_exception()
          | invalid_subnet_exception()
          | duplicate_tag_keys_exception()
          | invalid_security_group_exception()
          | operation_not_permitted_exception()
          | allocation_id_not_found_exception()
          | too_many_load_balancers_exception()
          | subnet_not_found_exception()
          | invalid_configuration_request_exception()
          | availability_zone_not_supported_exception()
          | resource_in_use_exception()

  @type create_rule_errors() ::
          unsupported_protocol_exception()
          | too_many_tags_exception()
          | listener_not_found_exception()
          | too_many_registrations_for_target_id_exception()
          | target_group_not_found_exception()
          | target_group_association_limit_exception()
          | invalid_load_balancer_action_exception()
          | too_many_targets_exception()
          | too_many_actions_exception()
          | too_many_target_groups_exception()
          | incompatible_protocols_exception()
          | too_many_unique_target_groups_per_load_balancer_exception()
          | priority_in_use_exception()
          | too_many_rules_exception()
          | invalid_configuration_request_exception()

  @type create_target_group_errors() ::
          too_many_tags_exception()
          | duplicate_target_group_name_exception()
          | too_many_target_groups_exception()
          | invalid_configuration_request_exception()

  @type create_trust_store_errors() ::
          too_many_tags_exception()
          | ca_certificates_bundle_not_found_exception()
          | invalid_ca_certificates_bundle_exception()
          | duplicate_trust_store_name_exception()
          | duplicate_tag_keys_exception()
          | too_many_trust_stores_exception()

  @type delete_listener_errors() :: listener_not_found_exception() | resource_in_use_exception()

  @type delete_load_balancer_errors() ::
          operation_not_permitted_exception()
          | load_balancer_not_found_exception()
          | resource_in_use_exception()

  @type delete_rule_errors() :: rule_not_found_exception() | operation_not_permitted_exception()

  @type delete_shared_trust_store_association_errors() ::
          trust_store_association_not_found_exception()
          | trust_store_not_found_exception()
          | delete_association_same_account_exception()

  @type delete_target_group_errors() :: resource_in_use_exception()

  @type delete_trust_store_errors() ::
          trust_store_in_use_exception() | trust_store_not_found_exception()

  @type deregister_targets_errors() ::
          target_group_not_found_exception() | invalid_target_exception()

  @type describe_capacity_reservation_errors() :: load_balancer_not_found_exception()

  @type describe_listener_attributes_errors() :: listener_not_found_exception()

  @type describe_listener_certificates_errors() :: listener_not_found_exception()

  @type describe_listeners_errors() ::
          unsupported_protocol_exception()
          | listener_not_found_exception()
          | load_balancer_not_found_exception()

  @type describe_load_balancer_attributes_errors() :: load_balancer_not_found_exception()

  @type describe_load_balancers_errors() :: load_balancer_not_found_exception()

  @type describe_rules_errors() ::
          unsupported_protocol_exception()
          | rule_not_found_exception()
          | listener_not_found_exception()

  @type describe_ssl_policies_errors() :: ssl_policy_not_found_exception()

  @type describe_tags_errors() ::
          rule_not_found_exception()
          | listener_not_found_exception()
          | target_group_not_found_exception()
          | load_balancer_not_found_exception()
          | trust_store_not_found_exception()

  @type describe_target_group_attributes_errors() :: target_group_not_found_exception()

  @type describe_target_groups_errors() ::
          target_group_not_found_exception() | load_balancer_not_found_exception()

  @type describe_target_health_errors() ::
          health_unavailable_exception()
          | target_group_not_found_exception()
          | invalid_target_exception()

  @type describe_trust_store_associations_errors() :: trust_store_not_found_exception()

  @type describe_trust_store_revocations_errors() ::
          trust_store_not_found_exception() | revocation_id_not_found_exception()

  @type describe_trust_stores_errors() :: trust_store_not_found_exception()

  @type get_resource_policy_errors() :: resource_not_found_exception()

  @type get_trust_store_ca_certificates_bundle_errors() :: trust_store_not_found_exception()

  @type get_trust_store_revocation_content_errors() ::
          trust_store_not_found_exception() | revocation_id_not_found_exception()

  @type modify_capacity_reservation_errors() ::
          capacity_decrease_requests_limit_exceeded_exception()
          | capacity_units_limit_exceeded_exception()
          | capacity_reservation_pending_exception()
          | operation_not_permitted_exception()
          | load_balancer_not_found_exception()
          | prior_request_not_complete_exception()
          | insufficient_capacity_exception()
          | invalid_configuration_request_exception()

  @type modify_ip_pools_errors() :: load_balancer_not_found_exception()

  @type modify_listener_errors() ::
          unsupported_protocol_exception()
          | listener_not_found_exception()
          | trust_store_not_ready_exception()
          | too_many_registrations_for_target_id_exception()
          | target_group_not_found_exception()
          | a_l_p_n_policy_not_supported_exception()
          | target_group_association_limit_exception()
          | ssl_policy_not_found_exception()
          | too_many_certificates_exception()
          | too_many_listeners_exception()
          | invalid_load_balancer_action_exception()
          | too_many_targets_exception()
          | too_many_actions_exception()
          | trust_store_not_found_exception()
          | incompatible_protocols_exception()
          | too_many_unique_target_groups_per_load_balancer_exception()
          | certificate_not_found_exception()
          | duplicate_listener_exception()
          | invalid_configuration_request_exception()

  @type modify_listener_attributes_errors() ::
          listener_not_found_exception() | invalid_configuration_request_exception()

  @type modify_load_balancer_attributes_errors() ::
          load_balancer_not_found_exception() | invalid_configuration_request_exception()

  @type modify_rule_errors() ::
          unsupported_protocol_exception()
          | rule_not_found_exception()
          | too_many_registrations_for_target_id_exception()
          | target_group_not_found_exception()
          | target_group_association_limit_exception()
          | invalid_load_balancer_action_exception()
          | operation_not_permitted_exception()
          | too_many_targets_exception()
          | too_many_actions_exception()
          | incompatible_protocols_exception()
          | too_many_unique_target_groups_per_load_balancer_exception()

  @type modify_target_group_errors() ::
          target_group_not_found_exception() | invalid_configuration_request_exception()

  @type modify_target_group_attributes_errors() ::
          target_group_not_found_exception() | invalid_configuration_request_exception()

  @type modify_trust_store_errors() ::
          ca_certificates_bundle_not_found_exception()
          | invalid_ca_certificates_bundle_exception()
          | trust_store_not_found_exception()

  @type register_targets_errors() ::
          too_many_registrations_for_target_id_exception()
          | target_group_not_found_exception()
          | too_many_targets_exception()
          | invalid_target_exception()

  @type remove_listener_certificates_errors() ::
          listener_not_found_exception() | operation_not_permitted_exception()

  @type remove_tags_errors() ::
          too_many_tags_exception()
          | rule_not_found_exception()
          | listener_not_found_exception()
          | target_group_not_found_exception()
          | load_balancer_not_found_exception()
          | trust_store_not_found_exception()

  @type remove_trust_store_revocations_errors() ::
          trust_store_not_found_exception() | revocation_id_not_found_exception()

  @type set_ip_address_type_errors() ::
          invalid_subnet_exception()
          | load_balancer_not_found_exception()
          | invalid_configuration_request_exception()

  @type set_rule_priorities_errors() ::
          rule_not_found_exception()
          | operation_not_permitted_exception()
          | priority_in_use_exception()

  @type set_security_groups_errors() ::
          invalid_security_group_exception()
          | load_balancer_not_found_exception()
          | invalid_configuration_request_exception()

  @type set_subnets_errors() ::
          invalid_subnet_exception()
          | capacity_reservation_pending_exception()
          | load_balancer_not_found_exception()
          | allocation_id_not_found_exception()
          | subnet_not_found_exception()
          | invalid_configuration_request_exception()
          | availability_zone_not_supported_exception()

  def metadata do
    %{
      api_version: "2015-12-01",
      content_type: "application/x-www-form-urlencoded",
      credential_scope: nil,
      endpoint_prefix: "elasticloadbalancing",
      global?: false,
      hostname: nil,
      protocol: "query",
      service_id: "Elastic Load Balancing v2",
      signature_version: "v4",
      signing_name: "elasticloadbalancing",
      target_prefix: "ElasticLoadBalancing_v10"
    }
  end

  @doc """
  Adds the specified SSL server certificate to the certificate list for the
  specified HTTPS
  or TLS listener.

  If the certificate in already in the certificate list, the call is successful
  but the
  certificate is not added again.

  For more information, see [SSL certificates](https://docs.aws.amazon.com/elasticloadbalancing/latest/application/https-listener-certificates.html)
  in the *Application Load Balancers Guide* or [Server certificates](https://docs.aws.amazon.com/elasticloadbalancing/latest/network/tls-listener-certificates.html)
  in the *Network Load Balancers Guide*.
  """
  @spec add_listener_certificates(map(), add_listener_certificates_input(), list()) ::
          {:ok, add_listener_certificates_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, add_listener_certificates_errors()}
  def add_listener_certificates(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AddListenerCertificates", input, options)
  end

  @doc """
  Adds the specified tags to the specified Elastic Load Balancing resource.

  You can tag your
  Application Load Balancers, Network Load Balancers, Gateway Load Balancers,
  target groups,
  trust stores, listeners, and rules.

  Each tag consists of a key and an optional value. If a resource already has a
  tag with the
  same key, `AddTags` updates its value.
  """
  @spec add_tags(map(), add_tags_input(), list()) ::
          {:ok, add_tags_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, add_tags_errors()}
  def add_tags(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AddTags", input, options)
  end

  @doc """
  Adds the specified revocation file to the specified trust store.
  """
  @spec add_trust_store_revocations(map(), add_trust_store_revocations_input(), list()) ::
          {:ok, add_trust_store_revocations_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, add_trust_store_revocations_errors()}
  def add_trust_store_revocations(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AddTrustStoreRevocations", input, options)
  end

  @doc """
  Creates a listener for the specified Application Load Balancer, Network Load
  Balancer, or
  Gateway Load Balancer.

  For more information, see the following:

    *

  [Listeners for your Application Load
  Balancers](https://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-listeners.html)

    *

  [Listeners for your Network Load
  Balancers](https://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-listeners.html)

    *

  [Listeners for your Gateway Load
  Balancers](https://docs.aws.amazon.com/elasticloadbalancing/latest/gateway/gateway-listeners.html)

  This operation is idempotent, which means that it completes at most one time. If
  you
  attempt to create multiple listeners with the same settings, each call succeeds.
  """
  @spec create_listener(map(), create_listener_input(), list()) ::
          {:ok, create_listener_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_listener_errors()}
  def create_listener(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateListener", input, options)
  end

  @doc """
  Creates an Application Load Balancer, Network Load Balancer, or Gateway Load
  Balancer.

  For more information, see the following:

    *

  [Application Load Balancers](https://docs.aws.amazon.com/elasticloadbalancing/latest/application/application-load-balancers.html)

    *

  [Network Load Balancers](https://docs.aws.amazon.com/elasticloadbalancing/latest/network/network-load-balancers.html)

    *

  [Gateway Load Balancers](https://docs.aws.amazon.com/elasticloadbalancing/latest/gateway/gateway-load-balancers.html)

  This operation is idempotent, which means that it completes at most one time. If
  you
  attempt to create multiple load balancers with the same settings, each call
  succeeds.
  """
  @spec create_load_balancer(map(), create_load_balancer_input(), list()) ::
          {:ok, create_load_balancer_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_load_balancer_errors()}
  def create_load_balancer(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateLoadBalancer", input, options)
  end

  @doc """
  Creates a rule for the specified listener.

  The listener must be associated with an
  Application Load Balancer.

  Each rule consists of a priority, one or more actions, and one or more
  conditions. Rules
  are evaluated in priority order, from the lowest value to the highest value.
  When the
  conditions for a rule are met, its actions are performed. If the conditions for
  no rules are
  met, the actions for the default rule are performed. For more information, see
  [Listener rules](https://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-listeners.html#listener-rules)
  in the *Application Load Balancers Guide*.
  """
  @spec create_rule(map(), create_rule_input(), list()) ::
          {:ok, create_rule_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_rule_errors()}
  def create_rule(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateRule", input, options)
  end

  @doc """
  Creates a target group.

  For more information, see the following:

    *

  [Target groups for your Application Load
  Balancers](https://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-target-groups.html)

    *

  [Target groups for your Network Load
  Balancers](https://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-target-groups.html)

    *

  [Target groups for your Gateway Load
  Balancers](https://docs.aws.amazon.com/elasticloadbalancing/latest/gateway/target-groups.html)

  This operation is idempotent, which means that it completes at most one time. If
  you
  attempt to create multiple target groups with the same settings, each call
  succeeds.
  """
  @spec create_target_group(map(), create_target_group_input(), list()) ::
          {:ok, create_target_group_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_target_group_errors()}
  def create_target_group(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateTargetGroup", input, options)
  end

  @doc """
  Creates a trust store.

  For more information, see [Mutual TLS for Application Load Balancers](https://docs.aws.amazon.com/elasticloadbalancing/latest/application/mutual-authentication.html).
  """
  @spec create_trust_store(map(), create_trust_store_input(), list()) ::
          {:ok, create_trust_store_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_trust_store_errors()}
  def create_trust_store(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateTrustStore", input, options)
  end

  @doc """
  Deletes the specified listener.

  Alternatively, your listener is deleted when you delete the load balancer to
  which it is
  attached.
  """
  @spec delete_listener(map(), delete_listener_input(), list()) ::
          {:ok, delete_listener_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_listener_errors()}
  def delete_listener(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteListener", input, options)
  end

  @doc """
  Deletes the specified Application Load Balancer, Network Load Balancer, or
  Gateway Load
  Balancer.

  Deleting a load balancer also deletes its listeners.

  You can't delete a load balancer if deletion protection is enabled. If the load
  balancer
  does not exist or has already been deleted, the call succeeds.

  Deleting a load balancer does not affect its registered targets. For example,
  your EC2
  instances continue to run and are still registered to their target groups. If
  you no longer
  need these EC2 instances, you can stop or terminate them.
  """
  @spec delete_load_balancer(map(), delete_load_balancer_input(), list()) ::
          {:ok, delete_load_balancer_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_load_balancer_errors()}
  def delete_load_balancer(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteLoadBalancer", input, options)
  end

  @doc """
  Deletes the specified rule.

  You can't delete the default rule.
  """
  @spec delete_rule(map(), delete_rule_input(), list()) ::
          {:ok, delete_rule_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_rule_errors()}
  def delete_rule(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteRule", input, options)
  end

  @doc """
  Deletes a shared trust store association.
  """
  @spec delete_shared_trust_store_association(
          map(),
          delete_shared_trust_store_association_input(),
          list()
        ) ::
          {:ok, delete_shared_trust_store_association_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_shared_trust_store_association_errors()}
  def delete_shared_trust_store_association(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteSharedTrustStoreAssociation", input, options)
  end

  @doc """
  Deletes the specified target group.

  You can delete a target group if it is not referenced by any actions. Deleting a
  target
  group also deletes any associated health checks. Deleting a target group does
  not affect its
  registered targets. For example, any EC2 instances continue to run until you
  stop or terminate
  them.
  """
  @spec delete_target_group(map(), delete_target_group_input(), list()) ::
          {:ok, delete_target_group_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_target_group_errors()}
  def delete_target_group(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteTargetGroup", input, options)
  end

  @doc """
  Deletes a trust store.
  """
  @spec delete_trust_store(map(), delete_trust_store_input(), list()) ::
          {:ok, delete_trust_store_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_trust_store_errors()}
  def delete_trust_store(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteTrustStore", input, options)
  end

  @doc """
  Deregisters the specified targets from the specified target group.

  After the targets are
  deregistered, they no longer receive traffic from the load balancer.

  The load balancer stops sending requests to targets that are deregistering, but
  uses
  connection draining to ensure that in-flight traffic completes on the existing
  connections.
  This deregistration delay is configured by default but can be updated for each
  target group.

  For more information, see the following:

    *

  [
  Deregistration
  delay](https://docs.aws.amazon.com/elasticloadbalancing/latest/application/edit-target-group-attributes.html#deregistration-delay)
  in the *Application Load Balancers User Guide*

    *

  [
  Deregistration
  delay](https://docs.aws.amazon.com/elasticloadbalancing/latest/network/edit-target-group-attributes.html#deregistration-delay)
  in the *Network Load Balancers User Guide*

    *

  [
  Deregistration
  delay](https://docs.aws.amazon.com/elasticloadbalancing/latest/gateway/edit-target-group-attributes.html#deregistration-delay)
  in the *Gateway Load Balancers User Guide*

  Note: If the specified target does not exist, the action returns successfully.
  """
  @spec deregister_targets(map(), deregister_targets_input(), list()) ::
          {:ok, deregister_targets_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, deregister_targets_errors()}
  def deregister_targets(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeregisterTargets", input, options)
  end

  @doc """
  Describes the current Elastic Load Balancing resource limits for your Amazon Web
  Services
  account.

  For more information, see the following:

    *

  [Quotas for your Application Load
  Balancers](https://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-limits.html)

    *

  [Quotas for your Network Load
  Balancers](https://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-limits.html)

    *

  [Quotas for your Gateway Load
  Balancers](https://docs.aws.amazon.com/elasticloadbalancing/latest/gateway/quotas-limits.html)
  """
  @spec describe_account_limits(map(), describe_account_limits_input(), list()) ::
          {:ok, describe_account_limits_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def describe_account_limits(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeAccountLimits", input, options)
  end

  @doc """
  Describes the capacity reservation status for the specified load balancer.
  """
  @spec describe_capacity_reservation(map(), describe_capacity_reservation_input(), list()) ::
          {:ok, describe_capacity_reservation_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_capacity_reservation_errors()}
  def describe_capacity_reservation(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeCapacityReservation", input, options)
  end

  @doc """
  Describes the attributes for the specified listener.
  """
  @spec describe_listener_attributes(map(), describe_listener_attributes_input(), list()) ::
          {:ok, describe_listener_attributes_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_listener_attributes_errors()}
  def describe_listener_attributes(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeListenerAttributes", input, options)
  end

  @doc """
  Describes the default certificate and the certificate list for the specified
  HTTPS or TLS
  listener.

  If the default certificate is also in the certificate list, it appears twice in
  the
  results (once with `IsDefault` set to true and once with `IsDefault` set
  to false).

  For more information, see [SSL certificates](https://docs.aws.amazon.com/elasticloadbalancing/latest/application/https-listener-certificates.html)
  in the *Application Load Balancers Guide* or
  [Server certificates](https://docs.aws.amazon.com/elasticloadbalancing/latest/network/tls-listener-certificates.html)
  in the *Network Load Balancers
  Guide*.
  """
  @spec describe_listener_certificates(map(), describe_listener_certificates_input(), list()) ::
          {:ok, describe_listener_certificates_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_listener_certificates_errors()}
  def describe_listener_certificates(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeListenerCertificates", input, options)
  end

  @doc """
  Describes the specified listeners or the listeners for the specified Application
  Load
  Balancer, Network Load Balancer, or Gateway Load Balancer.

  You must specify either a load
  balancer or one or more listeners.
  """
  @spec describe_listeners(map(), describe_listeners_input(), list()) ::
          {:ok, describe_listeners_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_listeners_errors()}
  def describe_listeners(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeListeners", input, options)
  end

  @doc """
  Describes the attributes for the specified Application Load Balancer, Network
  Load
  Balancer, or Gateway Load Balancer.

  For more information, see the following:

    *

  [Load balancer attributes](https://docs.aws.amazon.com/elasticloadbalancing/latest/application/application-load-balancers.html#load-balancer-attributes)
  in the *Application Load Balancers
  Guide*

    *

  [Load balancer attributes](https://docs.aws.amazon.com/elasticloadbalancing/latest/network/network-load-balancers.html#load-balancer-attributes)
  in the *Network Load Balancers
  Guide*

    *

  [Load balancer attributes](https://docs.aws.amazon.com/elasticloadbalancing/latest/gateway/gateway-load-balancers.html#load-balancer-attributes)
  in the *Gateway Load Balancers
  Guide*
  """
  @spec describe_load_balancer_attributes(
          map(),
          describe_load_balancer_attributes_input(),
          list()
        ) ::
          {:ok, describe_load_balancer_attributes_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_load_balancer_attributes_errors()}
  def describe_load_balancer_attributes(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeLoadBalancerAttributes", input, options)
  end

  @doc """
  Describes the specified load balancers or all of your load balancers.
  """
  @spec describe_load_balancers(map(), describe_load_balancers_input(), list()) ::
          {:ok, describe_load_balancers_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_load_balancers_errors()}
  def describe_load_balancers(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeLoadBalancers", input, options)
  end

  @doc """
  Describes the specified rules or the rules for the specified listener.

  You must specify
  either a listener or one or more rules.
  """
  @spec describe_rules(map(), describe_rules_input(), list()) ::
          {:ok, describe_rules_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_rules_errors()}
  def describe_rules(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeRules", input, options)
  end

  @doc """
  Describes the specified policies or all policies used for SSL negotiation.

  For more information, see [Security policies](https://docs.aws.amazon.com/elasticloadbalancing/latest/application/describe-ssl-policies.html)
  in the *Application Load Balancers Guide* and
  [Security policies](https://docs.aws.amazon.com/elasticloadbalancing/latest/network/describe-ssl-policies.html)
  in the *Network Load Balancers Guide*.
  """
  @spec describe_ssl_policies(map(), describe_ssl_policies_input(), list()) ::
          {:ok, describe_ssl_policies_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_ssl_policies_errors()}
  def describe_ssl_policies(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeSSLPolicies", input, options)
  end

  @doc """
  Describes the tags for the specified Elastic Load Balancing resources.

  You can describe
  the tags for one or more Application Load Balancers, Network Load Balancers,
  Gateway Load
  Balancers, target groups, listeners, or rules.
  """
  @spec describe_tags(map(), describe_tags_input(), list()) ::
          {:ok, describe_tags_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_tags_errors()}
  def describe_tags(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeTags", input, options)
  end

  @doc """
  Describes the attributes for the specified target group.

  For more information, see the following:

    *

  [Target group attributes](https://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-target-groups.html#target-group-attributes)
  in the *Application Load Balancers
  Guide*

    *

  [Target group attributes](https://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-target-groups.html#target-group-attributes)
  in the *Network Load Balancers
  Guide*

    *

  [Target group attributes](https://docs.aws.amazon.com/elasticloadbalancing/latest/gateway/target-groups.html#target-group-attributes)
  in the *Gateway Load Balancers
  Guide*
  """
  @spec describe_target_group_attributes(map(), describe_target_group_attributes_input(), list()) ::
          {:ok, describe_target_group_attributes_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_target_group_attributes_errors()}
  def describe_target_group_attributes(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeTargetGroupAttributes", input, options)
  end

  @doc """
  Describes the specified target groups or all of your target groups.

  By default, all target
  groups are described. Alternatively, you can specify one of the following to
  filter the
  results: the ARN of the load balancer, the names of one or more target groups,
  or the ARNs of
  one or more target groups.
  """
  @spec describe_target_groups(map(), describe_target_groups_input(), list()) ::
          {:ok, describe_target_groups_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_target_groups_errors()}
  def describe_target_groups(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeTargetGroups", input, options)
  end

  @doc """
  Describes the health of the specified targets or all of your targets.
  """
  @spec describe_target_health(map(), describe_target_health_input(), list()) ::
          {:ok, describe_target_health_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_target_health_errors()}
  def describe_target_health(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeTargetHealth", input, options)
  end

  @doc """
  Describes all resources associated with the specified trust store.
  """
  @spec describe_trust_store_associations(
          map(),
          describe_trust_store_associations_input(),
          list()
        ) ::
          {:ok, describe_trust_store_associations_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_trust_store_associations_errors()}
  def describe_trust_store_associations(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeTrustStoreAssociations", input, options)
  end

  @doc """
  Describes the revocation files in use by the specified trust store or revocation
  files.
  """
  @spec describe_trust_store_revocations(map(), describe_trust_store_revocations_input(), list()) ::
          {:ok, describe_trust_store_revocations_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_trust_store_revocations_errors()}
  def describe_trust_store_revocations(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeTrustStoreRevocations", input, options)
  end

  @doc """
  Describes all trust stores for the specified account.
  """
  @spec describe_trust_stores(map(), describe_trust_stores_input(), list()) ::
          {:ok, describe_trust_stores_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_trust_stores_errors()}
  def describe_trust_stores(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeTrustStores", input, options)
  end

  @doc """
  Retrieves the resource policy for a specified resource.
  """
  @spec get_resource_policy(map(), get_resource_policy_input(), list()) ::
          {:ok, get_resource_policy_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_resource_policy_errors()}
  def get_resource_policy(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetResourcePolicy", input, options)
  end

  @doc """
  Retrieves the ca certificate bundle.

  This action returns a pre-signed S3 URI which is
  active for ten minutes.
  """
  @spec get_trust_store_ca_certificates_bundle(
          map(),
          get_trust_store_ca_certificates_bundle_input(),
          list()
        ) ::
          {:ok, get_trust_store_ca_certificates_bundle_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_trust_store_ca_certificates_bundle_errors()}
  def get_trust_store_ca_certificates_bundle(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetTrustStoreCaCertificatesBundle", input, options)
  end

  @doc """
  Retrieves the specified revocation file.

  This action returns a pre-signed S3 URI which is
  active for ten minutes.
  """
  @spec get_trust_store_revocation_content(
          map(),
          get_trust_store_revocation_content_input(),
          list()
        ) ::
          {:ok, get_trust_store_revocation_content_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_trust_store_revocation_content_errors()}
  def get_trust_store_revocation_content(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetTrustStoreRevocationContent", input, options)
  end

  @doc """
  Modifies the capacity reservation of the specified load balancer.

  When modifying capacity reservation, you must include at least one
  `MinimumLoadBalancerCapacity`
  or `ResetCapacityReservation`.
  """
  @spec modify_capacity_reservation(map(), modify_capacity_reservation_input(), list()) ::
          {:ok, modify_capacity_reservation_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, modify_capacity_reservation_errors()}
  def modify_capacity_reservation(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ModifyCapacityReservation", input, options)
  end

  @doc """
  [Application Load Balancers] Modify the IP pool associated to a load balancer.
  """
  @spec modify_ip_pools(map(), modify_ip_pools_input(), list()) ::
          {:ok, modify_ip_pools_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, modify_ip_pools_errors()}
  def modify_ip_pools(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ModifyIpPools", input, options)
  end

  @doc """
  Replaces the specified properties of the specified listener.

  Any properties that you do
  not specify remain unchanged.

  Changing the protocol from HTTPS to HTTP, or from TLS to TCP, removes the
  security policy
  and default certificate properties. If you change the protocol from HTTP to
  HTTPS, or from TCP
  to TLS, you must add the security policy and default certificate properties.

  To add an item to a list, remove an item from a list, or update an item in a
  list, you
  must provide the entire list. For example, to add an action, specify a list with
  the current
  actions plus the new action.
  """
  @spec modify_listener(map(), modify_listener_input(), list()) ::
          {:ok, modify_listener_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, modify_listener_errors()}
  def modify_listener(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ModifyListener", input, options)
  end

  @doc """
  Modifies the specified attributes of the specified listener.
  """
  @spec modify_listener_attributes(map(), modify_listener_attributes_input(), list()) ::
          {:ok, modify_listener_attributes_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, modify_listener_attributes_errors()}
  def modify_listener_attributes(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ModifyListenerAttributes", input, options)
  end

  @doc """
  Modifies the specified attributes of the specified Application Load Balancer,
  Network Load
  Balancer, or Gateway Load Balancer.

  If any of the specified attributes can't be modified as requested, the call
  fails. Any
  existing attributes that you do not modify retain their current values.
  """
  @spec modify_load_balancer_attributes(map(), modify_load_balancer_attributes_input(), list()) ::
          {:ok, modify_load_balancer_attributes_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, modify_load_balancer_attributes_errors()}
  def modify_load_balancer_attributes(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ModifyLoadBalancerAttributes", input, options)
  end

  @doc """
  Replaces the specified properties of the specified rule.

  Any properties that you do not
  specify are unchanged.

  To add an item to a list, remove an item from a list, or update an item in a
  list, you
  must provide the entire list. For example, to add an action, specify a list with
  the current
  actions plus the new action.
  """
  @spec modify_rule(map(), modify_rule_input(), list()) ::
          {:ok, modify_rule_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, modify_rule_errors()}
  def modify_rule(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ModifyRule", input, options)
  end

  @doc """
  Modifies the health checks used when evaluating the health state of the targets
  in the
  specified target group.
  """
  @spec modify_target_group(map(), modify_target_group_input(), list()) ::
          {:ok, modify_target_group_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, modify_target_group_errors()}
  def modify_target_group(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ModifyTargetGroup", input, options)
  end

  @doc """
  Modifies the specified attributes of the specified target group.
  """
  @spec modify_target_group_attributes(map(), modify_target_group_attributes_input(), list()) ::
          {:ok, modify_target_group_attributes_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, modify_target_group_attributes_errors()}
  def modify_target_group_attributes(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ModifyTargetGroupAttributes", input, options)
  end

  @doc """
  Update the ca certificate bundle for the specified trust store.
  """
  @spec modify_trust_store(map(), modify_trust_store_input(), list()) ::
          {:ok, modify_trust_store_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, modify_trust_store_errors()}
  def modify_trust_store(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ModifyTrustStore", input, options)
  end

  @doc """
  Registers the specified targets with the specified target group.

  If the target is an EC2 instance, it must be in the `running` state when you
  register it.

  By default, the load balancer routes requests to registered targets using the
  protocol and
  port for the target group. Alternatively, you can override the port for a target
  when you
  register it. You can register each EC2 instance or IP address with the same
  target group
  multiple times using different ports.

  For more information, see the following:

    *

  [Register targets for your Application Load
  Balancer](https://docs.aws.amazon.com/elasticloadbalancing/latest/application/target-group-register-targets.html)

    *

  [Register targets for your Network Load
  Balancer](https://docs.aws.amazon.com/elasticloadbalancing/latest/network/target-group-register-targets.html)

    *

  [Register targets for your Gateway Load
  Balancer](https://docs.aws.amazon.com/elasticloadbalancing/latest/gateway/target-group-register-targets.html)
  """
  @spec register_targets(map(), register_targets_input(), list()) ::
          {:ok, register_targets_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, register_targets_errors()}
  def register_targets(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "RegisterTargets", input, options)
  end

  @doc """
  Removes the specified certificate from the certificate list for the specified
  HTTPS or TLS
  listener.
  """
  @spec remove_listener_certificates(map(), remove_listener_certificates_input(), list()) ::
          {:ok, remove_listener_certificates_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, remove_listener_certificates_errors()}
  def remove_listener_certificates(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "RemoveListenerCertificates", input, options)
  end

  @doc """
  Removes the specified tags from the specified Elastic Load Balancing resources.

  You can
  remove the tags for one or more Application Load Balancers, Network Load
  Balancers, Gateway
  Load Balancers, target groups, listeners, or rules.
  """
  @spec remove_tags(map(), remove_tags_input(), list()) ::
          {:ok, remove_tags_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, remove_tags_errors()}
  def remove_tags(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "RemoveTags", input, options)
  end

  @doc """
  Removes the specified revocation file from the specified trust store.
  """
  @spec remove_trust_store_revocations(map(), remove_trust_store_revocations_input(), list()) ::
          {:ok, remove_trust_store_revocations_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, remove_trust_store_revocations_errors()}
  def remove_trust_store_revocations(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "RemoveTrustStoreRevocations", input, options)
  end

  @doc """
  Sets the type of IP addresses used by the subnets of the specified load
  balancer.
  """
  @spec set_ip_address_type(map(), set_ip_address_type_input(), list()) ::
          {:ok, set_ip_address_type_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, set_ip_address_type_errors()}
  def set_ip_address_type(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "SetIpAddressType", input, options)
  end

  @doc """
  Sets the priorities of the specified rules.

  You can reorder the rules as long as there are no priority conflicts in the new
  order. Any
  existing rules that you do not specify retain their current priority.
  """
  @spec set_rule_priorities(map(), set_rule_priorities_input(), list()) ::
          {:ok, set_rule_priorities_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, set_rule_priorities_errors()}
  def set_rule_priorities(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "SetRulePriorities", input, options)
  end

  @doc """
  Associates the specified security groups with the specified Application Load
  Balancer or
  Network Load Balancer.

  The specified security groups override the previously associated
  security groups.

  You can't perform this operation on a Network Load Balancer unless you specified
  a
  security group for the load balancer when you created it.

  You can't associate a security group with a Gateway Load Balancer.
  """
  @spec set_security_groups(map(), set_security_groups_input(), list()) ::
          {:ok, set_security_groups_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, set_security_groups_errors()}
  def set_security_groups(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "SetSecurityGroups", input, options)
  end

  @doc """
  Enables the Availability Zones for the specified public subnets for the
  specified
  Application Load Balancer, Network Load Balancer or Gateway Load Balancer.

  The specified subnets replace the
  previously enabled subnets.

  When you specify subnets for a Network Load Balancer, or Gateway Load Balancer
  you must include all subnets that
  were enabled previously, with their existing configurations, plus any additional
  subnets.
  """
  @spec set_subnets(map(), set_subnets_input(), list()) ::
          {:ok, set_subnets_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, set_subnets_errors()}
  def set_subnets(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "SetSubnets", input, options)
  end
end
