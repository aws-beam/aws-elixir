# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.IoTDataPlane do
  @moduledoc """
  IoT data

  IoT data enables secure, bi-directional communication between Internet-connected
  things (such as sensors,
  actuators, embedded devices, or smart appliances) and the Amazon Web Services
  cloud.

  It implements a broker for applications and
  things to publish messages over HTTP (Publish) and retrieve, update, and delete
  shadows. A shadow is a
  persistent representation of your things and their state in the Amazon Web
  Services cloud.

  Find the endpoint address for actions in IoT data by running this CLI command:

  `aws iot describe-endpoint --endpoint-type iot:Data-ATS`

  The service name used by [Amazon Web ServicesSignature Version 4](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html)
  to sign requests is: *iotdevicegateway*.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => String.t() | Atom.t()
      }

  """
  @type conflict_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_thing_shadow_request() :: %{
        optional("shadowName") => String.t() | Atom.t()
      }

  """
  @type delete_thing_shadow_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_thing_shadow_response() :: %{
        "payload" => binary()
      }

  """
  @type delete_thing_shadow_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_retained_message_request() :: %{}

  """
  @type get_retained_message_request() :: %{}

  @typedoc """

  ## Example:

      get_retained_message_response() :: %{
        "lastModifiedTime" => float(),
        "payload" => binary(),
        "qos" => integer(),
        "topic" => String.t() | Atom.t(),
        "userProperties" => binary()
      }

  """
  @type get_retained_message_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_thing_shadow_request() :: %{
        optional("shadowName") => String.t() | Atom.t()
      }

  """
  @type get_thing_shadow_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_thing_shadow_response() :: %{
        "payload" => binary()
      }

  """
  @type get_thing_shadow_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      internal_failure_exception() :: %{
        "message" => String.t() | Atom.t()
      }

  """
  @type internal_failure_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      invalid_request_exception() :: %{
        "message" => String.t() | Atom.t()
      }

  """
  @type invalid_request_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_named_shadows_for_thing_request() :: %{
        optional("nextToken") => String.t() | Atom.t(),
        optional("pageSize") => integer()
      }

  """
  @type list_named_shadows_for_thing_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_named_shadows_for_thing_response() :: %{
        "nextToken" => String.t() | Atom.t(),
        "results" => list(String.t() | Atom.t()),
        "timestamp" => float()
      }

  """
  @type list_named_shadows_for_thing_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_retained_messages_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | Atom.t()
      }

  """
  @type list_retained_messages_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_retained_messages_response() :: %{
        "nextToken" => String.t() | Atom.t(),
        "retainedTopics" => list(retained_message_summary())
      }

  """
  @type list_retained_messages_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      method_not_allowed_exception() :: %{
        "message" => String.t() | Atom.t()
      }

  """
  @type method_not_allowed_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      publish_request() :: %{
        optional("contentType") => String.t() | Atom.t(),
        optional("correlationData") => String.t() | Atom.t(),
        optional("messageExpiry") => float(),
        optional("payload") => binary(),
        optional("payloadFormatIndicator") => list(any()),
        optional("qos") => integer(),
        optional("responseTopic") => String.t() | Atom.t(),
        optional("retain") => boolean(),
        optional("userProperties") => String.t() | Atom.t()
      }

  """
  @type publish_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      request_entity_too_large_exception() :: %{
        "message" => String.t() | Atom.t()
      }

  """
  @type request_entity_too_large_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => String.t() | Atom.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      retained_message_summary() :: %{
        "lastModifiedTime" => float(),
        "payloadSize" => float(),
        "qos" => integer(),
        "topic" => String.t() | Atom.t()
      }

  """
  @type retained_message_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      service_unavailable_exception() :: %{
        "message" => String.t() | Atom.t()
      }

  """
  @type service_unavailable_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => String.t() | Atom.t()
      }

  """
  @type throttling_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      unauthorized_exception() :: %{
        "message" => String.t() | Atom.t()
      }

  """
  @type unauthorized_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      unsupported_document_encoding_exception() :: %{
        "message" => String.t() | Atom.t()
      }

  """
  @type unsupported_document_encoding_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_thing_shadow_request() :: %{
        optional("shadowName") => String.t() | Atom.t(),
        required("payload") => binary()
      }

  """
  @type update_thing_shadow_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_thing_shadow_response() :: %{
        "payload" => binary()
      }

  """
  @type update_thing_shadow_response() :: %{String.t() | Atom.t() => any()}

  @type delete_thing_shadow_errors() ::
          unsupported_document_encoding_exception()
          | unauthorized_exception()
          | throttling_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | method_not_allowed_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type get_retained_message_errors() ::
          unauthorized_exception()
          | throttling_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | method_not_allowed_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type get_thing_shadow_errors() ::
          unsupported_document_encoding_exception()
          | unauthorized_exception()
          | throttling_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | method_not_allowed_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type list_named_shadows_for_thing_errors() ::
          unauthorized_exception()
          | throttling_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | method_not_allowed_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type list_retained_messages_errors() ::
          unauthorized_exception()
          | throttling_exception()
          | service_unavailable_exception()
          | method_not_allowed_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type publish_errors() ::
          unauthorized_exception()
          | throttling_exception()
          | method_not_allowed_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type update_thing_shadow_errors() ::
          unsupported_document_encoding_exception()
          | unauthorized_exception()
          | throttling_exception()
          | service_unavailable_exception()
          | request_entity_too_large_exception()
          | method_not_allowed_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2015-05-28",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "data-ats.iot",
      global?: false,
      hostname: nil,
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
  @spec delete_thing_shadow(map(), String.t() | Atom.t(), delete_thing_shadow_request(), list()) ::
          {:ok, delete_thing_shadow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_thing_shadow_errors()}
  def delete_thing_shadow(%Client{} = client, thing_name, input, options \\ []) do
    url_path = "/things/#{AWS.Util.encode_uri(thing_name)}/shadow"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"shadowName", "name"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Gets the details of a single retained message for the specified topic.

  This action returns the message payload of the retained message, which can
  incur messaging costs. To list only the topic names of the retained messages,
  call
  [ListRetainedMessages](https://docs.aws.amazon.com/iot/latest/apireference/API_iotdata_ListRetainedMessages.html). 
  Requires permission to access the
  [GetRetainedMessage](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiotfleethubfordevicemanagement.html#awsiotfleethubfordevicemanagement-actions-as-permissions)
  action.

  For more information about messaging costs, see [Amazon Web Services IoT Core pricing - Messaging](http://aws.amazon.com/iot-core/pricing/#Messaging).
  """
  @spec get_retained_message(map(), String.t() | Atom.t(), list()) ::
          {:ok, get_retained_message_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_retained_message_errors()}
  def get_retained_message(%Client{} = client, topic, options \\ []) do
    url_path = "/retainedMessage/#{AWS.Util.encode_uri(topic)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the shadow for the specified thing.

  Requires permission to access the
  [GetThingShadow](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions) action.

  For more information, see
  [GetThingShadow](http://docs.aws.amazon.com/iot/latest/developerguide/API_GetThingShadow.html)
  in the
  IoT Developer Guide.
  """
  @spec get_thing_shadow(map(), String.t() | Atom.t(), String.t() | Atom.t() | nil, list()) ::
          {:ok, get_thing_shadow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_thing_shadow_errors()}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the shadows for the specified thing.

  Requires permission to access the
  [ListNamedShadowsForThing](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec list_named_shadows_for_thing(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          list()
        ) ::
          {:ok, list_named_shadows_for_thing_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_named_shadows_for_thing_errors()}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists summary information about the retained messages stored for the account.

  This action returns only the topic names of the retained messages. It doesn't
  return any message payloads. Although this action doesn't return a message
  payload,
  it can still incur messaging costs.

  To get the message payload of a retained message, call
  [GetRetainedMessage](https://docs.aws.amazon.com/iot/latest/apireference/API_iotdata_GetRetainedMessage.html)  with the topic name of the retained message.

  Requires permission to access the
  [ListRetainedMessages](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiotfleethubfordevicemanagement.html#awsiotfleethubfordevicemanagement-actions-as-permissions)
  action.

  For more information about messaging costs, see [Amazon Web Services IoT Core pricing - Messaging](http://aws.amazon.com/iot-core/pricing/#Messaging).
  """
  @spec list_retained_messages(
          map(),
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          list()
        ) ::
          {:ok, list_retained_messages_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_retained_messages_errors()}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Publishes an MQTT message.

  Requires permission to access the
  [Publish](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions) action.

  For more information about MQTT messages, see
  [MQTT Protocol](http://docs.aws.amazon.com/iot/latest/developerguide/mqtt.html)
  in the
  IoT Developer Guide.

  For more information about messaging costs, see [Amazon Web Services IoT Core pricing - Messaging](http://aws.amazon.com/iot-core/pricing/#Messaging).
  """
  @spec publish(map(), String.t() | Atom.t(), publish_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, publish_errors()}
  def publish(%Client{} = client, topic, input, options \\ []) do
    url_path = "/topics/#{AWS.Util.encode_uri(topic)}"

    {headers, input} =
      [
        {"correlationData", "x-amz-mqtt5-correlation-data"},
        {"payloadFormatIndicator", "x-amz-mqtt5-payload-format-indicator"},
        {"userProperties", "x-amz-mqtt5-user-properties"}
      ]
      |> Request.build_params(input)

    custom_headers = []

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
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the shadow for the specified thing.

  Requires permission to access the
  [UpdateThingShadow](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions) action.

  For more information, see
  [UpdateThingShadow](http://docs.aws.amazon.com/iot/latest/developerguide/API_UpdateThingShadow.html)
  in the
  IoT Developer Guide.
  """
  @spec update_thing_shadow(map(), String.t() | Atom.t(), update_thing_shadow_request(), list()) ::
          {:ok, update_thing_shadow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_thing_shadow_errors()}
  def update_thing_shadow(%Client{} = client, thing_name, input, options \\ []) do
    url_path = "/things/#{AWS.Util.encode_uri(thing_name)}/shadow"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"shadowName", "name"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end
end
