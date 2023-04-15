# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.IoTDataPlane do
  @moduledoc """
  IoT data

  IoT data enables secure, bi-directional communication between Internet-connected
  things (such as sensors, actuators, embedded devices, or smart appliances) and
  the Amazon Web Services cloud.

  It implements a broker for applications and things to publish messages over HTTP
  (Publish) and retrieve, update, and delete shadows. A shadow is a persistent
  representation of your things and their state in the Amazon Web Services cloud.

  Find the endpoint address for actions in IoT data by running this CLI command:

  `aws iot describe-endpoint --endpoint-type iot:Data-ATS`

  The service name used by [Amazon Web ServicesSignature Version 4](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html) to
  sign requests is: *iotdevicegateway*.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2015-05-28",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "data-ats.iot",
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

  Requires permission to access the
  [DeleteThingShadow](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions) action.

  For more information, see
  [DeleteThingShadow](http://docs.aws.amazon.com/iot/latest/developerguide/API_DeleteThingShadow.html)
  in the IoT Developer Guide.
  """
  def delete_thing_shadow(%Client{} = client, thing_name, input, options \\ []) do
    url_path = "/things/#{AWS.Util.encode_uri(thing_name)}/shadow"
    headers = []

    {query_params, input} =
      [
        {"shadowName", "name"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DeleteThingShadow",
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
  Gets the details of a single retained message for the specified topic.

  This action returns the message payload of the retained message, which can incur
  messaging costs. To list only the topic names of the retained messages, call
  [ListRetainedMessages](https://docs.aws.amazon.com/iot/latest/apireference/API_iotdata_ListRetainedMessages.html).  Requires permission to access the
  [GetRetainedMessage](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiotfleethubfordevicemanagement.html#awsiotfleethubfordevicemanagement-actions-as-permissions)
  action.

  For more information about messaging costs, see [Amazon Web Services IoT Core pricing - Messaging](http://aws.amazon.com/iot-core/pricing/#Messaging).
  """
  def get_retained_message(%Client{} = client, topic, options \\ []) do
    url_path = "/retainedMessage/#{AWS.Util.encode_uri(topic)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetRetainedMessage",
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
  Gets the shadow for the specified thing.

  Requires permission to access the
  [GetThingShadow](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions) action.

  For more information, see
  [GetThingShadow](http://docs.aws.amazon.com/iot/latest/developerguide/API_GetThingShadow.html)
  in the IoT Developer Guide.
  """
  def get_thing_shadow(%Client{} = client, thing_name, shadow_name \\ nil, options \\ []) do
    url_path = "/things/#{AWS.Util.encode_uri(thing_name)}/shadow"
    headers = []
    query_params = []

    query_params =
      if !is_nil(shadow_name) do
        [{"name", shadow_name} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetThingShadow",
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

  Requires permission to access the
  [ListNamedShadowsForThing](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def list_named_shadows_for_thing(
        %Client{} = client,
        thing_name,
        next_token \\ nil,
        page_size \\ nil,
        options \\ []
      ) do
    url_path = "/api/things/shadow/ListNamedShadowsForThing/#{AWS.Util.encode_uri(thing_name)}"
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

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListNamedShadowsForThing",
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
  Lists summary information about the retained messages stored for the account.

  This action returns only the topic names of the retained messages. It doesn't
  return any message payloads. Although this action doesn't return a message
  payload, it can still incur messaging costs.

  To get the message payload of a retained message, call
  [GetRetainedMessage](https://docs.aws.amazon.com/iot/latest/apireference/API_iotdata_GetRetainedMessage.html) with the topic name of the retained message.

  Requires permission to access the
  [ListRetainedMessages](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiotfleethubfordevicemanagement.html#awsiotfleethubfordevicemanagement-actions-as-permissions)
  action.

  For more information about messaging costs, see [Amazon Web Services IoT Core pricing - Messaging](http://aws.amazon.com/iot-core/pricing/#Messaging).
  """
  def list_retained_messages(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/retainedMessage"
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
      "ListRetainedMessages",
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
  Publishes an MQTT message.

  Requires permission to access the
  [Publish](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions) action.

  For more information about MQTT messages, see [MQTT
  Protocol](http://docs.aws.amazon.com/iot/latest/developerguide/mqtt.html) in the
  IoT Developer Guide.

  For more information about messaging costs, see [Amazon Web Services IoT Core pricing - Messaging](http://aws.amazon.com/iot-core/pricing/#Messaging).
  """
  def publish(%Client{} = client, topic, input, options \\ []) do
    url_path = "/topics/#{AWS.Util.encode_uri(topic)}"

    {headers, input} =
      [
        {"correlationData", "x-amz-mqtt5-correlation-data"},
        {"payloadFormatIndicator", "x-amz-mqtt5-payload-format-indicator"},
        {"userProperties", "x-amz-mqtt5-user-properties"}
      ]
      |> Request.build_params(input)

    {query_params, input} =
      [
        {"contentType", "contentType"},
        {"messageExpiry", "messageExpiry"},
        {"qos", "qos"},
        {"responseTopic", "responseTopic"},
        {"retain", "retain"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "Publish",
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

  Requires permission to access the
  [UpdateThingShadow](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions) action.

  For more information, see
  [UpdateThingShadow](http://docs.aws.amazon.com/iot/latest/developerguide/API_UpdateThingShadow.html)
  in the IoT Developer Guide.
  """
  def update_thing_shadow(%Client{} = client, thing_name, input, options \\ []) do
    url_path = "/things/#{AWS.Util.encode_uri(thing_name)}/shadow"
    headers = []

    {query_params, input} =
      [
        {"shadowName", "name"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "UpdateThingShadow",
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
