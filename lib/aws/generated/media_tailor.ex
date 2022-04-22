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
    %AWS.ServiceMetadata{
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
  Configures Amazon CloudWatch log settings for a playback configuration.
  """
  def configure_logs_for_playback_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/configureLogs/playbackConfiguration"
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
  Creates a channel.
  """
  def create_channel(%Client{} = client, channel_name, input, options \\ []) do
    url_path = "/channel/#{AWS.Util.encode_uri(channel_name)}"
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
  Creates name for a specific live source in a source location.
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
  Creates a new prefetch schedule for the specified playback configuration.
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
  Creates a program.
  """
  def create_program(%Client{} = client, channel_name, program_name, input, options \\ []) do
    url_path =
      "/channel/#{AWS.Util.encode_uri(channel_name)}/program/#{AWS.Util.encode_uri(program_name)}"

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
  Creates a source location on a specific channel.
  """
  def create_source_location(%Client{} = client, source_location_name, input, options \\ []) do
    url_path = "/sourceLocation/#{AWS.Util.encode_uri(source_location_name)}"
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
  Creates name for a specific VOD source in a source location.
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
  Deletes a channel.

  You must stop the channel before it can be deleted.
  """
  def delete_channel(%Client{} = client, channel_name, input, options \\ []) do
    url_path = "/channel/#{AWS.Util.encode_uri(channel_name)}"
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
      200
    )
  end

  @doc """
  Deletes a channel's IAM policy.
  """
  def delete_channel_policy(%Client{} = client, channel_name, input, options \\ []) do
    url_path = "/channel/#{AWS.Util.encode_uri(channel_name)}/policy"
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
      200
    )
  end

  @doc """
  Deletes a specific live source in a specific source location.
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
  Deletes the playback configuration for the specified name.
  """
  def delete_playback_configuration(%Client{} = client, name, input, options \\ []) do
    url_path = "/playbackConfiguration/#{AWS.Util.encode_uri(name)}"
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
      204
    )
  end

  @doc """
  Deletes a prefetch schedule for a specific playback configuration.

  If you call DeletePrefetchSchedule on an expired prefetch schedule, MediaTailor
  returns an HTTP 404 status code.
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
  Deletes a specific program on a specific channel.
  """
  def delete_program(%Client{} = client, channel_name, program_name, input, options \\ []) do
    url_path =
      "/channel/#{AWS.Util.encode_uri(channel_name)}/program/#{AWS.Util.encode_uri(program_name)}"

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
      200
    )
  end

  @doc """
  Deletes a source location on a specific channel.
  """
  def delete_source_location(%Client{} = client, source_location_name, input, options \\ []) do
    url_path = "/sourceLocation/#{AWS.Util.encode_uri(source_location_name)}"
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
      200
    )
  end

  @doc """
  Deletes a specific VOD source in a specific source location.
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
  Describes the properties of a specific channel.
  """
  def describe_channel(%Client{} = client, channel_name, options \\ []) do
    url_path = "/channel/#{AWS.Util.encode_uri(channel_name)}"
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
  Provides details about a specific live source in a specific source location.
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
  Retrieves the properties of the requested program.
  """
  def describe_program(%Client{} = client, channel_name, program_name, options \\ []) do
    url_path =
      "/channel/#{AWS.Util.encode_uri(channel_name)}/program/#{AWS.Util.encode_uri(program_name)}"

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
  Retrieves the properties of the requested source location.
  """
  def describe_source_location(%Client{} = client, source_location_name, options \\ []) do
    url_path = "/sourceLocation/#{AWS.Util.encode_uri(source_location_name)}"
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
  Provides details about a specific VOD source in a specific source location.
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
  Retrieves information about a channel's IAM policy.
  """
  def get_channel_policy(%Client{} = client, channel_name, options \\ []) do
    url_path = "/channel/#{AWS.Util.encode_uri(channel_name)}/policy"
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
  Returns the playback configuration for the specified name.
  """
  def get_playback_configuration(%Client{} = client, name, options \\ []) do
    url_path = "/playbackConfiguration/#{AWS.Util.encode_uri(name)}"
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
  Returns information about the prefetch schedule for a specific playback
  configuration.

  If you call GetPrefetchSchedule on an expired prefetch schedule, MediaTailor
  returns an HTTP 404 status code.
  """
  def get_prefetch_schedule(%Client{} = client, name, playback_configuration_name, options \\ []) do
    url_path =
      "/prefetchSchedule/#{AWS.Util.encode_uri(playback_configuration_name)}/#{AWS.Util.encode_uri(name)}"

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
  Returns a list of alerts for the given resource.
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
  Retrieves a list of channels that are associated with this account.
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
  lists all the live sources in a source location.
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
  Returns a list of the playback configurations defined in AWS Elemental
  MediaTailor.

  You can specify a maximum number of configurations to return at a time. The
  default maximum is 50. Results are returned in pagefuls. If MediaTailor has more
  configurations than the specified maximum, it provides parameters in the
  response that you can use to retrieve the next pageful.
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
  Creates a new prefetch schedule.
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
  Retrieves a list of source locations.
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
  Returns a list of the tags assigned to the specified playback configuration
  resource.
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
  Lists all the VOD sources in a source location.
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
  Creates an IAM policy for the channel.
  """
  def put_channel_policy(%Client{} = client, channel_name, input, options \\ []) do
    url_path = "/channel/#{AWS.Util.encode_uri(channel_name)}/policy"
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
  Adds a new playback configuration to AWS Elemental MediaTailor.
  """
  def put_playback_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/playbackConfiguration"
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
  Starts a specific channel.
  """
  def start_channel(%Client{} = client, channel_name, input, options \\ []) do
    url_path = "/channel/#{AWS.Util.encode_uri(channel_name)}/start"
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
  Stops a specific channel.
  """
  def stop_channel(%Client{} = client, channel_name, input, options \\ []) do
    url_path = "/channel/#{AWS.Util.encode_uri(channel_name)}/stop"
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
  Adds tags to the specified playback configuration resource.

  You can specify one or more tags to add.
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
      204
    )
  end

  @doc """
  Removes tags from the specified playback configuration resource.

  You can specify one or more tags to remove.
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
      204
    )
  end

  @doc """
  Updates an existing channel.
  """
  def update_channel(%Client{} = client, channel_name, input, options \\ []) do
    url_path = "/channel/#{AWS.Util.encode_uri(channel_name)}"
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
  Updates a specific live source in a specific source location.
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
  Updates a source location on a specific channel.
  """
  def update_source_location(%Client{} = client, source_location_name, input, options \\ []) do
    url_path = "/sourceLocation/#{AWS.Util.encode_uri(source_location_name)}"
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
  Updates a specific VOD source in a specific source location.
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
