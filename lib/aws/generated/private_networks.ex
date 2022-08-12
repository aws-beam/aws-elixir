# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.PrivateNetworks do
  @moduledoc """
  Amazon Web Services Private 5G is a managed service that makes it easy to
  deploy, operate, and scale your own private mobile network at your on-premises
  location.

  Private 5G provides the pre-configured hardware and software for mobile
  networks, helps automate setup, and scales capacity on demand to support
  additional devices as needed.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2021-12-03",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "private-networks",
      global?: false,
      protocol: "rest-json",
      service_id: "PrivateNetworks",
      signature_version: "v4",
      signing_name: "private-networks",
      target_prefix: nil
    }
  end

  @doc """
  Acknowledges that the specified network order was received.
  """
  def acknowledge_order_receipt(%Client{} = client, input, options \\ []) do
    url_path = "/v1/orders/acknowledge"
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
      200
    )
  end

  @doc """
  Activates the specified device identifier.
  """
  def activate_device_identifier(%Client{} = client, input, options \\ []) do
    url_path = "/v1/device-identifiers/activate"
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
      200
    )
  end

  @doc """
  Activates the specified network site.
  """
  def activate_network_site(%Client{} = client, input, options \\ []) do
    url_path = "/v1/network-sites/activate"
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
      200
    )
  end

  @doc """
  Configures the specified network resource.

  Use this action to specify the geographic position of the hardware. You must
  provide Certified Professional Installer (CPI) credentials in the request so
  that we can obtain spectrum grants. For more information, see [Radio units](https://docs.aws.amazon.com/private-networks/latest/userguide/radio-units.html)
  in the *Amazon Web Services Private 5G User Guide*.
  """
  def configure_access_point(%Client{} = client, input, options \\ []) do
    url_path = "/v1/network-resources/configure"
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
      200
    )
  end

  @doc """
  Creates a network.
  """
  def create_network(%Client{} = client, input, options \\ []) do
    url_path = "/v1/networks"
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
      200
    )
  end

  @doc """
  Creates a network site.
  """
  def create_network_site(%Client{} = client, input, options \\ []) do
    url_path = "/v1/network-sites"
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
      200
    )
  end

  @doc """
  Deactivates the specified device identifier.
  """
  def deactivate_device_identifier(%Client{} = client, input, options \\ []) do
    url_path = "/v1/device-identifiers/deactivate"
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
      200
    )
  end

  @doc """
  Deletes the specified network.

  You must delete network sites before you delete the network. For more
  information, see
  [DeleteNetworkSite](https://docs.aws.amazon.com/private-networks/latest/APIReference/API_DeleteNetworkSite.html)
  in the *API Reference for Amazon Web Services Private 5G*.
  """
  def delete_network(%Client{} = client, network_arn, input, options \\ []) do
    url_path = "/v1/networks/#{AWS.Util.encode_uri(network_arn)}"
    headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
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
      200
    )
  end

  @doc """
  Deletes the specified network site.

  Return the hardware after you delete the network site. You are responsible for
  minimum charges. For more information, see [Hardware returns](https://docs.aws.amazon.com/private-networks/latest/userguide/hardware-maintenance.html)
  in the *Amazon Web Services Private 5G User Guide*.
  """
  def delete_network_site(%Client{} = client, network_site_arn, input, options \\ []) do
    url_path = "/v1/network-sites/#{AWS.Util.encode_uri(network_site_arn)}"
    headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
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
      200
    )
  end

  @doc """
  Gets the specified device identifier.
  """
  def get_device_identifier(%Client{} = client, device_identifier_arn, options \\ []) do
    url_path = "/v1/device-identifiers/#{AWS.Util.encode_uri(device_identifier_arn)}"
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
      200
    )
  end

  @doc """
  Gets the specified network.
  """
  def get_network(%Client{} = client, network_arn, options \\ []) do
    url_path = "/v1/networks/#{AWS.Util.encode_uri(network_arn)}"
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
      200
    )
  end

  @doc """
  Gets the specified network resource.
  """
  def get_network_resource(%Client{} = client, network_resource_arn, options \\ []) do
    url_path = "/v1/network-resources/#{AWS.Util.encode_uri(network_resource_arn)}"
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
      200
    )
  end

  @doc """
  Gets the specified network site.
  """
  def get_network_site(%Client{} = client, network_site_arn, options \\ []) do
    url_path = "/v1/network-sites/#{AWS.Util.encode_uri(network_site_arn)}"
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
      200
    )
  end

  @doc """
  Gets the specified order.
  """
  def get_order(%Client{} = client, order_arn, options \\ []) do
    url_path = "/v1/orders/#{AWS.Util.encode_uri(order_arn)}"
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
      200
    )
  end

  @doc """
  Lists device identifiers.

  Add filters to your request to return a more specific list of results. Use
  filters to match the Amazon Resource Name (ARN) of an order, the status of
  device identifiers, or the ARN of the traffic group.

  ` If you specify multiple filters, filters are joined with an OR, and the
  request `

  returns results that match all of the specified filters.
  """
  def list_device_identifiers(%Client{} = client, input, options \\ []) do
    url_path = "/v1/device-identifiers/list"
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
      200
    )
  end

  @doc """
  Lists network resources.

  Add filters to your request to return a more specific list of results. Use
  filters to match the Amazon Resource Name (ARN) of an order or the status of
  network resources.

  If you specify multiple filters, filters are joined with an OR, and the request
  returns results that match all of the specified filters.
  """
  def list_network_resources(%Client{} = client, input, options \\ []) do
    url_path = "/v1/network-resources"
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
      200
    )
  end

  @doc """
  Lists network sites.

  Add filters to your request to return a more specific list of results. Use
  filters to match the status of the network site.
  """
  def list_network_sites(%Client{} = client, input, options \\ []) do
    url_path = "/v1/network-sites/list"
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
      200
    )
  end

  @doc """
  Lists networks.

  Add filters to your request to return a more specific list of results. Use
  filters to match the status of the network.
  """
  def list_networks(%Client{} = client, input, options \\ []) do
    url_path = "/v1/networks/list"
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
      200
    )
  end

  @doc """
  Lists orders.

  Add filters to your request to return a more specific list of results. Use
  filters to match the Amazon Resource Name (ARN) of the network site or the
  status of the order.

  If you specify multiple filters, filters are joined with an OR, and the request
  returns results that match all of the specified filters.
  """
  def list_orders(%Client{} = client, input, options \\ []) do
    url_path = "/v1/orders/list"
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
      200
    )
  end

  @doc """
  Lists the tags for the specified resource.
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
      200
    )
  end

  @doc """
  Checks the health of the service.
  """
  def ping(%Client{} = client, options \\ []) do
    url_path = "/ping"
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
      200
    )
  end

  @doc """
  Adds tags to the specified resource.
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
      200
    )
  end

  @doc """
  Removes tags from the specified resource.
  """
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

    {query_params, input} =
      [
        {"tagKeys", "tagKeys"}
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
      200
    )
  end

  @doc """
  Updates the specified network site.
  """
  def update_network_site(%Client{} = client, input, options \\ []) do
    url_path = "/v1/network-sites/site"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the specified network site plan.
  """
  def update_network_site_plan(%Client{} = client, input, options \\ []) do
    url_path = "/v1/network-sites/plan"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end
end
