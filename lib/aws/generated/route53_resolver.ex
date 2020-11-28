# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Route53Resolver do
  @moduledoc """
  When you create a VPC using Amazon VPC, you automatically get DNS resolution
  within the VPC from Route 53 Resolver.

  By default, Resolver answers DNS queries for VPC domain names such as domain
  names for EC2 instances or ELB load balancers. Resolver performs recursive
  lookups against public name servers for all other domain names.

  You can also configure DNS resolution between your VPC and your network over a
  Direct Connect or VPN connection:

  ## Forward DNS queries from resolvers on your network to Route 53 Resolver

  DNS resolvers on your network can forward DNS queries to Resolver in a specified
  VPC. This allows your DNS resolvers to easily resolve domain names for AWS
  resources such as EC2 instances or records in a Route 53 private hosted zone.
  For more information, see [How DNS Resolvers on Your Network Forward DNS Queries to Route 53
  Resolver](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/resolver.html#resolver-overview-forward-network-to-vpc)
  in the *Amazon Route 53 Developer Guide*.

  ## Conditionally forward queries from a VPC to resolvers on your network

  You can configure Resolver to forward queries that it receives from EC2
  instances in your VPCs to DNS resolvers on your network. To forward selected
  queries, you create Resolver rules that specify the domain names for the DNS
  queries that you want to forward (such as example.com), and the IP addresses of
  the DNS resolvers on your network that you want to forward the queries to. If a
  query matches multiple rules (example.com, acme.example.com), Resolver chooses
  the rule with the most specific match (acme.example.com) and forwards the query
  to the IP addresses that you specified in that rule. For more information, see
  [How Route 53 Resolver Forwards DNS Queries from Your VPCs to Your Network](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/resolver.html#resolver-overview-forward-vpc-to-network)
  in the *Amazon Route 53 Developer Guide*.

  Like Amazon VPC, Resolver is regional. In each region where you have VPCs, you
  can choose whether to forward queries from your VPCs to your network (outbound
  queries), from your network to your VPCs (inbound queries), or both.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: "Route53Resolver",
      api_version: "2018-04-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "route53resolver",
      global?: false,
      protocol: "json",
      service_id: "Route53Resolver",
      signature_version: "v4",
      signing_name: "route53resolver",
      target_prefix: "Route53Resolver"
    }
  end

  @doc """
  Adds IP addresses to an inbound or an outbound Resolver endpoint.

  If you want to add more than one IP address, submit one
  `AssociateResolverEndpointIpAddress` request for each IP address.

  To remove an IP address from an endpoint, see
  [DisassociateResolverEndpointIpAddress](https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_DisassociateResolverEndpointIpAddress.html).
  """
  def associate_resolver_endpoint_ip_address(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AssociateResolverEndpointIpAddress", input, options)
  end

  @doc """
  Associates an Amazon VPC with a specified query logging configuration.

  Route 53 Resolver logs DNS queries that originate in all of the Amazon VPCs that
  are associated with a specified query logging configuration. To associate more
  than one VPC with a configuration, submit one `AssociateResolverQueryLogConfig`
  request for each VPC.

  The VPCs that you associate with a query logging configuration must be in the
  same Region as the configuration.

  To remove a VPC from a query logging configuration, see
  [DisassociateResolverQueryLogConfig](https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_DisassociateResolverQueryLogConfig.html).
  """
  def associate_resolver_query_log_config(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AssociateResolverQueryLogConfig", input, options)
  end

  @doc """
  Associates a Resolver rule with a VPC.

  When you associate a rule with a VPC, Resolver forwards all DNS queries for the
  domain name that is specified in the rule and that originate in the VPC. The
  queries are forwarded to the IP addresses for the DNS resolvers that are
  specified in the rule. For more information about rules, see
  [CreateResolverRule](https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_CreateResolverRule.html).
  """
  def associate_resolver_rule(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AssociateResolverRule", input, options)
  end

  @doc """
  Creates a Resolver endpoint.

  There are two types of Resolver endpoints, inbound and outbound:

    * An *inbound Resolver endpoint* forwards DNS queries to the DNS
  service for a VPC from your network.

    * An *outbound Resolver endpoint* forwards DNS queries from the DNS
  service for a VPC to your network.
  """
  def create_resolver_endpoint(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateResolverEndpoint", input, options)
  end

  @doc """
  Creates a Resolver query logging configuration, which defines where you want
  Resolver to save DNS query logs that originate in your VPCs.

  Resolver can log queries only for VPCs that are in the same Region as the query
  logging configuration.

  To specify which VPCs you want to log queries for, you use
  `AssociateResolverQueryLogConfig`. For more information, see
  [AssociateResolverQueryLogConfig](https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_AssociateResolverQueryLogConfig.html).

  You can optionally use AWS Resource Access Manager (AWS RAM) to share a query
  logging configuration with other AWS accounts. The other accounts can then
  associate VPCs with the configuration. The query logs that Resolver creates for
  a configuration include all DNS queries that originate in all VPCs that are
  associated with the configuration.
  """
  def create_resolver_query_log_config(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateResolverQueryLogConfig", input, options)
  end

  @doc """
  For DNS queries that originate in your VPCs, specifies which Resolver endpoint
  the queries pass through, one domain name that you want to forward to your
  network, and the IP addresses of the DNS resolvers in your network.
  """
  def create_resolver_rule(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateResolverRule", input, options)
  end

  @doc """
  Deletes a Resolver endpoint.

  The effect of deleting a Resolver endpoint depends on whether it's an inbound or
  an outbound Resolver endpoint:

    * **Inbound**: DNS queries from your network are no longer routed to
  the DNS service for the specified VPC.

    * **Outbound**: DNS queries from a VPC are no longer routed to your
  network.
  """
  def delete_resolver_endpoint(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteResolverEndpoint", input, options)
  end

  @doc """
  Deletes a query logging configuration.

  When you delete a configuration, Resolver stops logging DNS queries for all of
  the Amazon VPCs that are associated with the configuration. This also applies if
  the query logging configuration is shared with other AWS accounts, and the other
  accounts have associated VPCs with the shared configuration.

  Before you can delete a query logging configuration, you must first disassociate
  all VPCs from the configuration. See
  [DisassociateResolverQueryLogConfig](https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_DisassociateResolverQueryLogConfig.html).

  If you used Resource Access Manager (RAM) to share a query logging configuration
  with other accounts, you must stop sharing the configuration before you can
  delete a configuration. The accounts that you shared the configuration with can
  first disassociate VPCs that they associated with the configuration, but that's
  not necessary. If you stop sharing the configuration, those VPCs are
  automatically disassociated from the configuration.
  """
  def delete_resolver_query_log_config(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteResolverQueryLogConfig", input, options)
  end

  @doc """
  Deletes a Resolver rule.

  Before you can delete a Resolver rule, you must disassociate it from all the
  VPCs that you associated the Resolver rule with. For more information, see
  [DisassociateResolverRule](https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_DisassociateResolverRule.html).
  """
  def delete_resolver_rule(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteResolverRule", input, options)
  end

  @doc """
  Removes IP addresses from an inbound or an outbound Resolver endpoint.

  If you want to remove more than one IP address, submit one
  `DisassociateResolverEndpointIpAddress` request for each IP address.

  To add an IP address to an endpoint, see
  [AssociateResolverEndpointIpAddress](https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_AssociateResolverEndpointIpAddress.html).
  """
  def disassociate_resolver_endpoint_ip_address(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "DisassociateResolverEndpointIpAddress",
      input,
      options
    )
  end

  @doc """
  Disassociates a VPC from a query logging configuration.

  Before you can delete a query logging configuration, you must first disassociate
  all VPCs from the configuration. If you used Resource Access Manager (RAM) to
  share a query logging configuration with other accounts, VPCs can be
  disassociated from the configuration in the following ways:

     The accounts that you shared the configuration with can
  disassociate VPCs from the configuration.

     You can stop sharing the configuration.
  """
  def disassociate_resolver_query_log_config(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DisassociateResolverQueryLogConfig", input, options)
  end

  @doc """
  Removes the association between a specified Resolver rule and a specified VPC.

  If you disassociate a Resolver rule from a VPC, Resolver stops forwarding DNS
  queries for the domain name that you specified in the Resolver rule.
  """
  def disassociate_resolver_rule(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DisassociateResolverRule", input, options)
  end

  @doc """
  Gets information about a specified Resolver endpoint, such as whether it's an
  inbound or an outbound Resolver endpoint, and the current status of the
  endpoint.
  """
  def get_resolver_endpoint(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetResolverEndpoint", input, options)
  end

  @doc """
  Gets information about a specified Resolver query logging configuration, such as
  the number of VPCs that the configuration is logging queries for and the
  location that logs are sent to.
  """
  def get_resolver_query_log_config(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetResolverQueryLogConfig", input, options)
  end

  @doc """
  Gets information about a specified association between a Resolver query logging
  configuration and an Amazon VPC.

  When you associate a VPC with a query logging configuration, Resolver logs DNS
  queries that originate in that VPC.
  """
  def get_resolver_query_log_config_association(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "GetResolverQueryLogConfigAssociation",
      input,
      options
    )
  end

  @doc """
  Gets information about a query logging policy.

  A query logging policy specifies the Resolver query logging operations and
  resources that you want to allow another AWS account to be able to use.
  """
  def get_resolver_query_log_config_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetResolverQueryLogConfigPolicy", input, options)
  end

  @doc """
  Gets information about a specified Resolver rule, such as the domain name that
  the rule forwards DNS queries for and the ID of the outbound Resolver endpoint
  that the rule is associated with.
  """
  def get_resolver_rule(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetResolverRule", input, options)
  end

  @doc """
  Gets information about an association between a specified Resolver rule and a
  VPC.

  You associate a Resolver rule and a VPC using
  [AssociateResolverRule](https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_AssociateResolverRule.html).
  """
  def get_resolver_rule_association(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetResolverRuleAssociation", input, options)
  end

  @doc """
  Gets information about a Resolver rule policy.

  A Resolver rule policy specifies the Resolver operations and resources that you
  want to allow another AWS account to be able to use.
  """
  def get_resolver_rule_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetResolverRulePolicy", input, options)
  end

  @doc """
  Gets the IP addresses for a specified Resolver endpoint.
  """
  def list_resolver_endpoint_ip_addresses(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListResolverEndpointIpAddresses", input, options)
  end

  @doc """
  Lists all the Resolver endpoints that were created using the current AWS
  account.
  """
  def list_resolver_endpoints(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListResolverEndpoints", input, options)
  end

  @doc """
  Lists information about associations between Amazon VPCs and query logging
  configurations.
  """
  def list_resolver_query_log_config_associations(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "ListResolverQueryLogConfigAssociations",
      input,
      options
    )
  end

  @doc """
  Lists information about the specified query logging configurations.

  Each configuration defines where you want Resolver to save DNS query logs and
  specifies the VPCs that you want to log queries for.
  """
  def list_resolver_query_log_configs(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListResolverQueryLogConfigs", input, options)
  end

  @doc """
  Lists the associations that were created between Resolver rules and VPCs using
  the current AWS account.
  """
  def list_resolver_rule_associations(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListResolverRuleAssociations", input, options)
  end

  @doc """
  Lists the Resolver rules that were created using the current AWS account.
  """
  def list_resolver_rules(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListResolverRules", input, options)
  end

  @doc """
  Lists the tags that you associated with the specified resource.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListTagsForResource", input, options)
  end

  @doc """
  Specifies an AWS account that you want to share a query logging configuration
  with, the query logging configuration that you want to share, and the operations
  that you want the account to be able to perform on the configuration.
  """
  def put_resolver_query_log_config_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutResolverQueryLogConfigPolicy", input, options)
  end

  @doc """
  Specifies an AWS account that you want to share rules with, the Resolver rules
  that you want to share, and the operations that you want the account to be able
  to perform on those rules.
  """
  def put_resolver_rule_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutResolverRulePolicy", input, options)
  end

  @doc """
  Adds one or more tags to a specified resource.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "TagResource", input, options)
  end

  @doc """
  Removes one or more tags from a specified resource.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UntagResource", input, options)
  end

  @doc """
  Updates the name of an inbound or an outbound Resolver endpoint.
  """
  def update_resolver_endpoint(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateResolverEndpoint", input, options)
  end

  @doc """
  Updates settings for a specified Resolver rule.

  `ResolverRuleId` is required, and all other parameters are optional. If you
  don't specify a parameter, it retains its current value.
  """
  def update_resolver_rule(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateResolverRule", input, options)
  end
end