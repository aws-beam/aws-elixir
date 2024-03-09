# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.MediaLive do
  @moduledoc """
  API for AWS Elemental MediaLive
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      api_version: "2017-10-14",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "medialive",
      global?: false,
      protocol: "rest-json",
      service_id: "MediaLive",
      signature_version: "v4",
      signing_name: "medialive",
      target_prefix: nil
    }
  end

  @doc """
  Accept an incoming input device transfer.

  The ownership of the device will transfer to your AWS account.
  """
  def accept_input_device_transfer(%Client{} = client, input_device_id, input, options \\ []) do
    url_path = "/prod/inputDevices/#{AWS.Util.encode_uri(input_device_id)}/accept"
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
  Starts delete of resources.
  """
  def batch_delete(%Client{} = client, input, options \\ []) do
    url_path = "/prod/batch/delete"
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
  Starts existing resources
  """
  def batch_start(%Client{} = client, input, options \\ []) do
    url_path = "/prod/batch/start"
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
  Stops running resources
  """
  def batch_stop(%Client{} = client, input, options \\ []) do
    url_path = "/prod/batch/stop"
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
  Update a channel schedule
  """
  def batch_update_schedule(%Client{} = client, channel_id, input, options \\ []) do
    url_path = "/prod/channels/#{AWS.Util.encode_uri(channel_id)}/schedule"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Cancel an input device transfer that you have requested.
  """
  def cancel_input_device_transfer(%Client{} = client, input_device_id, input, options \\ []) do
    url_path = "/prod/inputDevices/#{AWS.Util.encode_uri(input_device_id)}/cancel"
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
  Send a request to claim an AWS Elemental device that you have purchased from a
  third-party vendor.

  After the request succeeds, you will own the device.
  """
  def claim_device(%Client{} = client, input, options \\ []) do
    url_path = "/prod/claimDevice"
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
  Creates a new channel
  """
  def create_channel(%Client{} = client, input, options \\ []) do
    url_path = "/prod/channels"
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
      201
    )
  end

  @doc """
  Create an input
  """
  def create_input(%Client{} = client, input, options \\ []) do
    url_path = "/prod/inputs"
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
      201
    )
  end

  @doc """
  Creates a Input Security Group
  """
  def create_input_security_group(%Client{} = client, input, options \\ []) do
    url_path = "/prod/inputSecurityGroups"
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
  Create a new multiplex.
  """
  def create_multiplex(%Client{} = client, input, options \\ []) do
    url_path = "/prod/multiplexes"
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
      201
    )
  end

  @doc """
  Create a new program in the multiplex.
  """
  def create_multiplex_program(%Client{} = client, multiplex_id, input, options \\ []) do
    url_path = "/prod/multiplexes/#{AWS.Util.encode_uri(multiplex_id)}/programs"
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
      201
    )
  end

  @doc """
  Create a partner input
  """
  def create_partner_input(%Client{} = client, input_id, input, options \\ []) do
    url_path = "/prod/inputs/#{AWS.Util.encode_uri(input_id)}/partners"
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
      201
    )
  end

  @doc """
  Create tags for a resource
  """
  def create_tags(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/prod/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
  Starts deletion of channel.

  The associated outputs are also deleted.
  """
  def delete_channel(%Client{} = client, channel_id, input, options \\ []) do
    url_path = "/prod/channels/#{AWS.Util.encode_uri(channel_id)}"
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
  Deletes the input end point
  """
  def delete_input(%Client{} = client, input_id, input, options \\ []) do
    url_path = "/prod/inputs/#{AWS.Util.encode_uri(input_id)}"
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
  Deletes an Input Security Group
  """
  def delete_input_security_group(
        %Client{} = client,
        input_security_group_id,
        input,
        options \\ []
      ) do
    url_path = "/prod/inputSecurityGroups/#{AWS.Util.encode_uri(input_security_group_id)}"
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
  Delete a multiplex.

  The multiplex must be idle.
  """
  def delete_multiplex(%Client{} = client, multiplex_id, input, options \\ []) do
    url_path = "/prod/multiplexes/#{AWS.Util.encode_uri(multiplex_id)}"
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
      202
    )
  end

  @doc """
  Delete a program from a multiplex.
  """
  def delete_multiplex_program(
        %Client{} = client,
        multiplex_id,
        program_name,
        input,
        options \\ []
      ) do
    url_path =
      "/prod/multiplexes/#{AWS.Util.encode_uri(multiplex_id)}/programs/#{AWS.Util.encode_uri(program_name)}"

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
  Delete an expired reservation.
  """
  def delete_reservation(%Client{} = client, reservation_id, input, options \\ []) do
    url_path = "/prod/reservations/#{AWS.Util.encode_uri(reservation_id)}"
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
  Delete all schedule actions on a channel.
  """
  def delete_schedule(%Client{} = client, channel_id, input, options \\ []) do
    url_path = "/prod/channels/#{AWS.Util.encode_uri(channel_id)}/schedule"
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
  Removes tags for a resource
  """
  def delete_tags(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/prod/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
  Describe account configuration
  """
  def describe_account_configuration(%Client{} = client, options \\ []) do
    url_path = "/prod/accountConfiguration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets details about a channel
  """
  def describe_channel(%Client{} = client, channel_id, options \\ []) do
    url_path = "/prod/channels/#{AWS.Util.encode_uri(channel_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Produces details about an input
  """
  def describe_input(%Client{} = client, input_id, options \\ []) do
    url_path = "/prod/inputs/#{AWS.Util.encode_uri(input_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the details for the input device
  """
  def describe_input_device(%Client{} = client, input_device_id, options \\ []) do
    url_path = "/prod/inputDevices/#{AWS.Util.encode_uri(input_device_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get the latest thumbnail data for the input device.
  """
  def describe_input_device_thumbnail(%Client{} = client, input_device_id, accept, options \\ []) do
    url_path = "/prod/inputDevices/#{AWS.Util.encode_uri(input_device_id)}/thumbnailData"
    headers = []

    headers =
      if !is_nil(accept) do
        [{"accept", accept} | headers]
      else
        headers
      end

    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"Content-Length", "ContentLength"},
          {"Content-Type", "ContentType"},
          {"ETag", "ETag"},
          {"Last-Modified", "LastModified"}
        ]
      )

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Produces a summary of an Input Security Group
  """
  def describe_input_security_group(%Client{} = client, input_security_group_id, options \\ []) do
    url_path = "/prod/inputSecurityGroups/#{AWS.Util.encode_uri(input_security_group_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets details about a multiplex.
  """
  def describe_multiplex(%Client{} = client, multiplex_id, options \\ []) do
    url_path = "/prod/multiplexes/#{AWS.Util.encode_uri(multiplex_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get the details for a program in a multiplex.
  """
  def describe_multiplex_program(%Client{} = client, multiplex_id, program_name, options \\ []) do
    url_path =
      "/prod/multiplexes/#{AWS.Util.encode_uri(multiplex_id)}/programs/#{AWS.Util.encode_uri(program_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get details for an offering.
  """
  def describe_offering(%Client{} = client, offering_id, options \\ []) do
    url_path = "/prod/offerings/#{AWS.Util.encode_uri(offering_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get details for a reservation.
  """
  def describe_reservation(%Client{} = client, reservation_id, options \\ []) do
    url_path = "/prod/reservations/#{AWS.Util.encode_uri(reservation_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get a channel schedule
  """
  def describe_schedule(
        %Client{} = client,
        channel_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/prod/channels/#{AWS.Util.encode_uri(channel_id)}/schedule"
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
  Describe the latest thumbnails data.
  """
  def describe_thumbnails(
        %Client{} = client,
        channel_id,
        pipeline_id,
        thumbnail_type,
        options \\ []
      ) do
    url_path = "/prod/channels/#{AWS.Util.encode_uri(channel_id)}/thumbnails"
    headers = []
    query_params = []

    query_params =
      if !is_nil(thumbnail_type) do
        [{"thumbnailType", thumbnail_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(pipeline_id) do
        [{"pipelineId", pipeline_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Produces list of channels that have been created
  """
  def list_channels(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/prod/channels"
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
  List input devices that are currently being transferred.

  List input devices that you are transferring from your AWS account or input
  devices that another AWS account is transferring to you.
  """
  def list_input_device_transfers(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        transfer_type,
        options \\ []
      ) do
    url_path = "/prod/inputDeviceTransfers"
    headers = []
    query_params = []

    query_params =
      if !is_nil(transfer_type) do
        [{"transferType", transfer_type} | query_params]
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
  List input devices
  """
  def list_input_devices(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/prod/inputDevices"
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
  Produces a list of Input Security Groups for an account
  """
  def list_input_security_groups(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/prod/inputSecurityGroups"
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
  Produces list of inputs that have been created
  """
  def list_inputs(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/prod/inputs"
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
  List the programs that currently exist for a specific multiplex.
  """
  def list_multiplex_programs(
        %Client{} = client,
        multiplex_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/prod/multiplexes/#{AWS.Util.encode_uri(multiplex_id)}/programs"
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
  Retrieve a list of the existing multiplexes.
  """
  def list_multiplexes(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/prod/multiplexes"
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
  List offerings available for purchase.
  """
  def list_offerings(
        %Client{} = client,
        channel_class \\ nil,
        channel_configuration \\ nil,
        codec \\ nil,
        duration \\ nil,
        max_results \\ nil,
        maximum_bitrate \\ nil,
        maximum_framerate \\ nil,
        next_token \\ nil,
        resolution \\ nil,
        resource_type \\ nil,
        special_feature \\ nil,
        video_quality \\ nil,
        options \\ []
      ) do
    url_path = "/prod/offerings"
    headers = []
    query_params = []

    query_params =
      if !is_nil(video_quality) do
        [{"videoQuality", video_quality} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(special_feature) do
        [{"specialFeature", special_feature} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(resource_type) do
        [{"resourceType", resource_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(resolution) do
        [{"resolution", resolution} | query_params]
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
      if !is_nil(maximum_framerate) do
        [{"maximumFramerate", maximum_framerate} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(maximum_bitrate) do
        [{"maximumBitrate", maximum_bitrate} | query_params]
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
      if !is_nil(duration) do
        [{"duration", duration} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(codec) do
        [{"codec", codec} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(channel_configuration) do
        [{"channelConfiguration", channel_configuration} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(channel_class) do
        [{"channelClass", channel_class} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List purchased reservations.
  """
  def list_reservations(
        %Client{} = client,
        channel_class \\ nil,
        codec \\ nil,
        max_results \\ nil,
        maximum_bitrate \\ nil,
        maximum_framerate \\ nil,
        next_token \\ nil,
        resolution \\ nil,
        resource_type \\ nil,
        special_feature \\ nil,
        video_quality \\ nil,
        options \\ []
      ) do
    url_path = "/prod/reservations"
    headers = []
    query_params = []

    query_params =
      if !is_nil(video_quality) do
        [{"videoQuality", video_quality} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(special_feature) do
        [{"specialFeature", special_feature} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(resource_type) do
        [{"resourceType", resource_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(resolution) do
        [{"resolution", resolution} | query_params]
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
      if !is_nil(maximum_framerate) do
        [{"maximumFramerate", maximum_framerate} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(maximum_bitrate) do
        [{"maximumBitrate", maximum_bitrate} | query_params]
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
      if !is_nil(codec) do
        [{"codec", codec} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(channel_class) do
        [{"channelClass", channel_class} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Produces list of tags that have been created for a resource
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/prod/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Purchase an offering and create a reservation.
  """
  def purchase_offering(%Client{} = client, offering_id, input, options \\ []) do
    url_path = "/prod/offerings/#{AWS.Util.encode_uri(offering_id)}/purchase"
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
      201
    )
  end

  @doc """
  Send a reboot command to the specified input device.

  The device will begin rebooting within a few seconds of sending the command.
  When the reboot is complete, the device’s connection status will change to
  connected.
  """
  def reboot_input_device(%Client{} = client, input_device_id, input, options \\ []) do
    url_path = "/prod/inputDevices/#{AWS.Util.encode_uri(input_device_id)}/reboot"
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
  Reject the transfer of the specified input device to your AWS account.
  """
  def reject_input_device_transfer(%Client{} = client, input_device_id, input, options \\ []) do
    url_path = "/prod/inputDevices/#{AWS.Util.encode_uri(input_device_id)}/reject"
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
  Restart pipelines in one channel that is currently running.
  """
  def restart_channel_pipelines(%Client{} = client, channel_id, input, options \\ []) do
    url_path = "/prod/channels/#{AWS.Util.encode_uri(channel_id)}/restartChannelPipelines"
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
  Starts an existing channel
  """
  def start_channel(%Client{} = client, channel_id, input, options \\ []) do
    url_path = "/prod/channels/#{AWS.Util.encode_uri(channel_id)}/start"
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
  Start an input device that is attached to a MediaConnect flow.

  (There is no need to start a device that is attached to a MediaLive input;
  MediaLive starts the device when the channel starts.)
  """
  def start_input_device(%Client{} = client, input_device_id, input, options \\ []) do
    url_path = "/prod/inputDevices/#{AWS.Util.encode_uri(input_device_id)}/start"
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
  Start a maintenance window for the specified input device.

  Starting a maintenance window will give the device up to two hours to install
  software. If the device was streaming prior to the maintenance, it will resume
  streaming when the software is fully installed. Devices automatically install
  updates while they are powered on and their MediaLive channels are stopped. A
  maintenance window allows you to update a device without having to stop
  MediaLive channels that use the device. The device must remain powered on and
  connected to the internet for the duration of the maintenance.
  """
  def start_input_device_maintenance_window(
        %Client{} = client,
        input_device_id,
        input,
        options \\ []
      ) do
    url_path =
      "/prod/inputDevices/#{AWS.Util.encode_uri(input_device_id)}/startInputDeviceMaintenanceWindow"

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
  Start (run) the multiplex.

  Starting the multiplex does not start the channels. You must explicitly start
  each channel.
  """
  def start_multiplex(%Client{} = client, multiplex_id, input, options \\ []) do
    url_path = "/prod/multiplexes/#{AWS.Util.encode_uri(multiplex_id)}/start"
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
      202
    )
  end

  @doc """
  Stops a running channel
  """
  def stop_channel(%Client{} = client, channel_id, input, options \\ []) do
    url_path = "/prod/channels/#{AWS.Util.encode_uri(channel_id)}/stop"
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
  Stop an input device that is attached to a MediaConnect flow.

  (There is no need to stop a device that is attached to a MediaLive input;
  MediaLive automatically stops the device when the channel stops.)
  """
  def stop_input_device(%Client{} = client, input_device_id, input, options \\ []) do
    url_path = "/prod/inputDevices/#{AWS.Util.encode_uri(input_device_id)}/stop"
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
  Stops a running multiplex.

  If the multiplex isn't running, this action has no effect.
  """
  def stop_multiplex(%Client{} = client, multiplex_id, input, options \\ []) do
    url_path = "/prod/multiplexes/#{AWS.Util.encode_uri(multiplex_id)}/stop"
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
      202
    )
  end

  @doc """
  Start an input device transfer to another AWS account.

  After you make the request, the other account must accept or reject the
  transfer.
  """
  def transfer_input_device(%Client{} = client, input_device_id, input, options \\ []) do
    url_path = "/prod/inputDevices/#{AWS.Util.encode_uri(input_device_id)}/transfer"
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
  Update account configuration
  """
  def update_account_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/prod/accountConfiguration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates a channel.
  """
  def update_channel(%Client{} = client, channel_id, input, options \\ []) do
    url_path = "/prod/channels/#{AWS.Util.encode_uri(channel_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Changes the class of the channel.
  """
  def update_channel_class(%Client{} = client, channel_id, input, options \\ []) do
    url_path = "/prod/channels/#{AWS.Util.encode_uri(channel_id)}/channelClass"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates an input.
  """
  def update_input(%Client{} = client, input_id, input, options \\ []) do
    url_path = "/prod/inputs/#{AWS.Util.encode_uri(input_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates the parameters for the input device.
  """
  def update_input_device(%Client{} = client, input_device_id, input, options \\ []) do
    url_path = "/prod/inputDevices/#{AWS.Util.encode_uri(input_device_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Update an Input Security Group's Whilelists.
  """
  def update_input_security_group(
        %Client{} = client,
        input_security_group_id,
        input,
        options \\ []
      ) do
    url_path = "/prod/inputSecurityGroups/#{AWS.Util.encode_uri(input_security_group_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates a multiplex.
  """
  def update_multiplex(%Client{} = client, multiplex_id, input, options \\ []) do
    url_path = "/prod/multiplexes/#{AWS.Util.encode_uri(multiplex_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Update a program in a multiplex.
  """
  def update_multiplex_program(
        %Client{} = client,
        multiplex_id,
        program_name,
        input,
        options \\ []
      ) do
    url_path =
      "/prod/multiplexes/#{AWS.Util.encode_uri(multiplex_id)}/programs/#{AWS.Util.encode_uri(program_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Update reservation.
  """
  def update_reservation(%Client{} = client, reservation_id, input, options \\ []) do
    url_path = "/prod/reservations/#{AWS.Util.encode_uri(reservation_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end
end
