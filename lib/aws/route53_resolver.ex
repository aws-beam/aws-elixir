# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Route53Resolver do
  @moduledoc """
  Here's how you set up to query an Amazon Route 53 private hosted zone from
  your network:

  <ol> <li> Connect your network to a VPC using AWS Direct Connect or a VPN.

  </li> <li> Run the following AWS CLI command to create a Resolver endpoint:

  `create-resolver-endpoint --name [endpoint_name] --direction INBOUND
  --creator-request-id [unique_string] --security-group-ids
  [security_group_with_inbound_rules] --ip-addresses SubnetId=[subnet_id]
  SubnetId=[subnet_id_in_different_AZ]`

  Note the resolver endpoint ID that appears in the response. You'll use it
  in step 3.

  </li> <li> Get the IP addresses for the Resolver endpoints:

  `get-resolver-endpoint --resolver-endpoint-id [resolver_endpoint_id]`

  </li> <li> In your network configuration, define the IP addresses that you
  got in step 3 as DNS servers.

  You can now query instance names in your VPCs and the names of records in
  your private hosted zone.

  </li> </ol> You can also perform the following operations using the AWS
  CLI:

  <ul> <li> `list-resolver-endpoints`: List all endpoints. The syntax
  includes options for pagination and filtering.

  </li> <li> `update-resolver-endpoints`: Add IP addresses to an endpoint or
  remove IP addresses from an endpoint.

  </li> </ul> To delete an endpoint, use the following AWS CLI command:

  `delete-resolver-endpoint --resolver-endpoint-id [resolver_endpoint_id]`
  """

  @doc """
  Adds IP addresses to an inbound or an outbound resolver endpoint. If you
  want to adding more than one IP address, submit one
  `AssociateResolverEndpointIpAddress` request for each IP address.

  To remove an IP address from an endpoint, see
  `DisassociateResolverEndpointIpAddress`.
  """
  def associate_resolver_endpoint_ip_address(client, input, options \\ []) do
    request(client, "AssociateResolverEndpointIpAddress", input, options)
  end

  @doc """
  Associates a resolver rule with a VPC. When you associate a rule with a
  VPC, Resolver forwards all DNS queries for the domain name that is
  specified in the rule and that originate in the VPC. The queries are
  forwarded to the IP addresses for the DNS resolvers that are specified in
  the rule. For more information about rules, see `CreateResolverRule`.
  """
  def associate_resolver_rule(client, input, options \\ []) do
    request(client, "AssociateResolverRule", input, options)
  end

  @doc """
  Creates a resolver endpoint. There are two types of resolver endpoints,
  inbound and outbound:

  <ul> <li> An *inbound resolver endpoint* forwards DNS queries to the DNS
  service for a VPC from your network or another VPC.

  </li> <li> An *outbound resolver endpoint* forwards DNS queries from the
  DNS service for a VPC to your network or another VPC.

  </li> </ul>
  """
  def create_resolver_endpoint(client, input, options \\ []) do
    request(client, "CreateResolverEndpoint", input, options)
  end

  @doc """
  For DNS queries that originate in your VPCs, specifies which resolver
  endpoint the queries pass through, one domain name that you want to forward
  to your network, and the IP addresses of the DNS resolvers in your network.
  """
  def create_resolver_rule(client, input, options \\ []) do
    request(client, "CreateResolverRule", input, options)
  end

  @doc """
  Deletes a resolver endpoint. The effect of deleting a resolver endpoint
  depends on whether it's an inbound or an outbound resolver endpoint:

  <ul> <li> **Inbound**: DNS queries from your network or another VPC are no
  longer routed to the DNS service for the specified VPC.

  </li> <li> **Outbound**: DNS queries from a VPC are no longer routed to
  your network or to another VPC.

  </li> </ul>
  """
  def delete_resolver_endpoint(client, input, options \\ []) do
    request(client, "DeleteResolverEndpoint", input, options)
  end

  @doc """
  Deletes a resolver rule. Before you can delete a resolver rule, you must
  disassociate it from all the VPCs that you associated the resolver rule
  with. For more infomation, see `DisassociateResolverRule`.
  """
  def delete_resolver_rule(client, input, options \\ []) do
    request(client, "DeleteResolverRule", input, options)
  end

  @doc """
  Removes IP addresses from an inbound or an outbound resolver endpoint. If
  you want to remove more than one IP address, submit one
  `DisassociateResolverEndpointIpAddress` request for each IP address.

  To add an IP address to an endpoint, see
  `AssociateResolverEndpointIpAddress`.
  """
  def disassociate_resolver_endpoint_ip_address(client, input, options \\ []) do
    request(client, "DisassociateResolverEndpointIpAddress", input, options)
  end

  @doc """
  Removes the association between a specified resolver rule and a specified
  VPC.

  <important> If you disassociate a resolver rule from a VPC, Resolver stops
  forwarding DNS queries for the domain name that you specified in the
  resolver rule.

  </important>
  """
  def disassociate_resolver_rule(client, input, options \\ []) do
    request(client, "DisassociateResolverRule", input, options)
  end

  @doc """
  Gets information about a specified resolver endpoint, such as whether it's
  an inbound or an outbound resolver endpoint, and the current status of the
  endpoint.
  """
  def get_resolver_endpoint(client, input, options \\ []) do
    request(client, "GetResolverEndpoint", input, options)
  end

  @doc """
  Gets information about a specified resolver rule, such as the domain name
  that the rule forwards DNS queries for and the ID of the outbound resolver
  endpoint that the rule is associated with.
  """
  def get_resolver_rule(client, input, options \\ []) do
    request(client, "GetResolverRule", input, options)
  end

  @doc """
  Gets information about an association between a specified resolver rule and
  a VPC. You associate a resolver rule and a VPC using
  `AssociateResolverRule`.
  """
  def get_resolver_rule_association(client, input, options \\ []) do
    request(client, "GetResolverRuleAssociation", input, options)
  end

  @doc """
  Gets information about a resolver rule policy. A resolver rule policy
  specifies the Resolver operations and resources that you want to allow
  another AWS account to be able to use.
  """
  def get_resolver_rule_policy(client, input, options \\ []) do
    request(client, "GetResolverRulePolicy", input, options)
  end

  @doc """
  Gets the IP addresses for a specified resolver endpoint.
  """
  def list_resolver_endpoint_ip_addresses(client, input, options \\ []) do
    request(client, "ListResolverEndpointIpAddresses", input, options)
  end

  @doc """
  Lists all the resolver endpoints that were created using the current AWS
  account.
  """
  def list_resolver_endpoints(client, input, options \\ []) do
    request(client, "ListResolverEndpoints", input, options)
  end

  @doc """
  Lists the associations that were created between resolver rules and VPCs
  using the current AWS account.
  """
  def list_resolver_rule_associations(client, input, options \\ []) do
    request(client, "ListResolverRuleAssociations", input, options)
  end

  @doc """
  Lists the resolver rules that were created using the current AWS account.
  """
  def list_resolver_rules(client, input, options \\ []) do
    request(client, "ListResolverRules", input, options)
  end

  @doc """
  Lists the tags that you associated with the specified resource.
  """
  def list_tags_for_resource(client, input, options \\ []) do
    request(client, "ListTagsForResource", input, options)
  end

  @doc """
  Specifies the Resolver operations and resources that you want to allow
  another AWS account to be able to use.
  """
  def put_resolver_rule_policy(client, input, options \\ []) do
    request(client, "PutResolverRulePolicy", input, options)
  end

  @doc """
  Adds one or more tags to a specified resource.
  """
  def tag_resource(client, input, options \\ []) do
    request(client, "TagResource", input, options)
  end

  @doc """
  Removes one or more tags from a specified resource.
  """
  def untag_resource(client, input, options \\ []) do
    request(client, "UntagResource", input, options)
  end

  @doc """
  Updates the name of an inbound or an outbound resolver endpoint.
  """
  def update_resolver_endpoint(client, input, options \\ []) do
    request(client, "UpdateResolverEndpoint", input, options)
  end

  @doc """
  Updates settings for a specified resolver rule. `ResolverRuleId` is
  required, and all other parameters are optional. If you don't specify a
  parameter, it retains its current value.
  """
  def update_resolver_rule(client, input, options \\ []) do
    request(client, "UpdateResolverRule", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, Poison.Parser.t() | nil, Poison.Response.t()}
          | {:error, Poison.Parser.t()}
          | {:error, HTTPoison.Error.t()}
  defp request(client, action, input, options) do
    client = %{client | service: "route53resolver"}
    host = build_host("route53resolver", client)
    url = build_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "Route53Resolver.#{action}"}
    ]

    payload = Poison.Encoder.encode(input, %{})
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)

    case HTTPoison.post(url, payload, headers, options) do
      {:ok, %HTTPoison.Response{status_code: 200, body: ""} = response} ->
        {:ok, nil, response}

      {:ok, %HTTPoison.Response{status_code: 200, body: body} = response} ->
        {:ok, Poison.Parser.parse!(body, %{}), response}

      {:ok, %HTTPoison.Response{body: body}} ->
        error = Poison.Parser.parse!(body, %{})
        {:error, error}

      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp build_host(_endpoint_prefix, %{region: "local"}) do
    "localhost"
  end
  defp build_host(endpoint_prefix, %{region: region, endpoint: endpoint}) do
    "#{endpoint_prefix}.#{region}.#{endpoint}"
  end

  defp build_url(host, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}/"
  end
end
