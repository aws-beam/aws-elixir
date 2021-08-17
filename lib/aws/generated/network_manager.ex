# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.NetworkManager do
  @moduledoc """
  Transit Gateway Network Manager (Network Manager) enables you to create a global
  network, in which you can monitor your AWS and on-premises networks that are
  built around transit gateways.

  The Network Manager APIs are supported in the US West (Oregon) Region only. You
  must specify the `us-west-2` Region in all requests made to Network Manager.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2019-07-05",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "networkmanager",
      global?: false,
      protocol: "rest-json",
      service_id: "NetworkManager",
      signature_version: "v4",
      signing_name: "networkmanager",
      target_prefix: nil
    }
  end

  @doc """
  Associates a customer gateway with a device and optionally, with a link.

  If you specify a link, it must be associated with the specified device.

  You can only associate customer gateways that are connected to a VPN attachment
  on a transit gateway. The transit gateway must be registered in your global
  network. When you register a transit gateway, customer gateways that are
  connected to the transit gateway are automatically included in the global
  network. To list customer gateways that are connected to a transit gateway, use
  the
  [DescribeVpnConnections](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeVpnConnections.html)
  EC2 API and filter by `transit-gateway-id`.

  You cannot associate a customer gateway with more than one device and link.
  """
  def associate_customer_gateway(%Client{} = client, global_network_id, input, options \\ []) do
    url_path =
      "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/customer-gateway-associations"

    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
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

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Associates a transit gateway Connect peer with a device, and optionally, with a
  link.

  If you specify a link, it must be associated with the specified device.

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

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
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

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Creates a new device in a global network.

  If you specify both a site ID and a location, the location of the site is used
  for visualization in the Network Manager console.
  """
  def create_device(%Client{} = client, global_network_id, input, options \\ []) do
    url_path = "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/devices"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Creates a new, empty global network.
  """
  def create_global_network(%Client{} = client, input, options \\ []) do
    url_path = "/global-networks"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Creates a new link for a specified site.
  """
  def create_link(%Client{} = client, global_network_id, input, options \\ []) do
    url_path = "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/links"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Creates a new site in a global network.
  """
  def create_site(%Client{} = client, global_network_id, input, options \\ []) do
    url_path = "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/sites"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
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

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Deletes an existing device.

  You must first disassociate the device from any links and customer gateways.
  """
  def delete_device(%Client{} = client, device_id, global_network_id, input, options \\ []) do
    url_path =
      "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/devices/#{AWS.Util.encode_uri(device_id)}"

    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Deletes an existing global network.

  You must first delete all global network objects (devices, links, and sites) and
  deregister all transit gateways.
  """
  def delete_global_network(%Client{} = client, global_network_id, input, options \\ []) do
    url_path = "/global-networks/#{AWS.Util.encode_uri(global_network_id)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Deletes an existing link.

  You must first disassociate the link from any devices and customer gateways.
  """
  def delete_link(%Client{} = client, global_network_id, link_id, input, options \\ []) do
    url_path =
      "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/links/#{AWS.Util.encode_uri(link_id)}"

    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
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

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Deregisters a transit gateway from your global network.

  This action does not delete your transit gateway, or modify any of its
  attachments. This action removes any customer gateway associations.
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

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Describes one or more global networks.

  By default, all global networks are described. To describe the objects in your
  global network, you must use the appropriate `Get*` action. For example, to list
  the transit gateways in your global network, use
  `GetTransitGatewayRegistrations`.
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

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
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

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Disassociates an existing device from a link.

  You must first disassociate any customer gateways that are associated with the
  link.
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

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
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

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
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

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
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

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
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

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Gets the link associations for a device or a link.

  Either the device ID or the link ID must be specified.
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

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
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

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
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

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
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

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Gets information about the transit gateway registrations in a specified global
  network.
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

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Lists the tags for a specified resource.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Registers a transit gateway in your global network.

  The transit gateway can be in any AWS Region, but it must be owned by the same
  AWS account that owns the global network. You cannot register a transit gateway
  in more than one global network.
  """
  def register_transit_gateway(%Client{} = client, global_network_id, input, options \\ []) do
    url_path =
      "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/transit-gateway-registrations"

    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Tags a specified resource.
  """
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
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

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates the information for an existing connection.

  To remove information for any of the parameters, specify an empty string.
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

    Request.request_rest(
      client,
      metadata(),
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates the details for an existing device.

  To remove information for any of the parameters, specify an empty string.
  """
  def update_device(%Client{} = client, device_id, global_network_id, input, options \\ []) do
    url_path =
      "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/devices/#{AWS.Util.encode_uri(device_id)}"

    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates an existing global network.

  To remove information for any of the parameters, specify an empty string.
  """
  def update_global_network(%Client{} = client, global_network_id, input, options \\ []) do
    url_path = "/global-networks/#{AWS.Util.encode_uri(global_network_id)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates the details for an existing link.

  To remove information for any of the parameters, specify an empty string.
  """
  def update_link(%Client{} = client, global_network_id, link_id, input, options \\ []) do
    url_path =
      "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/links/#{AWS.Util.encode_uri(link_id)}"

    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates the information for an existing site.

  To remove information for any of the parameters, specify an empty string.
  """
  def update_site(%Client{} = client, global_network_id, site_id, input, options \\ []) do
    url_path =
      "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/sites/#{AWS.Util.encode_uri(site_id)}"

    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end
end
