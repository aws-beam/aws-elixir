# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.IoT1ClickDevices do
  @moduledoc """
  Describes all of the AWS IoT 1-Click device-related API operations for the
  service.

  Also provides sample requests, responses, and errors for the supported web
  services
  protocols.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2018-05-14",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "devices.iot1click",
      global?: false,
      protocol: "rest-json",
      service_id: "IoT 1Click Devices Service",
      signature_version: "v4",
      signing_name: "iot1click",
      target_prefix: nil
    }
  end

  @doc """
  Adds device(s) to your account (i.e., claim one or more devices) if and only if
  you
  received a claim code with the device(s).
  """
  def claim_devices_by_claim_code(%Client{} = client, claim_code, input, options \\ []) do
    url_path = "/claims/#{AWS.Util.encode_uri(claim_code)}"
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
  Given a device ID, returns a DescribeDeviceResponse object describing the
  details of the device.
  """
  def describe_device(%Client{} = client, device_id, options \\ []) do
    url_path = "/devices/#{AWS.Util.encode_uri(device_id)}"
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
  Given a device ID, finalizes the claim request for the associated device.

  Claiming a device consists of initiating a claim, then publishing a device
  event,
  and finalizing the claim. For a device of type button, a device event can
  be published by simply clicking the device.
  """
  def finalize_device_claim(%Client{} = client, device_id, input, options \\ []) do
    url_path = "/devices/#{AWS.Util.encode_uri(device_id)}/finalize-claim"
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
  Given a device ID, returns the invokable methods associated with the device.
  """
  def get_device_methods(%Client{} = client, device_id, options \\ []) do
    url_path = "/devices/#{AWS.Util.encode_uri(device_id)}/methods"
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
  Given a device ID, initiates a claim request for the associated device.

  Claiming a device consists of initiating a claim, then publishing a device
  event,
  and finalizing the claim. For a device of type button, a device event can
  be published by simply clicking the device.
  """
  def initiate_device_claim(%Client{} = client, device_id, input, options \\ []) do
    url_path = "/devices/#{AWS.Util.encode_uri(device_id)}/initiate-claim"
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
  Given a device ID, issues a request to invoke a named device method (with
  possible
  parameters).

  See the "Example POST" code snippet below.
  """
  def invoke_device_method(%Client{} = client, device_id, input, options \\ []) do
    url_path = "/devices/#{AWS.Util.encode_uri(device_id)}/methods"
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
  Using a device ID, returns a DeviceEventsResponse object containing an
  array of events for the device.
  """
  def list_device_events(
        %Client{} = client,
        device_id,
        from_time_stamp,
        max_results \\ nil,
        next_token \\ nil,
        to_time_stamp,
        options \\ []
      ) do
    url_path = "/devices/#{AWS.Util.encode_uri(device_id)}/events"
    headers = []
    query_params = []

    query_params =
      if !is_nil(to_time_stamp) do
        [{"toTimeStamp", to_time_stamp} | query_params]
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

    query_params =
      if !is_nil(from_time_stamp) do
        [{"fromTimeStamp", from_time_stamp} | query_params]
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
  Lists the 1-Click compatible devices associated with your AWS account.
  """
  def list_devices(
        %Client{} = client,
        device_type \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/devices"
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
      if !is_nil(device_type) do
        [{"deviceType", device_type} | query_params]
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
  Lists the tags associated with the specified resource ARN.
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
  Adds or updates the tags associated with the resource ARN.

  See [AWS IoT 1-Click Service Limits](https://docs.aws.amazon.com/iot-1-click/latest/developerguide/1click-appendix.html#1click-limits)
  for the maximum number of tags allowed per
  resource.
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
  Disassociates a device from your AWS account using its device ID.
  """
  def unclaim_device(%Client{} = client, device_id, input, options \\ []) do
    url_path = "/devices/#{AWS.Util.encode_uri(device_id)}/unclaim"
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
  Using tag keys, deletes the tags (key/value pairs) associated with the specified
  resource ARN.
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
  Using a Boolean value (true or false), this operation
  enables or disables the device given a device ID.
  """
  def update_device_state(%Client{} = client, device_id, input, options \\ []) do
    url_path = "/devices/#{AWS.Util.encode_uri(device_id)}/state"
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
