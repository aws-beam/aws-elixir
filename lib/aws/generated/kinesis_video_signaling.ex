# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.KinesisVideoSignaling do
  @moduledoc """
  Kinesis Video Streams Signaling Service is a intermediate service that
  establishes a
  communication channel for discovering peers, transmitting offers and answers in
  order to
  establish peer-to-peer connection in webRTC technology.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      client_limit_exceeded_exception() :: %{
        "Message" => String.t()
      }

  """
  @type client_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_ice_server_config_request() :: %{
        optional("ClientId") => String.t(),
        optional("Service") => list(any()),
        optional("Username") => String.t(),
        required("ChannelARN") => String.t()
      }

  """
  @type get_ice_server_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_ice_server_config_response() :: %{
        "IceServerList" => list(ice_server()())
      }

  """
  @type get_ice_server_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ice_server() :: %{
        "Password" => String.t(),
        "Ttl" => integer(),
        "Uris" => list(String.t()()),
        "Username" => String.t()
      }

  """
  @type ice_server() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_argument_exception() :: %{
        "Message" => String.t()
      }

  """
  @type invalid_argument_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_client_exception() :: %{
        "message" => String.t()
      }

  """
  @type invalid_client_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      not_authorized_exception() :: %{
        "Message" => String.t()
      }

  """
  @type not_authorized_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Message" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      send_alexa_offer_to_master_request() :: %{
        required("ChannelARN") => String.t(),
        required("MessagePayload") => String.t(),
        required("SenderClientId") => String.t()
      }

  """
  @type send_alexa_offer_to_master_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      send_alexa_offer_to_master_response() :: %{
        "Answer" => String.t()
      }

  """
  @type send_alexa_offer_to_master_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      session_expired_exception() :: %{
        "message" => String.t()
      }

  """
  @type session_expired_exception() :: %{String.t() => any()}

  @type get_ice_server_config_errors() ::
          session_expired_exception()
          | resource_not_found_exception()
          | not_authorized_exception()
          | invalid_client_exception()
          | invalid_argument_exception()
          | client_limit_exceeded_exception()

  @type send_alexa_offer_to_master_errors() ::
          resource_not_found_exception()
          | not_authorized_exception()
          | invalid_argument_exception()
          | client_limit_exceeded_exception()

  def metadata do
    %{
      api_version: "2019-12-04",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "kinesisvideo",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Kinesis Video Signaling",
      signature_version: "v4",
      signing_name: "kinesisvideo",
      target_prefix: nil
    }
  end

  @doc """
  Gets the Interactive Connectivity Establishment (ICE) server configuration
  information, including URIs, username, and password which can be used to
  configure the
  WebRTC connection.

  The ICE component uses this configuration information to setup the
  WebRTC connection, including authenticating with the Traversal Using Relays
  around NAT
  (TURN) relay server.

  TURN is a protocol that is used to improve the connectivity of peer-to-peer
  applications. By providing a cloud-based relay service, TURN ensures that a
  connection
  can be established even when one or more peers are incapable of a direct
  peer-to-peer
  connection. For more information, see [A REST API For Access To TURN
  Services](https://tools.ietf.org/html/draft-uberti-rtcweb-turn-rest-00).

  You can invoke this API to establish a fallback mechanism in case either of the
  peers
  is unable to establish a direct peer-to-peer connection over a signaling
  channel. You
  must specify either a signaling channel ARN or the client ID in order to invoke
  this
  API.
  """
  @spec get_ice_server_config(map(), get_ice_server_config_request(), list()) ::
          {:ok, get_ice_server_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_ice_server_config_errors()}
  def get_ice_server_config(%Client{} = client, input, options \\ []) do
    url_path = "/v1/get-ice-server-config"
    headers = []
    custom_headers = []
    query_params = []

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
  This API allows you to connect WebRTC-enabled devices with Alexa display
  devices.

  When
  invoked, it sends the Alexa Session Description Protocol (SDP) offer to the
  master peer.
  The offer is delivered as soon as the master is connected to the specified
  signaling
  channel. This API returns the SDP answer from the connected master. If the
  master is not
  connected to the signaling channel, redelivery requests are made until the
  message
  expires.
  """
  @spec send_alexa_offer_to_master(map(), send_alexa_offer_to_master_request(), list()) ::
          {:ok, send_alexa_offer_to_master_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, send_alexa_offer_to_master_errors()}
  def send_alexa_offer_to_master(%Client{} = client, input, options \\ []) do
    url_path = "/v1/send-alexa-offer-to-master"
    headers = []
    custom_headers = []
    query_params = []

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
