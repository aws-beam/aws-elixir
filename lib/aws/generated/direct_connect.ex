# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.DirectConnect do
  @moduledoc """
  Direct Connect links your internal network to an Direct Connect location over a
  standard Ethernet fiber-optic cable.

  One end of the cable is connected to your router, the other to an Direct Connect
  router. With this connection in place, you can create virtual interfaces
  directly to the Amazon Web Services Cloud (for example, to Amazon EC2 and Amazon
  S3) and to Amazon VPC, bypassing Internet service providers in your network
  path. A connection provides access to all Amazon Web Services Regions except the
  China (Beijing) and (China) Ningxia Regions. Amazon Web Services resources in
  the China Regions can only be accessed through locations associated with those
  Regions.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2012-10-25",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "directconnect",
      global?: false,
      protocol: "json",
      service_id: "Direct Connect",
      signature_version: "v4",
      signing_name: "directconnect",
      target_prefix: "OvertureService"
    }
  end

  @doc """
  Accepts a proposal request to attach a virtual private gateway or transit
  gateway to a Direct Connect gateway.
  """
  def accept_direct_connect_gateway_association_proposal(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "AcceptDirectConnectGatewayAssociationProposal",
      input,
      options
    )
  end

  @doc """
  Deprecated.

  Use `AllocateHostedConnection` instead.

  Creates a hosted connection on an interconnect.

  Allocates a VLAN number and a specified amount of bandwidth for use by a hosted
  connection on the specified interconnect.

  Intended for use by Direct Connect Partners only.
  """
  def allocate_connection_on_interconnect(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AllocateConnectionOnInterconnect", input, options)
  end

  @doc """
  Creates a hosted connection on the specified interconnect or a link aggregation
  group (LAG) of interconnects.

  Allocates a VLAN number and a specified amount of capacity (bandwidth) for use
  by a hosted connection on the specified interconnect or LAG of interconnects.
  Amazon Web Services polices the hosted connection for the specified capacity and
  the Direct Connect Partner must also police the hosted connection for the
  specified capacity.

  Intended for use by Direct Connect Partners only.
  """
  def allocate_hosted_connection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AllocateHostedConnection", input, options)
  end

  @doc """
  Provisions a private virtual interface to be owned by the specified Amazon Web
  Services account.

  Virtual interfaces created using this action must be confirmed by the owner
  using `ConfirmPrivateVirtualInterface`. Until then, the virtual interface is in
  the `Confirming` state and is not available to handle traffic.
  """
  def allocate_private_virtual_interface(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AllocatePrivateVirtualInterface", input, options)
  end

  @doc """
  Provisions a public virtual interface to be owned by the specified Amazon Web
  Services account.

  The owner of a connection calls this function to provision a public virtual
  interface to be owned by the specified Amazon Web Services account.

  Virtual interfaces created using this function must be confirmed by the owner
  using `ConfirmPublicVirtualInterface`. Until this step has been completed, the
  virtual interface is in the `confirming` state and is not available to handle
  traffic.

  When creating an IPv6 public virtual interface, omit the Amazon address and
  customer address. IPv6 addresses are automatically assigned from the Amazon pool
  of IPv6 addresses; you cannot specify custom IPv6 addresses.
  """
  def allocate_public_virtual_interface(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AllocatePublicVirtualInterface", input, options)
  end

  @doc """
  Provisions a transit virtual interface to be owned by the specified Amazon Web
  Services account.

  Use this type of interface to connect a transit gateway to your Direct Connect
  gateway.

  The owner of a connection provisions a transit virtual interface to be owned by
  the specified Amazon Web Services account.

  After you create a transit virtual interface, it must be confirmed by the owner
  using `ConfirmTransitVirtualInterface`. Until this step has been completed, the
  transit virtual interface is in the `requested` state and is not available to
  handle traffic.
  """
  def allocate_transit_virtual_interface(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AllocateTransitVirtualInterface", input, options)
  end

  @doc """
  Associates an existing connection with a link aggregation group (LAG).

  The connection is interrupted and re-established as a member of the LAG
  (connectivity to Amazon Web Services is interrupted). The connection must be
  hosted on the same Direct Connect endpoint as the LAG, and its bandwidth must
  match the bandwidth for the LAG. You can re-associate a connection that's
  currently associated with a different LAG; however, if removing the connection
  would cause the original LAG to fall below its setting for minimum number of
  operational connections, the request fails.

  Any virtual interfaces that are directly associated with the connection are
  automatically re-associated with the LAG. If the connection was originally
  associated with a different LAG, the virtual interfaces remain associated with
  the original LAG.

  For interconnects, any hosted connections are automatically re-associated with
  the LAG. If the interconnect was originally associated with a different LAG, the
  hosted connections remain associated with the original LAG.
  """
  def associate_connection_with_lag(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssociateConnectionWithLag", input, options)
  end

  @doc """
  Associates a hosted connection and its virtual interfaces with a link
  aggregation group (LAG) or interconnect.

  If the target interconnect or LAG has an existing hosted connection with a
  conflicting VLAN number or IP address, the operation fails. This action
  temporarily interrupts the hosted connection's connectivity to Amazon Web
  Services as it is being migrated.

  Intended for use by Direct Connect Partners only.
  """
  def associate_hosted_connection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssociateHostedConnection", input, options)
  end

  @doc """
  Associates a MAC Security (MACsec) Connection Key Name (CKN)/ Connectivity
  Association Key (CAK) pair with an Direct Connect dedicated connection.

  You must supply either the `secretARN,` or the CKN/CAK (`ckn` and `cak`) pair in
  the request.

  For information about MAC Security (MACsec) key considerations, see [MACsec pre-shared CKN/CAK key considerations
  ](https://docs.aws.amazon.com/directconnect/latest/UserGuide/direct-connect-mac-sec-getting-started.html#mac-sec-key-consideration)
  in the *Direct Connect User Guide*.
  """
  def associate_mac_sec_key(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssociateMacSecKey", input, options)
  end

  @doc """
  Associates a virtual interface with a specified link aggregation group (LAG) or
  connection.

  Connectivity to Amazon Web Services is temporarily interrupted as the virtual
  interface is being migrated. If the target connection or LAG has an associated
  virtual interface with a conflicting VLAN number or a conflicting IP address,
  the operation fails.

  Virtual interfaces associated with a hosted connection cannot be associated with
  a LAG; hosted connections must be migrated along with their virtual interfaces
  using `AssociateHostedConnection`.

  To reassociate a virtual interface to a new connection or LAG, the requester
  must own either the virtual interface itself or the connection to which the
  virtual interface is currently associated. Additionally, the requester must own
  the connection or LAG for the association.
  """
  def associate_virtual_interface(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssociateVirtualInterface", input, options)
  end

  @doc """
  Confirms the creation of the specified hosted connection on an interconnect.

  Upon creation, the hosted connection is initially in the `Ordering` state, and
  remains in this state until the owner confirms creation of the hosted
  connection.
  """
  def confirm_connection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ConfirmConnection", input, options)
  end

  @doc """
  The confirmation of the terms of agreement when creating the connection/link
  aggregation group (LAG).
  """
  def confirm_customer_agreement(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ConfirmCustomerAgreement", input, options)
  end

  @doc """
  Accepts ownership of a private virtual interface created by another Amazon Web
  Services account.

  After the virtual interface owner makes this call, the virtual interface is
  created and attached to the specified virtual private gateway or Direct Connect
  gateway, and is made available to handle traffic.
  """
  def confirm_private_virtual_interface(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ConfirmPrivateVirtualInterface", input, options)
  end

  @doc """
  Accepts ownership of a public virtual interface created by another Amazon Web
  Services account.

  After the virtual interface owner makes this call, the specified virtual
  interface is created and made available to handle traffic.
  """
  def confirm_public_virtual_interface(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ConfirmPublicVirtualInterface", input, options)
  end

  @doc """
  Accepts ownership of a transit virtual interface created by another Amazon Web
  Services account.

  After the owner of the transit virtual interface makes this call, the specified
  transit virtual interface is created and made available to handle traffic.
  """
  def confirm_transit_virtual_interface(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ConfirmTransitVirtualInterface", input, options)
  end

  @doc """
  Creates a BGP peer on the specified virtual interface.

  You must create a BGP peer for the corresponding address family (IPv4/IPv6) in
  order to access Amazon Web Services resources that also use that address family.

  If logical redundancy is not supported by the connection, interconnect, or LAG,
  the BGP peer cannot be in the same address family as an existing BGP peer on the
  virtual interface.

  When creating a IPv6 BGP peer, omit the Amazon address and customer address.
  IPv6 addresses are automatically assigned from the Amazon pool of IPv6
  addresses; you cannot specify custom IPv6 addresses.

  For a public virtual interface, the Autonomous System Number (ASN) must be
  private or already on the allow list for the virtual interface.
  """
  def create_bgp_peer(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateBGPPeer", input, options)
  end

  @doc """
  Creates a connection between a customer network and a specific Direct Connect
  location.

  A connection links your internal network to an Direct Connect location over a
  standard Ethernet fiber-optic cable. One end of the cable is connected to your
  router, the other to an Direct Connect router.

  To find the locations for your Region, use `DescribeLocations`.

  You can automatically add the new connection to a link aggregation group (LAG)
  by specifying a LAG ID in the request. This ensures that the new connection is
  allocated on the same Direct Connect endpoint that hosts the specified LAG. If
  there are no available ports on the endpoint, the request fails and no
  connection is created.
  """
  def create_connection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateConnection", input, options)
  end

  @doc """
  Creates a Direct Connect gateway, which is an intermediate object that enables
  you to connect a set of virtual interfaces and virtual private gateways.

  A Direct Connect gateway is global and visible in any Amazon Web Services Region
  after it is created. The virtual interfaces and virtual private gateways that
  are connected through a Direct Connect gateway can be in different Amazon Web
  Services Regions. This enables you to connect to a VPC in any Region, regardless
  of the Region in which the virtual interfaces are located, and pass traffic
  between them.
  """
  def create_direct_connect_gateway(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateDirectConnectGateway", input, options)
  end

  @doc """
  Creates an association between a Direct Connect gateway and a virtual private
  gateway.

  The virtual private gateway must be attached to a VPC and must not be associated
  with another Direct Connect gateway.
  """
  def create_direct_connect_gateway_association(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateDirectConnectGatewayAssociation", input, options)
  end

  @doc """
  Creates a proposal to associate the specified virtual private gateway or transit
  gateway with the specified Direct Connect gateway.

  You can associate a Direct Connect gateway and virtual private gateway or
  transit gateway that is owned by any Amazon Web Services account.
  """
  def create_direct_connect_gateway_association_proposal(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "CreateDirectConnectGatewayAssociationProposal",
      input,
      options
    )
  end

  @doc """
  Creates an interconnect between an Direct Connect Partner's network and a
  specific Direct Connect location.

  An interconnect is a connection that is capable of hosting other connections.
  The Direct Connect Partner can use an interconnect to provide Direct Connect
  hosted connections to customers through their own network services. Like a
  standard connection, an interconnect links the partner's network to an Direct
  Connect location over a standard Ethernet fiber-optic cable. One end is
  connected to the partner's router, the other to an Direct Connect router.

  You can automatically add the new interconnect to a link aggregation group (LAG)
  by specifying a LAG ID in the request. This ensures that the new interconnect is
  allocated on the same Direct Connect endpoint that hosts the specified LAG. If
  there are no available ports on the endpoint, the request fails and no
  interconnect is created.

  For each end customer, the Direct Connect Partner provisions a connection on
  their interconnect by calling `AllocateHostedConnection`. The end customer can
  then connect to Amazon Web Services resources by creating a virtual interface on
  their connection, using the VLAN assigned to them by the Direct Connect Partner.

  Intended for use by Direct Connect Partners only.
  """
  def create_interconnect(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateInterconnect", input, options)
  end

  @doc """
  Creates a link aggregation group (LAG) with the specified number of bundled
  physical dedicated connections between the customer network and a specific
  Direct Connect location.

  A LAG is a logical interface that uses the Link Aggregation Control Protocol
  (LACP) to aggregate multiple interfaces, enabling you to treat them as a single
  interface.

  All connections in a LAG must use the same bandwidth (either 1Gbps or 10Gbps)
  and must terminate at the same Direct Connect endpoint.

  You can have up to 10 dedicated connections per LAG. Regardless of this limit,
  if you request more connections for the LAG than Direct Connect can allocate on
  a single endpoint, no LAG is created.

  You can specify an existing physical dedicated connection or interconnect to
  include in the LAG (which counts towards the total number of connections). Doing
  so interrupts the current physical dedicated connection, and re-establishes them
  as a member of the LAG. The LAG will be created on the same Direct Connect
  endpoint to which the dedicated connection terminates. Any virtual interfaces
  associated with the dedicated connection are automatically disassociated and
  re-associated with the LAG. The connection ID does not change.

  If the Amazon Web Services account used to create a LAG is a registered Direct
  Connect Partner, the LAG is automatically enabled to host sub-connections. For a
  LAG owned by a partner, any associated virtual interfaces cannot be directly
  configured.
  """
  def create_lag(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateLag", input, options)
  end

  @doc """
  Creates a private virtual interface.

  A virtual interface is the VLAN that transports Direct Connect traffic. A
  private virtual interface can be connected to either a Direct Connect gateway or
  a Virtual Private Gateway (VGW). Connecting the private virtual interface to a
  Direct Connect gateway enables the possibility for connecting to multiple VPCs,
  including VPCs in different Amazon Web Services Regions. Connecting the private
  virtual interface to a VGW only provides access to a single VPC within the same
  Region.

  Setting the MTU of a virtual interface to 9001 (jumbo frames) can cause an
  update to the underlying physical connection if it wasn't updated to support
  jumbo frames. Updating the connection disrupts network connectivity for all
  virtual interfaces associated with the connection for up to 30 seconds. To check
  whether your connection supports jumbo frames, call `DescribeConnections`. To
  check whether your virtual interface supports jumbo frames, call
  `DescribeVirtualInterfaces`.
  """
  def create_private_virtual_interface(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreatePrivateVirtualInterface", input, options)
  end

  @doc """
  Creates a public virtual interface.

  A virtual interface is the VLAN that transports Direct Connect traffic. A public
  virtual interface supports sending traffic to public services of Amazon Web
  Services such as Amazon S3.

  When creating an IPv6 public virtual interface (`addressFamily` is `ipv6`),
  leave the `customer` and `amazon` address fields blank to use auto-assigned IPv6
  space. Custom IPv6 addresses are not supported.
  """
  def create_public_virtual_interface(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreatePublicVirtualInterface", input, options)
  end

  @doc """
  Creates a transit virtual interface.

  A transit virtual interface should be used to access one or more transit
  gateways associated with Direct Connect gateways. A transit virtual interface
  enables the connection of multiple VPCs attached to a transit gateway to a
  Direct Connect gateway.

  If you associate your transit gateway with one or more Direct Connect gateways,
  the Autonomous System Number (ASN) used by the transit gateway and the Direct
  Connect gateway must be different. For example, if you use the default ASN 64512
  for both your the transit gateway and Direct Connect gateway, the association
  request fails.

  Setting the MTU of a virtual interface to 8500 (jumbo frames) can cause an
  update to the underlying physical connection if it wasn't updated to support
  jumbo frames. Updating the connection disrupts network connectivity for all
  virtual interfaces associated with the connection for up to 30 seconds. To check
  whether your connection supports jumbo frames, call `DescribeConnections`. To
  check whether your virtual interface supports jumbo frames, call
  `DescribeVirtualInterfaces`.
  """
  def create_transit_virtual_interface(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateTransitVirtualInterface", input, options)
  end

  @doc """
  Deletes the specified BGP peer on the specified virtual interface with the
  specified customer address and ASN.

  You cannot delete the last BGP peer from a virtual interface.
  """
  def delete_bgp_peer(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteBGPPeer", input, options)
  end

  @doc """
  Deletes the specified connection.

  Deleting a connection only stops the Direct Connect port hour and data transfer
  charges. If you are partnering with any third parties to connect with the Direct
  Connect location, you must cancel your service with them separately.
  """
  def delete_connection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteConnection", input, options)
  end

  @doc """
  Deletes the specified Direct Connect gateway.

  You must first delete all virtual interfaces that are attached to the Direct
  Connect gateway and disassociate all virtual private gateways associated with
  the Direct Connect gateway.
  """
  def delete_direct_connect_gateway(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteDirectConnectGateway", input, options)
  end

  @doc """
  Deletes the association between the specified Direct Connect gateway and virtual
  private gateway.

  We recommend that you specify the `associationID` to delete the association.
  Alternatively, if you own virtual gateway and a Direct Connect gateway
  association, you can specify the `virtualGatewayId` and `directConnectGatewayId`
  to delete an association.
  """
  def delete_direct_connect_gateway_association(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteDirectConnectGatewayAssociation", input, options)
  end

  @doc """
  Deletes the association proposal request between the specified Direct Connect
  gateway and virtual private gateway or transit gateway.
  """
  def delete_direct_connect_gateway_association_proposal(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "DeleteDirectConnectGatewayAssociationProposal",
      input,
      options
    )
  end

  @doc """
  Deletes the specified interconnect.

  Intended for use by Direct Connect Partners only.
  """
  def delete_interconnect(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteInterconnect", input, options)
  end

  @doc """
  Deletes the specified link aggregation group (LAG).

  You cannot delete a LAG if it has active virtual interfaces or hosted
  connections.
  """
  def delete_lag(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteLag", input, options)
  end

  @doc """
  Deletes a virtual interface.
  """
  def delete_virtual_interface(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteVirtualInterface", input, options)
  end

  @doc """
  Deprecated.

  Use `DescribeLoa` instead.

  Gets the LOA-CFA for a connection.

  The Letter of Authorization - Connecting Facility Assignment (LOA-CFA) is a
  document that your APN partner or service provider uses when establishing your
  cross connect to Amazon Web Services at the colocation facility. For more
  information, see [Requesting Cross Connects at Direct Connect Locations](https://docs.aws.amazon.com/directconnect/latest/UserGuide/Colocation.html)
  in the *Direct Connect User Guide*.
  """
  def describe_connection_loa(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeConnectionLoa", input, options)
  end

  @doc """
  Displays the specified connection or all connections in this Region.
  """
  def describe_connections(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeConnections", input, options)
  end

  @doc """
  Deprecated.

  Use `DescribeHostedConnections` instead.

  Lists the connections that have been provisioned on the specified interconnect.

  Intended for use by Direct Connect Partners only.
  """
  def describe_connections_on_interconnect(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeConnectionsOnInterconnect", input, options)
  end

  @doc """
  Get and view a list of customer agreements, along with their signed status and
  whether the customer is an NNIPartner, NNIPartnerV2, or a nonPartner.
  """
  def describe_customer_metadata(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeCustomerMetadata", input, options)
  end

  @doc """
  Describes one or more association proposals for connection between a virtual
  private gateway or transit gateway and a Direct Connect gateway.
  """
  def describe_direct_connect_gateway_association_proposals(
        %Client{} = client,
        input,
        options \\ []
      ) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "DescribeDirectConnectGatewayAssociationProposals",
      input,
      options
    )
  end

  @doc """
  Lists the associations between your Direct Connect gateways and virtual private
  gateways and transit gateways.

  You must specify one of the following:

    * A Direct Connect gateway

  The response contains all virtual private gateways and transit gateways
  associated with the Direct Connect gateway.

    * A virtual private gateway

  The response contains the Direct Connect gateway.

    * A transit gateway

  The response contains the Direct Connect gateway.

    * A Direct Connect gateway and a virtual private gateway

  The response contains the association between the Direct Connect gateway and
  virtual private gateway.

    * A Direct Connect gateway and a transit gateway

  The response contains the association between the Direct Connect gateway and
  transit gateway.
  """
  def describe_direct_connect_gateway_associations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeDirectConnectGatewayAssociations", input, options)
  end

  @doc """
  Lists the attachments between your Direct Connect gateways and virtual
  interfaces.

  You must specify a Direct Connect gateway, a virtual interface, or both. If you
  specify a Direct Connect gateway, the response contains all virtual interfaces
  attached to the Direct Connect gateway. If you specify a virtual interface, the
  response contains all Direct Connect gateways attached to the virtual interface.
  If you specify both, the response contains the attachment between the Direct
  Connect gateway and the virtual interface.
  """
  def describe_direct_connect_gateway_attachments(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeDirectConnectGatewayAttachments", input, options)
  end

  @doc """
  Lists all your Direct Connect gateways or only the specified Direct Connect
  gateway.

  Deleted Direct Connect gateways are not returned.
  """
  def describe_direct_connect_gateways(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeDirectConnectGateways", input, options)
  end

  @doc """
  Lists the hosted connections that have been provisioned on the specified
  interconnect or link aggregation group (LAG).

  Intended for use by Direct Connect Partners only.
  """
  def describe_hosted_connections(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeHostedConnections", input, options)
  end

  @doc """
  Deprecated.

  Use `DescribeLoa` instead.

  Gets the LOA-CFA for the specified interconnect.

  The Letter of Authorization - Connecting Facility Assignment (LOA-CFA) is a
  document that is used when establishing your cross connect to Amazon Web
  Services at the colocation facility. For more information, see [Requesting Cross Connects at Direct Connect
  Locations](https://docs.aws.amazon.com/directconnect/latest/UserGuide/Colocation.html)
  in the *Direct Connect User Guide*.
  """
  def describe_interconnect_loa(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeInterconnectLoa", input, options)
  end

  @doc """
  Lists the interconnects owned by the Amazon Web Services account or only the
  specified interconnect.
  """
  def describe_interconnects(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeInterconnects", input, options)
  end

  @doc """
  Describes all your link aggregation groups (LAG) or the specified LAG.
  """
  def describe_lags(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeLags", input, options)
  end

  @doc """
  Gets the LOA-CFA for a connection, interconnect, or link aggregation group
  (LAG).

  The Letter of Authorization - Connecting Facility Assignment (LOA-CFA) is a
  document that is used when establishing your cross connect to Amazon Web
  Services at the colocation facility. For more information, see [Requesting Cross Connects at Direct Connect
  Locations](https://docs.aws.amazon.com/directconnect/latest/UserGuide/Colocation.html)
  in the *Direct Connect User Guide*.
  """
  def describe_loa(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeLoa", input, options)
  end

  @doc """
  Lists the Direct Connect locations in the current Amazon Web Services Region.

  These are the locations that can be selected when calling `CreateConnection` or
  `CreateInterconnect`.
  """
  def describe_locations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeLocations", input, options)
  end

  @doc """
  Details about the router.
  """
  def describe_router_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeRouterConfiguration", input, options)
  end

  @doc """
  Describes the tags associated with the specified Direct Connect resources.
  """
  def describe_tags(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeTags", input, options)
  end

  @doc """
  Lists the virtual private gateways owned by the Amazon Web Services account.

  You can create one or more Direct Connect private virtual interfaces linked to a
  virtual private gateway.
  """
  def describe_virtual_gateways(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeVirtualGateways", input, options)
  end

  @doc """
  Displays all virtual interfaces for an Amazon Web Services account.

  Virtual interfaces deleted fewer than 15 minutes before you make the request are
  also returned. If you specify a connection ID, only the virtual interfaces
  associated with the connection are returned. If you specify a virtual interface
  ID, then only a single virtual interface is returned.

  A virtual interface (VLAN) transmits the traffic between the Direct Connect
  location and the customer network.
  """
  def describe_virtual_interfaces(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeVirtualInterfaces", input, options)
  end

  @doc """
  Disassociates a connection from a link aggregation group (LAG).

  The connection is interrupted and re-established as a standalone connection (the
  connection is not deleted; to delete the connection, use the `DeleteConnection`
  request). If the LAG has associated virtual interfaces or hosted connections,
  they remain associated with the LAG. A disassociated connection owned by an
  Direct Connect Partner is automatically converted to an interconnect.

  If disassociating the connection would cause the LAG to fall below its setting
  for minimum number of operational connections, the request fails, except when
  it's the last member of the LAG. If all connections are disassociated, the LAG
  continues to exist as an empty LAG with no physical connections.
  """
  def disassociate_connection_from_lag(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisassociateConnectionFromLag", input, options)
  end

  @doc """
  Removes the association between a MAC Security (MACsec) security key and an
  Direct Connect dedicated connection.
  """
  def disassociate_mac_sec_key(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisassociateMacSecKey", input, options)
  end

  @doc """
  Lists the virtual interface failover test history.
  """
  def list_virtual_interface_test_history(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListVirtualInterfaceTestHistory", input, options)
  end

  @doc """
  Starts the virtual interface failover test that verifies your configuration
  meets your resiliency requirements by placing the BGP peering session in the
  DOWN state.

  You can then send traffic to verify that there are no outages.

  You can run the test on public, private, transit, and hosted virtual interfaces.

  You can use
  [ListVirtualInterfaceTestHistory](https://docs.aws.amazon.com/directconnect/latest/APIReference/API_ListVirtualInterfaceTestHistory.html) to view the virtual interface test history.

  If you need to stop the test before the test interval completes, use
  [StopBgpFailoverTest](https://docs.aws.amazon.com/directconnect/latest/APIReference/API_StopBgpFailoverTest.html).
  """
  def start_bgp_failover_test(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartBgpFailoverTest", input, options)
  end

  @doc """
  Stops the virtual interface failover test.
  """
  def stop_bgp_failover_test(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopBgpFailoverTest", input, options)
  end

  @doc """
  Adds the specified tags to the specified Direct Connect resource.

  Each resource can have a maximum of 50 tags.

  Each tag consists of a key and an optional value. If a tag with the same key is
  already associated with the resource, this action updates its value.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Removes one or more tags from the specified Direct Connect resource.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Updates the Direct Connect dedicated connection configuration.

  You can update the following parameters for a connection:

    * The connection name

    * The connection's MAC Security (MACsec) encryption mode.
  """
  def update_connection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateConnection", input, options)
  end

  @doc """
  Updates the name of a current Direct Connect gateway.
  """
  def update_direct_connect_gateway(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateDirectConnectGateway", input, options)
  end

  @doc """
  Updates the specified attributes of the Direct Connect gateway association.

  Add or remove prefixes from the association.
  """
  def update_direct_connect_gateway_association(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateDirectConnectGatewayAssociation", input, options)
  end

  @doc """
  Updates the attributes of the specified link aggregation group (LAG).

  You can update the following LAG attributes:

    * The name of the LAG.

    * The value for the minimum number of connections that must be
  operational for the LAG itself to be operational.

    * The LAG's MACsec encryption mode.

  Amazon Web Services assigns this value to each connection which is part of the
  LAG.

    * The tags

  If you adjust the threshold value for the minimum number of operational
  connections, ensure that the new value does not cause the LAG to fall below the
  threshold and become non-operational.
  """
  def update_lag(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateLag", input, options)
  end

  @doc """
  Updates the specified attributes of the specified virtual private interface.

  Setting the MTU of a virtual interface to 9001 (jumbo frames) can cause an
  update to the underlying physical connection if it wasn't updated to support
  jumbo frames. Updating the connection disrupts network connectivity for all
  virtual interfaces associated with the connection for up to 30 seconds. To check
  whether your connection supports jumbo frames, call `DescribeConnections`. To
  check whether your virtual q interface supports jumbo frames, call
  `DescribeVirtualInterfaces`.
  """
  def update_virtual_interface_attributes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateVirtualInterfaceAttributes", input, options)
  end
end
