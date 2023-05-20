# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.MediaPackageV2 do
  @moduledoc """
  This guide is intended for creating AWS Elemental MediaPackage resources in
  MediaPackage Version 2 (v2) starting from May 2023.

  To get started with MediaPackage v2, create your MediaPackage resources. There
  isn't an automated process to migrate your resources from MediaPackage v1 to
  MediaPackage v2.

  The names of the entities that you use to access this API, like URLs and ARNs,
  all have the versioning information added, like "v2", to distinguish from the
  prior version. If you used MediaPackage prior to this release, you can't use the
  MediaPackage v2 CLI or the MediaPackage v2 API to access any MediaPackage v1
  resources.

  If you created resources in MediaPackage v1, use video on demand (VOD)
  workflows, and aren't looking to migrate to MediaPackage v2 yet, see the
  [MediaPackage v1 Live API Reference](https://docs.aws.amazon.com/mediapackage/latest/apireference/what-is.html).

  This is the AWS Elemental MediaPackage v2 Live REST API Reference. It describes
  all the MediaPackage API operations for live content in detail, and provides
  sample requests, responses, and errors for the supported web services protocols.

  We assume that you have the IAM permissions that you need to use MediaPackage
  via the REST API. We also assume that you are familiar with the features and
  operations of MediaPackage, as described in the AWS Elemental MediaPackage User
  Guide.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2022-12-25",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "mediapackagev2",
      global?: false,
      protocol: "rest-json",
      service_id: "MediaPackageV2",
      signature_version: "v4",
      signing_name: "mediapackagev2",
      target_prefix: nil
    }
  end

  @doc """
  Create a channel to start receiving content streams.

  The channel represents the input to MediaPackage for incoming live content from
  an encoder such as AWS Elemental MediaLive. The channel receives content, and
  after packaging it, outputs it through an origin endpoint to downstream devices
  (such as video players or CDNs) that request the content. You can create only
  one channel with each request. We recommend that you spread out channels between
  channel groups, such as putting redundant channels in the same AWS Region in
  different channel groups.
  """
  def create_channel(%Client{} = client, channel_group_name, input, options \\ []) do
    url_path = "/channelGroup/#{AWS.Util.encode_uri(channel_group_name)}/channel"

    {headers, input} =
      [
        {"ClientToken", "x-amzn-client-token"}
      ]
      |> Request.build_params(input)

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
  Create a channel group to group your channels and origin endpoints.

  A channel group is the top-level resource that consists of channels and origin
  endpoints that are associated with it and that provides predictable URLs for
  stream delivery. All channels and origin endpoints within the channel group are
  guaranteed to share the DNS. You can create only one channel group with each
  request.
  """
  def create_channel_group(%Client{} = client, input, options \\ []) do
    url_path = "/channelGroup"

    {headers, input} =
      [
        {"ClientToken", "x-amzn-client-token"}
      ]
      |> Request.build_params(input)

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
  The endpoint is attached to a channel, and represents the output of the live
  content.

  You can associate multiple endpoints to a single channel. Each endpoint gives
  players and downstream CDNs (such as Amazon CloudFront) access to the content
  for playback. Content can't be served from a channel until it has an endpoint.
  You can create only one endpoint with each request.
  """
  def create_origin_endpoint(
        %Client{} = client,
        channel_group_name,
        channel_name,
        input,
        options \\ []
      ) do
    url_path =
      "/channelGroup/#{AWS.Util.encode_uri(channel_group_name)}/channel/#{AWS.Util.encode_uri(channel_name)}/originEndpoint"

    {headers, input} =
      [
        {"ClientToken", "x-amzn-client-token"}
      ]
      |> Request.build_params(input)

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
  Delete a channel to stop AWS Elemental MediaPackage from receiving further
  content.

  You must delete the channel's origin endpoints before you can delete the
  channel.
  """
  def delete_channel(%Client{} = client, channel_group_name, channel_name, input, options \\ []) do
    url_path =
      "/channelGroup/#{AWS.Util.encode_uri(channel_group_name)}/channel/#{AWS.Util.encode_uri(channel_name)}/"

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
  Delete a channel group.

  You must delete the channel group's channels and origin endpoints before you can
  delete the channel group. If you delete a channel group, you'll lose access to
  the egress domain and will have to create a new channel group to replace it.
  """
  def delete_channel_group(%Client{} = client, channel_group_name, input, options \\ []) do
    url_path = "/channelGroup/#{AWS.Util.encode_uri(channel_group_name)}"
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
  Delete a channel policy.
  """
  def delete_channel_policy(
        %Client{} = client,
        channel_group_name,
        channel_name,
        input,
        options \\ []
      ) do
    url_path =
      "/channelGroup/#{AWS.Util.encode_uri(channel_group_name)}/channel/#{AWS.Util.encode_uri(channel_name)}/policy"

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
  Origin endpoints can serve content until they're deleted.

  Delete the endpoint if it should no longer respond to playback requests. You
  must delete all endpoints from a channel before you can delete the channel.
  """
  def delete_origin_endpoint(
        %Client{} = client,
        channel_group_name,
        channel_name,
        origin_endpoint_name,
        input,
        options \\ []
      ) do
    url_path =
      "/channelGroup/#{AWS.Util.encode_uri(channel_group_name)}/channel/#{AWS.Util.encode_uri(channel_name)}/originEndpoint/#{AWS.Util.encode_uri(origin_endpoint_name)}"

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
  Delete an origin endpoint policy.
  """
  def delete_origin_endpoint_policy(
        %Client{} = client,
        channel_group_name,
        channel_name,
        origin_endpoint_name,
        input,
        options \\ []
      ) do
    url_path =
      "/channelGroup/#{AWS.Util.encode_uri(channel_group_name)}/channel/#{AWS.Util.encode_uri(channel_name)}/originEndpoint/#{AWS.Util.encode_uri(origin_endpoint_name)}/policy"

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
  Retrieves the specified channel that's configured in AWS Elemental MediaPackage,
  including the origin endpoints that are associated with it.
  """
  def get_channel(%Client{} = client, channel_group_name, channel_name, options \\ []) do
    url_path =
      "/channelGroup/#{AWS.Util.encode_uri(channel_group_name)}/channel/#{AWS.Util.encode_uri(channel_name)}/"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the specified channel group that's configured in AWS Elemental
  MediaPackage, including the channels and origin endpoints that are associated
  with it.
  """
  def get_channel_group(%Client{} = client, channel_group_name, options \\ []) do
    url_path = "/channelGroup/#{AWS.Util.encode_uri(channel_group_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the specified channel policy that's configured in AWS Elemental
  MediaPackage.

  With policies, you can specify who has access to AWS resources and what actions
  they can perform on those resources.
  """
  def get_channel_policy(%Client{} = client, channel_group_name, channel_name, options \\ []) do
    url_path =
      "/channelGroup/#{AWS.Util.encode_uri(channel_group_name)}/channel/#{AWS.Util.encode_uri(channel_name)}/policy"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the specified origin endpoint that's configured in AWS Elemental
  MediaPackage to obtain its playback URL and to view the packaging settings that
  it's currently using.
  """
  def get_origin_endpoint(
        %Client{} = client,
        channel_group_name,
        channel_name,
        origin_endpoint_name,
        options \\ []
      ) do
    url_path =
      "/channelGroup/#{AWS.Util.encode_uri(channel_group_name)}/channel/#{AWS.Util.encode_uri(channel_name)}/originEndpoint/#{AWS.Util.encode_uri(origin_endpoint_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the specified origin endpoint policy that's configured in AWS
  Elemental MediaPackage.
  """
  def get_origin_endpoint_policy(
        %Client{} = client,
        channel_group_name,
        channel_name,
        origin_endpoint_name,
        options \\ []
      ) do
    url_path =
      "/channelGroup/#{AWS.Util.encode_uri(channel_group_name)}/channel/#{AWS.Util.encode_uri(channel_name)}/originEndpoint/#{AWS.Util.encode_uri(origin_endpoint_name)}/policy"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves all channel groups that are configured in AWS Elemental MediaPackage,
  including the channels and origin endpoints that are associated with it.
  """
  def list_channel_groups(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/channelGroup"
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
  Retrieves all channels in a specific channel group that are configured in AWS
  Elemental MediaPackage, including the origin endpoints that are associated with
  it.
  """
  def list_channels(
        %Client{} = client,
        channel_group_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/channelGroup/#{AWS.Util.encode_uri(channel_group_name)}/channel"
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
  Retrieves all origin endpoints in a specific channel that are configured in AWS
  Elemental MediaPackage.
  """
  def list_origin_endpoints(
        %Client{} = client,
        channel_group_name,
        channel_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/channelGroup/#{AWS.Util.encode_uri(channel_group_name)}/channel/#{AWS.Util.encode_uri(channel_name)}/originEndpoint"

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
  Lists the tags assigned to a resource.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Attaches an IAM policy to the specified channel.

  With policies, you can specify who has access to AWS resources and what actions
  they can perform on those resources. You can attach only one policy with each
  request.
  """
  def put_channel_policy(
        %Client{} = client,
        channel_group_name,
        channel_name,
        input,
        options \\ []
      ) do
    url_path =
      "/channelGroup/#{AWS.Util.encode_uri(channel_group_name)}/channel/#{AWS.Util.encode_uri(channel_name)}/policy"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Attaches an IAM policy to the specified origin endpoint.

  You can attach only one policy with each request.
  """
  def put_origin_endpoint_policy(
        %Client{} = client,
        channel_group_name,
        channel_name,
        origin_endpoint_name,
        input,
        options \\ []
      ) do
    url_path =
      "/channelGroup/#{AWS.Util.encode_uri(channel_group_name)}/channel/#{AWS.Util.encode_uri(channel_name)}/originEndpoint/#{AWS.Util.encode_uri(origin_endpoint_name)}/policy"

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
  Assigns one of more tags (key-value pairs) to the specified MediaPackage
  resource.

  Tags can help you organize and categorize your resources. You can also use them
  to scope user permissions, by granting a user permission to access or change
  only resources with certain tag values. You can use the TagResource operation
  with a resource that already has tags. If you specify a new tag key for the
  resource, this tag is appended to the list of tags associated with the resource.
  If you specify a tag key that is already associated with the resource, the new
  tag value that you specify replaces the previous value for that tag.
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
      204
    )
  end

  @doc """
  Removes one or more tags from the specified resource.
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
      204
    )
  end

  @doc """
  Update the specified channel.

  You can edit if MediaPackage sends ingest or egress access logs to the
  CloudWatch log group, if content will be encrypted, the description on a
  channel, and your channel's policy settings. You can't edit the name of the
  channel or CloudFront distribution details.

  Any edits you make that impact the video output may not be reflected for a few
  minutes.
  """
  def update_channel(%Client{} = client, channel_group_name, channel_name, input, options \\ []) do
    url_path =
      "/channelGroup/#{AWS.Util.encode_uri(channel_group_name)}/channel/#{AWS.Util.encode_uri(channel_name)}/"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Update the specified channel group.

  You can edit the description on a channel group for easier identification later
  from the AWS Elemental MediaPackage console. You can't edit the name of the
  channel group.

  Any edits you make that impact the video output may not be reflected for a few
  minutes.
  """
  def update_channel_group(%Client{} = client, channel_group_name, input, options \\ []) do
    url_path = "/channelGroup/#{AWS.Util.encode_uri(channel_group_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Update the specified origin endpoint.

  Edit the packaging preferences on an endpoint to optimize the viewing
  experience. You can't edit the name of the endpoint.

  Any edits you make that impact the video output may not be reflected for a few
  minutes.
  """
  def update_origin_endpoint(
        %Client{} = client,
        channel_group_name,
        channel_name,
        origin_endpoint_name,
        input,
        options \\ []
      ) do
    url_path =
      "/channelGroup/#{AWS.Util.encode_uri(channel_group_name)}/channel/#{AWS.Util.encode_uri(channel_name)}/originEndpoint/#{AWS.Util.encode_uri(origin_endpoint_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end
end
