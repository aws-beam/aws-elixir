# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Route53Resolver do
  @moduledoc """
  When you create a VPC using Amazon VPC, you automatically get DNS resolution
  within the VPC
  from Route 53 Resolver.

  By default, Resolver answers DNS queries for VPC domain names
  such as domain names for EC2 instances or Elastic Load Balancing load balancers.
  Resolver performs recursive lookups against public name servers for all other
  domain
  names.

  You can also configure DNS resolution between your VPC and your network over a
  Direct Connect or VPN connection:

  ## Forward DNS queries from resolvers on your network to Route 53 Resolver

  DNS resolvers on your network can forward DNS queries to Resolver in a specified
  VPC. This allows your DNS resolvers
  to easily resolve domain names for Amazon Web Services resources such as EC2
  instances or records in a Route 53 private hosted zone.
  For more information, see
  [How DNS Resolvers on Your Network Forward DNS Queries to Route 53
  Resolver](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/resolver.html#resolver-overview-forward-network-to-vpc)
  in the *Amazon Route 53 Developer Guide*.

  ## Conditionally forward queries from a VPC to resolvers on your network

  You can configure Resolver to forward queries that it receives from EC2
  instances in your VPCs to DNS resolvers on your network.
  To forward selected queries, you create Resolver rules that specify the domain
  names for the DNS queries that you want to forward
  (such as example.com), and the IP addresses of the DNS resolvers on your network
  that you want to forward the queries to.
  If a query matches multiple rules (example.com, acme.example.com), Resolver
  chooses the rule with the most specific match
  (acme.example.com) and forwards the query to the IP addresses that you specified
  in that rule. For more information, see
  [How Route 53 Resolver Forwards DNS Queries from Your VPCs to Your
  Network](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/resolver.html#resolver-overview-forward-vpc-to-network)
  in the *Amazon Route 53 Developer Guide*.

  Like Amazon VPC, Resolver is Regional. In each Region where you have VPCs, you
  can choose
  whether to forward queries from your VPCs to your network (outbound queries),
  from your
  network to your VPCs (inbound queries), or both.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      get_resolver_query_log_config_association_request() :: %{
        required("ResolverQueryLogConfigAssociationId") => String.t() | atom()
      }
      
  """
  @type get_resolver_query_log_config_association_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_firewall_rule_group_association_response() :: %{
        "FirewallRuleGroupAssociation" => firewall_rule_group_association()
      }
      
  """
  @type update_firewall_rule_group_association_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resolver_config() :: %{
        "AutodefinedReverse" => list(any()),
        "Id" => String.t() | atom(),
        "OwnerId" => String.t() | atom(),
        "ResourceId" => String.t() | atom()
      }
      
  """
  @type resolver_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      ip_address_update() :: %{
        "Ip" => String.t() | atom(),
        "IpId" => String.t() | atom(),
        "Ipv6" => String.t() | atom(),
        "SubnetId" => String.t() | atom()
      }
      
  """
  @type ip_address_update() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_resolver_dnssec_config_request() :: %{
        required("ResourceId") => String.t() | atom(),
        required("Validation") => list(any())
      }
      
  """
  @type update_resolver_dnssec_config_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("ResourceArn") => String.t() | atom(),
        required("Tags") => list(tag())
      }
      
  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      disassociate_firewall_rule_group_request() :: %{
        required("FirewallRuleGroupAssociationId") => String.t() | atom()
      }
      
  """
  @type disassociate_firewall_rule_group_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_firewall_rule_group_response() :: %{
        "FirewallRuleGroup" => firewall_rule_group()
      }
      
  """
  @type create_firewall_rule_group_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      associate_resolver_query_log_config_response() :: %{
        "ResolverQueryLogConfigAssociation" => resolver_query_log_config_association()
      }
      
  """
  @type associate_resolver_query_log_config_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_resolver_query_log_config_response() :: %{
        "ResolverQueryLogConfig" => resolver_query_log_config()
      }
      
  """
  @type create_resolver_query_log_config_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_firewall_rule_group_association_response() :: %{
        "FirewallRuleGroupAssociation" => firewall_rule_group_association()
      }
      
  """
  @type get_firewall_rule_group_association_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_firewall_rule_request() :: %{
        optional("Action") => list(any()),
        optional("BlockOverrideDnsType") => list(any()),
        optional("BlockOverrideDomain") => String.t() | atom(),
        optional("BlockOverrideTtl") => integer(),
        optional("BlockResponse") => list(any()),
        optional("ConfidenceThreshold") => list(any()),
        optional("DnsThreatProtection") => list(any()),
        optional("FirewallDomainListId") => String.t() | atom(),
        optional("FirewallDomainRedirectionAction") => list(any()),
        optional("FirewallThreatProtectionId") => String.t() | atom(),
        optional("Name") => String.t() | atom(),
        optional("Priority") => integer(),
        optional("Qtype") => String.t() | atom(),
        required("FirewallRuleGroupId") => String.t() | atom()
      }
      
  """
  @type update_firewall_rule_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_firewall_rules_request() :: %{
        optional("Action") => list(any()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("Priority") => integer(),
        required("FirewallRuleGroupId") => String.t() | atom()
      }
      
  """
  @type list_firewall_rules_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_resolver_dnssec_config_response() :: %{
        "ResolverDNSSECConfig" => resolver_dnssec_config()
      }
      
  """
  @type get_resolver_dnssec_config_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_resolver_endpoint_request() :: %{
        required("ResolverEndpointId") => String.t() | atom()
      }
      
  """
  @type get_resolver_endpoint_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_firewall_rules_response() :: %{
        "FirewallRules" => list(firewall_rule()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_firewall_rules_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_resolver_query_log_config_response() :: %{
        "ResolverQueryLogConfig" => resolver_query_log_config()
      }
      
  """
  @type delete_resolver_query_log_config_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_firewall_configs_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_firewall_configs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      associate_resolver_query_log_config_request() :: %{
        required("ResolverQueryLogConfigId") => String.t() | atom(),
        required("ResourceId") => String.t() | atom()
      }
      
  """
  @type associate_resolver_query_log_config_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_in_use_exception() :: %{
        "Message" => String.t() | atom(),
        "ResourceType" => String.t() | atom()
      }
      
  """
  @type resource_in_use_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_resolver_endpoint_response() :: %{
        "ResolverEndpoint" => resolver_endpoint()
      }
      
  """
  @type update_resolver_endpoint_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_firewall_domain_list_response() :: %{
        "FirewallDomainList" => firewall_domain_list()
      }
      
  """
  @type get_firewall_domain_list_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_firewall_rule_group_association_request() :: %{
        optional("MutationProtection") => list(any()),
        optional("Name") => String.t() | atom(),
        optional("Priority") => integer(),
        required("FirewallRuleGroupAssociationId") => String.t() | atom()
      }
      
  """
  @type update_firewall_rule_group_association_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_resolver_dnssec_configs_request() :: %{
        optional("Filters") => list(filter()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_resolver_dnssec_configs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_resolver_query_log_configs_request() :: %{
        optional("Filters") => list(filter()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("SortBy") => String.t() | atom(),
        optional("SortOrder") => list(any())
      }
      
  """
  @type list_resolver_query_log_configs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_outpost_resolver_request() :: %{
        optional("InstanceCount") => integer(),
        optional("Name") => String.t() | atom(),
        optional("PreferredInstanceType") => String.t() | atom(),
        required("Id") => String.t() | atom()
      }
      
  """
  @type update_outpost_resolver_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_unavailable_exception() :: %{
        "Message" => String.t() | atom(),
        "ResourceType" => String.t() | atom()
      }
      
  """
  @type resource_unavailable_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_firewall_domain_lists_response() :: %{
        "FirewallDomainLists" => list(firewall_domain_list_metadata()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_firewall_domain_lists_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_firewall_rule_request() :: %{
        optional("BlockOverrideDnsType") => list(any()),
        optional("BlockOverrideDomain") => String.t() | atom(),
        optional("BlockOverrideTtl") => integer(),
        optional("BlockResponse") => list(any()),
        optional("ConfidenceThreshold") => list(any()),
        optional("DnsThreatProtection") => list(any()),
        optional("FirewallDomainListId") => String.t() | atom(),
        optional("FirewallDomainRedirectionAction") => list(any()),
        optional("Qtype") => String.t() | atom(),
        required("Action") => list(any()),
        required("CreatorRequestId") => String.t() | atom(),
        required("FirewallRuleGroupId") => String.t() | atom(),
        required("Name") => String.t() | atom(),
        required("Priority") => integer()
      }
      
  """
  @type create_firewall_rule_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      firewall_domain_list() :: %{
        "Arn" => String.t() | atom(),
        "CreationTime" => String.t() | atom(),
        "CreatorRequestId" => String.t() | atom(),
        "DomainCount" => integer(),
        "Id" => String.t() | atom(),
        "ManagedOwnerName" => String.t() | atom(),
        "ModificationTime" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "Status" => list(any()),
        "StatusMessage" => String.t() | atom()
      }
      
  """
  @type firewall_domain_list() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_firewall_rule_group_response() :: %{
        "FirewallRuleGroup" => firewall_rule_group()
      }
      
  """
  @type get_firewall_rule_group_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_firewall_domain_lists_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_firewall_domain_lists_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_resolver_rules_request() :: %{
        optional("Filters") => list(filter()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_resolver_rules_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_firewall_rule_group_request() :: %{
        required("FirewallRuleGroupId") => String.t() | atom()
      }
      
  """
  @type get_firewall_rule_group_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      firewall_config() :: %{
        "FirewallFailOpen" => list(any()),
        "Id" => String.t() | atom(),
        "OwnerId" => String.t() | atom(),
        "ResourceId" => String.t() | atom()
      }
      
  """
  @type firewall_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_resolver_rule_request() :: %{
        required("Config") => resolver_rule_config(),
        required("ResolverRuleId") => String.t() | atom()
      }
      
  """
  @type update_resolver_rule_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_firewall_domain_list_response() :: %{
        "FirewallDomainList" => firewall_domain_list()
      }
      
  """
  @type delete_firewall_domain_list_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_firewall_domain_list_request() :: %{
        required("FirewallDomainListId") => String.t() | atom()
      }
      
  """
  @type delete_firewall_domain_list_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_firewall_domain_list_request() :: %{
        required("FirewallDomainListId") => String.t() | atom()
      }
      
  """
  @type get_firewall_domain_list_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_resolver_dnssec_config_request() :: %{
        required("ResourceId") => String.t() | atom()
      }
      
  """
  @type get_resolver_dnssec_config_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resolver_query_log_config() :: %{
        "Arn" => String.t() | atom(),
        "AssociationCount" => integer(),
        "CreationTime" => String.t() | atom(),
        "CreatorRequestId" => String.t() | atom(),
        "DestinationArn" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "OwnerId" => String.t() | atom(),
        "ShareStatus" => list(any()),
        "Status" => list(any())
      }
      
  """
  @type resolver_query_log_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_resolver_endpoints_request() :: %{
        optional("Filters") => list(filter()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_resolver_endpoints_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_resolver_query_log_config_request() :: %{
        optional("Tags") => list(tag()),
        required("CreatorRequestId") => String.t() | atom(),
        required("DestinationArn") => String.t() | atom(),
        required("Name") => String.t() | atom()
      }
      
  """
  @type create_resolver_query_log_config_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_resolver_rule_policy_response() :: %{
        "ReturnValue" => boolean()
      }
      
  """
  @type put_resolver_rule_policy_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      internal_service_error_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type internal_service_error_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_firewall_domain_list_request() :: %{
        optional("Tags") => list(tag()),
        required("CreatorRequestId") => String.t() | atom(),
        required("Name") => String.t() | atom()
      }
      
  """
  @type create_firewall_domain_list_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      disassociate_resolver_query_log_config_request() :: %{
        required("ResolverQueryLogConfigId") => String.t() | atom(),
        required("ResourceId") => String.t() | atom()
      }
      
  """
  @type disassociate_resolver_query_log_config_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_resolver_rule_association_request() :: %{
        required("ResolverRuleAssociationId") => String.t() | atom()
      }
      
  """
  @type get_resolver_rule_association_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_resolver_query_log_config_association_response() :: %{
        "ResolverQueryLogConfigAssociation" => resolver_query_log_config_association()
      }
      
  """
  @type get_resolver_query_log_config_association_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("ResourceArn") => String.t() | atom(),
        required("TagKeys") => list(String.t() | atom())
      }
      
  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      ip_address_request() :: %{
        "Ip" => String.t() | atom(),
        "Ipv6" => String.t() | atom(),
        "SubnetId" => String.t() | atom()
      }
      
  """
  @type ip_address_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_resolver_query_log_config_request() :: %{
        required("ResolverQueryLogConfigId") => String.t() | atom()
      }
      
  """
  @type delete_resolver_query_log_config_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_firewall_domains_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("FirewallDomainListId") => String.t() | atom()
      }
      
  """
  @type list_firewall_domains_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_resolver_config_response() :: %{
        "ResolverConfig" => resolver_config()
      }
      
  """
  @type update_resolver_config_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resolver_rule_association() :: %{
        "Id" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "ResolverRuleId" => String.t() | atom(),
        "Status" => list(any()),
        "StatusMessage" => String.t() | atom(),
        "VPCId" => String.t() | atom()
      }
      
  """
  @type resolver_rule_association() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_firewall_rule_response() :: %{
        "FirewallRule" => firewall_rule()
      }
      
  """
  @type update_firewall_rule_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      associate_firewall_rule_group_request() :: %{
        optional("MutationProtection") => list(any()),
        optional("Tags") => list(tag()),
        required("CreatorRequestId") => String.t() | atom(),
        required("FirewallRuleGroupId") => String.t() | atom(),
        required("Name") => String.t() | atom(),
        required("Priority") => integer(),
        required("VpcId") => String.t() | atom()
      }
      
  """
  @type associate_firewall_rule_group_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_resolver_endpoint_request() :: %{
        optional("Name") => String.t() | atom(),
        optional("OutpostArn") => String.t() | atom(),
        optional("PreferredInstanceType") => String.t() | atom(),
        optional("Protocols") => list(list(any())()),
        optional("ResolverEndpointType") => list(any()),
        optional("Tags") => list(tag()),
        required("CreatorRequestId") => String.t() | atom(),
        required("Direction") => list(any()),
        required("IpAddresses") => list(ip_address_request()),
        required("SecurityGroupIds") => list(String.t() | atom())
      }
      
  """
  @type create_resolver_endpoint_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_firewall_rule_response() :: %{
        "FirewallRule" => firewall_rule()
      }
      
  """
  @type delete_firewall_rule_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_outpost_resolver_request() :: %{
        optional("InstanceCount") => integer(),
        optional("Tags") => list(tag()),
        required("CreatorRequestId") => String.t() | atom(),
        required("Name") => String.t() | atom(),
        required("OutpostArn") => String.t() | atom(),
        required("PreferredInstanceType") => String.t() | atom()
      }
      
  """
  @type create_outpost_resolver_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_resolver_rule_request() :: %{
        required("ResolverRuleId") => String.t() | atom()
      }
      
  """
  @type delete_resolver_rule_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      disassociate_resolver_query_log_config_response() :: %{
        "ResolverQueryLogConfigAssociation" => resolver_query_log_config_association()
      }
      
  """
  @type disassociate_resolver_query_log_config_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_resolver_rule_association_response() :: %{
        "ResolverRuleAssociation" => resolver_rule_association()
      }
      
  """
  @type get_resolver_rule_association_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_resolver_endpoints_response() :: %{
        "MaxResults" => integer(),
        "NextToken" => String.t() | atom(),
        "ResolverEndpoints" => list(resolver_endpoint())
      }
      
  """
  @type list_resolver_endpoints_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      firewall_rule_group_metadata() :: %{
        "Arn" => String.t() | atom(),
        "CreatorRequestId" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "OwnerId" => String.t() | atom(),
        "ShareStatus" => list(any())
      }
      
  """
  @type firewall_rule_group_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_resolver_rule_policy_request() :: %{
        required("Arn") => String.t() | atom(),
        required("ResolverRulePolicy") => String.t() | atom()
      }
      
  """
  @type put_resolver_rule_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_firewall_config_response() :: %{
        "FirewallConfig" => firewall_config()
      }
      
  """
  @type get_firewall_config_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_firewall_rule_group_request() :: %{
        required("FirewallRuleGroupId") => String.t() | atom()
      }
      
  """
  @type delete_firewall_rule_group_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_resolver_config_request() :: %{
        required("ResourceId") => String.t() | atom()
      }
      
  """
  @type get_resolver_config_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_resolver_endpoint_ip_addresses_response() :: %{
        "IpAddresses" => list(ip_address_response()),
        "MaxResults" => integer(),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_resolver_endpoint_ip_addresses_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      disassociate_resolver_endpoint_ip_address_response() :: %{
        "ResolverEndpoint" => resolver_endpoint()
      }
      
  """
  @type disassociate_resolver_endpoint_ip_address_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_resolver_rule_response() :: %{
        "ResolverRule" => resolver_rule()
      }
      
  """
  @type update_resolver_rule_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_firewall_rule_group_response() :: %{
        "FirewallRuleGroup" => firewall_rule_group()
      }
      
  """
  @type delete_firewall_rule_group_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => String.t() | atom(),
        "ResourceType" => String.t() | atom()
      }
      
  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      associate_resolver_rule_request() :: %{
        optional("Name") => String.t() | atom(),
        required("ResolverRuleId") => String.t() | atom(),
        required("VPCId") => String.t() | atom()
      }
      
  """
  @type associate_resolver_rule_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_outpost_resolvers_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("OutpostArn") => String.t() | atom()
      }
      
  """
  @type list_outpost_resolvers_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_resolver_rule_policy_response() :: %{
        "ResolverRulePolicy" => String.t() | atom()
      }
      
  """
  @type get_resolver_rule_policy_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_firewall_configs_response() :: %{
        "FirewallConfigs" => list(firewall_config()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_firewall_configs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_firewall_rule_groups_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_firewall_rule_groups_request() :: %{(String.t() | atom()) => any()}

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
      
      create_firewall_domain_list_response() :: %{
        "FirewallDomainList" => firewall_domain_list()
      }
      
  """
  @type create_firewall_domain_list_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_request_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type invalid_request_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resolver_rule() :: %{
        "Arn" => String.t() | atom(),
        "CreationTime" => String.t() | atom(),
        "CreatorRequestId" => String.t() | atom(),
        "DelegationRecord" => String.t() | atom(),
        "DomainName" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "ModificationTime" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "OwnerId" => String.t() | atom(),
        "ResolverEndpointId" => String.t() | atom(),
        "RuleType" => list(any()),
        "ShareStatus" => list(any()),
        "Status" => list(any()),
        "StatusMessage" => String.t() | atom(),
        "TargetIps" => list(target_address())
      }
      
  """
  @type resolver_rule() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_resolver_rule_request() :: %{
        required("ResolverRuleId") => String.t() | atom()
      }
      
  """
  @type get_resolver_rule_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_next_token_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type invalid_next_token_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      firewall_rule_group_association() :: %{
        "Arn" => String.t() | atom(),
        "CreationTime" => String.t() | atom(),
        "CreatorRequestId" => String.t() | atom(),
        "FirewallRuleGroupId" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "ManagedOwnerName" => String.t() | atom(),
        "ModificationTime" => String.t() | atom(),
        "MutationProtection" => list(any()),
        "Name" => String.t() | atom(),
        "Priority" => integer(),
        "Status" => list(any()),
        "StatusMessage" => String.t() | atom(),
        "VpcId" => String.t() | atom()
      }
      
  """
  @type firewall_rule_group_association() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_resolver_endpoint_response() :: %{
        "ResolverEndpoint" => resolver_endpoint()
      }
      
  """
  @type delete_resolver_endpoint_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_firewall_rule_group_policy_request() :: %{
        required("Arn") => String.t() | atom()
      }
      
  """
  @type get_firewall_rule_group_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_resolver_query_log_config_policy_response() :: %{
        "ReturnValue" => boolean()
      }
      
  """
  @type put_resolver_query_log_config_policy_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_firewall_config_request() :: %{
        required("FirewallFailOpen") => list(any()),
        required("ResourceId") => String.t() | atom()
      }
      
  """
  @type update_firewall_config_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_firewall_rule_group_association_request() :: %{
        required("FirewallRuleGroupAssociationId") => String.t() | atom()
      }
      
  """
  @type get_firewall_rule_group_association_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_firewall_rule_group_policy_response() :: %{
        "ReturnValue" => boolean()
      }
      
  """
  @type put_firewall_rule_group_policy_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "NextToken" => String.t() | atom(),
        "Tags" => list(tag())
      }
      
  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_resolver_query_log_config_policy_request() :: %{
        required("Arn") => String.t() | atom(),
        required("ResolverQueryLogConfigPolicy") => String.t() | atom()
      }
      
  """
  @type put_resolver_query_log_config_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_outpost_resolver_response() :: %{
        "OutpostResolver" => outpost_resolver()
      }
      
  """
  @type get_outpost_resolver_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      firewall_rule() :: %{
        "Action" => list(any()),
        "BlockOverrideDnsType" => list(any()),
        "BlockOverrideDomain" => String.t() | atom(),
        "BlockOverrideTtl" => integer(),
        "BlockResponse" => list(any()),
        "ConfidenceThreshold" => list(any()),
        "CreationTime" => String.t() | atom(),
        "CreatorRequestId" => String.t() | atom(),
        "DnsThreatProtection" => list(any()),
        "FirewallDomainListId" => String.t() | atom(),
        "FirewallDomainRedirectionAction" => list(any()),
        "FirewallRuleGroupId" => String.t() | atom(),
        "FirewallThreatProtectionId" => String.t() | atom(),
        "ModificationTime" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "Priority" => integer(),
        "Qtype" => String.t() | atom()
      }
      
  """
  @type firewall_rule() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      disassociate_firewall_rule_group_response() :: %{
        "FirewallRuleGroupAssociation" => firewall_rule_group_association()
      }
      
  """
  @type disassociate_firewall_rule_group_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resolver_endpoint() :: %{
        "Arn" => String.t() | atom(),
        "CreationTime" => String.t() | atom(),
        "CreatorRequestId" => String.t() | atom(),
        "Direction" => list(any()),
        "HostVPCId" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "IpAddressCount" => integer(),
        "ModificationTime" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "OutpostArn" => String.t() | atom(),
        "PreferredInstanceType" => String.t() | atom(),
        "Protocols" => list(list(any())()),
        "ResolverEndpointType" => list(any()),
        "SecurityGroupIds" => list(String.t() | atom()),
        "Status" => list(any()),
        "StatusMessage" => String.t() | atom()
      }
      
  """
  @type resolver_endpoint() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_resolver_rule_policy_request() :: %{
        required("Arn") => String.t() | atom()
      }
      
  """
  @type get_resolver_rule_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      import_firewall_domains_response() :: %{
        "Id" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "Status" => list(any()),
        "StatusMessage" => String.t() | atom()
      }
      
  """
  @type import_firewall_domains_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      filter() :: %{
        "Name" => String.t() | atom(),
        "Values" => list(String.t() | atom())
      }
      
  """
  @type filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      firewall_rule_group() :: %{
        "Arn" => String.t() | atom(),
        "CreationTime" => String.t() | atom(),
        "CreatorRequestId" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "ModificationTime" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "OwnerId" => String.t() | atom(),
        "RuleCount" => integer(),
        "ShareStatus" => list(any()),
        "Status" => list(any()),
        "StatusMessage" => String.t() | atom()
      }
      
  """
  @type firewall_rule_group() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_firewall_rule_group_policy_request() :: %{
        required("Arn") => String.t() | atom(),
        required("FirewallRuleGroupPolicy") => String.t() | atom()
      }
      
  """
  @type put_firewall_rule_group_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_resolver_configs_response() :: %{
        "NextToken" => String.t() | atom(),
        "ResolverConfigs" => list(resolver_config())
      }
      
  """
  @type list_resolver_configs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      disassociate_resolver_rule_request() :: %{
        required("ResolverRuleId") => String.t() | atom(),
        required("VPCId") => String.t() | atom()
      }
      
  """
  @type disassociate_resolver_rule_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      import_firewall_domains_request() :: %{
        required("DomainFileUrl") => String.t() | atom(),
        required("FirewallDomainListId") => String.t() | atom(),
        required("Operation") => list(any())
      }
      
  """
  @type import_firewall_domains_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_resolver_dnssec_configs_response() :: %{
        "NextToken" => String.t() | atom(),
        "ResolverDnssecConfigs" => list(resolver_dnssec_config())
      }
      
  """
  @type list_resolver_dnssec_configs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_firewall_rule_request() :: %{
        optional("FirewallDomainListId") => String.t() | atom(),
        optional("FirewallThreatProtectionId") => String.t() | atom(),
        optional("Qtype") => String.t() | atom(),
        required("FirewallRuleGroupId") => String.t() | atom()
      }
      
  """
  @type delete_firewall_rule_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_resolver_rule_request() :: %{
        optional("DelegationRecord") => String.t() | atom(),
        optional("DomainName") => String.t() | atom(),
        optional("Name") => String.t() | atom(),
        optional("ResolverEndpointId") => String.t() | atom(),
        optional("Tags") => list(tag()),
        optional("TargetIps") => list(target_address()),
        required("CreatorRequestId") => String.t() | atom(),
        required("RuleType") => list(any())
      }
      
  """
  @type create_resolver_rule_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_resolver_rule_response() :: %{
        "ResolverRule" => resolver_rule()
      }
      
  """
  @type create_resolver_rule_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_resolver_endpoint_request() :: %{
        required("ResolverEndpointId") => String.t() | atom()
      }
      
  """
  @type delete_resolver_endpoint_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_resolver_query_log_config_associations_response() :: %{
        "NextToken" => String.t() | atom(),
        "ResolverQueryLogConfigAssociations" => list(resolver_query_log_config_association()),
        "TotalCount" => integer(),
        "TotalFilteredCount" => integer()
      }
      
  """
  @type list_resolver_query_log_config_associations_response() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      create_firewall_rule_group_request() :: %{
        optional("Tags") => list(tag()),
        required("CreatorRequestId") => String.t() | atom(),
        required("Name") => String.t() | atom()
      }
      
  """
  @type create_firewall_rule_group_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      associate_firewall_rule_group_response() :: %{
        "FirewallRuleGroupAssociation" => firewall_rule_group_association()
      }
      
  """
  @type associate_firewall_rule_group_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_firewall_rule_groups_response() :: %{
        "FirewallRuleGroups" => list(firewall_rule_group_metadata()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_firewall_rule_groups_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_firewall_domains_response() :: %{
        "Id" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "Status" => list(any()),
        "StatusMessage" => String.t() | atom()
      }
      
  """
  @type update_firewall_domains_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_resolver_rules_response() :: %{
        "MaxResults" => integer(),
        "NextToken" => String.t() | atom(),
        "ResolverRules" => list(resolver_rule())
      }
      
  """
  @type list_resolver_rules_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_resolver_config_request() :: %{
        required("AutodefinedReverseFlag") => list(any()),
        required("ResourceId") => String.t() | atom()
      }
      
  """
  @type update_resolver_config_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_exists_exception() :: %{
        "Message" => String.t() | atom(),
        "ResourceType" => String.t() | atom()
      }
      
  """
  @type resource_exists_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resolver_dnssec_config() :: %{
        "Id" => String.t() | atom(),
        "OwnerId" => String.t() | atom(),
        "ResourceId" => String.t() | atom(),
        "ValidationStatus" => list(any())
      }
      
  """
  @type resolver_dnssec_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      unknown_resource_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type unknown_resource_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_outpost_resolver_response() :: %{
        "OutpostResolver" => outpost_resolver()
      }
      
  """
  @type delete_outpost_resolver_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_parameter_exception() :: %{
        "FieldName" => String.t() | atom(),
        "Message" => String.t() | atom()
      }
      
  """
  @type invalid_parameter_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_ip_address() :: %{
        "IpId" => String.t() | atom(),
        "Ipv6" => String.t() | atom()
      }
      
  """
  @type update_ip_address() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      get_resolver_query_log_config_response() :: %{
        "ResolverQueryLogConfig" => resolver_query_log_config()
      }
      
  """
  @type get_resolver_query_log_config_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_outpost_resolver_response() :: %{
        "OutpostResolver" => outpost_resolver()
      }
      
  """
  @type update_outpost_resolver_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("ResourceArn") => String.t() | atom()
      }
      
  """
  @type list_tags_for_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      associate_resolver_endpoint_ip_address_response() :: %{
        "ResolverEndpoint" => resolver_endpoint()
      }
      
  """
  @type associate_resolver_endpoint_ip_address_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_outpost_resolver_response() :: %{
        "OutpostResolver" => outpost_resolver()
      }
      
  """
  @type create_outpost_resolver_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_resolver_query_log_config_policy_response() :: %{
        "ResolverQueryLogConfigPolicy" => String.t() | atom()
      }
      
  """
  @type get_resolver_query_log_config_policy_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_firewall_rule_group_associations_response() :: %{
        "FirewallRuleGroupAssociations" => list(firewall_rule_group_association()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_firewall_rule_group_associations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_firewall_config_request() :: %{
        required("ResourceId") => String.t() | atom()
      }
      
  """
  @type get_firewall_config_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_resolver_rule_response() :: %{
        "ResolverRule" => resolver_rule()
      }
      
  """
  @type get_resolver_rule_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_resolver_endpoint_request() :: %{
        optional("Name") => String.t() | atom(),
        optional("Protocols") => list(list(any())()),
        optional("ResolverEndpointType") => list(any()),
        optional("UpdateIpAddresses") => list(update_ip_address()),
        required("ResolverEndpointId") => String.t() | atom()
      }
      
  """
  @type update_resolver_endpoint_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_firewall_domains_request() :: %{
        required("Domains") => list(String.t() | atom()),
        required("FirewallDomainListId") => String.t() | atom(),
        required("Operation") => list(any())
      }
      
  """
  @type update_firewall_domains_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      associate_resolver_endpoint_ip_address_request() :: %{
        required("IpAddress") => ip_address_update(),
        required("ResolverEndpointId") => String.t() | atom()
      }
      
  """
  @type associate_resolver_endpoint_ip_address_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_resolver_endpoint_response() :: %{
        "ResolverEndpoint" => resolver_endpoint()
      }
      
  """
  @type create_resolver_endpoint_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      disassociate_resolver_endpoint_ip_address_request() :: %{
        required("IpAddress") => ip_address_update(),
        required("ResolverEndpointId") => String.t() | atom()
      }
      
  """
  @type disassociate_resolver_endpoint_ip_address_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      target_address() :: %{
        "Ip" => String.t() | atom(),
        "Ipv6" => String.t() | atom(),
        "Port" => integer(),
        "Protocol" => list(any()),
        "ServerNameIndication" => String.t() | atom()
      }
      
  """
  @type target_address() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_firewall_rule_response() :: %{
        "FirewallRule" => firewall_rule()
      }
      
  """
  @type create_firewall_rule_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resolver_rule_config() :: %{
        "Name" => String.t() | atom(),
        "ResolverEndpointId" => String.t() | atom(),
        "TargetIps" => list(target_address())
      }
      
  """
  @type resolver_rule_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "Message" => String.t() | atom(),
        "ResourceType" => String.t() | atom()
      }
      
  """
  @type limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_resolver_query_log_config_request() :: %{
        required("ResolverQueryLogConfigId") => String.t() | atom()
      }
      
  """
  @type get_resolver_query_log_config_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_firewall_config_response() :: %{
        "FirewallConfig" => firewall_config()
      }
      
  """
  @type update_firewall_config_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_resolver_query_log_configs_response() :: %{
        "NextToken" => String.t() | atom(),
        "ResolverQueryLogConfigs" => list(resolver_query_log_config()),
        "TotalCount" => integer(),
        "TotalFilteredCount" => integer()
      }
      
  """
  @type list_resolver_query_log_configs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_resolver_rule_associations_request() :: %{
        optional("Filters") => list(filter()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_resolver_rule_associations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      firewall_domain_list_metadata() :: %{
        "Arn" => String.t() | atom(),
        "CreatorRequestId" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "ManagedOwnerName" => String.t() | atom(),
        "Name" => String.t() | atom()
      }
      
  """
  @type firewall_domain_list_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_resolver_query_log_config_policy_request() :: %{
        required("Arn") => String.t() | atom()
      }
      
  """
  @type get_resolver_query_log_config_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      outpost_resolver() :: %{
        "Arn" => String.t() | atom(),
        "CreationTime" => String.t() | atom(),
        "CreatorRequestId" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "InstanceCount" => integer(),
        "ModificationTime" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "OutpostArn" => String.t() | atom(),
        "PreferredInstanceType" => String.t() | atom(),
        "Status" => list(any()),
        "StatusMessage" => String.t() | atom()
      }
      
  """
  @type outpost_resolver() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_resolver_query_log_config_associations_request() :: %{
        optional("Filters") => list(filter()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("SortBy") => String.t() | atom(),
        optional("SortOrder") => list(any())
      }
      
  """
  @type list_resolver_query_log_config_associations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_resolver_rule_associations_response() :: %{
        "MaxResults" => integer(),
        "NextToken" => String.t() | atom(),
        "ResolverRuleAssociations" => list(resolver_rule_association())
      }
      
  """
  @type list_resolver_rule_associations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_firewall_domains_response() :: %{
        "Domains" => list(String.t() | atom()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_firewall_domains_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_firewall_rule_group_policy_response() :: %{
        "FirewallRuleGroupPolicy" => String.t() | atom()
      }
      
  """
  @type get_firewall_rule_group_policy_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_outpost_resolvers_response() :: %{
        "NextToken" => String.t() | atom(),
        "OutpostResolvers" => list(outpost_resolver())
      }
      
  """
  @type list_outpost_resolvers_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_outpost_resolver_request() :: %{
        required("Id") => String.t() | atom()
      }
      
  """
  @type get_outpost_resolver_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      disassociate_resolver_rule_response() :: %{
        "ResolverRuleAssociation" => resolver_rule_association()
      }
      
  """
  @type disassociate_resolver_rule_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_tag_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type invalid_tag_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_resolver_endpoint_response() :: %{
        "ResolverEndpoint" => resolver_endpoint()
      }
      
  """
  @type get_resolver_endpoint_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_policy_document() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type invalid_policy_document() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_resolver_endpoint_ip_addresses_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("ResolverEndpointId") => String.t() | atom()
      }
      
  """
  @type list_resolver_endpoint_ip_addresses_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      ip_address_response() :: %{
        "CreationTime" => String.t() | atom(),
        "Ip" => String.t() | atom(),
        "IpId" => String.t() | atom(),
        "Ipv6" => String.t() | atom(),
        "ModificationTime" => String.t() | atom(),
        "Status" => list(any()),
        "StatusMessage" => String.t() | atom(),
        "SubnetId" => String.t() | atom()
      }
      
  """
  @type ip_address_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_firewall_rule_group_associations_request() :: %{
        optional("FirewallRuleGroupId") => String.t() | atom(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("Priority") => integer(),
        optional("Status") => list(any()),
        optional("VpcId") => String.t() | atom()
      }
      
  """
  @type list_firewall_rule_group_associations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resolver_query_log_config_association() :: %{
        "CreationTime" => String.t() | atom(),
        "Error" => list(any()),
        "ErrorMessage" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "ResolverQueryLogConfigId" => String.t() | atom(),
        "ResourceId" => String.t() | atom(),
        "Status" => list(any())
      }
      
  """
  @type resolver_query_log_config_association() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_resolver_rule_response() :: %{
        "ResolverRule" => resolver_rule()
      }
      
  """
  @type delete_resolver_rule_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_outpost_resolver_request() :: %{
        required("Id") => String.t() | atom()
      }
      
  """
  @type delete_outpost_resolver_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_resolver_dnssec_config_response() :: %{
        "ResolverDNSSECConfig" => resolver_dnssec_config()
      }
      
  """
  @type update_resolver_dnssec_config_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_resolver_config_response() :: %{
        "ResolverConfig" => resolver_config()
      }
      
  """
  @type get_resolver_config_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      associate_resolver_rule_response() :: %{
        "ResolverRuleAssociation" => resolver_rule_association()
      }
      
  """
  @type associate_resolver_rule_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_resolver_configs_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_resolver_configs_request() :: %{(String.t() | atom()) => any()}

  @type associate_firewall_rule_group_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | internal_service_error_exception()

  @type associate_resolver_endpoint_ip_address_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | resource_exists_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_error_exception()

  @type associate_resolver_query_log_config_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | resource_exists_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_error_exception()

  @type associate_resolver_rule_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | resource_exists_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_error_exception()
          | resource_unavailable_exception()

  @type create_firewall_domain_list_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_service_error_exception()

  @type create_firewall_rule_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | internal_service_error_exception()

  @type create_firewall_rule_group_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_service_error_exception()

  @type create_outpost_resolver_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_service_error_exception()

  @type create_resolver_endpoint_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | resource_exists_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_error_exception()

  @type create_resolver_query_log_config_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | resource_exists_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_error_exception()

  @type create_resolver_rule_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | resource_exists_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_error_exception()
          | resource_unavailable_exception()

  @type delete_firewall_domain_list_errors() ::
          throttling_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | internal_service_error_exception()

  @type delete_firewall_rule_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | internal_service_error_exception()

  @type delete_firewall_rule_group_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | internal_service_error_exception()

  @type delete_outpost_resolver_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | internal_service_error_exception()

  @type delete_resolver_endpoint_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_error_exception()

  @type delete_resolver_query_log_config_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_error_exception()

  @type delete_resolver_rule_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | resource_not_found_exception()
          | internal_service_error_exception()
          | resource_in_use_exception()

  @type disassociate_firewall_rule_group_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | internal_service_error_exception()

  @type disassociate_resolver_endpoint_ip_address_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | resource_exists_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_error_exception()

  @type disassociate_resolver_query_log_config_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_error_exception()

  @type disassociate_resolver_rule_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | resource_not_found_exception()
          | internal_service_error_exception()

  @type get_firewall_config_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | internal_service_error_exception()

  @type get_firewall_domain_list_errors() ::
          throttling_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | internal_service_error_exception()

  @type get_firewall_rule_group_errors() ::
          throttling_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | internal_service_error_exception()

  @type get_firewall_rule_group_association_errors() ::
          throttling_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | internal_service_error_exception()

  @type get_firewall_rule_group_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | internal_service_error_exception()

  @type get_outpost_resolver_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | internal_service_error_exception()

  @type get_resolver_config_errors() ::
          throttling_exception()
          | validation_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | internal_service_error_exception()

  @type get_resolver_dnssec_config_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_error_exception()

  @type get_resolver_endpoint_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | resource_not_found_exception()
          | internal_service_error_exception()

  @type get_resolver_query_log_config_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_error_exception()

  @type get_resolver_query_log_config_association_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_error_exception()

  @type get_resolver_query_log_config_policy_errors() ::
          invalid_parameter_exception()
          | access_denied_exception()
          | unknown_resource_exception()
          | invalid_request_exception()
          | internal_service_error_exception()

  @type get_resolver_rule_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | resource_not_found_exception()
          | internal_service_error_exception()

  @type get_resolver_rule_association_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | resource_not_found_exception()
          | internal_service_error_exception()

  @type get_resolver_rule_policy_errors() ::
          invalid_parameter_exception()
          | access_denied_exception()
          | unknown_resource_exception()
          | internal_service_error_exception()

  @type import_firewall_domains_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | internal_service_error_exception()

  @type list_firewall_configs_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_service_error_exception()

  @type list_firewall_domain_lists_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_service_error_exception()

  @type list_firewall_domains_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | internal_service_error_exception()

  @type list_firewall_rule_group_associations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_service_error_exception()

  @type list_firewall_rule_groups_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_service_error_exception()

  @type list_firewall_rules_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | internal_service_error_exception()

  @type list_outpost_resolvers_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | internal_service_error_exception()

  @type list_resolver_configs_errors() ::
          throttling_exception()
          | validation_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | invalid_next_token_exception()
          | invalid_request_exception()
          | internal_service_error_exception()

  @type list_resolver_dnssec_configs_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | invalid_next_token_exception()
          | invalid_request_exception()
          | internal_service_error_exception()

  @type list_resolver_endpoint_ip_addresses_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_next_token_exception()
          | resource_not_found_exception()
          | internal_service_error_exception()

  @type list_resolver_endpoints_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_next_token_exception()
          | invalid_request_exception()
          | internal_service_error_exception()

  @type list_resolver_query_log_config_associations_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | internal_service_error_exception()

  @type list_resolver_query_log_configs_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | invalid_next_token_exception()
          | invalid_request_exception()
          | internal_service_error_exception()

  @type list_resolver_rule_associations_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_next_token_exception()
          | invalid_request_exception()
          | internal_service_error_exception()

  @type list_resolver_rules_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_next_token_exception()
          | invalid_request_exception()
          | internal_service_error_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_next_token_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_error_exception()

  @type put_firewall_rule_group_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | internal_service_error_exception()

  @type put_resolver_query_log_config_policy_errors() ::
          invalid_policy_document()
          | invalid_parameter_exception()
          | access_denied_exception()
          | unknown_resource_exception()
          | invalid_request_exception()
          | internal_service_error_exception()

  @type put_resolver_rule_policy_errors() ::
          invalid_policy_document()
          | invalid_parameter_exception()
          | access_denied_exception()
          | unknown_resource_exception()
          | internal_service_error_exception()

  @type tag_resource_errors() ::
          invalid_tag_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_error_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_error_exception()

  @type update_firewall_config_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | internal_service_error_exception()

  @type update_firewall_domains_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | internal_service_error_exception()

  @type update_firewall_rule_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | internal_service_error_exception()

  @type update_firewall_rule_group_association_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | internal_service_error_exception()

  @type update_outpost_resolver_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | internal_service_error_exception()

  @type update_resolver_config_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | validation_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_error_exception()
          | resource_unavailable_exception()

  @type update_resolver_dnssec_config_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_error_exception()

  @type update_resolver_endpoint_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_error_exception()

  @type update_resolver_rule_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_error_exception()
          | resource_unavailable_exception()

  def metadata do
    %{
      api_version: "2018-04-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "route53resolver",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Route53Resolver",
      signature_version: "v4",
      signing_name: "route53resolver",
      target_prefix: "Route53Resolver"
    }
  end

  @doc """
  Associates a `FirewallRuleGroup` with a VPC, to provide DNS filtering for the
  VPC.
  """
  @spec associate_firewall_rule_group(map(), associate_firewall_rule_group_request(), list()) ::
          {:ok, associate_firewall_rule_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_firewall_rule_group_errors()}
  def associate_firewall_rule_group(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AssociateFirewallRuleGroup", input, options)
  end

  @doc """
  Adds IP addresses to an inbound or an outbound Resolver endpoint.

  If you want to add more than one IP address,
  submit one `AssociateResolverEndpointIpAddress` request for each IP address.

  To remove an IP address from an endpoint, see
  [DisassociateResolverEndpointIpAddress](https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_DisassociateResolverEndpointIpAddress.html).
  """
  @spec associate_resolver_endpoint_ip_address(
          map(),
          associate_resolver_endpoint_ip_address_request(),
          list()
        ) ::
          {:ok, associate_resolver_endpoint_ip_address_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_resolver_endpoint_ip_address_errors()}
  def associate_resolver_endpoint_ip_address(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AssociateResolverEndpointIpAddress", input, options)
  end

  @doc """
  Associates an Amazon VPC with a specified query logging configuration.

  Route 53 Resolver logs DNS queries that originate in all of the Amazon VPCs
  that are associated with a specified query logging configuration. To associate
  more than one VPC with a configuration, submit one
  `AssociateResolverQueryLogConfig`
  request for each VPC.

  The VPCs that you associate with a query logging configuration must be in the
  same Region as the configuration.

  To remove a VPC from a query logging configuration, see
  [DisassociateResolverQueryLogConfig](https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_DisassociateResolverQueryLogConfig.html).
  """
  @spec associate_resolver_query_log_config(
          map(),
          associate_resolver_query_log_config_request(),
          list()
        ) ::
          {:ok, associate_resolver_query_log_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_resolver_query_log_config_errors()}
  def associate_resolver_query_log_config(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AssociateResolverQueryLogConfig", input, options)
  end

  @doc """
  Associates a Resolver rule with a VPC.

  When you associate a rule with a VPC, Resolver forwards all DNS queries
  for the domain name that is specified in the rule and that originate in the VPC.
  The queries are forwarded to the
  IP addresses for the DNS resolvers that are specified in the rule. For more
  information about rules, see
  [CreateResolverRule](https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_CreateResolverRule.html).
  """
  @spec associate_resolver_rule(map(), associate_resolver_rule_request(), list()) ::
          {:ok, associate_resolver_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_resolver_rule_errors()}
  def associate_resolver_rule(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AssociateResolverRule", input, options)
  end

  @doc """
  Creates an empty firewall domain list for use in DNS Firewall rules.

  You can populate the domains for the new list with a file, using
  `ImportFirewallDomains`, or with domain strings, using `UpdateFirewallDomains`.
  """
  @spec create_firewall_domain_list(map(), create_firewall_domain_list_request(), list()) ::
          {:ok, create_firewall_domain_list_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_firewall_domain_list_errors()}
  def create_firewall_domain_list(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateFirewallDomainList", input, options)
  end

  @doc """
  Creates a single DNS Firewall rule in the specified rule group, using the
  specified domain list.
  """
  @spec create_firewall_rule(map(), create_firewall_rule_request(), list()) ::
          {:ok, create_firewall_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_firewall_rule_errors()}
  def create_firewall_rule(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateFirewallRule", input, options)
  end

  @doc """
  Creates an empty DNS Firewall rule group for filtering DNS network traffic in a
  VPC.

  You can add rules to the new rule group
  by calling `CreateFirewallRule`.
  """
  @spec create_firewall_rule_group(map(), create_firewall_rule_group_request(), list()) ::
          {:ok, create_firewall_rule_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_firewall_rule_group_errors()}
  def create_firewall_rule_group(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateFirewallRuleGroup", input, options)
  end

  @doc """
  Creates a Route 53 Resolver on an Outpost.
  """
  @spec create_outpost_resolver(map(), create_outpost_resolver_request(), list()) ::
          {:ok, create_outpost_resolver_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_outpost_resolver_errors()}
  def create_outpost_resolver(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateOutpostResolver", input, options)
  end

  @doc """
  Creates a Resolver endpoint.

  There are two types of Resolver endpoints, inbound and outbound:

    *
  An *inbound Resolver endpoint* forwards DNS queries to the DNS service for a VPC
  from your network.

    *
  An *outbound Resolver endpoint* forwards DNS queries from the DNS service for a
  VPC
  to your network.
  """
  @spec create_resolver_endpoint(map(), create_resolver_endpoint_request(), list()) ::
          {:ok, create_resolver_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_resolver_endpoint_errors()}
  def create_resolver_endpoint(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateResolverEndpoint", input, options)
  end

  @doc """
  Creates a Resolver query logging configuration, which defines where you want
  Resolver to save DNS query logs that originate in your VPCs.

  Resolver can log queries only for VPCs that are in the same Region as the query
  logging configuration.

  To specify which VPCs you want to log queries for, you use
  `AssociateResolverQueryLogConfig`. For more information, see
  [AssociateResolverQueryLogConfig](https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_AssociateResolverQueryLogConfig.html).

  You can optionally use Resource Access Manager (RAM) to share a query logging
  configuration with other Amazon Web Services accounts. The other accounts
  can then associate VPCs with the configuration. The query logs that Resolver
  creates for a configuration include all DNS queries that originate in all
  VPCs that are associated with the configuration.
  """
  @spec create_resolver_query_log_config(
          map(),
          create_resolver_query_log_config_request(),
          list()
        ) ::
          {:ok, create_resolver_query_log_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_resolver_query_log_config_errors()}
  def create_resolver_query_log_config(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateResolverQueryLogConfig", input, options)
  end

  @doc """
  For DNS queries that originate in your VPCs, specifies which Resolver endpoint
  the queries pass through,
  one domain name that you want to forward to your network, and the IP addresses
  of the DNS resolvers in your network.
  """
  @spec create_resolver_rule(map(), create_resolver_rule_request(), list()) ::
          {:ok, create_resolver_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_resolver_rule_errors()}
  def create_resolver_rule(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateResolverRule", input, options)
  end

  @doc """
  Deletes the specified domain list.
  """
  @spec delete_firewall_domain_list(map(), delete_firewall_domain_list_request(), list()) ::
          {:ok, delete_firewall_domain_list_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_firewall_domain_list_errors()}
  def delete_firewall_domain_list(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteFirewallDomainList", input, options)
  end

  @doc """
  Deletes the specified firewall rule.
  """
  @spec delete_firewall_rule(map(), delete_firewall_rule_request(), list()) ::
          {:ok, delete_firewall_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_firewall_rule_errors()}
  def delete_firewall_rule(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteFirewallRule", input, options)
  end

  @doc """
  Deletes the specified firewall rule group.
  """
  @spec delete_firewall_rule_group(map(), delete_firewall_rule_group_request(), list()) ::
          {:ok, delete_firewall_rule_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_firewall_rule_group_errors()}
  def delete_firewall_rule_group(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteFirewallRuleGroup", input, options)
  end

  @doc """
  Deletes a Resolver on the Outpost.
  """
  @spec delete_outpost_resolver(map(), delete_outpost_resolver_request(), list()) ::
          {:ok, delete_outpost_resolver_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_outpost_resolver_errors()}
  def delete_outpost_resolver(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteOutpostResolver", input, options)
  end

  @doc """
  Deletes a Resolver endpoint.

  The effect of deleting a Resolver endpoint depends on whether it's an inbound or
  an outbound
  Resolver endpoint:

    *

  **Inbound**: DNS queries from your network are no longer routed
  to the DNS service for the specified VPC.

    *

  **Outbound**: DNS queries from a VPC are no longer routed to your network.
  """
  @spec delete_resolver_endpoint(map(), delete_resolver_endpoint_request(), list()) ::
          {:ok, delete_resolver_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_resolver_endpoint_errors()}
  def delete_resolver_endpoint(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteResolverEndpoint", input, options)
  end

  @doc """
  Deletes a query logging configuration.

  When you delete a configuration, Resolver stops logging DNS queries for all of
  the Amazon VPCs that are
  associated with the configuration. This also applies if the query logging
  configuration is shared with other Amazon Web Services accounts, and
  the other accounts have associated VPCs with the shared configuration.

  Before you can delete a query logging configuration, you must first disassociate
  all VPCs from the configuration. See
  [DisassociateResolverQueryLogConfig](https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_DisassociateResolverQueryLogConfig.html).

  If you used Resource Access Manager (RAM) to share a query logging configuration
  with other accounts, you must stop sharing
  the configuration before you can delete a configuration. The accounts that you
  shared the configuration with can first disassociate VPCs
  that they associated with the configuration, but that's not necessary. If you
  stop sharing the configuration, those VPCs are automatically
  disassociated from the configuration.
  """
  @spec delete_resolver_query_log_config(
          map(),
          delete_resolver_query_log_config_request(),
          list()
        ) ::
          {:ok, delete_resolver_query_log_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_resolver_query_log_config_errors()}
  def delete_resolver_query_log_config(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteResolverQueryLogConfig", input, options)
  end

  @doc """
  Deletes a Resolver rule.

  Before you can delete a Resolver rule, you must disassociate it from all the
  VPCs that you
  associated the Resolver rule with. For more information, see
  [DisassociateResolverRule](https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_DisassociateResolverRule.html).
  """
  @spec delete_resolver_rule(map(), delete_resolver_rule_request(), list()) ::
          {:ok, delete_resolver_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_resolver_rule_errors()}
  def delete_resolver_rule(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteResolverRule", input, options)
  end

  @doc """
  Disassociates a `FirewallRuleGroup` from a VPC, to remove DNS filtering from the
  VPC.
  """
  @spec disassociate_firewall_rule_group(
          map(),
          disassociate_firewall_rule_group_request(),
          list()
        ) ::
          {:ok, disassociate_firewall_rule_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_firewall_rule_group_errors()}
  def disassociate_firewall_rule_group(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DisassociateFirewallRuleGroup", input, options)
  end

  @doc """
  Removes IP addresses from an inbound or an outbound Resolver endpoint.

  If you want to remove more than one IP address,
  submit one `DisassociateResolverEndpointIpAddress` request for each IP address.

  To add an IP address to an endpoint, see
  [AssociateResolverEndpointIpAddress](https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_AssociateResolverEndpointIpAddress.html).
  """
  @spec disassociate_resolver_endpoint_ip_address(
          map(),
          disassociate_resolver_endpoint_ip_address_request(),
          list()
        ) ::
          {:ok, disassociate_resolver_endpoint_ip_address_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_resolver_endpoint_ip_address_errors()}
  def disassociate_resolver_endpoint_ip_address(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DisassociateResolverEndpointIpAddress", input, options)
  end

  @doc """
  Disassociates a VPC from a query logging configuration.

  Before you can delete a query logging configuration, you must first disassociate
  all VPCs
  from the configuration. If you used Resource Access Manager (RAM) to share a
  query logging configuration with other accounts, VPCs can be disassociated from
  the
  configuration in the following ways:

    
  The accounts that you shared the configuration with can disassociate VPCs from
  the configuration.

    
  You can stop sharing the configuration.
  """
  @spec disassociate_resolver_query_log_config(
          map(),
          disassociate_resolver_query_log_config_request(),
          list()
        ) ::
          {:ok, disassociate_resolver_query_log_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_resolver_query_log_config_errors()}
  def disassociate_resolver_query_log_config(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DisassociateResolverQueryLogConfig", input, options)
  end

  @doc """
  Removes the association between a specified Resolver rule and a specified VPC.

  If you disassociate a Resolver rule from a VPC, Resolver stops forwarding DNS
  queries for the
  domain name that you specified in the Resolver rule.
  """
  @spec disassociate_resolver_rule(map(), disassociate_resolver_rule_request(), list()) ::
          {:ok, disassociate_resolver_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_resolver_rule_errors()}
  def disassociate_resolver_rule(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DisassociateResolverRule", input, options)
  end

  @doc """
  Retrieves the configuration of the firewall behavior provided by DNS Firewall
  for a
  single VPC from Amazon Virtual Private Cloud (Amazon VPC).
  """
  @spec get_firewall_config(map(), get_firewall_config_request(), list()) ::
          {:ok, get_firewall_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_firewall_config_errors()}
  def get_firewall_config(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetFirewallConfig", input, options)
  end

  @doc """
  Retrieves the specified firewall domain list.
  """
  @spec get_firewall_domain_list(map(), get_firewall_domain_list_request(), list()) ::
          {:ok, get_firewall_domain_list_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_firewall_domain_list_errors()}
  def get_firewall_domain_list(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetFirewallDomainList", input, options)
  end

  @doc """
  Retrieves the specified firewall rule group.
  """
  @spec get_firewall_rule_group(map(), get_firewall_rule_group_request(), list()) ::
          {:ok, get_firewall_rule_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_firewall_rule_group_errors()}
  def get_firewall_rule_group(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetFirewallRuleGroup", input, options)
  end

  @doc """
  Retrieves a firewall rule group association, which enables DNS filtering for a
  VPC with one rule group.

  A VPC can have more than one firewall rule group association, and a rule group
  can be associated with more than one VPC.
  """
  @spec get_firewall_rule_group_association(
          map(),
          get_firewall_rule_group_association_request(),
          list()
        ) ::
          {:ok, get_firewall_rule_group_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_firewall_rule_group_association_errors()}
  def get_firewall_rule_group_association(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetFirewallRuleGroupAssociation", input, options)
  end

  @doc """
  Returns the Identity and Access Management (Amazon Web Services IAM) policy for
  sharing the
  specified rule group.

  You can use the policy to share the rule group using Resource Access Manager
  (RAM).
  """
  @spec get_firewall_rule_group_policy(map(), get_firewall_rule_group_policy_request(), list()) ::
          {:ok, get_firewall_rule_group_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_firewall_rule_group_policy_errors()}
  def get_firewall_rule_group_policy(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetFirewallRuleGroupPolicy", input, options)
  end

  @doc """
  Gets information about a specified Resolver on the Outpost, such as its instance
  count and
  type, name, and the current status of the Resolver.
  """
  @spec get_outpost_resolver(map(), get_outpost_resolver_request(), list()) ::
          {:ok, get_outpost_resolver_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_outpost_resolver_errors()}
  def get_outpost_resolver(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetOutpostResolver", input, options)
  end

  @doc """
  Retrieves the behavior configuration of Route 53 Resolver behavior for a single
  VPC from
  Amazon Virtual Private Cloud.
  """
  @spec get_resolver_config(map(), get_resolver_config_request(), list()) ::
          {:ok, get_resolver_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_resolver_config_errors()}
  def get_resolver_config(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetResolverConfig", input, options)
  end

  @doc """
  Gets DNSSEC validation information for a specified resource.
  """
  @spec get_resolver_dnssec_config(map(), get_resolver_dnssec_config_request(), list()) ::
          {:ok, get_resolver_dnssec_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_resolver_dnssec_config_errors()}
  def get_resolver_dnssec_config(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetResolverDnssecConfig", input, options)
  end

  @doc """
  Gets information about a specified Resolver endpoint, such as whether it's an
  inbound or an outbound Resolver endpoint, and the
  current status of the endpoint.
  """
  @spec get_resolver_endpoint(map(), get_resolver_endpoint_request(), list()) ::
          {:ok, get_resolver_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_resolver_endpoint_errors()}
  def get_resolver_endpoint(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetResolverEndpoint", input, options)
  end

  @doc """
  Gets information about a specified Resolver query logging configuration, such as
  the number of VPCs that the configuration
  is logging queries for and the location that logs are sent to.
  """
  @spec get_resolver_query_log_config(map(), get_resolver_query_log_config_request(), list()) ::
          {:ok, get_resolver_query_log_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_resolver_query_log_config_errors()}
  def get_resolver_query_log_config(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetResolverQueryLogConfig", input, options)
  end

  @doc """
  Gets information about a specified association between a Resolver query logging
  configuration and an Amazon VPC.

  When you associate a VPC
  with a query logging configuration, Resolver logs DNS queries that originate in
  that VPC.
  """
  @spec get_resolver_query_log_config_association(
          map(),
          get_resolver_query_log_config_association_request(),
          list()
        ) ::
          {:ok, get_resolver_query_log_config_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_resolver_query_log_config_association_errors()}
  def get_resolver_query_log_config_association(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetResolverQueryLogConfigAssociation", input, options)
  end

  @doc """
  Gets information about a query logging policy.

  A query logging policy specifies the Resolver query logging
  operations and resources that you want to allow another Amazon Web Services
  account to be able to use.
  """
  @spec get_resolver_query_log_config_policy(
          map(),
          get_resolver_query_log_config_policy_request(),
          list()
        ) ::
          {:ok, get_resolver_query_log_config_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_resolver_query_log_config_policy_errors()}
  def get_resolver_query_log_config_policy(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetResolverQueryLogConfigPolicy", input, options)
  end

  @doc """
  Gets information about a specified Resolver rule, such as the domain name that
  the rule forwards DNS queries for and the ID of the
  outbound Resolver endpoint that the rule is associated with.
  """
  @spec get_resolver_rule(map(), get_resolver_rule_request(), list()) ::
          {:ok, get_resolver_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_resolver_rule_errors()}
  def get_resolver_rule(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetResolverRule", input, options)
  end

  @doc """
  Gets information about an association between a specified Resolver rule and a
  VPC.

  You associate a Resolver rule and a VPC using
  [AssociateResolverRule](https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_AssociateResolverRule.html).
  """
  @spec get_resolver_rule_association(map(), get_resolver_rule_association_request(), list()) ::
          {:ok, get_resolver_rule_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_resolver_rule_association_errors()}
  def get_resolver_rule_association(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetResolverRuleAssociation", input, options)
  end

  @doc """
  Gets information about the Resolver rule policy for a specified rule.

  A Resolver rule policy includes the rule that you want to share
  with another account, the account that you want to share the rule with, and the
  Resolver operations that you want to allow the account to use.
  """
  @spec get_resolver_rule_policy(map(), get_resolver_rule_policy_request(), list()) ::
          {:ok, get_resolver_rule_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_resolver_rule_policy_errors()}
  def get_resolver_rule_policy(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetResolverRulePolicy", input, options)
  end

  @doc """
  Imports domain names from a file into a domain list, for use in a DNS firewall
  rule group.

  Each domain specification in your domain list must satisfy the following
  requirements:

    *
  It can optionally start with `*` (asterisk).

    *
  With the exception of the optional starting asterisk, it must only contain
  the following characters: `A-Z`, `a-z`,
  `0-9`, `-` (hyphen).

    *
  It must be from 1-255 characters in length.
  """
  @spec import_firewall_domains(map(), import_firewall_domains_request(), list()) ::
          {:ok, import_firewall_domains_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, import_firewall_domains_errors()}
  def import_firewall_domains(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ImportFirewallDomains", input, options)
  end

  @doc """
  Retrieves the firewall configurations that you have defined.

  DNS Firewall uses the configurations to manage firewall behavior for your VPCs.

  A single call might return only a partial list of the configurations. For
  information, see `MaxResults`.
  """
  @spec list_firewall_configs(map(), list_firewall_configs_request(), list()) ::
          {:ok, list_firewall_configs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_firewall_configs_errors()}
  def list_firewall_configs(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListFirewallConfigs", input, options)
  end

  @doc """
  Retrieves the firewall domain lists that you have defined.

  For each firewall domain list, you can retrieve the domains that are defined for
  a list by calling `ListFirewallDomains`.

  A single call to this list operation might return only a partial list of the
  domain lists. For information, see `MaxResults`.
  """
  @spec list_firewall_domain_lists(map(), list_firewall_domain_lists_request(), list()) ::
          {:ok, list_firewall_domain_lists_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_firewall_domain_lists_errors()}
  def list_firewall_domain_lists(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListFirewallDomainLists", input, options)
  end

  @doc """
  Retrieves the domains that you have defined for the specified firewall domain
  list.

  A single call might return only a partial list of the domains. For information,
  see `MaxResults`.
  """
  @spec list_firewall_domains(map(), list_firewall_domains_request(), list()) ::
          {:ok, list_firewall_domains_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_firewall_domains_errors()}
  def list_firewall_domains(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListFirewallDomains", input, options)
  end

  @doc """
  Retrieves the firewall rule group associations that you have defined.

  Each association enables DNS filtering for a VPC with one rule group.

  A single call might return only a partial list of the associations. For
  information, see `MaxResults`.
  """
  @spec list_firewall_rule_group_associations(
          map(),
          list_firewall_rule_group_associations_request(),
          list()
        ) ::
          {:ok, list_firewall_rule_group_associations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_firewall_rule_group_associations_errors()}
  def list_firewall_rule_group_associations(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListFirewallRuleGroupAssociations", input, options)
  end

  @doc """
  Retrieves the minimal high-level information for the rule groups that you have
  defined.

  A single call might return only a partial list of the rule groups. For
  information, see `MaxResults`.
  """
  @spec list_firewall_rule_groups(map(), list_firewall_rule_groups_request(), list()) ::
          {:ok, list_firewall_rule_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_firewall_rule_groups_errors()}
  def list_firewall_rule_groups(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListFirewallRuleGroups", input, options)
  end

  @doc """
  Retrieves the firewall rules that you have defined for the specified firewall
  rule group.

  DNS Firewall uses the rules in a rule group to filter DNS network traffic for a
  VPC.

  A single call might return only a partial list of the rules. For information,
  see `MaxResults`.
  """
  @spec list_firewall_rules(map(), list_firewall_rules_request(), list()) ::
          {:ok, list_firewall_rules_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_firewall_rules_errors()}
  def list_firewall_rules(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListFirewallRules", input, options)
  end

  @doc """
  Lists all the Resolvers on Outposts that were created using the current Amazon
  Web Services account.
  """
  @spec list_outpost_resolvers(map(), list_outpost_resolvers_request(), list()) ::
          {:ok, list_outpost_resolvers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_outpost_resolvers_errors()}
  def list_outpost_resolvers(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListOutpostResolvers", input, options)
  end

  @doc """
  Retrieves the Resolver configurations that you have defined.

  Route 53 Resolver uses the configurations to manage DNS resolution behavior for
  your VPCs.
  """
  @spec list_resolver_configs(map(), list_resolver_configs_request(), list()) ::
          {:ok, list_resolver_configs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_resolver_configs_errors()}
  def list_resolver_configs(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListResolverConfigs", input, options)
  end

  @doc """
  Lists the configurations for DNSSEC validation that are associated with the
  current Amazon Web Services account.
  """
  @spec list_resolver_dnssec_configs(map(), list_resolver_dnssec_configs_request(), list()) ::
          {:ok, list_resolver_dnssec_configs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_resolver_dnssec_configs_errors()}
  def list_resolver_dnssec_configs(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListResolverDnssecConfigs", input, options)
  end

  @doc """
  Gets the IP addresses for a specified Resolver endpoint.
  """
  @spec list_resolver_endpoint_ip_addresses(
          map(),
          list_resolver_endpoint_ip_addresses_request(),
          list()
        ) ::
          {:ok, list_resolver_endpoint_ip_addresses_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_resolver_endpoint_ip_addresses_errors()}
  def list_resolver_endpoint_ip_addresses(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListResolverEndpointIpAddresses", input, options)
  end

  @doc """
  Lists all the Resolver endpoints that were created using the current Amazon Web
  Services account.
  """
  @spec list_resolver_endpoints(map(), list_resolver_endpoints_request(), list()) ::
          {:ok, list_resolver_endpoints_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_resolver_endpoints_errors()}
  def list_resolver_endpoints(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListResolverEndpoints", input, options)
  end

  @doc """
  Lists information about associations between Amazon VPCs and query logging
  configurations.
  """
  @spec list_resolver_query_log_config_associations(
          map(),
          list_resolver_query_log_config_associations_request(),
          list()
        ) ::
          {:ok, list_resolver_query_log_config_associations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_resolver_query_log_config_associations_errors()}
  def list_resolver_query_log_config_associations(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListResolverQueryLogConfigAssociations", input, options)
  end

  @doc """
  Lists information about the specified query logging configurations.

  Each configuration defines where you want Resolver to save
  DNS query logs and specifies the VPCs that you want to log queries for.
  """
  @spec list_resolver_query_log_configs(map(), list_resolver_query_log_configs_request(), list()) ::
          {:ok, list_resolver_query_log_configs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_resolver_query_log_configs_errors()}
  def list_resolver_query_log_configs(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListResolverQueryLogConfigs", input, options)
  end

  @doc """
  Lists the associations that were created between Resolver rules and VPCs using
  the current Amazon Web Services account.
  """
  @spec list_resolver_rule_associations(map(), list_resolver_rule_associations_request(), list()) ::
          {:ok, list_resolver_rule_associations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_resolver_rule_associations_errors()}
  def list_resolver_rule_associations(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListResolverRuleAssociations", input, options)
  end

  @doc """
  Lists the Resolver rules that were created using the current Amazon Web Services
  account.
  """
  @spec list_resolver_rules(map(), list_resolver_rules_request(), list()) ::
          {:ok, list_resolver_rules_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_resolver_rules_errors()}
  def list_resolver_rules(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListResolverRules", input, options)
  end

  @doc """
  Lists the tags that you associated with the specified resource.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_request(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Attaches an Identity and Access Management (Amazon Web Services IAM) policy for
  sharing the rule
  group.

  You can use the policy to share the rule group using Resource Access Manager
  (RAM).
  """
  @spec put_firewall_rule_group_policy(map(), put_firewall_rule_group_policy_request(), list()) ::
          {:ok, put_firewall_rule_group_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_firewall_rule_group_policy_errors()}
  def put_firewall_rule_group_policy(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutFirewallRuleGroupPolicy", input, options)
  end

  @doc """
  Specifies an Amazon Web Services account that you want to share a query logging
  configuration with, the query logging configuration that you want to share,
  and the operations that you want the account to be able to perform on the
  configuration.
  """
  @spec put_resolver_query_log_config_policy(
          map(),
          put_resolver_query_log_config_policy_request(),
          list()
        ) ::
          {:ok, put_resolver_query_log_config_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_resolver_query_log_config_policy_errors()}
  def put_resolver_query_log_config_policy(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutResolverQueryLogConfigPolicy", input, options)
  end

  @doc """
  Specifies an Amazon Web Services rule that you want to share with another
  account, the account that you want to share the rule with,
  and the operations that you want the account to be able to perform on the rule.
  """
  @spec put_resolver_rule_policy(map(), put_resolver_rule_policy_request(), list()) ::
          {:ok, put_resolver_rule_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_resolver_rule_policy_errors()}
  def put_resolver_rule_policy(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutResolverRulePolicy", input, options)
  end

  @doc """
  Adds one or more tags to a specified resource.
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Removes one or more tags from a specified resource.
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Updates the configuration of the firewall behavior provided by DNS Firewall for
  a single
  VPC from Amazon Virtual Private Cloud (Amazon VPC).
  """
  @spec update_firewall_config(map(), update_firewall_config_request(), list()) ::
          {:ok, update_firewall_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_firewall_config_errors()}
  def update_firewall_config(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateFirewallConfig", input, options)
  end

  @doc """
  Updates the firewall domain list from an array of domain specifications.
  """
  @spec update_firewall_domains(map(), update_firewall_domains_request(), list()) ::
          {:ok, update_firewall_domains_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_firewall_domains_errors()}
  def update_firewall_domains(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateFirewallDomains", input, options)
  end

  @doc """
  Updates the specified firewall rule.
  """
  @spec update_firewall_rule(map(), update_firewall_rule_request(), list()) ::
          {:ok, update_firewall_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_firewall_rule_errors()}
  def update_firewall_rule(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateFirewallRule", input, options)
  end

  @doc """
  Changes the association of a `FirewallRuleGroup` with a VPC.

  The association enables DNS filtering for the VPC.
  """
  @spec update_firewall_rule_group_association(
          map(),
          update_firewall_rule_group_association_request(),
          list()
        ) ::
          {:ok, update_firewall_rule_group_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_firewall_rule_group_association_errors()}
  def update_firewall_rule_group_association(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateFirewallRuleGroupAssociation", input, options)
  end

  @doc """
  You can use `UpdateOutpostResolver` to update the instance count, type, or name
  of a Resolver on an Outpost.
  """
  @spec update_outpost_resolver(map(), update_outpost_resolver_request(), list()) ::
          {:ok, update_outpost_resolver_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_outpost_resolver_errors()}
  def update_outpost_resolver(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateOutpostResolver", input, options)
  end

  @doc """
  Updates the behavior configuration of Route 53 Resolver behavior for a single
  VPC from
  Amazon Virtual Private Cloud.
  """
  @spec update_resolver_config(map(), update_resolver_config_request(), list()) ::
          {:ok, update_resolver_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_resolver_config_errors()}
  def update_resolver_config(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateResolverConfig", input, options)
  end

  @doc """
  Updates an existing DNSSEC validation configuration.

  If there is no existing DNSSEC validation configuration, one is created.
  """
  @spec update_resolver_dnssec_config(map(), update_resolver_dnssec_config_request(), list()) ::
          {:ok, update_resolver_dnssec_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_resolver_dnssec_config_errors()}
  def update_resolver_dnssec_config(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateResolverDnssecConfig", input, options)
  end

  @doc """
  Updates the name, or endpoint type for an inbound or an outbound Resolver
  endpoint.

  You can only update between IPV4 and DUALSTACK, IPV6 endpoint type can't be
  updated to other type.
  """
  @spec update_resolver_endpoint(map(), update_resolver_endpoint_request(), list()) ::
          {:ok, update_resolver_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_resolver_endpoint_errors()}
  def update_resolver_endpoint(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateResolverEndpoint", input, options)
  end

  @doc """
  Updates settings for a specified Resolver rule.

  `ResolverRuleId` is required, and all other parameters are optional.
  If you don't specify a parameter, it retains its current value.
  """
  @spec update_resolver_rule(map(), update_resolver_rule_request(), list()) ::
          {:ok, update_resolver_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_resolver_rule_errors()}
  def update_resolver_rule(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateResolverRule", input, options)
  end
end
