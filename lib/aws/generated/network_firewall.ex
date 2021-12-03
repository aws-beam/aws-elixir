# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.NetworkFirewall do
  @moduledoc """
  This is the API Reference for AWS Network Firewall.

  This guide is for developers who need detailed information about the Network
  Firewall API actions, data types, and errors.

    * The REST API requires you to handle connection details, such as
  calculating signatures, handling request retries, and error handling. For
  general information about using the AWS REST APIs, see [AWS APIs](https://docs.aws.amazon.com/general/latest/gr/aws-apis.html).

  To access Network Firewall using the REST API endpoint:
  `https://network-firewall.<region>.amazonaws.com `

    * Alternatively, you can use one of the AWS SDKs to access an API
  that's tailored to the programming language or platform that you're using. For
  more information, see [AWS SDKs](http://aws.amazon.com/tools/#SDKs).     * For descriptions of Network Firewall features, including and
  step-by-step instructions on how to use them through the Network Firewall
  console, see the [Network Firewall Developer
  Guide](https://docs.aws.amazon.com/network-firewall/latest/developerguide/).

  Network Firewall is a stateful, managed, network firewall and intrusion
  detection and prevention service for Amazon Virtual Private Cloud (Amazon VPC).
  With Network Firewall, you can filter traffic at the perimeter of your VPC. This
  includes filtering traffic going to and coming from an internet gateway, NAT
  gateway, or over VPN or AWS Direct Connect. Network Firewall uses rules that are
  compatible with Suricata, a free, open source intrusion detection system (IDS)
  engine. AWS Network Firewall supports Suricata version 5.0.2. For information
  about Suricata, see the [Suricata website](https://suricata-ids.org/).  You can use Network Firewall to monitor and protect your VPC traffic in a number
  of ways. The following are just a few examples:

    * Allow domains or IP addresses for known AWS service endpoints,
  such as Amazon S3, and block all other forms of traffic.

    * Use custom lists of known bad domains to limit the types of domain
  names that your applications can access.

    * Perform deep packet inspection on traffic entering or leaving your
  VPC.

    * Use stateful protocol detection to filter protocols like HTTPS,
  regardless of the port used.

  To enable Network Firewall for your VPCs, you perform steps in both Amazon VPC
  and in Network Firewall. For information about using Amazon VPC, see [Amazon VPC
  User Guide](https://docs.aws.amazon.com/vpc/latest/userguide/).

  To start using Network Firewall, do the following:

    1. (Optional) If you don't already have a VPC that you want to
  protect, create it in Amazon VPC.

    2. In Amazon VPC, in each Availability Zone where you want to have a
  firewall endpoint, create a subnet for the sole use of Network Firewall.

    3. In Network Firewall, create stateless and stateful rule groups,
  to define the components of the network traffic filtering behavior that you want
  your firewall to have.

    4. In Network Firewall, create a firewall policy that uses your rule
  groups and specifies additional default traffic filtering behavior.

    5. In Network Firewall, create a firewall and specify your new
  firewall policy and VPC subnets. Network Firewall creates a firewall endpoint in
  each subnet that you specify, with the behavior that's defined in the firewall
  policy.

    6. In Amazon VPC, use ingress routing enhancements to route traffic
  through the new firewall endpoints.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: "Network Firewall",
      api_version: "2020-11-12",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "network-firewall",
      global?: false,
      protocol: "json",
      service_id: "Network Firewall",
      signature_version: "v4",
      signing_name: "network-firewall",
      target_prefix: "NetworkFirewall_20201112"
    }
  end

  @doc """
  Associates a `FirewallPolicy` to a `Firewall`.

  A firewall policy defines how to monitor and manage your VPC network traffic,
  using a collection of inspection rule groups and other settings. Each firewall
  requires one firewall policy association, and you can use the same firewall
  policy for multiple firewalls.
  """
  def associate_firewall_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AssociateFirewallPolicy", input, options)
  end

  @doc """
  Associates the specified subnets in the Amazon VPC to the firewall.

  You can specify one subnet for each of the Availability Zones that the VPC
  spans.

  This request creates an AWS Network Firewall firewall endpoint in each of the
  subnets. To enable the firewall's protections, you must also modify the VPC's
  route tables for each subnet's Availability Zone, to redirect the traffic that's
  coming into and going out of the zone through the firewall endpoint.
  """
  def associate_subnets(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AssociateSubnets", input, options)
  end

  @doc """
  Creates an AWS Network Firewall `Firewall` and accompanying `FirewallStatus` for
  a VPC.

  The firewall defines the configuration settings for an AWS Network Firewall
  firewall. The settings that you can define at creation include the firewall
  policy, the subnets in your VPC to use for the firewall endpoints, and any tags
  that are attached to the firewall AWS resource.

  After you create a firewall, you can provide additional settings, like the
  logging configuration.

  To update the settings for a firewall, you use the operations that apply to the
  settings themselves, for example `UpdateLoggingConfiguration`,
  `AssociateSubnets`, and `UpdateFirewallDeleteProtection`.

  To manage a firewall's tags, use the standard AWS resource tagging operations,
  `ListTagsForResource`, `TagResource`, and `UntagResource`.

  To retrieve information about firewalls, use `ListFirewalls` and
  `DescribeFirewall`.
  """
  def create_firewall(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateFirewall", input, options)
  end

  @doc """
  Creates the firewall policy for the firewall according to the specifications.

  An AWS Network Firewall firewall policy defines the behavior of a firewall, in a
  collection of stateless and stateful rule groups and other settings. You can use
  one firewall policy for multiple firewalls.
  """
  def create_firewall_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateFirewallPolicy", input, options)
  end

  @doc """
  Creates the specified stateless or stateful rule group, which includes the rules
  for network traffic inspection, a capacity setting, and tags.

  You provide your rule group specification in your request using either
  `RuleGroup` or `Rules`.
  """
  def create_rule_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateRuleGroup", input, options)
  end

  @doc """
  Deletes the specified `Firewall` and its `FirewallStatus`.

  This operation requires the firewall's `DeleteProtection` flag to be `FALSE`.
  You can't revert this operation.

  You can check whether a firewall is in use by reviewing the route tables for the
  Availability Zones where you have firewall subnet mappings. Retrieve the subnet
  mappings by calling `DescribeFirewall`. You define and update the route tables
  through Amazon VPC. As needed, update the route tables for the zones to remove
  the firewall endpoints. When the route tables no longer use the firewall
  endpoints, you can remove the firewall safely.

  To delete a firewall, remove the delete protection if you need to using
  `UpdateFirewallDeleteProtection`, then delete the firewall by calling
  `DeleteFirewall`.
  """
  def delete_firewall(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteFirewall", input, options)
  end

  @doc """
  Deletes the specified `FirewallPolicy`.
  """
  def delete_firewall_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteFirewallPolicy", input, options)
  end

  @doc """
  Deletes a resource policy that you created in a `PutResourcePolicy` request.
  """
  def delete_resource_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteResourcePolicy", input, options)
  end

  @doc """
  Deletes the specified `RuleGroup`.
  """
  def delete_rule_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteRuleGroup", input, options)
  end

  @doc """
  Returns the data objects for the specified firewall.
  """
  def describe_firewall(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeFirewall", input, options)
  end

  @doc """
  Returns the data objects for the specified firewall policy.
  """
  def describe_firewall_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeFirewallPolicy", input, options)
  end

  @doc """
  Returns the logging configuration for the specified firewall.
  """
  def describe_logging_configuration(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeLoggingConfiguration", input, options)
  end

  @doc """
  Retrieves a resource policy that you created in a `PutResourcePolicy` request.
  """
  def describe_resource_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeResourcePolicy", input, options)
  end

  @doc """
  Returns the data objects for the specified rule group.
  """
  def describe_rule_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeRuleGroup", input, options)
  end

  @doc """
  Removes the specified subnet associations from the firewall.

  This removes the firewall endpoints from the subnets and removes any network
  filtering protections that the endpoints were providing.
  """
  def disassociate_subnets(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DisassociateSubnets", input, options)
  end

  @doc """
  Retrieves the metadata for the firewall policies that you have defined.

  Depending on your setting for max results and the number of firewall policies, a
  single call might not return the full list.
  """
  def list_firewall_policies(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListFirewallPolicies", input, options)
  end

  @doc """
  Retrieves the metadata for the firewalls that you have defined.

  If you provide VPC identifiers in your request, this returns only the firewalls
  for those VPCs.

  Depending on your setting for max results and the number of firewalls, a single
  call might not return the full list.
  """
  def list_firewalls(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListFirewalls", input, options)
  end

  @doc """
  Retrieves the metadata for the rule groups that you have defined.

  Depending on your setting for max results and the number of rule groups, a
  single call might not return the full list.
  """
  def list_rule_groups(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListRuleGroups", input, options)
  end

  @doc """
  Retrieves the tags associated with the specified resource.

  Tags are key:value pairs that you can use to categorize and manage your
  resources, for purposes like billing. For example, you might set the tag key to
  "customer" and the value to the customer name or ID. You can specify one or more
  tags to add to each AWS resource, up to 50 tags for a resource.

  You can tag the AWS resources that you manage through AWS Network Firewall:
  firewalls, firewall policies, and rule groups.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListTagsForResource", input, options)
  end

  @doc """
  Creates or updates an AWS Identity and Access Management policy for your rule
  group or firewall policy.

  Use this to share rule groups and firewall policies between accounts. This
  operation works in conjunction with the AWS Resource Access Manager (RAM)
  service to manage resource sharing for Network Firewall.

  Use this operation to create or update a resource policy for your rule group or
  firewall policy. In the policy, you specify the accounts that you want to share
  the resource with and the operations that you want the accounts to be able to
  perform.

  When you add an account in the resource policy, you then run the following
  Resource Access Manager (RAM) operations to access and accept the shared rule
  group or firewall policy.

    *
  [GetResourceShareInvitations](https://docs.aws.amazon.com/ram/latest/APIReference/API_GetResourceShareInvitations.html) - Returns the Amazon Resource Names (ARNs) of the resource share invitations.

    *
  [AcceptResourceShareInvitation](https://docs.aws.amazon.com/ram/latest/APIReference/API_AcceptResourceShareInvitation.html)
  - Accepts the share invitation for a specified resource share.

  For additional information about resource sharing using RAM, see [AWS Resource Access Manager User
  Guide](https://docs.aws.amazon.com/ram/latest/userguide/what-is.html).
  """
  def put_resource_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutResourcePolicy", input, options)
  end

  @doc """
  Adds the specified tags to the specified resource.

  Tags are key:value pairs that you can use to categorize and manage your
  resources, for purposes like billing. For example, you might set the tag key to
  "customer" and the value to the customer name or ID. You can specify one or more
  tags to add to each AWS resource, up to 50 tags for a resource.

  You can tag the AWS resources that you manage through AWS Network Firewall:
  firewalls, firewall policies, and rule groups.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "TagResource", input, options)
  end

  @doc """
  Removes the tags with the specified keys from the specified resource.

  Tags are key:value pairs that you can use to categorize and manage your
  resources, for purposes like billing. For example, you might set the tag key to
  "customer" and the value to the customer name or ID. You can specify one or more
  tags to add to each AWS resource, up to 50 tags for a resource.

  You can manage tags for the AWS resources that you manage through AWS Network
  Firewall: firewalls, firewall policies, and rule groups.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UntagResource", input, options)
  end

  @doc """
  Modifies the flag, `DeleteProtection`, which indicates whether it is possible to
  delete the firewall.

  If the flag is set to `TRUE`, the firewall is protected against deletion. This
  setting helps protect against accidentally deleting a firewall that's in use.
  """
  def update_firewall_delete_protection(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateFirewallDeleteProtection", input, options)
  end

  @doc """
  Modifies the description for the specified firewall.

  Use the description to help you identify the firewall when you're working with
  it.
  """
  def update_firewall_description(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateFirewallDescription", input, options)
  end

  @doc """
  Updates the properties of the specified firewall policy.
  """
  def update_firewall_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateFirewallPolicy", input, options)
  end

  def update_firewall_policy_change_protection(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "UpdateFirewallPolicyChangeProtection",
      input,
      options
    )
  end

  @doc """
  Sets the logging configuration for the specified firewall.

  To change the logging configuration, retrieve the `LoggingConfiguration` by
  calling `DescribeLoggingConfiguration`, then change it and provide the modified
  object to this update call. You must change the logging configuration one
  `LogDestinationConfig` at a time inside the retrieved `LoggingConfiguration`
  object.

  You can perform only one of the following actions in any call to
  `UpdateLoggingConfiguration`:

    * Create a new log destination object by adding a single
  `LogDestinationConfig` array element to `LogDestinationConfigs`.

    * Delete a log destination object by removing a single
  `LogDestinationConfig` array element from `LogDestinationConfigs`.

    * Change the `LogDestination` setting in a single
  `LogDestinationConfig` array element.

  You can't change the `LogDestinationType` or `LogType` in a
  `LogDestinationConfig`. To change these settings, delete the existing
  `LogDestinationConfig` object and create a new one, using two separate calls to
  this update operation.
  """
  def update_logging_configuration(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateLoggingConfiguration", input, options)
  end

  @doc """
  Updates the rule settings for the specified rule group.

  You use a rule group by reference in one or more firewall policies. When you
  modify a rule group, you modify all firewall policies that use the rule group.

  To update a rule group, first call `DescribeRuleGroup` to retrieve the current
  `RuleGroup` object, update the object as needed, and then provide the updated
  object to this call.
  """
  def update_rule_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateRuleGroup", input, options)
  end

  def update_subnet_change_protection(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateSubnetChangeProtection", input, options)
  end
end
