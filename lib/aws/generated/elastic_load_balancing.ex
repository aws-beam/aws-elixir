# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ElasticLoadBalancing do
  @moduledoc """
  Elastic Load Balancing

  A load balancer can distribute incoming traffic across your EC2 instances.

  This enables you to increase the availability of your application. The load
  balancer
  also monitors the health of its registered instances and ensures that it routes
  traffic
  only to healthy instances. You configure your load balancer to accept incoming
  traffic
  by specifying one or more listeners, which are configured with a protocol and
  port
  number for connections from clients to the load balancer and a protocol and port
  number
  for connections from the load balancer to the instances.

  Elastic Load Balancing supports three types of load balancers: Application Load
  Balancers, Network Load Balancers,
  and Classic Load Balancers. You can select a load balancer based on your
  application needs. For more
  information, see the [Elastic Load Balancing User Guide](https://docs.aws.amazon.com/elasticloadbalancing/latest/userguide/).

  This reference covers the 2012-06-01 API, which supports Classic Load Balancers.
  The 2015-12-01 API supports Application Load Balancers and Network Load
  Balancers.

  To get started, create a load balancer with one or more listeners using
  `CreateLoadBalancer`.
  Register your instances with the load balancer using
  `RegisterInstancesWithLoadBalancer`.

  All Elastic Load Balancing operations are *idempotent*, which means
  that they complete at most one time. If you repeat an operation, it succeeds
  with a 200 OK
  response code.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      policy_type_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type policy_type_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      source_security_group() :: %{
        "GroupName" => String.t(),
        "OwnerAlias" => String.t()
      }
      
  """
  @type source_security_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      attach_load_balancer_to_subnets_output() :: %{
        "Subnets" => list(String.t())
      }
      
  """
  @type attach_load_balancer_to_subnets_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      backend_server_description() :: %{
        "InstancePort" => integer(),
        "PolicyNames" => list(String.t())
      }
      
  """
  @type backend_server_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      policy_description() :: %{
        "PolicyAttributeDescriptions" => list(policy_attribute_description()),
        "PolicyName" => String.t(),
        "PolicyTypeName" => String.t()
      }
      
  """
  @type policy_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_load_balancer_policy_types_output() :: %{
        "PolicyTypeDescriptions" => list(policy_type_description())
      }
      
  """
  @type describe_load_balancer_policy_types_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      policy_attribute() :: %{
        "AttributeName" => String.t(),
        "AttributeValue" => String.t()
      }
      
  """
  @type policy_attribute() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      apply_security_groups_to_load_balancer_output() :: %{
        "SecurityGroups" => list(String.t())
      }
      
  """
  @type apply_security_groups_to_load_balancer_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      connection_settings() :: %{
        "IdleTimeout" => integer()
      }
      
  """
  @type connection_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_load_balancer_policies_input() :: %{
        optional("LoadBalancerName") => String.t(),
        optional("PolicyNames") => list(String.t())
      }
      
  """
  @type describe_load_balancer_policies_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dependency_throttle_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type dependency_throttle_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      listener() :: %{
        "InstancePort" => integer(),
        "InstanceProtocol" => String.t(),
        "LoadBalancerPort" => integer(),
        "Protocol" => String.t(),
        "SSLCertificateId" => String.t()
      }
      
  """
  @type listener() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_access_point_output() :: %{}
      
  """
  @type delete_access_point_output() :: %{}

  @typedoc """

  ## Example:
      
      describe_access_points_output() :: %{
        "LoadBalancerDescriptions" => list(load_balancer_description()),
        "NextMarker" => String.t()
      }
      
  """
  @type describe_access_points_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_load_balancer_listener_ssl_certificate_input() :: %{
        required("LoadBalancerName") => String.t(),
        required("LoadBalancerPort") => integer(),
        required("SSLCertificateId") => String.t()
      }
      
  """
  @type set_load_balancer_listener_ssl_certificate_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      duplicate_access_point_name_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type duplicate_access_point_name_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      attach_load_balancer_to_subnets_input() :: %{
        required("LoadBalancerName") => String.t(),
        required("Subnets") => list(String.t())
      }
      
  """
  @type attach_load_balancer_to_subnets_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_tags_output() :: %{}
      
  """
  @type add_tags_output() :: %{}

  @typedoc """

  ## Example:
      
      load_balancer_description() :: %{
        "AvailabilityZones" => list(String.t()),
        "BackendServerDescriptions" => list(backend_server_description()),
        "CanonicalHostedZoneName" => String.t(),
        "CanonicalHostedZoneNameID" => String.t(),
        "CreatedTime" => non_neg_integer(),
        "DNSName" => String.t(),
        "HealthCheck" => health_check(),
        "Instances" => list(instance()),
        "ListenerDescriptions" => list(listener_description()),
        "LoadBalancerName" => String.t(),
        "Policies" => policies(),
        "Scheme" => String.t(),
        "SecurityGroups" => list(String.t()),
        "SourceSecurityGroup" => source_security_group(),
        "Subnets" => list(String.t()),
        "VPCId" => String.t()
      }
      
  """
  @type load_balancer_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      app_cookie_stickiness_policy() :: %{
        "CookieName" => String.t(),
        "PolicyName" => String.t()
      }
      
  """
  @type app_cookie_stickiness_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_availability_zones_input() :: %{
        required("AvailabilityZones") => list(String.t()),
        required("LoadBalancerName") => String.t()
      }
      
  """
  @type add_availability_zones_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_tags_input() :: %{
        required("LoadBalancerNames") => list(String.t()),
        required("Tags") => list(tag())
      }
      
  """
  @type add_tags_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      limit() :: %{
        "Max" => String.t(),
        "Name" => String.t()
      }
      
  """
  @type limit() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_configuration_request_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_configuration_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      subnet_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type subnet_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_lb_cookie_stickiness_policy_input() :: %{
        optional("CookieExpirationPeriod") => float(),
        required("LoadBalancerName") => String.t(),
        required("PolicyName") => String.t()
      }
      
  """
  @type create_lb_cookie_stickiness_policy_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_load_balancer_policy_input() :: %{
        required("LoadBalancerName") => String.t(),
        required("PolicyName") => String.t()
      }
      
  """
  @type delete_load_balancer_policy_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_end_point_state_input() :: %{
        optional("Instances") => list(instance()),
        required("LoadBalancerName") => String.t()
      }
      
  """
  @type describe_end_point_state_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remove_tags_output() :: %{}
      
  """
  @type remove_tags_output() :: %{}

  @typedoc """

  ## Example:
      
      create_lb_cookie_stickiness_policy_output() :: %{}
      
  """
  @type create_lb_cookie_stickiness_policy_output() :: %{}

  @typedoc """

  ## Example:
      
      policy_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type policy_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      policy_attribute_description() :: %{
        "AttributeName" => String.t(),
        "AttributeValue" => String.t()
      }
      
  """
  @type policy_attribute_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_key_only() :: %{
        "Key" => String.t()
      }
      
  """
  @type tag_key_only() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      duplicate_listener_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type duplicate_listener_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lb_cookie_stickiness_policy() :: %{
        "CookieExpirationPeriod" => float(),
        "PolicyName" => String.t()
      }
      
  """
  @type lb_cookie_stickiness_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      load_balancer_attributes() :: %{
        "AccessLog" => access_log(),
        "AdditionalAttributes" => list(additional_attribute()),
        "ConnectionDraining" => connection_draining(),
        "ConnectionSettings" => connection_settings(),
        "CrossZoneLoadBalancing" => cross_zone_load_balancing()
      }
      
  """
  @type load_balancer_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_end_point_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_end_point_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_tags_input() :: %{
        required("LoadBalancerNames") => list(String.t())
      }
      
  """
  @type describe_tags_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detach_load_balancer_from_subnets_output() :: %{
        "Subnets" => list(String.t())
      }
      
  """
  @type detach_load_balancer_from_subnets_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      certificate_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type certificate_not_found_exception() :: %{String.t() => any()}

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
      
      delete_access_point_input() :: %{
        required("LoadBalancerName") => String.t()
      }
      
  """
  @type delete_access_point_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_description() :: %{
        "LoadBalancerName" => String.t(),
        "Tags" => list(tag())
      }
      
  """
  @type tag_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deregister_end_points_output() :: %{
        "Instances" => list(instance())
      }
      
  """
  @type deregister_end_points_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      connection_draining() :: %{
        "Enabled" => boolean(),
        "Timeout" => integer()
      }
      
  """
  @type connection_draining() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remove_availability_zones_input() :: %{
        required("AvailabilityZones") => list(String.t()),
        required("LoadBalancerName") => String.t()
      }
      
  """
  @type remove_availability_zones_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_availability_zones_output() :: %{
        "AvailabilityZones" => list(String.t())
      }
      
  """
  @type add_availability_zones_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_tags_output() :: %{
        "TagDescriptions" => list(tag_description())
      }
      
  """
  @type describe_tags_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_load_balancer_listener_ssl_certificate_output() :: %{}
      
  """
  @type set_load_balancer_listener_ssl_certificate_output() :: %{}

  @typedoc """

  ## Example:
      
      access_point_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type access_point_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_load_balancer_listener_output() :: %{}
      
  """
  @type create_load_balancer_listener_output() :: %{}

  @typedoc """

  ## Example:
      
      create_access_point_input() :: %{
        optional("AvailabilityZones") => list(String.t()),
        optional("Scheme") => String.t(),
        optional("SecurityGroups") => list(String.t()),
        optional("Subnets") => list(String.t()),
        optional("Tags") => list(tag()),
        required("Listeners") => list(listener()),
        required("LoadBalancerName") => String.t()
      }
      
  """
  @type create_access_point_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      apply_security_groups_to_load_balancer_input() :: %{
        required("LoadBalancerName") => String.t(),
        required("SecurityGroups") => list(String.t())
      }
      
  """
  @type apply_security_groups_to_load_balancer_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      configure_health_check_input() :: %{
        required("HealthCheck") => health_check(),
        required("LoadBalancerName") => String.t()
      }
      
  """
  @type configure_health_check_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      health_check() :: %{
        "HealthyThreshold" => integer(),
        "Interval" => integer(),
        "Target" => String.t(),
        "Timeout" => integer(),
        "UnhealthyThreshold" => integer()
      }
      
  """
  @type health_check() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      operation_not_permitted_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type operation_not_permitted_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance_state() :: %{
        "Description" => String.t(),
        "InstanceId" => String.t(),
        "ReasonCode" => String.t(),
        "State" => String.t()
      }
      
  """
  @type instance_state() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_access_points_input() :: %{
        optional("LoadBalancerNames") => list(String.t()),
        optional("Marker") => String.t(),
        optional("PageSize") => integer()
      }
      
  """
  @type describe_access_points_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_account_limits_output() :: %{
        "Limits" => list(limit()),
        "NextMarker" => String.t()
      }
      
  """
  @type describe_account_limits_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      policy_attribute_type_description() :: %{
        "AttributeName" => String.t(),
        "AttributeType" => String.t(),
        "Cardinality" => String.t(),
        "DefaultValue" => String.t(),
        "Description" => String.t()
      }
      
  """
  @type policy_attribute_type_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      policies() :: %{
        "AppCookieStickinessPolicies" => list(app_cookie_stickiness_policy()),
        "LBCookieStickinessPolicies" => list(lb_cookie_stickiness_policy()),
        "OtherPolicies" => list(String.t())
      }
      
  """
  @type policies() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_load_balancer_policy_types_input() :: %{
        optional("PolicyTypeNames") => list(String.t())
      }
      
  """
  @type describe_load_balancer_policy_types_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_load_balancer_listener_input() :: %{
        required("Listeners") => list(listener()),
        required("LoadBalancerName") => String.t()
      }
      
  """
  @type create_load_balancer_listener_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_load_balancer_attributes_output() :: %{
        "LoadBalancerAttributes" => load_balancer_attributes()
      }
      
  """
  @type describe_load_balancer_attributes_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_load_balancer_attributes_output() :: %{
        "LoadBalancerAttributes" => load_balancer_attributes(),
        "LoadBalancerName" => String.t()
      }
      
  """
  @type modify_load_balancer_attributes_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_security_group_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_security_group_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_app_cookie_stickiness_policy_output() :: %{}
      
  """
  @type create_app_cookie_stickiness_policy_output() :: %{}

  @typedoc """

  ## Example:
      
      duplicate_policy_name_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type duplicate_policy_name_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      too_many_access_points_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type too_many_access_points_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance() :: %{
        "InstanceId" => String.t()
      }
      
  """
  @type instance() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detach_load_balancer_from_subnets_input() :: %{
        required("LoadBalancerName") => String.t(),
        required("Subnets") => list(String.t())
      }
      
  """
  @type detach_load_balancer_from_subnets_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_app_cookie_stickiness_policy_input() :: %{
        required("CookieName") => String.t(),
        required("LoadBalancerName") => String.t(),
        required("PolicyName") => String.t()
      }
      
  """
  @type create_app_cookie_stickiness_policy_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_load_balancer_listener_input() :: %{
        required("LoadBalancerName") => String.t(),
        required("LoadBalancerPorts") => list(integer())
      }
      
  """
  @type delete_load_balancer_listener_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_load_balancer_attributes_input() :: %{
        required("LoadBalancerAttributes") => load_balancer_attributes(),
        required("LoadBalancerName") => String.t()
      }
      
  """
  @type modify_load_balancer_attributes_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_end_points_input() :: %{
        required("Instances") => list(instance()),
        required("LoadBalancerName") => String.t()
      }
      
  """
  @type register_end_points_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      additional_attribute() :: %{
        "Key" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type additional_attribute() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      configure_health_check_output() :: %{
        "HealthCheck" => health_check()
      }
      
  """
  @type configure_health_check_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_load_balancer_policies_of_listener_output() :: %{}
      
  """
  @type set_load_balancer_policies_of_listener_output() :: %{}

  @typedoc """

  ## Example:
      
      duplicate_tag_keys_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type duplicate_tag_keys_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_load_balancer_attributes_input() :: %{
        required("LoadBalancerName") => String.t()
      }
      
  """
  @type describe_load_balancer_attributes_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remove_availability_zones_output() :: %{
        "AvailabilityZones" => list(String.t())
      }
      
  """
  @type remove_availability_zones_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deregister_end_points_input() :: %{
        required("Instances") => list(instance()),
        required("LoadBalancerName") => String.t()
      }
      
  """
  @type deregister_end_points_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_access_point_output() :: %{
        "DNSName" => String.t()
      }
      
  """
  @type create_access_point_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_load_balancer_policy_output() :: %{}
      
  """
  @type delete_load_balancer_policy_output() :: %{}

  @typedoc """

  ## Example:
      
      describe_account_limits_input() :: %{
        optional("Marker") => String.t(),
        optional("PageSize") => integer()
      }
      
  """
  @type describe_account_limits_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_load_balancer_policy_output() :: %{}
      
  """
  @type create_load_balancer_policy_output() :: %{}

  @typedoc """

  ## Example:
      
      invalid_subnet_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_subnet_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      too_many_policies_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type too_many_policies_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remove_tags_input() :: %{
        required("LoadBalancerNames") => list(String.t()),
        required("Tags") => list(tag_key_only())
      }
      
  """
  @type remove_tags_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_log() :: %{
        "EmitInterval" => integer(),
        "Enabled" => boolean(),
        "S3BucketName" => String.t(),
        "S3BucketPrefix" => String.t()
      }
      
  """
  @type access_log() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      listener_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type listener_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_load_balancer_policies_for_backend_server_output() :: %{}
      
  """
  @type set_load_balancer_policies_for_backend_server_output() :: %{}

  @typedoc """

  ## Example:
      
      set_load_balancer_policies_for_backend_server_input() :: %{
        required("InstancePort") => integer(),
        required("LoadBalancerName") => String.t(),
        required("PolicyNames") => list(String.t())
      }
      
  """
  @type set_load_balancer_policies_for_backend_server_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      policy_type_description() :: %{
        "Description" => String.t(),
        "PolicyAttributeTypeDescriptions" => list(policy_attribute_type_description()),
        "PolicyTypeName" => String.t()
      }
      
  """
  @type policy_type_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_load_balancer_policies_output() :: %{
        "PolicyDescriptions" => list(policy_description())
      }
      
  """
  @type describe_load_balancer_policies_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_end_point_state_output() :: %{
        "InstanceStates" => list(instance_state())
      }
      
  """
  @type describe_end_point_state_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_scheme_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_scheme_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_load_balancer_policy_input() :: %{
        optional("PolicyAttributes") => list(policy_attribute()),
        required("LoadBalancerName") => String.t(),
        required("PolicyName") => String.t(),
        required("PolicyTypeName") => String.t()
      }
      
  """
  @type create_load_balancer_policy_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      load_balancer_attribute_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type load_balancer_attribute_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_load_balancer_listener_output() :: %{}
      
  """
  @type delete_load_balancer_listener_output() :: %{}

  @typedoc """

  ## Example:
      
      cross_zone_load_balancing() :: %{
        "Enabled" => boolean()
      }
      
  """
  @type cross_zone_load_balancing() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_end_points_output() :: %{
        "Instances" => list(instance())
      }
      
  """
  @type register_end_points_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      too_many_tags_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type too_many_tags_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unsupported_protocol_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type unsupported_protocol_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_load_balancer_policies_of_listener_input() :: %{
        required("LoadBalancerName") => String.t(),
        required("LoadBalancerPort") => integer(),
        required("PolicyNames") => list(String.t())
      }
      
  """
  @type set_load_balancer_policies_of_listener_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      listener_description() :: %{
        "Listener" => listener(),
        "PolicyNames" => list(String.t())
      }
      
  """
  @type listener_description() :: %{String.t() => any()}

  @type add_tags_errors() ::
          too_many_tags_exception()
          | duplicate_tag_keys_exception()
          | access_point_not_found_exception()

  @type apply_security_groups_to_load_balancer_errors() ::
          invalid_security_group_exception()
          | access_point_not_found_exception()
          | invalid_configuration_request_exception()

  @type attach_load_balancer_to_subnets_errors() ::
          invalid_subnet_exception()
          | access_point_not_found_exception()
          | subnet_not_found_exception()
          | invalid_configuration_request_exception()

  @type configure_health_check_errors() :: access_point_not_found_exception()

  @type create_app_cookie_stickiness_policy_errors() ::
          too_many_policies_exception()
          | duplicate_policy_name_exception()
          | access_point_not_found_exception()
          | invalid_configuration_request_exception()

  @type create_lb_cookie_stickiness_policy_errors() ::
          too_many_policies_exception()
          | duplicate_policy_name_exception()
          | access_point_not_found_exception()
          | invalid_configuration_request_exception()

  @type create_load_balancer_errors() ::
          unsupported_protocol_exception()
          | too_many_tags_exception()
          | invalid_scheme_exception()
          | invalid_subnet_exception()
          | duplicate_tag_keys_exception()
          | too_many_access_points_exception()
          | invalid_security_group_exception()
          | operation_not_permitted_exception()
          | certificate_not_found_exception()
          | subnet_not_found_exception()
          | invalid_configuration_request_exception()
          | duplicate_access_point_name_exception()

  @type create_load_balancer_listeners_errors() ::
          unsupported_protocol_exception()
          | access_point_not_found_exception()
          | certificate_not_found_exception()
          | duplicate_listener_exception()
          | invalid_configuration_request_exception()

  @type create_load_balancer_policy_errors() ::
          too_many_policies_exception()
          | duplicate_policy_name_exception()
          | access_point_not_found_exception()
          | invalid_configuration_request_exception()
          | policy_type_not_found_exception()

  @type delete_load_balancer_listeners_errors() :: access_point_not_found_exception()

  @type delete_load_balancer_policy_errors() ::
          access_point_not_found_exception() | invalid_configuration_request_exception()

  @type deregister_instances_from_load_balancer_errors() ::
          access_point_not_found_exception() | invalid_end_point_exception()

  @type describe_instance_health_errors() ::
          access_point_not_found_exception() | invalid_end_point_exception()

  @type describe_load_balancer_attributes_errors() ::
          load_balancer_attribute_not_found_exception() | access_point_not_found_exception()

  @type describe_load_balancer_policies_errors() ::
          access_point_not_found_exception() | policy_not_found_exception()

  @type describe_load_balancer_policy_types_errors() :: policy_type_not_found_exception()

  @type describe_load_balancers_errors() ::
          access_point_not_found_exception() | dependency_throttle_exception()

  @type describe_tags_errors() :: access_point_not_found_exception()

  @type detach_load_balancer_from_subnets_errors() ::
          access_point_not_found_exception() | invalid_configuration_request_exception()

  @type disable_availability_zones_for_load_balancer_errors() ::
          access_point_not_found_exception() | invalid_configuration_request_exception()

  @type enable_availability_zones_for_load_balancer_errors() :: access_point_not_found_exception()

  @type modify_load_balancer_attributes_errors() ::
          load_balancer_attribute_not_found_exception()
          | access_point_not_found_exception()
          | invalid_configuration_request_exception()

  @type register_instances_with_load_balancer_errors() ::
          access_point_not_found_exception() | invalid_end_point_exception()

  @type remove_tags_errors() :: access_point_not_found_exception()

  @type set_load_balancer_listener_ssl_certificate_errors() ::
          unsupported_protocol_exception()
          | listener_not_found_exception()
          | access_point_not_found_exception()
          | certificate_not_found_exception()
          | invalid_configuration_request_exception()

  @type set_load_balancer_policies_for_backend_server_errors() ::
          access_point_not_found_exception()
          | policy_not_found_exception()
          | invalid_configuration_request_exception()

  @type set_load_balancer_policies_of_listener_errors() ::
          listener_not_found_exception()
          | access_point_not_found_exception()
          | policy_not_found_exception()
          | invalid_configuration_request_exception()

  def metadata do
    %{
      api_version: "2012-06-01",
      content_type: "application/x-www-form-urlencoded",
      credential_scope: nil,
      endpoint_prefix: "elasticloadbalancing",
      global?: false,
      hostname: nil,
      protocol: "query",
      service_id: "Elastic Load Balancing",
      signature_version: "v4",
      signing_name: "elasticloadbalancing",
      target_prefix: "ElasticLoadBalancing_v7"
    }
  end

  @doc """
  Adds the specified tags to the specified load balancer.

  Each load balancer can have a maximum of 10 tags.

  Each tag consists of a key and an optional value. If a tag with the same key is
  already associated
  with the load balancer, `AddTags` updates its value.

  For more information, see [Tag Your Classic Load Balancer](https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/add-remove-tags.html)
  in the *Classic Load Balancers Guide*.
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
  Associates one or more security groups with your load balancer in a virtual
  private cloud (VPC).

  The specified security groups override the previously associated security
  groups.

  For more information, see [Security Groups for Load Balancers in a VPC](https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-security-groups.html#elb-vpc-security-groups)
  in the *Classic Load Balancers Guide*.
  """
  @spec apply_security_groups_to_load_balancer(
          map(),
          apply_security_groups_to_load_balancer_input(),
          list()
        ) ::
          {:ok, apply_security_groups_to_load_balancer_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, apply_security_groups_to_load_balancer_errors()}
  def apply_security_groups_to_load_balancer(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ApplySecurityGroupsToLoadBalancer", input, options)
  end

  @doc """
  Adds one or more subnets to the set of configured subnets for the specified load
  balancer.

  The load balancer evenly distributes requests across all registered subnets.
  For more information, see [Add or Remove Subnets for Your Load Balancer in a VPC](https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-manage-subnets.html)
  in the *Classic Load Balancers Guide*.
  """
  @spec attach_load_balancer_to_subnets(map(), attach_load_balancer_to_subnets_input(), list()) ::
          {:ok, attach_load_balancer_to_subnets_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, attach_load_balancer_to_subnets_errors()}
  def attach_load_balancer_to_subnets(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AttachLoadBalancerToSubnets", input, options)
  end

  @doc """
  Specifies the health check settings to use when evaluating the health state of
  your EC2 instances.

  For more information, see [Configure Health Checks for Your Load Balancer](https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-healthchecks.html)
  in the *Classic Load Balancers Guide*.
  """
  @spec configure_health_check(map(), configure_health_check_input(), list()) ::
          {:ok, configure_health_check_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, configure_health_check_errors()}
  def configure_health_check(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ConfigureHealthCheck", input, options)
  end

  @doc """
  Generates a stickiness policy with sticky session lifetimes that follow that of
  an application-generated cookie.

  This policy can be associated only with HTTP/HTTPS listeners.

  This policy is similar to the policy created by
  `CreateLBCookieStickinessPolicy`,
  except that the lifetime of the special Elastic Load Balancing cookie, `AWSELB`,
  follows the lifetime of the application-generated cookie specified in the policy
  configuration.
  The load balancer only inserts a new stickiness cookie when the application
  response
  includes a new application cookie.

  If the application cookie is explicitly removed or expires, the session stops
  being sticky until a new application cookie is issued.

  For more information, see [Application-Controlled Session Stickiness](https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-sticky-sessions.html#enable-sticky-sessions-application)
  in the *Classic Load Balancers Guide*.
  """
  @spec create_app_cookie_stickiness_policy(
          map(),
          create_app_cookie_stickiness_policy_input(),
          list()
        ) ::
          {:ok, create_app_cookie_stickiness_policy_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_app_cookie_stickiness_policy_errors()}
  def create_app_cookie_stickiness_policy(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateAppCookieStickinessPolicy", input, options)
  end

  @doc """
  Generates a stickiness policy with sticky session lifetimes controlled by the
  lifetime of the browser (user-agent) or a specified expiration period.

  This policy can be associated only with HTTP/HTTPS listeners.

  When a load balancer implements this policy, the load balancer uses a special
  cookie to track the instance for each request. When the load balancer receives a
  request, it first checks to see if this cookie is present in the request.
  If so, the load balancer sends the request to the application server specified
  in the cookie. If not, the load balancer sends the request to a server that is
  chosen based on the existing load-balancing algorithm.

  A cookie is inserted into the response for binding subsequent requests from the
  same user to that server. The validity of the cookie is based on the cookie
  expiration time, which is specified in the policy configuration.

  For more information, see [Duration-Based Session Stickiness](https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-sticky-sessions.html#enable-sticky-sessions-duration)
  in the *Classic Load Balancers Guide*.
  """
  @spec create_lb_cookie_stickiness_policy(
          map(),
          create_lb_cookie_stickiness_policy_input(),
          list()
        ) ::
          {:ok, create_lb_cookie_stickiness_policy_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_lb_cookie_stickiness_policy_errors()}
  def create_lb_cookie_stickiness_policy(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateLBCookieStickinessPolicy", input, options)
  end

  @doc """
  Creates a Classic Load Balancer.

  You can add listeners, security groups, subnets, and tags when you create your
  load balancer,
  or you can add them later using `CreateLoadBalancerListeners`,
  `ApplySecurityGroupsToLoadBalancer`, `AttachLoadBalancerToSubnets`,
  and `AddTags`.

  To describe your current load balancers, see `DescribeLoadBalancers`.
  When you are finished with a load balancer, you can delete it using
  `DeleteLoadBalancer`.

  You can create up to 20 load balancers per region per account.
  You can request an increase for the number of load balancers for your account.
  For more information, see [Limits for Your Classic Load Balancer](https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-limits.html)
  in the *Classic Load Balancers Guide*.
  """
  @spec create_load_balancer(map(), create_access_point_input(), list()) ::
          {:ok, create_access_point_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_load_balancer_errors()}
  def create_load_balancer(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateLoadBalancer", input, options)
  end

  @doc """
  Creates one or more listeners for the specified load balancer.

  If a listener with the specified port does not already exist, it is created;
  otherwise, the properties of the new listener must match the properties of the
  existing listener.

  For more information, see [Listeners for Your Classic Load Balancer](https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-listener-config.html)
  in the *Classic Load Balancers Guide*.
  """
  @spec create_load_balancer_listeners(map(), create_load_balancer_listener_input(), list()) ::
          {:ok, create_load_balancer_listener_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_load_balancer_listeners_errors()}
  def create_load_balancer_listeners(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateLoadBalancerListeners", input, options)
  end

  @doc """
  Creates a policy with the specified attributes for the specified load balancer.

  Policies are settings that are saved for your load balancer and that can be
  applied to the listener or the application server, depending on the policy type.
  """
  @spec create_load_balancer_policy(map(), create_load_balancer_policy_input(), list()) ::
          {:ok, create_load_balancer_policy_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_load_balancer_policy_errors()}
  def create_load_balancer_policy(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateLoadBalancerPolicy", input, options)
  end

  @doc """
  Deletes the specified load balancer.

  If you are attempting to recreate a load balancer, you must reconfigure all
  settings. The DNS name associated with a deleted load balancer are no longer
  usable. The name and associated DNS record of the deleted load balancer no
  longer exist and traffic sent to any of its IP addresses is no longer delivered
  to your instances.

  If the load balancer does not exist or has already been deleted, the call to
  `DeleteLoadBalancer` still succeeds.
  """
  @spec delete_load_balancer(map(), delete_access_point_input(), list()) ::
          {:ok, delete_access_point_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def delete_load_balancer(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteLoadBalancer", input, options)
  end

  @doc """
  Deletes the specified listeners from the specified load balancer.
  """
  @spec delete_load_balancer_listeners(map(), delete_load_balancer_listener_input(), list()) ::
          {:ok, delete_load_balancer_listener_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_load_balancer_listeners_errors()}
  def delete_load_balancer_listeners(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteLoadBalancerListeners", input, options)
  end

  @doc """
  Deletes the specified policy from the specified load balancer.

  This policy must not be enabled for any listeners.
  """
  @spec delete_load_balancer_policy(map(), delete_load_balancer_policy_input(), list()) ::
          {:ok, delete_load_balancer_policy_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_load_balancer_policy_errors()}
  def delete_load_balancer_policy(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteLoadBalancerPolicy", input, options)
  end

  @doc """
  Deregisters the specified instances from the specified load balancer.

  After the instance is deregistered, it no longer receives traffic from the load
  balancer.

  You can use `DescribeLoadBalancers` to verify that the instance is deregistered
  from the load balancer.

  For more information, see [Register or De-Register EC2 Instances](https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-deregister-register-instances.html)
  in the *Classic Load Balancers Guide*.
  """
  @spec deregister_instances_from_load_balancer(map(), deregister_end_points_input(), list()) ::
          {:ok, deregister_end_points_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, deregister_instances_from_load_balancer_errors()}
  def deregister_instances_from_load_balancer(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeregisterInstancesFromLoadBalancer", input, options)
  end

  @doc """
  Describes the current Elastic Load Balancing resource limits for your AWS
  account.

  For more information, see [Limits for Your Classic Load Balancer](https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-limits.html)
  in the *Classic Load Balancers Guide*.
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
  Describes the state of the specified instances with respect to the specified
  load balancer.

  If no instances are specified, the call describes the state of all instances
  that are currently registered with the load balancer. If instances are
  specified, their state is returned even if they are no longer registered with
  the load balancer. The state of terminated instances is not returned.
  """
  @spec describe_instance_health(map(), describe_end_point_state_input(), list()) ::
          {:ok, describe_end_point_state_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_instance_health_errors()}
  def describe_instance_health(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeInstanceHealth", input, options)
  end

  @doc """
  Describes the attributes for the specified load balancer.
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
  Describes the specified policies.

  If you specify a load balancer name, the action returns the descriptions of all
  policies created for the load balancer.
  If you specify a policy name associated with your load balancer, the action
  returns the description of that policy.
  If you don't specify a load balancer name, the action returns descriptions of
  the specified sample policies, or descriptions of all sample policies.
  The names of the sample policies have the `ELBSample-` prefix.
  """
  @spec describe_load_balancer_policies(map(), describe_load_balancer_policies_input(), list()) ::
          {:ok, describe_load_balancer_policies_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_load_balancer_policies_errors()}
  def describe_load_balancer_policies(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeLoadBalancerPolicies", input, options)
  end

  @doc """
  Describes the specified load balancer policy types or all load balancer policy
  types.

  The description of each type indicates how it can be used. For example,
  some policies can be used only with layer 7 listeners,
  some policies can be used only with layer 4 listeners,
  and some policies can be used only with your EC2 instances.

  You can use `CreateLoadBalancerPolicy` to create a policy configuration for any
  of these policy types.
  Then, depending on the policy type, use either
  `SetLoadBalancerPoliciesOfListener` or
  `SetLoadBalancerPoliciesForBackendServer` to set the policy.
  """
  @spec describe_load_balancer_policy_types(
          map(),
          describe_load_balancer_policy_types_input(),
          list()
        ) ::
          {:ok, describe_load_balancer_policy_types_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_load_balancer_policy_types_errors()}
  def describe_load_balancer_policy_types(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeLoadBalancerPolicyTypes", input, options)
  end

  @doc """
  Describes the specified the load balancers.

  If no load balancers are specified, the call describes all of your load
  balancers.
  """
  @spec describe_load_balancers(map(), describe_access_points_input(), list()) ::
          {:ok, describe_access_points_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_load_balancers_errors()}
  def describe_load_balancers(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeLoadBalancers", input, options)
  end

  @doc """
  Describes the tags associated with the specified load balancers.
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
  Removes the specified subnets from the set of configured subnets for the load
  balancer.

  After a subnet is removed, all EC2 instances registered with the load balancer
  in the removed subnet go into the `OutOfService` state. Then,
  the load balancer balances the traffic among the remaining routable subnets.
  """
  @spec detach_load_balancer_from_subnets(
          map(),
          detach_load_balancer_from_subnets_input(),
          list()
        ) ::
          {:ok, detach_load_balancer_from_subnets_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, detach_load_balancer_from_subnets_errors()}
  def detach_load_balancer_from_subnets(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DetachLoadBalancerFromSubnets", input, options)
  end

  @doc """
  Removes the specified Availability Zones from the set of Availability Zones for
  the specified load balancer
  in EC2-Classic or a default VPC.

  For load balancers in a non-default VPC, use `DetachLoadBalancerFromSubnets`.

  There must be at least one Availability Zone registered with a load balancer at
  all times.
  After an Availability Zone is removed, all instances registered with the load
  balancer that are in the removed
  Availability Zone go into the `OutOfService` state. Then, the load balancer
  attempts to equally balance
  the traffic among its remaining Availability Zones.

  For more information, see [Add or Remove Availability Zones](https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/enable-disable-az.html)
  in the *Classic Load Balancers Guide*.
  """
  @spec disable_availability_zones_for_load_balancer(
          map(),
          remove_availability_zones_input(),
          list()
        ) ::
          {:ok, remove_availability_zones_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disable_availability_zones_for_load_balancer_errors()}
  def disable_availability_zones_for_load_balancer(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DisableAvailabilityZonesForLoadBalancer", input, options)
  end

  @doc """
  Adds the specified Availability Zones to the set of Availability Zones for the
  specified load balancer
  in EC2-Classic or a default VPC.

  For load balancers in a non-default VPC, use `AttachLoadBalancerToSubnets`.

  The load balancer evenly distributes requests across all its registered
  Availability Zones
  that contain instances. For more information, see [Add or Remove Availability Zones](https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/enable-disable-az.html)
  in the *Classic Load Balancers Guide*.
  """
  @spec enable_availability_zones_for_load_balancer(map(), add_availability_zones_input(), list()) ::
          {:ok, add_availability_zones_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, enable_availability_zones_for_load_balancer_errors()}
  def enable_availability_zones_for_load_balancer(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "EnableAvailabilityZonesForLoadBalancer", input, options)
  end

  @doc """
  Modifies the attributes of the specified load balancer.

  You can modify the load balancer attributes, such as `AccessLogs`,
  `ConnectionDraining`, and
  `CrossZoneLoadBalancing` by either enabling or disabling them. Or, you can
  modify the load balancer attribute
  `ConnectionSettings` by specifying an idle connection timeout value for your
  load balancer.

  For more information, see the following in the *Classic Load Balancers Guide*:

    *

  [Cross-Zone Load Balancing](https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/enable-disable-crosszone-lb.html)

    *

  [Connection Draining](https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/config-conn-drain.html)

    *

  [Access Logs](https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/access-log-collection.html)

    *

  [Idle Connection Timeout](https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/config-idle-timeout.html)
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
  Adds the specified instances to the specified load balancer.

  The instance must be a running instance in the same network as the load balancer
  (EC2-Classic or the same VPC). If you have EC2-Classic instances and a load
  balancer in a VPC with ClassicLink enabled, you can link the EC2-Classic
  instances to that VPC and then register the linked EC2-Classic instances with
  the load balancer in the VPC.

  Note that `RegisterInstanceWithLoadBalancer` completes when the request has been
  registered.
  Instance registration takes a little time to complete. To check the state of the
  registered instances, use
  `DescribeLoadBalancers` or `DescribeInstanceHealth`.

  After the instance is registered, it starts receiving traffic
  and requests from the load balancer. Any instance that is not
  in one of the Availability Zones registered for the load balancer
  is moved to the `OutOfService` state. If an Availability Zone
  is added to the load balancer later, any instances registered with the
  load balancer move to the `InService` state.

  To deregister instances from a load balancer, use
  `DeregisterInstancesFromLoadBalancer`.

  For more information, see [Register or De-Register EC2 Instances](https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-deregister-register-instances.html)
  in the *Classic Load Balancers Guide*.
  """
  @spec register_instances_with_load_balancer(map(), register_end_points_input(), list()) ::
          {:ok, register_end_points_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, register_instances_with_load_balancer_errors()}
  def register_instances_with_load_balancer(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "RegisterInstancesWithLoadBalancer", input, options)
  end

  @doc """
  Removes one or more tags from the specified load balancer.
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
  Sets the certificate that terminates the specified listener's SSL connections.

  The specified certificate replaces any prior certificate that was used on the
  same load balancer and port.

  For more information about updating your SSL certificate, see
  [Replace the SSL Certificate for Your Load Balancer](https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-update-ssl-cert.html)
  in the *Classic Load Balancers Guide*.
  """
  @spec set_load_balancer_listener_ssl_certificate(
          map(),
          set_load_balancer_listener_ssl_certificate_input(),
          list()
        ) ::
          {:ok, set_load_balancer_listener_ssl_certificate_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, set_load_balancer_listener_ssl_certificate_errors()}
  def set_load_balancer_listener_ssl_certificate(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "SetLoadBalancerListenerSSLCertificate", input, options)
  end

  @doc """
  Replaces the set of policies associated with the specified port on which the EC2
  instance is listening with a new set of policies.

  At this time, only the back-end server authentication policy type can be applied
  to the instance ports; this policy type is composed of multiple public key
  policies.

  Each time you use `SetLoadBalancerPoliciesForBackendServer` to enable the
  policies,
  use the `PolicyNames` parameter to list the policies that you want to enable.

  You can use `DescribeLoadBalancers` or `DescribeLoadBalancerPolicies` to verify
  that the policy
  is associated with the EC2 instance.

  For more information about enabling back-end instance authentication, see
  [Configure Back-end Instance Authentication](https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-create-https-ssl-load-balancer.html#configure_backendauth_clt)
  in the *Classic Load Balancers Guide*. For more information about Proxy
  Protocol, see
  [Configure Proxy Protocol Support](https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/enable-proxy-protocol.html)
  in the *Classic Load Balancers Guide*.
  """
  @spec set_load_balancer_policies_for_backend_server(
          map(),
          set_load_balancer_policies_for_backend_server_input(),
          list()
        ) ::
          {:ok, set_load_balancer_policies_for_backend_server_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, set_load_balancer_policies_for_backend_server_errors()}
  def set_load_balancer_policies_for_backend_server(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "SetLoadBalancerPoliciesForBackendServer", input, options)
  end

  @doc """
  Replaces the current set of policies for the specified load balancer port with
  the specified set of policies.

  To enable back-end server authentication, use
  `SetLoadBalancerPoliciesForBackendServer`.

  For more information about setting policies, see
  [Update the SSL Negotiation Configuration](https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/ssl-config-update.html),
  [Duration-Based Session Stickiness](https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-sticky-sessions.html#enable-sticky-sessions-duration),
  and
  [Application-Controlled Session Stickiness](https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-sticky-sessions.html#enable-sticky-sessions-application)
  in the *Classic Load Balancers Guide*.
  """
  @spec set_load_balancer_policies_of_listener(
          map(),
          set_load_balancer_policies_of_listener_input(),
          list()
        ) ::
          {:ok, set_load_balancer_policies_of_listener_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, set_load_balancer_policies_of_listener_errors()}
  def set_load_balancer_policies_of_listener(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "SetLoadBalancerPoliciesOfListener", input, options)
  end
end
