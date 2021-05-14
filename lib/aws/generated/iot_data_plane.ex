# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.IoTDataPlane do
  @moduledoc """
  AWS IoT

  AWS IoT-Data enables secure, bi-directional communication between
  Internet-connected things (such as sensors, actuators, embedded devices, or
  smart appliances) and the AWS cloud.

  It implements a broker for applications and things to publish messages over HTTP
  (Publish) and retrieve, update, and delete shadows. A shadow is a persistent
  representation of your things and their state in the AWS cloud.

  Find the endpoint address for actions in the AWS IoT data plane by running this
  CLI command:

  `aws iot describe-endpoint --endpoint-type iot:Data-ATS`

  The service name used by [AWS Signature Version 4](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html) to
  sign requests is: *iotdevicegateway*.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2015-05-28",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "data.iot",
      global?: false,
      protocol: "rest-json",
      service_id: "IoT Data Plane",
      signature_version: "v4",
      signing_name: "iotdata",
      target_prefix: nil
    }
  end

  @doc """
  Deletes the shadow for the specified thing.

  For more information, see
  [DeleteThingShadow](http://docs.aws.amazon.com/iot/latest/developerguide/API_DeleteThingShadow.html)
  in the AWS IoT Developer Guide.
  """
  def delete_thing_shadow(%Client{} = client, thing_name, input, options \\ []) do
    url_path = "/things/#{URI.encode(thing_name)}/shadow"
    headers = []

    {query_params, input} =
      [
        {"shadowName", "name"}
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

  @doc """
  Gets the shadow for the specified thing.

  For more information, see
  [GetThingShadow](http://docs.aws.amazon.com/iot/latest/developerguide/API_GetThingShadow.html)
  in the AWS IoT Developer Guide.
  """
  def get_thing_shadow(%Client{} = client, thing_name, shadow_name \\ nil, options \\ []) do
    url_path = "/things/#{URI.encode(thing_name)}/shadow"
    headers = []
    query_params = []

    query_params =
      if !is_nil(shadow_name) do
        [{"name", shadow_name} | query_params]
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
  Lists the shadows for the specified thing.
  """
  def list_named_shadows_for_thing(
        %Client{} = client,
        thing_name,
        next_token \\ nil,
        page_size \\ nil,
        options \\ []
      ) do
    url_path = "/api/things/shadow/ListNamedShadowsForThing/#{URI.encode(thing_name)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(page_size) do
        [{"pageSize", page_size} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
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
  Publishes state information.

  For more information, see [HTTP Protocol](http://docs.aws.amazon.com/iot/latest/developerguide/protocols.html#http)
  in the AWS IoT Developer Guide.
  """
  def publish(%Client{} = client, topic, input, options \\ []) do
    url_path = "/topics/#{URI.encode(topic)}"
    headers = []

    {query_params, input} =
      [
        {"qos", "qos"}
      ]
      |> Request.build_params(input)

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
  Updates the shadow for the specified thing.

  For more information, see
  [UpdateThingShadow](http://docs.aws.amazon.com/iot/latest/developerguide/API_UpdateThingShadow.html)
  in the AWS IoT Developer Guide.
  """
  def update_thing_shadow(%Client{} = client, thing_name, input, options \\ []) do
    url_path = "/things/#{URI.encode(thing_name)}/shadow"
    headers = []

    {query_params, input} =
      [
        {"shadowName", "name"}
      ]
      |> Request.build_params(input)

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
end
