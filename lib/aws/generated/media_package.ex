# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.MediaPackage do
  @moduledoc """
  AWS Elemental MediaPackage
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2017-10-12",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "mediapackage",
      global?: false,
      protocol: "rest-json",
      service_id: "MediaPackage",
      signature_version: "v4",
      signing_name: "mediapackage",
      target_prefix: nil
    }
  end

  @doc """
  Changes the Channel's properities to configure log subscription
  """
  def configure_logs(%Client{} = client, id, input, options \\ []) do
    url_path = "/channels/#{AWS.Util.encode_uri(id)}/configure_logs"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ConfigureLogs",
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
  Creates a new Channel.
  """
  def create_channel(%Client{} = client, input, options \\ []) do
    url_path = "/channels"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "CreateChannel",
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
  Creates a new HarvestJob record.
  """
  def create_harvest_job(%Client{} = client, input, options \\ []) do
    url_path = "/harvest_jobs"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "CreateHarvestJob",
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
  Creates a new OriginEndpoint record.
  """
  def create_origin_endpoint(%Client{} = client, input, options \\ []) do
    url_path = "/origin_endpoints"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "CreateOriginEndpoint",
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
  Deletes an existing Channel.
  """
  def delete_channel(%Client{} = client, id, input, options \\ []) do
    url_path = "/channels/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DeleteChannel",
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
  Deletes an existing OriginEndpoint.
  """
  def delete_origin_endpoint(%Client{} = client, id, input, options \\ []) do
    url_path = "/origin_endpoints/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DeleteOriginEndpoint",
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
  Gets details about a Channel.
  """
  def describe_channel(%Client{} = client, id, options \\ []) do
    url_path = "/channels/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DescribeChannel",
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
  Gets details about an existing HarvestJob.
  """
  def describe_harvest_job(%Client{} = client, id, options \\ []) do
    url_path = "/harvest_jobs/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DescribeHarvestJob",
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
  Gets details about an existing OriginEndpoint.
  """
  def describe_origin_endpoint(%Client{} = client, id, options \\ []) do
    url_path = "/origin_endpoints/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DescribeOriginEndpoint",
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
  Returns a collection of Channels.
  """
  def list_channels(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/channels"
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

    Request.request_rest(
      client,
      meta,
      "ListChannels",
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
  Returns a collection of HarvestJob records.
  """
  def list_harvest_jobs(
        %Client{} = client,
        include_channel_id \\ nil,
        include_status \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/harvest_jobs"
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
      if !is_nil(include_status) do
        [{"includeStatus", include_status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(include_channel_id) do
        [{"includeChannelId", include_channel_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListHarvestJobs",
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
  Returns a collection of OriginEndpoint records.
  """
  def list_origin_endpoints(
        %Client{} = client,
        channel_id \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/origin_endpoints"
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
      if !is_nil(channel_id) do
        [{"channelId", channel_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListOriginEndpoints",
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListTagsForResource",
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
  Changes the Channel's first IngestEndpoint's username and password.

  WARNING - This API is deprecated. Please use RotateIngestEndpointCredentials
  instead
  """
  def rotate_channel_credentials(%Client{} = client, id, input, options \\ []) do
    url_path = "/channels/#{AWS.Util.encode_uri(id)}/credentials"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "RotateChannelCredentials",
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
  Rotate the IngestEndpoint's username and password, as specified by the
  IngestEndpoint's id.
  """
  def rotate_ingest_endpoint_credentials(
        %Client{} = client,
        id,
        ingest_endpoint_id,
        input,
        options \\ []
      ) do
    url_path =
      "/channels/#{AWS.Util.encode_uri(id)}/ingest_endpoints/#{AWS.Util.encode_uri(ingest_endpoint_id)}/credentials"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "RotateIngestEndpointCredentials",
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "TagResource",
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

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
      "UntagResource",
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
  Updates an existing Channel.
  """
  def update_channel(%Client{} = client, id, input, options \\ []) do
    url_path = "/channels/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "UpdateChannel",
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
  Updates an existing OriginEndpoint.
  """
  def update_origin_endpoint(%Client{} = client, id, input, options \\ []) do
    url_path = "/origin_endpoints/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "UpdateOriginEndpoint",
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
