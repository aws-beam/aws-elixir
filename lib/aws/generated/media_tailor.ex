# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.MediaTailor do
  @moduledoc """
  Use the AWS Elemental MediaTailor SDKs and CLI to configure scalable ad
  insertion and linear channels.

  With MediaTailor, you can assemble existing content into a linear stream and
  serve targeted ads to viewers while maintaining broadcast quality in
  over-the-top (OTT) video applications. For information about using the service,
  including detailed information about the settings covered in this guide, see the
  [AWS Elemental MediaTailor User Guide](https://docs.aws.amazon.com/mediatailor/latest/ug/).

  Through the SDKs and the CLI you manage AWS Elemental MediaTailor configurations
  and channels the same as you do through the console. For example, you specify ad
  insertion behavior and mapping information for the origin server and the ad
  decision server (ADS).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2018-04-23",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "api.mediatailor",
      global?: false,
      protocol: "rest-json",
      service_id: "MediaTailor",
      signature_version: "v4",
      signing_name: "mediatailor",
      target_prefix: nil
    }
  end

  @doc """
  Amazon CloudWatch log settings for a playback configuration.
  """
  def configure_logs_for_playback_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/configureLogs/playbackConfiguration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Creates a channel.

  For information about MediaTailor channels, see [Working with channels](https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-channels.html)
  in the *MediaTailor User Guide*.
  """
  def create_channel(%Client{} = client, channel_name, input, options \\ []) do
    url_path = "/channel/#{AWS.Util.encode_uri(channel_name)}"
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
  The live source configuration.
  """
  def create_live_source(
        %Client{} = client,
        live_source_name,
        source_location_name,
        input,
        options \\ []
      ) do
    url_path =
      "/sourceLocation/#{AWS.Util.encode_uri(source_location_name)}/liveSource/#{AWS.Util.encode_uri(live_source_name)}"

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
  Creates a prefetch schedule for a playback configuration.

  A prefetch schedule allows you to tell MediaTailor to fetch and prepare certain
  ads before an ad break happens. For more information about ad prefetching, see
  [Using ad prefetching](https://docs.aws.amazon.com/mediatailor/latest/ug/prefetching-ads.html)
  in the *MediaTailor User Guide*.
  """
  def create_prefetch_schedule(
        %Client{} = client,
        name,
        playback_configuration_name,
        input,
        options \\ []
      ) do
    url_path =
      "/prefetchSchedule/#{AWS.Util.encode_uri(playback_configuration_name)}/#{AWS.Util.encode_uri(name)}"

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
  Creates a program within a channel.

  For information about programs, see [Working with programs](https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-programs.html)
  in the *MediaTailor User Guide*.
  """
  def create_program(%Client{} = client, channel_name, program_name, input, options \\ []) do
    url_path =
      "/channel/#{AWS.Util.encode_uri(channel_name)}/program/#{AWS.Util.encode_uri(program_name)}"

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
  Creates a source location.

  A source location is a container for sources. For more information about source
  locations, see [Working with source locations](https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-source-locations.html)
  in the *MediaTailor User Guide*.
  """
  def create_source_location(%Client{} = client, source_location_name, input, options \\ []) do
    url_path = "/sourceLocation/#{AWS.Util.encode_uri(source_location_name)}"
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
  The VOD source configuration parameters.
  """
  def create_vod_source(
        %Client{} = client,
        source_location_name,
        vod_source_name,
        input,
        options \\ []
      ) do
    url_path =
      "/sourceLocation/#{AWS.Util.encode_uri(source_location_name)}/vodSource/#{AWS.Util.encode_uri(vod_source_name)}"

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
  Deletes a channel.

  For information about MediaTailor channels, see [Working with channels](https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-channels.html)
  in the *MediaTailor User Guide*.
  """
  def delete_channel(%Client{} = client, channel_name, input, options \\ []) do
    url_path = "/channel/#{AWS.Util.encode_uri(channel_name)}"
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
  The channel policy to delete.
  """
  def delete_channel_policy(%Client{} = client, channel_name, input, options \\ []) do
    url_path = "/channel/#{AWS.Util.encode_uri(channel_name)}/policy"
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
  The live source to delete.
  """
  def delete_live_source(
        %Client{} = client,
        live_source_name,
        source_location_name,
        input,
        options \\ []
      ) do
    url_path =
      "/sourceLocation/#{AWS.Util.encode_uri(source_location_name)}/liveSource/#{AWS.Util.encode_uri(live_source_name)}"

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
  Deletes a playback configuration.

  For information about MediaTailor configurations, see [Working with configurations in AWS Elemental
  MediaTailor](https://docs.aws.amazon.com/mediatailor/latest/ug/configurations.html).
  """
  def delete_playback_configuration(%Client{} = client, name, input, options \\ []) do
    url_path = "/playbackConfiguration/#{AWS.Util.encode_uri(name)}"
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
      204
    )
  end

  @doc """
  Deletes a prefetch schedule for a specific playback configuration.

  If you call `DeletePrefetchSchedule` on an expired prefetch schedule,
  MediaTailor returns an HTTP 404 status code. For more information about ad
  prefetching, see [Using ad prefetching](https://docs.aws.amazon.com/mediatailor/latest/ug/prefetching-ads.html)
  in the *MediaTailor User Guide*.
  """
  def delete_prefetch_schedule(
        %Client{} = client,
        name,
        playback_configuration_name,
        input,
        options \\ []
      ) do
    url_path =
      "/prefetchSchedule/#{AWS.Util.encode_uri(playback_configuration_name)}/#{AWS.Util.encode_uri(name)}"

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
      204
    )
  end

  @doc """
  Deletes a program within a channel.

  For information about programs, see [Working with programs](https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-programs.html)
  in the *MediaTailor User Guide*.
  """
  def delete_program(%Client{} = client, channel_name, program_name, input, options \\ []) do
    url_path =
      "/channel/#{AWS.Util.encode_uri(channel_name)}/program/#{AWS.Util.encode_uri(program_name)}"

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
  Deletes a source location.

  A source location is a container for sources. For more information about source
  locations, see [Working with source locations](https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-source-locations.html)
  in the *MediaTailor User Guide*.
  """
  def delete_source_location(%Client{} = client, source_location_name, input, options \\ []) do
    url_path = "/sourceLocation/#{AWS.Util.encode_uri(source_location_name)}"
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
  The video on demand (VOD) source to delete.
  """
  def delete_vod_source(
        %Client{} = client,
        source_location_name,
        vod_source_name,
        input,
        options \\ []
      ) do
    url_path =
      "/sourceLocation/#{AWS.Util.encode_uri(source_location_name)}/vodSource/#{AWS.Util.encode_uri(vod_source_name)}"

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
  Describes a channel.

  For information about MediaTailor channels, see [Working with channels](https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-channels.html)
  in the *MediaTailor User Guide*.
  """
  def describe_channel(%Client{} = client, channel_name, options \\ []) do
    url_path = "/channel/#{AWS.Util.encode_uri(channel_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  The live source to describe.
  """
  def describe_live_source(
        %Client{} = client,
        live_source_name,
        source_location_name,
        options \\ []
      ) do
    url_path =
      "/sourceLocation/#{AWS.Util.encode_uri(source_location_name)}/liveSource/#{AWS.Util.encode_uri(live_source_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes a program within a channel.

  For information about programs, see [Working with programs](https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-programs.html)
  in the *MediaTailor User Guide*.
  """
  def describe_program(%Client{} = client, channel_name, program_name, options \\ []) do
    url_path =
      "/channel/#{AWS.Util.encode_uri(channel_name)}/program/#{AWS.Util.encode_uri(program_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes a source location.

  A source location is a container for sources. For more information about source
  locations, see [Working with source locations](https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-source-locations.html)
  in the *MediaTailor User Guide*.
  """
  def describe_source_location(%Client{} = client, source_location_name, options \\ []) do
    url_path = "/sourceLocation/#{AWS.Util.encode_uri(source_location_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Provides details about a specific video on demand (VOD) source in a specific
  source location.
  """
  def describe_vod_source(
        %Client{} = client,
        source_location_name,
        vod_source_name,
        options \\ []
      ) do
    url_path =
      "/sourceLocation/#{AWS.Util.encode_uri(source_location_name)}/vodSource/#{AWS.Util.encode_uri(vod_source_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the channel's IAM policy.

  IAM policies are used to control access to your channel.
  """
  def get_channel_policy(%Client{} = client, channel_name, options \\ []) do
    url_path = "/channel/#{AWS.Util.encode_uri(channel_name)}/policy"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about your channel's schedule.
  """
  def get_channel_schedule(
        %Client{} = client,
        channel_name,
        duration_minutes \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/channel/#{AWS.Util.encode_uri(channel_name)}/schedule"
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
      if !is_nil(duration_minutes) do
        [{"durationMinutes", duration_minutes} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a playback configuration.

  For information about MediaTailor configurations, see [Working with configurations in AWS Elemental
  MediaTailor](https://docs.aws.amazon.com/mediatailor/latest/ug/configurations.html).
  """
  def get_playback_configuration(%Client{} = client, name, options \\ []) do
    url_path = "/playbackConfiguration/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a prefetch schedule for a playback configuration.

  A prefetch schedule allows you to tell MediaTailor to fetch and prepare certain
  ads before an ad break happens. For more information about ad prefetching, see
  [Using ad prefetching](https://docs.aws.amazon.com/mediatailor/latest/ug/prefetching-ads.html)
  in the *MediaTailor User Guide*.
  """
  def get_prefetch_schedule(%Client{} = client, name, playback_configuration_name, options \\ []) do
    url_path =
      "/prefetchSchedule/#{AWS.Util.encode_uri(playback_configuration_name)}/#{AWS.Util.encode_uri(name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the alerts that are associated with a MediaTailor channel assembly
  resource.
  """
  def list_alerts(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        resource_arn,
        options \\ []
      ) do
    url_path = "/alerts"
    headers = []
    query_params = []

    query_params =
      if !is_nil(resource_arn) do
        [{"resourceArn", resource_arn} | query_params]
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
  Retrieves information about the channels that are associated with the current
  AWS account.
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the live sources contained in a source location.

  A source represents a piece of content.
  """
  def list_live_sources(
        %Client{} = client,
        source_location_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/sourceLocation/#{AWS.Util.encode_uri(source_location_name)}/liveSources"
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
  Retrieves existing playback configurations.

  For information about MediaTailor configurations, see [Working with Configurations in AWS Elemental
  MediaTailor](https://docs.aws.amazon.com/mediatailor/latest/ug/configurations.html).
  """
  def list_playback_configurations(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/playbackConfigurations"
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
  Lists the prefetch schedules for a playback configuration.
  """
  def list_prefetch_schedules(
        %Client{} = client,
        playback_configuration_name,
        input,
        options \\ []
      ) do
    url_path = "/prefetchSchedule/#{AWS.Util.encode_uri(playback_configuration_name)}"
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
  Lists the source locations for a channel.

  A source location defines the host server URL, and contains a list of sources.
  """
  def list_source_locations(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/sourceLocations"
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
  A list of tags that are associated with this resource.

  Tags are key-value pairs that you can associate with Amazon resources to help
  with organization, access control, and cost tracking. For more information, see
  [Tagging AWS Elemental MediaTailor Resources](https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html).
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the VOD sources contained in a source location.

  A source represents a piece of content.
  """
  def list_vod_sources(
        %Client{} = client,
        source_location_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/sourceLocation/#{AWS.Util.encode_uri(source_location_name)}/vodSources"
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
  Creates an IAM policy for the channel.

  IAM policies are used to control access to your channel.
  """
  def put_channel_policy(%Client{} = client, channel_name, input, options \\ []) do
    url_path = "/channel/#{AWS.Util.encode_uri(channel_name)}/policy"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Creates a playback configuration.

  For information about MediaTailor configurations, see [Working with configurations in AWS Elemental
  MediaTailor](https://docs.aws.amazon.com/mediatailor/latest/ug/configurations.html).
  """
  def put_playback_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/playbackConfiguration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Starts a channel.

  For information about MediaTailor channels, see [Working with channels](https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-channels.html)
  in the *MediaTailor User Guide*.
  """
  def start_channel(%Client{} = client, channel_name, input, options \\ []) do
    url_path = "/channel/#{AWS.Util.encode_uri(channel_name)}/start"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Stops a channel.

  For information about MediaTailor channels, see [Working with channels](https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-channels.html)
  in the *MediaTailor User Guide*.
  """
  def stop_channel(%Client{} = client, channel_name, input, options \\ []) do
    url_path = "/channel/#{AWS.Util.encode_uri(channel_name)}/stop"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  The resource to tag.

  Tags are key-value pairs that you can associate with Amazon resources to help
  with organization, access control, and cost tracking. For more information, see
  [Tagging AWS Elemental MediaTailor Resources](https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html).
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
  The resource to untag.
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
  Updates a channel.

  For information about MediaTailor channels, see [Working with channels](https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-channels.html)
  in the *MediaTailor User Guide*.
  """
  def update_channel(%Client{} = client, channel_name, input, options \\ []) do
    url_path = "/channel/#{AWS.Util.encode_uri(channel_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates a live source's configuration.
  """
  def update_live_source(
        %Client{} = client,
        live_source_name,
        source_location_name,
        input,
        options \\ []
      ) do
    url_path =
      "/sourceLocation/#{AWS.Util.encode_uri(source_location_name)}/liveSource/#{AWS.Util.encode_uri(live_source_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates a source location.

  A source location is a container for sources. For more information about source
  locations, see [Working with source locations](https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-source-locations.html)
  in the *MediaTailor User Guide*.
  """
  def update_source_location(%Client{} = client, source_location_name, input, options \\ []) do
    url_path = "/sourceLocation/#{AWS.Util.encode_uri(source_location_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates a VOD source's configuration.
  """
  def update_vod_source(
        %Client{} = client,
        source_location_name,
        vod_source_name,
        input,
        options \\ []
      ) do
    url_path =
      "/sourceLocation/#{AWS.Util.encode_uri(source_location_name)}/vodSource/#{AWS.Util.encode_uri(vod_source_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end
end
