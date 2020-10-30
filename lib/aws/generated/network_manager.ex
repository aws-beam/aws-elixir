# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.NetworkManager do
  @moduledoc """
  Transit Gateway Network Manager (Network Manager) enables you to create a
  global network, in which you can monitor your AWS and on-premises networks
  that are built around transit gateways.
  """

  @doc """
  Associates a customer gateway with a device and optionally, with a link. If
  you specify a link, it must be associated with the specified device.

  You can only associate customer gateways that are connected to a VPN
  attachment on a transit gateway. The transit gateway must be registered in
  your global network. When you register a transit gateway, customer gateways
  that are connected to the transit gateway are automatically included in the
  global network. To list customer gateways that are connected to a transit
  gateway, use the
  [DescribeVpnConnections](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeVpnConnections.html)
  EC2 API and filter by `transit-gateway-id`.

  You cannot associate a customer gateway with more than one device and link.
  """
  def associate_customer_gateway(client, global_network_id, input, options \\ []) do
    path_ = "/global-networks/#{URI.encode(global_network_id)}/customer-gateway-associations"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Associates a link to a device. A device can be associated to multiple links
  and a link can be associated to multiple devices. The device and link must
  be in the same global network and the same site.
  """
  def associate_link(client, global_network_id, input, options \\ []) do
    path_ = "/global-networks/#{URI.encode(global_network_id)}/link-associations"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a new device in a global network. If you specify both a site ID and
  a location, the location of the site is used for visualization in the
  Network Manager console.
  """
  def create_device(client, global_network_id, input, options \\ []) do
    path_ = "/global-networks/#{URI.encode(global_network_id)}/devices"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a new, empty global network.
  """
  def create_global_network(client, input, options \\ []) do
    path_ = "/global-networks"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a new link for a specified site.
  """
  def create_link(client, global_network_id, input, options \\ []) do
    path_ = "/global-networks/#{URI.encode(global_network_id)}/links"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a new site in a global network.
  """
  def create_site(client, global_network_id, input, options \\ []) do
    path_ = "/global-networks/#{URI.encode(global_network_id)}/sites"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes an existing device. You must first disassociate the device from any
  links and customer gateways.
  """
  def delete_device(client, device_id, global_network_id, input, options \\ []) do
    path_ = "/global-networks/#{URI.encode(global_network_id)}/devices/#{URI.encode(device_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes an existing global network. You must first delete all global
  network objects (devices, links, and sites) and deregister all transit
  gateways.
  """
  def delete_global_network(client, global_network_id, input, options \\ []) do
    path_ = "/global-networks/#{URI.encode(global_network_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes an existing link. You must first disassociate the link from any
  devices and customer gateways.
  """
  def delete_link(client, global_network_id, link_id, input, options \\ []) do
    path_ = "/global-networks/#{URI.encode(global_network_id)}/links/#{URI.encode(link_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes an existing site. The site cannot be associated with any device or
  link.
  """
  def delete_site(client, global_network_id, site_id, input, options \\ []) do
    path_ = "/global-networks/#{URI.encode(global_network_id)}/sites/#{URI.encode(site_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deregisters a transit gateway from your global network. This action does
  not delete your transit gateway, or modify any of its attachments. This
  action removes any customer gateway associations.
  """
  def deregister_transit_gateway(client, global_network_id, transit_gateway_arn, input, options \\ []) do
    path_ = "/global-networks/#{URI.encode(global_network_id)}/transit-gateway-registrations/#{URI.encode(transit_gateway_arn)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Describes one or more global networks. By default, all global networks are
  described. To describe the objects in your global network, you must use the
  appropriate `Get*` action. For example, to list the transit gateways in
  your global network, use `GetTransitGatewayRegistrations`.
  """
  def describe_global_networks(client, global_network_ids \\ nil, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/global-networks"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    query_ = if !is_nil(global_network_ids) do
      [{"globalNetworkIds", global_network_ids} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Disassociates a customer gateway from a device and a link.
  """
  def disassociate_customer_gateway(client, customer_gateway_arn, global_network_id, input, options \\ []) do
    path_ = "/global-networks/#{URI.encode(global_network_id)}/customer-gateway-associations/#{URI.encode(customer_gateway_arn)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Disassociates an existing device from a link. You must first disassociate
  any customer gateways that are associated with the link.
  """
  def disassociate_link(client, global_network_id, input, options \\ []) do
    path_ = "/global-networks/#{URI.encode(global_network_id)}/link-associations"
    headers = []
    {query_, input} =
      [
        {"DeviceId", "deviceId"},
        {"LinkId", "linkId"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Gets the association information for customer gateways that are associated
  with devices and links in your global network.
  """
  def get_customer_gateway_associations(client, global_network_id, customer_gateway_arns \\ nil, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/global-networks/#{URI.encode(global_network_id)}/customer-gateway-associations"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    query_ = if !is_nil(customer_gateway_arns) do
      [{"customerGatewayArns", customer_gateway_arns} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Gets information about one or more of your devices in a global network.
  """
  def get_devices(client, global_network_id, device_ids \\ nil, max_results \\ nil, next_token \\ nil, site_id \\ nil, options \\ []) do
    path_ = "/global-networks/#{URI.encode(global_network_id)}/devices"
    headers = []
    query_ = []
    query_ = if !is_nil(site_id) do
      [{"siteId", site_id} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    query_ = if !is_nil(device_ids) do
      [{"deviceIds", device_ids} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Gets the link associations for a device or a link. Either the device ID or
  the link ID must be specified.
  """
  def get_link_associations(client, global_network_id, device_id \\ nil, link_id \\ nil, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/global-networks/#{URI.encode(global_network_id)}/link-associations"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    query_ = if !is_nil(link_id) do
      [{"linkId", link_id} | query_]
    else
      query_
    end
    query_ = if !is_nil(device_id) do
      [{"deviceId", device_id} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Gets information about one or more links in a specified global network.

  If you specify the site ID, you cannot specify the type or provider in the
  same request. You can specify the type and provider in the same request.
  """
  def get_links(client, global_network_id, link_ids \\ nil, max_results \\ nil, next_token \\ nil, provider \\ nil, site_id \\ nil, type \\ nil, options \\ []) do
    path_ = "/global-networks/#{URI.encode(global_network_id)}/links"
    headers = []
    query_ = []
    query_ = if !is_nil(type) do
      [{"type", type} | query_]
    else
      query_
    end
    query_ = if !is_nil(site_id) do
      [{"siteId", site_id} | query_]
    else
      query_
    end
    query_ = if !is_nil(provider) do
      [{"provider", provider} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    query_ = if !is_nil(link_ids) do
      [{"linkIds", link_ids} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Gets information about one or more of your sites in a global network.
  """
  def get_sites(client, global_network_id, max_results \\ nil, next_token \\ nil, site_ids \\ nil, options \\ []) do
    path_ = "/global-networks/#{URI.encode(global_network_id)}/sites"
    headers = []
    query_ = []
    query_ = if !is_nil(site_ids) do
      [{"siteIds", site_ids} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Gets information about the transit gateway registrations in a specified
  global network.
  """
  def get_transit_gateway_registrations(client, global_network_id, max_results \\ nil, next_token \\ nil, transit_gateway_arns \\ nil, options \\ []) do
    path_ = "/global-networks/#{URI.encode(global_network_id)}/transit-gateway-registrations"
    headers = []
    query_ = []
    query_ = if !is_nil(transit_gateway_arns) do
      [{"transitGatewayArns", transit_gateway_arns} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists the tags for a specified resource.
  """
  def list_tags_for_resource(client, resource_arn, options \\ []) do
    path_ = "/tags/#{URI.encode(resource_arn)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Registers a transit gateway in your global network. The transit gateway can
  be in any AWS Region, but it must be owned by the same AWS account that
  owns the global network. You cannot register a transit gateway in more than
  one global network.
  """
  def register_transit_gateway(client, global_network_id, input, options \\ []) do
    path_ = "/global-networks/#{URI.encode(global_network_id)}/transit-gateway-registrations"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Tags a specified resource.
  """
  def tag_resource(client, resource_arn, input, options \\ []) do
    path_ = "/tags/#{URI.encode(resource_arn)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Removes tags from a specified resource.
  """
  def untag_resource(client, resource_arn, input, options \\ []) do
    path_ = "/tags/#{URI.encode(resource_arn)}"
    headers = []
    {query_, input} =
      [
        {"TagKeys", "tagKeys"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates the details for an existing device. To remove information for any
  of the parameters, specify an empty string.
  """
  def update_device(client, device_id, global_network_id, input, options \\ []) do
    path_ = "/global-networks/#{URI.encode(global_network_id)}/devices/#{URI.encode(device_id)}"
    headers = []
    query_ = []
    request(client, :patch, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates an existing global network. To remove information for any of the
  parameters, specify an empty string.
  """
  def update_global_network(client, global_network_id, input, options \\ []) do
    path_ = "/global-networks/#{URI.encode(global_network_id)}"
    headers = []
    query_ = []
    request(client, :patch, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates the details for an existing link. To remove information for any of
  the parameters, specify an empty string.
  """
  def update_link(client, global_network_id, link_id, input, options \\ []) do
    path_ = "/global-networks/#{URI.encode(global_network_id)}/links/#{URI.encode(link_id)}"
    headers = []
    query_ = []
    request(client, :patch, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates the information for an existing site. To remove information for any
  of the parameters, specify an empty string.
  """
  def update_site(client, global_network_id, site_id, input, options \\ []) do
    path_ = "/global-networks/#{URI.encode(global_network_id)}/sites/#{URI.encode(site_id)}"
    headers = []
    query_ = []
    request(client, :patch, path_, query_, headers, input, options, nil)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, map() | nil, map()}
          | {:error, term()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "networkmanager"}
    host = build_host("networkmanager", client)
    url = host
    |> build_url(path, client)
    |> add_query(query, client)

    additional_headers = [{"Host", host}, {"Content-Type", "application/x-amz-json-1.1"}]
    headers = AWS.Request.add_headers(additional_headers, headers)

    payload = encode!(client, input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    perform_request(client, method, url, payload, headers, options, success_status_code)
  end

  defp perform_request(client, method, url, payload, headers, options, success_status_code) do
    case AWS.Client.request(client, method, url, payload, headers, options) do
      {:ok, %{status_code: status_code, body: body} = response}
      when is_nil(success_status_code) and status_code in [200, 202, 204]
      when status_code == success_status_code ->
        body = if(body != "", do: decode!(client, body))
        {:ok, body, response}

      {:ok, response} ->
        {:error, {:unexpected_response, response}}

      error = {:error, _reason} -> error
    end
  end


  defp build_host(_endpoint_prefix, %{region: "local", endpoint: endpoint}) do
    endpoint
  end
  defp build_host(_endpoint_prefix, %{region: "local"}) do
    "localhost"
  end
  defp build_host(endpoint_prefix, %{region: region, endpoint: endpoint}) do
    "#{endpoint_prefix}.#{region}.#{endpoint}"
  end

  defp build_url(host, path, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}#{path}"
  end

  defp add_query(url, [], _client) do
    url
  end
  defp add_query(url, query, client) do
    querystring = encode!(client, query, :query)
    "#{url}?#{querystring}"
  end

  defp encode!(client, payload, format \\ :json) do
    AWS.Client.encode!(client, payload, format)
  end

  defp decode!(client, payload) do
    AWS.Client.decode!(client, payload, :json)
  end
end
