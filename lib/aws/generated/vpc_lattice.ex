# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.VPCLattice do
  @moduledoc """
  Amazon VPC Lattice is a fully managed application networking service that you
  use to connect, secure,
  and monitor all of your services across multiple accounts and virtual private
  clouds (VPCs).

  Amazon VPC Lattice interconnects your microservices and legacy services within a
  logical boundary, so that
  you can discover and manage them more efficiently. For more information, see the
  [Amazon VPC Lattice User Guide](https://docs.aws.amazon.com/vpc-lattice/latest/ug/)
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      http_match() :: %{
        "headerMatches" => list(header_match()()),
        "method" => String.t(),
        "pathMatch" => path_match()
      }

  """
  @type http_match() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_access_log_subscription_request() :: %{
        optional("clientToken") => String.t(),
        optional("tags") => map(),
        required("destinationArn") => String.t(),
        required("resourceIdentifier") => String.t()
      }

  """
  @type create_access_log_subscription_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_service_network_vpc_association_response() :: %{
        optional("arn") => String.t(),
        optional("createdBy") => String.t(),
        optional("id") => String.t(),
        optional("securityGroupIds") => list(String.t()()),
        optional("status") => String.t()
      }

  """
  @type update_service_network_vpc_association_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_access_log_subscription_response() :: %{}

  """
  @type delete_access_log_subscription_response() :: %{}

  @typedoc """

  ## Example:

      rule_update_success() :: %{
        "action" => list(),
        "arn" => String.t(),
        "id" => String.t(),
        "isDefault" => boolean(),
        "match" => list(),
        "name" => String.t(),
        "priority" => integer()
      }

  """
  @type rule_update_success() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_service_network_vpc_association_response() :: %{
        optional("arn") => String.t(),
        optional("createdBy") => String.t(),
        optional("id") => String.t(),
        optional("securityGroupIds") => list(String.t()()),
        optional("status") => String.t()
      }

  """
  @type create_service_network_vpc_association_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_rule_request() :: %{
        optional("clientToken") => String.t(),
        optional("tags") => map(),
        required("action") => list(),
        required("match") => list(),
        required("name") => String.t(),
        required("priority") => integer()
      }

  """
  @type create_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_target_group_request() :: %{
        optional("clientToken") => String.t(),
        optional("config") => target_group_config(),
        optional("tags") => map(),
        required("name") => String.t(),
        required("type") => String.t()
      }

  """
  @type create_target_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_update_rule_request() :: %{
        required("rules") => list(rule_update()())
      }

  """
  @type batch_update_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_target_group_response() :: %{
        optional("arn") => String.t(),
        optional("config") => target_group_config(),
        optional("createdAt") => non_neg_integer(),
        optional("failureCode") => [String.t()],
        optional("failureMessage") => [String.t()],
        optional("id") => String.t(),
        optional("lastUpdatedAt") => non_neg_integer(),
        optional("name") => String.t(),
        optional("serviceArns") => list(String.t()()),
        optional("status") => String.t(),
        optional("type") => String.t()
      }

  """
  @type get_target_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_resource_policy_response() :: %{}

  """
  @type delete_resource_policy_response() :: %{}

  @typedoc """

  ## Example:

      deregister_targets_request() :: %{
        required("targets") => list(target()())
      }

  """
  @type deregister_targets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_listener_response() :: %{
        optional("arn") => String.t(),
        optional("defaultAction") => list(),
        optional("id") => String.t(),
        optional("name") => String.t(),
        optional("port") => integer(),
        optional("protocol") => String.t(),
        optional("serviceArn") => String.t(),
        optional("serviceId") => String.t()
      }

  """
  @type create_listener_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_service_network_request() :: %{}

  """
  @type delete_service_network_request() :: %{}

  @typedoc """

  ## Example:

      get_service_response() :: %{
        optional("arn") => String.t(),
        optional("authType") => String.t(),
        optional("certificateArn") => String.t(),
        optional("createdAt") => non_neg_integer(),
        optional("customDomainName") => String.t(),
        optional("dnsEntry") => dns_entry(),
        optional("failureCode") => String.t(),
        optional("failureMessage") => String.t(),
        optional("id") => String.t(),
        optional("lastUpdatedAt") => non_neg_integer(),
        optional("name") => String.t(),
        optional("status") => String.t()
      }

  """
  @type get_service_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      forward_action() :: %{
        "targetGroups" => list(weighted_target_group()())
      }

  """
  @type forward_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_service_network_request() :: %{
        optional("authType") => String.t(),
        optional("clientToken") => String.t(),
        optional("tags") => map(),
        required("name") => String.t()
      }

  """
  @type create_service_network_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_network_service_association_summary() :: %{
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "customDomainName" => String.t(),
        "dnsEntry" => dns_entry(),
        "id" => String.t(),
        "serviceArn" => String.t(),
        "serviceId" => String.t(),
        "serviceName" => String.t(),
        "serviceNetworkArn" => String.t(),
        "serviceNetworkId" => String.t(),
        "serviceNetworkName" => String.t(),
        "status" => String.t()
      }

  """
  @type service_network_service_association_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      get_service_network_response() :: %{
        optional("arn") => String.t(),
        optional("authType") => String.t(),
        optional("createdAt") => non_neg_integer(),
        optional("id") => String.t(),
        optional("lastUpdatedAt") => non_neg_integer(),
        optional("name") => String.t(),
        optional("numberOfAssociatedServices") => [float()],
        optional("numberOfAssociatedVPCs") => [float()]
      }

  """
  @type get_service_network_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_service_network_response() :: %{
        optional("arn") => String.t(),
        optional("authType") => String.t(),
        optional("id") => String.t(),
        optional("name") => String.t()
      }

  """
  @type update_service_network_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_service_network_service_association_response() :: %{
        optional("arn") => String.t(),
        optional("createdBy") => String.t(),
        optional("customDomainName") => String.t(),
        optional("dnsEntry") => dns_entry(),
        optional("id") => String.t(),
        optional("status") => String.t()
      }

  """
  @type create_service_network_service_association_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_service_network_response() :: %{
        optional("arn") => String.t(),
        optional("authType") => String.t(),
        optional("id") => String.t(),
        optional("name") => String.t()
      }

  """
  @type create_service_network_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_service_network_vpc_associations_response() :: %{
        optional("nextToken") => String.t(),
        required("items") => list(service_network_vpc_association_summary()())
      }

  """
  @type list_service_network_vpc_associations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_access_log_subscription_request() :: %{}

  """
  @type get_access_log_subscription_request() :: %{}

  @typedoc """

  ## Example:

      get_service_network_request() :: %{}

  """
  @type get_service_network_request() :: %{}

  @typedoc """

  ## Example:

      service_network_summary() :: %{
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "id" => String.t(),
        "lastUpdatedAt" => non_neg_integer(),
        "name" => String.t(),
        "numberOfAssociatedServices" => [float()],
        "numberOfAssociatedVPCs" => [float()]
      }

  """
  @type service_network_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_rule_request() :: %{
        optional("action") => list(),
        optional("match") => list(),
        optional("priority") => integer()
      }

  """
  @type update_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_resource_policy_response() :: %{
        optional("policy") => String.t()
      }

  """
  @type get_resource_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_auth_policy_response() :: %{}

  """
  @type delete_auth_policy_response() :: %{}

  @typedoc """

  ## Example:

      get_service_network_vpc_association_response() :: %{
        optional("arn") => String.t(),
        optional("createdAt") => non_neg_integer(),
        optional("createdBy") => String.t(),
        optional("failureCode") => [String.t()],
        optional("failureMessage") => [String.t()],
        optional("id") => String.t(),
        optional("lastUpdatedAt") => non_neg_integer(),
        optional("securityGroupIds") => list(String.t()()),
        optional("serviceNetworkArn") => String.t(),
        optional("serviceNetworkId") => String.t(),
        optional("serviceNetworkName") => String.t(),
        optional("status") => String.t(),
        optional("vpcId") => String.t()
      }

  """
  @type get_service_network_vpc_association_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_rule_request() :: %{}

  """
  @type get_rule_request() :: %{}

  @typedoc """

  ## Example:

      list_access_log_subscriptions_response() :: %{
        optional("nextToken") => String.t(),
        required("items") => list(access_log_subscription_summary()())
      }

  """
  @type list_access_log_subscriptions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t()())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_access_log_subscription_response() :: %{
        required("arn") => String.t(),
        required("destinationArn") => String.t(),
        required("id") => String.t(),
        required("resourceArn") => String.t(),
        required("resourceId") => String.t()
      }

  """
  @type create_access_log_subscription_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_rules_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_rules_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      target_group_summary() :: %{
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "id" => String.t(),
        "ipAddressType" => String.t(),
        "lambdaEventStructureVersion" => String.t(),
        "lastUpdatedAt" => non_neg_integer(),
        "name" => String.t(),
        "port" => integer(),
        "protocol" => String.t(),
        "serviceArns" => list(String.t()()),
        "status" => String.t(),
        "type" => String.t(),
        "vpcIdentifier" => String.t()
      }

  """
  @type target_group_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_service_network_service_associations_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("serviceIdentifier") => String.t(),
        optional("serviceNetworkIdentifier") => String.t()
      }

  """
  @type list_service_network_service_associations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_service_request() :: %{}

  """
  @type get_service_request() :: %{}

  @typedoc """

  ## Example:

      get_listener_response() :: %{
        optional("arn") => String.t(),
        optional("createdAt") => non_neg_integer(),
        optional("defaultAction") => list(),
        optional("id") => String.t(),
        optional("lastUpdatedAt") => non_neg_integer(),
        optional("name") => String.t(),
        optional("port") => integer(),
        optional("protocol") => String.t(),
        optional("serviceArn") => String.t(),
        optional("serviceId") => String.t()
      }

  """
  @type get_listener_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_auth_policy_response() :: %{
        optional("createdAt") => non_neg_integer(),
        optional("lastUpdatedAt") => non_neg_integer(),
        optional("policy") => String.t(),
        optional("state") => String.t()
      }

  """
  @type get_auth_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_target_group_request() :: %{
        required("healthCheck") => health_check_config()
      }

  """
  @type update_target_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_services_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_services_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_rule_request() :: %{}

  """
  @type delete_rule_request() :: %{}

  @typedoc """

  ## Example:

      update_target_group_response() :: %{
        optional("arn") => String.t(),
        optional("config") => target_group_config(),
        optional("id") => String.t(),
        optional("name") => String.t(),
        optional("status") => String.t(),
        optional("type") => String.t()
      }

  """
  @type update_target_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_rule_response() :: %{}

  """
  @type delete_rule_response() :: %{}

  @typedoc """

  ## Example:

      service_network_vpc_association_summary() :: %{
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "id" => String.t(),
        "lastUpdatedAt" => non_neg_integer(),
        "serviceNetworkArn" => String.t(),
        "serviceNetworkId" => String.t(),
        "serviceNetworkName" => String.t(),
        "status" => String.t(),
        "vpcId" => String.t()
      }

  """
  @type service_network_vpc_association_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      target() :: %{
        "id" => [String.t()],
        "port" => integer()
      }

  """
  @type target() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_service_networks_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_service_networks_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_rule_response() :: %{
        optional("action") => list(),
        optional("arn") => String.t(),
        optional("id") => String.t(),
        optional("isDefault") => boolean(),
        optional("match") => list(),
        optional("name") => String.t(),
        optional("priority") => integer()
      }

  """
  @type update_rule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => [String.t()],
        "resourceId" => [String.t()],
        "resourceType" => [String.t()]
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => [String.t()],
        "resourceId" => [String.t()],
        "resourceType" => [String.t()]
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_listeners_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_listeners_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_services_response() :: %{
        optional("items") => list(service_summary()()),
        optional("nextToken") => String.t()
      }

  """
  @type list_services_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_target_group_response() :: %{
        optional("arn") => String.t(),
        optional("config") => target_group_config(),
        optional("id") => String.t(),
        optional("name") => String.t(),
        optional("status") => String.t(),
        optional("type") => String.t()
      }

  """
  @type create_target_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => [String.t()],
        "quotaCode" => [String.t()],
        "resourceId" => [String.t()],
        "resourceType" => [String.t()],
        "serviceCode" => [String.t()]
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      target_summary() :: %{
        "id" => [String.t()],
        "port" => integer(),
        "reasonCode" => [String.t()],
        "status" => String.t()
      }

  """
  @type target_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      weighted_target_group() :: %{
        "targetGroupIdentifier" => String.t(),
        "weight" => integer()
      }

  """
  @type weighted_target_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_summary() :: %{
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "customDomainName" => String.t(),
        "dnsEntry" => dns_entry(),
        "id" => String.t(),
        "lastUpdatedAt" => non_neg_integer(),
        "name" => String.t(),
        "status" => String.t()
      }

  """
  @type service_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_service_network_vpc_association_request() :: %{}

  """
  @type delete_service_network_vpc_association_request() :: %{}

  @typedoc """

  ## Example:

      create_service_request() :: %{
        optional("authType") => String.t(),
        optional("certificateArn") => String.t(),
        optional("clientToken") => String.t(),
        optional("customDomainName") => String.t(),
        optional("tags") => map(),
        required("name") => String.t()
      }

  """
  @type create_service_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      path_match() :: %{
        "caseSensitive" => boolean(),
        "match" => list()
      }

  """
  @type path_match() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_target_group_response() :: %{
        optional("arn") => String.t(),
        optional("id") => String.t(),
        optional("status") => String.t()
      }

  """
  @type delete_target_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      header_match() :: %{
        "caseSensitive" => boolean(),
        "match" => list(),
        "name" => String.t()
      }

  """
  @type header_match() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        optional("tags") => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_auth_policy_request() :: %{}

  """
  @type delete_auth_policy_request() :: %{}

  @typedoc """

  ## Example:

      get_rule_response() :: %{
        optional("action") => list(),
        optional("arn") => String.t(),
        optional("createdAt") => non_neg_integer(),
        optional("id") => String.t(),
        optional("isDefault") => boolean(),
        optional("lastUpdatedAt") => non_neg_integer(),
        optional("match") => list(),
        optional("name") => String.t(),
        optional("priority") => integer()
      }

  """
  @type get_rule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception_field() :: %{
        "message" => [String.t()],
        "name" => [String.t()]
      }

  """
  @type validation_exception_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_service_network_service_association_response() :: %{
        optional("arn") => String.t(),
        optional("id") => String.t(),
        optional("status") => String.t()
      }

  """
  @type delete_service_network_service_association_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_rule_response() :: %{
        optional("action") => list(),
        optional("arn") => String.t(),
        optional("id") => String.t(),
        optional("match") => list(),
        optional("name") => String.t(),
        optional("priority") => integer()
      }

  """
  @type create_rule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_service_network_response() :: %{}

  """
  @type delete_service_network_response() :: %{}

  @typedoc """

  ## Example:

      put_auth_policy_request() :: %{
        required("policy") => String.t()
      }

  """
  @type put_auth_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_resource_policy_request() :: %{}

  """
  @type get_resource_policy_request() :: %{}

  @typedoc """

  ## Example:

      delete_service_network_vpc_association_response() :: %{
        optional("arn") => String.t(),
        optional("id") => String.t(),
        optional("status") => String.t()
      }

  """
  @type delete_service_network_vpc_association_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_listeners_response() :: %{
        optional("nextToken") => String.t(),
        required("items") => list(listener_summary()())
      }

  """
  @type list_listeners_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_target_groups_response() :: %{
        optional("items") => list(target_group_summary()()),
        optional("nextToken") => String.t()
      }

  """
  @type list_target_groups_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_access_log_subscription_response() :: %{
        required("arn") => String.t(),
        required("destinationArn") => String.t(),
        required("id") => String.t(),
        required("resourceArn") => String.t(),
        required("resourceId") => String.t()
      }

  """
  @type update_access_log_subscription_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_access_log_subscription_request() :: %{}

  """
  @type delete_access_log_subscription_request() :: %{}

  @typedoc """

  ## Example:

      update_service_request() :: %{
        optional("authType") => String.t(),
        optional("certificateArn") => String.t()
      }

  """
  @type update_service_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_target_group_request() :: %{}

  """
  @type delete_target_group_request() :: %{}

  @typedoc """

  ## Example:

      rule_summary() :: %{
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "id" => String.t(),
        "isDefault" => boolean(),
        "lastUpdatedAt" => non_neg_integer(),
        "name" => String.t(),
        "priority" => integer()
      }

  """
  @type rule_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => [String.t()],
        "retryAfterSeconds" => [integer()]
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      register_targets_request() :: %{
        required("targets") => list(target()())
      }

  """
  @type register_targets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_targets_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("targets") => list(target()())
      }

  """
  @type list_targets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_access_log_subscription_request() :: %{
        required("destinationArn") => String.t()
      }

  """
  @type update_access_log_subscription_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_log_subscription_summary() :: %{
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "destinationArn" => String.t(),
        "id" => String.t(),
        "lastUpdatedAt" => non_neg_integer(),
        "resourceArn" => String.t(),
        "resourceId" => String.t()
      }

  """
  @type access_log_subscription_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_service_network_service_association_response() :: %{
        optional("arn") => String.t(),
        optional("createdAt") => non_neg_integer(),
        optional("createdBy") => String.t(),
        optional("customDomainName") => String.t(),
        optional("dnsEntry") => dns_entry(),
        optional("failureCode") => [String.t()],
        optional("failureMessage") => [String.t()],
        optional("id") => String.t(),
        optional("serviceArn") => String.t(),
        optional("serviceId") => String.t(),
        optional("serviceName") => String.t(),
        optional("serviceNetworkArn") => String.t(),
        optional("serviceNetworkId") => String.t(),
        optional("serviceNetworkName") => String.t(),
        optional("status") => String.t()
      }

  """
  @type get_service_network_service_association_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_resource_policy_request() :: %{
        required("policy") => String.t()
      }

  """
  @type put_resource_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_listener_request() :: %{
        required("defaultAction") => list()
      }

  """
  @type update_listener_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_listener_response() :: %{
        optional("arn") => String.t(),
        optional("defaultAction") => list(),
        optional("id") => String.t(),
        optional("name") => String.t(),
        optional("port") => integer(),
        optional("protocol") => String.t(),
        optional("serviceArn") => String.t(),
        optional("serviceId") => String.t()
      }

  """
  @type update_listener_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_rules_response() :: %{
        optional("nextToken") => String.t(),
        required("items") => list(rule_summary()())
      }

  """
  @type list_rules_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_target_groups_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("targetGroupType") => String.t(),
        optional("vpcIdentifier") => String.t()
      }

  """
  @type list_target_groups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      listener_summary() :: %{
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "id" => String.t(),
        "lastUpdatedAt" => non_neg_integer(),
        "name" => String.t(),
        "port" => integer(),
        "protocol" => String.t()
      }

  """
  @type listener_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "fieldList" => list(validation_exception_field()()),
        "message" => [String.t()],
        "reason" => String.t()
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      delete_service_request() :: %{}

  """
  @type delete_service_request() :: %{}

  @typedoc """

  ## Example:

      health_check_config() :: %{
        "enabled" => boolean(),
        "healthCheckIntervalSeconds" => integer(),
        "healthCheckTimeoutSeconds" => integer(),
        "healthyThresholdCount" => integer(),
        "matcher" => list(),
        "path" => String.t(),
        "port" => integer(),
        "protocol" => String.t(),
        "protocolVersion" => String.t(),
        "unhealthyThresholdCount" => integer()
      }

  """
  @type health_check_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => [String.t()],
        "quotaCode" => [String.t()],
        "retryAfterSeconds" => [integer()],
        "serviceCode" => [String.t()]
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_service_network_service_association_request() :: %{}

  """
  @type delete_service_network_service_association_request() :: %{}

  @typedoc """

  ## Example:

      fixed_response_action() :: %{
        "statusCode" => integer()
      }

  """
  @type fixed_response_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_service_network_vpc_associations_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("serviceNetworkIdentifier") => String.t(),
        optional("vpcIdentifier") => String.t()
      }

  """
  @type list_service_network_vpc_associations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_auth_policy_response() :: %{
        optional("policy") => String.t(),
        optional("state") => String.t()
      }

  """
  @type put_auth_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_resource_policy_response() :: %{}

  """
  @type put_resource_policy_response() :: %{}

  @typedoc """

  ## Example:

      target_failure() :: %{
        "failureCode" => [String.t()],
        "failureMessage" => [String.t()],
        "id" => [String.t()],
        "port" => integer()
      }

  """
  @type target_failure() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_auth_policy_request() :: %{}

  """
  @type get_auth_policy_request() :: %{}

  @typedoc """

  ## Example:

      delete_resource_policy_request() :: %{}

  """
  @type delete_resource_policy_request() :: %{}

  @typedoc """

  ## Example:

      register_targets_response() :: %{
        optional("successful") => list(target()()),
        optional("unsuccessful") => list(target_failure()())
      }

  """
  @type register_targets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      rule_update() :: %{
        "action" => list(),
        "match" => list(),
        "priority" => integer(),
        "ruleIdentifier" => String.t()
      }

  """
  @type rule_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dns_entry() :: %{
        "domainName" => [String.t()],
        "hostedZoneId" => [String.t()]
      }

  """
  @type dns_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_service_response() :: %{
        optional("arn") => String.t(),
        optional("authType") => String.t(),
        optional("certificateArn") => String.t(),
        optional("customDomainName") => String.t(),
        optional("id") => String.t(),
        optional("name") => String.t()
      }

  """
  @type update_service_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_service_response() :: %{
        optional("arn") => String.t(),
        optional("id") => String.t(),
        optional("name") => String.t(),
        optional("status") => String.t()
      }

  """
  @type delete_service_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_service_network_vpc_association_request() :: %{
        required("securityGroupIds") => list(String.t()())
      }

  """
  @type update_service_network_vpc_association_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      deregister_targets_response() :: %{
        optional("successful") => list(target()()),
        optional("unsuccessful") => list(target_failure()())
      }

  """
  @type deregister_targets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_service_network_request() :: %{
        required("authType") => String.t()
      }

  """
  @type update_service_network_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_listener_request() :: %{}

  """
  @type get_listener_request() :: %{}

  @typedoc """

  ## Example:

      create_service_response() :: %{
        optional("arn") => String.t(),
        optional("authType") => String.t(),
        optional("certificateArn") => String.t(),
        optional("customDomainName") => String.t(),
        optional("dnsEntry") => dns_entry(),
        optional("id") => String.t(),
        optional("name") => String.t(),
        optional("status") => String.t()
      }

  """
  @type create_service_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_update_rule_response() :: %{
        optional("successful") => list(rule_update_success()()),
        optional("unsuccessful") => list(rule_update_failure()())
      }

  """
  @type batch_update_rule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_target_group_request() :: %{}

  """
  @type get_target_group_request() :: %{}

  @typedoc """

  ## Example:

      delete_listener_request() :: %{}

  """
  @type delete_listener_request() :: %{}

  @typedoc """

  ## Example:

      list_targets_response() :: %{
        optional("nextToken") => String.t(),
        required("items") => list(target_summary()())
      }

  """
  @type list_targets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_access_log_subscription_response() :: %{
        required("arn") => String.t(),
        required("createdAt") => non_neg_integer(),
        required("destinationArn") => String.t(),
        required("id") => String.t(),
        required("lastUpdatedAt") => non_neg_integer(),
        required("resourceArn") => String.t(),
        required("resourceId") => String.t()
      }

  """
  @type get_access_log_subscription_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      target_group_config() :: %{
        "healthCheck" => health_check_config(),
        "ipAddressType" => String.t(),
        "lambdaEventStructureVersion" => String.t(),
        "port" => integer(),
        "protocol" => String.t(),
        "protocolVersion" => String.t(),
        "vpcIdentifier" => String.t()
      }

  """
  @type target_group_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_service_network_vpc_association_request() :: %{
        optional("clientToken") => String.t(),
        optional("securityGroupIds") => list(String.t()()),
        optional("tags") => map(),
        required("serviceNetworkIdentifier") => String.t(),
        required("vpcIdentifier") => String.t()
      }

  """
  @type create_service_network_vpc_association_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_access_log_subscriptions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("resourceIdentifier") => String.t()
      }

  """
  @type list_access_log_subscriptions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_listener_response() :: %{}

  """
  @type delete_listener_response() :: %{}

  @typedoc """

  ## Example:

      rule_update_failure() :: %{
        "failureCode" => String.t(),
        "failureMessage" => String.t(),
        "ruleIdentifier" => String.t()
      }

  """
  @type rule_update_failure() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_service_networks_response() :: %{
        optional("nextToken") => String.t(),
        required("items") => list(service_network_summary()())
      }

  """
  @type list_service_networks_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_service_network_service_associations_response() :: %{
        optional("nextToken") => String.t(),
        required("items") => list(service_network_service_association_summary()())
      }

  """
  @type list_service_network_service_associations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_service_network_service_association_request() :: %{}

  """
  @type get_service_network_service_association_request() :: %{}

  @typedoc """

  ## Example:

      create_listener_request() :: %{
        optional("clientToken") => String.t(),
        optional("port") => integer(),
        optional("tags") => map(),
        required("defaultAction") => list(),
        required("name") => String.t(),
        required("protocol") => String.t()
      }

  """
  @type create_listener_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_service_network_service_association_request() :: %{
        optional("clientToken") => String.t(),
        optional("tags") => map(),
        required("serviceIdentifier") => String.t(),
        required("serviceNetworkIdentifier") => String.t()
      }

  """
  @type create_service_network_service_association_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_service_network_vpc_association_request() :: %{}

  """
  @type get_service_network_vpc_association_request() :: %{}

  @type batch_update_rule_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_access_log_subscription_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_listener_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_rule_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_service_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_service_network_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_service_network_service_association_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_service_network_vpc_association_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_target_group_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_access_log_subscription_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_auth_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_listener_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_resource_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_rule_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_service_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_service_network_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_service_network_service_association_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_service_network_vpc_association_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_target_group_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type deregister_targets_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_access_log_subscription_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_auth_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_listener_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_resource_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_rule_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_service_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_service_network_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_service_network_service_association_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_service_network_vpc_association_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_target_group_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_access_log_subscriptions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_listeners_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_rules_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_service_network_service_associations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_service_network_vpc_associations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_service_networks_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_services_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_target_groups_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_targets_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type put_auth_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type put_resource_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type register_targets_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type untag_resource_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_access_log_subscription_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_listener_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_rule_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_service_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_service_network_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_service_network_vpc_association_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_target_group_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2022-11-30",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "vpc-lattice",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "VPC Lattice",
      signature_version: "v4",
      signing_name: "vpc-lattice",
      target_prefix: nil
    }
  end

  @doc """
  Updates the listener rules in a batch.

  You can use this operation to change the priority of
  listener rules. This can be useful when bulk updating or swapping rule priority.

  ## Required permissions:
  `vpc-lattice:UpdateRule`

  For more information, see [How Amazon VPC Lattice works with IAM](https://docs.aws.amazon.com/vpc-lattice/latest/ug/security_iam_service-with-iam.html)
  in the *Amazon VPC Lattice User Guide*.
  """
  @spec batch_update_rule(map(), String.t(), String.t(), batch_update_rule_request(), list()) ::
          {:ok, batch_update_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_update_rule_errors()}
  def batch_update_rule(
        %Client{} = client,
        listener_identifier,
        service_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/services/#{AWS.Util.encode_uri(service_identifier)}/listeners/#{AWS.Util.encode_uri(listener_identifier)}/rules"

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

  @doc """
  Enables access logs to be sent to Amazon CloudWatch, Amazon S3, and Amazon
  Kinesis Data Firehose.

  The service network owner
  can use the access logs to audit the services in the network. The service
  network owner can only
  see access logs from clients and services that are associated with their service
  network. Access
  log entries represent traffic originated from VPCs associated with that network.
  For more
  information, see [Access logs](https://docs.aws.amazon.com/vpc-lattice/latest/ug/monitoring-access-logs.html)
  in the
  *Amazon VPC Lattice User Guide*.
  """
  @spec create_access_log_subscription(map(), create_access_log_subscription_request(), list()) ::
          {:ok, create_access_log_subscription_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_access_log_subscription_errors()}
  def create_access_log_subscription(%Client{} = client, input, options \\ []) do
    url_path = "/accesslogsubscriptions"
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
  Creates a listener for a service.

  Before you start using your Amazon VPC Lattice service, you must
  add one or more listeners. A listener is a process that checks for connection
  requests to your
  services. For more information, see
  [Listeners](https://docs.aws.amazon.com/vpc-lattice/latest/ug/listeners.html) in
  the
  *Amazon VPC Lattice User Guide*.
  """
  @spec create_listener(map(), String.t(), create_listener_request(), list()) ::
          {:ok, create_listener_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_listener_errors()}
  def create_listener(%Client{} = client, service_identifier, input, options \\ []) do
    url_path = "/services/#{AWS.Util.encode_uri(service_identifier)}/listeners"
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
  Creates a listener rule.

  Each listener has a default rule for checking connection requests,
  but you can define additional rules. Each rule consists of a priority, one or
  more actions, and
  one or more conditions. For more information, see [Listener rules](https://docs.aws.amazon.com/vpc-lattice/latest/ug/listeners.html#listener-rules)
  in the
  *Amazon VPC Lattice User Guide*.
  """
  @spec create_rule(map(), String.t(), String.t(), create_rule_request(), list()) ::
          {:ok, create_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_rule_errors()}
  def create_rule(
        %Client{} = client,
        listener_identifier,
        service_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/services/#{AWS.Util.encode_uri(service_identifier)}/listeners/#{AWS.Util.encode_uri(listener_identifier)}/rules"

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
  Creates a service.

  A service is any software application that can run on instances
  containers, or serverless functions within an account or virtual private cloud
  (VPC).

  For more information, see
  [Services](https://docs.aws.amazon.com/vpc-lattice/latest/ug/services.html) in
  the
  *Amazon VPC Lattice User Guide*.
  """
  @spec create_service(map(), create_service_request(), list()) ::
          {:ok, create_service_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_service_errors()}
  def create_service(%Client{} = client, input, options \\ []) do
    url_path = "/services"
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
  Creates a service network.

  A service network is a logical boundary for a collection of
  services. You can associate services and VPCs with a service network.

  For more information, see [Service networks](https://docs.aws.amazon.com/vpc-lattice/latest/ug/service-networks.html)
  in the
  *Amazon VPC Lattice User Guide*.
  """
  @spec create_service_network(map(), create_service_network_request(), list()) ::
          {:ok, create_service_network_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_service_network_errors()}
  def create_service_network(%Client{} = client, input, options \\ []) do
    url_path = "/servicenetworks"
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
  Associates a service with a service network.

  For more information, see [Manage service associations](https://docs.aws.amazon.com/vpc-lattice/latest/ug/service-network-associations.html#service-network-service-associations)
  in the *Amazon VPC Lattice User Guide*.

  You can't use this operation if the service and service network are already
  associated or if
  there is a disassociation or deletion in progress. If the association fails, you
  can retry the
  operation by deleting the association and recreating it.

  You cannot associate a service and service network that are shared with a
  caller. The caller
  must own either the service or the service network.

  As a result of this operation, the association is created in the service network
  account and
  the association owner account.
  """
  @spec create_service_network_service_association(
          map(),
          create_service_network_service_association_request(),
          list()
        ) ::
          {:ok, create_service_network_service_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_service_network_service_association_errors()}
  def create_service_network_service_association(%Client{} = client, input, options \\ []) do
    url_path = "/servicenetworkserviceassociations"
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
  Associates a VPC with a service network.

  When you associate a VPC with the service network,
  it enables all the resources within that VPC to be clients and communicate with
  other services in
  the service network. For more information, see [Manage VPC associations](https://docs.aws.amazon.com/vpc-lattice/latest/ug/service-network-associations.html#service-network-vpc-associations)
  in the *Amazon VPC Lattice User Guide*.

  You can't use this operation if there is a disassociation in progress. If the
  association
  fails, retry by deleting the association and recreating it.

  As a result of this operation, the association gets created in the service
  network account
  and the VPC owner account.

  If you add a security group to the service network and VPC association, the
  association must
  continue to always have at least one security group. You can add or edit
  security groups at any
  time. However, to remove all security groups, you must first delete the
  association and recreate
  it without security groups.
  """
  @spec create_service_network_vpc_association(
          map(),
          create_service_network_vpc_association_request(),
          list()
        ) ::
          {:ok, create_service_network_vpc_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_service_network_vpc_association_errors()}
  def create_service_network_vpc_association(%Client{} = client, input, options \\ []) do
    url_path = "/servicenetworkvpcassociations"
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
  Creates a target group.

  A target group is a collection of targets, or compute resources,
  that run your application or service. A target group can only be used by a
  single service.

  For more information, see [Target groups](https://docs.aws.amazon.com/vpc-lattice/latest/ug/target-groups.html) in
  the
  *Amazon VPC Lattice User Guide*.
  """
  @spec create_target_group(map(), create_target_group_request(), list()) ::
          {:ok, create_target_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_target_group_errors()}
  def create_target_group(%Client{} = client, input, options \\ []) do
    url_path = "/targetgroups"
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
  Deletes the specified access log subscription.
  """
  @spec delete_access_log_subscription(
          map(),
          String.t(),
          delete_access_log_subscription_request(),
          list()
        ) ::
          {:ok, delete_access_log_subscription_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_access_log_subscription_errors()}
  def delete_access_log_subscription(
        %Client{} = client,
        access_log_subscription_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/accesslogsubscriptions/#{AWS.Util.encode_uri(access_log_subscription_identifier)}"

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
      204
    )
  end

  @doc """
  Deletes the specified auth policy.

  If an auth is set to `AWS_IAM` and the auth
  policy is deleted, all requests are denied. If you are trying to remove the auth
  policy completely, you must set the auth type to `NONE`. If auth is enabled on
  the
  resource, but no auth policy is set, all requests are denied.
  """
  @spec delete_auth_policy(map(), String.t(), delete_auth_policy_request(), list()) ::
          {:ok, delete_auth_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_auth_policy_errors()}
  def delete_auth_policy(%Client{} = client, resource_identifier, input, options \\ []) do
    url_path = "/authpolicy/#{AWS.Util.encode_uri(resource_identifier)}"
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
      204
    )
  end

  @doc """
  Deletes the specified listener.
  """
  @spec delete_listener(map(), String.t(), String.t(), delete_listener_request(), list()) ::
          {:ok, delete_listener_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_listener_errors()}
  def delete_listener(
        %Client{} = client,
        listener_identifier,
        service_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/services/#{AWS.Util.encode_uri(service_identifier)}/listeners/#{AWS.Util.encode_uri(listener_identifier)}"

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
      204
    )
  end

  @doc """
  Deletes the specified resource policy.
  """
  @spec delete_resource_policy(map(), String.t(), delete_resource_policy_request(), list()) ::
          {:ok, delete_resource_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_resource_policy_errors()}
  def delete_resource_policy(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/resourcepolicy/#{AWS.Util.encode_uri(resource_arn)}"
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
      204
    )
  end

  @doc """
  Deletes a listener rule.

  Each listener has a default rule for checking connection requests,
  but you can define additional rules. Each rule consists of a priority, one or
  more actions, and
  one or more conditions. You can delete additional listener rules, but you cannot
  delete the
  default rule.

  For more information, see [Listener rules](https://docs.aws.amazon.com/vpc-lattice/latest/ug/listeners.html#listener-rules)
  in the
  *Amazon VPC Lattice User Guide*.
  """
  @spec delete_rule(map(), String.t(), String.t(), String.t(), delete_rule_request(), list()) ::
          {:ok, delete_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_rule_errors()}
  def delete_rule(
        %Client{} = client,
        listener_identifier,
        rule_identifier,
        service_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/services/#{AWS.Util.encode_uri(service_identifier)}/listeners/#{AWS.Util.encode_uri(listener_identifier)}/rules/#{AWS.Util.encode_uri(rule_identifier)}"

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
      204
    )
  end

  @doc """
  Deletes a service.

  A service can't be deleted if it's associated with a service network. If
  you delete a service, all resources related to the service, such as the resource
  policy, auth
  policy, listeners, listener rules, and access log subscriptions, are also
  deleted. For more
  information, see [Delete a service](https://docs.aws.amazon.com/vpc-lattice/latest/ug/services.html#delete-service)
  in the
  *Amazon VPC Lattice User Guide*.
  """
  @spec delete_service(map(), String.t(), delete_service_request(), list()) ::
          {:ok, delete_service_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_service_errors()}
  def delete_service(%Client{} = client, service_identifier, input, options \\ []) do
    url_path = "/services/#{AWS.Util.encode_uri(service_identifier)}"
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
  Deletes a service network.

  You can only delete the service network if there is no service or
  VPC associated with it. If you delete a service network, all resources related
  to the service
  network, such as the resource policy, auth policy, and access log subscriptions,
  are also
  deleted. For more information, see [Delete a service network](https://docs.aws.amazon.com/vpc-lattice/latest/ug/service-networks.html#delete-service-network)
  in the *Amazon VPC Lattice User Guide*.
  """
  @spec delete_service_network(map(), String.t(), delete_service_network_request(), list()) ::
          {:ok, delete_service_network_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_service_network_errors()}
  def delete_service_network(%Client{} = client, service_network_identifier, input, options \\ []) do
    url_path = "/servicenetworks/#{AWS.Util.encode_uri(service_network_identifier)}"
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
      204
    )
  end

  @doc """
  Deletes the association between a specified service and the specific service
  network.

  This
  operation fails if an association is still in progress.
  """
  @spec delete_service_network_service_association(
          map(),
          String.t(),
          delete_service_network_service_association_request(),
          list()
        ) ::
          {:ok, delete_service_network_service_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_service_network_service_association_errors()}
  def delete_service_network_service_association(
        %Client{} = client,
        service_network_service_association_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/servicenetworkserviceassociations/#{AWS.Util.encode_uri(service_network_service_association_identifier)}"

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
  Disassociates the VPC from the service network.

  You can't disassociate the VPC if there is a
  create or update association in progress.
  """
  @spec delete_service_network_vpc_association(
          map(),
          String.t(),
          delete_service_network_vpc_association_request(),
          list()
        ) ::
          {:ok, delete_service_network_vpc_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_service_network_vpc_association_errors()}
  def delete_service_network_vpc_association(
        %Client{} = client,
        service_network_vpc_association_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/servicenetworkvpcassociations/#{AWS.Util.encode_uri(service_network_vpc_association_identifier)}"

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
  Deletes a target group.

  You can't delete a target group if it is used in a listener rule or
  if the target group creation is in progress.
  """
  @spec delete_target_group(map(), String.t(), delete_target_group_request(), list()) ::
          {:ok, delete_target_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_target_group_errors()}
  def delete_target_group(%Client{} = client, target_group_identifier, input, options \\ []) do
    url_path = "/targetgroups/#{AWS.Util.encode_uri(target_group_identifier)}"
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
  Deregisters the specified targets from the specified target group.
  """
  @spec deregister_targets(map(), String.t(), deregister_targets_request(), list()) ::
          {:ok, deregister_targets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, deregister_targets_errors()}
  def deregister_targets(%Client{} = client, target_group_identifier, input, options \\ []) do
    url_path = "/targetgroups/#{AWS.Util.encode_uri(target_group_identifier)}/deregistertargets"
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
  Retrieves information about the specified access log subscription.
  """
  @spec get_access_log_subscription(map(), String.t(), list()) ::
          {:ok, get_access_log_subscription_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_access_log_subscription_errors()}
  def get_access_log_subscription(
        %Client{} = client,
        access_log_subscription_identifier,
        options \\ []
      ) do
    url_path =
      "/accesslogsubscriptions/#{AWS.Util.encode_uri(access_log_subscription_identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the auth policy for the specified service or service
  network.
  """
  @spec get_auth_policy(map(), String.t(), list()) ::
          {:ok, get_auth_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_auth_policy_errors()}
  def get_auth_policy(%Client{} = client, resource_identifier, options \\ []) do
    url_path = "/authpolicy/#{AWS.Util.encode_uri(resource_identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the specified listener for the specified service.
  """
  @spec get_listener(map(), String.t(), String.t(), list()) ::
          {:ok, get_listener_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_listener_errors()}
  def get_listener(%Client{} = client, listener_identifier, service_identifier, options \\ []) do
    url_path =
      "/services/#{AWS.Util.encode_uri(service_identifier)}/listeners/#{AWS.Util.encode_uri(listener_identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the resource policy.

  The resource policy is an IAM policy
  created on behalf of the resource owner when they share a resource.
  """
  @spec get_resource_policy(map(), String.t(), list()) ::
          {:ok, get_resource_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_resource_policy_errors()}
  def get_resource_policy(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/resourcepolicy/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about listener rules.

  You can also retrieve information about the
  default listener rule. For more information, see [Listener rules](https://docs.aws.amazon.com/vpc-lattice/latest/ug/listeners.html#listener-rules)
  in the
  *Amazon VPC Lattice User Guide*.
  """
  @spec get_rule(map(), String.t(), String.t(), String.t(), list()) ::
          {:ok, get_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_rule_errors()}
  def get_rule(
        %Client{} = client,
        listener_identifier,
        rule_identifier,
        service_identifier,
        options \\ []
      ) do
    url_path =
      "/services/#{AWS.Util.encode_uri(service_identifier)}/listeners/#{AWS.Util.encode_uri(listener_identifier)}/rules/#{AWS.Util.encode_uri(rule_identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the specified service.
  """
  @spec get_service(map(), String.t(), list()) ::
          {:ok, get_service_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_service_errors()}
  def get_service(%Client{} = client, service_identifier, options \\ []) do
    url_path = "/services/#{AWS.Util.encode_uri(service_identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the specified service network.
  """
  @spec get_service_network(map(), String.t(), list()) ::
          {:ok, get_service_network_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_service_network_errors()}
  def get_service_network(%Client{} = client, service_network_identifier, options \\ []) do
    url_path = "/servicenetworks/#{AWS.Util.encode_uri(service_network_identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the specified association between a service network
  and a
  service.
  """
  @spec get_service_network_service_association(map(), String.t(), list()) ::
          {:ok, get_service_network_service_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_service_network_service_association_errors()}
  def get_service_network_service_association(
        %Client{} = client,
        service_network_service_association_identifier,
        options \\ []
      ) do
    url_path =
      "/servicenetworkserviceassociations/#{AWS.Util.encode_uri(service_network_service_association_identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the association between a service network and a VPC.
  """
  @spec get_service_network_vpc_association(map(), String.t(), list()) ::
          {:ok, get_service_network_vpc_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_service_network_vpc_association_errors()}
  def get_service_network_vpc_association(
        %Client{} = client,
        service_network_vpc_association_identifier,
        options \\ []
      ) do
    url_path =
      "/servicenetworkvpcassociations/#{AWS.Util.encode_uri(service_network_vpc_association_identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the specified target group.
  """
  @spec get_target_group(map(), String.t(), list()) ::
          {:ok, get_target_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_target_group_errors()}
  def get_target_group(%Client{} = client, target_group_identifier, options \\ []) do
    url_path = "/targetgroups/#{AWS.Util.encode_uri(target_group_identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all access log subscriptions for the specified service network or service.
  """
  @spec list_access_log_subscriptions(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t(),
          list()
        ) ::
          {:ok, list_access_log_subscriptions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_access_log_subscriptions_errors()}
  def list_access_log_subscriptions(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        resource_identifier,
        options \\ []
      ) do
    url_path = "/accesslogsubscriptions"
    headers = []
    query_params = []

    query_params =
      if !is_nil(resource_identifier) do
        [{"resourceIdentifier", resource_identifier} | query_params]
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
  Lists the listeners for the specified service.
  """
  @spec list_listeners(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_listeners_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_listeners_errors()}
  def list_listeners(
        %Client{} = client,
        service_identifier,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/services/#{AWS.Util.encode_uri(service_identifier)}/listeners"
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
  Lists the rules for the listener.
  """
  @spec list_rules(map(), String.t(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_rules_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_rules_errors()}
  def list_rules(
        %Client{} = client,
        listener_identifier,
        service_identifier,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/services/#{AWS.Util.encode_uri(service_identifier)}/listeners/#{AWS.Util.encode_uri(listener_identifier)}/rules"

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
  Lists the associations between the service network and the service.

  You can filter the list
  either by service or service network. You must provide either the service
  network identifier or
  the service identifier.

  Every association in Amazon VPC Lattice is given a unique Amazon Resource Name
  (ARN), such as when a
  service network is associated with a VPC or when a service is associated with a
  service network.
  If the association is for a resource that is shared with another account, the
  association
  includes the local account ID as the prefix in the ARN for each account the
  resource is shared
  with.
  """
  @spec list_service_network_service_associations(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_service_network_service_associations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_service_network_service_associations_errors()}
  def list_service_network_service_associations(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        service_identifier \\ nil,
        service_network_identifier \\ nil,
        options \\ []
      ) do
    url_path = "/servicenetworkserviceassociations"
    headers = []
    query_params = []

    query_params =
      if !is_nil(service_network_identifier) do
        [{"serviceNetworkIdentifier", service_network_identifier} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(service_identifier) do
        [{"serviceIdentifier", service_identifier} | query_params]
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
  Lists the service network and VPC associations.

  You can filter the list either by VPC or
  service network. You must provide either the service network identifier or the
  VPC
  identifier.
  """
  @spec list_service_network_vpc_associations(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_service_network_vpc_associations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_service_network_vpc_associations_errors()}
  def list_service_network_vpc_associations(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        service_network_identifier \\ nil,
        vpc_identifier \\ nil,
        options \\ []
      ) do
    url_path = "/servicenetworkvpcassociations"
    headers = []
    query_params = []

    query_params =
      if !is_nil(vpc_identifier) do
        [{"vpcIdentifier", vpc_identifier} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(service_network_identifier) do
        [{"serviceNetworkIdentifier", service_network_identifier} | query_params]
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
  Lists the service networks owned by the caller account or shared with the caller
  account.

  Also includes the account ID in the ARN to show which account owns the service
  network.
  """
  @spec list_service_networks(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_service_networks_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_service_networks_errors()}
  def list_service_networks(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/servicenetworks"
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
  Lists the services owned by the caller account or shared with the caller
  account.
  """
  @spec list_services(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_services_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_services_errors()}
  def list_services(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/services"
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
  Lists the tags for the specified resource.
  """
  @spec list_tags_for_resource(map(), String.t(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists your target groups.

  You can narrow your search by using the filters below in your
  request.
  """
  @spec list_target_groups(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_target_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_target_groups_errors()}
  def list_target_groups(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        target_group_type \\ nil,
        vpc_identifier \\ nil,
        options \\ []
      ) do
    url_path = "/targetgroups"
    headers = []
    query_params = []

    query_params =
      if !is_nil(vpc_identifier) do
        [{"vpcIdentifier", vpc_identifier} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(target_group_type) do
        [{"targetGroupType", target_group_type} | query_params]
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
  Lists the targets for the target group.

  By default, all targets are included. You can use
  this API to check the health status of targets. You can also ﬁlter the results
  by target.
  """
  @spec list_targets(map(), String.t(), list_targets_request(), list()) ::
          {:ok, list_targets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_targets_errors()}
  def list_targets(%Client{} = client, target_group_identifier, input, options \\ []) do
    url_path = "/targetgroups/#{AWS.Util.encode_uri(target_group_identifier)}/listtargets"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"maxResults", "maxResults"},
        {"nextToken", "nextToken"}
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
      200
    )
  end

  @doc """
  Creates or updates the auth policy.

  The policy string in JSON must not contain newlines or
  blank lines.

  For more information, see [Auth policies](https://docs.aws.amazon.com/vpc-lattice/latest/ug/auth-policies.html)
  in the *Amazon VPC Lattice User Guide*.
  """
  @spec put_auth_policy(map(), String.t(), put_auth_policy_request(), list()) ::
          {:ok, put_auth_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_auth_policy_errors()}
  def put_auth_policy(%Client{} = client, resource_identifier, input, options \\ []) do
    url_path = "/authpolicy/#{AWS.Util.encode_uri(resource_identifier)}"
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
  Attaches a resource-based permission policy to a service or service network.

  The policy must
  contain the same actions and condition statements as the Amazon Web Services
  Resource Access
  Manager permission for sharing services and service networks.
  """
  @spec put_resource_policy(map(), String.t(), put_resource_policy_request(), list()) ::
          {:ok, put_resource_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_resource_policy_errors()}
  def put_resource_policy(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/resourcepolicy/#{AWS.Util.encode_uri(resource_arn)}"
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
  Registers the targets with the target group.

  If it's a Lambda target, you can only have one
  target in a target group.
  """
  @spec register_targets(map(), String.t(), register_targets_request(), list()) ::
          {:ok, register_targets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, register_targets_errors()}
  def register_targets(%Client{} = client, target_group_identifier, input, options \\ []) do
    url_path = "/targetgroups/#{AWS.Util.encode_uri(target_group_identifier)}/registertargets"
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
  Adds the specified tags to the specified resource.
  """
  @spec tag_resource(map(), String.t(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  Removes the specified tags from the specified resource.
  """
  @spec untag_resource(map(), String.t(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  Updates the specified access log subscription.
  """
  @spec update_access_log_subscription(
          map(),
          String.t(),
          update_access_log_subscription_request(),
          list()
        ) ::
          {:ok, update_access_log_subscription_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_access_log_subscription_errors()}
  def update_access_log_subscription(
        %Client{} = client,
        access_log_subscription_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/accesslogsubscriptions/#{AWS.Util.encode_uri(access_log_subscription_identifier)}"

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

  @doc """
  Updates the specified listener for the specified service.
  """
  @spec update_listener(map(), String.t(), String.t(), update_listener_request(), list()) ::
          {:ok, update_listener_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_listener_errors()}
  def update_listener(
        %Client{} = client,
        listener_identifier,
        service_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/services/#{AWS.Util.encode_uri(service_identifier)}/listeners/#{AWS.Util.encode_uri(listener_identifier)}"

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

  @doc """
  Updates a rule for the listener.

  You can't modify a default listener rule. To modify a
  default listener rule, use `UpdateListener`.
  """
  @spec update_rule(map(), String.t(), String.t(), String.t(), update_rule_request(), list()) ::
          {:ok, update_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_rule_errors()}
  def update_rule(
        %Client{} = client,
        listener_identifier,
        rule_identifier,
        service_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/services/#{AWS.Util.encode_uri(service_identifier)}/listeners/#{AWS.Util.encode_uri(listener_identifier)}/rules/#{AWS.Util.encode_uri(rule_identifier)}"

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

  @doc """
  Updates the specified service.
  """
  @spec update_service(map(), String.t(), update_service_request(), list()) ::
          {:ok, update_service_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_service_errors()}
  def update_service(%Client{} = client, service_identifier, input, options \\ []) do
    url_path = "/services/#{AWS.Util.encode_uri(service_identifier)}"
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

  @doc """
  Updates the specified service network.
  """
  @spec update_service_network(map(), String.t(), update_service_network_request(), list()) ::
          {:ok, update_service_network_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_service_network_errors()}
  def update_service_network(%Client{} = client, service_network_identifier, input, options \\ []) do
    url_path = "/servicenetworks/#{AWS.Util.encode_uri(service_network_identifier)}"
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

  @doc """
  Updates the service network and VPC association.

  If you add a security group to the service
  network and VPC association, the association must continue to always have at
  least one security
  group. You can add or edit security groups at any time. However, to remove all
  security groups,
  you must first delete the association and recreate it without security groups.
  """
  @spec update_service_network_vpc_association(
          map(),
          String.t(),
          update_service_network_vpc_association_request(),
          list()
        ) ::
          {:ok, update_service_network_vpc_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_service_network_vpc_association_errors()}
  def update_service_network_vpc_association(
        %Client{} = client,
        service_network_vpc_association_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/servicenetworkvpcassociations/#{AWS.Util.encode_uri(service_network_vpc_association_identifier)}"

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

  @doc """
  Updates the specified target group.
  """
  @spec update_target_group(map(), String.t(), update_target_group_request(), list()) ::
          {:ok, update_target_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_target_group_errors()}
  def update_target_group(%Client{} = client, target_group_identifier, input, options \\ []) do
    url_path = "/targetgroups/#{AWS.Util.encode_uri(target_group_identifier)}"
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
