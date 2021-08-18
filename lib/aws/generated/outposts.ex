# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Outposts do
  @moduledoc """
  AWS Outposts is a fully managed service that extends AWS infrastructure, APIs,
  and tools to customer premises.

  By providing local access to AWS managed infrastructure, AWS Outposts enables
  customers to build and run applications on premises using the same programming
  interfaces as in AWS Regions, while using local compute and storage resources
  for lower latency and local data processing needs.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
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
  Creates an Outpost.

  You can specify `AvailabilityZone` or `AvailabilityZoneId`.
  """
  def create_outpost(%Client{} = client, input, options \\ []) do
    url_path = "/outposts"
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
  Deletes the Outpost.
  """
  def delete_outpost(%Client{} = client, outpost_id, input, options \\ []) do
    url_path = "/outposts/#{AWS.Util.encode_uri(outpost_id)}"
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
  Deletes the site.
  """
  def delete_site(%Client{} = client, site_id, input, options \\ []) do
    url_path = "/sites/#{AWS.Util.encode_uri(site_id)}"
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
  Gets information about the specified Outpost.
  """
  def get_outpost(%Client{} = client, outpost_id, options \\ []) do
    url_path = "/outposts/#{AWS.Util.encode_uri(outpost_id)}"
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
  Lists the instance types for the specified Outpost.
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
  Create a list of the Outposts for your AWS account.

  Add filters to your request to return a more specific list of results. Use
  filters to match an Outpost lifecycle status, Availibility Zone (`us-east-1a`),
  and AZ ID (`use1-az1`).

  If you specify multiple filters, the filters are joined with an `AND`, and the
  request returns only results that match all of the specified filters.
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
  Lists the sites for the specified AWS account.
  """
  def list_sites(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/sites"
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
      nil
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
      nil
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
end
