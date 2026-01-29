# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Route53GlobalResolver do
  @moduledoc """
  Amazon Route 53 Global Resolver is a global, internet-accessible DNS resolver
  that enables customers to resolve and forward traffic for both public and
  private domains while ensuring security and authenticity of queries over the
  internet.

  Route 53 Global Resolver supports DNS-over-port 53 (Do53), DNS-over-TLS (DoT),
  and DNS-over-HTTPS (DoH) protocols through global anycast IP addresses.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      update_firewall_rule_input() :: %{
        optional("action") => list(any()),
        optional("blockOverrideDnsType") => list(any()),
        optional("blockOverrideDomain") => String.t() | atom(),
        optional("blockOverrideTtl") => integer(),
        optional("blockResponse") => list(any()),
        optional("confidenceThreshold") => list(any()),
        optional("description") => String.t() | atom(),
        optional("dnsAdvancedProtection") => list(any()),
        optional("name") => String.t() | atom(),
        optional("priority") => float(),
        required("clientToken") => String.t() | atom()
      }

  """
  @type update_firewall_rule_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_access_source_input() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("ipAddressType") => list(any()),
        optional("name") => String.t() | atom(),
        optional("tags") => map(),
        required("cidr") => String.t() | atom(),
        required("dnsViewId") => String.t() | atom(),
        required("protocol") => list(any())
      }

  """
  @type create_access_source_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_dns_view_output() :: %{
        "arn" => String.t() | atom(),
        "clientToken" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "dnssecValidation" => list(any()),
        "ednsClientSubnet" => list(any()),
        "firewallRulesFailOpen" => list(any()),
        "globalResolverId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "status" => list(any()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type create_dns_view_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_access_sources_input() :: %{
        optional("filters") => map(),
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()]
      }

  """
  @type list_access_sources_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_create_firewall_rule_output() :: %{
        "failures" => list(batch_create_firewall_rule_output_item()),
        "successes" => list(batch_create_firewall_rule_output_item())
      }

  """
  @type batch_create_firewall_rule_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disable_dns_view_output() :: %{
        "arn" => String.t() | atom(),
        "clientToken" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "dnssecValidation" => list(any()),
        "ednsClientSubnet" => list(any()),
        "firewallRulesFailOpen" => list(any()),
        "globalResolverId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "status" => list(any()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type disable_dns_view_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("resourceArn") => String.t() | atom(),
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_dns_view_output() :: %{
        "arn" => String.t() | atom(),
        "clientToken" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "dnssecValidation" => list(any()),
        "ednsClientSubnet" => list(any()),
        "firewallRulesFailOpen" => list(any()),
        "globalResolverId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "status" => list(any()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type update_dns_view_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      managed_firewall_domain_lists_item() :: %{
        "description" => String.t() | atom(),
        "id" => String.t() | atom(),
        "managedListType" => [String.t() | atom()],
        "name" => String.t() | atom()
      }

  """
  @type managed_firewall_domain_lists_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      access_sources_item() :: %{
        "arn" => String.t() | atom(),
        "cidr" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "dnsViewId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "ipAddressType" => list(any()),
        "name" => String.t() | atom(),
        "protocol" => list(any()),
        "status" => list(any()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type access_sources_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_access_source_output() :: %{
        "arn" => String.t() | atom(),
        "cidr" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "dnsViewId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "ipAddressType" => list(any()),
        "name" => String.t() | atom(),
        "protocol" => list(any()),
        "status" => list(any()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type create_access_source_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      global_resolvers_item() :: %{
        "arn" => String.t() | atom(),
        "clientToken" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "dnsName" => String.t() | atom(),
        "id" => String.t() | atom(),
        "ipv4Addresses" => list(String.t() | atom()),
        "name" => String.t() | atom(),
        "observabilityRegion" => String.t() | atom(),
        "regions" => list(String.t() | atom()),
        "status" => list(any()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type global_resolvers_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_firewall_domains_output() :: %{
        "domains" => list(String.t() | atom()),
        "nextToken" => [String.t() | atom()]
      }

  """
  @type list_firewall_domains_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_access_token_input() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("expiresAt") => non_neg_integer(),
        optional("name") => String.t() | atom(),
        optional("tags") => map()
      }

  """
  @type create_access_token_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_hosted_zone_association_input() :: %{}

  """
  @type get_hosted_zone_association_input() :: %{}

  @typedoc """

  ## Example:

      delete_firewall_domain_list_output() :: %{
        "arn" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type delete_firewall_domain_list_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_access_token_input() :: %{}

  """
  @type get_access_token_input() :: %{}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      create_firewall_domain_list_output() :: %{
        "arn" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "domainCount" => [integer()],
        "globalResolverId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "status" => list(any()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type create_firewall_domain_list_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_firewall_domain_lists_output() :: %{
        "firewallDomainLists" => list(firewall_domain_lists_item()),
        "nextToken" => [String.t() | atom()]
      }

  """
  @type list_firewall_domain_lists_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_access_token_input() :: %{}

  """
  @type delete_access_token_input() :: %{}

  @typedoc """

  ## Example:

      delete_access_source_output() :: %{
        "arn" => String.t() | atom(),
        "cidr" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "dnsViewId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "ipAddressType" => list(any()),
        "name" => String.t() | atom(),
        "protocol" => list(any()),
        "status" => list(any()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type delete_access_source_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_firewall_domain_lists_input() :: %{
        optional("globalResolverId") => String.t() | atom(),
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()]
      }

  """
  @type list_firewall_domain_lists_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_delete_firewall_rule_input() :: %{
        required("firewallRules") => list(batch_delete_firewall_rule_input_item())
      }

  """
  @type batch_delete_firewall_rule_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_update_firewall_rule_output() :: %{
        "failures" => list(batch_update_firewall_rule_output_item()),
        "successes" => list(batch_update_firewall_rule_output_item())
      }

  """
  @type batch_update_firewall_rule_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_dns_view_input() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("dnssecValidation") => list(any()),
        optional("ednsClientSubnet") => list(any()),
        optional("firewallRulesFailOpen") => list(any()),
        optional("tags") => map(),
        required("name") => String.t() | atom()
      }

  """
  @type create_dns_view_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_firewall_domain_list_input() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("tags") => map(),
        required("name") => String.t() | atom()
      }

  """
  @type create_firewall_domain_list_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_access_source_input() :: %{}

  """
  @type get_access_source_input() :: %{}

  @typedoc """

  ## Example:

      delete_dns_view_input() :: %{}

  """
  @type delete_dns_view_input() :: %{}

  @typedoc """

  ## Example:

      associate_hosted_zone_output() :: %{
        "createdAt" => non_neg_integer(),
        "hostedZoneId" => String.t() | atom(),
        "hostedZoneName" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "resourceArn" => String.t() | atom(),
        "status" => list(any()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type associate_hosted_zone_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_dns_view_input() :: %{
        optional("description") => String.t() | atom(),
        optional("dnssecValidation") => list(any()),
        optional("ednsClientSubnet") => list(any()),
        optional("firewallRulesFailOpen") => list(any()),
        optional("name") => String.t() | atom()
      }

  """
  @type update_dns_view_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_delete_firewall_rule_output_item() :: %{
        "code" => [integer()],
        "firewallRule" => batch_delete_firewall_rule_result(),
        "message" => [String.t() | atom()]
      }

  """
  @type batch_delete_firewall_rule_output_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      dns_view_summary() :: %{
        "arn" => String.t() | atom(),
        "clientToken" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "dnssecValidation" => list(any()),
        "ednsClientSubnet" => list(any()),
        "firewallRulesFailOpen" => list(any()),
        "globalResolverId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "status" => list(any()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type dns_view_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_hosted_zone_output() :: %{
        "createdAt" => non_neg_integer(),
        "hostedZoneId" => String.t() | atom(),
        "hostedZoneName" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "resourceArn" => String.t() | atom(),
        "status" => list(any()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type disassociate_hosted_zone_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_managed_firewall_domain_lists_output() :: %{
        "managedFirewallDomainLists" => list(managed_firewall_domain_lists_item()),
        "nextToken" => [String.t() | atom()]
      }

  """
  @type list_managed_firewall_domain_lists_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("resourceArn") => String.t() | atom(),
        required("tagKeys") => list(String.t() | atom())
      }

  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      firewall_rules_item() :: %{
        "action" => list(any()),
        "blockOverrideDnsType" => list(any()),
        "blockOverrideDomain" => String.t() | atom(),
        "blockOverrideTtl" => integer(),
        "blockResponse" => list(any()),
        "confidenceThreshold" => list(any()),
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "dnsAdvancedProtection" => list(any()),
        "dnsViewId" => String.t() | atom(),
        "firewallDomainListId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "priority" => float(),
        "queryType" => String.t() | atom(),
        "status" => list(any()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type firewall_rules_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_dns_view_input() :: %{}

  """
  @type get_dns_view_input() :: %{}

  @typedoc """

  ## Example:

      update_access_token_output() :: %{
        "id" => String.t() | atom(),
        "name" => String.t() | atom()
      }

  """
  @type update_access_token_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_global_resolver_input() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("observabilityRegion") => String.t() | atom(),
        optional("tags") => map(),
        required("name") => String.t() | atom(),
        required("regions") => list(String.t() | atom())
      }

  """
  @type create_global_resolver_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_dns_view_output() :: %{
        "arn" => String.t() | atom(),
        "clientToken" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "dnssecValidation" => list(any()),
        "ednsClientSubnet" => list(any()),
        "firewallRulesFailOpen" => list(any()),
        "globalResolverId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "status" => list(any()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type get_dns_view_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_hosted_zone_associations_input() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()]
      }

  """
  @type list_hosted_zone_associations_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_access_source_output() :: %{
        "arn" => String.t() | atom(),
        "cidr" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "dnsViewId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "ipAddressType" => list(any()),
        "name" => String.t() | atom(),
        "protocol" => list(any()),
        "status" => list(any()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type update_access_source_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_access_token_output() :: %{
        "arn" => String.t() | atom(),
        "clientToken" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "dnsViewId" => String.t() | atom(),
        "expiresAt" => non_neg_integer(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "status" => list(any()),
        "value" => String.t() | atom()
      }

  """
  @type create_access_token_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_firewall_domain_list_input() :: %{}

  """
  @type delete_firewall_domain_list_input() :: %{}

  @typedoc """

  ## Example:

      get_managed_firewall_domain_list_input() :: %{}

  """
  @type get_managed_firewall_domain_list_input() :: %{}

  @typedoc """

  ## Example:

      list_access_tokens_output() :: %{
        "accessTokens" => list(access_token_item()),
        "nextToken" => [String.t() | atom()]
      }

  """
  @type list_access_tokens_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_access_source_input() :: %{}

  """
  @type delete_access_source_input() :: %{}

  @typedoc """

  ## Example:

      update_global_resolver_output() :: %{
        "arn" => String.t() | atom(),
        "clientToken" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "dnsName" => String.t() | atom(),
        "id" => String.t() | atom(),
        "ipv4Addresses" => list(String.t() | atom()),
        "name" => String.t() | atom(),
        "observabilityRegion" => String.t() | atom(),
        "regions" => list(String.t() | atom()),
        "status" => list(any()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type update_global_resolver_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_global_resolver_output() :: %{
        "arn" => String.t() | atom(),
        "clientToken" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "dnsName" => String.t() | atom(),
        "id" => String.t() | atom(),
        "ipv4Addresses" => list(String.t() | atom()),
        "name" => String.t() | atom(),
        "observabilityRegion" => String.t() | atom(),
        "regions" => list(String.t() | atom()),
        "status" => list(any()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type create_global_resolver_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => [String.t() | atom()],
        "resourceId" => [String.t() | atom()],
        "resourceType" => [String.t() | atom()]
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => [String.t() | atom()],
        "resourceId" => [String.t() | atom()],
        "resourceType" => [String.t() | atom()]
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_access_tokens_input() :: %{
        optional("filters") => map(),
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()]
      }

  """
  @type list_access_tokens_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_hosted_zone_association_input() :: %{
        optional("name") => String.t() | atom()
      }

  """
  @type update_hosted_zone_association_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_hosted_zone_input() :: %{}

  """
  @type disassociate_hosted_zone_input() :: %{}

  @typedoc """

  ## Example:

      delete_access_token_output() :: %{
        "deletedAt" => non_neg_integer(),
        "id" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type delete_access_token_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => [String.t() | atom()],
        "quotaCode" => [String.t() | atom()],
        "resourceId" => [String.t() | atom()],
        "resourceType" => [String.t() | atom()],
        "serviceCode" => [String.t() | atom()]
      }

  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_firewall_domains_input() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()]
      }

  """
  @type list_firewall_domains_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_delete_firewall_rule_output() :: %{
        "failures" => list(batch_delete_firewall_rule_output_item()),
        "successes" => list(batch_delete_firewall_rule_output_item())
      }

  """
  @type batch_delete_firewall_rule_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_firewall_rule_input() :: %{
        optional("blockOverrideDnsType") => list(any()),
        optional("blockOverrideDomain") => String.t() | atom(),
        optional("blockOverrideTtl") => integer(),
        optional("blockResponse") => list(any()),
        optional("clientToken") => String.t() | atom(),
        optional("confidenceThreshold") => list(any()),
        optional("description") => String.t() | atom(),
        optional("dnsAdvancedProtection") => list(any()),
        optional("firewallDomainListId") => String.t() | atom(),
        optional("priority") => float(),
        optional("qType") => String.t() | atom(),
        required("action") => list(any()),
        required("dnsViewId") => String.t() | atom(),
        required("name") => String.t() | atom()
      }

  """
  @type create_firewall_rule_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      firewall_domain_lists_item() :: %{
        "arn" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "globalResolverId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "status" => list(any()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type firewall_domain_lists_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_firewall_domains_output() :: %{
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type update_firewall_domains_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception_field() :: %{
        "message" => [String.t() | atom()],
        "name" => [String.t() | atom()]
      }

  """
  @type validation_exception_field() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_delete_firewall_rule_input_item() :: %{
        "firewallRuleId" => String.t() | atom()
      }

  """
  @type batch_delete_firewall_rule_input_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_create_firewall_rule_output_item() :: %{
        "code" => [integer()],
        "firewallRule" => batch_create_firewall_rule_result(),
        "message" => [String.t() | atom()]
      }

  """
  @type batch_create_firewall_rule_output_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_managed_firewall_domain_lists_input() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()]
      }

  """
  @type list_managed_firewall_domain_lists_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disable_dns_view_input() :: %{}

  """
  @type disable_dns_view_input() :: %{}

  @typedoc """

  ## Example:

      update_access_source_input() :: %{
        optional("cidr") => String.t() | atom(),
        optional("ipAddressType") => list(any()),
        optional("name") => String.t() | atom(),
        optional("protocol") => list(any())
      }

  """
  @type update_access_source_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_create_firewall_rule_result() :: %{
        "action" => list(any()),
        "blockOverrideDnsType" => list(any()),
        "blockOverrideDomain" => String.t() | atom(),
        "blockOverrideTtl" => integer(),
        "blockResponse" => list(any()),
        "clientToken" => String.t() | atom(),
        "confidenceThreshold" => list(any()),
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "dnsAdvancedProtection" => list(any()),
        "dnsViewId" => String.t() | atom(),
        "firewallDomainListId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "managedDomainListName" => String.t() | atom(),
        "name" => String.t() | atom(),
        "priority" => float(),
        "queryType" => String.t() | atom(),
        "status" => list(any()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type batch_create_firewall_rule_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_firewall_rule_output() :: %{
        "action" => list(any()),
        "blockOverrideDnsType" => list(any()),
        "blockOverrideDomain" => String.t() | atom(),
        "blockOverrideTtl" => integer(),
        "blockResponse" => list(any()),
        "confidenceThreshold" => list(any()),
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "dnsAdvancedProtection" => list(any()),
        "dnsViewId" => String.t() | atom(),
        "firewallDomainListId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "priority" => float(),
        "queryType" => String.t() | atom(),
        "status" => list(any()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type update_firewall_rule_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_firewall_rule_input() :: %{}

  """
  @type get_firewall_rule_input() :: %{}

  @typedoc """

  ## Example:

      delete_global_resolver_output() :: %{
        "arn" => String.t() | atom(),
        "clientToken" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "dnsName" => String.t() | atom(),
        "id" => String.t() | atom(),
        "ipv4Addresses" => list(String.t() | atom()),
        "name" => String.t() | atom(),
        "observabilityRegion" => String.t() | atom(),
        "regions" => list(String.t() | atom()),
        "status" => list(any()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type delete_global_resolver_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => [String.t() | atom()],
        "retryAfterSeconds" => [integer()]
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_firewall_domain_list_input() :: %{}

  """
  @type get_firewall_domain_list_input() :: %{}

  @typedoc """

  ## Example:

      get_access_source_output() :: %{
        "arn" => String.t() | atom(),
        "cidr" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "dnsViewId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "ipAddressType" => list(any()),
        "name" => String.t() | atom(),
        "protocol" => list(any()),
        "status" => list(any()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type get_access_source_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      import_firewall_domains_input() :: %{
        required("domainFileUrl") => [String.t() | atom()],
        required("operation") => [String.t() | atom()]
      }

  """
  @type import_firewall_domains_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_update_firewall_rule_input_item() :: %{
        "action" => list(any()),
        "blockOverrideDnsType" => list(any()),
        "blockOverrideDomain" => String.t() | atom(),
        "blockOverrideTtl" => integer(),
        "blockResponse" => list(any()),
        "confidenceThreshold" => list(any()),
        "description" => String.t() | atom(),
        "dnsAdvancedProtection" => list(any()),
        "firewallRuleId" => String.t() | atom(),
        "name" => String.t() | atom(),
        "priority" => float()
      }

  """
  @type batch_update_firewall_rule_input_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_firewall_rule_output() :: %{
        "action" => list(any()),
        "blockOverrideDnsType" => list(any()),
        "blockOverrideDomain" => String.t() | atom(),
        "blockOverrideTtl" => integer(),
        "blockResponse" => list(any()),
        "confidenceThreshold" => list(any()),
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "dnsAdvancedProtection" => list(any()),
        "dnsViewId" => String.t() | atom(),
        "firewallDomainListId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "priority" => float(),
        "queryType" => String.t() | atom(),
        "status" => list(any()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type get_firewall_rule_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      access_token_item() :: %{
        "arn" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "dnsViewId" => String.t() | atom(),
        "expiresAt" => non_neg_integer(),
        "globalResolverId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "status" => list(any()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type access_token_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      import_firewall_domains_output() :: %{
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type import_firewall_domains_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_firewall_domain_list_output() :: %{
        "arn" => String.t() | atom(),
        "clientToken" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "domainCount" => [integer()],
        "globalResolverId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "status" => list(any()),
        "statusMessage" => [String.t() | atom()],
        "updatedAt" => non_neg_integer()
      }

  """
  @type get_firewall_domain_list_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      list_firewall_rules_output() :: %{
        "firewallRules" => list(firewall_rules_item()),
        "nextToken" => [String.t() | atom()]
      }

  """
  @type list_firewall_rules_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_access_token_input() :: %{
        required("name") => String.t() | atom()
      }

  """
  @type update_access_token_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      hosted_zone_association_summary() :: %{
        "createdAt" => non_neg_integer(),
        "hostedZoneId" => String.t() | atom(),
        "hostedZoneName" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "resourceArn" => String.t() | atom(),
        "status" => list(any()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type hosted_zone_association_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_create_firewall_rule_input() :: %{
        required("firewallRules") => list(batch_create_firewall_rule_input_item())
      }

  """
  @type batch_create_firewall_rule_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_global_resolver_input() :: %{}

  """
  @type delete_global_resolver_input() :: %{}

  @typedoc """

  ## Example:

      batch_update_firewall_rule_input() :: %{
        required("firewallRules") => list(batch_update_firewall_rule_input_item())
      }

  """
  @type batch_update_firewall_rule_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_hosted_zone_association_output() :: %{
        "createdAt" => non_neg_integer(),
        "hostedZoneId" => String.t() | atom(),
        "hostedZoneName" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "resourceArn" => String.t() | atom(),
        "status" => list(any()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type update_hosted_zone_association_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "fieldList" => list(validation_exception_field()),
        "message" => [String.t() | atom()],
        "reason" => list(any())
      }

  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{
        required("resourceArn") => String.t() | atom()
      }

  """
  @type list_tags_for_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_global_resolver_input() :: %{
        optional("description") => String.t() | atom(),
        optional("name") => String.t() | atom(),
        optional("observabilityRegion") => String.t() | atom()
      }

  """
  @type update_global_resolver_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_managed_firewall_domain_list_output() :: %{
        "description" => String.t() | atom(),
        "id" => String.t() | atom(),
        "managedListType" => [String.t() | atom()],
        "name" => String.t() | atom()
      }

  """
  @type get_managed_firewall_domain_list_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_dns_views_input() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()]
      }

  """
  @type list_dns_views_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => [String.t() | atom()],
        "quotaCode" => [String.t() | atom()],
        "retryAfterSeconds" => [integer()],
        "serviceCode" => [String.t() | atom()]
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_access_token_output() :: %{
        "arn" => String.t() | atom(),
        "clientToken" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "dnsViewId" => String.t() | atom(),
        "expiresAt" => non_neg_integer(),
        "globalResolverId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "status" => list(any()),
        "updatedAt" => non_neg_integer(),
        "value" => String.t() | atom()
      }

  """
  @type get_access_token_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_hosted_zone_input() :: %{
        required("name") => String.t() | atom(),
        required("resourceArn") => String.t() | atom()
      }

  """
  @type associate_hosted_zone_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_firewall_rules_input() :: %{
        optional("filters") => map(),
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()],
        required("dnsViewId") => String.t() | atom()
      }

  """
  @type list_firewall_rules_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_firewall_rule_output() :: %{
        "action" => list(any()),
        "blockOverrideDnsType" => list(any()),
        "blockOverrideDomain" => String.t() | atom(),
        "blockOverrideTtl" => integer(),
        "blockResponse" => list(any()),
        "confidenceThreshold" => list(any()),
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "dnsAdvancedProtection" => list(any()),
        "dnsViewId" => String.t() | atom(),
        "firewallDomainListId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "priority" => float(),
        "queryType" => String.t() | atom(),
        "status" => list(any()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type create_firewall_rule_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_update_firewall_rule_result() :: %{
        "action" => list(any()),
        "blockOverrideDnsType" => list(any()),
        "blockOverrideDomain" => String.t() | atom(),
        "blockOverrideTtl" => integer(),
        "blockResponse" => list(any()),
        "clientToken" => String.t() | atom(),
        "confidenceThreshold" => list(any()),
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "dnsAdvancedProtection" => list(any()),
        "dnsViewId" => String.t() | atom(),
        "firewallDomainListId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "priority" => float(),
        "queryType" => String.t() | atom(),
        "status" => list(any()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type batch_update_firewall_rule_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_firewall_rule_input() :: %{}

  """
  @type delete_firewall_rule_input() :: %{}

  @typedoc """

  ## Example:

      list_access_sources_output() :: %{
        "accessSources" => list(access_sources_item()),
        "nextToken" => [String.t() | atom()]
      }

  """
  @type list_access_sources_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_hosted_zone_associations_output() :: %{
        "hostedZoneAssociations" => list(hosted_zone_association_summary()),
        "nextToken" => [String.t() | atom()]
      }

  """
  @type list_hosted_zone_associations_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_update_firewall_rule_output_item() :: %{
        "code" => [integer()],
        "firewallRule" => batch_update_firewall_rule_result(),
        "message" => [String.t() | atom()]
      }

  """
  @type batch_update_firewall_rule_output_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_dns_view_output() :: %{
        "arn" => String.t() | atom(),
        "clientToken" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "dnssecValidation" => list(any()),
        "ednsClientSubnet" => list(any()),
        "firewallRulesFailOpen" => list(any()),
        "globalResolverId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "status" => list(any()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type delete_dns_view_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_dns_views_output() :: %{
        "dnsViews" => list(dns_view_summary()),
        "nextToken" => [String.t() | atom()]
      }

  """
  @type list_dns_views_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_hosted_zone_association_output() :: %{
        "createdAt" => non_neg_integer(),
        "hostedZoneId" => String.t() | atom(),
        "hostedZoneName" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "resourceArn" => String.t() | atom(),
        "status" => list(any()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type get_hosted_zone_association_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_global_resolver_output() :: %{
        "arn" => String.t() | atom(),
        "clientToken" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "dnsName" => String.t() | atom(),
        "id" => String.t() | atom(),
        "ipv4Addresses" => list(String.t() | atom()),
        "name" => String.t() | atom(),
        "observabilityRegion" => String.t() | atom(),
        "regions" => list(String.t() | atom()),
        "status" => list(any()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type get_global_resolver_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      enable_dns_view_input() :: %{}

  """
  @type enable_dns_view_input() :: %{}

  @typedoc """

  ## Example:

      batch_delete_firewall_rule_result() :: %{
        "clientToken" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type batch_delete_firewall_rule_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_create_firewall_rule_input_item() :: %{
        "action" => list(any()),
        "blockOverrideDnsType" => list(any()),
        "blockOverrideDomain" => String.t() | atom(),
        "blockOverrideTtl" => integer(),
        "blockResponse" => list(any()),
        "clientToken" => String.t() | atom(),
        "confidenceThreshold" => list(any()),
        "description" => String.t() | atom(),
        "dnsAdvancedProtection" => list(any()),
        "dnsViewId" => String.t() | atom(),
        "firewallDomainListId" => String.t() | atom(),
        "name" => String.t() | atom(),
        "priority" => float(),
        "qType" => String.t() | atom()
      }

  """
  @type batch_create_firewall_rule_input_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_global_resolvers_output() :: %{
        "globalResolvers" => list(global_resolvers_item()),
        "nextToken" => [String.t() | atom()]
      }

  """
  @type list_global_resolvers_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_global_resolvers_input() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()]
      }

  """
  @type list_global_resolvers_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_global_resolver_input() :: %{}

  """
  @type get_global_resolver_input() :: %{}

  @typedoc """

  ## Example:

      delete_firewall_rule_output() :: %{
        "action" => list(any()),
        "blockOverrideDnsType" => list(any()),
        "blockOverrideDomain" => String.t() | atom(),
        "blockOverrideTtl" => integer(),
        "blockResponse" => list(any()),
        "confidenceThreshold" => list(any()),
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "dnsAdvancedProtection" => list(any()),
        "dnsViewId" => String.t() | atom(),
        "firewallDomainListId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "priority" => float(),
        "queryType" => String.t() | atom(),
        "status" => list(any()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type delete_firewall_rule_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      enable_dns_view_output() :: %{
        "arn" => String.t() | atom(),
        "clientToken" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "dnssecValidation" => list(any()),
        "ednsClientSubnet" => list(any()),
        "firewallRulesFailOpen" => list(any()),
        "globalResolverId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "status" => list(any()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type enable_dns_view_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_firewall_domains_input() :: %{
        required("domains") => list(String.t() | atom()),
        required("operation") => [String.t() | atom()]
      }

  """
  @type update_firewall_domains_input() :: %{(String.t() | atom()) => any()}

  @type associate_hosted_zone_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type batch_create_firewall_rule_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type batch_delete_firewall_rule_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type batch_update_firewall_rule_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type create_access_source_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_access_token_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_dns_view_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_firewall_domain_list_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_firewall_rule_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_global_resolver_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type delete_access_source_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_access_token_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_dns_view_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_firewall_domain_list_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_firewall_rule_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_global_resolver_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type disable_dns_view_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type disassociate_hosted_zone_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type enable_dns_view_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_access_source_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_access_token_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_dns_view_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_firewall_domain_list_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_firewall_rule_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_global_resolver_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_hosted_zone_association_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_managed_firewall_domain_list_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type import_firewall_domains_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_access_sources_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_access_tokens_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_dns_views_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_firewall_domain_lists_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_firewall_domains_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_firewall_rules_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_global_resolvers_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_hosted_zone_associations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_managed_firewall_domain_lists_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_tags_for_resource_errors() :: resource_not_found_exception()

  @type tag_resource_errors() ::
          validation_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type untag_resource_errors() :: validation_exception() | resource_not_found_exception()

  @type update_access_source_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_access_token_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_dns_view_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_firewall_domains_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_firewall_rule_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_global_resolver_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_hosted_zone_association_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2022-09-27",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "route53globalresolver",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Route53GlobalResolver",
      signature_version: "v4",
      signing_name: "route53globalresolver",
      target_prefix: nil
    }
  end

  @doc """
  Associates a Route 53 private hosted zone with a Route 53 Global Resolver
  resource.

  This allows the resolver to resolve DNS queries for the private hosted zone from
  anywhere globally.
  """
  @spec associate_hosted_zone(map(), String.t() | atom(), associate_hosted_zone_input(), list()) ::
          {:ok, associate_hosted_zone_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_hosted_zone_errors()}
  def associate_hosted_zone(%Client{} = client, hosted_zone_id, input, options \\ []) do
    url_path = "/hosted-zone-associations/#{AWS.Util.encode_uri(hosted_zone_id)}"
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
  Creates multiple DNS firewall rules in a single operation.

  This is more efficient than creating rules individually when you need to set up
  multiple rules at once.
  """
  @spec batch_create_firewall_rule(map(), batch_create_firewall_rule_input(), list()) ::
          {:ok, batch_create_firewall_rule_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_create_firewall_rule_errors()}
  def batch_create_firewall_rule(%Client{} = client, input, options \\ []) do
    url_path = "/firewall-rules/batch-create"
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
  Deletes multiple DNS firewall rules in a single operation.

  This is more efficient than deleting rules individually.
  """
  @spec batch_delete_firewall_rule(map(), batch_delete_firewall_rule_input(), list()) ::
          {:ok, batch_delete_firewall_rule_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_delete_firewall_rule_errors()}
  def batch_delete_firewall_rule(%Client{} = client, input, options \\ []) do
    url_path = "/firewall-rules/batch-delete"
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
  Updates multiple DNS firewall rules in a single operation.

  This is more efficient than updating rules individually.
  """
  @spec batch_update_firewall_rule(map(), batch_update_firewall_rule_input(), list()) ::
          {:ok, batch_update_firewall_rule_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_update_firewall_rule_errors()}
  def batch_update_firewall_rule(%Client{} = client, input, options \\ []) do
    url_path = "/firewall-rules/batch-update"
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
  Creates an access source for a DNS view.

  Access sources define IP addresses or CIDR ranges that are allowed to send DNS
  queries to the Route 53 Global Resolver, along with the permitted DNS protocols.
  """
  @spec create_access_source(map(), create_access_source_input(), list()) ::
          {:ok, create_access_source_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_access_source_errors()}
  def create_access_source(%Client{} = client, input, options \\ []) do
    url_path = "/access-sources"
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
  Creates an access token for a DNS view.

  Access tokens provide token-based authentication for DNS-over-HTTPS (DoH) and
  DNS-over-TLS (DoT) connections to the Route 53 Global Resolver.
  """
  @spec create_access_token(map(), String.t() | atom(), create_access_token_input(), list()) ::
          {:ok, create_access_token_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_access_token_errors()}
  def create_access_token(%Client{} = client, dns_view_id, input, options \\ []) do
    url_path = "/tokens/#{AWS.Util.encode_uri(dns_view_id)}"
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
  Creates a DNS view within a Route 53 Global Resolver.

  A DNS view models end users, user groups, networks, and devices, and serves as a
  parent resource that holds configurations controlling access, authorization, DNS
  firewall rules, and forwarding rules.
  """
  @spec create_dns_view(map(), String.t() | atom(), create_dns_view_input(), list()) ::
          {:ok, create_dns_view_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_dns_view_errors()}
  def create_dns_view(%Client{} = client, global_resolver_id, input, options \\ []) do
    url_path = "/dns-views/#{AWS.Util.encode_uri(global_resolver_id)}"
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
  Creates a firewall domain list.

  Domain lists are reusable sets of domain specifications that you use in DNS
  firewall rules to allow, block, or alert on DNS queries to specific domains.
  """
  @spec create_firewall_domain_list(
          map(),
          String.t() | atom(),
          create_firewall_domain_list_input(),
          list()
        ) ::
          {:ok, create_firewall_domain_list_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_firewall_domain_list_errors()}
  def create_firewall_domain_list(%Client{} = client, global_resolver_id, input, options \\ []) do
    url_path = "/firewall-domain-lists/#{AWS.Util.encode_uri(global_resolver_id)}"
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
  Creates a DNS firewall rule.

  Firewall rules define actions (ALLOW, BLOCK, or ALERT) to take on DNS queries
  that match specified domain lists, managed domain lists, or advanced threat
  protections.
  """
  @spec create_firewall_rule(map(), create_firewall_rule_input(), list()) ::
          {:ok, create_firewall_rule_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_firewall_rule_errors()}
  def create_firewall_rule(%Client{} = client, input, options \\ []) do
    url_path = "/firewall-rules"
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
  Creates a new Route 53 Global Resolver instance.

  A Route 53 Global Resolver is a global, internet-accessible DNS resolver that
  provides secure DNS resolution for both public and private domains through
  global anycast IP addresses.
  """
  @spec create_global_resolver(map(), create_global_resolver_input(), list()) ::
          {:ok, create_global_resolver_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_global_resolver_errors()}
  def create_global_resolver(%Client{} = client, input, options \\ []) do
    url_path = "/global-resolver"
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
  Deletes an access source.

  This operation cannot be undone.
  """
  @spec delete_access_source(map(), String.t() | atom(), delete_access_source_input(), list()) ::
          {:ok, delete_access_source_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_access_source_errors()}
  def delete_access_source(%Client{} = client, access_source_id, input, options \\ []) do
    url_path = "/access-sources/#{AWS.Util.encode_uri(access_source_id)}"
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
  Deletes an access token.

  This operation cannot be undone.
  """
  @spec delete_access_token(map(), String.t() | atom(), delete_access_token_input(), list()) ::
          {:ok, delete_access_token_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_access_token_errors()}
  def delete_access_token(%Client{} = client, access_token_id, input, options \\ []) do
    url_path = "/tokens/#{AWS.Util.encode_uri(access_token_id)}"
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
  Deletes a DNS view.

  This operation cannot be undone.
  """
  @spec delete_dns_view(map(), String.t() | atom(), delete_dns_view_input(), list()) ::
          {:ok, delete_dns_view_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_dns_view_errors()}
  def delete_dns_view(%Client{} = client, dns_view_id, input, options \\ []) do
    url_path = "/dns-views/#{AWS.Util.encode_uri(dns_view_id)}"
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
  Deletes a firewall domain list.

  This operation cannot be undone.
  """
  @spec delete_firewall_domain_list(
          map(),
          String.t() | atom(),
          delete_firewall_domain_list_input(),
          list()
        ) ::
          {:ok, delete_firewall_domain_list_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_firewall_domain_list_errors()}
  def delete_firewall_domain_list(
        %Client{} = client,
        firewall_domain_list_id,
        input,
        options \\ []
      ) do
    url_path = "/firewall-domain-lists/#{AWS.Util.encode_uri(firewall_domain_list_id)}"
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
  Deletes a DNS firewall rule.

  This operation cannot be undone.
  """
  @spec delete_firewall_rule(map(), String.t() | atom(), delete_firewall_rule_input(), list()) ::
          {:ok, delete_firewall_rule_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_firewall_rule_errors()}
  def delete_firewall_rule(%Client{} = client, firewall_rule_id, input, options \\ []) do
    url_path = "/firewall-rules/#{AWS.Util.encode_uri(firewall_rule_id)}"
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
  Deletes a Route 53 Global Resolver instance.

  This operation cannot be undone. All associated DNS views, access sources,
  tokens, and firewall rules are also deleted.
  """
  @spec delete_global_resolver(map(), String.t() | atom(), delete_global_resolver_input(), list()) ::
          {:ok, delete_global_resolver_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_global_resolver_errors()}
  def delete_global_resolver(%Client{} = client, global_resolver_id, input, options \\ []) do
    url_path = "/global-resolver/#{AWS.Util.encode_uri(global_resolver_id)}"
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
  Disables a DNS view, preventing it from serving DNS queries.
  """
  @spec disable_dns_view(map(), String.t() | atom(), disable_dns_view_input(), list()) ::
          {:ok, disable_dns_view_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disable_dns_view_errors()}
  def disable_dns_view(%Client{} = client, dns_view_id, input, options \\ []) do
    url_path = "/dns-views/#{AWS.Util.encode_uri(dns_view_id)}/disable"
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
  Disassociates a Route 53 private hosted zone from a Route 53 Global Resolver
  resource.
  """
  @spec disassociate_hosted_zone(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          disassociate_hosted_zone_input(),
          list()
        ) ::
          {:ok, disassociate_hosted_zone_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_hosted_zone_errors()}
  def disassociate_hosted_zone(
        %Client{} = client,
        hosted_zone_id,
        resource_arn,
        input,
        options \\ []
      ) do
    url_path =
      "/hosted-zone-associations/hosted-zone/#{AWS.Util.encode_uri(hosted_zone_id)}/resource-arn/#{AWS.Util.encode_multi_segment_uri(resource_arn)}"

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
  Enables a disabled DNS view, allowing it to serve DNS queries again.
  """
  @spec enable_dns_view(map(), String.t() | atom(), enable_dns_view_input(), list()) ::
          {:ok, enable_dns_view_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, enable_dns_view_errors()}
  def enable_dns_view(%Client{} = client, dns_view_id, input, options \\ []) do
    url_path = "/dns-views/#{AWS.Util.encode_uri(dns_view_id)}/enable"
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
  Retrieves information about an access source.
  """
  @spec get_access_source(map(), String.t() | atom(), list()) ::
          {:ok, get_access_source_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_access_source_errors()}
  def get_access_source(%Client{} = client, access_source_id, options \\ []) do
    url_path = "/access-sources/#{AWS.Util.encode_uri(access_source_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about an access token.
  """
  @spec get_access_token(map(), String.t() | atom(), list()) ::
          {:ok, get_access_token_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_access_token_errors()}
  def get_access_token(%Client{} = client, access_token_id, options \\ []) do
    url_path = "/tokens/#{AWS.Util.encode_uri(access_token_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a DNS view.
  """
  @spec get_dns_view(map(), String.t() | atom(), list()) ::
          {:ok, get_dns_view_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_dns_view_errors()}
  def get_dns_view(%Client{} = client, dns_view_id, options \\ []) do
    url_path = "/dns-views/#{AWS.Util.encode_uri(dns_view_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a firewall domain list.
  """
  @spec get_firewall_domain_list(map(), String.t() | atom(), list()) ::
          {:ok, get_firewall_domain_list_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_firewall_domain_list_errors()}
  def get_firewall_domain_list(%Client{} = client, firewall_domain_list_id, options \\ []) do
    url_path = "/firewall-domain-lists/#{AWS.Util.encode_uri(firewall_domain_list_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a DNS firewall rule.
  """
  @spec get_firewall_rule(map(), String.t() | atom(), list()) ::
          {:ok, get_firewall_rule_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_firewall_rule_errors()}
  def get_firewall_rule(%Client{} = client, firewall_rule_id, options \\ []) do
    url_path = "/firewall-rules/#{AWS.Util.encode_uri(firewall_rule_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a Route 53 Global Resolver instance.
  """
  @spec get_global_resolver(map(), String.t() | atom(), list()) ::
          {:ok, get_global_resolver_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_global_resolver_errors()}
  def get_global_resolver(%Client{} = client, global_resolver_id, options \\ []) do
    url_path = "/global-resolver/#{AWS.Util.encode_uri(global_resolver_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a hosted zone association.
  """
  @spec get_hosted_zone_association(map(), String.t() | atom(), list()) ::
          {:ok, get_hosted_zone_association_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_hosted_zone_association_errors()}
  def get_hosted_zone_association(%Client{} = client, hosted_zone_association_id, options \\ []) do
    url_path = "/hosted-zone-associations/#{AWS.Util.encode_uri(hosted_zone_association_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about an AWS-managed firewall domain list.

  Managed domain lists contain domains associated with malicious activity, content
  categories, or specific threats.
  """
  @spec get_managed_firewall_domain_list(map(), String.t() | atom(), list()) ::
          {:ok, get_managed_firewall_domain_list_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_managed_firewall_domain_list_errors()}
  def get_managed_firewall_domain_list(
        %Client{} = client,
        managed_firewall_domain_list_id,
        options \\ []
      ) do
    url_path =
      "/managed-firewall-domain-lists/#{AWS.Util.encode_uri(managed_firewall_domain_list_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Imports a list of domains from an Amazon S3 file into a firewall domain list.

  The file should contain one domain per line.
  """
  @spec import_firewall_domains(
          map(),
          String.t() | atom(),
          import_firewall_domains_input(),
          list()
        ) ::
          {:ok, import_firewall_domains_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, import_firewall_domains_errors()}
  def import_firewall_domains(%Client{} = client, firewall_domain_list_id, input, options \\ []) do
    url_path =
      "/firewall-domain-lists/#{AWS.Util.encode_uri(firewall_domain_list_id)}/domains/s3_file_url"

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
  Lists all access sources with pagination support.
  """
  @spec list_access_sources(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_access_sources_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_access_sources_errors()}
  def list_access_sources(
        %Client{} = client,
        filters \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/access-sources"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next_token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max_results", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(filters) do
        [{"filters", filters} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all access tokens for a DNS view with pagination support.
  """
  @spec list_access_tokens(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_access_tokens_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_access_tokens_errors()}
  def list_access_tokens(
        %Client{} = client,
        dns_view_id,
        filters \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/tokens/dns-view/#{AWS.Util.encode_uri(dns_view_id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next_token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max_results", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(filters) do
        [{"filters", filters} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all DNS views for a Route 53 Global Resolver with pagination support.
  """
  @spec list_dns_views(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_dns_views_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_dns_views_errors()}
  def list_dns_views(
        %Client{} = client,
        global_resolver_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/dns-views/resolver/#{AWS.Util.encode_uri(global_resolver_id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next_token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max_results", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all firewall domain lists for a Route 53 Global Resolver with pagination
  support.
  """
  @spec list_firewall_domain_lists(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_firewall_domain_lists_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_firewall_domain_lists_errors()}
  def list_firewall_domain_lists(
        %Client{} = client,
        global_resolver_id \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/firewall-domain-lists"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next_token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max_results", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(global_resolver_id) do
        [{"global_resolver_id", global_resolver_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all the domains in DNS Firewall domain list you have created.
  """
  @spec list_firewall_domains(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_firewall_domains_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_firewall_domains_errors()}
  def list_firewall_domains(
        %Client{} = client,
        firewall_domain_list_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/firewall-domain-lists/#{AWS.Util.encode_uri(firewall_domain_list_id)}/domains"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next_token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max_results", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all DNS firewall rules for a DNS view with pagination support.
  """
  @spec list_firewall_rules(
          map(),
          String.t() | atom() | nil,
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_firewall_rules_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_firewall_rules_errors()}
  def list_firewall_rules(
        %Client{} = client,
        filters \\ nil,
        dns_view_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/firewall-rules"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next_token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max_results", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(dns_view_id) do
        [{"dnsview_id", dns_view_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(filters) do
        [{"filters", filters} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all Route 53 Global Resolver instances in your account with pagination
  support.
  """
  @spec list_global_resolvers(map(), String.t() | atom() | nil, String.t() | atom() | nil, list()) ::
          {:ok, list_global_resolvers_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_global_resolvers_errors()}
  def list_global_resolvers(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/global-resolver"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next_token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max_results", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all hosted zone associations for a Route 53 Global Resolver resource with
  pagination support.
  """
  @spec list_hosted_zone_associations(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_hosted_zone_associations_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_hosted_zone_associations_errors()}
  def list_hosted_zone_associations(
        %Client{} = client,
        resource_arn,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/hosted-zone-associations/resource-arn/#{AWS.Util.encode_multi_segment_uri(resource_arn)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next_token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max_results", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a paginated list of the AWS Managed DNS Lists and the categories for DNS
  Firewall.

  The categories are either `THREAT` or `CONTENT`.
  """
  @spec list_managed_firewall_domain_lists(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_managed_firewall_domain_lists_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_managed_firewall_domain_lists_errors()}
  def list_managed_firewall_domain_lists(
        %Client{} = client,
        managed_firewall_domain_list_type,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/list-managed-firewall-domain-lists/#{AWS.Util.encode_uri(managed_firewall_domain_list_type)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next_token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max_results", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the tags associated with a Route 53 Global Resolver resource.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_request(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    url_path = "/get-all-tags"
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
  Adds or updates tags for a Route 53 Global Resolver resource.

  Tags are key-value pairs that help you organize and identify your resources.
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/tag-resource"
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
  Removes tags from a Route 53 Global Resolver resource.
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/untag-resource"
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
  Updates the configuration of an access source.
  """
  @spec update_access_source(map(), String.t() | atom(), update_access_source_input(), list()) ::
          {:ok, update_access_source_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_access_source_errors()}
  def update_access_source(%Client{} = client, access_source_id, input, options \\ []) do
    url_path = "/access-sources/#{AWS.Util.encode_uri(access_source_id)}"
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
  Updates the configuration of an access token.
  """
  @spec update_access_token(map(), String.t() | atom(), update_access_token_input(), list()) ::
          {:ok, update_access_token_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_access_token_errors()}
  def update_access_token(%Client{} = client, access_token_id, input, options \\ []) do
    url_path = "/tokens/#{AWS.Util.encode_uri(access_token_id)}"
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
  Updates the configuration of a DNS view.
  """
  @spec update_dns_view(map(), String.t() | atom(), update_dns_view_input(), list()) ::
          {:ok, update_dns_view_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_dns_view_errors()}
  def update_dns_view(%Client{} = client, dns_view_id, input, options \\ []) do
    url_path = "/dns-views/#{AWS.Util.encode_uri(dns_view_id)}"
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
  Updates a DNS Firewall domain list from an array of specified domains.
  """
  @spec update_firewall_domains(
          map(),
          String.t() | atom(),
          update_firewall_domains_input(),
          list()
        ) ::
          {:ok, update_firewall_domains_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_firewall_domains_errors()}
  def update_firewall_domains(%Client{} = client, firewall_domain_list_id, input, options \\ []) do
    url_path = "/firewall-domain-lists/#{AWS.Util.encode_uri(firewall_domain_list_id)}/domains"
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
  Updates the configuration of a DNS firewall rule.
  """
  @spec update_firewall_rule(map(), String.t() | atom(), update_firewall_rule_input(), list()) ::
          {:ok, update_firewall_rule_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_firewall_rule_errors()}
  def update_firewall_rule(%Client{} = client, firewall_rule_id, input, options \\ []) do
    url_path = "/firewall-rules/#{AWS.Util.encode_uri(firewall_rule_id)}"
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
  Updates the configuration of a Route 53 Global Resolver instance.

  You can modify the name, description, and observability region.
  """
  @spec update_global_resolver(map(), String.t() | atom(), update_global_resolver_input(), list()) ::
          {:ok, update_global_resolver_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_global_resolver_errors()}
  def update_global_resolver(%Client{} = client, global_resolver_id, input, options \\ []) do
    url_path = "/global-resolver/#{AWS.Util.encode_uri(global_resolver_id)}"
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
  Updates the configuration of a hosted zone association.
  """
  @spec update_hosted_zone_association(
          map(),
          String.t() | atom(),
          update_hosted_zone_association_input(),
          list()
        ) ::
          {:ok, update_hosted_zone_association_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_hosted_zone_association_errors()}
  def update_hosted_zone_association(
        %Client{} = client,
        hosted_zone_association_id,
        input,
        options \\ []
      ) do
    url_path = "/hosted-zone-associations/#{AWS.Util.encode_uri(hosted_zone_association_id)}"
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
