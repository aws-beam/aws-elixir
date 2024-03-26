# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.EC2 do
  @moduledoc """
  Amazon Elastic Compute Cloud

  You can access the features of Amazon Elastic Compute Cloud (Amazon EC2)
  programmatically.

  For more information,
  see the [Amazon EC2 Developer Guide](https://docs.aws.amazon.com/ec2/latest/devguide).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      api_version: "2016-11-15",
      content_type: "application/x-www-form-urlencoded",
      credential_scope: nil,
      endpoint_prefix: "ec2",
      global?: false,
      protocol: "ec2",
      service_id: "EC2",
      signature_version: "v4",
      signing_name: "ec2",
      target_prefix: "AmazonEC2"
    }
  end

  @doc """
  Accepts an Elastic IP address transfer.

  For more information, see [Accept a transferred Elastic IP address](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-eips.html#using-instance-addressing-eips-transfer-accept)
  in the *Amazon Virtual Private Cloud User Guide*.
  """
  def accept_address_transfer(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AcceptAddressTransfer", input, options)
  end

  @doc """
  Accepts the Convertible Reserved Instance exchange quote described in the
  `GetReservedInstancesExchangeQuote` call.
  """
  def accept_reserved_instances_exchange_quote(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AcceptReservedInstancesExchangeQuote", input, options)
  end

  @doc """
  Accepts a request to associate subnets with a transit gateway multicast domain.
  """
  def accept_transit_gateway_multicast_domain_associations(
        %Client{} = client,
        input,
        options \\ []
      ) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "AcceptTransitGatewayMulticastDomainAssociations",
      input,
      options
    )
  end

  @doc """
  Accepts a transit gateway peering attachment request.

  The peering attachment must be
  in the `pendingAcceptance` state.
  """
  def accept_transit_gateway_peering_attachment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AcceptTransitGatewayPeeringAttachment", input, options)
  end

  @doc """
  Accepts a request to attach a VPC to a transit gateway.

  The VPC attachment must be in the `pendingAcceptance` state.
  Use `DescribeTransitGatewayVpcAttachments` to view your pending VPC attachment
  requests.
  Use `RejectTransitGatewayVpcAttachment` to reject a VPC attachment request.
  """
  def accept_transit_gateway_vpc_attachment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AcceptTransitGatewayVpcAttachment", input, options)
  end

  @doc """
  Accepts connection requests to your VPC endpoint service.
  """
  def accept_vpc_endpoint_connections(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AcceptVpcEndpointConnections", input, options)
  end

  @doc """
  Accept a VPC peering connection request.

  To accept a request, the VPC peering connection must
  be in the `pending-acceptance` state, and you must be the owner of the peer VPC.
  Use `DescribeVpcPeeringConnections` to view your outstanding VPC
  peering connection requests.

  For an inter-Region VPC peering connection request, you must accept the VPC
  peering
  connection in the Region of the accepter VPC.
  """
  def accept_vpc_peering_connection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AcceptVpcPeeringConnection", input, options)
  end

  @doc """
  Advertises an IPv4 or IPv6 address range that is provisioned for use with your
  Amazon Web Services resources through
  bring your own IP addresses (BYOIP).

  You can perform this operation at most once every 10 seconds, even if you
  specify different
  address ranges each time.

  We recommend that you stop advertising the BYOIP CIDR from other locations when
  you advertise
  it from Amazon Web Services. To minimize down time, you can configure your
  Amazon Web Services resources to use an address from a
  BYOIP CIDR before it is advertised, and then simultaneously stop advertising it
  from the current
  location and start advertising it through Amazon Web Services.

  It can take a few minutes before traffic to the specified addresses starts
  routing to Amazon Web Services
  because of BGP propagation delays.

  To stop advertising the BYOIP CIDR, use `WithdrawByoipCidr`.
  """
  def advertise_byoip_cidr(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AdvertiseByoipCidr", input, options)
  end

  @doc """
  Allocates an Elastic IP address to your Amazon Web Services account.

  After you allocate the Elastic IP address you can associate
  it with an instance or network interface. After you release an Elastic IP
  address, it is released to the IP address
  pool and can be allocated to a different Amazon Web Services account.

  You can allocate an Elastic IP address from an address pool owned by Amazon Web
  Services or from an address pool created
  from a public IPv4 address range that you have brought to Amazon Web Services
  for use with your Amazon Web Services resources using bring your own
  IP addresses (BYOIP). For more information, see [Bring Your Own IP Addresses (BYOIP)](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-byoip.html) in
  the *Amazon Elastic Compute Cloud User Guide*.

  If you release an Elastic IP address, you might be able to recover it. You
  cannot recover
  an Elastic IP address that you released after it is allocated to another Amazon
  Web Services account. To attempt to recover an Elastic IP address that you
  released, specify
  it in this operation.

  For more information, see [Elastic IP Addresses](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html)
  in the *Amazon Elastic Compute Cloud User Guide*.

  You can allocate a carrier IP address which is a public IP address from a
  telecommunication carrier,
  to a network interface which resides in a subnet in a Wavelength Zone (for
  example an EC2 instance).
  """
  def allocate_address(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AllocateAddress", input, options)
  end

  @doc """
  Allocates a Dedicated Host to your account.

  At a minimum, specify the supported
  instance type or instance family, the Availability Zone in which to allocate the
  host,
  and the number of hosts to allocate.
  """
  def allocate_hosts(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AllocateHosts", input, options)
  end

  @doc """
  Allocate a CIDR from an IPAM pool.

  The Region you use should be the IPAM pool locale. The locale is the Amazon Web
  Services Region where this IPAM pool is available for allocations.

  In IPAM, an allocation is a CIDR assignment from an IPAM pool to another IPAM
  pool or to a resource. For more information, see [Allocate CIDRs](https://docs.aws.amazon.com/vpc/latest/ipam/allocate-cidrs-ipam.html) in
  the *Amazon VPC IPAM User Guide*.

  This action creates an allocation with strong consistency. The returned CIDR
  will not overlap with any other allocations from the same pool.
  """
  def allocate_ipam_pool_cidr(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AllocateIpamPoolCidr", input, options)
  end

  @doc """
  Applies a security group to the association between the target network and the
  Client VPN endpoint.

  This action replaces the existing
  security groups with the specified security groups.
  """
  def apply_security_groups_to_client_vpn_target_network(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "ApplySecurityGroupsToClientVpnTargetNetwork",
      input,
      options
    )
  end

  @doc """
  Assigns one or more IPv6 addresses to the specified network interface.

  You can
  specify one or more specific IPv6 addresses, or you can specify the number of
  IPv6
  addresses to be automatically assigned from within the subnet's IPv6 CIDR block
  range.
  You can assign as many IPv6 addresses to a network interface as you can assign
  private
  IPv4 addresses, and the limit varies per instance type. For information, see [IP Addresses Per Network Interface Per Instance
  Type](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html#AvailableIpPerENI)
  in the *Amazon Elastic Compute Cloud User Guide*.

  You must specify either the IPv6 addresses or the IPv6 address count in the
  request.

  You can optionally use Prefix Delegation on the network interface. You must
  specify
  either the IPV6 Prefix Delegation prefixes, or the IPv6 Prefix Delegation count.
  For
  information, see [
  Assigning prefixes to Amazon EC2 network
  interfaces](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-prefix-eni.html)
  in the *Amazon Elastic Compute Cloud User Guide*.
  """
  def assign_ipv6_addresses(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssignIpv6Addresses", input, options)
  end

  @doc """
  Assigns one or more secondary private IP addresses to the specified network
  interface.

  You can specify one or more specific secondary IP addresses, or you can specify
  the number
  of secondary IP addresses to be automatically assigned within the subnet's CIDR
  block range.
  The number of secondary IP addresses that you can assign to an instance varies
  by instance type.
  For information about instance types, see [Instance Types](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html)
  in the *Amazon Elastic Compute Cloud User Guide*. For more information about
  Elastic IP addresses, see [Elastic IP Addresses](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html)
  in the *Amazon Elastic Compute Cloud User Guide*.

  When you move a secondary private IP address to another network interface, any
  Elastic IP address
  that is associated with the IP address is also moved.

  Remapping an IP address is an asynchronous operation. When you move an IP
  address from one network
  interface to another, check `network/interfaces/macs/mac/local-ipv4s` in the
  instance
  metadata to confirm that the remapping is complete.

  You must specify either the IP addresses or the IP address count in the request.

  You can optionally use Prefix Delegation on the network interface. You must
  specify
  either the IPv4 Prefix Delegation prefixes, or the IPv4 Prefix Delegation count.
  For
  information, see [
  Assigning prefixes to Amazon EC2 network
  interfaces](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-prefix-eni.html)
  in the *Amazon Elastic Compute Cloud User Guide*.
  """
  def assign_private_ip_addresses(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssignPrivateIpAddresses", input, options)
  end

  @doc """
  Assigns one or more private IPv4 addresses to a private NAT gateway.

  For more information, see
  [Work with NAT gateways](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-nat-gateway.html#nat-gateway-working-with)
  in the *Amazon VPC User Guide*.
  """
  def assign_private_nat_gateway_address(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssignPrivateNatGatewayAddress", input, options)
  end

  @doc """
  Associates an Elastic IP address, or carrier IP address (for instances that are
  in
  subnets in Wavelength Zones) with an instance or a network interface.

  Before you can use an
  Elastic IP address, you must allocate it to your account.

  If the Elastic IP address is already
  associated with a different instance, it is disassociated from that instance and
  associated
  with the specified instance. If you associate an Elastic IP address with an
  instance that has
  an existing Elastic IP address, the existing address is disassociated from the
  instance, but
  remains allocated to your account.

  [Subnets in Wavelength Zones] You can associate an IP address from the telecommunication
  carrier to the instance or network interface.

  You cannot associate an Elastic IP address with an interface in a different
  network border group.

  This is an idempotent operation. If you perform the operation more than once,
  Amazon EC2
  doesn't return an error, and you may be charged for each time the Elastic IP
  address is
  remapped to the same instance. For more information, see the *Elastic IP
  Addresses* section of [Amazon EC2
  Pricing](http://aws.amazon.com/ec2/pricing/).
  """
  def associate_address(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssociateAddress", input, options)
  end

  @doc """
  Associates a target network with a Client VPN endpoint.

  A target network is a subnet in a VPC. You can associate multiple subnets from
  the same VPC with a Client VPN endpoint. You can associate only one subnet in
  each Availability Zone. We recommend that you associate at least two subnets to
  provide Availability Zone redundancy.

  If you specified a VPC when you created the Client VPN endpoint or if you have
  previous subnet associations, the specified subnet must be in the same VPC. To
  specify a subnet that's in a different VPC, you must first modify the Client VPN
  endpoint (`ModifyClientVpnEndpoint`) and change the VPC that's associated with
  it.
  """
  def associate_client_vpn_target_network(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssociateClientVpnTargetNetwork", input, options)
  end

  @doc """
  Associates a set of DHCP options (that you've previously created) with the
  specified VPC, or associates no DHCP options with the VPC.

  After you associate the options with the VPC, any existing instances and all new
  instances that you launch in that VPC use the options. You don't need to restart
  or relaunch the instances. They automatically pick up the changes within a few
  hours, depending on how frequently the instance renews its DHCP lease. You can
  explicitly renew the lease using the operating system on the instance.

  For more information, see [DHCP options sets](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_DHCP_Options.html)
  in the *Amazon VPC User Guide*.
  """
  def associate_dhcp_options(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssociateDhcpOptions", input, options)
  end

  @doc """
  Associates an Identity and Access Management (IAM) role with an Certificate
  Manager (ACM) certificate.

  This enables the certificate to be used by the ACM for Nitro Enclaves
  application inside an enclave. For more
  information, see [Certificate Manager for Nitro Enclaves](https://docs.aws.amazon.com/enclaves/latest/user/nitro-enclave-refapp.html)
  in the *Amazon Web Services Nitro Enclaves
  User Guide*.

  When the IAM role is associated with the ACM certificate, the certificate,
  certificate chain, and encrypted
  private key are placed in an Amazon S3 location that only the associated IAM
  role can access. The private key of the certificate
  is encrypted with an Amazon Web Services managed key that has an attached
  attestation-based key policy.

  To enable the IAM role to access the Amazon S3 object, you must grant it
  permission to call `s3:GetObject`
  on the Amazon S3 bucket returned by the command. To enable the IAM role to
  access the KMS key,
  you must grant it permission to call `kms:Decrypt` on the KMS key returned by
  the command.
  For more information, see [
  Grant the role permission to access the certificate and encryption
  key](https://docs.aws.amazon.com/enclaves/latest/user/nitro-enclave-refapp.html#add-policy)
  in the
  *Amazon Web Services Nitro Enclaves User Guide*.
  """
  def associate_enclave_certificate_iam_role(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssociateEnclaveCertificateIamRole", input, options)
  end

  @doc """
  Associates an IAM instance profile with a running or stopped instance.

  You cannot
  associate more than one IAM instance profile with an instance.
  """
  def associate_iam_instance_profile(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssociateIamInstanceProfile", input, options)
  end

  @doc """
  Associates one or more targets with an event window.

  Only one type of target (instance IDs,
  Dedicated Host IDs, or tags) can be specified with an event window.

  For more information, see [Define event windows for scheduled events](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/event-windows.html)
  in the *Amazon EC2 User Guide*.
  """
  def associate_instance_event_window(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssociateInstanceEventWindow", input, options)
  end

  @doc """
  Associates your Autonomous System Number (ASN) with a BYOIP CIDR that you own in
  the same Amazon Web Services Region.

  For more information, see [Tutorial: Bring your ASN to IPAM](https://docs.aws.amazon.com/vpc/latest/ipam/tutorials-byoasn.html) in the
  *Amazon VPC IPAM guide*.

  After the association succeeds, the ASN is eligible for
  advertisement. You can view the association with
  [DescribeByoipCidrs](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeByoipCidrs.html). You can advertise the CIDR with
  [AdvertiseByoipCidr](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_AdvertiseByoipCidr.html).
  """
  def associate_ipam_byoasn(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssociateIpamByoasn", input, options)
  end

  @doc """
  Associates an IPAM resource discovery with an Amazon VPC IPAM.

  A resource discovery is an IPAM component that enables IPAM to manage and
  monitor resources that belong to the owning account.
  """
  def associate_ipam_resource_discovery(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssociateIpamResourceDiscovery", input, options)
  end

  @doc """
  Associates Elastic IP addresses (EIPs) and private IPv4 addresses with a public
  NAT gateway.

  For more information,
  see [Work with NAT gateways](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-nat-gateway.html#nat-gateway-working-with)
  in the *Amazon VPC User Guide*.

  By default, you can associate up to 2 Elastic IP addresses per public NAT
  gateway. You can increase the limit by requesting a quota adjustment. For more
  information, see [Elastic IP address quotas](https://docs.aws.amazon.com/vpc/latest/userguide/amazon-vpc-limits.html#vpc-limits-eips)
  in the *Amazon VPC User Guide*.

  When you associate an EIP or secondary EIPs with a public NAT gateway, the
  network border group of the EIPs must match the network border group of the
  Availability Zone (AZ) that the public NAT gateway is in. If it's not the same,
  the EIP will fail to associate. You can see the network border group for the
  subnet's AZ by viewing the details of the subnet. Similarly, you can view the
  network border group of an EIP by viewing the details of the EIP address. For
  more information about network border groups and EIPs, see [Allocate an Elastic IP
  address](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-eips.html#allocate-eip)
  in the *Amazon VPC User Guide*.
  """
  def associate_nat_gateway_address(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssociateNatGatewayAddress", input, options)
  end

  @doc """
  Associates a subnet in your VPC or an internet gateway or virtual private
  gateway
  attached to your VPC with a route table in your VPC.

  This association causes traffic
  from the subnet or gateway to be routed according to the routes in the route
  table. The
  action returns an association ID, which you need in order to disassociate the
  route
  table later. A route table can be associated with multiple subnets.

  For more information, see [Route tables](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Route_Tables.html)
  in the
  *Amazon VPC User Guide*.
  """
  def associate_route_table(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssociateRouteTable", input, options)
  end

  @doc """
  Associates a CIDR block with your subnet.

  You can only associate a single IPv6 CIDR
  block with your subnet.
  """
  def associate_subnet_cidr_block(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssociateSubnetCidrBlock", input, options)
  end

  @doc """
  Associates the specified subnets and transit gateway attachments with the
  specified transit gateway multicast domain.

  The transit gateway attachment must be in the available state before you can add
  a resource. Use
  [DescribeTransitGatewayAttachments](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeTransitGatewayAttachments.html)
  to see the state of the attachment.
  """
  def associate_transit_gateway_multicast_domain(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssociateTransitGatewayMulticastDomain", input, options)
  end

  @doc """
  Associates the specified transit gateway attachment with a transit gateway
  policy table.
  """
  def associate_transit_gateway_policy_table(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssociateTransitGatewayPolicyTable", input, options)
  end

  @doc """
  Associates the specified attachment with the specified transit gateway route
  table.

  You can
  associate only one route table with an attachment.
  """
  def associate_transit_gateway_route_table(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssociateTransitGatewayRouteTable", input, options)
  end

  @doc """
  Associates a branch network interface with a trunk network interface.

  Before you create the association, run the
  [create-network-interface](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateNetworkInterface.html)
  command and set
  `--interface-type` to `trunk`. You must also create a network interface for each
  branch network interface that you want to associate with the trunk network
  interface.
  """
  def associate_trunk_interface(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssociateTrunkInterface", input, options)
  end

  @doc """
  Associates a CIDR block with your VPC.

  You can associate a secondary IPv4 CIDR block,
  an Amazon-provided IPv6 CIDR block, or an IPv6 CIDR block from an IPv6 address
  pool that
  you provisioned through bring your own IP addresses
  ([BYOIP](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-byoip.html)).   You must specify one of the following in the request: an IPv4 CIDR block, an
  IPv6
  pool, or an Amazon-provided IPv6 CIDR block.

  For more information about associating CIDR blocks with your VPC and applicable
  restrictions, see [IP addressing for your VPCs and
  subnets](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-ip-addressing.html)
  in the *Amazon VPC User Guide*.
  """
  def associate_vpc_cidr_block(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssociateVpcCidrBlock", input, options)
  end

  @doc """

  This action is deprecated.

  Links an EC2-Classic instance to a ClassicLink-enabled VPC through one or more
  of the VPC
  security groups. You cannot link an EC2-Classic instance to more than one VPC at
  a time. You
  can only link an instance that's in the `running` state. An instance is
  automatically unlinked from a VPC when it's stopped - you can link it to the VPC
  again when
  you restart it.

  After you've linked an instance, you cannot change the VPC security groups that
  are associated with it. To change the security groups, you must first unlink the
  instance, and then link it again.

  Linking your instance to a VPC is sometimes referred to as *attaching* your
  instance.
  """
  def attach_classic_link_vpc(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AttachClassicLinkVpc", input, options)
  end

  @doc """
  Attaches an internet gateway or a virtual private gateway to a VPC, enabling
  connectivity
  between the internet and the VPC.

  For more information, see [Internet gateways](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Internet_Gateway.html)
  in the
  *Amazon VPC User Guide*.
  """
  def attach_internet_gateway(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AttachInternetGateway", input, options)
  end

  @doc """
  Attaches a network interface to an instance.
  """
  def attach_network_interface(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AttachNetworkInterface", input, options)
  end

  @doc """
  Attaches the specified Amazon Web Services Verified Access trust provider to the
  specified Amazon Web Services Verified Access instance.
  """
  def attach_verified_access_trust_provider(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AttachVerifiedAccessTrustProvider", input, options)
  end

  @doc """
  Attaches an EBS volume to a running or stopped instance and exposes it to the
  instance
  with the specified device name.

  Encrypted EBS volumes must be attached to instances that support Amazon EBS
  encryption. For
  more information, see [Amazon EBS encryption](https://docs.aws.amazon.com/ebs/latest/userguide/ebs-encryption.html)
  in the *Amazon EBS User Guide*.

  After you attach an EBS volume, you must make it available. For more
  information, see
  [Make an EBS volume available for use](https://docs.aws.amazon.com/ebs/latest/userguide/ebs-using-volumes.html).

  If a volume has an Amazon Web Services Marketplace product code:

    *
  The volume can be attached only to a stopped instance.

    *
  Amazon Web Services Marketplace product codes are copied from the volume to the
  instance.

    *
  You must be subscribed to the product.

    *
  The instance type and operating system of the instance must support the product.
  For
  example, you can't detach a volume from a Windows instance and attach it to a
  Linux
  instance.

  For more information, see [Attach an Amazon EBS volume to an instance](https://docs.aws.amazon.com/ebs/latest/userguide/ebs-attaching-volume.html)
  in the
  *Amazon EBS User Guide*.
  """
  def attach_volume(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AttachVolume", input, options)
  end

  @doc """
  Attaches a virtual private gateway to a VPC.

  You can attach one virtual private
  gateway to one VPC at a time.

  For more information, see [Amazon Web Services Site-to-Site VPN](https://docs.aws.amazon.com/vpn/latest/s2svpn/VPC_VPN.html) in the *Amazon
  Web Services Site-to-Site VPN
  User Guide*.
  """
  def attach_vpn_gateway(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AttachVpnGateway", input, options)
  end

  @doc """
  Adds an ingress authorization rule to a Client VPN endpoint.

  Ingress authorization rules act as
  firewall rules that grant access to networks. You must configure ingress
  authorization rules to
  enable clients to access resources in Amazon Web Services or on-premises
  networks.
  """
  def authorize_client_vpn_ingress(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AuthorizeClientVpnIngress", input, options)
  end

  @doc """
  Adds the specified outbound (egress) rules to a security group.

  An outbound rule permits instances to send traffic to the specified IPv4 or IPv6
  address ranges, the IP address ranges specified by a prefix list, or the
  instances
  that are associated with a source security group. For more information, see
  [Security group rules](https://docs.aws.amazon.com/vpc/latest/userguide/security-group-rules.html).

  You must specify exactly one of the following destinations: an IPv4 or IPv6
  address range,
  a prefix list, or a security group. You must specify a protocol for each rule
  (for example, TCP).
  If the protocol is TCP or UDP, you must also specify a port or port range. If
  the protocol is
  ICMP or ICMPv6, you must also specify the ICMP type and code.

  Rule changes are propagated to instances associated with the security group as
  quickly
  as possible. However, a small delay might occur.

  For examples of rules that you can add to security groups for specific access
  scenarios,
  see [Security group rules for different use cases](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/security-group-rules-reference.html)
  in the *Amazon EC2 User Guide*.

  For information about security group quotas, see [Amazon VPC quotas](https://docs.aws.amazon.com/vpc/latest/userguide/amazon-vpc-limits.html)
  in the *Amazon VPC User Guide*.
  """
  def authorize_security_group_egress(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AuthorizeSecurityGroupEgress", input, options)
  end

  @doc """
  Adds the specified inbound (ingress) rules to a security group.

  An inbound rule permits instances to receive traffic from the specified IPv4 or
  IPv6
  address range, the IP address ranges that are specified by a prefix list, or the
  instances
  that are associated with a destination security group. For more information, see
  [Security group rules](https://docs.aws.amazon.com/vpc/latest/userguide/security-group-rules.html).

  You must specify exactly one of the following sources: an IPv4 or IPv6 address
  range,
  a prefix list, or a security group. You must specify a protocol for each rule
  (for example, TCP).
  If the protocol is TCP or UDP, you must also specify a port or port range. If
  the protocol is
  ICMP or ICMPv6, you must also specify the ICMP/ICMPv6 type and code.

  Rule changes are propagated to instances associated with the security group as
  quickly
  as possible. However, a small delay might occur.

  For examples of rules that you can add to security groups for specific access
  scenarios,
  see [Security group rules for different use cases](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/security-group-rules-reference.html)
  in the *Amazon EC2 User Guide*.

  For more information about security group quotas, see [Amazon VPC quotas](https://docs.aws.amazon.com/vpc/latest/userguide/amazon-vpc-limits.html)
  in the *Amazon VPC User Guide*.
  """
  def authorize_security_group_ingress(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AuthorizeSecurityGroupIngress", input, options)
  end

  @doc """
  Bundles an Amazon instance store-backed Windows instance.

  During bundling, only the root device volume (C:\) is bundled. Data on other
  instance store volumes is not preserved.

  This action is not applicable for Linux/Unix instances or Windows instances that
  are backed by Amazon EBS.
  """
  def bundle_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BundleInstance", input, options)
  end

  @doc """
  Cancels a bundling operation for an instance store-backed Windows instance.
  """
  def cancel_bundle_task(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CancelBundleTask", input, options)
  end

  @doc """
  Cancels the specified Capacity Reservation, releases the reserved capacity, and
  changes the Capacity Reservation's state to
  `cancelled`.

  Instances running in the reserved capacity continue running until you stop them.
  Stopped
  instances that target the Capacity Reservation can no longer launch. Modify
  these instances to either
  target a different Capacity Reservation, launch On-Demand Instance capacity, or
  run in any open Capacity Reservation
  that has matching attributes and sufficient capacity.
  """
  def cancel_capacity_reservation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CancelCapacityReservation", input, options)
  end

  @doc """
  Cancels one or more Capacity Reservation Fleets.

  When you cancel a Capacity Reservation
  Fleet, the following happens:

    *
  The Capacity Reservation Fleet's status changes to `cancelled`.

    *
  The individual Capacity Reservations in the Fleet are cancelled. Instances
  running
  in the Capacity Reservations at the time of cancelling the Fleet continue to run
  in
  shared capacity.

    *
  The Fleet stops creating new Capacity Reservations.
  """
  def cancel_capacity_reservation_fleets(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CancelCapacityReservationFleets", input, options)
  end

  @doc """
  Cancels an active conversion task.

  The task can be the import of an instance or volume. The action removes all
  artifacts of the conversion, including a partially uploaded volume or instance.
  If the conversion is complete or is
  in the process of transferring the final disk image, the command fails and
  returns an exception.

  For more information, see [Importing a Virtual Machine Using the Amazon EC2
  CLI](https://docs.aws.amazon.com/AWSEC2/latest/CommandLineReference/ec2-cli-vmimport-export.html).
  """
  def cancel_conversion_task(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CancelConversionTask", input, options)
  end

  @doc """
  Cancels an active export task.

  The request removes all artifacts of the export, including any partially-created
  Amazon S3 objects. If the export task is complete or is in the process of
  transferring the final disk image, the
  command fails and returns an error.
  """
  def cancel_export_task(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CancelExportTask", input, options)
  end

  @doc """
  Removes your Amazon Web Services account from the launch permissions for the
  specified AMI.

  For more
  information, see [
  Cancel having an AMI shared with your Amazon Web Services
  account](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/cancel-sharing-an-AMI.html)
  in the
  *Amazon EC2 User Guide*.
  """
  def cancel_image_launch_permission(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CancelImageLaunchPermission", input, options)
  end

  @doc """
  Cancels an in-process import virtual machine or import snapshot task.
  """
  def cancel_import_task(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CancelImportTask", input, options)
  end

  @doc """
  Cancels the specified Reserved Instance listing in the Reserved Instance
  Marketplace.

  For more information, see
  [Reserved Instance Marketplace](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-market-general.html)
  in the *Amazon EC2 User Guide*.
  """
  def cancel_reserved_instances_listing(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CancelReservedInstancesListing", input, options)
  end

  @doc """
  Cancels the specified Spot Fleet requests.

  After you cancel a Spot Fleet request, the Spot Fleet launches no new instances.

  You must also specify whether a canceled Spot Fleet request should terminate its
  instances. If you
  choose to terminate the instances, the Spot Fleet request enters the
  `cancelled_terminating` state. Otherwise, the Spot Fleet request enters
  the `cancelled_running` state and the instances continue to run until they
  are interrupted or you terminate them manually.
  """
  def cancel_spot_fleet_requests(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CancelSpotFleetRequests", input, options)
  end

  @doc """
  Cancels one or more Spot Instance requests.

  Canceling a Spot Instance request does not terminate running Spot Instances
  associated with the request.
  """
  def cancel_spot_instance_requests(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CancelSpotInstanceRequests", input, options)
  end

  @doc """
  Determines whether a product code is associated with an instance.

  This action can only
  be used by the owner of the product code. It is useful when a product code owner
  must
  verify whether another user's instance is eligible for support.
  """
  def confirm_product_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ConfirmProductInstance", input, options)
  end

  @doc """
  Copies the specified Amazon FPGA Image (AFI) to the current Region.
  """
  def copy_fpga_image(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CopyFpgaImage", input, options)
  end

  @doc """
  Initiates the copy of an AMI.

  You can copy an AMI from one Region to another, or from a
  Region to an Outpost. You can't copy an AMI from an Outpost to a Region, from
  one Outpost
  to another, or within the same Outpost. To copy an AMI to another partition, see
  [CreateStoreImageTask](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateStoreImageTask.html).   To copy an AMI from one Region to another, specify the source Region using the
  **SourceRegion** parameter, and specify the
  destination Region using its endpoint. Copies of encrypted backing snapshots for
  the AMI are encrypted. Copies of unencrypted backing snapshots remain
  unencrypted,
  unless you set `Encrypted` during the copy operation. You cannot
  create an unencrypted copy of an encrypted backing snapshot.

  To copy an AMI from a Region to an Outpost, specify the source Region using the
  **SourceRegion** parameter, and specify the
  ARN of the destination Outpost using **DestinationOutpostArn**.
  Backing snapshots copied to an Outpost are encrypted by default using the
  default
  encryption key for the Region, or a different key that you specify in the
  request using
  **KmsKeyId**. Outposts do not support unencrypted
  snapshots. For more information, [
  Amazon EBS local snapshots on
  Outposts](https://docs.aws.amazon.com/ebs/latest/userguide/snapshots-outposts.html#ami)
  in the *Amazon EBS User Guide*.

  For more information about the prerequisites and limits when copying an AMI, see
  [Copy an AMI](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/CopyingAMIs.html) in
  the
  *Amazon EC2 User Guide*.
  """
  def copy_image(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CopyImage", input, options)
  end

  @doc """
  Copies a point-in-time snapshot of an EBS volume and stores it in Amazon S3.

  You can copy a
  snapshot within the same Region, from one Region to another, or from a Region to
  an Outpost.
  You can't copy a snapshot from an Outpost to a Region, from one Outpost to
  another, or within
  the same Outpost.

  You can use the snapshot to create EBS volumes or Amazon Machine Images (AMIs).

  When copying snapshots to a Region, copies of encrypted EBS snapshots remain
  encrypted.
  Copies of unencrypted snapshots remain unencrypted, unless you enable encryption
  for the
  snapshot copy operation. By default, encrypted snapshot copies use the default
  Key Management Service (KMS)
  KMS key; however, you can specify a different KMS key. To copy an encrypted
  snapshot that has been shared from another account, you must have permissions
  for the KMS key
  used to encrypt the snapshot.

  Snapshots copied to an Outpost are encrypted by default using the default
  encryption key for the Region, or a different key that you specify in the
  request using
  **KmsKeyId**. Outposts do not support unencrypted
  snapshots. For more information, [
  Amazon EBS local snapshots on
  Outposts](https://docs.aws.amazon.com/ebs/latest/userguide/snapshots-outposts.html#ami)
  in the *Amazon EBS User Guide*.

  Snapshots created by copying another snapshot have an arbitrary volume ID that
  should not
  be used for any purpose.

  For more information, see [Copy an Amazon EBS snapshot](https://docs.aws.amazon.com/ebs/latest/userguide/ebs-copy-snapshot.html)
  in the
  *Amazon EBS User Guide*.
  """
  def copy_snapshot(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CopySnapshot", input, options)
  end

  @doc """
  Creates a new Capacity Reservation with the specified attributes.

  Capacity Reservations enable you to reserve capacity for your Amazon EC2
  instances in a specific Availability Zone for any duration. This
  gives you the flexibility to selectively add capacity reservations and still get
  the Regional RI discounts for that usage.
  By creating Capacity Reservations, you ensure that you always have access to
  Amazon EC2 capacity when you need it, for as long as you need it.
  For more information, see [Capacity Reservations](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-capacity-reservations.html)
  in the *Amazon EC2 User Guide*.

  Your request to create a Capacity Reservation could fail if Amazon EC2 does not
  have sufficient capacity to
  fulfill the request. If your request fails due to Amazon EC2 capacity
  constraints, either try
  again at a later time, try in a different Availability Zone, or request a
  smaller
  capacity reservation. If your application is flexible across instance types and
  sizes,
  try to create a Capacity Reservation with different instance attributes.

  Your request could also fail if the requested quantity exceeds your On-Demand
  Instance
  limit for the selected instance type. If your request fails due to limit
  constraints,
  increase your On-Demand Instance limit for the required instance type and try
  again. For
  more information about increasing your instance limits, see [Amazon EC2 Service Quotas](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-resource-limits.html)
  in the *Amazon EC2 User Guide*.
  """
  def create_capacity_reservation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateCapacityReservation", input, options)
  end

  @doc """
  Creates a Capacity Reservation Fleet.

  For more information, see [Create a Capacity Reservation
  Fleet](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/work-with-cr-fleets.html#create-crfleet)
  in the Amazon EC2 User Guide.
  """
  def create_capacity_reservation_fleet(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateCapacityReservationFleet", input, options)
  end

  @doc """
  Creates a carrier gateway.

  For more information about carrier gateways, see [Carrier gateways](https://docs.aws.amazon.com/wavelength/latest/developerguide/how-wavelengths-work.html#wavelength-carrier-gateway)
  in the *Amazon Web Services Wavelength Developer Guide*.
  """
  def create_carrier_gateway(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateCarrierGateway", input, options)
  end

  @doc """
  Creates a Client VPN endpoint.

  A Client VPN endpoint is the resource you create and configure to
  enable and manage client VPN sessions. It is the destination endpoint at which
  all client VPN sessions
  are terminated.
  """
  def create_client_vpn_endpoint(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateClientVpnEndpoint", input, options)
  end

  @doc """
  Adds a route to a network to a Client VPN endpoint.

  Each Client VPN endpoint has a route table that describes the
  available destination network routes. Each route in the route table specifies
  the path for traﬃc to speciﬁc resources or networks.
  """
  def create_client_vpn_route(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateClientVpnRoute", input, options)
  end

  @doc """

  Creates a range of customer-owned IP addresses.
  """
  def create_coip_cidr(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateCoipCidr", input, options)
  end

  @doc """
  Creates a pool of customer-owned IP (CoIP) addresses.
  """
  def create_coip_pool(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateCoipPool", input, options)
  end

  @doc """
  Provides information to Amazon Web Services about your customer gateway device.

  The
  customer gateway device is the appliance at your end of the VPN connection. You
  must provide the IP address of the customer gateway device’s external
  interface. The IP address must be static and can be behind a device performing
  network
  address translation (NAT).

  For devices that use Border Gateway Protocol (BGP), you can also provide the
  device's
  BGP Autonomous System Number (ASN). You can use an existing ASN assigned to your
  network.
  If you don't have an ASN already, you can use a private ASN. For more
  information, see
  [Customer gateway options for your Site-to-Site VPN
  connection](https://docs.aws.amazon.com/vpn/latest/s2svpn/cgw-options.html) in
  the *Amazon Web Services Site-to-Site VPN User Guide*.

  To create more than one customer gateway with the same VPN type, IP address, and
  BGP ASN, specify a unique device name for each customer gateway. An identical
  request
  returns information about the existing customer gateway; it doesn't create a new
  customer
  gateway.
  """
  def create_customer_gateway(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateCustomerGateway", input, options)
  end

  @doc """
  Creates a default subnet with a size `/20` IPv4 CIDR block in the
  specified Availability Zone in your default VPC.

  You can have only one default subnet
  per Availability Zone. For more information, see [Create a default subnet](https://docs.aws.amazon.com/vpc/latest/userguide/default-vpc.html#create-default-subnet)
  in the *Amazon VPC User Guide*.
  """
  def create_default_subnet(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateDefaultSubnet", input, options)
  end

  @doc """
  Creates a default VPC with a size `/16` IPv4 CIDR block and a default subnet
  in each Availability Zone.

  For more information about the components of a default VPC,
  see [Default VPCs](https://docs.aws.amazon.com/vpc/latest/userguide/default-vpc.html)
  in the *Amazon VPC User Guide*. You cannot specify the components of the
  default VPC yourself.

  If you deleted your previous default VPC, you can create a default VPC. You
  cannot have
  more than one default VPC per Region.
  """
  def create_default_vpc(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateDefaultVpc", input, options)
  end

  @doc """
  Creates a custom set of DHCP options.

  After you create a DHCP option set, you associate
  it with a VPC. After you associate a DHCP option set with a VPC, all existing
  and newly
  launched instances in the VPC use this set of DHCP options.

  The following are the individual DHCP options you can specify. For more
  information, see
  [DHCP options sets](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_DHCP_Options.html)
  in the *Amazon VPC User Guide*.

    *

  `domain-name` - If you're using AmazonProvidedDNS in `us-east-1`,
  specify `ec2.internal`. If you're using AmazonProvidedDNS in any other Region,
  specify `region.compute.internal`. Otherwise, specify a custom domain name.
  This value is used to complete unqualified DNS hostnames.

  Some Linux operating systems accept multiple domain names separated by spaces.
  However, Windows and other Linux operating systems treat the value as a single
  domain, which results in unexpected behavior. If your DHCP option set is
  associated with a VPC that has instances running operating systems that treat
  the value as a single domain, specify only one domain name.

    *

  `domain-name-servers` - The IP addresses of up to four DNS servers,
  or AmazonProvidedDNS. To specify multiple domain name servers in a single
  parameter,
  separate the IP addresses using commas. To have your instances receive custom
  DNS
  hostnames as specified in `domain-name`, you must specify a custom DNS
  server.

    *

  `ntp-servers` - The IP addresses of up to eight Network Time Protocol (NTP)
  servers (four IPv4 addresses and four IPv6 addresses).

    *

  `netbios-name-servers` - The IP addresses of up to four NetBIOS name
  servers.

    *

  `netbios-node-type` - The NetBIOS node type (1, 2, 4, or 8). We recommend that
  you specify 2. Broadcast and multicast are not supported. For more information
  about
  NetBIOS node types, see [RFC 2132](http://www.ietf.org/rfc/rfc2132.txt).

    *

  `ipv6-preferred-lease-time` - A value (in seconds, minutes, hours, or years) for
  how frequently a running instance with an IPv6 assigned to it goes through
  DHCPv6 lease renewal.
  Acceptable values are between 140 and 2147483647 seconds (approximately 68
  years). If no value is entered, the default lease time is 140 seconds. If you
  use long-term addressing for EC2 instances, you can increase the lease time and
  avoid frequent
  lease renewal requests. Lease renewal typically occurs when half of the lease
  time has elapsed.
  """
  def create_dhcp_options(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateDhcpOptions", input, options)
  end

  @doc """
  [IPv6 only] Creates an egress-only internet gateway for your VPC.

  An egress-only
  internet gateway is used to enable outbound communication over IPv6 from
  instances in
  your VPC to the internet, and prevents hosts outside of your VPC from initiating
  an IPv6
  connection with your instance.
  """
  def create_egress_only_internet_gateway(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateEgressOnlyInternetGateway", input, options)
  end

  @doc """
  Creates an EC2 Fleet that contains the configuration information for On-Demand
  Instances and Spot Instances.

  Instances are launched immediately if there is available capacity.

  A single EC2 Fleet can include multiple launch specifications that vary by
  instance type,
  AMI, Availability Zone, or subnet.

  For more information, see [EC2 Fleet](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-fleet.html) in
  the *Amazon EC2 User Guide*.
  """
  def create_fleet(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateFleet", input, options)
  end

  @doc """
  Creates one or more flow logs to capture information about IP traffic for a
  specific network interface,
  subnet, or VPC.

  Flow log data for a monitored network interface is recorded as flow log records,
  which are log events
  consisting of fields that describe the traffic flow. For more information, see
  [Flow log records](https://docs.aws.amazon.com/vpc/latest/userguide/flow-logs.html#flow-log-records)
  in the *Amazon Virtual Private Cloud User Guide*.

  When publishing to CloudWatch Logs, flow log records are published to a log
  group, and each network
  interface has a unique log stream in the log group. When publishing to Amazon
  S3, flow log records for all
  of the monitored network interfaces are published to a single log file object
  that is stored in the specified
  bucket.

  For more information, see [VPC Flow Logs](https://docs.aws.amazon.com/vpc/latest/userguide/flow-logs.html) in the
  *Amazon Virtual Private Cloud User Guide*.
  """
  def create_flow_logs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateFlowLogs", input, options)
  end

  @doc """
  Creates an Amazon FPGA Image (AFI) from the specified design checkpoint (DCP).

  The create operation is asynchronous. To verify that the AFI is ready for use,
  check the output logs.

  An AFI contains the FPGA bitstream that is ready to download to an FPGA.
  You can securely deploy an AFI on multiple FPGA-accelerated instances.
  For more information, see the [Amazon Web Services FPGA Hardware Development Kit](https://github.com/aws/aws-fpga/).
  """
  def create_fpga_image(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateFpgaImage", input, options)
  end

  @doc """
  Creates an Amazon EBS-backed AMI from an Amazon EBS-backed instance
  that is either running or stopped.

  If you customized your instance with instance store volumes or Amazon EBS
  volumes in addition to the root device volume, the
  new AMI contains block device mapping information for those volumes. When you
  launch an instance from this new AMI,
  the instance automatically launches with those additional volumes.

  For more information, see [Create an Amazon EBS-backed Linux AMI](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/creating-an-ami-ebs.html)
  in the *Amazon Elastic Compute Cloud User Guide*.
  """
  def create_image(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateImage", input, options)
  end

  @doc """
  Creates an EC2 Instance Connect Endpoint.

  An EC2 Instance Connect Endpoint allows you to connect to an instance, without
  requiring the instance to have a public IPv4 address. For more information, see
  [Connect to your instances without requiring a public IPv4 address using EC2 Instance Connect
  Endpoint](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Connect-using-EC2-Instance-Connect-Endpoint.html)
  in the *Amazon EC2 User
  Guide*.
  """
  def create_instance_connect_endpoint(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateInstanceConnectEndpoint", input, options)
  end

  @doc """
  Creates an event window in which scheduled events for the associated Amazon EC2
  instances can
  run.

  You can define either a set of time ranges or a cron expression when creating
  the event
  window, but not both. All event window times are in UTC.

  You can create up to 200 event windows per Amazon Web Services Region.

  When you create the event window, targets (instance IDs, Dedicated Host IDs, or
  tags)
  are not yet associated with it. To ensure that the event window can be used, you
  must
  associate one or more targets with it by using the
  `AssociateInstanceEventWindow` API.

  Event windows are applicable only for scheduled events that stop, reboot, or
  terminate instances.

  Event windows are *not* applicable for:

    
  Expedited scheduled events and network maintenance events.

    
  Unscheduled maintenance such as AutoRecovery and unplanned reboots.

  For more information, see [Define event windows for scheduled events](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/event-windows.html)
  in the *Amazon EC2 User Guide*.
  """
  def create_instance_event_window(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateInstanceEventWindow", input, options)
  end

  @doc """
  Exports a running or stopped instance to an Amazon S3 bucket.

  For information about the prerequisites for your Amazon S3 bucket, supported
  operating systems,
  image formats, and known limitations for the types of instances you can export,
  see [Exporting an instance as a VM Using VM Import/Export](https://docs.aws.amazon.com/vm-import/latest/userguide/vmexport.html)
  in the *VM Import/Export User Guide*.
  """
  def create_instance_export_task(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateInstanceExportTask", input, options)
  end

  @doc """
  Creates an internet gateway for use with a VPC.

  After creating the internet gateway,
  you attach it to a VPC using `AttachInternetGateway`.

  For more information, see [Internet gateways](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Internet_Gateway.html)
  in the
  *Amazon VPC User Guide*.
  """
  def create_internet_gateway(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateInternetGateway", input, options)
  end

  @doc """
  Create an IPAM.

  Amazon VPC IP Address Manager (IPAM) is a VPC feature that you can use
  to automate your IP address management workflows including assigning, tracking,
  troubleshooting, and auditing IP addresses across Amazon Web Services Regions
  and accounts
  throughout your Amazon Web Services Organization.

  For more information, see [Create an IPAM](https://docs.aws.amazon.com/vpc/latest/ipam/create-ipam.html) in the
  *Amazon VPC IPAM User Guide*.
  """
  def create_ipam(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateIpam", input, options)
  end

  @doc """
  Create an IP address pool for Amazon VPC IP Address Manager (IPAM).

  In IPAM, a pool is a collection of contiguous IP addresses CIDRs. Pools enable
  you to organize your IP addresses according to your routing and security needs.
  For example, if you have separate routing and security needs for development and
  production applications, you can create a pool for each.

  For more information, see [Create a top-level pool](https://docs.aws.amazon.com/vpc/latest/ipam/create-top-ipam.html) in the
  *Amazon VPC IPAM User Guide*.
  """
  def create_ipam_pool(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateIpamPool", input, options)
  end

  @doc """
  Creates an IPAM resource discovery.

  A resource discovery is an IPAM component that enables IPAM to manage and
  monitor resources that belong to the owning account.
  """
  def create_ipam_resource_discovery(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateIpamResourceDiscovery", input, options)
  end

  @doc """
  Create an IPAM scope.

  In IPAM, a scope is the highest-level container within IPAM. An IPAM contains
  two default scopes. Each scope represents the IP space for a single network. The
  private scope is intended for all private IP address space. The public scope is
  intended for all public IP address space. Scopes enable you to reuse IP
  addresses across multiple unconnected networks without causing IP address
  overlap or conflict.

  For more information, see [Add a scope](https://docs.aws.amazon.com/vpc/latest/ipam/add-scope-ipam.html) in the
  *Amazon VPC IPAM User Guide*.
  """
  def create_ipam_scope(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateIpamScope", input, options)
  end

  @doc """
  Creates an ED25519 or 2048-bit RSA key pair with the specified name and in the
  specified PEM or PPK format.

  Amazon EC2 stores the public key and displays the private
  key for you to save to a file. The private key is returned as an unencrypted PEM
  encoded
  PKCS#1 private key or an unencrypted PPK formatted private key for use with
  PuTTY. If a
  key with the specified name already exists, Amazon EC2 returns an error.

  The key pair returned to you is available only in the Amazon Web Services Region
  in which you create it.
  If you prefer, you can create your own key pair using a third-party tool and
  upload it
  to any Region using `ImportKeyPair`.

  You can have up to 5,000 key pairs per Amazon Web Services Region.

  For more information, see [Amazon EC2 key pairs](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html)
  in the
  *Amazon Elastic Compute Cloud User Guide*.
  """
  def create_key_pair(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateKeyPair", input, options)
  end

  @doc """
  Creates a launch template.

  A launch template contains the parameters to launch an instance. When you launch
  an
  instance using `RunInstances`, you can specify a launch template instead
  of providing the launch parameters in the request. For more information, see
  [Launch an instance from a launch
  template](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html)
  in the
  *Amazon Elastic Compute Cloud User Guide*.

  If you want to clone an existing launch template as the basis for creating a new
  launch template, you can use the Amazon EC2 console. The API, SDKs, and CLI do
  not support
  cloning a template. For more information, see [Create a launch template from an existing launch
  template](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html#create-launch-template-from-existing-launch-template)
  in the
  *Amazon Elastic Compute Cloud User Guide*.
  """
  def create_launch_template(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateLaunchTemplate", input, options)
  end

  @doc """
  Creates a new version of a launch template.

  You can specify an existing version of
  launch template from which to base the new version.

  Launch template versions are numbered in the order in which they are created.
  You
  cannot specify, change, or replace the numbering of launch template versions.

  Launch templates are immutable; after you create a launch template, you can't
  modify
  it. Instead, you can create a new version of the launch template that includes
  any
  changes you require.

  For more information, see [Modify a launch template (manage launch template versions)](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html#manage-launch-template-versions)
  in the
  *Amazon Elastic Compute Cloud User Guide*.
  """
  def create_launch_template_version(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateLaunchTemplateVersion", input, options)
  end

  @doc """
  Creates a static route for the specified local gateway route table.

  You must specify one of the
  following targets:

    *

  `LocalGatewayVirtualInterfaceGroupId`

    *

  `NetworkInterfaceId`
  """
  def create_local_gateway_route(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateLocalGatewayRoute", input, options)
  end

  @doc """

  Creates a local gateway route table.
  """
  def create_local_gateway_route_table(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateLocalGatewayRouteTable", input, options)
  end

  @doc """

  Creates a local gateway route table virtual interface group association.
  """
  def create_local_gateway_route_table_virtual_interface_group_association(
        %Client{} = client,
        input,
        options \\ []
      ) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociation",
      input,
      options
    )
  end

  @doc """
  Associates the specified VPC with the specified local gateway route table.
  """
  def create_local_gateway_route_table_vpc_association(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "CreateLocalGatewayRouteTableVpcAssociation",
      input,
      options
    )
  end

  @doc """
  Creates a managed prefix list.

  You can specify one or more entries for the prefix list.
  Each entry consists of a CIDR block and an optional description.
  """
  def create_managed_prefix_list(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateManagedPrefixList", input, options)
  end

  @doc """
  Creates a NAT gateway in the specified subnet.

  This action creates a network interface
  in the specified subnet with a private IP address from the IP address range of
  the
  subnet. You can create either a public NAT gateway or a private NAT gateway.

  With a public NAT gateway, internet-bound traffic from a private subnet can be
  routed
  to the NAT gateway, so that instances in a private subnet can connect to the
  internet.

  With a private NAT gateway, private communication is routed across VPCs and
  on-premises
  networks through a transit gateway or virtual private gateway. Common use cases
  include
  running large workloads behind a small pool of allowlisted IPv4 addresses,
  preserving
  private IPv4 addresses, and communicating between overlapping networks.

  For more information, see [NAT gateways](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-nat-gateway.html)
  in the *Amazon VPC User Guide*.

  When you create a public NAT gateway and assign it an EIP or secondary EIPs, the
  network border group of the EIPs must match the network border group of the
  Availability Zone (AZ) that the public NAT gateway is in. If it's not the same,
  the NAT gateway will fail to launch. You can see the network border group for
  the subnet's AZ by viewing the details of the subnet. Similarly, you can view
  the network border group of an EIP by viewing the details of the EIP address.
  For more information about network border groups and EIPs, see [Allocate an Elastic IP
  address](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-eips.html#allocate-eip)
  in the *Amazon VPC User Guide*.
  """
  def create_nat_gateway(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateNatGateway", input, options)
  end

  @doc """
  Creates a network ACL in a VPC.

  Network ACLs provide an optional layer of security (in addition to security
  groups) for the instances in your VPC.

  For more information, see [Network ACLs](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-network-acls.html) in
  the
  *Amazon VPC User Guide*.
  """
  def create_network_acl(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateNetworkAcl", input, options)
  end

  @doc """
  Creates an entry (a rule) in a network ACL with the specified rule number.

  Each network ACL has a set of numbered ingress rules
  and a separate set of numbered egress rules. When determining whether a packet
  should be allowed in or out of a subnet associated
  with the ACL, we process the entries in the ACL according to the rule numbers,
  in ascending order. Each network ACL has a set of
  ingress rules and a separate set of egress rules.

  We recommend that you leave room between the rule numbers (for example, 100,
  110, 120, ...), and not number them one right after the
  other (for example, 101, 102, 103, ...). This makes it easier to add a rule
  between existing ones without having to renumber the rules.

  After you add an entry, you can't modify it; you must either replace it, or
  create an entry and delete the old one.

  For more information about network ACLs, see [Network ACLs](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-network-acls.html)
  in the *Amazon VPC User Guide*.
  """
  def create_network_acl_entry(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateNetworkAclEntry", input, options)
  end

  @doc """
  Creates a Network Access Scope.

  Amazon Web Services Network Access Analyzer enables cloud networking and cloud
  operations teams
  to verify that their networks on Amazon Web Services conform to their network
  security and governance
  objectives. For more information, see the [Amazon Web Services Network Access Analyzer
  Guide](https://docs.aws.amazon.com/vpc/latest/network-access-analyzer/).
  """
  def create_network_insights_access_scope(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateNetworkInsightsAccessScope", input, options)
  end

  @doc """
  Creates a path to analyze for reachability.

  Reachability Analyzer enables you to analyze and debug network reachability
  between
  two resources in your virtual private cloud (VPC). For more information, see the
  [Reachability Analyzer Guide](https://docs.aws.amazon.com/vpc/latest/reachability/).
  """
  def create_network_insights_path(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateNetworkInsightsPath", input, options)
  end

  @doc """
  Creates a network interface in the specified subnet.

  The number of IP addresses you can assign to a network interface varies by
  instance
  type. For more information, see [IP Addresses Per ENI Per Instance
  Type](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html#AvailableIpPerENI)
  in the *Amazon Virtual Private Cloud User Guide*.

  For more information about network interfaces, see [Elastic network interfaces](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html)
  in the *Amazon Elastic Compute Cloud User Guide*.
  """
  def create_network_interface(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateNetworkInterface", input, options)
  end

  @doc """
  Grants an Amazon Web Services-authorized account permission to attach the
  specified network interface to
  an instance in their account.

  You can grant permission to a single Amazon Web Services account only, and only
  one account at a time.
  """
  def create_network_interface_permission(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateNetworkInterfacePermission", input, options)
  end

  @doc """
  Creates a placement group in which to launch instances.

  The strategy of the placement
  group determines how the instances are organized within the group.

  A `cluster` placement group is a logical grouping of instances within a
  single Availability Zone that benefit from low network latency, high network
  throughput.
  A `spread` placement group places instances on distinct hardware. A
  `partition` placement group places groups of instances in different
  partitions, where instances in one partition do not share the same hardware with
  instances in another partition.

  For more information, see [Placement groups](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html)
  in the
  *Amazon EC2 User Guide*.
  """
  def create_placement_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreatePlacementGroup", input, options)
  end

  @doc """
  Creates a public IPv4 address pool.

  A public IPv4 pool is an EC2 IP address pool required for the public IPv4 CIDRs
  that you own and bring to Amazon Web Services to manage with IPAM. IPv6
  addresses you bring to Amazon Web Services, however, use IPAM pools only. To
  monitor the status of pool creation, use
  [DescribePublicIpv4Pools](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribePublicIpv4Pools.html).
  """
  def create_public_ipv4_pool(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreatePublicIpv4Pool", input, options)
  end

  @doc """
  Replaces the EBS-backed root volume for a `running` instance with a new
  volume that is restored to the original root volume's launch state, that is
  restored to a
  specific snapshot taken from the original root volume, or that is restored from
  an AMI
  that has the same key characteristics as that of the instance.

  For more information, see [Replace a root volume](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/replace-root.html)
  in the *Amazon Elastic Compute Cloud User Guide*.
  """
  def create_replace_root_volume_task(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateReplaceRootVolumeTask", input, options)
  end

  @doc """
  Creates a listing for Amazon EC2 Standard Reserved Instances to be sold in the
  Reserved Instance
  Marketplace.

  You can submit one Standard Reserved Instance listing at a time. To get a list
  of your
  Standard Reserved Instances, you can use the `DescribeReservedInstances`
  operation.

  Only Standard Reserved Instances can be sold in the Reserved Instance
  Marketplace.
  Convertible Reserved Instances cannot be sold.

  The Reserved Instance Marketplace matches sellers who want to resell Standard
  Reserved Instance capacity that they no longer need with buyers who want to
  purchase additional capacity. Reserved Instances bought and sold through the
  Reserved Instance Marketplace work like any other Reserved Instances.

  To sell your Standard Reserved Instances, you must first register as a seller in
  the Reserved Instance
  Marketplace. After completing the registration process, you can create a
  Reserved Instance
  Marketplace listing of some or all of your Standard Reserved Instances, and
  specify the upfront price
  to receive for them. Your Standard Reserved Instance listings then become
  available for purchase. To
  view the details of your Standard Reserved Instance listing, you can use the
  `DescribeReservedInstancesListings` operation.

  For more information, see [Reserved Instance Marketplace](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-market-general.html)
  in the
  *Amazon EC2 User Guide*.
  """
  def create_reserved_instances_listing(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateReservedInstancesListing", input, options)
  end

  @doc """
  Starts a task that restores an AMI from an Amazon S3 object that was previously
  created by using
  [CreateStoreImageTask](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateStoreImageTask.html). 

  To use this API, you must have the required permissions. For more information,
  see [Permissions for storing and restoring AMIs using Amazon
  S3](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-store-restore.html#ami-s3-permissions)
  in the
  *Amazon EC2 User Guide*.

  For more information, see [Store and restore an AMI using Amazon
  S3](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-store-restore.html)
  in the *Amazon EC2 User Guide*.
  """
  def create_restore_image_task(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateRestoreImageTask", input, options)
  end

  @doc """
  Creates a route in a route table within a VPC.

  You must specify either a destination CIDR block or a prefix list ID. You must
  also specify
  exactly one of the resources from the parameter list.

  When determining how to route traffic, we use the route with the most specific
  match.
  For example, traffic is destined for the IPv4 address `192.0.2.3`, and the
  route table includes the following two IPv4 routes:

    *

  `192.0.2.0/24` (goes to some target A)

    *

  `192.0.2.0/28` (goes to some target B)

  Both routes apply to the traffic destined for `192.0.2.3`. However, the second
  route
  in the list covers a smaller number of IP addresses and is therefore more
  specific,
  so we use that route to determine where to target the traffic.

  For more information about route tables, see [Route tables](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Route_Tables.html)
  in the
  *Amazon VPC User Guide*.
  """
  def create_route(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateRoute", input, options)
  end

  @doc """
  Creates a route table for the specified VPC.

  After you create a route table, you can add routes and associate the table with
  a subnet.

  For more information, see [Route tables](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Route_Tables.html)
  in the
  *Amazon VPC User Guide*.
  """
  def create_route_table(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateRouteTable", input, options)
  end

  @doc """
  Creates a security group.

  A security group acts as a virtual firewall for your instance to control inbound
  and outbound traffic.
  For more information, see
  [Amazon EC2 security groups](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-network-security.html)
  in
  the *Amazon Elastic Compute Cloud User Guide* and
  [Security groups for your VPC](https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_SecurityGroups.html)
  in the
  *Amazon Virtual Private Cloud User Guide*.

  When you create a security group, you specify a friendly name of your choice.
  You can't have two security groups for the same VPC with the same name.

  You have a default security group for use in your VPC. If you don't specify a
  security group
  when you launch an instance, the instance is launched into the appropriate
  default security group.
  A default security group includes a default rule that grants instances
  unrestricted network access
  to each other.

  You can add or remove rules from your security groups using
  `AuthorizeSecurityGroupIngress`,
  `AuthorizeSecurityGroupEgress`,
  `RevokeSecurityGroupIngress`, and
  `RevokeSecurityGroupEgress`.

  For more information about VPC security group limits, see [Amazon VPC Limits](https://docs.aws.amazon.com/vpc/latest/userguide/amazon-vpc-limits.html).
  """
  def create_security_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateSecurityGroup", input, options)
  end

  @doc """
  Creates a snapshot of an EBS volume and stores it in Amazon S3.

  You can use snapshots for
  backups, to make copies of EBS volumes, and to save data before shutting down an
  instance.

  You can create snapshots of volumes in a Region and volumes on an Outpost. If
  you
  create a snapshot of a volume in a Region, the snapshot must be stored in the
  same
  Region as the volume. If you create a snapshot of a volume on an Outpost, the
  snapshot
  can be stored on the same Outpost as the volume, or in the Region for that
  Outpost.

  When a snapshot is created, any Amazon Web Services Marketplace product codes
  that are associated with the
  source volume are propagated to the snapshot.

  You can take a snapshot of an attached volume that is in use. However, snapshots
  only
  capture data that has been written to your Amazon EBS volume at the time the
  snapshot command is
  issued; this might exclude any data that has been cached by any applications or
  the operating
  system. If you can pause any file systems on the volume long enough to take a
  snapshot, your
  snapshot should be complete. However, if you cannot pause all file writes to the
  volume, you
  should unmount the volume from within the instance, issue the snapshot command,
  and then
  remount the volume to ensure a consistent and complete snapshot. You may remount
  and use your
  volume while the snapshot status is `pending`.

  When you create a snapshot for an EBS volume that serves as a root device, we
  recommend
  that you stop the instance before taking the snapshot.

  Snapshots that are taken from encrypted volumes are automatically encrypted.
  Volumes that
  are created from encrypted snapshots are also automatically encrypted. Your
  encrypted volumes
  and any associated snapshots always remain protected.

  You can tag your snapshots during creation. For more information, see [Tag your Amazon EC2
  resources](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html)
  in the *Amazon Elastic Compute Cloud User Guide*.

  For more information, see [Amazon Elastic Block Store](https://docs.aws.amazon.com/ebs/latest/userguide/what-is-ebs.html) and
  [Amazon EBS encryption](https://docs.aws.amazon.com/ebs/latest/userguide/ebs-encryption.html)
  in the *Amazon EBS User Guide*.
  """
  def create_snapshot(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateSnapshot", input, options)
  end

  @doc """
  Creates crash-consistent snapshots of multiple EBS volumes and stores the data
  in S3.

  Volumes are chosen by specifying an instance. Any attached volumes will produce
  one snapshot
  each that is crash-consistent across the instance.

  You can include all of the volumes currently attached to the instance, or you
  can exclude
  the root volume or specific data (non-root) volumes from the multi-volume
  snapshot set.

  You can create multi-volume snapshots of instances in a Region and instances on
  an
  Outpost. If you create snapshots from an instance in a Region, the snapshots
  must be stored
  in the same Region as the instance. If you create snapshots from an instance on
  an Outpost,
  the snapshots can be stored on the same Outpost as the instance, or in the
  Region for that
  Outpost.
  """
  def create_snapshots(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateSnapshots", input, options)
  end

  @doc """
  Creates a data feed for Spot Instances, enabling you to view Spot Instance usage
  logs.

  You can create one data feed per Amazon Web Services account. For more
  information, see
  [Spot Instance data feed](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-data-feeds.html)
  in the *Amazon EC2 User Guide for Linux Instances*.
  """
  def create_spot_datafeed_subscription(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateSpotDatafeedSubscription", input, options)
  end

  @doc """
  Stores an AMI as a single object in an Amazon S3 bucket.

  To use this API, you must have the required permissions. For more information,
  see [Permissions for storing and restoring AMIs using Amazon S3](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-store-restore.html#ami-s3-permissions)
  in the
  *Amazon EC2 User Guide*.

  For more information, see [Store and restore an AMI using Amazon
  S3](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-store-restore.html)
  in the *Amazon EC2 User Guide*.
  """
  def create_store_image_task(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateStoreImageTask", input, options)
  end

  @doc """
  Creates a subnet in the specified VPC.

  For an IPv4 only subnet, specify an IPv4 CIDR block.
  If the VPC has an IPv6 CIDR block, you can create an IPv6 only subnet or a dual
  stack subnet instead.
  For an IPv6 only subnet, specify an IPv6 CIDR block. For a dual stack subnet,
  specify both
  an IPv4 CIDR block and an IPv6 CIDR block.

  A subnet CIDR block must not overlap the CIDR block of an existing subnet in the
  VPC.
  After you create a subnet, you can't change its CIDR block.

  The allowed size for an IPv4 subnet is between a /28 netmask (16 IP addresses)
  and
  a /16 netmask (65,536 IP addresses). Amazon Web Services reserves both the first
  four and
  the last IPv4 address in each subnet's CIDR block. They're not available for
  your use.

  If you've associated an IPv6 CIDR block with your VPC, you can associate an IPv6
  CIDR
  block with a subnet when you create it.

  If you add more than one subnet to a VPC, they're set up in a star topology with
  a
  logical router in the middle.

  When you stop an instance in a subnet, it retains its private IPv4 address. It's
  therefore possible to have a subnet with no running instances (they're all
  stopped), but
  no remaining IP addresses available.

  For more information, see
  [Subnets](https://docs.aws.amazon.com/vpc/latest/userguide/configure-subnets.html)
  in the *Amazon VPC User Guide*.
  """
  def create_subnet(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateSubnet", input, options)
  end

  @doc """
  Creates a subnet CIDR reservation.

  For more information, see [Subnet CIDR reservations](https://docs.aws.amazon.com/vpc/latest/userguide/subnet-cidr-reservation.html)
  in the *Amazon Virtual Private Cloud User Guide* and [Assign prefixes to network
  interfaces](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-prefix-eni.html)
  in the *Amazon Elastic Compute Cloud User Guide*.
  """
  def create_subnet_cidr_reservation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateSubnetCidrReservation", input, options)
  end

  @doc """
  Adds or overwrites only the specified tags for the specified Amazon EC2 resource
  or
  resources.

  When you specify an existing tag key, the value is overwritten with
  the new value. Each resource can have a maximum of 50 tags. Each tag consists of
  a key and
  optional value. Tag keys must be unique per resource.

  For more information about tags, see [Tag your Amazon EC2 resources](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html)
  in the
  *Amazon Elastic Compute Cloud User Guide*. For more information about
  creating IAM policies that control users' access to resources based on tags, see
  [Supported resource-level permissions for Amazon EC2 API
  actions](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-iam-actions-resources.html)
  in the *Amazon
  Elastic Compute Cloud User Guide*.
  """
  def create_tags(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateTags", input, options)
  end

  @doc """
  Creates a Traffic Mirror filter.

  A Traffic Mirror filter is a set of rules that defines the traffic to mirror.

  By default, no traffic is mirrored. To mirror traffic, use
  [CreateTrafficMirrorFilterRule](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateTrafficMirrorFilterRule.htm) to add Traffic Mirror rules to the filter. The rules you
  add define what traffic gets mirrored. You can also use
  [ModifyTrafficMirrorFilterNetworkServices](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ModifyTrafficMirrorFilterNetworkServices.html)
  to mirror supported network services.
  """
  def create_traffic_mirror_filter(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateTrafficMirrorFilter", input, options)
  end

  @doc """
  Creates a Traffic Mirror filter rule.

  A Traffic Mirror rule defines the Traffic Mirror source traffic to mirror.

  You need the Traffic Mirror filter ID when you create the rule.
  """
  def create_traffic_mirror_filter_rule(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateTrafficMirrorFilterRule", input, options)
  end

  @doc """
  Creates a Traffic Mirror session.

  A Traffic Mirror session actively copies packets from a Traffic Mirror source to
  a Traffic Mirror target. Create a filter, and then assign it
  to the session to define a subset of the traffic to mirror, for example all TCP
  traffic.

  The Traffic Mirror source and the Traffic Mirror target (monitoring appliances)
  can be in the same VPC, or in a different VPC connected via VPC peering or a
  transit gateway.

  By default, no traffic is mirrored. Use
  [CreateTrafficMirrorFilter](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateTrafficMirrorFilter.htm)
  to
  create filter rules that specify the traffic to mirror.
  """
  def create_traffic_mirror_session(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateTrafficMirrorSession", input, options)
  end

  @doc """
  Creates a target for your Traffic Mirror session.

  A Traffic Mirror target is the destination for mirrored traffic. The Traffic
  Mirror source and
  the Traffic Mirror target (monitoring appliances) can be in the same VPC, or in
  different VPCs connected via VPC peering or a transit gateway.

  A Traffic Mirror target can be a network interface, a Network Load Balancer, or
  a Gateway Load Balancer endpoint.

  To use the target in a Traffic Mirror session, use
  [CreateTrafficMirrorSession](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateTrafficMirrorSession.htm).
  """
  def create_traffic_mirror_target(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateTrafficMirrorTarget", input, options)
  end

  @doc """
  Creates a transit gateway.

  You can use a transit gateway to interconnect your virtual private clouds (VPC)
  and on-premises networks.
  After the transit gateway enters the `available` state, you can attach your VPCs
  and VPN
  connections to the transit gateway.

  To attach your VPCs, use `CreateTransitGatewayVpcAttachment`.

  To attach a VPN connection, use `CreateCustomerGateway` to create a customer
  gateway and specify the ID of the customer gateway and the ID of the transit
  gateway in a call to
  `CreateVpnConnection`.

  When you create a transit gateway, we create a default transit gateway route
  table and use it as the default association route table
  and the default propagation route table. You can use
  `CreateTransitGatewayRouteTable` to create
  additional transit gateway route tables. If you disable automatic route
  propagation, we do not create a default transit gateway route table.
  You can use `EnableTransitGatewayRouteTablePropagation` to propagate routes from
  a resource
  attachment to a transit gateway route table. If you disable automatic
  associations, you can use `AssociateTransitGatewayRouteTable` to associate a
  resource attachment with a transit gateway route table.
  """
  def create_transit_gateway(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateTransitGateway", input, options)
  end

  @doc """
  Creates a Connect attachment from a specified transit gateway attachment.

  A Connect attachment is a GRE-based tunnel attachment that you can use to
  establish a connection between a transit gateway and an appliance.

  A Connect attachment uses an existing VPC or Amazon Web Services Direct Connect
  attachment as the underlying transport mechanism.
  """
  def create_transit_gateway_connect(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateTransitGatewayConnect", input, options)
  end

  @doc """
  Creates a Connect peer for a specified transit gateway Connect attachment
  between a
  transit gateway and an appliance.

  The peer address and transit gateway address must be the same IP address family
  (IPv4 or IPv6).

  For more information, see [Connect peers](https://docs.aws.amazon.com/vpc/latest/tgw/tgw-connect.html#tgw-connect-peer)
  in the *Transit Gateways Guide*.
  """
  def create_transit_gateway_connect_peer(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateTransitGatewayConnectPeer", input, options)
  end

  @doc """
  Creates a multicast domain using the specified transit gateway.

  The transit gateway must be in the available state before you create a domain.
  Use
  [DescribeTransitGateways](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeTransitGateways.html)
  to see the state of transit gateway.
  """
  def create_transit_gateway_multicast_domain(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateTransitGatewayMulticastDomain", input, options)
  end

  @doc """
  Requests a transit gateway peering attachment between the specified transit
  gateway
  (requester) and a peer transit gateway (accepter).

  The peer transit gateway can be in
  your account or a different Amazon Web Services account.

  After you create the peering attachment, the owner of the accepter transit
  gateway
  must accept the attachment request.
  """
  def create_transit_gateway_peering_attachment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateTransitGatewayPeeringAttachment", input, options)
  end

  @doc """
  Creates a transit gateway policy table.
  """
  def create_transit_gateway_policy_table(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateTransitGatewayPolicyTable", input, options)
  end

  @doc """
  Creates a reference (route) to a prefix list in a specified transit gateway
  route table.
  """
  def create_transit_gateway_prefix_list_reference(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateTransitGatewayPrefixListReference", input, options)
  end

  @doc """
  Creates a static route for the specified transit gateway route table.
  """
  def create_transit_gateway_route(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateTransitGatewayRoute", input, options)
  end

  @doc """
  Creates a route table for the specified transit gateway.
  """
  def create_transit_gateway_route_table(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateTransitGatewayRouteTable", input, options)
  end

  @doc """
  Advertises a new transit gateway route table.
  """
  def create_transit_gateway_route_table_announcement(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "CreateTransitGatewayRouteTableAnnouncement",
      input,
      options
    )
  end

  @doc """
  Attaches the specified VPC to the specified transit gateway.

  If you attach a VPC with a CIDR range that overlaps the CIDR range of a VPC that
  is already attached,
  the new VPC CIDR range is not propagated to the default propagation route table.

  To send VPC traffic to an attached transit gateway, add a route to the VPC route
  table using `CreateRoute`.
  """
  def create_transit_gateway_vpc_attachment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateTransitGatewayVpcAttachment", input, options)
  end

  @doc """
  An Amazon Web Services Verified Access endpoint is where you define your
  application along with an optional endpoint-level access policy.
  """
  def create_verified_access_endpoint(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateVerifiedAccessEndpoint", input, options)
  end

  @doc """
  An Amazon Web Services Verified Access group is a collection of Amazon Web
  Services Verified Access endpoints who's associated applications have
  similar security requirements.

  Each instance within a Verified Access group shares an Verified Access policy.
  For
  example, you can group all Verified Access instances associated with "sales"
  applications together and
  use one common Verified Access policy.
  """
  def create_verified_access_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateVerifiedAccessGroup", input, options)
  end

  @doc """
  An Amazon Web Services Verified Access instance is a regional entity that
  evaluates application requests and grants
  access only when your security requirements are met.
  """
  def create_verified_access_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateVerifiedAccessInstance", input, options)
  end

  @doc """
  A trust provider is a third-party entity that creates, maintains, and manages
  identity
  information for users and devices.

  When an application request is made, the identity
  information sent by the trust provider is evaluated by Verified Access before
  allowing or
  denying the application request.
  """
  def create_verified_access_trust_provider(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateVerifiedAccessTrustProvider", input, options)
  end

  @doc """
  Creates an EBS volume that can be attached to an instance in the same
  Availability Zone.

  You can create a new empty volume or restore a volume from an EBS snapshot.
  Any Amazon Web Services Marketplace product codes from the snapshot are
  propagated to the volume.

  You can create encrypted volumes. Encrypted volumes must be attached to
  instances that
  support Amazon EBS encryption. Volumes that are created from encrypted snapshots
  are also automatically
  encrypted. For more information, see [Amazon EBS encryption](https://docs.aws.amazon.com/ebs/latest/userguide/ebs-encryption.html)
  in the *Amazon EBS User Guide*.

  You can tag your volumes during creation. For more information, see [Tag your Amazon EC2
  resources](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html)
  in the *Amazon Elastic Compute Cloud User Guide*.

  For more information, see [Create an Amazon EBS volume](https://docs.aws.amazon.com/ebs/latest/userguide/ebs-creating-volume.html)
  in the
  *Amazon EBS User Guide*.
  """
  def create_volume(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateVolume", input, options)
  end

  @doc """
  Creates a VPC with the specified CIDR blocks.

  For more information, see [IP addressing for your VPCs and subnets](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-ip-addressing.html)
  in the
  *Amazon VPC User Guide*.

  You can optionally request an IPv6 CIDR block for the VPC. You can request an
  Amazon-provided IPv6 CIDR block from Amazon's pool of IPv6 addresses or an IPv6
  CIDR
  block from an IPv6 address pool that you provisioned through bring your own IP
  addresses
  ([BYOIP](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-byoip.html)).   By default, each instance that you launch in the VPC has the default DHCP
  options, which
  include only a default DNS server that we provide (AmazonProvidedDNS). For more
  information, see [DHCP option
  sets](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_DHCP_Options.html) in
  the *Amazon VPC User Guide*.

  You can specify the instance tenancy value for the VPC when you create it. You
  can't change
  this value for the VPC after you create it. For more information, see [Dedicated Instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/dedicated-instance.html)
  in the
  *Amazon EC2 User Guide*.
  """
  def create_vpc(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateVpc", input, options)
  end

  @doc """
  Creates a VPC endpoint.

  A VPC endpoint provides a private connection between the
  specified VPC and the specified endpoint service. You can use an endpoint
  service
  provided by Amazon Web Services, an Amazon Web Services Marketplace Partner, or
  another
  Amazon Web Services account. For more information, see the [Amazon Web Services PrivateLink User Guide](https://docs.aws.amazon.com/vpc/latest/privatelink/).
  """
  def create_vpc_endpoint(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateVpcEndpoint", input, options)
  end

  @doc """
  Creates a connection notification for a specified VPC endpoint or VPC endpoint
  service.

  A connection notification notifies you of specific endpoint events. You must
  create an SNS topic to receive notifications. For more information, see [Create a Topic](https://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html) in
  the *Amazon Simple Notification Service Developer Guide*.

  You can create a connection notification for interface endpoints only.
  """
  def create_vpc_endpoint_connection_notification(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateVpcEndpointConnectionNotification", input, options)
  end

  @doc """
  Creates a VPC endpoint service to which service consumers (Amazon Web Services
  accounts,
  users, and IAM roles) can connect.

  Before you create an endpoint service, you must create one of the following for
  your service:

    *
  A [Network Load Balancer](https://docs.aws.amazon.com/elasticloadbalancing/latest/network/).
  Service consumers connect to your service using an interface endpoint.

    *
  A [Gateway Load Balancer](https://docs.aws.amazon.com/elasticloadbalancing/latest/gateway/).
  Service consumers connect to your service using a Gateway Load Balancer
  endpoint.

  If you set the private DNS name, you must prove that you own the private DNS
  domain
  name.

  For more information, see the [Amazon Web Services PrivateLink Guide](https://docs.aws.amazon.com/vpc/latest/privatelink/).
  """
  def create_vpc_endpoint_service_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateVpcEndpointServiceConfiguration", input, options)
  end

  @doc """
  Requests a VPC peering connection between two VPCs: a requester VPC that you own
  and
  an accepter VPC with which to create the connection.

  The accepter VPC can belong to
  another Amazon Web Services account and can be in a different Region to the
  requester VPC.
  The requester VPC and accepter VPC cannot have overlapping CIDR blocks.

  Limitations and rules apply to a VPC peering connection. For more information,
  see
  the
  [limitations](https://docs.aws.amazon.com/vpc/latest/peering/vpc-peering-basics.html#vpc-peering-limitations)
  section in the *VPC Peering Guide*.

  The owner of the accepter VPC must accept the peering request to activate the
  peering
  connection. The VPC peering connection request expires after 7 days, after which
  it
  cannot be accepted or rejected.

  If you create a VPC peering connection request between VPCs with overlapping
  CIDR
  blocks, the VPC peering connection has a status of `failed`.
  """
  def create_vpc_peering_connection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateVpcPeeringConnection", input, options)
  end

  @doc """
  Creates a VPN connection between an existing virtual private gateway or transit
  gateway and a customer gateway.

  The supported connection type is
  `ipsec.1`.

  The response includes information that you need to give to your network
  administrator
  to configure your customer gateway.

  We strongly recommend that you use HTTPS when calling this operation because the
  response contains sensitive cryptographic information for configuring your
  customer
  gateway device.

  If you decide to shut down your VPN connection for any reason and later create a
  new
  VPN connection, you must reconfigure your customer gateway with the new
  information
  returned from this call.

  This is an idempotent operation. If you perform the operation more than once,
  Amazon
  EC2 doesn't return an error.

  For more information, see [Amazon Web Services Site-to-Site VPN](https://docs.aws.amazon.com/vpn/latest/s2svpn/VPC_VPN.html) in the *Amazon
  Web Services Site-to-Site VPN
  User Guide*.
  """
  def create_vpn_connection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateVpnConnection", input, options)
  end

  @doc """
  Creates a static route associated with a VPN connection between an existing
  virtual
  private gateway and a VPN customer gateway.

  The static route allows traffic to be routed
  from the virtual private gateway to the VPN customer gateway.

  For more information, see [Amazon Web Services Site-to-Site VPN](https://docs.aws.amazon.com/vpn/latest/s2svpn/VPC_VPN.html) in the *Amazon
  Web Services Site-to-Site VPN
  User Guide*.
  """
  def create_vpn_connection_route(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateVpnConnectionRoute", input, options)
  end

  @doc """
  Creates a virtual private gateway.

  A virtual private gateway is the endpoint on the
  VPC side of your VPN connection. You can create a virtual private gateway before
  creating the VPC itself.

  For more information, see [Amazon Web Services Site-to-Site VPN](https://docs.aws.amazon.com/vpn/latest/s2svpn/VPC_VPN.html) in the *Amazon
  Web Services Site-to-Site VPN
  User Guide*.
  """
  def create_vpn_gateway(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateVpnGateway", input, options)
  end

  @doc """
  Deletes a carrier gateway.

  If you do not delete the route that contains the carrier gateway as the
  Target, the route is a blackhole route. For information about how to delete a
  route, see
  [DeleteRoute](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DeleteRoute.html).
  """
  def delete_carrier_gateway(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteCarrierGateway", input, options)
  end

  @doc """
  Deletes the specified Client VPN endpoint.

  You must disassociate all target networks before you
  can delete a Client VPN endpoint.
  """
  def delete_client_vpn_endpoint(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteClientVpnEndpoint", input, options)
  end

  @doc """
  Deletes a route from a Client VPN endpoint.

  You can only delete routes that you manually added using
  the **CreateClientVpnRoute** action. You cannot delete routes that were
  automatically added when associating a subnet. To remove routes that have been
  automatically added,
  disassociate the target subnet from the Client VPN endpoint.
  """
  def delete_client_vpn_route(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteClientVpnRoute", input, options)
  end

  @doc """

  Deletes a range of customer-owned IP addresses.
  """
  def delete_coip_cidr(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteCoipCidr", input, options)
  end

  @doc """
  Deletes a pool of customer-owned IP (CoIP) addresses.
  """
  def delete_coip_pool(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteCoipPool", input, options)
  end

  @doc """
  Deletes the specified customer gateway.

  You must delete the VPN connection before you
  can delete the customer gateway.
  """
  def delete_customer_gateway(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteCustomerGateway", input, options)
  end

  @doc """
  Deletes the specified set of DHCP options.

  You must disassociate the set of DHCP options before you can delete it. You can
  disassociate the set of DHCP options by associating either a new set of options
  or the default set of options with the VPC.
  """
  def delete_dhcp_options(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteDhcpOptions", input, options)
  end

  @doc """
  Deletes an egress-only internet gateway.
  """
  def delete_egress_only_internet_gateway(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteEgressOnlyInternetGateway", input, options)
  end

  @doc """
  Deletes the specified EC2 Fleets.

  After you delete an EC2 Fleet, it launches no new instances.

  You must also specify whether a deleted EC2 Fleet should terminate its
  instances. If you
  choose to terminate the instances, the EC2 Fleet enters the
  `deleted_terminating`
  state. Otherwise, the EC2 Fleet enters the `deleted_running` state, and the
  instances
  continue to run until they are interrupted or you terminate them manually.

  For `instant` fleets, EC2 Fleet must terminate the instances when the fleet is
  deleted. A deleted `instant` fleet with running instances is not
  supported.

  ## Restrictions

    *
  You can delete up to 25 `instant` fleets in a single request. If you exceed this
  number, no `instant` fleets are deleted and an error is returned. There is no
  restriction on the number of fleets of type `maintain` or `request` that can be
  deleted
  in a single request.

    *
  Up to 1000 instances can be terminated in a single request to delete
  `instant` fleets.

  For more information, see [Delete an EC2 Fleet](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/manage-ec2-fleet.html#delete-fleet)
  in the *Amazon EC2 User Guide*.
  """
  def delete_fleets(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteFleets", input, options)
  end

  @doc """
  Deletes one or more flow logs.
  """
  def delete_flow_logs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteFlowLogs", input, options)
  end

  @doc """
  Deletes the specified Amazon FPGA Image (AFI).
  """
  def delete_fpga_image(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteFpgaImage", input, options)
  end

  @doc """
  Deletes the specified EC2 Instance Connect Endpoint.
  """
  def delete_instance_connect_endpoint(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteInstanceConnectEndpoint", input, options)
  end

  @doc """
  Deletes the specified event window.

  For more information, see [Define event windows for scheduled events](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/event-windows.html)
  in the *Amazon EC2 User Guide*.
  """
  def delete_instance_event_window(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteInstanceEventWindow", input, options)
  end

  @doc """
  Deletes the specified internet gateway.

  You must detach the internet gateway from the
  VPC before you can delete it.
  """
  def delete_internet_gateway(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteInternetGateway", input, options)
  end

  @doc """
  Delete an IPAM.

  Deleting an IPAM removes all monitored data associated with the IPAM including
  the historical data for CIDRs.

  For more information, see [Delete an IPAM](https://docs.aws.amazon.com/vpc/latest/ipam/delete-ipam.html) in the
  *Amazon VPC IPAM User Guide*.
  """
  def delete_ipam(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteIpam", input, options)
  end

  @doc """
  Delete an IPAM pool.

  You cannot delete an IPAM pool if there are allocations in it or CIDRs
  provisioned to it. To release
  allocations, see
  [ReleaseIpamPoolAllocation](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ReleaseIpamPoolAllocation.html). To deprovision pool
  CIDRs, see
  [DeprovisionIpamPoolCidr](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DeprovisionIpamPoolCidr.html).

  For more information, see [Delete a pool](https://docs.aws.amazon.com/vpc/latest/ipam/delete-pool-ipam.html) in the
  *Amazon VPC IPAM User Guide*.
  """
  def delete_ipam_pool(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteIpamPool", input, options)
  end

  @doc """
  Deletes an IPAM resource discovery.

  A resource discovery is an IPAM component that enables IPAM to manage and
  monitor resources that belong to the owning account.
  """
  def delete_ipam_resource_discovery(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteIpamResourceDiscovery", input, options)
  end

  @doc """
  Delete the scope for an IPAM.

  You cannot delete the default scopes.

  For more information, see [Delete a scope](https://docs.aws.amazon.com/vpc/latest/ipam/delete-scope-ipam.html) in
  the *Amazon VPC IPAM User Guide*.
  """
  def delete_ipam_scope(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteIpamScope", input, options)
  end

  @doc """
  Deletes the specified key pair, by removing the public key from Amazon EC2.
  """
  def delete_key_pair(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteKeyPair", input, options)
  end

  @doc """
  Deletes a launch template.

  Deleting a launch template deletes all of its
  versions.
  """
  def delete_launch_template(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteLaunchTemplate", input, options)
  end

  @doc """
  Deletes one or more versions of a launch template.

  You can't delete the default version of a launch template; you must first assign
  a
  different version as the default. If the default version is the only version for
  the
  launch template, you must delete the entire launch template using
  `DeleteLaunchTemplate`.

  You can delete up to 200 launch template versions in a single request. To delete
  more
  than 200 versions in a single request, use `DeleteLaunchTemplate`, which
  deletes the launch template and all of its versions.

  For more information, see [Delete a launch template version](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/manage-launch-template-versions.html#delete-launch-template-version)
  in the *EC2 User
  Guide*.
  """
  def delete_launch_template_versions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteLaunchTemplateVersions", input, options)
  end

  @doc """
  Deletes the specified route from the specified local gateway route table.
  """
  def delete_local_gateway_route(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteLocalGatewayRoute", input, options)
  end

  @doc """

  Deletes a local gateway route table.
  """
  def delete_local_gateway_route_table(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteLocalGatewayRouteTable", input, options)
  end

  @doc """

  Deletes a local gateway route table virtual interface group association.
  """
  def delete_local_gateway_route_table_virtual_interface_group_association(
        %Client{} = client,
        input,
        options \\ []
      ) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociation",
      input,
      options
    )
  end

  @doc """
  Deletes the specified association between a VPC and local gateway route table.
  """
  def delete_local_gateway_route_table_vpc_association(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "DeleteLocalGatewayRouteTableVpcAssociation",
      input,
      options
    )
  end

  @doc """
  Deletes the specified managed prefix list.

  You must first remove all references to the prefix list in your resources.
  """
  def delete_managed_prefix_list(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteManagedPrefixList", input, options)
  end

  @doc """
  Deletes the specified NAT gateway.

  Deleting a public NAT gateway disassociates its Elastic IP address,
  but does not release the address from your account. Deleting a NAT gateway does
  not delete any NAT gateway
  routes in your route tables.
  """
  def delete_nat_gateway(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteNatGateway", input, options)
  end

  @doc """
  Deletes the specified network ACL.

  You can't delete the ACL if it's associated with any subnets. You can't delete
  the default network ACL.
  """
  def delete_network_acl(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteNetworkAcl", input, options)
  end

  @doc """
  Deletes the specified ingress or egress entry (rule) from the specified network
  ACL.
  """
  def delete_network_acl_entry(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteNetworkAclEntry", input, options)
  end

  @doc """
  Deletes the specified Network Access Scope.
  """
  def delete_network_insights_access_scope(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteNetworkInsightsAccessScope", input, options)
  end

  @doc """
  Deletes the specified Network Access Scope analysis.
  """
  def delete_network_insights_access_scope_analysis(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteNetworkInsightsAccessScopeAnalysis", input, options)
  end

  @doc """
  Deletes the specified network insights analysis.
  """
  def delete_network_insights_analysis(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteNetworkInsightsAnalysis", input, options)
  end

  @doc """
  Deletes the specified path.
  """
  def delete_network_insights_path(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteNetworkInsightsPath", input, options)
  end

  @doc """
  Deletes the specified network interface.

  You must detach the network interface before you can delete it.
  """
  def delete_network_interface(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteNetworkInterface", input, options)
  end

  @doc """
  Deletes a permission for a network interface.

  By default, you cannot delete the
  permission if the account for which you're removing the permission has attached
  the
  network interface to an instance. However, you can force delete the permission,
  regardless of any attachment.
  """
  def delete_network_interface_permission(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteNetworkInterfacePermission", input, options)
  end

  @doc """
  Deletes the specified placement group.

  You must terminate all instances in the
  placement group before you can delete the placement group. For more information,
  see
  [Placement groups](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html)
  in the *Amazon EC2 User Guide*.
  """
  def delete_placement_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeletePlacementGroup", input, options)
  end

  @doc """
  Delete a public IPv4 pool.

  A public IPv4 pool is an EC2 IP address pool required for the public IPv4 CIDRs
  that you own and bring to Amazon Web Services to manage with IPAM. IPv6
  addresses you bring to Amazon Web Services, however, use IPAM pools only.
  """
  def delete_public_ipv4_pool(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeletePublicIpv4Pool", input, options)
  end

  @doc """
  Deletes the queued purchases for the specified Reserved Instances.
  """
  def delete_queued_reserved_instances(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteQueuedReservedInstances", input, options)
  end

  @doc """
  Deletes the specified route from the specified route table.
  """
  def delete_route(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteRoute", input, options)
  end

  @doc """
  Deletes the specified route table.

  You must disassociate the route table from any subnets before you can delete it.
  You can't delete the main route table.
  """
  def delete_route_table(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteRouteTable", input, options)
  end

  @doc """
  Deletes a security group.

  If you attempt to delete a security group that is associated with an instance or
  network interface or is
  referenced by another security group, the operation fails with
  `DependencyViolation`.
  """
  def delete_security_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteSecurityGroup", input, options)
  end

  @doc """
  Deletes the specified snapshot.

  When you make periodic snapshots of a volume, the snapshots are incremental, and
  only the
  blocks on the device that have changed since your last snapshot are saved in the
  new snapshot.
  When you delete a snapshot, only the data not needed for any other snapshot is
  removed. So
  regardless of which prior snapshots have been deleted, all active snapshots will
  have access
  to all the information needed to restore the volume.

  You cannot delete a snapshot of the root device of an EBS volume used by a
  registered AMI.
  You must first de-register the AMI before you can delete the snapshot.

  For more information, see [Delete an Amazon EBS snapshot](https://docs.aws.amazon.com/ebs/latest/userguide/ebs-deleting-snapshot.html)
  in the
  *Amazon EBS User Guide*.
  """
  def delete_snapshot(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteSnapshot", input, options)
  end

  @doc """
  Deletes the data feed for Spot Instances.
  """
  def delete_spot_datafeed_subscription(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteSpotDatafeedSubscription", input, options)
  end

  @doc """
  Deletes the specified subnet.

  You must terminate all running instances in the subnet before you can delete the
  subnet.
  """
  def delete_subnet(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteSubnet", input, options)
  end

  @doc """
  Deletes a subnet CIDR reservation.
  """
  def delete_subnet_cidr_reservation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteSubnetCidrReservation", input, options)
  end

  @doc """
  Deletes the specified set of tags from the specified set of resources.

  To list the current tags, use `DescribeTags`. For more information about
  tags, see [Tag your Amazon EC2
  resources](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html)
  in the *Amazon Elastic Compute Cloud User
  Guide*.
  """
  def delete_tags(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteTags", input, options)
  end

  @doc """
  Deletes the specified Traffic Mirror filter.

  You cannot delete a Traffic Mirror filter that is in use by a Traffic Mirror
  session.
  """
  def delete_traffic_mirror_filter(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteTrafficMirrorFilter", input, options)
  end

  @doc """
  Deletes the specified Traffic Mirror rule.
  """
  def delete_traffic_mirror_filter_rule(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteTrafficMirrorFilterRule", input, options)
  end

  @doc """
  Deletes the specified Traffic Mirror session.
  """
  def delete_traffic_mirror_session(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteTrafficMirrorSession", input, options)
  end

  @doc """
  Deletes the specified Traffic Mirror target.

  You cannot delete a Traffic Mirror target that is in use by a Traffic Mirror
  session.
  """
  def delete_traffic_mirror_target(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteTrafficMirrorTarget", input, options)
  end

  @doc """
  Deletes the specified transit gateway.
  """
  def delete_transit_gateway(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteTransitGateway", input, options)
  end

  @doc """
  Deletes the specified Connect attachment.

  You must first delete any Connect peers for
  the attachment.
  """
  def delete_transit_gateway_connect(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteTransitGatewayConnect", input, options)
  end

  @doc """
  Deletes the specified Connect peer.
  """
  def delete_transit_gateway_connect_peer(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteTransitGatewayConnectPeer", input, options)
  end

  @doc """
  Deletes the specified transit gateway multicast domain.
  """
  def delete_transit_gateway_multicast_domain(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteTransitGatewayMulticastDomain", input, options)
  end

  @doc """
  Deletes a transit gateway peering attachment.
  """
  def delete_transit_gateway_peering_attachment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteTransitGatewayPeeringAttachment", input, options)
  end

  @doc """
  Deletes the specified transit gateway policy table.
  """
  def delete_transit_gateway_policy_table(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteTransitGatewayPolicyTable", input, options)
  end

  @doc """
  Deletes a reference (route) to a prefix list in a specified transit gateway
  route table.
  """
  def delete_transit_gateway_prefix_list_reference(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteTransitGatewayPrefixListReference", input, options)
  end

  @doc """
  Deletes the specified route from the specified transit gateway route table.
  """
  def delete_transit_gateway_route(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteTransitGatewayRoute", input, options)
  end

  @doc """
  Deletes the specified transit gateway route table.

  You must disassociate the route table from any
  transit gateway route tables before you can delete it.
  """
  def delete_transit_gateway_route_table(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteTransitGatewayRouteTable", input, options)
  end

  @doc """
  Advertises to the transit gateway that a transit gateway route table is deleted.
  """
  def delete_transit_gateway_route_table_announcement(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "DeleteTransitGatewayRouteTableAnnouncement",
      input,
      options
    )
  end

  @doc """
  Deletes the specified VPC attachment.
  """
  def delete_transit_gateway_vpc_attachment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteTransitGatewayVpcAttachment", input, options)
  end

  @doc """
  Delete an Amazon Web Services Verified Access endpoint.
  """
  def delete_verified_access_endpoint(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteVerifiedAccessEndpoint", input, options)
  end

  @doc """
  Delete an Amazon Web Services Verified Access group.
  """
  def delete_verified_access_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteVerifiedAccessGroup", input, options)
  end

  @doc """
  Delete an Amazon Web Services Verified Access instance.
  """
  def delete_verified_access_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteVerifiedAccessInstance", input, options)
  end

  @doc """
  Delete an Amazon Web Services Verified Access trust provider.
  """
  def delete_verified_access_trust_provider(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteVerifiedAccessTrustProvider", input, options)
  end

  @doc """
  Deletes the specified EBS volume.

  The volume must be in the `available` state
  (not attached to an instance).

  The volume can remain in the `deleting` state for several minutes.

  For more information, see [Delete an Amazon EBS volume](https://docs.aws.amazon.com/ebs/latest/userguide/ebs-deleting-volume.html)
  in the
  *Amazon EBS User Guide*.
  """
  def delete_volume(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteVolume", input, options)
  end

  @doc """
  Deletes the specified VPC.

  You must detach or delete all gateways and resources that are associated with
  the VPC before you can delete it. For example, you must terminate all instances
  running in the VPC, delete all security groups associated with the VPC (except
  the default one), delete all route tables associated with the VPC (except the
  default one), and so on. When you delete the VPC, it deletes the VPC's default
  security group, network ACL, and route table.
  """
  def delete_vpc(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteVpc", input, options)
  end

  @doc """
  Deletes the specified VPC endpoint connection notifications.
  """
  def delete_vpc_endpoint_connection_notifications(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteVpcEndpointConnectionNotifications", input, options)
  end

  @doc """
  Deletes the specified VPC endpoint service configurations.

  Before you can delete
  an endpoint service configuration, you must reject any `Available` or
  `PendingAcceptance` interface endpoint connections that are attached to
  the service.
  """
  def delete_vpc_endpoint_service_configurations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteVpcEndpointServiceConfigurations", input, options)
  end

  @doc """
  Deletes the specified VPC endpoints.

  When you delete a gateway endpoint, we delete the endpoint routes in the route
  tables for the endpoint.

  When you delete a Gateway Load Balancer endpoint, we delete its endpoint network
  interfaces.
  You can only delete Gateway Load Balancer endpoints when the routes that are
  associated with the endpoint are deleted.

  When you delete an interface endpoint, we delete its endpoint network
  interfaces.
  """
  def delete_vpc_endpoints(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteVpcEndpoints", input, options)
  end

  @doc """
  Deletes a VPC peering connection.

  Either the owner of the requester VPC or the owner
  of the accepter VPC can delete the VPC peering connection if it's in the
  `active` state. The owner of the requester VPC can delete a VPC peering
  connection in the `pending-acceptance` state. You cannot delete a VPC peering
  connection that's in the `failed` or `rejected` state.
  """
  def delete_vpc_peering_connection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteVpcPeeringConnection", input, options)
  end

  @doc """
  Deletes the specified VPN connection.

  If you're deleting the VPC and its associated components, we recommend that you
  detach
  the virtual private gateway from the VPC and delete the VPC before deleting the
  VPN
  connection. If you believe that the tunnel credentials for your VPN connection
  have been
  compromised, you can delete the VPN connection and create a new one that has new
  keys,
  without needing to delete the VPC or virtual private gateway. If you create a
  new VPN
  connection, you must reconfigure the customer gateway device using the new
  configuration
  information returned with the new VPN connection ID.

  For certificate-based authentication, delete all Certificate Manager (ACM)
  private
  certificates used for the Amazon Web Services-side tunnel endpoints for the VPN
  connection before deleting the VPN connection.
  """
  def delete_vpn_connection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteVpnConnection", input, options)
  end

  @doc """
  Deletes the specified static route associated with a VPN connection between an
  existing virtual private gateway and a VPN customer gateway.

  The static route allows
  traffic to be routed from the virtual private gateway to the VPN customer
  gateway.
  """
  def delete_vpn_connection_route(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteVpnConnectionRoute", input, options)
  end

  @doc """
  Deletes the specified virtual private gateway.

  You must first detach the virtual
  private gateway from the VPC. Note that you don't need to delete the virtual
  private
  gateway if you plan to delete and recreate the VPN connection between your VPC
  and your
  network.
  """
  def delete_vpn_gateway(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteVpnGateway", input, options)
  end

  @doc """
  Releases the specified address range that you provisioned for use with your
  Amazon Web Services resources
  through bring your own IP addresses (BYOIP) and deletes the corresponding
  address pool.

  Before you can release an address range, you must stop advertising it using
  `WithdrawByoipCidr` and you must not have any IP addresses allocated from its
  address range.
  """
  def deprovision_byoip_cidr(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeprovisionByoipCidr", input, options)
  end

  @doc """
  Deprovisions your Autonomous System Number (ASN) from your Amazon Web Services
  account.

  This action can only be called after any BYOIP CIDR associations are removed
  from your Amazon Web Services account with
  [DisassociateIpamByoasn](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DisassociateIpamByoasn.html). For more information, see [Tutorial: Bring your ASN to
  IPAM](https://docs.aws.amazon.com/vpc/latest/ipam/tutorials-byoasn.html) in the
  *Amazon VPC IPAM guide*.
  """
  def deprovision_ipam_byoasn(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeprovisionIpamByoasn", input, options)
  end

  @doc """
  Deprovision a CIDR provisioned from an IPAM pool.

  If you deprovision a CIDR from a pool that has a source pool, the CIDR is
  recycled back into the source pool. For more information, see [Deprovision pool CIDRs](https://docs.aws.amazon.com/vpc/latest/ipam/depro-pool-cidr-ipam.html) in
  the *Amazon VPC IPAM User Guide*.
  """
  def deprovision_ipam_pool_cidr(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeprovisionIpamPoolCidr", input, options)
  end

  @doc """
  Deprovision a CIDR from a public IPv4 pool.
  """
  def deprovision_public_ipv4_pool_cidr(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeprovisionPublicIpv4PoolCidr", input, options)
  end

  @doc """
  Deregisters the specified AMI.

  After you deregister an AMI, it can't be used to
  launch new instances.

  If you deregister an AMI that matches a Recycle Bin retention rule, the AMI is
  retained
  in the Recycle Bin for the specified retention period. For more information, see
  [Recycle Bin](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/recycle-bin.html) in
  the *Amazon EC2 User Guide*.

  When you deregister an AMI, it doesn't affect any instances that you've already
  launched from the AMI. You'll continue to incur usage costs for those instances
  until
  you terminate them.

  When you deregister an Amazon EBS-backed AMI, it doesn't affect the snapshot
  that was
  created for the root volume of the instance during the AMI creation process.
  When you
  deregister an instance store-backed AMI, it doesn't affect the files that you
  uploaded
  to Amazon S3 when you created the AMI.
  """
  def deregister_image(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeregisterImage", input, options)
  end

  @doc """
  Deregisters tag keys to prevent tags that have the specified tag keys from being
  included
  in scheduled event notifications for resources in the Region.
  """
  def deregister_instance_event_notification_attributes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "DeregisterInstanceEventNotificationAttributes",
      input,
      options
    )
  end

  @doc """
  Deregisters the specified members (network interfaces) from the transit gateway
  multicast group.
  """
  def deregister_transit_gateway_multicast_group_members(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "DeregisterTransitGatewayMulticastGroupMembers",
      input,
      options
    )
  end

  @doc """
  Deregisters the specified sources (network interfaces) from the transit gateway
  multicast group.
  """
  def deregister_transit_gateway_multicast_group_sources(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "DeregisterTransitGatewayMulticastGroupSources",
      input,
      options
    )
  end

  @doc """
  Describes attributes of your Amazon Web Services account.

  The following are the supported account attributes:

    *

  `default-vpc`: The ID of the default VPC for your account, or `none`.

    *

  `max-instances`: This attribute is no longer supported. The returned
  value does not reflect your actual vCPU limit for running On-Demand Instances.
  For more information, see [On-Demand Instance Limits](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-on-demand-instances.html#ec2-on-demand-instances-limits)
  in the
  *Amazon Elastic Compute Cloud User Guide*.

    *

  `max-elastic-ips`: The maximum number of Elastic IP addresses that you can
  allocate.

    *

  `supported-platforms`: This attribute is deprecated.

    *

  `vpc-max-elastic-ips`: The maximum number of Elastic IP addresses that you can
  allocate.

    *

  `vpc-max-security-groups-per-interface`: The maximum number of security groups
  that you can assign to a network interface.

  The order of the elements in the response, including those within nested
  structures, might vary. Applications should not assume the elements appear in a
  particular order.
  """
  def describe_account_attributes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAccountAttributes", input, options)
  end

  @doc """
  Describes an Elastic IP address transfer.

  For more information, see [Transfer Elastic IP addresses](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-eips.html#transfer-EIPs-intro)
  in the *Amazon Virtual Private Cloud User Guide*.

  When you transfer an Elastic IP address, there is a two-step handshake
  between the source and transfer Amazon Web Services accounts. When the source
  account starts the transfer,
  the transfer account has seven days to accept the Elastic IP address
  transfer. During those seven days, the source account can view the
  pending transfer by using this action. After seven days, the
  transfer expires and ownership of the Elastic IP
  address returns to the source
  account. Accepted transfers are visible to the source account for three days
  after the transfers have been accepted.
  """
  def describe_address_transfers(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAddressTransfers", input, options)
  end

  @doc """
  Describes the specified Elastic IP addresses or all of your Elastic IP
  addresses.
  """
  def describe_addresses(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAddresses", input, options)
  end

  @doc """
  Describes the attributes of the specified Elastic IP addresses.

  For requirements, see [Using reverse DNS for email applications](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html#Using_Elastic_Addressing_Reverse_DNS).
  """
  def describe_addresses_attribute(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAddressesAttribute", input, options)
  end

  @doc """
  Describes the longer ID format settings for all resource types in a specific
  Region.

  This request is useful for performing a quick audit to determine whether a
  specific Region is fully opted in for longer IDs (17-character IDs).

  This request only returns information about resource types that support longer
  IDs.

  The following resource types support longer IDs: `bundle` |
  `conversion-task` | `customer-gateway` | `dhcp-options` |
  `elastic-ip-allocation` | `elastic-ip-association` |
  `export-task` | `flow-log` | `image` |
  `import-task` | `instance` | `internet-gateway` |
  `network-acl` | `network-acl-association` |
  `network-interface` | `network-interface-attachment` |
  `prefix-list` | `reservation` | `route-table` |
  `route-table-association` | `security-group` |
  `snapshot` | `subnet` |
  `subnet-cidr-block-association` | `volume` | `vpc` |
  `vpc-cidr-block-association` | `vpc-endpoint` |
  `vpc-peering-connection` | `vpn-connection` | `vpn-gateway`.
  """
  def describe_aggregate_id_format(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAggregateIdFormat", input, options)
  end

  @doc """
  Describes the Availability Zones, Local Zones, and Wavelength Zones that are
  available to
  you.

  If there is an event impacting a zone, you can use this request to view the
  state and any
  provided messages for that zone.

  For more information about Availability Zones, Local Zones, and Wavelength
  Zones, see
  [Regions and zones](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-regions-availability-zones.html)
  in the *Amazon Elastic Compute Cloud User Guide*.

  The order of the elements in the response, including those within nested
  structures, might vary. Applications should not assume the elements appear in a
  particular order.
  """
  def describe_availability_zones(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAvailabilityZones", input, options)
  end

  @doc """
  Describes the current Infrastructure Performance metric subscriptions.
  """
  def describe_aws_network_performance_metric_subscriptions(
        %Client{} = client,
        input,
        options \\ []
      ) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "DescribeAwsNetworkPerformanceMetricSubscriptions",
      input,
      options
    )
  end

  @doc """
  Describes the specified bundle tasks or all of your bundle tasks.

  Completed bundle tasks are listed for only a limited time. If your bundle task
  is no longer in the list, you can still register an AMI from it. Just use
  `RegisterImage` with the Amazon S3 bucket name and image manifest name you
  provided to the bundle task.

  The order of the elements in the response, including those within nested
  structures, might vary. Applications should not assume the elements appear in a
  particular order.
  """
  def describe_bundle_tasks(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeBundleTasks", input, options)
  end

  @doc """
  Describes the IP address ranges that were specified in calls to
  `ProvisionByoipCidr`.

  To describe the address pools that were created when you provisioned the address
  ranges, use `DescribePublicIpv4Pools` or `DescribeIpv6Pools`.
  """
  def describe_byoip_cidrs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeByoipCidrs", input, options)
  end

  @doc """
  Describes Capacity Block offerings available for purchase in the Amazon Web
  Services Region that you're currently using.

  With Capacity Blocks, you purchase a specific instance type for a period of
  time.
  """
  def describe_capacity_block_offerings(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeCapacityBlockOfferings", input, options)
  end

  @doc """
  Describes one or more Capacity Reservation Fleets.
  """
  def describe_capacity_reservation_fleets(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeCapacityReservationFleets", input, options)
  end

  @doc """
  Describes one or more of your Capacity Reservations.

  The results describe only the Capacity Reservations in the
  Amazon Web Services Region that you're currently using.
  """
  def describe_capacity_reservations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeCapacityReservations", input, options)
  end

  @doc """
  Describes one or more of your carrier gateways.
  """
  def describe_carrier_gateways(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeCarrierGateways", input, options)
  end

  @doc """

  This action is deprecated.

  Describes one or more of your linked EC2-Classic instances. This request only
  returns
  information about EC2-Classic instances linked to a VPC through ClassicLink. You
  cannot
  use this request to return information about other instances.
  """
  def describe_classic_link_instances(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeClassicLinkInstances", input, options)
  end

  @doc """
  Describes the authorization rules for a specified Client VPN endpoint.
  """
  def describe_client_vpn_authorization_rules(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeClientVpnAuthorizationRules", input, options)
  end

  @doc """
  Describes active client connections and connections that have been terminated
  within the last 60
  minutes for the specified Client VPN endpoint.
  """
  def describe_client_vpn_connections(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeClientVpnConnections", input, options)
  end

  @doc """
  Describes one or more Client VPN endpoints in the account.
  """
  def describe_client_vpn_endpoints(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeClientVpnEndpoints", input, options)
  end

  @doc """
  Describes the routes for the specified Client VPN endpoint.
  """
  def describe_client_vpn_routes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeClientVpnRoutes", input, options)
  end

  @doc """
  Describes the target networks associated with the specified Client VPN endpoint.
  """
  def describe_client_vpn_target_networks(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeClientVpnTargetNetworks", input, options)
  end

  @doc """
  Describes the specified customer-owned address pools or all of your
  customer-owned address pools.
  """
  def describe_coip_pools(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeCoipPools", input, options)
  end

  @doc """
  Describes the specified conversion tasks or all your conversion tasks.

  For more information, see the
  [VM Import/Export User Guide](https://docs.aws.amazon.com/vm-import/latest/userguide/).

  For information about the import manifest referenced by this API action, see [VM Import
  Manifest](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/manifest.html).
  """
  def describe_conversion_tasks(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeConversionTasks", input, options)
  end

  @doc """
  Describes one or more of your VPN customer gateways.

  For more information, see [Amazon Web Services Site-to-Site VPN](https://docs.aws.amazon.com/vpn/latest/s2svpn/VPC_VPN.html) in the *Amazon
  Web Services Site-to-Site VPN
  User Guide*.
  """
  def describe_customer_gateways(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeCustomerGateways", input, options)
  end

  @doc """
  Describes one or more of your DHCP options sets.

  For more information, see [DHCP options sets](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_DHCP_Options.html) in
  the
  *Amazon VPC User Guide*.
  """
  def describe_dhcp_options(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeDhcpOptions", input, options)
  end

  @doc """
  Describes one or more of your egress-only internet gateways.
  """
  def describe_egress_only_internet_gateways(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeEgressOnlyInternetGateways", input, options)
  end

  @doc """

  Amazon Elastic Graphics reached end of life on January 8, 2024.

  For
  workloads that require graphics acceleration, we recommend that you use Amazon
  EC2 G4ad,
  G4dn, or G5 instances.

  Describes the Elastic Graphics accelerator associated with your instances. For
  more information
  about Elastic Graphics, see [Amazon Elastic Graphics](https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/elastic-graphics.html).
  """
  def describe_elastic_gpus(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeElasticGpus", input, options)
  end

  @doc """
  Describes the specified export image tasks or all of your export image tasks.
  """
  def describe_export_image_tasks(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeExportImageTasks", input, options)
  end

  @doc """
  Describes the specified export instance tasks or all of your export instance
  tasks.
  """
  def describe_export_tasks(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeExportTasks", input, options)
  end

  @doc """
  Describe details for Windows AMIs that are configured for Windows fast launch.
  """
  def describe_fast_launch_images(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeFastLaunchImages", input, options)
  end

  @doc """
  Describes the state of fast snapshot restores for your snapshots.
  """
  def describe_fast_snapshot_restores(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeFastSnapshotRestores", input, options)
  end

  @doc """
  Describes the events for the specified EC2 Fleet during the specified time.

  EC2 Fleet events are delayed by up to 30 seconds before they can be described.
  This ensures
  that you can query by the last evaluated time and not miss a recorded event. EC2
  Fleet events
  are available for 48 hours.

  For more information, see [Monitor fleet events using Amazon EventBridge](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/fleet-monitor.html)
  in the
  *Amazon EC2 User Guide*.
  """
  def describe_fleet_history(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeFleetHistory", input, options)
  end

  @doc """
  Describes the running instances for the specified EC2 Fleet.

  Currently, `DescribeFleetInstances` does not support fleets of type
  `instant`. Instead, use `DescribeFleets`, specifying the
  `instant` fleet ID in the request.

  For more information, see [Describe your EC2
  Fleet](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/manage-ec2-fleet.html#monitor-ec2-fleet)
  in the *Amazon EC2 User Guide*.
  """
  def describe_fleet_instances(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeFleetInstances", input, options)
  end

  @doc """
  Describes the specified EC2 Fleet or all of your EC2 Fleets.

  If a fleet is of type `instant`, you must specify the fleet ID in the
  request, otherwise the fleet does not appear in the response.

  For more information, see [Describe your EC2
  Fleet](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/manage-ec2-fleet.html#monitor-ec2-fleet)
  in the *Amazon EC2 User Guide*.
  """
  def describe_fleets(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeFleets", input, options)
  end

  @doc """
  Describes one or more flow logs.

  To view the published flow log records, you must view the log destination. For
  example,
  the CloudWatch Logs log group, the Amazon S3 bucket, or the Kinesis Data
  Firehose delivery stream.
  """
  def describe_flow_logs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeFlowLogs", input, options)
  end

  @doc """
  Describes the specified attribute of the specified Amazon FPGA Image (AFI).
  """
  def describe_fpga_image_attribute(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeFpgaImageAttribute", input, options)
  end

  @doc """
  Describes the Amazon FPGA Images (AFIs) available to you.

  These include public AFIs,
  private AFIs that you own, and AFIs owned by other Amazon Web Services accounts
  for which you have load
  permissions.
  """
  def describe_fpga_images(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeFpgaImages", input, options)
  end

  @doc """
  Describes the Dedicated Host reservations that are available to purchase.

  The results describe all of the Dedicated Host reservation offerings, including
  offerings that might not match the instance family and Region of your Dedicated
  Hosts.
  When purchasing an offering, ensure that the instance family and Region of the
  offering
  matches that of the Dedicated Hosts with which it is to be associated. For more
  information about supported instance types, see [Dedicated Hosts](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/dedicated-hosts-overview.html)
  in the *Amazon EC2 User Guide*.
  """
  def describe_host_reservation_offerings(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeHostReservationOfferings", input, options)
  end

  @doc """
  Describes reservations that are associated with Dedicated Hosts in your
  account.
  """
  def describe_host_reservations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeHostReservations", input, options)
  end

  @doc """
  Describes the specified Dedicated Hosts or all your Dedicated Hosts.

  The results describe only the Dedicated Hosts in the Region you're currently
  using.
  All listed instances consume capacity on your Dedicated Host. Dedicated Hosts
  that have
  recently been released are listed with the state `released`.
  """
  def describe_hosts(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeHosts", input, options)
  end

  @doc """
  Describes your IAM instance profile associations.
  """
  def describe_iam_instance_profile_associations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeIamInstanceProfileAssociations", input, options)
  end

  @doc """
  Describes the ID format settings for your resources on a per-Region basis, for
  example, to view which resource types are enabled for longer IDs.

  This request only returns information about resource types whose ID formats can
  be modified; it does not return information about other resource types.

  The following resource types support longer IDs: `bundle` |
  `conversion-task` | `customer-gateway` | `dhcp-options` |
  `elastic-ip-allocation` | `elastic-ip-association` |
  `export-task` | `flow-log` | `image` |
  `import-task` | `instance` | `internet-gateway` |
  `network-acl` | `network-acl-association` |
  `network-interface` | `network-interface-attachment` |
  `prefix-list` | `reservation` | `route-table` |
  `route-table-association` | `security-group` |
  `snapshot` | `subnet` |
  `subnet-cidr-block-association` | `volume` | `vpc`
  | `vpc-cidr-block-association` | `vpc-endpoint` |
  `vpc-peering-connection` | `vpn-connection` | `vpn-gateway`.

  These settings apply to the IAM user who makes the request; they do not apply to
  the entire
  Amazon Web Services account. By default, an IAM user defaults to the same
  settings as the root user, unless
  they explicitly override the settings by running the `ModifyIdFormat` command.
  Resources
  created with longer IDs are visible to all IAM users, regardless of these
  settings and
  provided that they have permission to use the relevant `Describe` command for
  the
  resource type.
  """
  def describe_id_format(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeIdFormat", input, options)
  end

  @doc """
  Describes the ID format settings for resources for the specified IAM user, IAM
  role, or root
  user.

  For example, you can view the resource types that are enabled for longer IDs.
  This request only
  returns information about resource types whose ID formats can be modified; it
  does not return
  information about other resource types. For more information, see [Resource IDs](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/resource-ids.html) in
  the *Amazon Elastic Compute Cloud User Guide*.

  The following resource types support longer IDs: `bundle` |
  `conversion-task` | `customer-gateway` | `dhcp-options` |
  `elastic-ip-allocation` | `elastic-ip-association` |
  `export-task` | `flow-log` | `image` |
  `import-task` | `instance` | `internet-gateway` |
  `network-acl` | `network-acl-association` |
  `network-interface` | `network-interface-attachment` |
  `prefix-list` | `reservation` | `route-table` |
  `route-table-association` | `security-group` |
  `snapshot` | `subnet` |
  `subnet-cidr-block-association` | `volume` | `vpc`
  | `vpc-cidr-block-association` | `vpc-endpoint` |
  `vpc-peering-connection` | `vpn-connection` | `vpn-gateway`.

  These settings apply to the principal specified in the request. They do not
  apply to the
  principal that makes the request.
  """
  def describe_identity_id_format(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeIdentityIdFormat", input, options)
  end

  @doc """
  Describes the specified attribute of the specified AMI.

  You can specify only one attribute at a time.

  The order of the elements in the response, including those within nested
  structures, might vary. Applications should not assume the elements appear in a
  particular order.
  """
  def describe_image_attribute(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeImageAttribute", input, options)
  end

  @doc """
  Describes the specified images (AMIs, AKIs, and ARIs) available to you or all of
  the images available to you.

  The images available to you include public images, private images that you own,
  and private images owned by other
  Amazon Web Services accounts for which you have explicit launch permissions.

  Recently deregistered images appear in the returned results for a short interval
  and then
  return empty results. After all instances that reference a deregistered AMI are
  terminated,
  specifying the ID of the image will eventually return an error indicating that
  the AMI ID
  cannot be found.

  The order of the elements in the response, including those within nested
  structures, might vary. Applications should not assume the elements appear in a
  particular order.
  """
  def describe_images(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeImages", input, options)
  end

  @doc """
  Displays details about an import virtual machine or import snapshot tasks that
  are already created.
  """
  def describe_import_image_tasks(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeImportImageTasks", input, options)
  end

  @doc """
  Describes your import snapshot tasks.
  """
  def describe_import_snapshot_tasks(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeImportSnapshotTasks", input, options)
  end

  @doc """
  Describes the specified attribute of the specified instance.

  You can specify only one
  attribute at a time. Valid attribute values are: `instanceType` |
  `kernel` | `ramdisk` | `userData` |
  `disableApiTermination` | `instanceInitiatedShutdownBehavior`
  | `rootDeviceName` | `blockDeviceMapping` |
  `productCodes` | `sourceDestCheck` | `groupSet` |
  `ebsOptimized` | `sriovNetSupport`
  """
  def describe_instance_attribute(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeInstanceAttribute", input, options)
  end

  @doc """
  Describes the specified EC2 Instance Connect Endpoints or all EC2 Instance
  Connect Endpoints.
  """
  def describe_instance_connect_endpoints(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeInstanceConnectEndpoints", input, options)
  end

  @doc """
  Describes the credit option for CPU usage of the specified burstable performance
  instances.

  The credit options are `standard` and
  `unlimited`.

  If you do not specify an instance ID, Amazon EC2 returns burstable performance
  instances with the `unlimited` credit option, as well as instances that were
  previously configured as T2, T3, and T3a with the `unlimited` credit option.
  For example, if you resize a T2 instance, while it is configured as
  `unlimited`, to an M4 instance, Amazon EC2 returns the M4
  instance.

  If you specify one or more instance IDs, Amazon EC2 returns the credit option
  (`standard` or `unlimited`) of those instances. If you specify
  an instance ID that is not valid, such as an instance that is not a burstable
  performance instance, an error is returned.

  Recently terminated instances might appear in the returned results. This
  interval is
  usually less than one hour.

  If an Availability Zone is experiencing a service disruption and you specify
  instance
  IDs in the affected zone, or do not specify any instance IDs at all, the call
  fails. If
  you specify only instance IDs in an unaffected zone, the call works normally.

  For more information, see [Burstable performance
  instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/burstable-performance-instances.html)
  in the *Amazon EC2 User Guide*.
  """
  def describe_instance_credit_specifications(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeInstanceCreditSpecifications", input, options)
  end

  @doc """
  Describes the tag keys that are registered to appear in scheduled event
  notifications for
  resources in the current Region.
  """
  def describe_instance_event_notification_attributes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "DescribeInstanceEventNotificationAttributes",
      input,
      options
    )
  end

  @doc """
  Describes the specified event windows or all event windows.

  If you specify event window IDs, the output includes information for only the
  specified
  event windows. If you specify filters, the output includes information for only
  those event
  windows that meet the filter criteria. If you do not specify event windows IDs
  or filters,
  the output includes information for all event windows, which can affect
  performance. We
  recommend that you use pagination to ensure that the operation returns quickly
  and
  successfully.

  For more information, see [Define event windows for scheduled events](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/event-windows.html)
  in the *Amazon EC2 User Guide*.
  """
  def describe_instance_event_windows(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeInstanceEventWindows", input, options)
  end

  @doc """
  Describes the status of the specified instances or all of your instances.

  By default,
  only running instances are described, unless you specifically indicate to return
  the
  status of all instances.

  Instance status includes the following components:

    *

  **Status checks** - Amazon EC2 performs status
  checks on running EC2 instances to identify hardware and software issues. For
  more information, see [Status checks for your instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/monitoring-system-instance-status-check.html)
  and [Troubleshoot instances with failed status
  checks](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/TroubleshootingInstances.html)
  in the *Amazon EC2 User
  Guide*.

    *

  **Scheduled events** - Amazon EC2 can schedule
  events (such as reboot, stop, or terminate) for your instances related to
  hardware issues, software updates, or system maintenance. For more information,
  see [Scheduled events for your instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/monitoring-instances-status-check_sched.html)
  in the *Amazon EC2 User
  Guide*.

    *

  **Instance state** - You can manage your instances
  from the moment you launch them through their termination. For more information,
  see [Instance lifecycle](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-lifecycle.html)
  in the *Amazon EC2 User Guide*.

  The order of the elements in the response, including those within nested
  structures, might vary. Applications should not assume the elements appear in a
  particular order.
  """
  def describe_instance_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeInstanceStatus", input, options)
  end

  @doc """
  Describes a tree-based hierarchy that represents the physical host placement of
  your
  EC2 instances within an Availability Zone or Local Zone.

  You can use this information to
  determine the relative proximity of your EC2 instances within the Amazon Web
  Services network to
  support your tightly coupled workloads.

  ## Limitations

    *
  Supported zones

      *
  Availability Zone

      *
  Local Zone

    *
  Supported instance types

      *

  `hpc6a.48xlarge` | `hpc6id.32xlarge` |
  `hpc7a.12xlarge` | `hpc7a.24xlarge` |
  `hpc7a.48xlarge` | `hpc7a.96xlarge` |
  `hpc7g.4xlarge` | `hpc7g.8xlarge` |
  `hpc7g.16xlarge`

      *

  `p3dn.24xlarge` | `p4d.24xlarge` |
  `p4de.24xlarge` | `p5.48xlarge`

      *

  `trn1.2xlarge` | `trn1.32xlarge` |
  `trn1n.32xlarge`

  For more information, see [Amazon EC2 instance topology](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-topology.html)
  in the *Amazon EC2 User Guide*.
  """
  def describe_instance_topology(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeInstanceTopology", input, options)
  end

  @doc """
  Returns a list of all instance types offered.

  The results can be filtered by location (Region or Availability
  Zone). If no location is specified, the instance types offered in the current
  Region are returned.
  """
  def describe_instance_type_offerings(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeInstanceTypeOfferings", input, options)
  end

  @doc """
  Describes the details of the instance types that are offered in a location.

  The results can be filtered by the
  attributes of the instance types.
  """
  def describe_instance_types(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeInstanceTypes", input, options)
  end

  @doc """
  Describes the specified instances or all instances.

  If you specify instance IDs, the output includes information for only the
  specified
  instances. If you specify filters, the output includes information for only
  those
  instances that meet the filter criteria. If you do not specify instance IDs or
  filters,
  the output includes information for all instances, which can affect performance.
  We
  recommend that you use pagination to ensure that the operation returns quickly
  and
  successfully.

  If you specify an instance ID that is not valid, an error is returned. If you
  specify
  an instance that you do not own, it is not included in the output.

  Recently terminated instances might appear in the returned results. This
  interval is
  usually less than one hour.

  If you describe instances in the rare case where an Availability Zone is
  experiencing
  a service disruption and you specify instance IDs that are in the affected zone,
  or do
  not specify any instance IDs at all, the call fails. If you describe instances
  and
  specify only instance IDs that are in an unaffected zone, the call works
  normally.

  The order of the elements in the response, including those within nested
  structures, might vary. Applications should not assume the elements appear in a
  particular order.
  """
  def describe_instances(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeInstances", input, options)
  end

  @doc """
  Describes one or more of your internet gateways.
  """
  def describe_internet_gateways(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeInternetGateways", input, options)
  end

  @doc """
  Describes your Autonomous System Numbers (ASNs), their provisioning statuses,
  and the BYOIP CIDRs with which they are associated.

  For more information, see [Tutorial: Bring your ASN to IPAM](https://docs.aws.amazon.com/vpc/latest/ipam/tutorials-byoasn.html) in the
  *Amazon VPC IPAM guide*.
  """
  def describe_ipam_byoasn(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeIpamByoasn", input, options)
  end

  @doc """
  Get information about your IPAM pools.
  """
  def describe_ipam_pools(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeIpamPools", input, options)
  end

  @doc """
  Describes IPAM resource discoveries.

  A resource discovery is an IPAM component that enables IPAM to manage and
  monitor resources that belong to the owning account.
  """
  def describe_ipam_resource_discoveries(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeIpamResourceDiscoveries", input, options)
  end

  @doc """
  Describes resource discovery association with an Amazon VPC IPAM.

  An associated resource discovery is a resource discovery that has been
  associated with an IPAM..
  """
  def describe_ipam_resource_discovery_associations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "DescribeIpamResourceDiscoveryAssociations",
      input,
      options
    )
  end

  @doc """
  Get information about your IPAM scopes.
  """
  def describe_ipam_scopes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeIpamScopes", input, options)
  end

  @doc """
  Get information about your IPAM pools.

  For more information, see [What is IPAM?](https://docs.aws.amazon.com/vpc/latest/ipam/what-is-it-ipam.html) in the
  *Amazon VPC IPAM User Guide*.
  """
  def describe_ipams(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeIpams", input, options)
  end

  @doc """
  Describes your IPv6 address pools.
  """
  def describe_ipv6_pools(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeIpv6Pools", input, options)
  end

  @doc """
  Describes the specified key pairs or all of your key pairs.

  For more information about key pairs, see [Amazon EC2 key pairs](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html)
  in the *Amazon Elastic Compute Cloud User Guide*.
  """
  def describe_key_pairs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeKeyPairs", input, options)
  end

  @doc """
  Describes one or more versions of a specified launch template.

  You can describe all
  versions, individual versions, or a range of versions. You can also describe all
  the
  latest versions or all the default versions of all the launch templates in your
  account.
  """
  def describe_launch_template_versions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeLaunchTemplateVersions", input, options)
  end

  @doc """
  Describes one or more launch templates.
  """
  def describe_launch_templates(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeLaunchTemplates", input, options)
  end

  @doc """
  Describes the associations between virtual interface groups and local gateway
  route tables.
  """
  def describe_local_gateway_route_table_virtual_interface_group_associations(
        %Client{} = client,
        input,
        options \\ []
      ) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations",
      input,
      options
    )
  end

  @doc """
  Describes the specified associations between VPCs and local gateway route
  tables.
  """
  def describe_local_gateway_route_table_vpc_associations(
        %Client{} = client,
        input,
        options \\ []
      ) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "DescribeLocalGatewayRouteTableVpcAssociations",
      input,
      options
    )
  end

  @doc """
  Describes one or more local gateway route tables.

  By default, all local gateway route tables are described.
  Alternatively, you can filter the results.
  """
  def describe_local_gateway_route_tables(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeLocalGatewayRouteTables", input, options)
  end

  @doc """
  Describes the specified local gateway virtual interface groups.
  """
  def describe_local_gateway_virtual_interface_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "DescribeLocalGatewayVirtualInterfaceGroups",
      input,
      options
    )
  end

  @doc """
  Describes the specified local gateway virtual interfaces.
  """
  def describe_local_gateway_virtual_interfaces(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeLocalGatewayVirtualInterfaces", input, options)
  end

  @doc """
  Describes one or more local gateways.

  By default, all local gateways are described.
  Alternatively, you can filter the results.
  """
  def describe_local_gateways(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeLocalGateways", input, options)
  end

  @doc """
  Describes the lock status for a snapshot.
  """
  def describe_locked_snapshots(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeLockedSnapshots", input, options)
  end

  @doc """
  Describes the specified EC2 Mac Dedicated Host or all of your EC2 Mac Dedicated
  Hosts.
  """
  def describe_mac_hosts(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeMacHosts", input, options)
  end

  @doc """
  Describes your managed prefix lists and any Amazon Web Services-managed prefix
  lists.

  To view the entries for your prefix list, use `GetManagedPrefixListEntries`.
  """
  def describe_managed_prefix_lists(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeManagedPrefixLists", input, options)
  end

  @doc """

  This action is deprecated.

  Describes your Elastic IP addresses that are being moved from or being restored
  to the EC2-Classic platform.
  This request does not return information about any other Elastic IP addresses in
  your account.
  """
  def describe_moving_addresses(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeMovingAddresses", input, options)
  end

  @doc """
  Describes one or more of your NAT gateways.
  """
  def describe_nat_gateways(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeNatGateways", input, options)
  end

  @doc """
  Describes one or more of your network ACLs.

  For more information, see [Network ACLs](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-network-acls.html) in
  the
  *Amazon VPC User Guide*.
  """
  def describe_network_acls(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeNetworkAcls", input, options)
  end

  @doc """
  Describes the specified Network Access Scope analyses.
  """
  def describe_network_insights_access_scope_analyses(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "DescribeNetworkInsightsAccessScopeAnalyses",
      input,
      options
    )
  end

  @doc """
  Describes the specified Network Access Scopes.
  """
  def describe_network_insights_access_scopes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeNetworkInsightsAccessScopes", input, options)
  end

  @doc """
  Describes one or more of your network insights analyses.
  """
  def describe_network_insights_analyses(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeNetworkInsightsAnalyses", input, options)
  end

  @doc """
  Describes one or more of your paths.
  """
  def describe_network_insights_paths(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeNetworkInsightsPaths", input, options)
  end

  @doc """
  Describes a network interface attribute.

  You can specify only one attribute at a time.
  """
  def describe_network_interface_attribute(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeNetworkInterfaceAttribute", input, options)
  end

  @doc """
  Describes the permissions for your network interfaces.
  """
  def describe_network_interface_permissions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeNetworkInterfacePermissions", input, options)
  end

  @doc """
  Describes one or more of your network interfaces.

  If you have a large number of network interfaces, the operation fails unless
  you use pagination or one of the following filters: `group-id`,
  `mac-address`, `private-dns-name`, `private-ip-address`,
  `private-dns-name`, `subnet-id`, or `vpc-id`.
  """
  def describe_network_interfaces(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeNetworkInterfaces", input, options)
  end

  @doc """
  Describes the specified placement groups or all of your placement groups.

  For more
  information, see [Placement groups](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html)
  in the
  *Amazon EC2 User Guide*.
  """
  def describe_placement_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribePlacementGroups", input, options)
  end

  @doc """
  Describes available Amazon Web Services services in a prefix list format, which
  includes the prefix list
  name and prefix list ID of the service and the IP address range for the service.

  We recommend that you use `DescribeManagedPrefixLists` instead.
  """
  def describe_prefix_lists(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribePrefixLists", input, options)
  end

  @doc """
  Describes the ID format settings for the root user and all IAM roles and IAM
  users
  that have explicitly specified a longer ID (17-character ID) preference.

  By default, all IAM roles and IAM users default to the same ID settings as the
  root user, unless they
  explicitly override the settings. This request is useful for identifying those
  IAM users and IAM roles
  that have overridden the default ID settings.

  The following resource types support longer IDs: `bundle` |
  `conversion-task` | `customer-gateway` | `dhcp-options` |
  `elastic-ip-allocation` | `elastic-ip-association` |
  `export-task` | `flow-log` | `image` |
  `import-task` | `instance` | `internet-gateway` |
  `network-acl` | `network-acl-association` |
  `network-interface` | `network-interface-attachment` |
  `prefix-list` | `reservation` | `route-table` |
  `route-table-association` | `security-group` |
  `snapshot` | `subnet` |
  `subnet-cidr-block-association` | `volume` | `vpc`
  | `vpc-cidr-block-association` | `vpc-endpoint` |
  `vpc-peering-connection` | `vpn-connection` | `vpn-gateway`.
  """
  def describe_principal_id_format(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribePrincipalIdFormat", input, options)
  end

  @doc """
  Describes the specified IPv4 address pools.
  """
  def describe_public_ipv4_pools(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribePublicIpv4Pools", input, options)
  end

  @doc """
  Describes the Regions that are enabled for your account, or all Regions.

  For a list of the Regions supported by Amazon EC2, see [
  Amazon Elastic Compute Cloud endpoints and
  quotas](https://docs.aws.amazon.com/general/latest/gr/ec2-service.html).

  For information about enabling and disabling Regions for your account, see
  [Managing Amazon Web Services Regions](https://docs.aws.amazon.com/general/latest/gr/rande-manage.html) in the
  *Amazon Web Services General Reference*.

  The order of the elements in the response, including those within nested
  structures,
  might vary. Applications should not assume the elements appear in a particular
  order.
  """
  def describe_regions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeRegions", input, options)
  end

  @doc """
  Describes a root volume replacement task.

  For more information, see
  [Replace a root volume](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/replace-root.html)
  in the *Amazon Elastic Compute Cloud User Guide*.
  """
  def describe_replace_root_volume_tasks(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeReplaceRootVolumeTasks", input, options)
  end

  @doc """
  Describes one or more of the Reserved Instances that you purchased.

  For more information about Reserved Instances, see [Reserved Instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/concepts-on-demand-reserved-instances.html)
  in the *Amazon EC2 User Guide*.

  The order of the elements in the response, including those within nested
  structures, might vary. Applications should not assume the elements appear in a
  particular order.
  """
  def describe_reserved_instances(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeReservedInstances", input, options)
  end

  @doc """
  Describes your account's Reserved Instance listings in the Reserved Instance
  Marketplace.

  The Reserved Instance Marketplace matches sellers who want to resell Reserved
  Instance capacity that they no longer need with buyers who want to purchase
  additional capacity. Reserved Instances bought and sold through the Reserved
  Instance Marketplace work like any other Reserved Instances.

  As a seller, you choose to list some or all of your Reserved Instances, and you
  specify the upfront price to receive for them. Your Reserved Instances are then
  listed in the Reserved Instance Marketplace and are available for purchase.

  As a buyer, you specify the configuration of the Reserved Instance to purchase,
  and the Marketplace matches what you're searching for with what's available. The
  Marketplace first sells the lowest priced Reserved Instances to you, and
  continues to sell available Reserved Instance listings to you until your demand
  is met. You are charged based on the total price of all of the listings that you
  purchase.

  For more information, see [Reserved Instance Marketplace](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-market-general.html)
  in the *Amazon EC2 User Guide*.

  The order of the elements in the response, including those within nested
  structures, might vary. Applications should not assume the elements appear in a
  particular order.
  """
  def describe_reserved_instances_listings(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeReservedInstancesListings", input, options)
  end

  @doc """
  Describes the modifications made to your Reserved Instances.

  If no parameter is specified, information about all your Reserved Instances
  modification requests is returned. If a modification ID is specified, only
  information about the specific modification is returned.

  For more information, see [Modifying Reserved Instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-modifying.html)
  in the *Amazon EC2 User Guide*.

  The order of the elements in the response, including those within nested
  structures, might vary. Applications should not assume the elements appear in a
  particular order.
  """
  def describe_reserved_instances_modifications(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeReservedInstancesModifications", input, options)
  end

  @doc """
  Describes Reserved Instance offerings that are available for purchase.

  With Reserved Instances, you purchase the right to launch instances for a period
  of time. During that time period, you do not receive insufficient capacity
  errors, and you pay a lower usage rate than the rate charged for On-Demand
  instances for the actual time used.

  If you have listed your own Reserved Instances for sale in the Reserved Instance
  Marketplace, they will be excluded from these results. This is to ensure that
  you do not purchase your own Reserved Instances.

  For more information, see [Reserved Instance Marketplace](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-market-general.html)
  in the *Amazon EC2 User Guide*.

  The order of the elements in the response, including those within nested
  structures, might vary. Applications should not assume the elements appear in a
  particular order.
  """
  def describe_reserved_instances_offerings(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeReservedInstancesOfferings", input, options)
  end

  @doc """
  Describes one or more of your route tables.

  Each subnet in your VPC must be associated with a route table. If a subnet is
  not explicitly associated with any route table, it is implicitly associated with
  the main route table. This command does not return the subnet ID for implicit
  associations.

  For more information, see [Route tables](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Route_Tables.html)
  in the
  *Amazon VPC User Guide*.
  """
  def describe_route_tables(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeRouteTables", input, options)
  end

  @doc """
  Finds available schedules that meet the specified criteria.

  You can search for an available schedule no more than 3 months in advance. You
  must meet the minimum required duration of 1,200 hours per year. For example,
  the minimum daily schedule is 4 hours, the minimum weekly schedule is 24 hours,
  and the minimum monthly schedule is 100 hours.

  After you find a schedule that meets your needs, call
  `PurchaseScheduledInstances`
  to purchase Scheduled Instances with that schedule.
  """
  def describe_scheduled_instance_availability(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeScheduledInstanceAvailability", input, options)
  end

  @doc """
  Describes the specified Scheduled Instances or all your Scheduled Instances.
  """
  def describe_scheduled_instances(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeScheduledInstances", input, options)
  end

  @doc """
  Describes the VPCs on the other side of a VPC peering connection that are
  referencing the security groups you've specified in this request.
  """
  def describe_security_group_references(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeSecurityGroupReferences", input, options)
  end

  @doc """
  Describes one or more of your security group rules.
  """
  def describe_security_group_rules(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeSecurityGroupRules", input, options)
  end

  @doc """
  Describes the specified security groups or all of your security groups.
  """
  def describe_security_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeSecurityGroups", input, options)
  end

  @doc """
  Describes the specified attribute of the specified snapshot.

  You can specify only one
  attribute at a time.

  For more information about EBS snapshots, see [Amazon EBS snapshots](https://docs.aws.amazon.com/ebs/latest/userguide/ebs-snapshots.html)
  in the *Amazon EBS User Guide*.
  """
  def describe_snapshot_attribute(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeSnapshotAttribute", input, options)
  end

  @doc """
  Describes the storage tier status of one or more Amazon EBS snapshots.
  """
  def describe_snapshot_tier_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeSnapshotTierStatus", input, options)
  end

  @doc """
  Describes the specified EBS snapshots available to you or all of the EBS
  snapshots
  available to you.

  The snapshots available to you include public snapshots, private snapshots that
  you own,
  and private snapshots owned by other Amazon Web Services accounts for which you
  have explicit create volume
  permissions.

  The create volume permissions fall into the following categories:

    *

  *public*: The owner of the snapshot granted create volume
  permissions for the snapshot to the `all` group. All Amazon Web Services
  accounts have create
  volume permissions for these snapshots.

    *

  *explicit*: The owner of the snapshot granted create volume
  permissions to a specific Amazon Web Services account.

    *

  *implicit*: An Amazon Web Services account has implicit create volume
  permissions
  for all snapshots it owns.

  The list of snapshots returned can be filtered by specifying snapshot IDs,
  snapshot
  owners, or Amazon Web Services accounts with create volume permissions. If no
  options are specified,
  Amazon EC2 returns all snapshots for which you have create volume permissions.

  If you specify one or more snapshot IDs, only snapshots that have the specified
  IDs are
  returned. If you specify an invalid snapshot ID, an error is returned. If you
  specify a
  snapshot ID for which you do not have access, it is not included in the returned
  results.

  If you specify one or more snapshot owners using the `OwnerIds` option, only
  snapshots from the specified owners and for which you have access are returned.
  The results
  can include the Amazon Web Services account IDs of the specified owners,
  `amazon` for snapshots
  owned by Amazon, or `self` for snapshots that you own.

  If you specify a list of restorable users, only snapshots with create snapshot
  permissions
  for those users are returned. You can specify Amazon Web Services account IDs
  (if you own the snapshots),
  `self` for snapshots for which you own or have explicit permissions, or
  `all` for public snapshots.

  If you are describing a long list of snapshots, we recommend that you paginate
  the output to make the
  list more manageable. For more information, see
  [Pagination](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination).   To get the state of fast snapshot restores for a snapshot, use
  `DescribeFastSnapshotRestores`.

  For more information about EBS snapshots, see [Amazon EBS
  snapshots](https://docs.aws.amazon.com/ebs/latest/userguide/ebs-snapshots.html)
  in the *Amazon EBS User Guide*.
  """
  def describe_snapshots(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeSnapshots", input, options)
  end

  @doc """
  Describes the data feed for Spot Instances.

  For more information, see [Spot Instance data
  feed](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-data-feeds.html)
  in the *Amazon EC2 User Guide for Linux Instances*.
  """
  def describe_spot_datafeed_subscription(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeSpotDatafeedSubscription", input, options)
  end

  @doc """
  Describes the running instances for the specified Spot Fleet.
  """
  def describe_spot_fleet_instances(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeSpotFleetInstances", input, options)
  end

  @doc """
  Describes the events for the specified Spot Fleet request during the specified
  time.

  Spot Fleet events are delayed by up to 30 seconds before they can be described.
  This
  ensures that you can query by the last evaluated time and not miss a recorded
  event.
  Spot Fleet events are available for 48 hours.

  For more information, see [Monitor fleet events using Amazon EventBridge](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/fleet-monitor.html)
  in the *Amazon EC2 User Guide*.
  """
  def describe_spot_fleet_request_history(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeSpotFleetRequestHistory", input, options)
  end

  @doc """
  Describes your Spot Fleet requests.

  Spot Fleet requests are deleted 48 hours after they are canceled and their
  instances
  are terminated.
  """
  def describe_spot_fleet_requests(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeSpotFleetRequests", input, options)
  end

  @doc """
  Describes the specified Spot Instance requests.

  You can use `DescribeSpotInstanceRequests` to find a running Spot Instance by
  examining the response. If the status of the Spot Instance is `fulfilled`, the
  instance ID appears in the response and contains the identifier of the instance.
  Alternatively, you can use
  [DescribeInstances](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeInstances)
  with a filter to look for instances where the instance lifecycle is
  `spot`.

  We recommend that you set `MaxResults` to a value between 5 and 1000 to
  limit the number of items returned. This paginates the output, which makes the
  list
  more manageable and returns the items faster. If the list of items exceeds your
  `MaxResults` value, then that number of items is returned along with a
  `NextToken` value that can be passed to a subsequent
  `DescribeSpotInstanceRequests` request to retrieve the remaining
  items.

  Spot Instance requests are deleted four hours after they are canceled and their
  instances are
  terminated.
  """
  def describe_spot_instance_requests(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeSpotInstanceRequests", input, options)
  end

  @doc """
  Describes the Spot price history.

  For more information, see [Spot Instance pricing history](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-spot-instances-history.html)
  in the
  *Amazon EC2 User Guide for Linux Instances*.

  When you specify a start and end time, the operation returns the prices of the
  instance types within that time range. It also returns the last price change
  before the
  start time, which is the effective price as of the start time.
  """
  def describe_spot_price_history(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeSpotPriceHistory", input, options)
  end

  @doc """
  Describes the stale security group rules for security groups in a specified VPC.

  Rules are stale when they reference a deleted security group in the same VPC or
  peered VPC. Rules can also be stale if they reference a security group in a peer
  VPC for which the VPC peering connection has
  been deleted.
  """
  def describe_stale_security_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeStaleSecurityGroups", input, options)
  end

  @doc """
  Describes the progress of the AMI store tasks.

  You can describe the store tasks for
  specified AMIs. If you don't specify the AMIs, you get a paginated list of store
  tasks from
  the last 31 days.

  For each AMI task, the response indicates if the task is `InProgress`,
  `Completed`, or `Failed`. For tasks `InProgress`, the
  response shows the estimated progress as a percentage.

  Tasks are listed in reverse chronological order. Currently, only tasks from the
  past 31
  days can be viewed.

  To use this API, you must have the required permissions. For more information,
  see [Permissions for storing and restoring AMIs using Amazon S3](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-store-restore.html#ami-s3-permissions)
  in the
  *Amazon EC2 User Guide*.

  For more information, see [Store and restore an AMI using Amazon
  S3](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-store-restore.html)
  in the *Amazon EC2 User Guide*.
  """
  def describe_store_image_tasks(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeStoreImageTasks", input, options)
  end

  @doc """
  Describes one or more of your subnets.

  For more information, see
  [Subnets](https://docs.aws.amazon.com/vpc/latest/userguide/configure-subnets.html)
  in the
  *Amazon VPC User Guide*.
  """
  def describe_subnets(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeSubnets", input, options)
  end

  @doc """
  Describes the specified tags for your EC2 resources.

  For more information about tags, see [Tag your Amazon EC2 resources](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html)
  in the
  *Amazon Elastic Compute Cloud User Guide*.

  The order of the elements in the response, including those within nested
  structures, might vary. Applications should not assume the elements appear in a
  particular order.
  """
  def describe_tags(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeTags", input, options)
  end

  @doc """
  Describes one or more Traffic Mirror filters.
  """
  def describe_traffic_mirror_filters(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeTrafficMirrorFilters", input, options)
  end

  @doc """
  Describes one or more Traffic Mirror sessions.

  By default, all Traffic Mirror sessions are described. Alternatively, you can
  filter the results.
  """
  def describe_traffic_mirror_sessions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeTrafficMirrorSessions", input, options)
  end

  @doc """
  Information about one or more Traffic Mirror targets.
  """
  def describe_traffic_mirror_targets(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeTrafficMirrorTargets", input, options)
  end

  @doc """
  Describes one or more attachments between resources and transit gateways.

  By default, all attachments are described.
  Alternatively, you can filter the results by attachment ID, attachment state,
  resource ID, or resource owner.
  """
  def describe_transit_gateway_attachments(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeTransitGatewayAttachments", input, options)
  end

  @doc """
  Describes one or more Connect peers.
  """
  def describe_transit_gateway_connect_peers(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeTransitGatewayConnectPeers", input, options)
  end

  @doc """
  Describes one or more Connect attachments.
  """
  def describe_transit_gateway_connects(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeTransitGatewayConnects", input, options)
  end

  @doc """
  Describes one or more transit gateway multicast domains.
  """
  def describe_transit_gateway_multicast_domains(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeTransitGatewayMulticastDomains", input, options)
  end

  @doc """
  Describes your transit gateway peering attachments.
  """
  def describe_transit_gateway_peering_attachments(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeTransitGatewayPeeringAttachments", input, options)
  end

  @doc """
  Describes one or more transit gateway route policy tables.
  """
  def describe_transit_gateway_policy_tables(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeTransitGatewayPolicyTables", input, options)
  end

  @doc """
  Describes one or more transit gateway route table advertisements.
  """
  def describe_transit_gateway_route_table_announcements(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "DescribeTransitGatewayRouteTableAnnouncements",
      input,
      options
    )
  end

  @doc """
  Describes one or more transit gateway route tables.

  By default, all transit gateway route tables are described.
  Alternatively, you can filter the results.
  """
  def describe_transit_gateway_route_tables(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeTransitGatewayRouteTables", input, options)
  end

  @doc """
  Describes one or more VPC attachments.

  By default, all VPC attachments are described.
  Alternatively, you can filter the results.
  """
  def describe_transit_gateway_vpc_attachments(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeTransitGatewayVpcAttachments", input, options)
  end

  @doc """
  Describes one or more transit gateways.

  By default, all transit gateways are described. Alternatively, you can
  filter the results.
  """
  def describe_transit_gateways(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeTransitGateways", input, options)
  end

  @doc """
  Describes one or more network interface trunk associations.
  """
  def describe_trunk_interface_associations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeTrunkInterfaceAssociations", input, options)
  end

  @doc """
  Describes the specified Amazon Web Services Verified Access endpoints.
  """
  def describe_verified_access_endpoints(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeVerifiedAccessEndpoints", input, options)
  end

  @doc """
  Describes the specified Verified Access groups.
  """
  def describe_verified_access_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeVerifiedAccessGroups", input, options)
  end

  @doc """
  Describes the specified Amazon Web Services Verified Access instances.
  """
  def describe_verified_access_instance_logging_configurations(
        %Client{} = client,
        input,
        options \\ []
      ) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "DescribeVerifiedAccessInstanceLoggingConfigurations",
      input,
      options
    )
  end

  @doc """
  Describes the specified Amazon Web Services Verified Access instances.
  """
  def describe_verified_access_instances(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeVerifiedAccessInstances", input, options)
  end

  @doc """
  Describes the specified Amazon Web Services Verified Access trust providers.
  """
  def describe_verified_access_trust_providers(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeVerifiedAccessTrustProviders", input, options)
  end

  @doc """
  Describes the specified attribute of the specified volume.

  You can specify only one
  attribute at a time.

  For more information about EBS volumes, see [Amazon EBS volumes](https://docs.aws.amazon.com/ebs/latest/userguide/ebs-volumes.html) in
  the *Amazon EBS User Guide*.
  """
  def describe_volume_attribute(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeVolumeAttribute", input, options)
  end

  @doc """
  Describes the status of the specified volumes.

  Volume status provides the result of the
  checks performed on your volumes to determine events that can impair the
  performance of your
  volumes. The performance of a volume can be affected if an issue occurs on the
  volume's
  underlying host. If the volume's underlying host experiences a power outage or
  system issue,
  after the system is restored, there could be data inconsistencies on the volume.
  Volume events
  notify you if this occurs. Volume actions notify you if any action needs to be
  taken in
  response to the event.

  The `DescribeVolumeStatus` operation provides the following information about
  the specified volumes:

  *Status*: Reflects the current status of the volume. The possible
  values are `ok`, `impaired` , `warning`, or
  `insufficient-data`. If all checks pass, the overall status of the volume is
  `ok`. If the check fails, the overall status is `impaired`. If the
  status is `insufficient-data`, then the checks might still be taking place on
  your
  volume at the time. We recommend that you retry the request. For more
  information about volume
  status, see [Monitor the status of your volumes](https://docs.aws.amazon.com/ebs/latest/userguide/monitoring-volume-status.html)
  in the *Amazon EBS User Guide*.

  *Events*: Reflect the cause of a volume status and might require you to
  take action. For example, if your volume returns an `impaired` status, then the
  volume event might be `potential-data-inconsistency`. This means that your
  volume
  has been affected by an issue with the underlying host, has all I/O operations
  disabled, and
  might have inconsistent data.

  *Actions*: Reflect the actions you might have to take in response to an
  event. For example, if the status of the volume is `impaired` and the volume
  event
  shows `potential-data-inconsistency`, then the action shows
  `enable-volume-io`. This means that you may want to enable the I/O operations
  for
  the volume by calling the `EnableVolumeIO` action and then check the volume
  for data consistency.

  Volume status is based on the volume status checks, and does not reflect the
  volume state.
  Therefore, volume status does not indicate volumes in the `error` state (for
  example, when a volume is incapable of accepting I/O.)

  The order of the elements in the response, including those within nested
  structures, might vary. Applications should not assume the elements appear in a
  particular order.
  """
  def describe_volume_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeVolumeStatus", input, options)
  end

  @doc """
  Describes the specified EBS volumes or all of your EBS volumes.

  If you are describing a long list of volumes, we recommend that you paginate the
  output to make the list
  more manageable. For more information, see
  [Pagination](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination).   For more information about EBS volumes, see [Amazon EBS
  volumes](https://docs.aws.amazon.com/ebs/latest/userguide/ebs-volumes.html) in
  the *Amazon EBS User Guide*.

  The order of the elements in the response, including those within nested
  structures, might vary. Applications should not assume the elements appear in a
  particular order.
  """
  def describe_volumes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeVolumes", input, options)
  end

  @doc """
  Describes the most recent volume modification request for the specified EBS
  volumes.

  If a volume has never been modified, some information in the output will be
  null.
  If a volume has been modified more than once, the output includes only the most
  recent modification request.

  You can also use CloudWatch Events to check the status of a modification to an
  EBS
  volume. For information about CloudWatch Events, see the [Amazon CloudWatch Events User Guide](https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/).
  For more information, see
  [Monitor the progress of volume modifications](https://docs.aws.amazon.com/ebs/latest/userguide/monitoring-volume-modifications.html)
  in the *Amazon EBS User Guide*.
  """
  def describe_volumes_modifications(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeVolumesModifications", input, options)
  end

  @doc """
  Describes the specified attribute of the specified VPC.

  You can specify only one attribute at a time.
  """
  def describe_vpc_attribute(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeVpcAttribute", input, options)
  end

  @doc """

  This action is deprecated.

  Describes the ClassicLink status of the specified VPCs.
  """
  def describe_vpc_classic_link(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeVpcClassicLink", input, options)
  end

  @doc """

  This action is deprecated.

  Describes the ClassicLink DNS support status of one or more VPCs. If enabled,
  the DNS
  hostname of a linked EC2-Classic instance resolves to its private IP address
  when
  addressed from an instance in the VPC to which it's linked. Similarly, the DNS
  hostname
  of an instance in a VPC resolves to its private IP address when addressed from a
  linked
  EC2-Classic instance.
  """
  def describe_vpc_classic_link_dns_support(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeVpcClassicLinkDnsSupport", input, options)
  end

  @doc """
  Describes the connection notifications for VPC endpoints and VPC endpoint
  services.
  """
  def describe_vpc_endpoint_connection_notifications(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "DescribeVpcEndpointConnectionNotifications",
      input,
      options
    )
  end

  @doc """
  Describes the VPC endpoint connections to your VPC endpoint services, including
  any
  endpoints that are pending your acceptance.
  """
  def describe_vpc_endpoint_connections(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeVpcEndpointConnections", input, options)
  end

  @doc """
  Describes the VPC endpoint service configurations in your account (your
  services).
  """
  def describe_vpc_endpoint_service_configurations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeVpcEndpointServiceConfigurations", input, options)
  end

  @doc """
  Describes the principals (service consumers) that are permitted to discover your
  VPC
  endpoint service.
  """
  def describe_vpc_endpoint_service_permissions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeVpcEndpointServicePermissions", input, options)
  end

  @doc """
  Describes available services to which you can create a VPC endpoint.

  When the service provider and the consumer have different accounts in multiple
  Availability Zones, and the consumer views the VPC endpoint service information,
  the
  response only includes the common Availability Zones. For example, when the
  service
  provider account uses `us-east-1a` and `us-east-1c` and the
  consumer uses `us-east-1a` and `us-east-1b`, the response includes
  the VPC endpoint services in the common Availability Zone,
  `us-east-1a`.
  """
  def describe_vpc_endpoint_services(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeVpcEndpointServices", input, options)
  end

  @doc """
  Describes your VPC endpoints.
  """
  def describe_vpc_endpoints(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeVpcEndpoints", input, options)
  end

  @doc """
  Describes one or more of your VPC peering connections.
  """
  def describe_vpc_peering_connections(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeVpcPeeringConnections", input, options)
  end

  @doc """
  Describes one or more of your VPCs.
  """
  def describe_vpcs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeVpcs", input, options)
  end

  @doc """
  Describes one or more of your VPN connections.

  For more information, see [Amazon Web Services Site-to-Site VPN](https://docs.aws.amazon.com/vpn/latest/s2svpn/VPC_VPN.html) in the *Amazon
  Web Services Site-to-Site VPN
  User Guide*.
  """
  def describe_vpn_connections(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeVpnConnections", input, options)
  end

  @doc """
  Describes one or more of your virtual private gateways.

  For more information, see [Amazon Web Services Site-to-Site VPN](https://docs.aws.amazon.com/vpn/latest/s2svpn/VPC_VPN.html) in the *Amazon
  Web Services Site-to-Site VPN
  User Guide*.
  """
  def describe_vpn_gateways(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeVpnGateways", input, options)
  end

  @doc """

  This action is deprecated.

  Unlinks (detaches) a linked EC2-Classic instance from a VPC. After the instance
  has been unlinked,
  the VPC security groups are no longer associated with it. An instance is
  automatically unlinked from
  a VPC when it's stopped.
  """
  def detach_classic_link_vpc(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DetachClassicLinkVpc", input, options)
  end

  @doc """
  Detaches an internet gateway from a VPC, disabling connectivity between the
  internet
  and the VPC.

  The VPC must not contain any running instances with Elastic IP addresses or
  public IPv4 addresses.
  """
  def detach_internet_gateway(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DetachInternetGateway", input, options)
  end

  @doc """
  Detaches a network interface from an instance.
  """
  def detach_network_interface(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DetachNetworkInterface", input, options)
  end

  @doc """
  Detaches the specified Amazon Web Services Verified Access trust provider from
  the specified Amazon Web Services Verified Access instance.
  """
  def detach_verified_access_trust_provider(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DetachVerifiedAccessTrustProvider", input, options)
  end

  @doc """
  Detaches an EBS volume from an instance.

  Make sure to unmount any file systems on the
  device within your operating system before detaching the volume. Failure to do
  so can result
  in the volume becoming stuck in the `busy` state while detaching. If this
  happens,
  detachment can be delayed indefinitely until you unmount the volume, force
  detachment, reboot
  the instance, or all three. If an EBS volume is the root device of an instance,
  it can't be
  detached while the instance is running. To detach the root volume, stop the
  instance
  first.

  When a volume with an Amazon Web Services Marketplace product code is detached
  from an instance, the
  product code is no longer associated with the instance.

  You can't detach or force detach volumes that are attached to Amazon ECS or
  Fargate tasks. Attempting to do this results in the
  `UnsupportedOperationException`
  exception with the `Unable to detach volume attached to ECS tasks` error
  message.

  For more information, see [Detach an Amazon EBS volume](https://docs.aws.amazon.com/ebs/latest/userguide/ebs-detaching-volume.html)
  in the
  *Amazon EBS User Guide*.
  """
  def detach_volume(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DetachVolume", input, options)
  end

  @doc """
  Detaches a virtual private gateway from a VPC.

  You do this if you're planning to turn
  off the VPC and not use it anymore. You can confirm a virtual private gateway
  has been
  completely detached from a VPC by describing the virtual private gateway (any
  attachments to the virtual private gateway are also described).

  You must wait for the attachment's state to switch to `detached` before you
  can delete the VPC or attach a different VPC to the virtual private gateway.
  """
  def detach_vpn_gateway(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DetachVpnGateway", input, options)
  end

  @doc """
  Disables Elastic IP address transfer.

  For more information, see [Transfer Elastic IP addresses](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-eips.html#transfer-EIPs-intro)
  in the *Amazon Virtual Private Cloud User Guide*.
  """
  def disable_address_transfer(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisableAddressTransfer", input, options)
  end

  @doc """
  Disables Infrastructure Performance metric subscriptions.
  """
  def disable_aws_network_performance_metric_subscription(
        %Client{} = client,
        input,
        options \\ []
      ) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "DisableAwsNetworkPerformanceMetricSubscription",
      input,
      options
    )
  end

  @doc """
  Disables EBS encryption by default for your account in the current Region.

  After you disable encryption by default, you can still create encrypted volumes
  by
  enabling encryption when you create each volume.

  Disabling encryption by default does not change the encryption status of your
  existing volumes.

  For more information, see [Amazon EBS encryption](https://docs.aws.amazon.com/ebs/latest/userguide/ebs-encryption.html)
  in the
  *Amazon EBS User Guide*.
  """
  def disable_ebs_encryption_by_default(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisableEbsEncryptionByDefault", input, options)
  end

  @doc """
  Discontinue Windows fast launch for a Windows AMI, and clean up existing
  pre-provisioned snapshots.

  After you disable Windows fast launch, the AMI uses the standard launch process
  for each
  new instance. Amazon EC2 must remove all pre-provisioned snapshots before you
  can enable Windows fast launch again.

  You can only change these settings for Windows AMIs that you own or that have
  been shared with you.
  """
  def disable_fast_launch(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisableFastLaunch", input, options)
  end

  @doc """
  Disables fast snapshot restores for the specified snapshots in the specified
  Availability Zones.
  """
  def disable_fast_snapshot_restores(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisableFastSnapshotRestores", input, options)
  end

  @doc """
  Sets the AMI state to `disabled` and removes all launch permissions from the
  AMI.

  A disabled AMI can't be used for instance launches.

  A disabled AMI can't be shared. If an AMI was public or previously shared, it is
  made
  private. If an AMI was shared with an Amazon Web Services account, organization,
  or Organizational Unit,
  they lose access to the disabled AMI.

  A disabled AMI does not appear in
  [DescribeImages](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeImages.html) API calls by
  default.

  Only the AMI owner can disable an AMI.

  You can re-enable a disabled AMI using
  [EnableImage](http://amazonaws.com/AWSEC2/latest/APIReference/API_EnableImage.html).

  For more information, see [Disable an AMI](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/disable-an-ami.html) in
  the
  *Amazon EC2 User Guide*.
  """
  def disable_image(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisableImage", input, options)
  end

  @doc """
  Disables *block public access for AMIs* at the account level in the
  specified Amazon Web Services Region.

  This removes the *block public access* restriction
  from your account. With the restriction removed, you can publicly share your
  AMIs in the
  specified Amazon Web Services Region.

  The API can take up to 10 minutes to configure this setting. During this time,
  if you run
  [GetImageBlockPublicAccessState](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_GetImageBlockPublicAccessState.html), the response will be
  `block-new-sharing`. When the API has completed the configuration, the response
  will be `unblocked`.

  For more information, see [Block public access to your
  AMIs](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/sharingamis-intro.html#block-public-access-to-amis)
  in
  the *Amazon EC2 User Guide*.
  """
  def disable_image_block_public_access(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisableImageBlockPublicAccess", input, options)
  end

  @doc """
  Cancels the deprecation of the specified AMI.

  For more information, see [Deprecate an AMI](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-deprecate.html) in
  the
  *Amazon EC2 User Guide*.
  """
  def disable_image_deprecation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisableImageDeprecation", input, options)
  end

  @doc """
  Disable the IPAM account.

  For more information, see [Enable integration with Organizations](https://docs.aws.amazon.com/vpc/latest/ipam/enable-integ-ipam.html)
  in the *Amazon VPC IPAM User Guide*.
  """
  def disable_ipam_organization_admin_account(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisableIpamOrganizationAdminAccount", input, options)
  end

  @doc """
  Disables access to the EC2 serial console of all instances for your account.

  By default,
  access to the EC2 serial console is disabled for your account. For more
  information, see
  [Manage account access to the EC2 serial console](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/configure-access-to-serial-console.html#serial-console-account-access)
  in the *Amazon EC2
  User Guide*.
  """
  def disable_serial_console_access(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisableSerialConsoleAccess", input, options)
  end

  @doc """
  Disables the *block public access for snapshots* setting at
  the account level for the specified Amazon Web Services Region.

  After you disable block public
  access for snapshots in a Region, users can publicly share snapshots in that
  Region.

  If block public access is enabled in `block-all-sharing` mode, and
  you disable block public access, all snapshots that were previously publicly
  shared
  are no longer treated as private and they become publicly accessible again.

  For more information, see [
  Block public access for
  snapshots](https://docs.aws.amazon.com/ebs/latest/userguide/block-public-access-snapshots.html)
  in the *Amazon EBS User Guide* .
  """
  def disable_snapshot_block_public_access(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisableSnapshotBlockPublicAccess", input, options)
  end

  @doc """
  Disables the specified resource attachment from propagating routes to the
  specified
  propagation route table.
  """
  def disable_transit_gateway_route_table_propagation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "DisableTransitGatewayRouteTablePropagation",
      input,
      options
    )
  end

  @doc """
  Disables a virtual private gateway (VGW) from propagating routes to a specified
  route
  table of a VPC.
  """
  def disable_vgw_route_propagation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisableVgwRoutePropagation", input, options)
  end

  @doc """

  This action is deprecated.

  Disables ClassicLink for a VPC. You cannot disable ClassicLink for a VPC that
  has EC2-Classic instances
  linked to it.
  """
  def disable_vpc_classic_link(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisableVpcClassicLink", input, options)
  end

  @doc """

  This action is deprecated.

  Disables ClassicLink DNS support for a VPC. If disabled, DNS hostnames resolve
  to
  public IP addresses when addressed between a linked EC2-Classic instance and
  instances
  in the VPC to which it's linked.

  You must specify a VPC ID in the request.
  """
  def disable_vpc_classic_link_dns_support(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisableVpcClassicLinkDnsSupport", input, options)
  end

  @doc """
  Disassociates an Elastic IP address from the instance or network interface it's
  associated with.

  This is an idempotent operation. If you perform the operation more than once,
  Amazon EC2 doesn't return an error.
  """
  def disassociate_address(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisassociateAddress", input, options)
  end

  @doc """
  Disassociates a target network from the specified Client VPN endpoint.

  When you disassociate the
  last target network from a Client VPN, the following happens:

    *
  The route that was automatically added for the VPC is deleted

    *
  All active client connections are terminated

    *
  New client connections are disallowed

    *
  The Client VPN endpoint's status changes to `pending-associate`
  """
  def disassociate_client_vpn_target_network(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisassociateClientVpnTargetNetwork", input, options)
  end

  @doc """
  Disassociates an IAM role from an Certificate Manager (ACM) certificate.

  Disassociating an IAM role
  from an ACM certificate removes the Amazon S3 object that contains the
  certificate, certificate chain, and
  encrypted private key from the Amazon S3 bucket. It also revokes the IAM role's
  permission to use the
  KMS key used to encrypt the private key. This effectively revokes the role's
  permission
  to use the certificate.
  """
  def disassociate_enclave_certificate_iam_role(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisassociateEnclaveCertificateIamRole", input, options)
  end

  @doc """
  Disassociates an IAM instance profile from a running or stopped instance.

  Use `DescribeIamInstanceProfileAssociations` to get the association
  ID.
  """
  def disassociate_iam_instance_profile(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisassociateIamInstanceProfile", input, options)
  end

  @doc """
  Disassociates one or more targets from an event window.

  For more information, see [Define event windows for scheduled events](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/event-windows.html)
  in the *Amazon EC2 User Guide*.
  """
  def disassociate_instance_event_window(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisassociateInstanceEventWindow", input, options)
  end

  @doc """
  Remove the association between your Autonomous System Number (ASN) and your
  BYOIP CIDR.

  You may want to use this action to disassociate an ASN from a CIDR or if you
  want to swap ASNs.
  For more information, see [Tutorial: Bring your ASN to IPAM](https://docs.aws.amazon.com/vpc/latest/ipam/tutorials-byoasn.html) in the
  *Amazon VPC IPAM guide*.
  """
  def disassociate_ipam_byoasn(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisassociateIpamByoasn", input, options)
  end

  @doc """
  Disassociates a resource discovery from an Amazon VPC IPAM.

  A resource discovery is an IPAM component that enables IPAM to manage and
  monitor resources that belong to the owning account.
  """
  def disassociate_ipam_resource_discovery(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisassociateIpamResourceDiscovery", input, options)
  end

  @doc """
  Disassociates secondary Elastic IP addresses (EIPs) from a public NAT gateway.

  You cannot disassociate your primary EIP. For more information, see [Edit secondary IP address
  associations](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-nat-gateway.html#nat-gateway-edit-secondary)
  in the *Amazon VPC User Guide*.

  While disassociating is in progress, you cannot associate/disassociate
  additional EIPs while the connections are being drained. You are, however,
  allowed to delete the NAT gateway.

  An EIP is released only at the end of MaxDrainDurationSeconds. It stays
  associated and supports the existing connections but does not support any new
  connections
  (new connections are distributed across the remaining associated EIPs). As the
  existing
  connections drain out, the EIPs (and the corresponding private IP addresses
  mapped to them)
  are released.
  """
  def disassociate_nat_gateway_address(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisassociateNatGatewayAddress", input, options)
  end

  @doc """
  Disassociates a subnet or gateway from a route table.

  After you perform this action, the subnet no longer uses the routes in the route
  table.
  Instead, it uses the routes in the VPC's main route table. For more information
  about route tables, see [Route tables](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Route_Tables.html)
  in the *Amazon VPC User Guide*.
  """
  def disassociate_route_table(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisassociateRouteTable", input, options)
  end

  @doc """
  Disassociates a CIDR block from a subnet.

  Currently, you can disassociate an IPv6 CIDR block only. You must detach or
  delete all gateways and resources that are associated with the CIDR block before
  you can disassociate it.
  """
  def disassociate_subnet_cidr_block(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisassociateSubnetCidrBlock", input, options)
  end

  @doc """
  Disassociates the specified subnets from the transit gateway multicast domain.
  """
  def disassociate_transit_gateway_multicast_domain(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "DisassociateTransitGatewayMulticastDomain",
      input,
      options
    )
  end

  @doc """
  Removes the association between an an attachment and a policy table.
  """
  def disassociate_transit_gateway_policy_table(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisassociateTransitGatewayPolicyTable", input, options)
  end

  @doc """
  Disassociates a resource attachment from a transit gateway route table.
  """
  def disassociate_transit_gateway_route_table(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisassociateTransitGatewayRouteTable", input, options)
  end

  @doc """
  Removes an association between a branch network interface with a trunk network
  interface.
  """
  def disassociate_trunk_interface(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisassociateTrunkInterface", input, options)
  end

  @doc """
  Disassociates a CIDR block from a VPC.

  To disassociate the CIDR block, you must
  specify its association ID. You can get the association ID by using
  `DescribeVpcs`. You must detach or delete all gateways and resources that
  are associated with the CIDR block before you can disassociate it.

  You cannot disassociate the CIDR block with which you originally created the VPC
  (the
  primary CIDR block).
  """
  def disassociate_vpc_cidr_block(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisassociateVpcCidrBlock", input, options)
  end

  @doc """
  Enables Elastic IP address transfer.

  For more information, see [Transfer Elastic IP addresses](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-eips.html#transfer-EIPs-intro)
  in the *Amazon Virtual Private Cloud User Guide*.
  """
  def enable_address_transfer(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "EnableAddressTransfer", input, options)
  end

  @doc """
  Enables Infrastructure Performance subscriptions.
  """
  def enable_aws_network_performance_metric_subscription(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "EnableAwsNetworkPerformanceMetricSubscription",
      input,
      options
    )
  end

  @doc """
  Enables EBS encryption by default for your account in the current Region.

  After you enable encryption by default, the EBS volumes that you create are
  always encrypted, either using the default KMS key or the KMS key that you
  specified
  when you created each volume. For more information, see [Amazon EBS encryption](https://docs.aws.amazon.com/ebs/latest/userguide/ebs-encryption.html)
  in the
  *Amazon EBS User Guide*.

  You can specify the default KMS key for encryption by default using
  `ModifyEbsDefaultKmsKeyId`
  or `ResetEbsDefaultKmsKeyId`.

  Enabling encryption by default has no effect on the encryption status of your
  existing volumes.

  After you enable encryption by default, you can no longer launch instances
  using instance types that do not support encryption. For more information, see
  [Supported instance
  types](https://docs.aws.amazon.com/ebs/latest/userguide/ebs-encryption-requirements.html#ebs-encryption_supported_instances).
  """
  def enable_ebs_encryption_by_default(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "EnableEbsEncryptionByDefault", input, options)
  end

  @doc """
  When you enable Windows fast launch for a Windows AMI, images are
  pre-provisioned,
  using snapshots to launch instances up to 65% faster.

  To create the optimized Windows
  image, Amazon EC2 launches an instance and runs through Sysprep steps, rebooting
  as required.
  Then it creates a set of reserved snapshots that are used for subsequent
  launches. The
  reserved snapshots are automatically replenished as they are used, depending on
  your
  settings for launch frequency.

  You can only change these settings for Windows AMIs that you own or that have
  been shared with you.
  """
  def enable_fast_launch(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "EnableFastLaunch", input, options)
  end

  @doc """
  Enables fast snapshot restores for the specified snapshots in the specified
  Availability Zones.

  You get the full benefit of fast snapshot restores after they enter the
  `enabled` state.
  To get the current state of fast snapshot restores, use
  `DescribeFastSnapshotRestores`.
  To disable fast snapshot restores, use `DisableFastSnapshotRestores`.

  For more information, see [Amazon EBS fast snapshot restore](https://docs.aws.amazon.com/ebs/latest/userguide/ebs-fast-snapshot-restore.html)
  in the *Amazon EBS User Guide*.
  """
  def enable_fast_snapshot_restores(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "EnableFastSnapshotRestores", input, options)
  end

  @doc """
  Re-enables a disabled AMI.

  The re-enabled AMI is marked as `available` and can
  be used for instance launches, appears in describe operations, and can be
  shared. Amazon Web Services
  accounts, organizations, and Organizational Units that lost access to the AMI
  when it was
  disabled do not regain access automatically. Once the AMI is available, it can
  be shared with
  them again.

  Only the AMI owner can re-enable a disabled AMI.

  For more information, see [Disable an AMI](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/disable-an-ami.html) in
  the
  *Amazon EC2 User Guide*.
  """
  def enable_image(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "EnableImage", input, options)
  end

  @doc """
  Enables *block public access for AMIs* at the account level in the
  specified Amazon Web Services Region.

  This prevents the public sharing of your AMIs. However, if you already
  have public AMIs, they will remain publicly available.

  The API can take up to 10 minutes to configure this setting. During this time,
  if you run
  [GetImageBlockPublicAccessState](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_GetImageBlockPublicAccessState.html), the response will be `unblocked`. When
  the API has completed the configuration, the response will be
  `block-new-sharing`.

  For more information, see [Block
  public access to your
  AMIs](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/sharingamis-intro.html#block-public-access-to-amis)
  in the *Amazon EC2 User Guide*.
  """
  def enable_image_block_public_access(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "EnableImageBlockPublicAccess", input, options)
  end

  @doc """
  Enables deprecation of the specified AMI at the specified date and time.

  For more information, see [Deprecate an AMI](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-deprecate.html) in
  the *Amazon EC2 User Guide*.
  """
  def enable_image_deprecation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "EnableImageDeprecation", input, options)
  end

  @doc """
  Enable an Organizations member account as the IPAM admin account.

  You cannot select the Organizations management account as the IPAM admin
  account. For more information, see [Enable integration with Organizations](https://docs.aws.amazon.com/vpc/latest/ipam/enable-integ-ipam.html)
  in the *Amazon VPC IPAM User Guide*.
  """
  def enable_ipam_organization_admin_account(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "EnableIpamOrganizationAdminAccount", input, options)
  end

  @doc """
  Establishes a trust relationship between Reachability Analyzer and
  Organizations.

  This operation must be performed by the management account for the organization.

  After you establish a trust relationship, a user in the management account or
  a delegated administrator account can run a cross-account analysis using
  resources
  from the member accounts.
  """
  def enable_reachability_analyzer_organization_sharing(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "EnableReachabilityAnalyzerOrganizationSharing",
      input,
      options
    )
  end

  @doc """
  Enables access to the EC2 serial console of all instances for your account.

  By default,
  access to the EC2 serial console is disabled for your account. For more
  information, see [Manage account access to the EC2 serial console](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/configure-access-to-serial-console.html#serial-console-account-access)
  in the *Amazon EC2 User Guide*.
  """
  def enable_serial_console_access(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "EnableSerialConsoleAccess", input, options)
  end

  @doc """
  Enables or modifies the *block public access for snapshots*
  setting at the account level for the specified Amazon Web Services Region.

  After you enable block
  public access for snapshots in a Region, users can no longer request public
  sharing
  for snapshots in that Region. Snapshots that are already publicly shared are
  either
  treated as private or they remain publicly shared, depending on the
  **State** that you specify.

  If block public access is enabled in `block-all-sharing` mode, and
  you change the mode to `block-new-sharing`, all snapshots that were
  previously publicly shared are no longer treated as private and they become
  publicly
  accessible again.

  For more information, see [
  Block public access for
  snapshots](https://docs.aws.amazon.com/ebs/latest/userguide/block-public-access-snapshots.html)
  in the *Amazon EBS User Guide*.
  """
  def enable_snapshot_block_public_access(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "EnableSnapshotBlockPublicAccess", input, options)
  end

  @doc """
  Enables the specified attachment to propagate routes to the specified
  propagation route table.
  """
  def enable_transit_gateway_route_table_propagation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "EnableTransitGatewayRouteTablePropagation",
      input,
      options
    )
  end

  @doc """
  Enables a virtual private gateway (VGW) to propagate routes to the specified
  route
  table of a VPC.
  """
  def enable_vgw_route_propagation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "EnableVgwRoutePropagation", input, options)
  end

  @doc """
  Enables I/O operations for a volume that had I/O operations disabled because the
  data on
  the volume was potentially inconsistent.
  """
  def enable_volume_i_o(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "EnableVolumeIO", input, options)
  end

  @doc """

  This action is deprecated.

  Enables a VPC for ClassicLink. You can then link EC2-Classic instances to your
  ClassicLink-enabled VPC to allow communication over private IP addresses. You
  cannot
  enable your VPC for ClassicLink if any of your VPC route tables have existing
  routes for
  address ranges within the `10.0.0.0/8` IP address range, excluding local
  routes for VPCs in the `10.0.0.0/16` and `10.1.0.0/16` IP address
  ranges.
  """
  def enable_vpc_classic_link(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "EnableVpcClassicLink", input, options)
  end

  @doc """

  This action is deprecated.

  Enables a VPC to support DNS hostname resolution for ClassicLink. If enabled,
  the DNS
  hostname of a linked EC2-Classic instance resolves to its private IP address
  when
  addressed from an instance in the VPC to which it's linked. Similarly, the DNS
  hostname
  of an instance in a VPC resolves to its private IP address when addressed from a
  linked
  EC2-Classic instance.

  You must specify a VPC ID in the request.
  """
  def enable_vpc_classic_link_dns_support(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "EnableVpcClassicLinkDnsSupport", input, options)
  end

  @doc """
  Downloads the client certificate revocation list for the specified Client VPN
  endpoint.
  """
  def export_client_vpn_client_certificate_revocation_list(
        %Client{} = client,
        input,
        options \\ []
      ) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "ExportClientVpnClientCertificateRevocationList",
      input,
      options
    )
  end

  @doc """
  Downloads the contents of the Client VPN endpoint configuration file for the
  specified Client VPN endpoint.

  The Client VPN endpoint configuration
  file includes the Client VPN endpoint and certificate information clients need
  to establish a connection
  with the Client VPN endpoint.
  """
  def export_client_vpn_client_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ExportClientVpnClientConfiguration", input, options)
  end

  @doc """
  Exports an Amazon Machine Image (AMI) to a VM file.

  For more information, see [Exporting a VM directly from an Amazon Machine Image
  (AMI)](https://docs.aws.amazon.com/vm-import/latest/userguide/vmexport_image.html)
  in the
  *VM Import/Export User Guide*.
  """
  def export_image(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ExportImage", input, options)
  end

  @doc """
  Exports routes from the specified transit gateway route table to the specified
  S3 bucket.

  By default, all routes are exported. Alternatively, you can filter by CIDR
  range.

  The routes are saved to the specified bucket in a JSON file. For more
  information, see
  [Export Route Tables to Amazon
  S3](https://docs.aws.amazon.com/vpc/latest/tgw/tgw-route-tables.html#tgw-export-route-tables)
  in *Transit Gateways*.
  """
  def export_transit_gateway_routes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ExportTransitGatewayRoutes", input, options)
  end

  @doc """
  Returns the IAM roles that are associated with the specified ACM (ACM)
  certificate.

  It also returns the name of the Amazon S3 bucket and the Amazon S3 object key
  where the certificate,
  certificate chain, and encrypted private key bundle are stored, and the ARN of
  the KMS key
  that's used to encrypt the private key.
  """
  def get_associated_enclave_certificate_iam_roles(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetAssociatedEnclaveCertificateIamRoles", input, options)
  end

  @doc """
  Gets information about the IPv6 CIDR block associations for a specified IPv6
  address pool.
  """
  def get_associated_ipv6_pool_cidrs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetAssociatedIpv6PoolCidrs", input, options)
  end

  @doc """
  Gets network performance data.
  """
  def get_aws_network_performance_data(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetAwsNetworkPerformanceData", input, options)
  end

  @doc """
  Gets usage information about a Capacity Reservation.

  If the Capacity Reservation is shared, it shows usage information for the
  Capacity Reservation owner
  and each Amazon Web Services account that is currently using the shared
  capacity. If the Capacity Reservation is not shared, it shows only
  the Capacity Reservation owner's usage.
  """
  def get_capacity_reservation_usage(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetCapacityReservationUsage", input, options)
  end

  @doc """
  Describes the allocations from the specified customer-owned address pool.
  """
  def get_coip_pool_usage(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetCoipPoolUsage", input, options)
  end

  @doc """
  Gets the console output for the specified instance.

  For Linux instances, the instance
  console output displays the exact console output that would normally be
  displayed on a
  physical monitor attached to a computer. For Windows instances, the instance
  console
  output includes the last three system event log errors.

  By default, the console output returns buffered information that was posted
  shortly
  after an instance transition state (start, stop, reboot, or terminate). This
  information
  is available for at least one hour after the most recent post. Only the most
  recent 64
  KB of console output is available.

  You can optionally retrieve the latest serial console output at any time during
  the
  instance lifecycle. This option is supported on instance types that use the
  Nitro
  hypervisor.

  For more information, see [Instance console
  output](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-console.html#instance-console-console-output)
  in the *Amazon EC2 User Guide*.
  """
  def get_console_output(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetConsoleOutput", input, options)
  end

  @doc """
  Retrieve a JPG-format screenshot of a running instance to help with
  troubleshooting.

  The returned content is Base64-encoded.
  """
  def get_console_screenshot(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetConsoleScreenshot", input, options)
  end

  @doc """
  Describes the default credit option for CPU usage of a burstable performance
  instance
  family.

  For more information, see [Burstable performance
  instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/burstable-performance-instances.html)
  in the *Amazon EC2 User Guide*.
  """
  def get_default_credit_specification(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetDefaultCreditSpecification", input, options)
  end

  @doc """
  Describes the default KMS key for EBS encryption by default for your account in
  this Region.

  You can change the default KMS key for encryption by default using
  `ModifyEbsDefaultKmsKeyId` or
  `ResetEbsDefaultKmsKeyId`.

  For more information, see [Amazon EBS encryption](https://docs.aws.amazon.com/ebs/latest/userguide/ebs-encryption.html)
  in the *Amazon EBS User Guide*.
  """
  def get_ebs_default_kms_key_id(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetEbsDefaultKmsKeyId", input, options)
  end

  @doc """
  Describes whether EBS encryption by default is enabled for your account in the
  current
  Region.

  For more information, see [Amazon EBS encryption](https://docs.aws.amazon.com/ebs/latest/userguide/ebs-encryption.html)
  in the *Amazon EBS User Guide*.
  """
  def get_ebs_encryption_by_default(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetEbsEncryptionByDefault", input, options)
  end

  @doc """
  Generates a CloudFormation template that streamlines and automates the
  integration of VPC flow logs
  with Amazon Athena.

  This make it easier for you to query and gain insights from VPC flow logs data.
  Based on the information that you provide, we configure resources in the
  template to do the following:

    *
  Create a table in Athena that maps fields to a custom log format

    *
  Create a Lambda function that updates the table with new partitions on a daily,
  weekly, or
  monthly basis

    *
  Create a table partitioned between two timestamps in the past

    *
  Create a set of named queries in Athena that you can use to get started quickly

  `GetFlowLogsIntegrationTemplate` does not support integration between
  Amazon Web Services Transit Gateway Flow Logs and Amazon Athena.
  """
  def get_flow_logs_integration_template(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetFlowLogsIntegrationTemplate", input, options)
  end

  @doc """
  Lists the resource groups to which a Capacity Reservation has been added.
  """
  def get_groups_for_capacity_reservation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetGroupsForCapacityReservation", input, options)
  end

  @doc """
  Preview a reservation purchase with configurations that match those of your
  Dedicated
  Host.

  You must have active Dedicated Hosts in your account before you purchase a
  reservation.

  This is a preview of the `PurchaseHostReservation` action and does not
  result in the offering being purchased.
  """
  def get_host_reservation_purchase_preview(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetHostReservationPurchasePreview", input, options)
  end

  @doc """
  Gets the current state of *block public access for AMIs* at the account
  level in the specified Amazon Web Services Region.

  For more information, see [Block public access to your
  AMIs](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/sharingamis-intro.html#block-public-access-to-amis)
  in the *Amazon EC2 User Guide*.
  """
  def get_image_block_public_access_state(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetImageBlockPublicAccessState", input, options)
  end

  @doc """
  Gets the default instance metadata service (IMDS) settings that are set at the
  account
  level in the specified Amazon Web Services Region.

  For more information, see [Order of precedence for instance metadata options](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/configuring-instance-metadata-options.html#instance-metadata-options-order-of-precedence)
  in the
  *Amazon EC2 User Guide*.
  """
  def get_instance_metadata_defaults(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetInstanceMetadataDefaults", input, options)
  end

  @doc """
  Returns a list of instance types with the specified instance attributes.

  You can
  use the response to preview the instance types without launching instances. Note
  that the response does not consider capacity.

  When you specify multiple parameters, you get instance types that satisfy all of
  the
  specified parameters. If you specify multiple values for a parameter, you get
  instance
  types that satisfy any of the specified values.

  For more information, see [Preview instance types with specified attributes](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-fleet-attribute-based-instance-type-selection.html#spotfleet-get-instance-types-from-instance-requirements),
  [Attribute-based instance type selection for EC2 Fleet](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-fleet-attribute-based-instance-type-selection.html),
  [Attribute-based instance type selection for Spot Fleet](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-fleet-attribute-based-instance-type-selection.html),
  and [Spot placement
  score](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-placement-score.html)
  in the *Amazon EC2 User Guide*, and [Creating an Auto Scaling group using attribute-based instance type
  selection](https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-asg-instance-type-requirements.html)
  in the
  *Amazon EC2 Auto Scaling User Guide*.
  """
  def get_instance_types_from_instance_requirements(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetInstanceTypesFromInstanceRequirements", input, options)
  end

  @doc """
  A binary representation of the UEFI variable store.

  Only non-volatile variables are
  stored. This is a base64 encoded and zlib compressed binary value that must be
  properly
  encoded.

  When you use
  [register-image](https://docs.aws.amazon.com/cli/latest/reference/ec2/register-image.html) to create
  an AMI, you can create an exact copy of your variable store by passing the UEFI
  data in
  the `UefiData` parameter. You can modify the UEFI data by using the
  [python-uefivars tool](https://github.com/awslabs/python-uefivars) on
  GitHub. You can use the tool to convert the UEFI data into a human-readable
  format
  (JSON), which you can inspect and modify, and then convert back into the binary
  format
  to use with register-image.

  For more information, see [UEFI Secure Boot](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/uefi-secure-boot.html)
  in the
  *Amazon EC2 User Guide*.
  """
  def get_instance_uefi_data(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetInstanceUefiData", input, options)
  end

  @doc """
  Retrieve historical information about a CIDR within an IPAM scope.

  For more information, see [View the history of IP addresses](https://docs.aws.amazon.com/vpc/latest/ipam/view-history-cidr-ipam.html)
  in the *Amazon VPC IPAM User Guide*.
  """
  def get_ipam_address_history(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetIpamAddressHistory", input, options)
  end

  @doc """
  Gets IPAM discovered accounts.

  A discovered account is an Amazon Web Services account that is monitored under a
  resource discovery. If you have integrated IPAM with Amazon Web Services
  Organizations, all accounts in the organization are discovered accounts. Only
  the IPAM account can get all discovered accounts in the organization.
  """
  def get_ipam_discovered_accounts(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetIpamDiscoveredAccounts", input, options)
  end

  @doc """
  Gets the public IP addresses that have been discovered by IPAM.
  """
  def get_ipam_discovered_public_addresses(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetIpamDiscoveredPublicAddresses", input, options)
  end

  @doc """
  Returns the resource CIDRs that are monitored as part of a resource discovery.

  A discovered resource is a resource CIDR monitored under a resource discovery.
  The following resources can be discovered: VPCs, Public IPv4 pools, VPC subnets,
  and Elastic IP addresses.
  """
  def get_ipam_discovered_resource_cidrs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetIpamDiscoveredResourceCidrs", input, options)
  end

  @doc """
  Get a list of all the CIDR allocations in an IPAM pool.

  The Region you use should be the IPAM pool locale. The locale is the Amazon Web
  Services Region where this IPAM pool is available for allocations.

  If you use this action after
  [AllocateIpamPoolCidr](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_AllocateIpamPoolCidr.html) or
  [ReleaseIpamPoolAllocation](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ReleaseIpamPoolAllocation.html),
  note that all EC2 API actions follow an [eventual consistency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/query-api-troubleshooting.html#eventual-consistency)
  model.
  """
  def get_ipam_pool_allocations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetIpamPoolAllocations", input, options)
  end

  @doc """
  Get the CIDRs provisioned to an IPAM pool.
  """
  def get_ipam_pool_cidrs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetIpamPoolCidrs", input, options)
  end

  @doc """
  Returns resource CIDRs managed by IPAM in a given scope.

  If an IPAM is associated with more than one resource discovery, the resource
  CIDRs across all of the resource discoveries is returned. A resource discovery
  is an IPAM component that enables IPAM to manage and monitor resources that
  belong to the owning account.
  """
  def get_ipam_resource_cidrs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetIpamResourceCidrs", input, options)
  end

  @doc """
  Retrieves the configuration data of the specified instance.

  You can use this data to
  create a launch template.

  This action calls on other describe actions to get instance information.
  Depending on
  your instance configuration, you may need to allow the following actions in your
  IAM
  policy: `DescribeSpotInstanceRequests`, `DescribeInstanceCreditSpecifications`,
  `DescribeVolumes`, and `DescribeInstanceAttribute`. Or,
  you can allow `describe*` depending on your instance requirements.
  """
  def get_launch_template_data(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetLaunchTemplateData", input, options)
  end

  @doc """
  Gets information about the resources that are associated with the specified
  managed prefix list.
  """
  def get_managed_prefix_list_associations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetManagedPrefixListAssociations", input, options)
  end

  @doc """
  Gets information about the entries for a specified managed prefix list.
  """
  def get_managed_prefix_list_entries(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetManagedPrefixListEntries", input, options)
  end

  @doc """
  Gets the findings for the specified Network Access Scope analysis.
  """
  def get_network_insights_access_scope_analysis_findings(
        %Client{} = client,
        input,
        options \\ []
      ) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "GetNetworkInsightsAccessScopeAnalysisFindings",
      input,
      options
    )
  end

  @doc """
  Gets the content for the specified Network Access Scope.
  """
  def get_network_insights_access_scope_content(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetNetworkInsightsAccessScopeContent", input, options)
  end

  @doc """
  Retrieves the encrypted administrator password for a running Windows instance.

  The Windows password is generated at boot by the `EC2Config` service or
  `EC2Launch` scripts (Windows Server 2016 and later). This usually only
  happens the first time an instance is launched. For more information, see
  [EC2Config](https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/UsingConfig_WinAMI.html) and
  [EC2Launch](https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ec2launch.html)
  in the
  *Amazon EC2 User Guide*.

  For the `EC2Config` service, the password is not generated for rebundled
  AMIs unless `Ec2SetPassword` is enabled before bundling.

  The password is encrypted using the key pair that you specified when you
  launched the
  instance. You must provide the corresponding key pair file.

  When you launch an instance, password generation and encryption may take a few
  minutes. If you try to retrieve the password before it's available, the output
  returns
  an empty string. We recommend that you wait up to 15 minutes after launching an
  instance
  before trying to retrieve the generated password.
  """
  def get_password_data(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetPasswordData", input, options)
  end

  @doc """
  Returns a quote and exchange information for exchanging one or more specified
  Convertible Reserved Instances for a new Convertible Reserved Instance.

  If the exchange
  cannot be performed, the reason is returned in the response. Use
  `AcceptReservedInstancesExchangeQuote` to perform the exchange.
  """
  def get_reserved_instances_exchange_quote(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetReservedInstancesExchangeQuote", input, options)
  end

  @doc """
  Gets security groups that can be associated by the Amazon Web Services account
  making the request with network interfaces in the specified VPC.
  """
  def get_security_groups_for_vpc(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetSecurityGroupsForVpc", input, options)
  end

  @doc """
  Retrieves the access status of your account to the EC2 serial console of all
  instances.

  By
  default, access to the EC2 serial console is disabled for your account. For more
  information, see [Manage account access to the EC2 serial console](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/configure-access-to-serial-console.html#serial-console-account-access)
  in the *Amazon EC2
  User Guide*.
  """
  def get_serial_console_access_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetSerialConsoleAccessStatus", input, options)
  end

  @doc """
  Gets the current state of *block public access for snapshots* setting
  for the account and Region.

  For more information, see [
  Block public access for
  snapshots](https://docs.aws.amazon.com/ebs/latest/userguide/block-public-access-snapshots.html)
  in the *Amazon EBS User Guide*.
  """
  def get_snapshot_block_public_access_state(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetSnapshotBlockPublicAccessState", input, options)
  end

  @doc """
  Calculates the Spot placement score for a Region or Availability Zone based on
  the
  specified target capacity and compute requirements.

  You can specify your compute requirements either by using
  `InstanceRequirementsWithMetadata` and letting Amazon EC2 choose the optimal
  instance types to fulfill your Spot request, or you can specify the instance
  types by using
  `InstanceTypes`.

  For more information, see [Spot placement score](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-placement-score.html)
  in
  the Amazon EC2 User Guide.
  """
  def get_spot_placement_scores(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetSpotPlacementScores", input, options)
  end

  @doc """
  Gets information about the subnet CIDR reservations.
  """
  def get_subnet_cidr_reservations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetSubnetCidrReservations", input, options)
  end

  @doc """
  Lists the route tables to which the specified resource attachment propagates
  routes.
  """
  def get_transit_gateway_attachment_propagations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetTransitGatewayAttachmentPropagations", input, options)
  end

  @doc """
  Gets information about the associations for the transit gateway multicast
  domain.
  """
  def get_transit_gateway_multicast_domain_associations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "GetTransitGatewayMulticastDomainAssociations",
      input,
      options
    )
  end

  @doc """
  Gets a list of the transit gateway policy table associations.
  """
  def get_transit_gateway_policy_table_associations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetTransitGatewayPolicyTableAssociations", input, options)
  end

  @doc """
  Returns a list of transit gateway policy table entries.
  """
  def get_transit_gateway_policy_table_entries(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetTransitGatewayPolicyTableEntries", input, options)
  end

  @doc """
  Gets information about the prefix list references in a specified transit gateway
  route table.
  """
  def get_transit_gateway_prefix_list_references(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetTransitGatewayPrefixListReferences", input, options)
  end

  @doc """
  Gets information about the associations for the specified transit gateway route
  table.
  """
  def get_transit_gateway_route_table_associations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetTransitGatewayRouteTableAssociations", input, options)
  end

  @doc """
  Gets information about the route table propagations for the specified transit
  gateway route table.
  """
  def get_transit_gateway_route_table_propagations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetTransitGatewayRouteTablePropagations", input, options)
  end

  @doc """
  Get the Verified Access policy associated with the endpoint.
  """
  def get_verified_access_endpoint_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetVerifiedAccessEndpointPolicy", input, options)
  end

  @doc """
  Shows the contents of the Verified Access policy associated with the group.
  """
  def get_verified_access_group_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetVerifiedAccessGroupPolicy", input, options)
  end

  @doc """
  Download an Amazon Web Services-provided sample configuration file to be used
  with the customer
  gateway device specified for your Site-to-Site VPN connection.
  """
  def get_vpn_connection_device_sample_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "GetVpnConnectionDeviceSampleConfiguration",
      input,
      options
    )
  end

  @doc """
  Obtain a list of customer gateway devices for which sample configuration
  files can be provided.

  The request has no additional parameters. You can also see the
  list of device types with sample configuration files available under [Your customer gateway
  device](https://docs.aws.amazon.com/vpn/latest/s2svpn/your-cgw.html) in the
  *Amazon Web Services Site-to-Site VPN User Guide*.
  """
  def get_vpn_connection_device_types(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetVpnConnectionDeviceTypes", input, options)
  end

  @doc """
  Get details of available tunnel endpoint maintenance.
  """
  def get_vpn_tunnel_replacement_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetVpnTunnelReplacementStatus", input, options)
  end

  @doc """
  Uploads a client certificate revocation list to the specified Client VPN
  endpoint.

  Uploading a client certificate revocation list overwrites the existing client
  certificate revocation list.

  Uploading a client certificate revocation list resets existing client
  connections.
  """
  def import_client_vpn_client_certificate_revocation_list(
        %Client{} = client,
        input,
        options \\ []
      ) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "ImportClientVpnClientCertificateRevocationList",
      input,
      options
    )
  end

  @doc """

  To import your virtual machines (VMs) with a console-based experience, you can
  use the
  *Import virtual machine images to Amazon Web Services* template in the
  [Migration Hub Orchestrator console](https://console.aws.amazon.com/migrationhub/orchestrator).

  For more
  information, see the [
  *Migration Hub Orchestrator User Guide*
  ](https://docs.aws.amazon.com/migrationhub-orchestrator/latest/userguide/import-vm-images.html).

  Import single or multi-volume disk images or EBS snapshots into an Amazon
  Machine Image (AMI).

  Amazon Web Services VM Import/Export strongly recommends specifying a value for
  either the
  `--license-type` or `--usage-operation` parameter when you create a new
  VM Import task. This ensures your operating system is licensed appropriately and
  your billing is
  optimized.

  For more information, see [Importing a VM as an image using VM
  Import/Export](https://docs.aws.amazon.com/vm-import/latest/userguide/vmimport-image-import.html)
  in the *VM Import/Export User Guide*.
  """
  def import_image(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ImportImage", input, options)
  end

  @doc """

  We recommend that you use the [
  `ImportImage`
  ](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ImportImage.html)
  API.

  For more information, see [Importing a VM as an image using VM Import/Export](https://docs.aws.amazon.com/vm-import/latest/userguide/vmimport-image-import.html)
  in the *VM Import/Export User Guide*.

  Creates an import instance task using metadata from the specified disk image.

  This API action is not supported by the Command Line Interface (CLI). For
  information about using the Amazon EC2 CLI, which is deprecated, see [Importing a VM to Amazon
  EC2](https://awsdocs.s3.amazonaws.com/EC2/ec2-clt.pdf#UsingVirtualMachinesinAmazonEC2)
  in the *Amazon EC2 CLI Reference* PDF file.

  This API action supports only single-volume VMs. To import multi-volume VMs, use
  `ImportImage`
  instead.

  For information about the import manifest referenced by this API action, see [VM Import
  Manifest](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/manifest.html).
  """
  def import_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ImportInstance", input, options)
  end

  @doc """
  Imports the public key from an RSA or ED25519 key pair that you created with a
  third-party tool.

  Compare this with `CreateKeyPair`, in which Amazon Web Services creates the key
  pair and gives the keys to you
  (Amazon Web Services keeps a copy of the public key). With ImportKeyPair, you
  create the key pair and give Amazon Web Services just the public key.
  The private key is never transferred between you and Amazon Web Services.

  For more information about key pairs, see [Amazon EC2 key pairs](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html)
  in the *Amazon Elastic Compute Cloud User Guide*.
  """
  def import_key_pair(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ImportKeyPair", input, options)
  end

  @doc """
  Imports a disk into an EBS snapshot.

  For more information, see [Importing a disk as a snapshot using VM Import/Export](https://docs.aws.amazon.com/vm-import/latest/userguide/vmimport-import-snapshot.html)
  in the
  *VM Import/Export User Guide*.
  """
  def import_snapshot(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ImportSnapshot", input, options)
  end

  @doc """
  Creates an import volume task using metadata from the specified disk image.

  This API action supports only single-volume VMs. To import multi-volume VMs, use
  `ImportImage` instead. To import a disk to a snapshot, use
  `ImportSnapshot` instead.

  This API action is not supported by the Command Line Interface (CLI). For
  information about using the Amazon EC2 CLI, which is deprecated, see [Importing Disks to Amazon
  EBS](https://awsdocs.s3.amazonaws.com/EC2/ec2-clt.pdf#importing-your-volumes-into-amazon-ebs)
  in the *Amazon EC2 CLI Reference* PDF file.

  For information about the import manifest referenced by this API action, see [VM Import
  Manifest](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/manifest.html).
  """
  def import_volume(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ImportVolume", input, options)
  end

  @doc """
  Lists one or more AMIs that are currently in the Recycle Bin.

  For more information,
  see [Recycle Bin](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/recycle-bin.html) in
  the *Amazon EC2 User Guide*.
  """
  def list_images_in_recycle_bin(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListImagesInRecycleBin", input, options)
  end

  @doc """
  Lists one or more snapshots that are currently in the Recycle Bin.
  """
  def list_snapshots_in_recycle_bin(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListSnapshotsInRecycleBin", input, options)
  end

  @doc """
  Locks an Amazon EBS snapshot in either *governance* or *compliance*
  mode to protect it against accidental or malicious deletions for a specific
  duration.

  A locked snapshot
  can't be deleted.

  You can also use this action to modify the lock settings for a snapshot that is
  already locked. The
  allowed modifications depend on the lock mode and lock state:

    *
  If the snapshot is locked in governance mode, you can modify the lock mode and
  the lock duration
  or lock expiration date.

    *
  If the snapshot is locked in compliance mode and it is in the cooling-off
  period, you can modify
  the lock mode and the lock duration or lock expiration date.

    *
  If the snapshot is locked in compliance mode and the cooling-off period has
  lapsed, you can
  only increase the lock duration or extend the lock expiration date.
  """
  def lock_snapshot(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "LockSnapshot", input, options)
  end

  @doc """
  Modifies an attribute of the specified Elastic IP address.

  For requirements, see [Using reverse DNS for email applications](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html#Using_Elastic_Addressing_Reverse_DNS).
  """
  def modify_address_attribute(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyAddressAttribute", input, options)
  end

  @doc """
  Changes the opt-in status of the Local Zone and Wavelength Zone group for your
  account.

  Use [
  DescribeAvailabilityZones](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeAvailabilityZones.html)
  to view the value for `GroupName`.
  """
  def modify_availability_zone_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyAvailabilityZoneGroup", input, options)
  end

  @doc """
  Modifies a Capacity Reservation's capacity and the conditions under which it is
  to be released.

  You
  cannot change a Capacity Reservation's instance type, EBS optimization, instance
  store settings,
  platform, Availability Zone, or instance eligibility. If you need to modify any
  of these
  attributes, we recommend that you cancel the Capacity Reservation, and then
  create a new one with
  the required attributes.
  """
  def modify_capacity_reservation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyCapacityReservation", input, options)
  end

  @doc """
  Modifies a Capacity Reservation Fleet.

  When you modify the total target capacity of a Capacity Reservation Fleet, the
  Fleet automatically
  creates new Capacity Reservations, or modifies or cancels existing Capacity
  Reservations in the Fleet
  to meet the new total target capacity. When you modify the end date for the
  Fleet, the end dates for
  all of the individual Capacity Reservations in the Fleet are updated
  accordingly.
  """
  def modify_capacity_reservation_fleet(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyCapacityReservationFleet", input, options)
  end

  @doc """
  Modifies the specified Client VPN endpoint.

  Modifying the DNS server resets existing client connections.
  """
  def modify_client_vpn_endpoint(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyClientVpnEndpoint", input, options)
  end

  @doc """
  Modifies the default credit option for CPU usage of burstable performance
  instances.

  The default credit option is set at the account level per Amazon Web Services
  Region, and
  is specified per instance family. All new burstable performance instances in the
  account
  launch using the default credit option.

  `ModifyDefaultCreditSpecification` is an asynchronous operation, which
  works at an Amazon Web Services Region level and modifies the credit option for
  each
  Availability Zone. All zones in a Region are updated within five minutes. But if
  instances are launched during this operation, they might not get the new credit
  option
  until the zone is updated. To verify whether the update has occurred, you can
  call
  `GetDefaultCreditSpecification` and check
  `DefaultCreditSpecification` for updates.

  For more information, see [Burstable performance
  instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/burstable-performance-instances.html)
  in the *Amazon EC2 User Guide*.
  """
  def modify_default_credit_specification(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyDefaultCreditSpecification", input, options)
  end

  @doc """
  Changes the default KMS key for EBS encryption by default for your account in
  this Region.

  Amazon Web Services creates a unique Amazon Web Services managed KMS key in each
  Region for use with encryption by default. If
  you change the default KMS key to a symmetric customer managed KMS key, it is
  used instead of the Amazon Web Services
  managed KMS key. To reset the default KMS key to the Amazon Web Services managed
  KMS key for EBS, use `ResetEbsDefaultKmsKeyId`. Amazon EBS does not support
  asymmetric KMS keys.

  If you delete or disable the customer managed KMS key that you specified for use
  with
  encryption by default, your instances will fail to launch.

  For more information, see [Amazon EBS encryption](https://docs.aws.amazon.com/ebs/latest/userguide/ebs-encryption.html)
  in the *Amazon EBS User Guide*.
  """
  def modify_ebs_default_kms_key_id(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyEbsDefaultKmsKeyId", input, options)
  end

  @doc """
  Modifies the specified EC2 Fleet.

  You can only modify an EC2 Fleet request of type `maintain`.

  While the EC2 Fleet is being modified, it is in the `modifying` state.

  To scale up your EC2 Fleet, increase its target capacity. The EC2 Fleet launches
  the additional
  Spot Instances according to the allocation strategy for the EC2 Fleet request.
  If the allocation
  strategy is `lowest-price`, the EC2 Fleet launches instances using the Spot
  Instance
  pool with the lowest price. If the allocation strategy is `diversified`, the
  EC2 Fleet distributes the instances across the Spot Instance pools. If the
  allocation strategy
  is `capacity-optimized`, EC2 Fleet launches instances from Spot Instance pools
  with optimal
  capacity for the number of instances that are launching.

  To scale down your EC2 Fleet, decrease its target capacity. First, the EC2 Fleet
  cancels any open
  requests that exceed the new target capacity. You can request that the EC2 Fleet
  terminate Spot
  Instances until the size of the fleet no longer exceeds the new target capacity.
  If the
  allocation strategy is `lowest-price`, the EC2 Fleet terminates the instances
  with
  the highest price per unit. If the allocation strategy is `capacity-optimized`,
  the EC2 Fleet terminates the instances in the Spot Instance pools that have the
  least available
  Spot Instance capacity. If the allocation strategy is `diversified`, the EC2
  Fleet terminates
  instances across the Spot Instance pools. Alternatively, you can request that
  the EC2 Fleet keep
  the fleet at its current size, but not replace any Spot Instances that are
  interrupted or
  that you terminate manually.

  If you are finished with your EC2 Fleet for now, but will use it again later,
  you can set the
  target capacity to 0.
  """
  def modify_fleet(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyFleet", input, options)
  end

  @doc """
  Modifies the specified attribute of the specified Amazon FPGA Image (AFI).
  """
  def modify_fpga_image_attribute(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyFpgaImageAttribute", input, options)
  end

  @doc """
  Modify the auto-placement setting of a Dedicated Host.

  When auto-placement is enabled,
  any instances that you launch with a tenancy of `host` but without a specific
  host ID are placed onto any available Dedicated Host in your account that has
  auto-placement enabled. When auto-placement is disabled, you need to provide a
  host ID
  to have the instance launch onto a specific host. If no host ID is provided, the
  instance is launched onto a suitable host with auto-placement enabled.

  You can also use this API action to modify a Dedicated Host to support either
  multiple
  instance types in an instance family, or to support a specific instance type
  only.
  """
  def modify_hosts(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyHosts", input, options)
  end

  @doc """
  Modifies the ID format for the specified resource on a per-Region basis.

  You can
  specify that resources should receive longer IDs (17-character IDs) when they
  are
  created.

  This request can only be used to modify longer ID settings for resource types
  that
  are within the opt-in period. Resources currently in their opt-in period
  include:
  `bundle` | `conversion-task` | `customer-gateway` | `dhcp-options` |
  `elastic-ip-allocation` | `elastic-ip-association` |
  `export-task` | `flow-log` | `image` |
  `import-task` | `internet-gateway` | `network-acl`
  | `network-acl-association` | `network-interface` |
  `network-interface-attachment` | `prefix-list` |
  `route-table` | `route-table-association` |
  `security-group` | `subnet` |
  `subnet-cidr-block-association` | `vpc` |
  `vpc-cidr-block-association` | `vpc-endpoint` | `vpc-peering-connection` |
  `vpn-connection` | `vpn-gateway`.

  This setting applies to the IAM user who makes the request; it does not apply to
  the
  entire Amazon Web Services account. By default, an IAM user defaults to the same
  settings as the root user. If
  you're using this action as the root user, then these settings apply to the
  entire account,
  unless an IAM user explicitly overrides these settings for themselves. For more
  information,
  see [Resource IDs](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/resource-ids.html)
  in the *Amazon Elastic Compute Cloud User Guide*.

  Resources created with longer IDs are visible to all IAM roles and users,
  regardless
  of these settings and provided that they have permission to use the relevant
  `Describe` command for the resource type.
  """
  def modify_id_format(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyIdFormat", input, options)
  end

  @doc """
  Modifies the ID format of a resource for a specified IAM user, IAM role, or the
  root
  user for an account; or all IAM users, IAM roles, and the root user for an
  account.

  You can
  specify that resources should receive longer IDs (17-character IDs) when they
  are created.

  This request can only be used to modify longer ID settings for resource types
  that are
  within the opt-in period. Resources currently in their opt-in period include:
  `bundle` | `conversion-task` | `customer-gateway` | `dhcp-options` |
  `elastic-ip-allocation` | `elastic-ip-association` |
  `export-task` | `flow-log` | `image` |
  `import-task` | `internet-gateway` | `network-acl`
  | `network-acl-association` | `network-interface` |
  `network-interface-attachment` | `prefix-list` |
  `route-table` | `route-table-association` |
  `security-group` | `subnet` |
  `subnet-cidr-block-association` | `vpc` |
  `vpc-cidr-block-association` | `vpc-endpoint` | `vpc-peering-connection` |
  `vpn-connection` | `vpn-gateway`.

  For more information, see [Resource IDs](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/resource-ids.html) in
  the
  *Amazon Elastic Compute Cloud User Guide*.

  This setting applies to the principal specified in the request; it does not
  apply to the
  principal that makes the request.

  Resources created with longer IDs are visible to all IAM roles and users,
  regardless of these
  settings and provided that they have permission to use the relevant `Describe`
  command for the resource type.
  """
  def modify_identity_id_format(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyIdentityIdFormat", input, options)
  end

  @doc """
  Modifies the specified attribute of the specified AMI.

  You can specify only one attribute at a time.

  To specify the attribute, you can use the `Attribute` parameter, or one of the
  following parameters:
  `Description`, `ImdsSupport`, or `LaunchPermission`.

  Images with an Amazon Web Services Marketplace product code cannot be made
  public.

  To enable the SriovNetSupport enhanced networking attribute of an image, enable
  SriovNetSupport on an instance
  and create an AMI from the instance.
  """
  def modify_image_attribute(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyImageAttribute", input, options)
  end

  @doc """
  Modifies the specified attribute of the specified instance.

  You can specify only one
  attribute at a time.

  **Note: **Using this action to change the security groups
  associated with an elastic network interface (ENI) attached to an instance can
  result in an error if the instance has more than one ENI. To change the security
  groups
  associated with an ENI attached to an instance that has multiple ENIs, we
  recommend that
  you use the `ModifyNetworkInterfaceAttribute` action.

  To modify some attributes, the instance must be stopped. For more information,
  see
  [Modify a stopped instance](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_ChangingAttributesWhileInstanceStopped.html)
  in the
  *Amazon EC2 User Guide*.
  """
  def modify_instance_attribute(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyInstanceAttribute", input, options)
  end

  @doc """
  Modifies the Capacity Reservation settings for a stopped instance.

  Use this action to configure an
  instance to target a specific Capacity Reservation, run in any `open` Capacity
  Reservation with matching
  attributes, or run On-Demand Instance capacity.
  """
  def modify_instance_capacity_reservation_attributes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "ModifyInstanceCapacityReservationAttributes",
      input,
      options
    )
  end

  @doc """
  Modifies the credit option for CPU usage on a running or stopped burstable
  performance
  instance.

  The credit options are `standard` and
  `unlimited`.

  For more information, see [Burstable performance
  instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/burstable-performance-instances.html)
  in the *Amazon EC2 User Guide*.
  """
  def modify_instance_credit_specification(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyInstanceCreditSpecification", input, options)
  end

  @doc """
  Modifies the start time for a scheduled Amazon EC2 instance event.
  """
  def modify_instance_event_start_time(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyInstanceEventStartTime", input, options)
  end

  @doc """
  Modifies the specified event window.

  You can define either a set of time ranges or a cron expression when modifying
  the event
  window, but not both.

  To modify the targets associated with the event window, use the
  `AssociateInstanceEventWindow` and `DisassociateInstanceEventWindow` API.

  If Amazon Web Services has already scheduled an event, modifying an event window
  won't change the time
  of the scheduled event.

  For more information, see [Define event windows for scheduled events](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/event-windows.html)
  in the *Amazon EC2 User Guide*.
  """
  def modify_instance_event_window(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyInstanceEventWindow", input, options)
  end

  @doc """
  Modifies the recovery behavior of your instance to disable simplified automatic
  recovery or set the recovery behavior to default.

  The default configuration will not
  enable simplified automatic recovery for an unsupported instance type. For more
  information, see [Simplified automatic recovery](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-recover.html#instance-configuration-recovery).
  """
  def modify_instance_maintenance_options(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyInstanceMaintenanceOptions", input, options)
  end

  @doc """
  Modifies the default instance metadata service (IMDS) settings at the account
  level in
  the specified Amazon Web Services Region.

  To remove a parameter's account-level default setting, specify
  `no-preference`. At instance launch, the value will come from the
  AMI, or from the launch parameter if specified. For more information, see [Order of precedence for instance metadata
  options](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/configuring-instance-metadata-options.html#instance-metadata-options-order-of-precedence)
  in the
  *Amazon EC2 User Guide*.
  """
  def modify_instance_metadata_defaults(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyInstanceMetadataDefaults", input, options)
  end

  @doc """
  Modify the instance metadata parameters on a running or stopped instance.

  When you
  modify the parameters on a stopped instance, they are applied when the instance
  is
  started. When you modify the parameters on a running instance, the API responds
  with a
  state of “pending”. After the parameter modifications are successfully applied
  to the
  instance, the state of the modifications changes from “pending” to “applied” in
  subsequent describe-instances API calls. For more information, see [Instance metadata and user
  data](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html)
  in the
  *Amazon EC2 User Guide*.
  """
  def modify_instance_metadata_options(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyInstanceMetadataOptions", input, options)
  end

  @doc """
  Modifies the placement attributes for a specified instance.

  You can do the
  following:

    *
  Modify the affinity between an instance and a [Dedicated Host](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/dedicated-hosts-overview.html).
  When affinity is set to `host` and the instance is
  not associated with a specific Dedicated Host, the next time the instance is
  started, it is automatically associated with the host on which it lands. If the
  instance is restarted or rebooted, this relationship persists.

    *
  Change the Dedicated Host with which an instance is associated.

    *
  Change the instance tenancy of an instance.

    *
  Move an instance to or from a [placement group](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html).

  At least one attribute for affinity, host ID, tenancy, or placement group name
  must be
  specified in the request. Affinity and tenancy can be modified in the same
  request.

  To modify the host ID, tenancy, placement group, or partition for an instance,
  the
  instance must be in the `stopped` state.
  """
  def modify_instance_placement(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyInstancePlacement", input, options)
  end

  @doc """
  Modify the configurations of an IPAM.
  """
  def modify_ipam(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyIpam", input, options)
  end

  @doc """
  Modify the configurations of an IPAM pool.

  For more information, see [Modify a pool](https://docs.aws.amazon.com/vpc/latest/ipam/mod-pool-ipam.html) in the
  *Amazon VPC IPAM User Guide*.
  """
  def modify_ipam_pool(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyIpamPool", input, options)
  end

  @doc """
  Modify a resource CIDR.

  You can use this action to transfer resource CIDRs between scopes and ignore
  resource CIDRs that you do not want to manage. If set to false, the resource
  will not be tracked for overlap, it cannot be auto-imported into a pool, and it
  will be removed from any pool it has an allocation in.

  For more information, see [Move resource CIDRs between scopes](https://docs.aws.amazon.com/vpc/latest/ipam/move-resource-ipam.html) and
  [Change the monitoring state of resource CIDRs](https://docs.aws.amazon.com/vpc/latest/ipam/change-monitoring-state-ipam.html)
  in the *Amazon VPC IPAM User Guide*.
  """
  def modify_ipam_resource_cidr(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyIpamResourceCidr", input, options)
  end

  @doc """
  Modifies a resource discovery.

  A resource discovery is an IPAM component that enables IPAM to manage and
  monitor resources that belong to the owning account.
  """
  def modify_ipam_resource_discovery(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyIpamResourceDiscovery", input, options)
  end

  @doc """
  Modify an IPAM scope.
  """
  def modify_ipam_scope(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyIpamScope", input, options)
  end

  @doc """
  Modifies a launch template.

  You can specify which version of the launch template to
  set as the default version. When launching an instance, the default version
  applies when
  a launch template version is not specified.
  """
  def modify_launch_template(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyLaunchTemplate", input, options)
  end

  @doc """
  Modifies the specified local gateway route.
  """
  def modify_local_gateway_route(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyLocalGatewayRoute", input, options)
  end

  @doc """
  Modifies the specified managed prefix list.

  Adding or removing entries in a prefix list creates a new version of the prefix
  list.
  Changing the name of the prefix list does not affect the version.

  If you specify a current version number that does not match the true current
  version
  number, the request fails.
  """
  def modify_managed_prefix_list(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyManagedPrefixList", input, options)
  end

  @doc """
  Modifies the specified network interface attribute.

  You can specify only one
  attribute at a time. You can use this action to attach and detach security
  groups from
  an existing EC2 instance.
  """
  def modify_network_interface_attribute(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyNetworkInterfaceAttribute", input, options)
  end

  @doc """
  Modifies the options for instance hostnames for the specified instance.
  """
  def modify_private_dns_name_options(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyPrivateDnsNameOptions", input, options)
  end

  @doc """
  Modifies the configuration of your Reserved Instances, such as the Availability
  Zone,
  instance count, or instance type.

  The Reserved Instances to be modified must be identical,
  except for Availability Zone, network platform, and instance type.

  For more information, see [Modifying Reserved Instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-modifying.html)
  in the *Amazon EC2 User Guide*.
  """
  def modify_reserved_instances(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyReservedInstances", input, options)
  end

  @doc """
  Modifies the rules of a security group.
  """
  def modify_security_group_rules(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifySecurityGroupRules", input, options)
  end

  @doc """
  Adds or removes permission settings for the specified snapshot.

  You may add or remove
  specified Amazon Web Services account IDs from a snapshot's list of create
  volume permissions, but you cannot
  do both in a single operation. If you need to both add and remove account IDs
  for a snapshot,
  you must use multiple operations. You can make up to 500 modifications to a
  snapshot in a single operation.

  Encrypted snapshots and snapshots with Amazon Web Services Marketplace product
  codes cannot be made
  public. Snapshots encrypted with your default KMS key cannot be shared with
  other accounts.

  For more information about modifying snapshot permissions, see [Share a snapshot](https://docs.aws.amazon.com/ebs/latest/userguide/ebs-modifying-snapshot-permissions.html)
  in the
  *Amazon EBS User Guide*.
  """
  def modify_snapshot_attribute(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifySnapshotAttribute", input, options)
  end

  @doc """
  Archives an Amazon EBS snapshot.

  When you archive a snapshot, it is converted to a full
  snapshot that includes all of the blocks of data that were written to the volume
  at the
  time the snapshot was created, and moved from the standard tier to the archive
  tier. For more information, see [Archive Amazon EBS snapshots](https://docs.aws.amazon.com/ebs/latest/userguide/snapshot-archive.html)
  in the *Amazon EBS User Guide*.
  """
  def modify_snapshot_tier(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifySnapshotTier", input, options)
  end

  @doc """
  Modifies the specified Spot Fleet request.

  You can only modify a Spot Fleet request of type `maintain`.

  While the Spot Fleet request is being modified, it is in the `modifying`
  state.

  To scale up your Spot Fleet, increase its target capacity. The Spot Fleet
  launches the
  additional Spot Instances according to the allocation strategy for the Spot
  Fleet
  request. If the allocation strategy is `lowestPrice`, the Spot Fleet launches
  instances using the Spot Instance pool with the lowest price. If the allocation
  strategy
  is `diversified`, the Spot Fleet distributes the instances across the Spot
  Instance pools. If the allocation strategy is `capacityOptimized`, Spot Fleet
  launches instances from Spot Instance pools with optimal capacity for the number
  of instances
  that are launching.

  To scale down your Spot Fleet, decrease its target capacity. First, the Spot
  Fleet
  cancels any open requests that exceed the new target capacity. You can request
  that the
  Spot Fleet terminate Spot Instances until the size of the fleet no longer
  exceeds the
  new target capacity. If the allocation strategy is `lowestPrice`, the Spot
  Fleet terminates the instances with the highest price per unit. If the
  allocation
  strategy is `capacityOptimized`, the Spot Fleet terminates the instances in
  the Spot Instance pools that have the least available Spot Instance capacity. If
  the allocation
  strategy is `diversified`, the Spot Fleet terminates instances across the
  Spot Instance pools. Alternatively, you can request that the Spot Fleet keep the
  fleet
  at its current size, but not replace any Spot Instances that are interrupted or
  that you
  terminate manually.

  If you are finished with your Spot Fleet for now, but will use it again later,
  you can
  set the target capacity to 0.
  """
  def modify_spot_fleet_request(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifySpotFleetRequest", input, options)
  end

  @doc """
  Modifies a subnet attribute.

  You can only modify one attribute at a time.

  Use this action to modify subnets on Amazon Web Services Outposts.

    *
  To modify a subnet on an Outpost rack, set both
  `MapCustomerOwnedIpOnLaunch` and
  `CustomerOwnedIpv4Pool`. These two parameters act as a single
  attribute.

    *
  To modify a subnet on an Outpost server, set either
  `EnableLniAtDeviceIndex` or
  `DisableLniAtDeviceIndex`.

  For more information about Amazon Web Services Outposts, see the following:

    *

  [Outpost servers](https://docs.aws.amazon.com/outposts/latest/userguide/how-servers-work.html)

    *

  [Outpost racks](https://docs.aws.amazon.com/outposts/latest/userguide/how-racks-work.html)
  """
  def modify_subnet_attribute(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifySubnetAttribute", input, options)
  end

  @doc """
  Allows or restricts mirroring network services.

  By default, Amazon DNS network services are not eligible for Traffic Mirror. Use
  `AddNetworkServices` to add network services to a Traffic Mirror filter. When a
  network service is added to the Traffic Mirror filter, all traffic related to
  that network service will be mirrored.
  When you no longer want to mirror network services, use `RemoveNetworkServices`
  to remove the network services from the Traffic Mirror filter.
  """
  def modify_traffic_mirror_filter_network_services(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyTrafficMirrorFilterNetworkServices", input, options)
  end

  @doc """
  Modifies the specified Traffic Mirror rule.

  `DestinationCidrBlock` and `SourceCidrBlock` must both be an IPv4
  range or an IPv6 range.
  """
  def modify_traffic_mirror_filter_rule(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyTrafficMirrorFilterRule", input, options)
  end

  @doc """
  Modifies a Traffic Mirror session.
  """
  def modify_traffic_mirror_session(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyTrafficMirrorSession", input, options)
  end

  @doc """
  Modifies the specified transit gateway.

  When you modify a transit gateway, the modified options are applied to new
  transit gateway attachments only. Your existing transit gateway attachments are
  not modified.
  """
  def modify_transit_gateway(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyTransitGateway", input, options)
  end

  @doc """
  Modifies a reference (route) to a prefix list in a specified transit gateway
  route table.
  """
  def modify_transit_gateway_prefix_list_reference(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyTransitGatewayPrefixListReference", input, options)
  end

  @doc """
  Modifies the specified VPC attachment.
  """
  def modify_transit_gateway_vpc_attachment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyTransitGatewayVpcAttachment", input, options)
  end

  @doc """
  Modifies the configuration of the specified Amazon Web Services Verified Access
  endpoint.
  """
  def modify_verified_access_endpoint(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyVerifiedAccessEndpoint", input, options)
  end

  @doc """
  Modifies the specified Amazon Web Services Verified Access endpoint policy.
  """
  def modify_verified_access_endpoint_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyVerifiedAccessEndpointPolicy", input, options)
  end

  @doc """
  Modifies the specified Amazon Web Services Verified Access group configuration.
  """
  def modify_verified_access_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyVerifiedAccessGroup", input, options)
  end

  @doc """
  Modifies the specified Amazon Web Services Verified Access group policy.
  """
  def modify_verified_access_group_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyVerifiedAccessGroupPolicy", input, options)
  end

  @doc """
  Modifies the configuration of the specified Amazon Web Services Verified Access
  instance.
  """
  def modify_verified_access_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyVerifiedAccessInstance", input, options)
  end

  @doc """
  Modifies the logging configuration for the specified Amazon Web Services
  Verified Access instance.
  """
  def modify_verified_access_instance_logging_configuration(
        %Client{} = client,
        input,
        options \\ []
      ) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "ModifyVerifiedAccessInstanceLoggingConfiguration",
      input,
      options
    )
  end

  @doc """
  Modifies the configuration of the specified Amazon Web Services Verified Access
  trust provider.
  """
  def modify_verified_access_trust_provider(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyVerifiedAccessTrustProvider", input, options)
  end

  @doc """
  You can modify several parameters of an existing EBS volume, including volume
  size, volume
  type, and IOPS capacity.

  If your EBS volume is attached to a current-generation EC2 instance
  type, you might be able to apply these changes without stopping the instance or
  detaching the
  volume from it. For more information about modifying EBS volumes, see [Amazon EBS Elastic
  Volumes](https://docs.aws.amazon.com/ebs/latest/userguide/ebs-modify-volume.html)
  in the *Amazon EBS User Guide*.

  When you complete a resize operation on your volume, you need to extend the
  volume's
  file-system size to take advantage of the new storage capacity. For more
  information, see [Extend the file system](https://docs.aws.amazon.com/ebs/latest/userguide/recognize-expanded-volume-linux.html).

  You can use CloudWatch Events to check the status of a modification to an EBS
  volume. For
  information about CloudWatch Events, see the [Amazon CloudWatch Events User Guide](https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/). You can
  also track the status of a
  modification using `DescribeVolumesModifications`. For information
  about tracking status changes using either method, see [Monitor the progress of volume
  modifications](https://docs.aws.amazon.com/ebs/latest/userguide/monitoring-volume-modifications.html).

  With previous-generation instance types, resizing an EBS volume might require
  detaching and
  reattaching the volume or stopping and restarting the instance.

  After modifying a volume, you must wait at least six hours and ensure that the
  volume
  is in the `in-use` or `available` state before you can modify the same
  volume. This is sometimes referred to as a cooldown period.
  """
  def modify_volume(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyVolume", input, options)
  end

  @doc """
  Modifies a volume attribute.

  By default, all I/O operations for the volume are suspended when the data on the
  volume is
  determined to be potentially inconsistent, to prevent undetectable, latent data
  corruption.
  The I/O access to the volume can be resumed by first enabling I/O access and
  then checking the
  data consistency on your volume.

  You can change the default behavior to resume I/O operations. We recommend that
  you change
  this only for boot volumes or for volumes that are stateless or disposable.
  """
  def modify_volume_attribute(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyVolumeAttribute", input, options)
  end

  @doc """
  Modifies the specified attribute of the specified VPC.
  """
  def modify_vpc_attribute(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyVpcAttribute", input, options)
  end

  @doc """
  Modifies attributes of a specified VPC endpoint.

  The attributes that you can modify
  depend on the type of VPC endpoint (interface, gateway, or Gateway Load
  Balancer). For more information,
  see the [Amazon Web Services PrivateLink Guide](https://docs.aws.amazon.com/vpc/latest/privatelink/).
  """
  def modify_vpc_endpoint(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyVpcEndpoint", input, options)
  end

  @doc """
  Modifies a connection notification for VPC endpoint or VPC endpoint service.

  You
  can change the SNS topic for the notification, or the events for which to be
  notified.
  """
  def modify_vpc_endpoint_connection_notification(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyVpcEndpointConnectionNotification", input, options)
  end

  @doc """
  Modifies the attributes of your VPC endpoint service configuration.

  You can change the
  Network Load Balancers or Gateway Load Balancers for your service, and you can
  specify whether acceptance is
  required for requests to connect to your endpoint service through an interface
  VPC
  endpoint.

  If you set or modify the private DNS name, you must prove that you own the
  private DNS
  domain name.
  """
  def modify_vpc_endpoint_service_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyVpcEndpointServiceConfiguration", input, options)
  end

  @doc """
  Modifies the payer responsibility for your VPC endpoint service.
  """
  def modify_vpc_endpoint_service_payer_responsibility(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "ModifyVpcEndpointServicePayerResponsibility",
      input,
      options
    )
  end

  @doc """
  Modifies the permissions for your VPC endpoint service.

  You can add or remove permissions
  for service consumers (Amazon Web Services accounts, users, and IAM roles) to
  connect to
  your endpoint service.

  If you grant permissions to all principals, the service is public. Any users who
  know the name of a
  public service can send a request to attach an endpoint. If the service does not
  require manual approval,
  attachments are automatically approved.
  """
  def modify_vpc_endpoint_service_permissions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyVpcEndpointServicePermissions", input, options)
  end

  @doc """
  Modifies the VPC peering connection options on one side of a VPC peering
  connection.

  If the peered VPCs are in the same Amazon Web Services account, you can enable
  DNS
  resolution for queries from the local VPC. This ensures that queries from the
  local VPC
  resolve to private IP addresses in the peer VPC. This option is not available if
  the
  peered VPCs are in different Amazon Web Services accounts or different Regions.
  For
  peered VPCs in different Amazon Web Services accounts, each Amazon Web Services
  account
  owner must initiate a separate request to modify the peering connection options.
  For
  inter-region peering connections, you must use the Region for the requester VPC
  to
  modify the requester VPC peering options and the Region for the accepter VPC to
  modify
  the accepter VPC peering options. To verify which VPCs are the accepter and the
  requester for a VPC peering connection, use the `DescribeVpcPeeringConnections`
  command.
  """
  def modify_vpc_peering_connection_options(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyVpcPeeringConnectionOptions", input, options)
  end

  @doc """
  Modifies the instance tenancy attribute of the specified VPC.

  You can change the
  instance tenancy attribute of a VPC to `default` only. You cannot change the
  instance tenancy attribute to `dedicated`.

  After you modify the tenancy of the VPC, any new instances that you launch into
  the
  VPC have a tenancy of `default`, unless you specify otherwise during launch.
  The tenancy of any existing instances in the VPC is not affected.

  For more information, see [Dedicated Instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/dedicated-instance.html)
  in the
  *Amazon EC2 User Guide*.
  """
  def modify_vpc_tenancy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyVpcTenancy", input, options)
  end

  @doc """
  Modifies the customer gateway or the target gateway of an Amazon Web Services
  Site-to-Site VPN connection.

  To
  modify the target gateway, the following migration options are available:

    *
  An existing virtual private gateway to a new virtual private gateway

    *
  An existing virtual private gateway to a transit gateway

    *
  An existing transit gateway to a new transit gateway

    *
  An existing transit gateway to a virtual private gateway

  Before you perform the migration to the new gateway, you must configure the new
  gateway. Use `CreateVpnGateway` to create a virtual private gateway, or
  `CreateTransitGateway` to create a transit gateway.

  This step is required when you migrate from a virtual private gateway with
  static
  routes to a transit gateway.

  You must delete the static routes before you migrate to the new gateway.

  Keep a copy of the static route before you delete it. You will need to add back
  these
  routes to the transit gateway after the VPN connection migration is complete.

  After you migrate to the new gateway, you might need to modify your VPC route
  table.
  Use `CreateRoute` and `DeleteRoute` to make the changes
  described in [Update VPC route tables](https://docs.aws.amazon.com/vpn/latest/s2svpn/modify-vpn-target.html#step-update-routing)
  in the *Amazon Web Services Site-to-Site VPN User Guide*.

  When the new gateway is a transit gateway, modify the transit gateway route
  table to
  allow traffic between the VPC and the Amazon Web Services Site-to-Site VPN
  connection.
  Use `CreateTransitGatewayRoute` to add the routes.

  If you deleted VPN static routes, you must add the static routes to the transit
  gateway route table.

  After you perform this operation, the VPN endpoint's IP addresses on the Amazon
  Web Services side and the tunnel options remain intact. Your Amazon Web Services
  Site-to-Site VPN connection will
  be temporarily unavailable for a brief period while we provision the new
  endpoints.
  """
  def modify_vpn_connection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyVpnConnection", input, options)
  end

  @doc """
  Modifies the connection options for your Site-to-Site VPN connection.

  When you modify the VPN connection options, the VPN endpoint IP addresses on the
  Amazon Web Services side do not change, and the tunnel options do not change.
  Your
  VPN connection will be temporarily unavailable for a brief period while the VPN
  connection is updated.
  """
  def modify_vpn_connection_options(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyVpnConnectionOptions", input, options)
  end

  @doc """
  Modifies the VPN tunnel endpoint certificate.
  """
  def modify_vpn_tunnel_certificate(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyVpnTunnelCertificate", input, options)
  end

  @doc """
  Modifies the options for a VPN tunnel in an Amazon Web Services Site-to-Site VPN
  connection.

  You can modify
  multiple options for a tunnel in a single request, but you can only modify one
  tunnel at
  a time. For more information, see [Site-to-Site VPN tunnel options for your Site-to-Site VPN
  connection](https://docs.aws.amazon.com/vpn/latest/s2svpn/VPNTunnels.html) in
  the *Amazon Web Services Site-to-Site VPN User Guide*.
  """
  def modify_vpn_tunnel_options(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyVpnTunnelOptions", input, options)
  end

  @doc """
  Enables detailed monitoring for a running instance.

  Otherwise, basic monitoring is
  enabled. For more information, see [Monitor your instances using CloudWatch](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-cloudwatch.html)
  in the *Amazon EC2 User Guide*.

  To disable detailed monitoring, see
  [UnmonitorInstances](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_UnmonitorInstances.html).
  """
  def monitor_instances(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "MonitorInstances", input, options)
  end

  @doc """

  This action is deprecated.

  Moves an Elastic IP address from the EC2-Classic platform to the EC2-VPC
  platform. The
  Elastic IP address must be allocated to your account for more than 24 hours, and
  it must not
  be associated with an instance. After the Elastic IP address is moved, it is no
  longer
  available for use in the EC2-Classic platform, unless you move it back using the
  `RestoreAddressToClassic` request. You cannot move an Elastic IP address that
  was
  originally allocated for use in the EC2-VPC platform to the EC2-Classic
  platform.
  """
  def move_address_to_vpc(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "MoveAddressToVpc", input, options)
  end

  @doc """
  Move a BYOIPv4 CIDR to IPAM from a public IPv4 pool.

  If you already have a BYOIPv4 CIDR with Amazon Web Services, you can move the
  CIDR to IPAM from a public IPv4 pool. You cannot move an IPv6 CIDR to IPAM. If
  you are bringing a new IP address to Amazon Web Services for the first time,
  complete the steps in [Tutorial: BYOIP address CIDRs to IPAM](https://docs.aws.amazon.com/vpc/latest/ipam/tutorials-byoip-ipam.html).
  """
  def move_byoip_cidr_to_ipam(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "MoveByoipCidrToIpam", input, options)
  end

  @doc """
  Provisions an IPv4 or IPv6 address range for use with your Amazon Web Services
  resources through bring your own IP
  addresses (BYOIP) and creates a corresponding address pool.

  After the address range is
  provisioned, it is ready to be advertised using `AdvertiseByoipCidr`.

  Amazon Web Services verifies that you own the address range and are authorized
  to advertise it.
  You must ensure that the address range is registered to you and that you created
  an
  RPKI ROA to authorize Amazon ASNs 16509 and 14618 to advertise the address
  range.
  For more information, see [Bring your own IP addresses (BYOIP)](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-byoip.html) in
  the *Amazon Elastic Compute Cloud User Guide*.

  Provisioning an address range is an asynchronous operation, so the call returns
  immediately,
  but the address range is not ready to use until its status changes from
  `pending-provision`
  to `provisioned`. To monitor the status of an address range, use
  `DescribeByoipCidrs`.
  To allocate an Elastic IP address from your IPv4 address pool, use
  `AllocateAddress`
  with either the specific address from the address pool or the ID of the address
  pool.
  """
  def provision_byoip_cidr(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ProvisionByoipCidr", input, options)
  end

  @doc """
  Provisions your Autonomous System Number (ASN) for use in your Amazon Web
  Services account.

  This action requires authorization context for Amazon to bring the ASN to an
  Amazon Web Services account. For more information, see [Tutorial: Bring your ASN to IPAM](https://docs.aws.amazon.com/vpc/latest/ipam/tutorials-byoasn.html) in
  the *Amazon VPC IPAM guide*.
  """
  def provision_ipam_byoasn(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ProvisionIpamByoasn", input, options)
  end

  @doc """
  Provision a CIDR to an IPAM pool.

  You can use this action to provision new CIDRs to a top-level pool or to
  transfer a CIDR from a top-level pool to a pool within it.

  For more information, see [Provision CIDRs to pools](https://docs.aws.amazon.com/vpc/latest/ipam/prov-cidr-ipam.html) in the
  *Amazon VPC IPAM User Guide*.
  """
  def provision_ipam_pool_cidr(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ProvisionIpamPoolCidr", input, options)
  end

  @doc """
  Provision a CIDR to a public IPv4 pool.

  For more information about IPAM, see [What is IPAM?](https://docs.aws.amazon.com/vpc/latest/ipam/what-is-it-ipam.html) in the
  *Amazon VPC IPAM User Guide*.
  """
  def provision_public_ipv4_pool_cidr(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ProvisionPublicIpv4PoolCidr", input, options)
  end

  @doc """
  Purchase the Capacity Block for use with your account.

  With Capacity Blocks you ensure GPU capacity is available for machine learning
  (ML) workloads. You must specify the ID of the Capacity Block offering you are
  purchasing.
  """
  def purchase_capacity_block(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PurchaseCapacityBlock", input, options)
  end

  @doc """
  Purchase a reservation with configurations that match those of your Dedicated
  Host.

  You must have active Dedicated Hosts in your account before you purchase a
  reservation.
  This action results in the specified reservation being purchased and charged to
  your
  account.
  """
  def purchase_host_reservation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PurchaseHostReservation", input, options)
  end

  @doc """
  Purchases a Reserved Instance for use with your account.

  With Reserved Instances, you pay a lower
  hourly rate compared to On-Demand instance pricing.

  Use `DescribeReservedInstancesOfferings` to get a list of Reserved Instance
  offerings
  that match your specifications. After you've purchased a Reserved Instance, you
  can check for your
  new Reserved Instance with `DescribeReservedInstances`.

  To queue a purchase for a future date and time, specify a purchase time. If you
  do not specify a
  purchase time, the default is the current time.

  For more information, see [Reserved Instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/concepts-on-demand-reserved-instances.html)
  and
  [Reserved Instance Marketplace](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-market-general.html)
  in the *Amazon EC2 User Guide*.
  """
  def purchase_reserved_instances_offering(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PurchaseReservedInstancesOffering", input, options)
  end

  @doc """

  You can no longer purchase Scheduled Instances.

  Purchases the Scheduled Instances with the specified schedule.

  Scheduled Instances enable you to purchase Amazon EC2 compute capacity by the
  hour for a one-year term.
  Before you can purchase a Scheduled Instance, you must call
  `DescribeScheduledInstanceAvailability`
  to check for available schedules and obtain a purchase token. After you purchase
  a Scheduled Instance,
  you must call `RunScheduledInstances` during each scheduled time period.

  After you purchase a Scheduled Instance, you can't cancel, modify, or resell
  your purchase.
  """
  def purchase_scheduled_instances(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PurchaseScheduledInstances", input, options)
  end

  @doc """
  Requests a reboot of the specified instances.

  This operation is asynchronous; it only
  queues a request to reboot the specified instances. The operation succeeds if
  the
  instances are valid and belong to you. Requests to reboot terminated instances
  are
  ignored.

  If an instance does not cleanly shut down within a few minutes, Amazon EC2
  performs a
  hard reboot.

  For more information about troubleshooting, see [Troubleshoot an unreachable instance](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-console.html)
  in the *Amazon EC2 User Guide*.
  """
  def reboot_instances(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RebootInstances", input, options)
  end

  @doc """
  Registers an AMI.

  When you're creating an instance-store backed AMI, registering the AMI
  is the final step in the creation process. For more information about creating
  AMIs, see
  [Create your own
  AMI](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/creating-an-ami.html)
  in the *Amazon Elastic Compute Cloud User Guide*.

  For Amazon EBS-backed instances, `CreateImage` creates and registers the AMI
  in a single request, so you don't have to register the AMI yourself. We
  recommend that you
  always use `CreateImage` unless you have a specific reason to use
  RegisterImage.

  If needed, you can deregister an AMI at any time. Any modifications you make to
  an AMI backed by an instance store volume invalidates its registration.
  If you make changes to an image, deregister the previous image and register the
  new image.

  ## Register a snapshot of a root device volume

  You can use `RegisterImage` to create an Amazon EBS-backed Linux AMI from
  a snapshot of a root device volume. You specify the snapshot using a block
  device mapping.
  You can't set the encryption state of the volume using the block device mapping.
  If the
  snapshot is encrypted, or encryption by default is enabled, the root volume of
  an instance
  launched from the AMI is encrypted.

  For more information, see [Create a Linux AMI from a snapshot](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/creating-an-ami-ebs.html#creating-launching-ami-from-snapshot)
  and [Use encryption with Amazon EBS-backed AMIs](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AMIEncryption.html)
  in the *Amazon Elastic Compute Cloud User Guide*.

  ## Amazon Web Services Marketplace product codes

  If any snapshots have Amazon Web Services Marketplace product codes, they are
  copied to the new
  AMI.

  Windows and some Linux distributions, such as Red Hat Enterprise Linux (RHEL)
  and SUSE
  Linux Enterprise Server (SLES), use the Amazon EC2 billing product code
  associated with an AMI to
  verify the subscription status for package updates. To create a new AMI for
  operating systems
  that require a billing product code, instead of registering the AMI, do the
  following to
  preserve the billing product code association:

    1.
  Launch an instance from an existing AMI with that billing product code.

    2.
  Customize the instance.

    3.
  Create an AMI from the instance using `CreateImage`.

  If you purchase a Reserved Instance to apply to an On-Demand Instance that was
  launched
  from an AMI with a billing product code, make sure that the Reserved Instance
  has the matching
  billing product code. If you purchase a Reserved Instance without the matching
  billing product
  code, the Reserved Instance will not be applied to the On-Demand Instance. For
  information
  about how to obtain the platform details and billing information of an AMI, see
  [Understand AMI billing
  information](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-billing-info.html)
  in the *Amazon EC2 User Guide*.
  """
  def register_image(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RegisterImage", input, options)
  end

  @doc """
  Registers a set of tag keys to include in scheduled event notifications for your
  resources.

  To remove tags, use
  [DeregisterInstanceEventNotificationAttributes](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DeregisterInstanceEventNotificationAttributes.html).
  """
  def register_instance_event_notification_attributes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "RegisterInstanceEventNotificationAttributes",
      input,
      options
    )
  end

  @doc """
  Registers members (network interfaces) with the transit gateway multicast group.

  A member is a network interface associated
  with a supported EC2 instance that receives multicast traffic. For information
  about
  supported instances, see [Multicast Consideration](https://docs.aws.amazon.com/vpc/latest/tgw/transit-gateway-limits.html#multicast-limits)
  in *Amazon VPC Transit Gateways*.

  After you add the members, use
  [SearchTransitGatewayMulticastGroups](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_SearchTransitGatewayMulticastGroups.html)
  to verify that the members were added
  to the transit gateway multicast group.
  """
  def register_transit_gateway_multicast_group_members(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "RegisterTransitGatewayMulticastGroupMembers",
      input,
      options
    )
  end

  @doc """
  Registers sources (network interfaces) with the specified transit gateway
  multicast group.

  A multicast source is a network interface attached to a supported instance that
  sends
  multicast traffic. For information about supported instances, see [Multicast Considerations](https://docs.aws.amazon.com/vpc/latest/tgw/transit-gateway-limits.html#multicast-limits)
  in *Amazon VPC Transit Gateways*.

  After you add the source, use
  [SearchTransitGatewayMulticastGroups](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_SearchTransitGatewayMulticastGroups.html)
  to verify that the source was added to the multicast
  group.
  """
  def register_transit_gateway_multicast_group_sources(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "RegisterTransitGatewayMulticastGroupSources",
      input,
      options
    )
  end

  @doc """
  Rejects a request to associate cross-account subnets with a transit gateway
  multicast domain.
  """
  def reject_transit_gateway_multicast_domain_associations(
        %Client{} = client,
        input,
        options \\ []
      ) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "RejectTransitGatewayMulticastDomainAssociations",
      input,
      options
    )
  end

  @doc """
  Rejects a transit gateway peering attachment request.
  """
  def reject_transit_gateway_peering_attachment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RejectTransitGatewayPeeringAttachment", input, options)
  end

  @doc """
  Rejects a request to attach a VPC to a transit gateway.

  The VPC attachment must be in the `pendingAcceptance` state.
  Use `DescribeTransitGatewayVpcAttachments` to view your pending VPC attachment
  requests.
  Use `AcceptTransitGatewayVpcAttachment` to accept a VPC attachment request.
  """
  def reject_transit_gateway_vpc_attachment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RejectTransitGatewayVpcAttachment", input, options)
  end

  @doc """
  Rejects VPC endpoint connection requests to your VPC endpoint service.
  """
  def reject_vpc_endpoint_connections(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RejectVpcEndpointConnections", input, options)
  end

  @doc """
  Rejects a VPC peering connection request.

  The VPC peering connection must be in the
  `pending-acceptance` state. Use the `DescribeVpcPeeringConnections` request
  to view your outstanding VPC peering connection requests. To delete an active
  VPC peering
  connection, or to delete a VPC peering connection request that you initiated,
  use `DeleteVpcPeeringConnection`.
  """
  def reject_vpc_peering_connection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RejectVpcPeeringConnection", input, options)
  end

  @doc """
  Releases the specified Elastic IP address.

  [Default VPC] Releasing an Elastic IP address automatically disassociates it from any instance that it's associated with. To disassociate an Elastic IP
  address without
  releasing it, use `DisassociateAddress`.

  [Nondefault VPC] You must use `DisassociateAddress` to disassociate the Elastic
  IP address
  before you can release it. Otherwise, Amazon EC2 returns an error
  (`InvalidIPAddress.InUse`).

  After releasing an Elastic IP address, it is released to the IP address pool.
  Be sure to update your DNS records and any servers or devices that communicate
  with the address.
  If you attempt to release an Elastic IP address that you already released,
  you'll get an
  `AuthFailure` error if the address is already allocated to another Amazon Web
  Services account.

  After you release an Elastic IP address, you might be able to recover it.
  For more information, see `AllocateAddress`.
  """
  def release_address(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ReleaseAddress", input, options)
  end

  @doc """
  When you no longer want to use an On-Demand Dedicated Host it can be released.

  On-Demand billing is stopped and the host goes into `released` state. The
  host ID of Dedicated Hosts that have been released can no longer be specified in
  another
  request, for example, to modify the host. You must stop or terminate all
  instances on a
  host before it can be released.

  When Dedicated Hosts are released, it may take some time for them to stop
  counting
  toward your limit and you may receive capacity errors when trying to allocate
  new
  Dedicated Hosts. Wait a few minutes and then try again.

  Released hosts still appear in a `DescribeHosts` response.
  """
  def release_hosts(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ReleaseHosts", input, options)
  end

  @doc """
  Release an allocation within an IPAM pool.

  The Region you use should be the IPAM pool locale. The locale is the Amazon Web
  Services Region where this IPAM pool is available for allocations. You can only
  use this action to release manual allocations. To remove an allocation for a
  resource without deleting the resource, set its monitored state to false using
  [ModifyIpamResourceCidr](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ModifyIpamResourceCidr.html). For more information, see [Release an
  allocation](https://docs.aws.amazon.com/vpc/latest/ipam/release-alloc-ipam.html)
  in the *Amazon VPC IPAM User Guide*.

  All EC2 API actions follow an [eventual consistency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/query-api-troubleshooting.html#eventual-consistency)
  model.
  """
  def release_ipam_pool_allocation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ReleaseIpamPoolAllocation", input, options)
  end

  @doc """
  Replaces an IAM instance profile for the specified running instance.

  You can use
  this action to change the IAM instance profile that's associated with an
  instance
  without having to disassociate the existing IAM instance profile first.

  Use `DescribeIamInstanceProfileAssociations` to get the association
  ID.
  """
  def replace_iam_instance_profile_association(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ReplaceIamInstanceProfileAssociation", input, options)
  end

  @doc """
  Changes which network ACL a subnet is associated with.

  By default when you create a
  subnet, it's automatically associated with the default network ACL. For more
  information, see [Network ACLs](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-network-acls.html) in
  the *Amazon VPC User Guide*.

  This is an idempotent operation.
  """
  def replace_network_acl_association(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ReplaceNetworkAclAssociation", input, options)
  end

  @doc """
  Replaces an entry (rule) in a network ACL.

  For more information, see [Network ACLs](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-network-acls.html) in
  the
  *Amazon VPC User Guide*.
  """
  def replace_network_acl_entry(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ReplaceNetworkAclEntry", input, options)
  end

  @doc """
  Replaces an existing route within a route table in a VPC.

  You must specify either a destination CIDR block or a prefix list ID. You must
  also specify
  exactly one of the resources from the parameter list, or reset the local route
  to its default
  target.

  For more information, see [Route tables](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Route_Tables.html)
  in the
  *Amazon VPC User Guide*.
  """
  def replace_route(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ReplaceRoute", input, options)
  end

  @doc """
  Changes the route table associated with a given subnet, internet gateway, or
  virtual private gateway in a VPC.

  After the operation
  completes, the subnet or gateway uses the routes in the new route table. For
  more
  information about route tables, see [Route tables](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Route_Tables.html)
  in the *Amazon VPC User Guide*.

  You can also use this operation to change which table is the main route table in
  the VPC. Specify the main route table's association ID and the route table ID of
  the new main route table.
  """
  def replace_route_table_association(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ReplaceRouteTableAssociation", input, options)
  end

  @doc """
  Replaces the specified route in the specified transit gateway route table.
  """
  def replace_transit_gateway_route(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ReplaceTransitGatewayRoute", input, options)
  end

  @doc """
  Trigger replacement of specified VPN tunnel.
  """
  def replace_vpn_tunnel(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ReplaceVpnTunnel", input, options)
  end

  @doc """
  Submits feedback about the status of an instance.

  The instance must be in the
  `running` state. If your experience with the instance differs from the
  instance status returned by `DescribeInstanceStatus`, use `ReportInstanceStatus`
  to report your experience with the instance. Amazon
  EC2 collects this information to improve the accuracy of status checks.

  Use of this action does not change the value returned by
  `DescribeInstanceStatus`.
  """
  def report_instance_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ReportInstanceStatus", input, options)
  end

  @doc """
  Creates a Spot Fleet request.

  The Spot Fleet request specifies the total target capacity and the On-Demand
  target
  capacity. Amazon EC2 calculates the difference between the total capacity and
  On-Demand
  capacity, and launches the difference as Spot capacity.

  You can submit a single request that includes multiple launch specifications
  that vary
  by instance type, AMI, Availability Zone, or subnet.

  By default, the Spot Fleet requests Spot Instances in the Spot Instance pool
  where the
  price per unit is the lowest. Each launch specification can include its own
  instance
  weighting that reflects the value of the instance type to your application
  workload.

  Alternatively, you can specify that the Spot Fleet distribute the target
  capacity
  across the Spot pools included in its launch specifications. By ensuring that
  the Spot
  Instances in your Spot Fleet are in different Spot pools, you can improve the
  availability of your fleet.

  You can specify tags for the Spot Fleet request and instances launched by the
  fleet.
  You cannot tag other resource types in a Spot Fleet request because only the
  `spot-fleet-request` and `instance` resource types are
  supported.

  For more information, see [Spot Fleet requests](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-fleet-requests.html)
  in the *Amazon EC2 User Guide*.

  We strongly discourage using the RequestSpotFleet API because it is a legacy
  API with no planned investment. For options for requesting Spot Instances, see
  [Which is the best Spot request method to
  use?](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-best-practices.html#which-spot-request-method-to-use)
  in the
  *Amazon EC2 User Guide*.
  """
  def request_spot_fleet(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RequestSpotFleet", input, options)
  end

  @doc """
  Creates a Spot Instance request.

  For more information, see [Spot Instance requests](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-requests.html)
  in
  the *Amazon EC2 User Guide for Linux Instances*.

  We strongly discourage using the RequestSpotInstances API because it is a legacy
  API with no planned investment. For options for requesting Spot Instances, see
  [Which is the best Spot request method to
  use?](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-best-practices.html#which-spot-request-method-to-use)
  in the
  *Amazon EC2 User Guide for Linux Instances*.
  """
  def request_spot_instances(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RequestSpotInstances", input, options)
  end

  @doc """
  Resets the attribute of the specified IP address.

  For requirements, see [Using reverse DNS for email applications](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html#Using_Elastic_Addressing_Reverse_DNS).
  """
  def reset_address_attribute(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ResetAddressAttribute", input, options)
  end

  @doc """
  Resets the default KMS key for EBS encryption for your account in this Region
  to the Amazon Web Services managed KMS key for EBS.

  After resetting the default KMS key to the Amazon Web Services managed KMS key,
  you can continue to encrypt by a
  customer managed KMS key by specifying it when you create the volume. For more
  information, see
  [Amazon EBS encryption](https://docs.aws.amazon.com/ebs/latest/userguide/ebs-encryption.html)
  in the *Amazon EBS User Guide*.
  """
  def reset_ebs_default_kms_key_id(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ResetEbsDefaultKmsKeyId", input, options)
  end

  @doc """
  Resets the specified attribute of the specified Amazon FPGA Image (AFI) to its
  default value.

  You can only reset the load permission attribute.
  """
  def reset_fpga_image_attribute(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ResetFpgaImageAttribute", input, options)
  end

  @doc """
  Resets an attribute of an AMI to its default value.
  """
  def reset_image_attribute(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ResetImageAttribute", input, options)
  end

  @doc """
  Resets an attribute of an instance to its default value.

  To reset the
  `kernel` or `ramdisk`, the instance must be in a stopped
  state. To reset the `sourceDestCheck`, the instance can be either running or
  stopped.

  The `sourceDestCheck` attribute controls whether source/destination
  checking is enabled. The default value is `true`, which means checking is
  enabled. This value must be `false` for a NAT instance to perform NAT. For
  more information, see [NAT Instances](https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_NAT_Instance.html)
  in the
  *Amazon VPC User Guide*.
  """
  def reset_instance_attribute(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ResetInstanceAttribute", input, options)
  end

  @doc """
  Resets a network interface attribute.

  You can specify only one attribute at a time.
  """
  def reset_network_interface_attribute(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ResetNetworkInterfaceAttribute", input, options)
  end

  @doc """
  Resets permission settings for the specified snapshot.

  For more information about modifying snapshot permissions, see [Share a snapshot](https://docs.aws.amazon.com/ebs/latest/userguide/ebs-modifying-snapshot-permissions.html)
  in the
  *Amazon EBS User Guide*.
  """
  def reset_snapshot_attribute(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ResetSnapshotAttribute", input, options)
  end

  @doc """

  This action is deprecated.

  Restores an Elastic IP address that was previously moved to the EC2-VPC platform
  back to the EC2-Classic platform. You cannot move an Elastic IP address that was
  originally allocated for use in EC2-VPC. The Elastic IP address must not be
  associated with an instance or network interface.
  """
  def restore_address_to_classic(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RestoreAddressToClassic", input, options)
  end

  @doc """
  Restores an AMI from the Recycle Bin.

  For more information, see [Recycle Bin](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/recycle-bin.html) in
  the *Amazon EC2 User Guide*.
  """
  def restore_image_from_recycle_bin(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RestoreImageFromRecycleBin", input, options)
  end

  @doc """
  Restores the entries from a previous version of a managed prefix list to a new
  version of the prefix list.
  """
  def restore_managed_prefix_list_version(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RestoreManagedPrefixListVersion", input, options)
  end

  @doc """
  Restores a snapshot from the Recycle Bin.

  For more information, see [Restore snapshots from the Recycle
  Bin](https://docs.aws.amazon.com/ebs/latest/userguide/recycle-bin-working-with-snaps.html#recycle-bin-restore-snaps)
  in the *Amazon EBS User Guide*.
  """
  def restore_snapshot_from_recycle_bin(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RestoreSnapshotFromRecycleBin", input, options)
  end

  @doc """
  Restores an archived Amazon EBS snapshot for use temporarily or permanently, or
  modifies the restore
  period or restore type for a snapshot that was previously temporarily restored.

  For more information see [
  Restore an archived
  snapshot](https://docs.aws.amazon.com/ebs/latest/userguide/working-with-snapshot-archiving.html#restore-archived-snapshot)
  and [
  modify the restore period or restore type for a temporarily restored
  snapshot](https://docs.aws.amazon.com/ebs/latest/userguide/working-with-snapshot-archiving.html#modify-temp-restore-period)
  in the *Amazon EBS User Guide*.
  """
  def restore_snapshot_tier(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RestoreSnapshotTier", input, options)
  end

  @doc """
  Removes an ingress authorization rule from a Client VPN endpoint.
  """
  def revoke_client_vpn_ingress(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RevokeClientVpnIngress", input, options)
  end

  @doc """
  Removes the specified outbound (egress) rules from the specified security group.

  You can specify rules using either rule IDs or security group rule properties.
  If you use
  rule properties, the values that you specify (for example, ports) must match the
  existing rule's
  values exactly. Each rule has a protocol, from and to ports, and destination
  (CIDR range,
  security group, or prefix list). For the TCP and UDP protocols, you must also
  specify the
  destination port or range of ports. For the ICMP protocol, you must also specify
  the ICMP type
  and code. If the security group rule has a description, you do not need to
  specify the description
  to revoke the rule.

  For a default VPC, if the values you specify do not match the existing rule's
  values, no error is
  returned, and the output describes the security group rules that were not
  revoked.

  Amazon Web Services recommends that you describe the security group to verify
  that the rules were removed.

  Rule changes are propagated to instances within the security group as quickly as
  possible. However,
  a small delay might occur.
  """
  def revoke_security_group_egress(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RevokeSecurityGroupEgress", input, options)
  end

  @doc """
  Removes the specified inbound (ingress) rules from a security group.

  You can specify rules using either rule IDs or security group rule properties.
  If you use
  rule properties, the values that you specify (for example, ports) must match the
  existing rule's
  values exactly. Each rule has a protocol, from and to ports, and source (CIDR
  range,
  security group, or prefix list). For the TCP and UDP protocols, you must also
  specify the
  destination port or range of ports. For the ICMP protocol, you must also specify
  the ICMP type
  and code. If the security group rule has a description, you do not need to
  specify the description
  to revoke the rule.

  For a default VPC, if the values you specify do not match the existing rule's
  values,
  no error is returned, and the output describes the security group rules that
  were not
  revoked.

  For a non-default VPC, if the values you specify do not match the existing
  rule's
  values, an `InvalidPermission.NotFound` client error is returned, and no
  rules are revoked.

  Amazon Web Services recommends that you describe the security group to verify
  that the rules were removed.

  Rule changes are propagated to instances within the security group as quickly as
  possible.
  However, a small delay might occur.
  """
  def revoke_security_group_ingress(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RevokeSecurityGroupIngress", input, options)
  end

  @doc """
  Launches the specified number of instances using an AMI for which you have
  permissions.

  You can specify a number of options, or leave the default options. The following
  rules
  apply:

    *
  If you don't specify a subnet ID, we choose a default subnet from
  your default VPC for you. If you don't have a default VPC, you must specify a
  subnet ID in the request.

    *
  All instances have a network interface with a primary private IPv4
  address. If you don't specify this address, we choose one from the IPv4 range of
  your subnet.

    *
  Not all instance types support IPv6 addresses. For more information, see
  [Instance types](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html).

    *
  If you don't specify a security group ID, we use the default security group.
  For more information, see [Security groups](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-network-security.html).

    *
  If any of the AMIs have a product code attached for which the user has not
  subscribed, the request fails.

  You can create a [launch template](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html),
  which is a resource that contains the parameters to launch an instance. When you
  launch
  an instance using `RunInstances`, you can specify the launch template
  instead of specifying the launch parameters.

  To ensure faster instance launches, break up large requests into smaller
  batches. For
  example, create five separate launch requests for 100 instances each instead of
  one
  launch request for 500 instances.

  An instance is ready for you to use when it's in the `running` state. You
  can check the state of your instance using `DescribeInstances`. You can
  tag instances and EBS volumes during launch, after launch, or both. For more
  information, see `CreateTags` and [Tagging your Amazon EC2 resources](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html).

  Linux instances have access to the public key of the key pair at boot. You can
  use
  this key to provide secure access to the instance. Amazon EC2 public images use
  this
  feature to provide secure access without passwords. For more information, see
  [Key pairs](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html).

  For troubleshooting, see [What to do if an instance immediately
  terminates](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_InstanceStraightToTerminated.html),
  and [Troubleshooting connecting to your instance](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/TroubleshootingInstancesConnecting.html).
  """
  def run_instances(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RunInstances", input, options)
  end

  @doc """
  Launches the specified Scheduled Instances.

  Before you can launch a Scheduled Instance, you must purchase it and obtain an
  identifier using `PurchaseScheduledInstances`.

  You must launch a Scheduled Instance during its scheduled time period. You can't
  stop or reboot a Scheduled Instance,
  but you can terminate it as needed. If you terminate a Scheduled Instance before
  the current scheduled time period ends,
  you can launch it again after a few minutes. For more information, see
  [Scheduled Instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-scheduled-instances.html)
  in the *Amazon EC2 User Guide*.
  """
  def run_scheduled_instances(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RunScheduledInstances", input, options)
  end

  @doc """
  Searches for routes in the specified local gateway route table.
  """
  def search_local_gateway_routes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SearchLocalGatewayRoutes", input, options)
  end

  @doc """
  Searches one or more transit gateway multicast groups and returns the group
  membership information.
  """
  def search_transit_gateway_multicast_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SearchTransitGatewayMulticastGroups", input, options)
  end

  @doc """
  Searches for routes in the specified transit gateway route table.
  """
  def search_transit_gateway_routes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SearchTransitGatewayRoutes", input, options)
  end

  @doc """
  Sends a diagnostic interrupt to the specified Amazon EC2 instance to trigger a
  *kernel panic* (on Linux instances), or a *blue
  screen*/*stop error* (on Windows instances).

  For
  instances based on Intel and AMD processors, the interrupt is received as a
  *non-maskable interrupt* (NMI).

  In general, the operating system crashes and reboots when a kernel panic or stop
  error
  is triggered. The operating system can also be configured to perform diagnostic
  tasks,
  such as generating a memory dump file, loading a secondary kernel, or obtaining
  a call
  trace.

  Before sending a diagnostic interrupt to your instance, ensure that its
  operating
  system is configured to perform the required diagnostic tasks.

  For more information about configuring your operating system to generate a crash
  dump
  when a kernel panic or stop error occurs, see [Send a diagnostic interrupt (for advanced
  users)](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/diagnostic-interrupt.html)
  (Linux instances) or [Send a diagnostic interrupt (for advanced
  users)](https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/diagnostic-interrupt.html)
  (Windows instances).
  """
  def send_diagnostic_interrupt(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SendDiagnosticInterrupt", input, options)
  end

  @doc """
  Starts an Amazon EBS-backed instance that you've previously stopped.

  Instances that use Amazon EBS volumes as their root devices can be quickly
  stopped and
  started. When an instance is stopped, the compute resources are released and you
  are not
  billed for instance usage. However, your root partition Amazon EBS volume
  remains and
  continues to persist your data, and you are charged for Amazon EBS volume usage.
  You can
  restart your instance at any time. Every time you start your instance, Amazon
  EC2
  charges a one-minute minimum for instance usage, and thereafter charges per
  second for
  instance usage.

  Before stopping an instance, make sure it is in a state from which it can be
  restarted. Stopping an instance does not preserve data stored in RAM.

  Performing this operation on an instance that uses an instance store as its root
  device returns an error.

  If you attempt to start a T3 instance with `host` tenancy and the
  `unlimited` CPU credit option, the request fails. The
  `unlimited` CPU credit option is not supported on Dedicated Hosts. Before
  you start the instance, either change its CPU credit option to `standard`, or
  change its tenancy to `default` or `dedicated`.

  For more information, see [Stop and start your instance](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Stop_Start.html)
  in the *Amazon EC2 User Guide*.
  """
  def start_instances(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartInstances", input, options)
  end

  @doc """
  Starts analyzing the specified Network Access Scope.
  """
  def start_network_insights_access_scope_analysis(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartNetworkInsightsAccessScopeAnalysis", input, options)
  end

  @doc """
  Starts analyzing the specified path.

  If the path is reachable, the
  operation returns the shortest feasible path.
  """
  def start_network_insights_analysis(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartNetworkInsightsAnalysis", input, options)
  end

  @doc """
  Initiates the verification process to prove that the service provider owns the
  private
  DNS name domain for the endpoint service.

  The service provider must successfully perform the verification before the
  consumer can use the name to access the service.

  Before the service provider runs this command, they must add a record to the DNS
  server.
  """
  def start_vpc_endpoint_service_private_dns_verification(
        %Client{} = client,
        input,
        options \\ []
      ) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "StartVpcEndpointServicePrivateDnsVerification",
      input,
      options
    )
  end

  @doc """
  Stops an Amazon EBS-backed instance.

  For more information, see [Stop and start your
  instance](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Stop_Start.html)
  in the *Amazon EC2 User Guide*.

  You can use the Stop action to hibernate an instance if the instance is [enabled for
  hibernation](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/enabling-hibernation.html)
  and it meets the [hibernation prerequisites](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/hibernating-prerequisites.html).
  For more information, see [Hibernate your instance](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Hibernate.html) in
  the
  *Amazon EC2 User Guide*.

  We don't charge usage for a stopped instance, or data transfer fees; however,
  your
  root partition Amazon EBS volume remains and continues to persist your data, and
  you are
  charged for Amazon EBS volume usage. Every time you start your instance, Amazon
  EC2
  charges a one-minute minimum for instance usage, and thereafter charges per
  second for
  instance usage.

  You can't stop or hibernate instance store-backed instances. You can't use the
  Stop
  action to hibernate Spot Instances, but you can specify that Amazon EC2 should
  hibernate
  Spot Instances when they are interrupted. For more information, see [Hibernating interrupted Spot
  Instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-interruptions.html#hibernate-spot-instances)
  in the
  *Amazon EC2 User Guide*.

  When you stop or hibernate an instance, we shut it down. You can restart your
  instance
  at any time. Before stopping or hibernating an instance, make sure it is in a
  state from
  which it can be restarted. Stopping an instance does not preserve data stored in
  RAM,
  but hibernating an instance does preserve data stored in RAM. If an instance
  cannot
  hibernate successfully, a normal shutdown occurs.

  Stopping and hibernating an instance is different to rebooting or terminating
  it. For
  example, when you stop or hibernate an instance, the root device and any other
  devices
  attached to the instance persist. When you terminate an instance, the root
  device and
  any other devices attached during the instance launch are automatically deleted.
  For
  more information about the differences between rebooting, stopping, hibernating,
  and
  terminating instances, see [Instance lifecycle](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-lifecycle.html)
  in the *Amazon EC2 User Guide*.

  When you stop an instance, we attempt to shut it down forcibly after a short
  while. If
  your instance appears stuck in the stopping state after a period of time, there
  may be
  an issue with the underlying host computer. For more information, see
  [Troubleshoot stopping your
  instance](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/TroubleshootingInstancesStopping.html)
  in the *Amazon EC2 User Guide*.
  """
  def stop_instances(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopInstances", input, options)
  end

  @doc """
  Terminates active Client VPN endpoint connections.

  This action can be used to terminate a specific client connection, or up to five
  connections established by a specific user.
  """
  def terminate_client_vpn_connections(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TerminateClientVpnConnections", input, options)
  end

  @doc """
  Shuts down the specified instances.

  This operation is idempotent; if you terminate an
  instance more than once, each call succeeds.

  If you specify multiple instances and the request fails (for example, because of
  a
  single incorrect instance ID), none of the instances are terminated.

  If you terminate multiple instances across multiple Availability Zones, and one
  or
  more of the specified instances are enabled for termination protection, the
  request
  fails with the following results:

    *
  The specified instances that are in the same Availability Zone as the
  protected instance are not terminated.

    *
  The specified instances that are in different Availability Zones, where no
  other specified instances are protected, are successfully terminated.

  For example, say you have the following instances:

    *
  Instance A: `us-east-1a`; Not protected

    *
  Instance B: `us-east-1a`; Not protected

    *
  Instance C: `us-east-1b`; Protected

    *
  Instance D: `us-east-1b`; not protected

  If you attempt to terminate all of these instances in the same request, the
  request
  reports failure with the following results:

    *
  Instance A and Instance B are successfully terminated because none of the
  specified instances in `us-east-1a` are enabled for termination
  protection.

    *
  Instance C and Instance D fail to terminate because at least one of the
  specified instances in `us-east-1b` (Instance C) is enabled for
  termination protection.

  Terminated instances remain visible after termination (for approximately one
  hour).

  By default, Amazon EC2 deletes all EBS volumes that were attached when the
  instance
  launched. Volumes attached after instance launch continue running.

  You can stop, start, and terminate EBS-backed instances. You can only terminate
  instance store-backed instances. What happens to an instance differs if you stop
  it or
  terminate it. For example, when you stop an instance, the root device and any
  other
  devices attached to the instance persist. When you terminate an instance, any
  attached
  EBS volumes with the `DeleteOnTermination` block device mapping parameter set
  to `true` are automatically deleted. For more information about the
  differences between stopping and terminating instances, see [Instance lifecycle](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-lifecycle.html)
  in the *Amazon EC2 User Guide*.

  For more information about troubleshooting, see [Troubleshooting terminating your
  instance](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/TroubleshootingInstancesShuttingDown.html)
  in the
  *Amazon EC2 User Guide*.
  """
  def terminate_instances(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TerminateInstances", input, options)
  end

  @doc """
  Unassigns one or more IPv6 addresses IPv4 Prefix Delegation prefixes from a
  network interface.
  """
  def unassign_ipv6_addresses(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UnassignIpv6Addresses", input, options)
  end

  @doc """
  Unassigns one or more secondary private IP addresses, or IPv4 Prefix Delegation
  prefixes from a
  network interface.
  """
  def unassign_private_ip_addresses(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UnassignPrivateIpAddresses", input, options)
  end

  @doc """
  Unassigns secondary private IPv4 addresses from a private NAT gateway.

  You cannot unassign your primary private IP. For more information, see [Edit secondary IP address
  associations](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-nat-gateway.html#nat-gateway-edit-secondary)
  in the *Amazon VPC User Guide*.

  While unassigning is in progress, you cannot assign/unassign additional IP
  addresses while the connections are being drained. You are, however, allowed to
  delete the NAT gateway.

  A private IP address will only be released at the end of
  MaxDrainDurationSeconds. The
  private IP addresses stay associated and support the existing connections, but
  do not
  support any new connections (new connections are distributed across the
  remaining
  assigned private IP address). After the existing connections drain out, the
  private IP
  addresses are released.
  """
  def unassign_private_nat_gateway_address(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UnassignPrivateNatGatewayAddress", input, options)
  end

  @doc """
  Unlocks a snapshot that is locked in governance mode or that is locked in
  compliance mode
  but still in the cooling-off period.

  You can't unlock a snapshot that is locked in compliance
  mode after the cooling-off period has expired.
  """
  def unlock_snapshot(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UnlockSnapshot", input, options)
  end

  @doc """
  Disables detailed monitoring for a running instance.

  For more information, see [Monitoring your instances and
  volumes](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-cloudwatch.html)
  in the
  *Amazon EC2 User Guide*.
  """
  def unmonitor_instances(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UnmonitorInstances", input, options)
  end

  @doc """
  Updates the description of an egress (outbound) security group rule.

  You
  can replace an existing description, or add a description to a rule that did not
  have one
  previously. You can remove a description for a security group rule by omitting
  the
  description parameter in the request.
  """
  def update_security_group_rule_descriptions_egress(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "UpdateSecurityGroupRuleDescriptionsEgress",
      input,
      options
    )
  end

  @doc """
  Updates the description of an ingress (inbound) security group rule.

  You can replace an
  existing description, or add a description to a rule that did not have one
  previously.
  You can remove a description for a security group rule by omitting the
  description
  parameter in the request.
  """
  def update_security_group_rule_descriptions_ingress(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "UpdateSecurityGroupRuleDescriptionsIngress",
      input,
      options
    )
  end

  @doc """
  Stops advertising an address range that is provisioned as an address pool.

  You can perform this operation at most once every 10 seconds, even if you
  specify different
  address ranges each time.

  It can take a few minutes before traffic to the specified addresses stops
  routing to Amazon Web Services
  because of BGP propagation delays.
  """
  def withdraw_byoip_cidr(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "WithdrawByoipCidr", input, options)
  end
end
