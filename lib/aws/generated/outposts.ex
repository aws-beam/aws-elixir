# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Outposts do
  @moduledoc """
  Amazon Web Services Outposts is a fully managed service that extends Amazon Web
  Services infrastructure, APIs, and tools to
  customer premises.

  By providing local access to Amazon Web Services managed infrastructure, Amazon
  Web Services Outposts enables
  customers to build and run applications on premises using the same programming
  interfaces as
  in Amazon Web Services Regions, while using local compute and storage resources
  for lower latency and local
  data processing needs.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      api_version: "2019-12-03",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "outposts",
      global?: false,
      protocol: "rest-json",
      service_id: "Outposts",
      signature_version: "v4",
      signing_name: "outposts",
      target_prefix: nil
    }
  end

  @doc """
  Cancels the specified order for an Outpost.
  """
  def cancel_order(%Client{} = client, order_id, input, options \\ []) do
    url_path = "/orders/#{AWS.Util.encode_uri(order_id)}/cancel"
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
  Creates an order for an Outpost.
  """
  def create_order(%Client{} = client, input, options \\ []) do
    url_path = "/orders"
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
  Creates an Outpost.

  You can specify either an Availability one or an AZ ID.
  """
  def create_outpost(%Client{} = client, input, options \\ []) do
    url_path = "/outposts"
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
  Creates a site for an Outpost.
  """
  def create_site(%Client{} = client, input, options \\ []) do
    url_path = "/sites"
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
  Deletes the specified Outpost.
  """
  def delete_outpost(%Client{} = client, outpost_id, input, options \\ []) do
    url_path = "/outposts/#{AWS.Util.encode_uri(outpost_id)}"
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
  Deletes the specified site.
  """
  def delete_site(%Client{} = client, site_id, input, options \\ []) do
    url_path = "/sites/#{AWS.Util.encode_uri(site_id)}"
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
  Gets information about the specified catalog item.
  """
  def get_catalog_item(%Client{} = client, catalog_item_id, options \\ []) do
    url_path = "/catalog/item/#{AWS.Util.encode_uri(catalog_item_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """


  Amazon Web Services uses this action to install Outpost servers.

  Gets information about the specified connection.

  Use CloudTrail to monitor this action or Amazon Web Services managed policy for
  Amazon Web Services Outposts to secure it. For
  more information, see [
  Amazon Web Services managed policies for Amazon Web Services
  Outposts](https://docs.aws.amazon.com/outposts/latest/userguide/security-iam-awsmanpol.html)
  and [
  Logging Amazon Web Services Outposts API calls with Amazon Web Services
  CloudTrail](https://docs.aws.amazon.com/outposts/latest/userguide/logging-using-cloudtrail.html)
  in the *Amazon Web Services Outposts User Guide*.
  """
  def get_connection(%Client{} = client, connection_id, options \\ []) do
    url_path = "/connections/#{AWS.Util.encode_uri(connection_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about the specified order.
  """
  def get_order(%Client{} = client, order_id, options \\ []) do
    url_path = "/orders/#{AWS.Util.encode_uri(order_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about the specified Outpost.
  """
  def get_outpost(%Client{} = client, outpost_id, options \\ []) do
    url_path = "/outposts/#{AWS.Util.encode_uri(outpost_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the instance types for the specified Outpost.
  """
  def get_outpost_instance_types(
        %Client{} = client,
        outpost_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/outposts/#{AWS.Util.encode_uri(outpost_id)}/instanceTypes"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about the specified Outpost site.
  """
  def get_site(%Client{} = client, site_id, options \\ []) do
    url_path = "/sites/#{AWS.Util.encode_uri(site_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the site address of the specified site.
  """
  def get_site_address(%Client{} = client, site_id, address_type, options \\ []) do
    url_path = "/sites/#{AWS.Util.encode_uri(site_id)}/address"
    headers = []
    query_params = []

    query_params =
      if !is_nil(address_type) do
        [{"AddressType", address_type} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the hardware assets for the specified Outpost.

  Use filters to return specific results. If you specify multiple filters, the
  results include only the resources that match
  all of the specified filters. For a filter where you can specify multiple
  values, the results include
  items that match any of the values that you specify for the filter.
  """
  def list_assets(
        %Client{} = client,
        outpost_identifier,
        host_id_filter \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        status_filter \\ nil,
        options \\ []
      ) do
    url_path = "/outposts/#{AWS.Util.encode_uri(outpost_identifier)}/assets"
    headers = []
    query_params = []

    query_params =
      if !is_nil(status_filter) do
        [{"StatusFilter", status_filter} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(host_id_filter) do
        [{"HostIdFilter", host_id_filter} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the items in the catalog.

  Use filters to return specific results. If you specify multiple filters, the
  results include only the resources that match
  all of the specified filters. For a filter where you can specify multiple
  values, the results include
  items that match any of the values that you specify for the filter.
  """
  def list_catalog_items(
        %Client{} = client,
        ec2_family_filter \\ nil,
        item_class_filter \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        supported_storage_filter \\ nil,
        options \\ []
      ) do
    url_path = "/catalog/items"
    headers = []
    query_params = []

    query_params =
      if !is_nil(supported_storage_filter) do
        [{"SupportedStorageFilter", supported_storage_filter} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(item_class_filter) do
        [{"ItemClassFilter", item_class_filter} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(ec2_family_filter) do
        [{"EC2FamilyFilter", ec2_family_filter} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the Outpost orders for your Amazon Web Services account.
  """
  def list_orders(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        outpost_identifier_filter \\ nil,
        options \\ []
      ) do
    url_path = "/list-orders"
    headers = []
    query_params = []

    query_params =
      if !is_nil(outpost_identifier_filter) do
        [{"OutpostIdentifierFilter", outpost_identifier_filter} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the Outposts for your Amazon Web Services account.

  Use filters to return specific results. If you specify multiple filters, the
  results include only the resources that match
  all of the specified filters. For a filter where you can specify multiple
  values, the results include
  items that match any of the values that you specify for the filter.
  """
  def list_outposts(
        %Client{} = client,
        availability_zone_filter \\ nil,
        availability_zone_id_filter \\ nil,
        life_cycle_status_filter \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/outposts"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(life_cycle_status_filter) do
        [{"LifeCycleStatusFilter", life_cycle_status_filter} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(availability_zone_id_filter) do
        [{"AvailabilityZoneIdFilter", availability_zone_id_filter} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(availability_zone_filter) do
        [{"AvailabilityZoneFilter", availability_zone_filter} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the Outpost sites for your Amazon Web Services account.

  Use filters to return specific
  results.

  Use filters to return specific results. If you specify multiple filters, the
  results include only the resources that match
  all of the specified filters. For a filter where you can specify multiple
  values, the results include
  items that match any of the values that you specify for the filter.
  """
  def list_sites(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        operating_address_city_filter \\ nil,
        operating_address_country_code_filter \\ nil,
        operating_address_state_or_region_filter \\ nil,
        options \\ []
      ) do
    url_path = "/sites"
    headers = []
    query_params = []

    query_params =
      if !is_nil(operating_address_state_or_region_filter) do
        [
          {"OperatingAddressStateOrRegionFilter", operating_address_state_or_region_filter}
          | query_params
        ]
      else
        query_params
      end

    query_params =
      if !is_nil(operating_address_country_code_filter) do
        [
          {"OperatingAddressCountryCodeFilter", operating_address_country_code_filter}
          | query_params
        ]
      else
        query_params
      end

    query_params =
      if !is_nil(operating_address_city_filter) do
        [{"OperatingAddressCityFilter", operating_address_city_filter} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the tags for the specified resource.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """


  Amazon Web Services uses this action to install Outpost servers.

  Starts the connection required for Outpost server installation.

  Use CloudTrail to monitor this action or Amazon Web Services managed policy for
  Amazon Web Services Outposts to secure it. For
  more information, see [
  Amazon Web Services managed policies for Amazon Web Services
  Outposts](https://docs.aws.amazon.com/outposts/latest/userguide/security-iam-awsmanpol.html)
  and [
  Logging Amazon Web Services Outposts API calls with Amazon Web Services
  CloudTrail](https://docs.aws.amazon.com/outposts/latest/userguide/logging-using-cloudtrail.html)
  in the *Amazon Web Services Outposts User Guide*.
  """
  def start_connection(%Client{} = client, input, options \\ []) do
    url_path = "/connections"
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
  Adds tags to the specified resource.
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
  Removes tags from the specified resource.
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
  Updates an Outpost.
  """
  def update_outpost(%Client{} = client, outpost_id, input, options \\ []) do
    url_path = "/outposts/#{AWS.Util.encode_uri(outpost_id)}"
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
  Updates the specified site.
  """
  def update_site(%Client{} = client, site_id, input, options \\ []) do
    url_path = "/sites/#{AWS.Util.encode_uri(site_id)}"
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
  Updates the address of the specified site.

  You can't update a site address if there is an order in progress. You must wait
  for the
  order to complete or cancel the order.

  You can update the operating address before you place an order at the site, or
  after all
  Outposts that belong to the site have been deactivated.
  """
  def update_site_address(%Client{} = client, site_id, input, options \\ []) do
    url_path = "/sites/#{AWS.Util.encode_uri(site_id)}/address"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Update the physical and logistical details for a rack at a site.

  For more information
  about hardware requirements for racks, see [Network readiness
  checklist](https://docs.aws.amazon.com/outposts/latest/userguide/outposts-requirements.html#checklist)
  in the Amazon Web Services Outposts User Guide.

  To update a rack at a site with an order of `IN_PROGRESS`, you must wait for
  the order to complete or cancel the order.
  """
  def update_site_rack_physical_properties(%Client{} = client, site_id, input, options \\ []) do
    url_path = "/sites/#{AWS.Util.encode_uri(site_id)}/rackPhysicalProperties"
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
