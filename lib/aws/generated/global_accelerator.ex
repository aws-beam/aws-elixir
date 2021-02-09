# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.GlobalAccelerator do
  @moduledoc """
  AWS Global Accelerator

  This is the *AWS Global Accelerator API Reference*.

  This guide is for developers who need detailed information about AWS Global
  Accelerator API actions, data types, and errors. For more information about
  Global Accelerator features, see the [AWS Global Accelerator Developer Guide](https://docs.aws.amazon.com/global-accelerator/latest/dg/Welcome.html).

  AWS Global Accelerator is a service in which you create *accelerators* to
  improve the performance of your applications for local and global users.
  Depending on the type of accelerator you choose, you can gain additional
  benefits.

    * By using a standard accelerator, you can improve availability of
  your internet applications that are used by a global audience. With a standard
  accelerator, Global Accelerator directs traffic to optimal endpoints over the
  AWS global network.

    * For other scenarios, you might choose a custom routing
  accelerator. With a custom routing accelerator, you can use application logic to
  directly map one or more users to a specific endpoint among many endpoints.

  Global Accelerator is a global service that supports endpoints in multiple AWS
  Regions but you must specify the US West (Oregon) Region to create or update
  accelerators.

  By default, Global Accelerator provides you with two static IP addresses that
  you associate with your accelerator. With a standard accelerator, instead of
  using the IP addresses that Global Accelerator provides, you can configure these
  entry points to be IPv4 addresses from your own IP address ranges that you bring
  to Global Accelerator. The static IP addresses are anycast from the AWS edge
  network. For a standard accelerator, they distribute incoming application
  traffic across multiple endpoint resources in multiple AWS Regions, which
  increases the availability of your applications. Endpoints for standard
  accelerators can be Network Load Balancers, Application Load Balancers, Amazon
  EC2 instances, or Elastic IP addresses that are located in one AWS Region or
  multiple Regions. For custom routing accelerators, you map traffic that arrives
  to the static IP addresses to specific Amazon EC2 servers in endpoints that are
  virtual private cloud (VPC) subnets.

  The static IP addresses remain assigned to your accelerator for as long as it
  exists, even if you disable the accelerator and it no longer accepts or routes
  traffic. However, when you *delete* an accelerator, you lose the static IP
  addresses that are assigned to it, so you can no longer route traffic by using
  them. You can use IAM policies like tag-based permissions with Global
  Accelerator to limit the users who have permissions to delete an accelerator.
  For more information, see [Tag-based policies](https://docs.aws.amazon.com/global-accelerator/latest/dg/access-control-manage-access-tag-policies.html).

  For standard accelerators, Global Accelerator uses the AWS global network to
  route traffic to the optimal regional endpoint based on health, client location,
  and policies that you configure. The service reacts instantly to changes in
  health or configuration to ensure that internet traffic from clients is always
  directed to healthy endpoints.

  For a list of the AWS Regions where Global Accelerator and other services are
  currently supported, see the [AWS Region Table](https://docs.aws.amazon.com/about-aws/global-infrastructure/regional-product-services/).

  AWS Global Accelerator includes the following components:

  ## Definitions

  ### Static IP addresses

  Global Accelerator provides you with a set of two static IP addresses that are
  anycast from the AWS edge network. If you bring your own IP address range to AWS
  (BYOIP) to use with a standard accelerator, you can instead assign IP addresses
  from your own pool to use with your accelerator. For more information, see [
  Bring your own IP addresses (BYOIP) in AWS Global
  Accelerator](https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html).

  The IP addresses serve as single fixed entry points for your clients. If you
  already have Elastic Load Balancing load balancers, Amazon EC2 instances, or
  Elastic IP address resources set up for your applications, you can easily add
  those to a standard accelerator in Global Accelerator. This allows Global
  Accelerator to use static IP addresses to access the resources.

  The static IP addresses remain assigned to your accelerator for as long as it
  exists, even if you disable the accelerator and it no longer accepts or routes
  traffic. However, when you *delete* an accelerator, you lose the static IP
  addresses that are assigned to it, so you can no longer route traffic by using
  them. You can use IAM policies like tag-based permissions with Global
  Accelerator to delete an accelerator. For more information, see [Tag-based policies](https://docs.aws.amazon.com/global-accelerator/latest/dg/access-control-manage-access-tag-policies.html).

  ### Accelerator

  An accelerator directs traffic to endpoints over the AWS global network to
  improve the performance of your internet applications. Each accelerator includes
  one or more listeners.

  There are two types of accelerators:

     A *standard* accelerator directs traffic to the optimal AWS
  endpoint based on several factors, including the user’s location, the health of
  the endpoint, and the endpoint weights that you configure. This improves the
  availability and performance of your applications. Endpoints can be Network Load
  Balancers, Application Load Balancers, Amazon EC2 instances, or Elastic IP
  addresses.

     A *custom routing* accelerator directs traffic to one of possibly
  thousands of Amazon EC2 instances running in a single or multiple virtual
  private clouds (VPCs). With custom routing, listener ports are mapped to
  statically associate port ranges with VPC subnets, which allows Global
  Accelerator to determine an EC2 instance IP address at the time of connection.
  By default, all port mapping destinations in a VPC subnet can't receive traffic.
  You can choose to configure all destinations in the subnet to receive traffic,
  or to specify individual port mappings that can receive traffic.

  For more information, see [Types of accelerators](https://docs.aws.amazon.com/global-accelerator/latest/dg/introduction-accelerator-types.html).

  ### DNS name

  Global Accelerator assigns each accelerator a default Domain Name System (DNS)
  name, similar to `a1234567890abcdef.awsglobalaccelerator.com`, that points to
  the static IP addresses that Global Accelerator assigns to you or that you
  choose from your own IP address range. Depending on the use case, you can use
  your accelerator's static IP addresses or DNS name to route traffic to your
  accelerator, or set up DNS records to route traffic using your own custom domain
  name.

  ### Network zone

  A network zone services the static IP addresses for your accelerator from a
  unique IP subnet. Similar to an AWS Availability Zone, a network zone is an
  isolated unit with its own set of physical infrastructure. When you configure an
  accelerator, by default, Global Accelerator allocates two IPv4 addresses for it.
  If one IP address from a network zone becomes unavailable due to IP address
  blocking by certain client networks, or network disruptions, then client
  applications can retry on the healthy static IP address from the other isolated
  network zone.

  ### Listener

  A listener processes inbound connections from clients to Global Accelerator,
  based on the port (or port range) and protocol (or protocols) that you
  configure. A listener can be configured for TCP, UDP, or both TCP and UDP
  protocols. Each listener has one or more endpoint groups associated with it, and
  traffic is forwarded to endpoints in one of the groups. You associate endpoint
  groups with listeners by specifying the Regions that you want to distribute
  traffic to. With a standard accelerator, traffic is distributed to optimal
  endpoints within the endpoint groups associated with a listener.

  ### Endpoint group

  Each endpoint group is associated with a specific AWS Region. Endpoint groups
  include one or more endpoints in the Region. With a standard accelerator, you
  can increase or reduce the percentage of traffic that would be otherwise
  directed to an endpoint group by adjusting a setting called a *traffic dial*.
  The traffic dial lets you easily do performance testing or blue/green deployment
  testing, for example, for new releases across different AWS Regions.

  ### Endpoint

  An endpoint is a resource that Global Accelerator directs traffic to.

  Endpoints for standard accelerators can be Network Load Balancers, Application
  Load Balancers, Amazon EC2 instances, or Elastic IP addresses. An Application
  Load Balancer endpoint can be internet-facing or internal. Traffic for standard
  accelerators is routed to endpoints based on the health of the endpoint along
  with configuration options that you choose, such as endpoint weights. For each
  endpoint, you can configure weights, which are numbers that you can use to
  specify the proportion of traffic to route to each one. This can be useful, for
  example, to do performance testing within a Region.

  Endpoints for custom routing accelerators are virtual private cloud (VPC)
  subnets with one or many EC2 instances.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
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
  addresses that can be specified in your subnet. The number of ports required is:
  subnet size times the number of ports per destination EC2 instances. For
  example, a subnet defined as /24 requires a listener port range of at least 255
  ports.

  Note: You must have enough remaining listener ports available to map to the
  subnet ports, or the call will fail with a LimitExceededException.

  By default, all destinations in a subnet in a custom routing accelerator cannot
  receive traffic. To enable all destinations to receive traffic, or to specify
  individual port mappings that can receive traffic, see the [
  AllowCustomRoutingTraffic](https://docs.aws.amazon.com/global-accelerator/latest/api/API_AllowCustomRoutingTraffic.html)
  operation.
  """
  def add_custom_routing_endpoints(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AddCustomRoutingEndpoints", input, options)
  end

  @doc """
  Advertises an IPv4 address range that is provisioned for use with your AWS
  resources through bring your own IP addresses (BYOIP).

  It can take a few minutes before traffic to the specified addresses starts
  routing to AWS because of propagation delays.

  To stop advertising the BYOIP address range, use [
  WithdrawByoipCidr](https://docs.aws.amazon.com/global-accelerator/latest/api/WithdrawByoipCidr.html).

  For more information, see [Bring Your Own IP Addresses (BYOIP)](https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html)
  in the *AWS Global Accelerator Developer Guide*.
  """
  def advertise_byoip_cidr(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AdvertiseByoipCidr", input, options)
  end

  @doc """
  Specify the Amazon EC2 instance (destination) IP addresses and ports for a VPC
  subnet endpoint that can receive traffic for a custom routing accelerator.

  You can allow traffic to all destinations in the subnet endpoint, or allow
  traffic to a specified list of destination IP addresses and ports in the subnet.
  Note that you cannot specify IP addresses or ports outside of the range that you
  configured for the endpoint group.

  After you make changes, you can verify that the updates are complete by checking
  the status of your accelerator: the status changes from IN_PROGRESS to DEPLOYED.
  """
  def allow_custom_routing_traffic(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AllowCustomRoutingTraffic", input, options)
  end

  @doc """
  Create an accelerator.

  An accelerator includes one or more listeners that process inbound connections
  and direct traffic to one or more endpoint groups, each of which includes
  endpoints, such as Network Load Balancers.

  Global Accelerator is a global service that supports endpoints in multiple AWS
  Regions but you must specify the US West (Oregon) Region to create or update
  accelerators.
  """
  def create_accelerator(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateAccelerator", input, options)
  end

  @doc """
  Create a custom routing accelerator.

  A custom routing accelerator directs traffic to one of possibly thousands of
  Amazon EC2 instance destinations running in a single or multiple virtual private
  clouds (VPC) subnet endpoints.

  Be aware that, by default, all destination EC2 instances in a VPC subnet
  endpoint cannot receive traffic. To enable all destinations to receive traffic,
  or to specify individual port mappings that can receive traffic, see the [
  AllowCustomRoutingTraffic](https://docs.aws.amazon.com/global-accelerator/latest/api/API_AllowCustomRoutingTraffic.html)
  operation.

  Global Accelerator is a global service that supports endpoints in multiple AWS
  Regions but you must specify the US West (Oregon) Region to create or update
  accelerators.
  """
  def create_custom_routing_accelerator(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateCustomRoutingAccelerator", input, options)
  end

  @doc """
  Create an endpoint group for the specified listener for a custom routing
  accelerator.

  An endpoint group is a collection of endpoints in one AWS Region.
  """
  def create_custom_routing_endpoint_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateCustomRoutingEndpointGroup", input, options)
  end

  @doc """
  Create a listener to process inbound connections from clients to a custom
  routing accelerator.

  Connections arrive to assigned static IP addresses on the port range that you
  specify.
  """
  def create_custom_routing_listener(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateCustomRoutingListener", input, options)
  end

  @doc """
  Create an endpoint group for the specified listener.

  An endpoint group is a collection of endpoints in one AWS Region. A resource
  must be valid and active when you add it as an endpoint.
  """
  def create_endpoint_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateEndpointGroup", input, options)
  end

  @doc """
  Create a listener to process inbound connections from clients to an accelerator.

  Connections arrive to assigned static IP addresses on a port, port range, or
  list of port ranges that you specify.
  """
  def create_listener(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateListener", input, options)
  end

  @doc """
  Delete an accelerator.

  Before you can delete an accelerator, you must disable it and remove all
  dependent resources (listeners and endpoint groups). To disable the accelerator,
  update the accelerator to set `Enabled` to false.

  When you create an accelerator, by default, Global Accelerator provides you with
  a set of two static IP addresses. Alternatively, you can bring your own IP
  address ranges to Global Accelerator and assign IP addresses from those ranges.

  The IP addresses are assigned to your accelerator for as long as it exists, even
  if you disable the accelerator and it no longer accepts or routes traffic.
  However, when you *delete* an accelerator, you lose the static IP addresses that
  are assigned to the accelerator, so you can no longer route traffic by using
  them. As a best practice, ensure that you have permissions in place to avoid
  inadvertently deleting accelerators. You can use IAM policies with Global
  Accelerator to limit the users who have permissions to delete an accelerator.
  For more information, see [Authentication and Access Control](https://docs.aws.amazon.com/global-accelerator/latest/dg/auth-and-access-control.html)
  in the *AWS Global Accelerator Developer Guide*.
  """
  def delete_accelerator(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteAccelerator", input, options)
  end

  @doc """
  Delete a custom routing accelerator.

  Before you can delete an accelerator, you must disable it and remove all
  dependent resources (listeners and endpoint groups). To disable the accelerator,
  update the accelerator to set `Enabled` to false.

  When you create a custom routing accelerator, by default, Global Accelerator
  provides you with a set of two static IP addresses.

  The IP addresses are assigned to your accelerator for as long as it exists, even
  if you disable the accelerator and it no longer accepts or routes traffic.
  However, when you *delete* an accelerator, you lose the static IP addresses that
  are assigned to the accelerator, so you can no longer route traffic by using
  them. As a best practice, ensure that you have permissions in place to avoid
  inadvertently deleting accelerators. You can use IAM policies with Global
  Accelerator to limit the users who have permissions to delete an accelerator.
  For more information, see [Authentication and Access Control](https://docs.aws.amazon.com/global-accelerator/latest/dg/auth-and-access-control.html)
  in the *AWS Global Accelerator Developer Guide*.
  """
  def delete_custom_routing_accelerator(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteCustomRoutingAccelerator", input, options)
  end

  @doc """
  Delete an endpoint group from a listener for a custom routing accelerator.
  """
  def delete_custom_routing_endpoint_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteCustomRoutingEndpointGroup", input, options)
  end

  @doc """
  Delete a listener for a custom routing accelerator.
  """
  def delete_custom_routing_listener(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteCustomRoutingListener", input, options)
  end

  @doc """
  Delete an endpoint group from a listener.
  """
  def delete_endpoint_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteEndpointGroup", input, options)
  end

  @doc """
  Delete a listener from an accelerator.
  """
  def delete_listener(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteListener", input, options)
  end

  @doc """
  Specify the Amazon EC2 instance (destination) IP addresses and ports for a VPC
  subnet endpoint that cannot receive traffic for a custom routing accelerator.

  You can deny traffic to all destinations in the VPC endpoint, or deny traffic to
  a specified list of destination IP addresses and ports. Note that you cannot
  specify IP addresses or ports outside of the range that you configured for the
  endpoint group.

  After you make changes, you can verify that the updates are complete by checking
  the status of your accelerator: the status changes from IN_PROGRESS to DEPLOYED.
  """
  def deny_custom_routing_traffic(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DenyCustomRoutingTraffic", input, options)
  end

  @doc """
  Releases the specified address range that you provisioned to use with your AWS
  resources through bring your own IP addresses (BYOIP) and deletes the
  corresponding address pool.

  Before you can release an address range, you must stop advertising it by using
  [WithdrawByoipCidr](https://docs.aws.amazon.com/global-accelerator/latest/api/WithdrawByoipCidr.html) and you must not have any accelerators that are using static IP addresses
  allocated from its address range.

  For more information, see [Bring Your Own IP Addresses
  (BYOIP)](https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html)
  in the *AWS Global Accelerator Developer Guide*.
  """
  def deprovision_byoip_cidr(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeprovisionByoipCidr", input, options)
  end

  @doc """
  Describe an accelerator.
  """
  def describe_accelerator(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeAccelerator", input, options)
  end

  @doc """
  Describe the attributes of an accelerator.
  """
  def describe_accelerator_attributes(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeAcceleratorAttributes", input, options)
  end

  @doc """
  Describe a custom routing accelerator.
  """
  def describe_custom_routing_accelerator(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeCustomRoutingAccelerator", input, options)
  end

  @doc """
  Describe the attributes of a custom routing accelerator.
  """
  def describe_custom_routing_accelerator_attributes(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "DescribeCustomRoutingAcceleratorAttributes",
      input,
      options
    )
  end

  @doc """
  Describe an endpoint group for a custom routing accelerator.
  """
  def describe_custom_routing_endpoint_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeCustomRoutingEndpointGroup", input, options)
  end

  @doc """
  The description of a listener for a custom routing accelerator.
  """
  def describe_custom_routing_listener(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeCustomRoutingListener", input, options)
  end

  @doc """
  Describe an endpoint group.
  """
  def describe_endpoint_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeEndpointGroup", input, options)
  end

  @doc """
  Describe a listener.
  """
  def describe_listener(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeListener", input, options)
  end

  @doc """
  List the accelerators for an AWS account.
  """
  def list_accelerators(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListAccelerators", input, options)
  end

  @doc """
  Lists the IP address ranges that were specified in calls to
  [ProvisionByoipCidr](https://docs.aws.amazon.com/global-accelerator/latest/api/ProvisionByoipCidr.html),
  including the current state and a history of state changes.
  """
  def list_byoip_cidrs(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListByoipCidrs", input, options)
  end

  @doc """
  List the custom routing accelerators for an AWS account.
  """
  def list_custom_routing_accelerators(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListCustomRoutingAccelerators", input, options)
  end

  @doc """
  List the endpoint groups that are associated with a listener for a custom
  routing accelerator.
  """
  def list_custom_routing_endpoint_groups(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListCustomRoutingEndpointGroups", input, options)
  end

  @doc """
  List the listeners for a custom routing accelerator.
  """
  def list_custom_routing_listeners(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListCustomRoutingListeners", input, options)
  end

  @doc """
  Provides a complete mapping from the public accelerator IP address and port to
  destination EC2 instance IP addresses and ports in the virtual public cloud
  (VPC) subnet endpoint for a custom routing accelerator.

  For each subnet endpoint that you add, Global Accelerator creates a new static
  port mapping for the accelerator. The port mappings don't change after Global
  Accelerator generates them, so you can retrieve and cache the full mapping on
  your servers.

  If you remove a subnet from your accelerator, Global Accelerator removes
  (reclaims) the port mappings. If you add a subnet to your accelerator, Global
  Accelerator creates new port mappings (the existing ones don't change). If you
  add or remove EC2 instances in your subnet, the port mappings don't change,
  because the mappings are created when you add the subnet to Global Accelerator.

  The mappings also include a flag for each destination denoting which destination
  IP addresses and ports are allowed or denied traffic.
  """
  def list_custom_routing_port_mappings(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListCustomRoutingPortMappings", input, options)
  end

  @doc """
  List the port mappings for a specific EC2 instance (destination) in a VPC subnet
  endpoint.

  The response is the mappings for one destination IP address. This is useful when
  your subnet endpoint has mappings that span multiple custom routing accelerators
  in your account, or for scenarios where you only want to list the port mappings
  for a specific destination instance.
  """
  def list_custom_routing_port_mappings_by_destination(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "ListCustomRoutingPortMappingsByDestination",
      input,
      options
    )
  end

  @doc """
  List the endpoint groups that are associated with a listener.
  """
  def list_endpoint_groups(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListEndpointGroups", input, options)
  end

  @doc """
  List the listeners for an accelerator.
  """
  def list_listeners(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListListeners", input, options)
  end

  @doc """
  List all tags for an accelerator.

  For more information, see [Tagging in AWS Global Accelerator](https://docs.aws.amazon.com/global-accelerator/latest/dg/tagging-in-global-accelerator.html)
  in the *AWS Global Accelerator Developer Guide*.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListTagsForResource", input, options)
  end

  @doc """
  Provisions an IP address range to use with your AWS resources through bring your
  own IP addresses (BYOIP) and creates a corresponding address pool.

  After the address range is provisioned, it is ready to be advertised using [
  AdvertiseByoipCidr](https://docs.aws.amazon.com/global-accelerator/latest/api/AdvertiseByoipCidr.html).

  For more information, see [Bring Your Own IP Addresses (BYOIP)](https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html)
  in the *AWS Global Accelerator Developer Guide*.
  """
  def provision_byoip_cidr(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ProvisionByoipCidr", input, options)
  end

  @doc """
  Remove endpoints from a custom routing accelerator.
  """
  def remove_custom_routing_endpoints(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RemoveCustomRoutingEndpoints", input, options)
  end

  @doc """
  Add tags to an accelerator resource.

  For more information, see [Tagging in AWS Global Accelerator](https://docs.aws.amazon.com/global-accelerator/latest/dg/tagging-in-global-accelerator.html)
  in the *AWS Global Accelerator Developer Guide*.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "TagResource", input, options)
  end

  @doc """
  Remove tags from a Global Accelerator resource.

  When you specify a tag key, the action removes both that key and its associated
  value. The operation succeeds even if you attempt to remove tags from an
  accelerator that was already removed.

  For more information, see [Tagging in AWS Global Accelerator](https://docs.aws.amazon.com/global-accelerator/latest/dg/tagging-in-global-accelerator.html)
  in the *AWS Global Accelerator Developer Guide*.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UntagResource", input, options)
  end

  @doc """
  Update an accelerator.

  Global Accelerator is a global service that supports endpoints in multiple AWS
  Regions but you must specify the US West (Oregon) Region to create or update
  accelerators.
  """
  def update_accelerator(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateAccelerator", input, options)
  end

  @doc """
  Update the attributes for an accelerator.
  """
  def update_accelerator_attributes(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateAcceleratorAttributes", input, options)
  end

  @doc """
  Update a custom routing accelerator.
  """
  def update_custom_routing_accelerator(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateCustomRoutingAccelerator", input, options)
  end

  @doc """
  Update the attributes for a custom routing accelerator.
  """
  def update_custom_routing_accelerator_attributes(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "UpdateCustomRoutingAcceleratorAttributes",
      input,
      options
    )
  end

  @doc """
  Update a listener for a custom routing accelerator.
  """
  def update_custom_routing_listener(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateCustomRoutingListener", input, options)
  end

  @doc """
  Update an endpoint group.

  A resource must be valid and active when you add it as an endpoint.
  """
  def update_endpoint_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateEndpointGroup", input, options)
  end

  @doc """
  Update a listener.
  """
  def update_listener(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateListener", input, options)
  end

  @doc """
  Stops advertising an address range that is provisioned as an address pool.

  You can perform this operation at most once every 10 seconds, even if you
  specify different address ranges each time.

  It can take a few minutes before traffic to the specified addresses stops
  routing to AWS because of propagation delays.

  For more information, see [Bring Your Own IP Addresses (BYOIP)](https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html)
  in the *AWS Global Accelerator Developer Guide*.
  """
  def withdraw_byoip_cidr(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "WithdrawByoipCidr", input, options)
  end
end