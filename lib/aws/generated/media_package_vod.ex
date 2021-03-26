# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.MediaPackageVod do
  @moduledoc """
  AWS Elemental MediaPackage VOD
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2018-11-07",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "mediapackage-vod",
      global?: false,
      protocol: "rest-json",
      service_id: "MediaPackage Vod",
      signature_version: "v4",
      signing_name: "mediapackage-vod",
      target_prefix: nil
    }
  end

  @doc """
  Changes the packaging group's properities to configure log subscription
  """
  def configure_logs(%Client{} = client, id, input, options \\ []) do
    url_path = "/packaging_groups/#{URI.encode(id)}/configure_logs"
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
  Creates a new MediaPackage VOD Asset resource.
  """
  def create_asset(%Client{} = client, input, options \\ []) do
    url_path = "/assets"
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
  Creates a new MediaPackage VOD PackagingConfiguration resource.
  """
  def create_packaging_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/packaging_configurations"
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
  Creates a new MediaPackage VOD PackagingGroup resource.
  """
  def create_packaging_group(%Client{} = client, input, options \\ []) do
    url_path = "/packaging_groups"
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
  Deletes an existing MediaPackage VOD Asset resource.
  """
  def delete_asset(%Client{} = client, id, input, options \\ []) do
    url_path = "/assets/#{URI.encode(id)}"
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
      202
    )
  end

  @doc """
  Deletes a MediaPackage VOD PackagingConfiguration resource.
  """
  def delete_packaging_configuration(%Client{} = client, id, input, options \\ []) do
    url_path = "/packaging_configurations/#{URI.encode(id)}"
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
      202
    )
  end

  @doc """
  Deletes a MediaPackage VOD PackagingGroup resource.
  """
  def delete_packaging_group(%Client{} = client, id, input, options \\ []) do
    url_path = "/packaging_groups/#{URI.encode(id)}"
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
      202
    )
  end

  @doc """
  Returns a description of a MediaPackage VOD Asset resource.
  """
  def describe_asset(%Client{} = client, id, options \\ []) do
    url_path = "/assets/#{URI.encode(id)}"
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
  Returns a description of a MediaPackage VOD PackagingConfiguration resource.
  """
  def describe_packaging_configuration(%Client{} = client, id, options \\ []) do
    url_path = "/packaging_configurations/#{URI.encode(id)}"
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
  Returns a description of a MediaPackage VOD PackagingGroup resource.
  """
  def describe_packaging_group(%Client{} = client, id, options \\ []) do
    url_path = "/packaging_groups/#{URI.encode(id)}"
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
  Returns a collection of MediaPackage VOD Asset resources.
  """
  def list_assets(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        packaging_group_id \\ nil,
        options \\ []
      ) do
    url_path = "/assets"
    headers = []
    query_params = []

    query_params =
      if !is_nil(packaging_group_id) do
        [{"packagingGroupId", packaging_group_id} | query_params]
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
      200
    )
  end

  @doc """
  Returns a collection of MediaPackage VOD PackagingConfiguration resources.
  """
  def list_packaging_configurations(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        packaging_group_id \\ nil,
        options \\ []
      ) do
    url_path = "/packaging_configurations"
    headers = []
    query_params = []

    query_params =
      if !is_nil(packaging_group_id) do
        [{"packagingGroupId", packaging_group_id} | query_params]
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
      200
    )
  end

  @doc """
  Returns a collection of MediaPackage VOD PackagingGroup resources.
  """
  def list_packaging_groups(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/packaging_groups"
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
  Returns a list of the tags assigned to the specified resource.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{URI.encode(resource_arn)}"
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

  You can specify one or more tags to add.
  """
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{URI.encode(resource_arn)}"
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
      204
    )
  end

  @doc """
  Removes tags from the specified resource.

  You can specify one or more tags to remove.
  """
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{URI.encode(resource_arn)}"
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
      204
    )
  end

  @doc """
  Updates a specific packaging group.

  You can't change the id attribute or any other system-generated attributes.
  """
  def update_packaging_group(%Client{} = client, id, input, options \\ []) do
    url_path = "/packaging_groups/#{URI.encode(id)}"
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