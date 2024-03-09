# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.GlobalAccelerator do
  @moduledoc """
  Global Accelerator

  This is the *Global Accelerator API Reference*.

  This guide is for developers who need detailed information about
  Global Accelerator API actions, data types, and errors. For more information
  about Global Accelerator features, see the
  [Global Accelerator Developer Guide](https://docs.aws.amazon.com/global-accelerator/latest/dg/what-is-global-accelerator.html).

  Global Accelerator is a service in which you create *accelerators* to improve
  the performance
  of your applications for local and global users. Depending on the type of
  accelerator you choose, you can
  gain additional benefits.

    *
  By using a standard accelerator, you can improve availability of your internet
  applications
  that are used by a global audience. With a standard accelerator, Global
  Accelerator directs traffic to optimal endpoints over the Amazon Web Services
  global network.

    *
  For other scenarios, you might choose a custom routing accelerator. With a
  custom routing accelerator, you
  can use application logic to directly map one or more users to a specific
  endpoint among many endpoints.

  Global Accelerator is a global service that supports endpoints in multiple
  Amazon Web Services Regions but you must specify the
  US West (Oregon) Region to create, update, or otherwise work with accelerators.
  That is, for example, specify `--region us-west-2`
  on Amazon Web Services CLI commands.

  By default, Global Accelerator provides you with static IP addresses that you
  associate with your accelerator. The static IP addresses
  are anycast from the Amazon Web Services edge network. For IPv4, Global
  Accelerator provides two static IPv4 addresses. For dual-stack,
  Global Accelerator provides a total of four addresses: two static IPv4 addresses
  and two static IPv6 addresses.
  With a standard accelerator for IPv4, instead of using the addresses that Global
  Accelerator provides, you can configure
  these entry points to be IPv4 addresses from your own IP address ranges that you
  bring to Global Accelerator (BYOIP).

  For a standard accelerator,
  they distribute incoming application traffic across multiple endpoint resources
  in multiple Amazon Web Services Regions , which increases
  the availability of your applications. Endpoints for standard accelerators can
  be Network Load Balancers, Application Load Balancers,
  Amazon EC2 instances, or Elastic IP addresses that are located in one Amazon Web
  Services Region or multiple Amazon Web Services Regions. For custom routing
  accelerators, you map traffic that arrives to the static IP addresses to
  specific Amazon EC2 servers in endpoints that
  are virtual private cloud (VPC) subnets.

  The static IP addresses remain assigned to your accelerator for as long as it
  exists, even if you
  disable the accelerator and it no longer accepts or routes traffic. However,
  when you
  *delete* an accelerator, you lose the static IP addresses that
  are assigned to it, so you can no longer route traffic by using them. You can
  use
  IAM policies like tag-based permissions with Global Accelerator to limit the
  users who have
  permissions to delete an accelerator. For more information, see [Tag-based policies](https://docs.aws.amazon.com/global-accelerator/latest/dg/access-control-manage-access-tag-policies.html).

  For standard accelerators, Global Accelerator uses the Amazon Web Services
  global network to route traffic to the optimal regional endpoint based
  on health, client location, and policies that you configure. The service reacts
  instantly to
  changes in health or configuration to ensure that internet traffic from clients
  is always
  directed to healthy endpoints.

  For more information about understanding and using Global Accelerator, see the
  [Global Accelerator Developer Guide](https://docs.aws.amazon.com/global-accelerator/latest/dg/what-is-global-accelerator.html).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      api_version: "2018-08-08",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "globalaccelerator",
      global?: false,
      protocol: "json",
      service_id: "Global Accelerator",
      signature_version: "v4",
      signing_name: "globalaccelerator",
      target_prefix: "GlobalAccelerator_V20180706"
    }
  end

  @doc """
  Associate a virtual private cloud (VPC) subnet endpoint with your custom routing
  accelerator.

  The listener port range must be large enough to support the number of IP
  addresses that can be
  specified in your subnet. The number of ports required is: subnet size times the
  number
  of ports per destination EC2 instances. For example, a subnet defined as /24
  requires a listener
  port range of at least 255 ports.

  Note: You must have enough remaining listener ports available to
  map to the subnet ports, or the call will fail with a LimitExceededException.

  By default, all destinations in a subnet in a custom routing accelerator cannot
  receive traffic. To enable all
  destinations to receive traffic, or to specify individual port mappings that can
  receive
  traffic, see the [
  AllowCustomRoutingTraffic](https://docs.aws.amazon.com/global-accelerator/latest/api/API_AllowCustomRoutingTraffic.html)
  operation.
  """
  def add_custom_routing_endpoints(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AddCustomRoutingEndpoints", input, options)
  end

  @doc """
  Add endpoints to an endpoint group.

  The `AddEndpoints` API operation is the recommended option for adding endpoints.
  The
  alternative options are to add endpoints when you create an endpoint group (with
  the
  [CreateEndpointGroup](https://docs.aws.amazon.com/global-accelerator/latest/api/API_CreateEndpointGroup.html) API)
  or when you update an endpoint group (with the
  [UpdateEndpointGroup](https://docs.aws.amazon.com/global-accelerator/latest/api/API_UpdateEndpointGroup.html)
  API).

  There are two advantages to using `AddEndpoints` to add endpoints in Global
  Accelerator:

    *
  It's faster, because Global Accelerator only has to resolve the new endpoints
  that
  you're adding, rather than resolving new and existing endpoints.

    *
  It's more convenient, because you don't need to specify the current
  endpoints that are already in the endpoint group, in addition to the new
  endpoints that
  you want to add.

  For information about endpoint types and requirements for endpoints that you can
  add
  to Global Accelerator, see [
  Endpoints for standard
  accelerators](https://docs.aws.amazon.com/global-accelerator/latest/dg/about-endpoints.html)
  in the *Global Accelerator Developer Guide*.
  """
  def add_endpoints(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AddEndpoints", input, options)
  end

  @doc """
  Advertises an IPv4 address range that is provisioned for use with your Amazon
  Web Services resources
  through bring your own IP addresses (BYOIP).

  It can take a few minutes before traffic to
  the specified addresses starts routing to Amazon Web Services because of
  propagation delays.

  To stop advertising the BYOIP address range, use [
  WithdrawByoipCidr](https://docs.aws.amazon.com/global-accelerator/latest/api/WithdrawByoipCidr.html).

  For more information, see [Bring your own IP addresses
  (BYOIP)](https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html)
  in the *Global Accelerator Developer Guide*.
  """
  def advertise_byoip_cidr(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AdvertiseByoipCidr", input, options)
  end

  @doc """
  Specify the Amazon EC2 instance (destination) IP addresses and ports for a VPC
  subnet endpoint that can receive traffic
  for a custom routing accelerator.

  You can allow traffic to all destinations in the subnet endpoint, or allow
  traffic to a
  specified list of destination IP addresses and ports in the subnet. Note that
  you cannot specify IP addresses or ports
  outside of the range that you configured for the endpoint group.

  After you make changes, you can verify that the updates are complete by checking
  the status of your
  accelerator: the status changes from IN_PROGRESS to DEPLOYED.
  """
  def allow_custom_routing_traffic(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AllowCustomRoutingTraffic", input, options)
  end

  @doc """
  Create an accelerator.

  An accelerator includes one or more listeners that process inbound connections
  and direct traffic
  to one or more endpoint groups, each of which includes endpoints, such as
  Network Load Balancers.

  Global Accelerator is a global service that supports endpoints in multiple
  Amazon Web Services Regions but you must specify the
  US West (Oregon) Region to create, update, or otherwise work with accelerators.
  That is, for example, specify `--region us-west-2`
  on Amazon Web Services CLI commands.
  """
  def create_accelerator(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateAccelerator", input, options)
  end

  @doc """
  Create a cross-account attachment in Global Accelerator.

  You create a cross-account attachment to
  specify the *principals* who have permission to add to accelerators in their own
  account the resources in your account that you also list in the attachment.

  A principal can be an Amazon Web Services account number or the Amazon Resource
  Name (ARN) for an
  accelerator. For account numbers that are listed as principals, to add a
  resource listed in the attachment to an accelerator,
  you must sign in to an account specified as a principal. Then you can add the
  resources that are listed
  to any of your accelerators. If an accelerator ARN is listed in the
  cross-account attachment as a principal,
  anyone with permission to make updates to the accelerator can add as endpoints
  resources that are listed in the
  attachment.
  """
  def create_cross_account_attachment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateCrossAccountAttachment", input, options)
  end

  @doc """
  Create a custom routing accelerator.

  A custom routing accelerator directs traffic to one of possibly thousands
  of Amazon EC2 instance destinations running in a single or multiple virtual
  private clouds (VPC) subnet endpoints.

  Be aware that, by default, all destination EC2 instances in a VPC subnet
  endpoint cannot receive
  traffic. To enable all destinations to receive traffic, or to specify individual
  port
  mappings that can receive traffic, see the [
  AllowCustomRoutingTraffic](https://docs.aws.amazon.com/global-accelerator/latest/api/API_AllowCustomRoutingTraffic.html)
  operation.

  Global Accelerator is a global service that supports endpoints in multiple
  Amazon Web Services Regions but you must specify the
  US West (Oregon) Region to create, update, or otherwise work with accelerators.
  That is, for example, specify `--region us-west-2`
  on Amazon Web Services CLI commands.
  """
  def create_custom_routing_accelerator(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateCustomRoutingAccelerator", input, options)
  end

  @doc """
  Create an endpoint group for the specified listener for a custom routing
  accelerator.

  An endpoint group is a collection of endpoints in one Amazon Web Services
  Region.
  """
  def create_custom_routing_endpoint_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateCustomRoutingEndpointGroup", input, options)
  end

  @doc """
  Create a listener to process inbound connections from clients to a custom
  routing accelerator.

  Connections arrive to assigned static IP addresses on the port range that you
  specify.
  """
  def create_custom_routing_listener(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateCustomRoutingListener", input, options)
  end

  @doc """
  Create an endpoint group for the specified listener.

  An endpoint group is a collection of endpoints in one Amazon Web Services
  Region. A resource must be valid and active when you add it as an endpoint.

  For more information about endpoint types and requirements for endpoints that
  you can add
  to Global Accelerator, see [
  Endpoints for standard
  accelerators](https://docs.aws.amazon.com/global-accelerator/latest/dg/about-endpoints.html)
  in the *Global Accelerator Developer Guide*.
  """
  def create_endpoint_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateEndpointGroup", input, options)
  end

  @doc """
  Create a listener to process inbound connections from clients to an accelerator.

  Connections arrive to assigned static
  IP addresses on a port, port range, or list of port ranges that you specify.
  """
  def create_listener(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateListener", input, options)
  end

  @doc """
  Delete an accelerator.

  Before you can delete an accelerator, you must disable it and remove all
  dependent resources
  (listeners and endpoint groups). To disable the accelerator, update the
  accelerator to set `Enabled` to false.

  When you create an accelerator, by default, Global Accelerator provides you with
  a set of two static IP addresses.
  Alternatively, you can bring your own IP address ranges to Global Accelerator
  and assign IP addresses from those ranges.

  The IP addresses are assigned to your accelerator for as long as it exists, even
  if you disable the accelerator and
  it no longer accepts or routes traffic. However, when you *delete* an
  accelerator, you lose the
  static IP addresses that are assigned to the accelerator, so you can no longer
  route traffic by using them.
  As a best practice, ensure that you have permissions in place to avoid
  inadvertently deleting accelerators. You
  can use IAM policies with Global Accelerator to limit the users who have
  permissions to delete an accelerator. For more information,
  see [Identity and access management](https://docs.aws.amazon.com/global-accelerator/latest/dg/auth-and-access-control.html)
  in
  the *Global Accelerator Developer Guide*.
  """
  def delete_accelerator(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteAccelerator", input, options)
  end

  @doc """
  Delete a cross-account attachment.

  When you delete an attachment, Global Accelerator revokes the permission
  to use the resources in the attachment from all principals in the list of
  principals. Global Accelerator
  revokes the permission for specific resources by doing the following:

    *
  If the principal is an account ID, Global Accelerator reviews every accelerator
  in the account
  and removes cross-account endpoints from all accelerators.

    *
  If the principal is an accelerator, Global Accelerator reviews just that
  accelerator
  and removes cross-account endpoints from it.

  If there are overlapping permissions provided by multiple cross-account
  attachments,
  Global Accelerator only removes endpoints if there are no current cross-account
  attachments that provide
  access permission. For example, if you delete a cross-account attachment that
  lists an
  accelerator as a principal, but another cross-account attachment includes the
  account ID
  that owns that accelerator, endpoints will not be removed from the accelerator.
  """
  def delete_cross_account_attachment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteCrossAccountAttachment", input, options)
  end

  @doc """
  Delete a custom routing accelerator.

  Before you can delete an accelerator, you must disable it and remove all
  dependent resources
  (listeners and endpoint groups). To disable the accelerator, update the
  accelerator to set `Enabled` to false.

  When you create a custom routing accelerator, by default, Global Accelerator
  provides you with a set of two static IP addresses.

  The IP
  addresses are assigned to your accelerator for as long as it exists, even if you
  disable the accelerator and
  it no longer accepts or routes traffic. However, when you *delete* an
  accelerator, you lose the
  static IP addresses that are assigned to the accelerator, so you can no longer
  route traffic by using them.
  As a best practice, ensure that you have permissions in place to avoid
  inadvertently deleting accelerators. You
  can use IAM policies with Global Accelerator to limit the users who have
  permissions to delete an accelerator. For more information,
  see [Identity and access management](https://docs.aws.amazon.com/global-accelerator/latest/dg/auth-and-access-control.html)
  in
  the *Global Accelerator Developer Guide*.
  """
  def delete_custom_routing_accelerator(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteCustomRoutingAccelerator", input, options)
  end

  @doc """
  Delete an endpoint group from a listener for a custom routing accelerator.
  """
  def delete_custom_routing_endpoint_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteCustomRoutingEndpointGroup", input, options)
  end

  @doc """
  Delete a listener for a custom routing accelerator.
  """
  def delete_custom_routing_listener(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteCustomRoutingListener", input, options)
  end

  @doc """
  Delete an endpoint group from a listener.
  """
  def delete_endpoint_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteEndpointGroup", input, options)
  end

  @doc """
  Delete a listener from an accelerator.
  """
  def delete_listener(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteListener", input, options)
  end

  @doc """
  Specify the Amazon EC2 instance (destination) IP addresses and ports for a VPC
  subnet endpoint that cannot receive traffic
  for a custom routing accelerator.

  You can deny traffic to all destinations in the VPC endpoint, or deny traffic to
  a
  specified list of destination IP addresses and ports. Note that you cannot
  specify IP addresses
  or ports outside of the range that you configured for the endpoint group.

  After you make changes, you can verify that the updates are complete by checking
  the status of your
  accelerator: the status changes from IN_PROGRESS to DEPLOYED.
  """
  def deny_custom_routing_traffic(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DenyCustomRoutingTraffic", input, options)
  end

  @doc """
  Releases the specified address range that you provisioned to use with your
  Amazon Web Services resources
  through bring your own IP addresses (BYOIP) and deletes the corresponding
  address pool.

  Before you can release an address range, you must stop advertising it by using
  [WithdrawByoipCidr](https://docs.aws.amazon.com/global-accelerator/latest/api/WithdrawByoipCidr.html) and you must not have
  any accelerators that are using static IP addresses allocated from its address
  range.

  For more information, see [Bring
  your own IP addresses
  (BYOIP)](https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html)
  in the *Global Accelerator Developer Guide*.
  """
  def deprovision_byoip_cidr(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeprovisionByoipCidr", input, options)
  end

  @doc """
  Describe an accelerator.
  """
  def describe_accelerator(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAccelerator", input, options)
  end

  @doc """
  Describe the attributes of an accelerator.
  """
  def describe_accelerator_attributes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAcceleratorAttributes", input, options)
  end

  @doc """
  Gets configuration information about a cross-account attachment.
  """
  def describe_cross_account_attachment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeCrossAccountAttachment", input, options)
  end

  @doc """
  Describe a custom routing accelerator.
  """
  def describe_custom_routing_accelerator(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeCustomRoutingAccelerator", input, options)
  end

  @doc """
  Describe the attributes of a custom routing accelerator.
  """
  def describe_custom_routing_accelerator_attributes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "DescribeCustomRoutingAcceleratorAttributes",
      input,
      options
    )
  end

  @doc """
  Describe an endpoint group for a custom routing accelerator.
  """
  def describe_custom_routing_endpoint_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeCustomRoutingEndpointGroup", input, options)
  end

  @doc """
  The description of a listener for a custom routing accelerator.
  """
  def describe_custom_routing_listener(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeCustomRoutingListener", input, options)
  end

  @doc """
  Describe an endpoint group.
  """
  def describe_endpoint_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeEndpointGroup", input, options)
  end

  @doc """
  Describe a listener.
  """
  def describe_listener(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeListener", input, options)
  end

  @doc """
  List the accelerators for an Amazon Web Services account.
  """
  def list_accelerators(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAccelerators", input, options)
  end

  @doc """
  Lists the IP address ranges that were specified in calls to
  [ProvisionByoipCidr](https://docs.aws.amazon.com/global-accelerator/latest/api/ProvisionByoipCidr.html),
  including
  the current state and a history of state changes.
  """
  def list_byoip_cidrs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListByoipCidrs", input, options)
  end

  @doc """
  List the cross-account attachments that have been created in Global Accelerator.
  """
  def list_cross_account_attachments(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListCrossAccountAttachments", input, options)
  end

  @doc """
  List the accounts that have cross-account endpoints.
  """
  def list_cross_account_resource_accounts(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListCrossAccountResourceAccounts", input, options)
  end

  @doc """
  List the cross-account endpoints available to add to an accelerator.
  """
  def list_cross_account_resources(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListCrossAccountResources", input, options)
  end

  @doc """
  List the custom routing accelerators for an Amazon Web Services account.
  """
  def list_custom_routing_accelerators(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListCustomRoutingAccelerators", input, options)
  end

  @doc """
  List the endpoint groups that are associated with a listener for a custom
  routing accelerator.
  """
  def list_custom_routing_endpoint_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListCustomRoutingEndpointGroups", input, options)
  end

  @doc """
  List the listeners for a custom routing accelerator.
  """
  def list_custom_routing_listeners(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListCustomRoutingListeners", input, options)
  end

  @doc """
  Provides a complete mapping from the public accelerator IP address and port to
  destination EC2 instance
  IP addresses and ports in the virtual public cloud (VPC) subnet endpoint for a
  custom routing accelerator.

  For each subnet endpoint that you add, Global Accelerator creates a new static
  port mapping for the accelerator. The port
  mappings don't change after Global Accelerator generates them, so you can
  retrieve and cache the full mapping on your servers.

  If you remove a subnet from your accelerator, Global Accelerator removes
  (reclaims) the port mappings. If you add a subnet to
  your accelerator, Global Accelerator creates new port mappings (the existing
  ones don't change). If you add or remove EC2 instances
  in your subnet, the port mappings don't change, because the mappings are created
  when you add the subnet to Global Accelerator.

  The mappings also include a flag for each destination denoting which destination
  IP addresses and
  ports are allowed or denied traffic.
  """
  def list_custom_routing_port_mappings(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListCustomRoutingPortMappings", input, options)
  end

  @doc """
  List the port mappings for a specific EC2 instance (destination) in a VPC subnet
  endpoint.

  The
  response is the mappings for one destination IP address. This is useful when
  your subnet endpoint has mappings that
  span multiple custom routing accelerators in your account, or for scenarios
  where you only want to
  list the port mappings for a specific destination instance.
  """
  def list_custom_routing_port_mappings_by_destination(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "ListCustomRoutingPortMappingsByDestination",
      input,
      options
    )
  end

  @doc """
  List the endpoint groups that are associated with a listener.
  """
  def list_endpoint_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListEndpointGroups", input, options)
  end

  @doc """
  List the listeners for an accelerator.
  """
  def list_listeners(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListListeners", input, options)
  end

  @doc """
  List all tags for an accelerator.

  For more information, see [Tagging in Global
  Accelerator](https://docs.aws.amazon.com/global-accelerator/latest/dg/tagging-in-global-accelerator.html)
  in the *Global Accelerator Developer Guide*.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Provisions an IP address range to use with your Amazon Web Services resources
  through bring your own IP
  addresses (BYOIP) and creates a corresponding address pool.

  After the address range is provisioned,
  it is ready to be advertised using [
  AdvertiseByoipCidr](https://docs.aws.amazon.com/global-accelerator/latest/api/AdvertiseByoipCidr.html).

  For more information, see [Bring your own IP addresses
  (BYOIP)](https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html)
  in the *Global Accelerator Developer Guide*.
  """
  def provision_byoip_cidr(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ProvisionByoipCidr", input, options)
  end

  @doc """
  Remove endpoints from a custom routing accelerator.
  """
  def remove_custom_routing_endpoints(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RemoveCustomRoutingEndpoints", input, options)
  end

  @doc """
  Remove endpoints from an endpoint group.

  The `RemoveEndpoints` API operation is the recommended option for removing
  endpoints. The alternative is to remove
  endpoints by updating an endpoint group by using the
  [UpdateEndpointGroup](https://docs.aws.amazon.com/global-accelerator/latest/api/API_UpdateEndpointGroup.html)

  API operation. There are two advantages to using `AddEndpoints` to remove
  endpoints instead:

    *
  It's more convenient, because you only need to specify the endpoints that you
  want to remove. With the
  `UpdateEndpointGroup` API operation, you must specify all of the endpoints in
  the
  endpoint group except the ones that you want to remove from the group.

    *
  It's faster, because Global Accelerator doesn't need to resolve any endpoints.
  With the
  `UpdateEndpointGroup` API operation, Global Accelerator must resolve all of the
  endpoints that
  remain in the group.
  """
  def remove_endpoints(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RemoveEndpoints", input, options)
  end

  @doc """
  Add tags to an accelerator resource.

  For more information, see [Tagging in Global
  Accelerator](https://docs.aws.amazon.com/global-accelerator/latest/dg/tagging-in-global-accelerator.html)
  in the *Global Accelerator Developer Guide*.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Remove tags from a Global Accelerator resource.

  When you specify a tag key, the action removes both that key and its associated
  value.
  The operation succeeds even if you attempt to remove tags from an accelerator
  that was already removed.

  For more information, see [Tagging in Global
  Accelerator](https://docs.aws.amazon.com/global-accelerator/latest/dg/tagging-in-global-accelerator.html)
  in the *Global Accelerator Developer Guide*.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Update an accelerator to make changes, such as the following:

    *
  Change the name of the accelerator.

    *
  Disable the accelerator so that it no longer accepts or routes traffic, or so
  that you can delete it.

    *
  Enable the accelerator, if it is disabled.

    *
  Change the IP address type to dual-stack if it is IPv4, or change the IP address
  type to IPv4 if it's dual-stack.

  Be aware that static IP addresses remain assigned to your accelerator for as
  long as it exists, even if you disable the accelerator and it no
  longer accepts or routes traffic. However, when you delete the accelerator, you
  lose the static IP addresses that are assigned to it, so you
  can no longer route traffic by using them.

  Global Accelerator is a global service that supports endpoints in multiple
  Amazon Web Services Regions but you must specify the
  US West (Oregon) Region to create, update, or otherwise work with accelerators.
  That is, for example, specify `--region us-west-2`
  on Amazon Web Services CLI commands.
  """
  def update_accelerator(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateAccelerator", input, options)
  end

  @doc """
  Update the attributes for an accelerator.
  """
  def update_accelerator_attributes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateAcceleratorAttributes", input, options)
  end

  @doc """
  Update a cross-account attachment to add or remove principals or resources.

  When you update
  an attachment to remove a principal (account ID or accelerator) or a resource,
  Global Accelerator
  revokes the permission for specific resources by doing the following:

    *
  If the principal is an account ID, Global Accelerator reviews every accelerator
  in the account
  and removes cross-account endpoints from all accelerators.

    *
  If the principal is an accelerator, Global Accelerator reviews just that
  accelerator
  and removes cross-account endpoints from it.

  If there are overlapping permissions provided by multiple cross-account
  attachments,
  Global Accelerator only removes endpoints if there are no current cross-account
  attachments that provide
  access permission. For example, if you delete a cross-account attachment that
  lists an
  accelerator as a principal, but another cross-account attachment includes the
  account ID
  that owns that accelerator, endpoints will not be removed from the accelerator.
  """
  def update_cross_account_attachment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateCrossAccountAttachment", input, options)
  end

  @doc """
  Update a custom routing accelerator.
  """
  def update_custom_routing_accelerator(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateCustomRoutingAccelerator", input, options)
  end

  @doc """
  Update the attributes for a custom routing accelerator.
  """
  def update_custom_routing_accelerator_attributes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateCustomRoutingAcceleratorAttributes", input, options)
  end

  @doc """
  Update a listener for a custom routing accelerator.
  """
  def update_custom_routing_listener(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateCustomRoutingListener", input, options)
  end

  @doc """
  Update an endpoint group.

  A resource must be valid and active when you add it as an endpoint.
  """
  def update_endpoint_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateEndpointGroup", input, options)
  end

  @doc """
  Update a listener.
  """
  def update_listener(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateListener", input, options)
  end

  @doc """
  Stops advertising an address range that is provisioned as an address pool.

  You can perform this operation at most once every 10 seconds, even if you
  specify different address
  ranges each time.

  It can take a few minutes before traffic to the specified addresses stops
  routing to Amazon Web Services because of
  propagation delays.

  For more information, see [Bring your own IP addresses
  (BYOIP)](https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html)
  in the *Global Accelerator Developer Guide*.
  """
  def withdraw_byoip_cidr(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "WithdrawByoipCidr", input, options)
  end
end
