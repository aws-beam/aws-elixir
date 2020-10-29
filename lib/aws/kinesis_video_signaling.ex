# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.KinesisVideoSignaling do
  @moduledoc """
  Kinesis Video Streams Signaling Service is a intermediate service that
  establishes a communication channel for discovering peers, transmitting
  offers and answers in order to establish peer-to-peer connection in webRTC
  technology.
  """

  @doc """
  Gets the Interactive Connectivity Establishment (ICE) server configuration
  information, including URIs, username, and password which can be used to
  configure the WebRTC connection. The ICE component uses this configuration
  information to setup the WebRTC connection, including authenticating with
  the Traversal Using Relays around NAT (TURN) relay server.

  TURN is a protocol that is used to improve the connectivity of peer-to-peer
  applications. By providing a cloud-based relay service, TURN ensures that a
  connection can be established even when one or more peers are incapable of
  a direct peer-to-peer connection. For more information, see [A REST API For
  Access To TURN
  Services](https://tools.ietf.org/html/draft-uberti-rtcweb-turn-rest-00).

  You can invoke this API to establish a fallback mechanism in case either of
  the peers is unable to establish a direct peer-to-peer connection over a
  signaling channel. You must specify either a signaling channel ARN or the
  client ID in order to invoke this API.
  """
  def get_ice_server_config(client, input, options \\ []) do
    path_ = "/v1/get-ice-server-config"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  This API allows you to connect WebRTC-enabled devices with Alexa display
  devices. When invoked, it sends the Alexa Session Description Protocol
  (SDP) offer to the master peer. The offer is delivered as soon as the
  master is connected to the specified signaling channel. This API returns
  the SDP answer from the connected master. If the master is not connected to
  the signaling channel, redelivery requests are made until the message
  expires.
  """
  def send_alexa_offer_to_master(client, input, options \\ []) do
    path_ = "/v1/send-alexa-offer-to-master"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, map() | nil, map()}
          | {:error, term()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "kinesisvideo"}
    host = build_host("kinesisvideo", client)
    url = host
    |> build_url(path, client)
    |> add_query(query, client)

    additional_headers = [{"Host", host}, {"Content-Type", "application/x-amz-json-1.1"}]
    headers = AWS.Request.add_headers(additional_headers, headers)

    payload = encode!(client, input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    perform_request(client, method, url, payload, headers, options, success_status_code)
  end

  defp perform_request(client, method, url, payload, headers, options, success_status_code) do
    case AWS.Client.request(client, method, url, payload, headers, options) do
      {:ok, %{status_code: status_code, body: body} = response}
      when is_nil(success_status_code) and status_code in [200, 202, 204]
      when status_code == success_status_code ->
        body = if(body != "", do: decode!(client, body))
        {:ok, body, response}

      {:ok, response} ->
        {:error, {:unexpected_response, response}}

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

  defp encode!(client, payload, format \\ :json) do
    AWS.Client.encode!(client, payload, format)
  end

  defp decode!(client, payload) do
    AWS.Client.decode!(client, payload, :json)
  end
end
