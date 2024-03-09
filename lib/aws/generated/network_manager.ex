# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.NetworkManager do
  @moduledoc """
  Amazon Web Services enables you to centrally manage your Amazon Web Services
  Cloud WAN core network and your Transit Gateway network across Amazon Web
  Services accounts, Regions, and on-premises locations.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      api_version: "2019-07-05",
      content_type: "application/x-amz-json-1.1",
      credential_scope: "us-west-2",
      endpoint_prefix: "networkmanager",
      global?: true,
      protocol: "rest-json",
      service_id: "NetworkManager",
      signature_version: "v4",
      signing_name: "networkmanager",
      target_prefix: nil
    }
  end

  @doc """
  Accepts a core network attachment request.

  Once the attachment request is accepted by a core network owner, the attachment
  is
  created and connected to a core network.
  """
  def accept_attachment(%Client{} = client, attachment_id, input, options \\ []) do
    url_path = "/attachments/#{AWS.Util.encode_uri(attachment_id)}/accept"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Associates a core network Connect peer with a device and optionally, with a
  link.

  If you specify a link, it must be associated with the specified device. You can
  only
  associate core network Connect peers that have been created on a core network
  Connect
  attachment on a core network.
  """
  def associate_connect_peer(%Client{} = client, global_network_id, input, options \\ []) do
    url_path =
      "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/connect-peer-associations"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Associates a customer gateway with a device and optionally, with a link.

  If you
  specify a link, it must be associated with the specified device.

  You can only associate customer gateways that are connected to a VPN attachment
  on a
  transit gateway or core network registered in your global network. When you
  register a
  transit gateway or core network, customer gateways that are connected to the
  transit
  gateway are automatically included in the global network. To list customer
  gateways
  that are connected to a transit gateway, use the
  [DescribeVpnConnections](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeVpnConnections.html)
  EC2 API and filter by
  `transit-gateway-id`.

  You cannot associate a customer gateway with more than one device and link.
  """
  def associate_customer_gateway(%Client{} = client, global_network_id, input, options \\ []) do
    url_path =
      "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/customer-gateway-associations"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Associates a link to a device.

  A device can be associated to multiple links and a link can be associated to
  multiple devices. The device and link must be in the same global network and the
  same site.
  """
  def associate_link(%Client{} = client, global_network_id, input, options \\ []) do
    url_path = "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/link-associations"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Associates a transit gateway Connect peer with a device, and optionally, with a
  link.

  If you
  specify a link, it must be associated with the specified device.

  You can only associate transit gateway Connect peers that have been created on a
  transit gateway that's registered in your global network.

  You cannot associate a transit gateway Connect peer with more than one device
  and link.
  """
  def associate_transit_gateway_connect_peer(
        %Client{} = client,
        global_network_id,
        input,
        options \\ []
      ) do
    url_path =
      "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/transit-gateway-connect-peer-associations"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a core network Connect attachment from a specified core network
  attachment.

  A core network Connect attachment is a GRE-based tunnel attachment that you can
  use to
  establish a connection between a core network and an appliance. A core network
  Connect
  attachment uses an existing VPC attachment as the underlying transport
  mechanism.
  """
  def create_connect_attachment(%Client{} = client, input, options \\ []) do
    url_path = "/connect-attachments"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a core network Connect peer for a specified core network connect
  attachment between a core network and an appliance.

  The peer address and transit gateway address must be the same IP address family
  (IPv4 or IPv6).
  """
  def create_connect_peer(%Client{} = client, input, options \\ []) do
    url_path = "/connect-peers"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a connection between two devices.

  The devices can be a physical or virtual appliance that connects to a
  third-party appliance in a VPC, or a physical appliance that connects to another
  physical appliance in an on-premises network.
  """
  def create_connection(%Client{} = client, global_network_id, input, options \\ []) do
    url_path = "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/connections"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a core network as part of your global network, and optionally, with a
  core network policy.
  """
  def create_core_network(%Client{} = client, input, options \\ []) do
    url_path = "/core-networks"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a new device in a global network.

  If you specify both a site ID and a
  location, the location of the site is used for visualization in the Network
  Manager console.
  """
  def create_device(%Client{} = client, global_network_id, input, options \\ []) do
    url_path = "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/devices"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a new, empty global network.
  """
  def create_global_network(%Client{} = client, input, options \\ []) do
    url_path = "/global-networks"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a new link for a specified site.
  """
  def create_link(%Client{} = client, global_network_id, input, options \\ []) do
    url_path = "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/links"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a new site in a global network.
  """
  def create_site(%Client{} = client, global_network_id, input, options \\ []) do
    url_path = "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/sites"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates an Amazon Web Services site-to-site VPN attachment on an edge location
  of a core network.
  """
  def create_site_to_site_vpn_attachment(%Client{} = client, input, options \\ []) do
    url_path = "/site-to-site-vpn-attachments"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a transit gateway peering connection.
  """
  def create_transit_gateway_peering(%Client{} = client, input, options \\ []) do
    url_path = "/transit-gateway-peerings"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a transit gateway route table attachment.
  """
  def create_transit_gateway_route_table_attachment(%Client{} = client, input, options \\ []) do
    url_path = "/transit-gateway-route-table-attachments"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a VPC attachment on an edge location of a core network.
  """
  def create_vpc_attachment(%Client{} = client, input, options \\ []) do
    url_path = "/vpc-attachments"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes an attachment.

  Supports all attachment types.
  """
  def delete_attachment(%Client{} = client, attachment_id, input, options \\ []) do
    url_path = "/attachments/#{AWS.Util.encode_uri(attachment_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes a Connect peer.
  """
  def delete_connect_peer(%Client{} = client, connect_peer_id, input, options \\ []) do
    url_path = "/connect-peers/#{AWS.Util.encode_uri(connect_peer_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes the specified connection in your global network.
  """
  def delete_connection(
        %Client{} = client,
        connection_id,
        global_network_id,
        input,
        options \\ []
      ) do
    url_path =
      "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/connections/#{AWS.Util.encode_uri(connection_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes a core network along with all core network policies.

  This can only be done if there are no attachments on a core network.
  """
  def delete_core_network(%Client{} = client, core_network_id, input, options \\ []) do
    url_path = "/core-networks/#{AWS.Util.encode_uri(core_network_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes a policy version from a core network.

  You can't delete the current LIVE policy.
  """
  def delete_core_network_policy_version(
        %Client{} = client,
        core_network_id,
        policy_version_id,
        input,
        options \\ []
      ) do
    url_path =
      "/core-networks/#{AWS.Util.encode_uri(core_network_id)}/core-network-policy-versions/#{AWS.Util.encode_uri(policy_version_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes an existing device.

  You must first disassociate the device from any links and
  customer gateways.
  """
  def delete_device(%Client{} = client, device_id, global_network_id, input, options \\ []) do
    url_path =
      "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/devices/#{AWS.Util.encode_uri(device_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes an existing global network.

  You must first delete all global network objects
  (devices, links, and sites), deregister all transit gateways, and delete any
  core networks.
  """
  def delete_global_network(%Client{} = client, global_network_id, input, options \\ []) do
    url_path = "/global-networks/#{AWS.Util.encode_uri(global_network_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes an existing link.

  You must first disassociate the link from any devices and
  customer gateways.
  """
  def delete_link(%Client{} = client, global_network_id, link_id, input, options \\ []) do
    url_path =
      "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/links/#{AWS.Util.encode_uri(link_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes an existing peering connection.
  """
  def delete_peering(%Client{} = client, peering_id, input, options \\ []) do
    url_path = "/peerings/#{AWS.Util.encode_uri(peering_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes a resource policy for the specified resource.

  This revokes the access of the principals specified in the resource policy.
  """
  def delete_resource_policy(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/resource-policy/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes an existing site.

  The site cannot be associated with any device or link.
  """
  def delete_site(%Client{} = client, global_network_id, site_id, input, options \\ []) do
    url_path =
      "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/sites/#{AWS.Util.encode_uri(site_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deregisters a transit gateway from your global network.

  This action does not delete
  your transit gateway, or modify any of its attachments. This action removes any
  customer gateway associations.
  """
  def deregister_transit_gateway(
        %Client{} = client,
        global_network_id,
        transit_gateway_arn,
        input,
        options \\ []
      ) do
    url_path =
      "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/transit-gateway-registrations/#{AWS.Util.encode_uri(transit_gateway_arn)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Describes one or more global networks.

  By default, all global networks are
  described. To describe the objects in your global network, you must use the
  appropriate
  `Get*` action. For example, to list the transit gateways in your global
  network, use `GetTransitGatewayRegistrations`.
  """
  def describe_global_networks(
        %Client{} = client,
        global_network_ids \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/global-networks"
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

    query_params =
      if !is_nil(global_network_ids) do
        [{"globalNetworkIds", global_network_ids} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Disassociates a core network Connect peer from a device and a link.
  """
  def disassociate_connect_peer(
        %Client{} = client,
        connect_peer_id,
        global_network_id,
        input,
        options \\ []
      ) do
    url_path =
      "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/connect-peer-associations/#{AWS.Util.encode_uri(connect_peer_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Disassociates a customer gateway from a device and a link.
  """
  def disassociate_customer_gateway(
        %Client{} = client,
        customer_gateway_arn,
        global_network_id,
        input,
        options \\ []
      ) do
    url_path =
      "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/customer-gateway-associations/#{AWS.Util.encode_uri(customer_gateway_arn)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Disassociates an existing device from a link.

  You must first disassociate any customer
  gateways that are associated with the link.
  """
  def disassociate_link(%Client{} = client, global_network_id, input, options \\ []) do
    url_path = "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/link-associations"
    headers = []

    {query_params, input} =
      [
        {"DeviceId", "deviceId"},
        {"LinkId", "linkId"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Disassociates a transit gateway Connect peer from a device and link.
  """
  def disassociate_transit_gateway_connect_peer(
        %Client{} = client,
        global_network_id,
        transit_gateway_connect_peer_arn,
        input,
        options \\ []
      ) do
    url_path =
      "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/transit-gateway-connect-peer-associations/#{AWS.Util.encode_uri(transit_gateway_connect_peer_arn)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Executes a change set on your core network.

  Deploys changes globally based on the policy submitted..
  """
  def execute_core_network_change_set(
        %Client{} = client,
        core_network_id,
        policy_version_id,
        input,
        options \\ []
      ) do
    url_path =
      "/core-networks/#{AWS.Util.encode_uri(core_network_id)}/core-network-change-sets/#{AWS.Util.encode_uri(policy_version_id)}/execute"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Returns information about a core network Connect attachment.
  """
  def get_connect_attachment(%Client{} = client, attachment_id, options \\ []) do
    url_path = "/connect-attachments/#{AWS.Util.encode_uri(attachment_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about a core network Connect peer.
  """
  def get_connect_peer(%Client{} = client, connect_peer_id, options \\ []) do
    url_path = "/connect-peers/#{AWS.Util.encode_uri(connect_peer_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about a core network Connect peer associations.
  """
  def get_connect_peer_associations(
        %Client{} = client,
        global_network_id,
        connect_peer_ids \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/connect-peer-associations"

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

    query_params =
      if !is_nil(connect_peer_ids) do
        [{"connectPeerIds", connect_peer_ids} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about one or more of your connections in a global network.
  """
  def get_connections(
        %Client{} = client,
        global_network_id,
        connection_ids \\ nil,
        device_id \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/connections"
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

    query_params =
      if !is_nil(device_id) do
        [{"deviceId", device_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(connection_ids) do
        [{"connectionIds", connection_ids} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about the LIVE policy for a core network.
  """
  def get_core_network(%Client{} = client, core_network_id, options \\ []) do
    url_path = "/core-networks/#{AWS.Util.encode_uri(core_network_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about a core network change event.
  """
  def get_core_network_change_events(
        %Client{} = client,
        core_network_id,
        policy_version_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/core-networks/#{AWS.Util.encode_uri(core_network_id)}/core-network-change-events/#{AWS.Util.encode_uri(policy_version_id)}"

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
  Returns a change set between the LIVE core network policy and a submitted
  policy.
  """
  def get_core_network_change_set(
        %Client{} = client,
        core_network_id,
        policy_version_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/core-networks/#{AWS.Util.encode_uri(core_network_id)}/core-network-change-sets/#{AWS.Util.encode_uri(policy_version_id)}"

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
  Returns details about a core network policy.

  You can get details about your current live policy or any previous policy
  version.
  """
  def get_core_network_policy(
        %Client{} = client,
        core_network_id,
        alias \\ nil,
        policy_version_id \\ nil,
        options \\ []
      ) do
    url_path = "/core-networks/#{AWS.Util.encode_uri(core_network_id)}/core-network-policy"
    headers = []
    query_params = []

    query_params =
      if !is_nil(policy_version_id) do
        [{"policyVersionId", policy_version_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(alias) do
        [{"alias", alias} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the association information for customer gateways that are associated with
  devices and links in your global network.
  """
  def get_customer_gateway_associations(
        %Client{} = client,
        global_network_id,
        customer_gateway_arns \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/customer-gateway-associations"

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

    query_params =
      if !is_nil(customer_gateway_arns) do
        [{"customerGatewayArns", customer_gateway_arns} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about one or more of your devices in a global network.
  """
  def get_devices(
        %Client{} = client,
        global_network_id,
        device_ids \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        site_id \\ nil,
        options \\ []
      ) do
    url_path = "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/devices"
    headers = []
    query_params = []

    query_params =
      if !is_nil(site_id) do
        [{"siteId", site_id} | query_params]
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

    query_params =
      if !is_nil(device_ids) do
        [{"deviceIds", device_ids} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the link associations for a device or a link.

  Either the device ID or the link ID
  must be specified.
  """
  def get_link_associations(
        %Client{} = client,
        global_network_id,
        device_id \\ nil,
        link_id \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/link-associations"
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

    query_params =
      if !is_nil(link_id) do
        [{"linkId", link_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(device_id) do
        [{"deviceId", device_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about one or more links in a specified global network.

  If you specify the site ID, you cannot specify the type or provider in the same
  request. You can specify the type and provider in the same request.
  """
  def get_links(
        %Client{} = client,
        global_network_id,
        link_ids \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        provider \\ nil,
        site_id \\ nil,
        type \\ nil,
        options \\ []
      ) do
    url_path = "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/links"
    headers = []
    query_params = []

    query_params =
      if !is_nil(type) do
        [{"type", type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(site_id) do
        [{"siteId", site_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(provider) do
        [{"provider", provider} | query_params]
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

    query_params =
      if !is_nil(link_ids) do
        [{"linkIds", link_ids} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the count of network resources, by resource type, for the specified global
  network.
  """
  def get_network_resource_counts(
        %Client{} = client,
        global_network_id,
        max_results \\ nil,
        next_token \\ nil,
        resource_type \\ nil,
        options \\ []
      ) do
    url_path = "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/network-resource-count"
    headers = []
    query_params = []

    query_params =
      if !is_nil(resource_type) do
        [{"resourceType", resource_type} | query_params]
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
  Gets the network resource relationships for the specified global network.
  """
  def get_network_resource_relationships(
        %Client{} = client,
        global_network_id,
        account_id \\ nil,
        aws_region \\ nil,
        core_network_id \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        registered_gateway_arn \\ nil,
        resource_arn \\ nil,
        resource_type \\ nil,
        options \\ []
      ) do
    url_path =
      "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/network-resource-relationships"

    headers = []
    query_params = []

    query_params =
      if !is_nil(resource_type) do
        [{"resourceType", resource_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(resource_arn) do
        [{"resourceArn", resource_arn} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(registered_gateway_arn) do
        [{"registeredGatewayArn", registered_gateway_arn} | query_params]
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

    query_params =
      if !is_nil(core_network_id) do
        [{"coreNetworkId", core_network_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(aws_region) do
        [{"awsRegion", aws_region} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(account_id) do
        [{"accountId", account_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes the network resources for the specified global network.

  The results include information from the corresponding Describe call for the
  resource, minus any sensitive information such as pre-shared keys.
  """
  def get_network_resources(
        %Client{} = client,
        global_network_id,
        account_id \\ nil,
        aws_region \\ nil,
        core_network_id \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        registered_gateway_arn \\ nil,
        resource_arn \\ nil,
        resource_type \\ nil,
        options \\ []
      ) do
    url_path = "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/network-resources"
    headers = []
    query_params = []

    query_params =
      if !is_nil(resource_type) do
        [{"resourceType", resource_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(resource_arn) do
        [{"resourceArn", resource_arn} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(registered_gateway_arn) do
        [{"registeredGatewayArn", registered_gateway_arn} | query_params]
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

    query_params =
      if !is_nil(core_network_id) do
        [{"coreNetworkId", core_network_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(aws_region) do
        [{"awsRegion", aws_region} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(account_id) do
        [{"accountId", account_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the network routes of the specified global network.
  """
  def get_network_routes(%Client{} = client, global_network_id, input, options \\ []) do
    url_path = "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/network-routes"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Gets the network telemetry of the specified global network.
  """
  def get_network_telemetry(
        %Client{} = client,
        global_network_id,
        account_id \\ nil,
        aws_region \\ nil,
        core_network_id \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        registered_gateway_arn \\ nil,
        resource_arn \\ nil,
        resource_type \\ nil,
        options \\ []
      ) do
    url_path = "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/network-telemetry"
    headers = []
    query_params = []

    query_params =
      if !is_nil(resource_type) do
        [{"resourceType", resource_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(resource_arn) do
        [{"resourceArn", resource_arn} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(registered_gateway_arn) do
        [{"registeredGatewayArn", registered_gateway_arn} | query_params]
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

    query_params =
      if !is_nil(core_network_id) do
        [{"coreNetworkId", core_network_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(aws_region) do
        [{"awsRegion", aws_region} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(account_id) do
        [{"accountId", account_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about a resource policy.
  """
  def get_resource_policy(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/resource-policy/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about the specified route analysis.
  """
  def get_route_analysis(%Client{} = client, global_network_id, route_analysis_id, options \\ []) do
    url_path =
      "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/route-analyses/#{AWS.Util.encode_uri(route_analysis_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about a site-to-site VPN attachment.
  """
  def get_site_to_site_vpn_attachment(%Client{} = client, attachment_id, options \\ []) do
    url_path = "/site-to-site-vpn-attachments/#{AWS.Util.encode_uri(attachment_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about one or more of your sites in a global network.
  """
  def get_sites(
        %Client{} = client,
        global_network_id,
        max_results \\ nil,
        next_token \\ nil,
        site_ids \\ nil,
        options \\ []
      ) do
    url_path = "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/sites"
    headers = []
    query_params = []

    query_params =
      if !is_nil(site_ids) do
        [{"siteIds", site_ids} | query_params]
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
  Gets information about one or more of your transit gateway Connect peer
  associations in a global network.
  """
  def get_transit_gateway_connect_peer_associations(
        %Client{} = client,
        global_network_id,
        max_results \\ nil,
        next_token \\ nil,
        transit_gateway_connect_peer_arns \\ nil,
        options \\ []
      ) do
    url_path =
      "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/transit-gateway-connect-peer-associations"

    headers = []
    query_params = []

    query_params =
      if !is_nil(transit_gateway_connect_peer_arns) do
        [{"transitGatewayConnectPeerArns", transit_gateway_connect_peer_arns} | query_params]
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
  Returns information about a transit gateway peer.
  """
  def get_transit_gateway_peering(%Client{} = client, peering_id, options \\ []) do
    url_path = "/transit-gateway-peerings/#{AWS.Util.encode_uri(peering_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about the transit gateway registrations in a specified
  global network.
  """
  def get_transit_gateway_registrations(
        %Client{} = client,
        global_network_id,
        max_results \\ nil,
        next_token \\ nil,
        transit_gateway_arns \\ nil,
        options \\ []
      ) do
    url_path =
      "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/transit-gateway-registrations"

    headers = []
    query_params = []

    query_params =
      if !is_nil(transit_gateway_arns) do
        [{"transitGatewayArns", transit_gateway_arns} | query_params]
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
  Returns information about a transit gateway route table attachment.
  """
  def get_transit_gateway_route_table_attachment(%Client{} = client, attachment_id, options \\ []) do
    url_path = "/transit-gateway-route-table-attachments/#{AWS.Util.encode_uri(attachment_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about a VPC attachment.
  """
  def get_vpc_attachment(%Client{} = client, attachment_id, options \\ []) do
    url_path = "/vpc-attachments/#{AWS.Util.encode_uri(attachment_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of core network attachments.
  """
  def list_attachments(
        %Client{} = client,
        attachment_type \\ nil,
        core_network_id \\ nil,
        edge_location \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        state \\ nil,
        options \\ []
      ) do
    url_path = "/attachments"
    headers = []
    query_params = []

    query_params =
      if !is_nil(state) do
        [{"state", state} | query_params]
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

    query_params =
      if !is_nil(edge_location) do
        [{"edgeLocation", edge_location} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(core_network_id) do
        [{"coreNetworkId", core_network_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(attachment_type) do
        [{"attachmentType", attachment_type} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of core network Connect peers.
  """
  def list_connect_peers(
        %Client{} = client,
        connect_attachment_id \\ nil,
        core_network_id \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/connect-peers"
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

    query_params =
      if !is_nil(core_network_id) do
        [{"coreNetworkId", core_network_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(connect_attachment_id) do
        [{"connectAttachmentId", connect_attachment_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of core network policy versions.
  """
  def list_core_network_policy_versions(
        %Client{} = client,
        core_network_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/core-networks/#{AWS.Util.encode_uri(core_network_id)}/core-network-policy-versions"

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
  Returns a list of owned and shared core networks.
  """
  def list_core_networks(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/core-networks"
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
  Gets the status of the Service Linked Role (SLR) deployment for the accounts in
  a given Amazon Web Services Organization.
  """
  def list_organization_service_access_status(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/organizations/service-access"
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
  Lists the peerings for a core network.
  """
  def list_peerings(
        %Client{} = client,
        core_network_id \\ nil,
        edge_location \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        peering_type \\ nil,
        state \\ nil,
        options \\ []
      ) do
    url_path = "/peerings"
    headers = []
    query_params = []

    query_params =
      if !is_nil(state) do
        [{"state", state} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(peering_type) do
        [{"peeringType", peering_type} | query_params]
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

    query_params =
      if !is_nil(edge_location) do
        [{"edgeLocation", edge_location} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(core_network_id) do
        [{"coreNetworkId", core_network_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the tags for a specified resource.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Creates a new, immutable version of a core network policy.

  A subsequent change set is created showing the differences between the LIVE
  policy and the submitted policy.
  """
  def put_core_network_policy(%Client{} = client, core_network_id, input, options \\ []) do
    url_path = "/core-networks/#{AWS.Util.encode_uri(core_network_id)}/core-network-policy"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates or updates a resource policy.
  """
  def put_resource_policy(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/resource-policy/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Registers a transit gateway in your global network.

  Not all Regions support transit
  gateways for global networks. For a list of the supported Regions, see [Region Availability](https://docs.aws.amazon.com/network-manager/latest/tgwnm/what-are-global-networks.html#nm-available-regions)
  in the *Amazon Web Services Transit Gateways for Global
  Networks User Guide*. The transit gateway can be in any of the supported
  Amazon Web Services Regions, but it must be owned by the same Amazon Web
  Services account that owns the global
  network. You cannot register a transit gateway in more than one global network.
  """
  def register_transit_gateway(%Client{} = client, global_network_id, input, options \\ []) do
    url_path =
      "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/transit-gateway-registrations"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Rejects a core network attachment request.
  """
  def reject_attachment(%Client{} = client, attachment_id, input, options \\ []) do
    url_path = "/attachments/#{AWS.Util.encode_uri(attachment_id)}/reject"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Restores a previous policy version as a new, immutable version of a core network
  policy.

  A subsequent change set is created showing the differences between the LIVE
  policy and restored policy.
  """
  def restore_core_network_policy_version(
        %Client{} = client,
        core_network_id,
        policy_version_id,
        input,
        options \\ []
      ) do
    url_path =
      "/core-networks/#{AWS.Util.encode_uri(core_network_id)}/core-network-policy-versions/#{AWS.Util.encode_uri(policy_version_id)}/restore"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Enables the Network Manager service for an Amazon Web Services Organization.

  This can only be called by a management account within the organization.
  """
  def start_organization_service_access_update(%Client{} = client, input, options \\ []) do
    url_path = "/organizations/service-access"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Starts analyzing the routing path between the specified source and destination.

  For more information,
  see [Route Analyzer](https://docs.aws.amazon.com/vpc/latest/tgw/route-analyzer.html).
  """
  def start_route_analysis(%Client{} = client, global_network_id, input, options \\ []) do
    url_path = "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/route-analyses"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Tags a specified resource.
  """
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Removes tags from a specified resource.
  """
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

    {query_params, input} =
      [
        {"TagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the information for an existing connection.

  To remove information for any of the parameters,
  specify an empty string.
  """
  def update_connection(
        %Client{} = client,
        connection_id,
        global_network_id,
        input,
        options \\ []
      ) do
    url_path =
      "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/connections/#{AWS.Util.encode_uri(connection_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the description of a core network.
  """
  def update_core_network(%Client{} = client, core_network_id, input, options \\ []) do
    url_path = "/core-networks/#{AWS.Util.encode_uri(core_network_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the details for an existing device.

  To remove information for any of the
  parameters, specify an empty string.
  """
  def update_device(%Client{} = client, device_id, global_network_id, input, options \\ []) do
    url_path =
      "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/devices/#{AWS.Util.encode_uri(device_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates an existing global network.

  To remove information for any of the parameters,
  specify an empty string.
  """
  def update_global_network(%Client{} = client, global_network_id, input, options \\ []) do
    url_path = "/global-networks/#{AWS.Util.encode_uri(global_network_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the details for an existing link.

  To remove information for any of the
  parameters, specify an empty string.
  """
  def update_link(%Client{} = client, global_network_id, link_id, input, options \\ []) do
    url_path =
      "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/links/#{AWS.Util.encode_uri(link_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the resource metadata for the specified global network.
  """
  def update_network_resource_metadata(
        %Client{} = client,
        global_network_id,
        resource_arn,
        input,
        options \\ []
      ) do
    url_path =
      "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/network-resources/#{AWS.Util.encode_uri(resource_arn)}/metadata"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the information for an existing site.

  To remove information for any of the
  parameters, specify an empty string.
  """
  def update_site(%Client{} = client, global_network_id, site_id, input, options \\ []) do
    url_path =
      "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/sites/#{AWS.Util.encode_uri(site_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a VPC attachment.
  """
  def update_vpc_attachment(%Client{} = client, attachment_id, input, options \\ []) do
    url_path = "/vpc-attachments/#{AWS.Util.encode_uri(attachment_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end
end
