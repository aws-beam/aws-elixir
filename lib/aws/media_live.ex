# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.MediaLive do
  @moduledoc """
  API for AWS Elemental MediaLive
  """

  @doc """
  Accept an incoming input device transfer. The ownership of the device will
  transfer to your AWS account.
  """
  def accept_input_device_transfer(client, input_device_id, input, options \\ []) do
    path_ = "/prod/inputDevices/#{URI.encode(input_device_id)}/accept"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Starts delete of resources.
  """
  def batch_delete(client, input, options \\ []) do
    path_ = "/prod/batch/delete"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Starts existing resources
  """
  def batch_start(client, input, options \\ []) do
    path_ = "/prod/batch/start"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Stops running resources
  """
  def batch_stop(client, input, options \\ []) do
    path_ = "/prod/batch/stop"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Update a channel schedule
  """
  def batch_update_schedule(client, channel_id, input, options \\ []) do
    path_ = "/prod/channels/#{URI.encode(channel_id)}/schedule"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Cancel an input device transfer that you have requested.
  """
  def cancel_input_device_transfer(client, input_device_id, input, options \\ []) do
    path_ = "/prod/inputDevices/#{URI.encode(input_device_id)}/cancel"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Creates a new channel
  """
  def create_channel(client, input, options \\ []) do
    path_ = "/prod/channels"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Create an input
  """
  def create_input(client, input, options \\ []) do
    path_ = "/prod/inputs"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Creates a Input Security Group
  """
  def create_input_security_group(client, input, options \\ []) do
    path_ = "/prod/inputSecurityGroups"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Create a new multiplex.
  """
  def create_multiplex(client, input, options \\ []) do
    path_ = "/prod/multiplexes"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Create a new program in the multiplex.
  """
  def create_multiplex_program(client, multiplex_id, input, options \\ []) do
    path_ = "/prod/multiplexes/#{URI.encode(multiplex_id)}/programs"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Create tags for a resource
  """
  def create_tags(client, resource_arn, input, options \\ []) do
    path_ = "/prod/tags/#{URI.encode(resource_arn)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 204)
  end

  @doc """
  Starts deletion of channel. The associated outputs are also deleted.
  """
  def delete_channel(client, channel_id, input, options \\ []) do
    path_ = "/prod/channels/#{URI.encode(channel_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 200)
  end

  @doc """
  Deletes the input end point
  """
  def delete_input(client, input_id, input, options \\ []) do
    path_ = "/prod/inputs/#{URI.encode(input_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 200)
  end

  @doc """
  Deletes an Input Security Group
  """
  def delete_input_security_group(client, input_security_group_id, input, options \\ []) do
    path_ = "/prod/inputSecurityGroups/#{URI.encode(input_security_group_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 200)
  end

  @doc """
  Delete a multiplex. The multiplex must be idle.
  """
  def delete_multiplex(client, multiplex_id, input, options \\ []) do
    path_ = "/prod/multiplexes/#{URI.encode(multiplex_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 202)
  end

  @doc """
  Delete a program from a multiplex.
  """
  def delete_multiplex_program(client, multiplex_id, program_name, input, options \\ []) do
    path_ = "/prod/multiplexes/#{URI.encode(multiplex_id)}/programs/#{URI.encode(program_name)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 200)
  end

  @doc """
  Delete an expired reservation.
  """
  def delete_reservation(client, reservation_id, input, options \\ []) do
    path_ = "/prod/reservations/#{URI.encode(reservation_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 200)
  end

  @doc """
  Delete all schedule actions on a channel.
  """
  def delete_schedule(client, channel_id, input, options \\ []) do
    path_ = "/prod/channels/#{URI.encode(channel_id)}/schedule"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 200)
  end

  @doc """
  Removes tags for a resource
  """
  def delete_tags(client, resource_arn, input, options \\ []) do
    path_ = "/prod/tags/#{URI.encode(resource_arn)}"
    headers = []
    {query_, input} =
      [
        {"TagKeys", "tagKeys"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Gets details about a channel
  """
  def describe_channel(client, channel_id, options \\ []) do
    path_ = "/prod/channels/#{URI.encode(channel_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Produces details about an input
  """
  def describe_input(client, input_id, options \\ []) do
    path_ = "/prod/inputs/#{URI.encode(input_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Gets the details for the input device
  """
  def describe_input_device(client, input_device_id, options \\ []) do
    path_ = "/prod/inputDevices/#{URI.encode(input_device_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Get the latest thumbnail data for the input device.
  """
  def describe_input_device_thumbnail(client, input_device_id, accept, options \\ []) do
    path_ = "/prod/inputDevices/#{URI.encode(input_device_id)}/thumbnailData"
    headers = []
    headers = if !is_nil(accept) do
      [{"accept", accept} | headers]
    else
      headers
    end
    query_ = []
    case request(client, :get, path_, query_, headers, nil, options, 200) do
      {:ok, body, response} when not is_nil(body) ->
        body =
          [
            {"Content-Length", "ContentLength"},
            {"Content-Type", "ContentType"},
            {"ETag", "ETag"},
            {"Last-Modified", "LastModified"},
          ]
          |> Enum.reduce(body, fn {header_name, key}, acc ->
            case List.keyfind(response.headers, header_name, 0) do
              nil -> acc
              {_header_name, value} -> Map.put(acc, key, value)
            end
          end)

        {:ok, body, response}

      result ->
        result
    end
  end

  @doc """
  Produces a summary of an Input Security Group
  """
  def describe_input_security_group(client, input_security_group_id, options \\ []) do
    path_ = "/prod/inputSecurityGroups/#{URI.encode(input_security_group_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Gets details about a multiplex.
  """
  def describe_multiplex(client, multiplex_id, options \\ []) do
    path_ = "/prod/multiplexes/#{URI.encode(multiplex_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Get the details for a program in a multiplex.
  """
  def describe_multiplex_program(client, multiplex_id, program_name, options \\ []) do
    path_ = "/prod/multiplexes/#{URI.encode(multiplex_id)}/programs/#{URI.encode(program_name)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Get details for an offering.
  """
  def describe_offering(client, offering_id, options \\ []) do
    path_ = "/prod/offerings/#{URI.encode(offering_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Get details for a reservation.
  """
  def describe_reservation(client, reservation_id, options \\ []) do
    path_ = "/prod/reservations/#{URI.encode(reservation_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Get a channel schedule
  """
  def describe_schedule(client, channel_id, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/prod/channels/#{URI.encode(channel_id)}/schedule"
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
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Produces list of channels that have been created
  """
  def list_channels(client, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/prod/channels"
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
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  List input devices that are currently being transferred. List input devices
  that you are transferring from your AWS account or input devices that
  another AWS account is transferring to you.
  """
  def list_input_device_transfers(client, max_results \\ nil, next_token \\ nil, transfer_type, options \\ []) do
    path_ = "/prod/inputDeviceTransfers"
    headers = []
    query_ = []
    query_ = if !is_nil(transfer_type) do
      [{"transferType", transfer_type} | query_]
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
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  List input devices
  """
  def list_input_devices(client, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/prod/inputDevices"
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
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Produces a list of Input Security Groups for an account
  """
  def list_input_security_groups(client, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/prod/inputSecurityGroups"
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
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Produces list of inputs that have been created
  """
  def list_inputs(client, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/prod/inputs"
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
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  List the programs that currently exist for a specific multiplex.
  """
  def list_multiplex_programs(client, multiplex_id, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/prod/multiplexes/#{URI.encode(multiplex_id)}/programs"
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
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieve a list of the existing multiplexes.
  """
  def list_multiplexes(client, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/prod/multiplexes"
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
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  List offerings available for purchase.
  """
  def list_offerings(client, channel_class \\ nil, channel_configuration \\ nil, codec \\ nil, duration \\ nil, max_results \\ nil, maximum_bitrate \\ nil, maximum_framerate \\ nil, next_token \\ nil, resolution \\ nil, resource_type \\ nil, special_feature \\ nil, video_quality \\ nil, options \\ []) do
    path_ = "/prod/offerings"
    headers = []
    query_ = []
    query_ = if !is_nil(video_quality) do
      [{"videoQuality", video_quality} | query_]
    else
      query_
    end
    query_ = if !is_nil(special_feature) do
      [{"specialFeature", special_feature} | query_]
    else
      query_
    end
    query_ = if !is_nil(resource_type) do
      [{"resourceType", resource_type} | query_]
    else
      query_
    end
    query_ = if !is_nil(resolution) do
      [{"resolution", resolution} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(maximum_framerate) do
      [{"maximumFramerate", maximum_framerate} | query_]
    else
      query_
    end
    query_ = if !is_nil(maximum_bitrate) do
      [{"maximumBitrate", maximum_bitrate} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    query_ = if !is_nil(duration) do
      [{"duration", duration} | query_]
    else
      query_
    end
    query_ = if !is_nil(codec) do
      [{"codec", codec} | query_]
    else
      query_
    end
    query_ = if !is_nil(channel_configuration) do
      [{"channelConfiguration", channel_configuration} | query_]
    else
      query_
    end
    query_ = if !is_nil(channel_class) do
      [{"channelClass", channel_class} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  List purchased reservations.
  """
  def list_reservations(client, channel_class \\ nil, codec \\ nil, max_results \\ nil, maximum_bitrate \\ nil, maximum_framerate \\ nil, next_token \\ nil, resolution \\ nil, resource_type \\ nil, special_feature \\ nil, video_quality \\ nil, options \\ []) do
    path_ = "/prod/reservations"
    headers = []
    query_ = []
    query_ = if !is_nil(video_quality) do
      [{"videoQuality", video_quality} | query_]
    else
      query_
    end
    query_ = if !is_nil(special_feature) do
      [{"specialFeature", special_feature} | query_]
    else
      query_
    end
    query_ = if !is_nil(resource_type) do
      [{"resourceType", resource_type} | query_]
    else
      query_
    end
    query_ = if !is_nil(resolution) do
      [{"resolution", resolution} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(maximum_framerate) do
      [{"maximumFramerate", maximum_framerate} | query_]
    else
      query_
    end
    query_ = if !is_nil(maximum_bitrate) do
      [{"maximumBitrate", maximum_bitrate} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    query_ = if !is_nil(codec) do
      [{"codec", codec} | query_]
    else
      query_
    end
    query_ = if !is_nil(channel_class) do
      [{"channelClass", channel_class} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Produces list of tags that have been created for a resource
  """
  def list_tags_for_resource(client, resource_arn, options \\ []) do
    path_ = "/prod/tags/#{URI.encode(resource_arn)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Purchase an offering and create a reservation.
  """
  def purchase_offering(client, offering_id, input, options \\ []) do
    path_ = "/prod/offerings/#{URI.encode(offering_id)}/purchase"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Reject the transfer of the specified input device to your AWS account.
  """
  def reject_input_device_transfer(client, input_device_id, input, options \\ []) do
    path_ = "/prod/inputDevices/#{URI.encode(input_device_id)}/reject"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Starts an existing channel
  """
  def start_channel(client, channel_id, input, options \\ []) do
    path_ = "/prod/channels/#{URI.encode(channel_id)}/start"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Start (run) the multiplex. Starting the multiplex does not start the
  channels. You must explicitly start each channel.
  """
  def start_multiplex(client, multiplex_id, input, options \\ []) do
    path_ = "/prod/multiplexes/#{URI.encode(multiplex_id)}/start"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 202)
  end

  @doc """
  Stops a running channel
  """
  def stop_channel(client, channel_id, input, options \\ []) do
    path_ = "/prod/channels/#{URI.encode(channel_id)}/stop"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Stops a running multiplex. If the multiplex isn't running, this action has
  no effect.
  """
  def stop_multiplex(client, multiplex_id, input, options \\ []) do
    path_ = "/prod/multiplexes/#{URI.encode(multiplex_id)}/stop"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 202)
  end

  @doc """
  Start an input device transfer to another AWS account. After you make the
  request, the other account must accept or reject the transfer.
  """
  def transfer_input_device(client, input_device_id, input, options \\ []) do
    path_ = "/prod/inputDevices/#{URI.encode(input_device_id)}/transfer"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Updates a channel.
  """
  def update_channel(client, channel_id, input, options \\ []) do
    path_ = "/prod/channels/#{URI.encode(channel_id)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Changes the class of the channel.
  """
  def update_channel_class(client, channel_id, input, options \\ []) do
    path_ = "/prod/channels/#{URI.encode(channel_id)}/channelClass"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Updates an input.
  """
  def update_input(client, input_id, input, options \\ []) do
    path_ = "/prod/inputs/#{URI.encode(input_id)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Updates the parameters for the input device.
  """
  def update_input_device(client, input_device_id, input, options \\ []) do
    path_ = "/prod/inputDevices/#{URI.encode(input_device_id)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Update an Input Security Group's Whilelists.
  """
  def update_input_security_group(client, input_security_group_id, input, options \\ []) do
    path_ = "/prod/inputSecurityGroups/#{URI.encode(input_security_group_id)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Updates a multiplex.
  """
  def update_multiplex(client, multiplex_id, input, options \\ []) do
    path_ = "/prod/multiplexes/#{URI.encode(multiplex_id)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Update a program in a multiplex.
  """
  def update_multiplex_program(client, multiplex_id, program_name, input, options \\ []) do
    path_ = "/prod/multiplexes/#{URI.encode(multiplex_id)}/programs/#{URI.encode(program_name)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Update reservation.
  """
  def update_reservation(client, reservation_id, input, options \\ []) do
    path_ = "/prod/reservations/#{URI.encode(reservation_id)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "medialive"}
    host = build_host("medialive", client)
    url = host
    |> build_url(path, client)
    |> add_query(query, client)

    additional_headers = [{"Host", host}, {"Content-Type", "application/x-amz-json-1.1"}]
    headers = AWS.Request.add_headers(additional_headers, headers)

    payload = encode!(client, input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    perform_request(client, method, url, payload, headers, options, success_status_code)
  end

  defp perform_request(client, method, url, payload, headers, options, nil) do
    case do_request(client, method, url, payload, headers, options) do
      {:ok, %{status_code: status_code, body: body} = response}
      when status_code in [200, 202, 204] ->
        body = if(body != "", do: decode!(client, body))
        {:ok, body, response}

      {:ok, %{body: body}} ->
        {:error, decode!(client, body)}

      error = {:error, _reason} -> error
    end
  end

  defp perform_request(client, method, url, payload, headers, options, success_status_code) do
    case do_request(client, method, url, payload, headers, options) do
      {:ok, %{status_code: ^success_status_code, body: body} = response} ->
        body = if(body != "", do: decode!(client, body))
        {:ok, body, response}

      {:ok, %{body: body}} ->
        {:error, decode!(client, body)}

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

  defp do_request(client, method, url, payload, headers, options) do
    {mod, fun} = Map.fetch(client, :http_client)
    apply(mod, fun, [method, url, payload, headers, options])
  end

  defp encode!(client, payload, type \\ :json) do
    {mod, fun} = client
      |> Map.fetch(:encode)
      |> Map.fetch(type)
    apply(mod, fun, [payload])
  end

  defp decode!(client, payload) do
    {mod, fun} = client
      |> Map.fetch(:decode)
      |> Map.fetch(:json)
    apply(mod, fun, [payload])
  end
end
