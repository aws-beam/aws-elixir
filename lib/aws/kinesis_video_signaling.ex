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
          {:ok, Poison.Parser.t(), Poison.Response.t()}
          | {:error, Poison.Parser.t()}
          | {:error, HTTPoison.Error.t()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "kinesisvideo"}
    host = build_host("kinesisvideo", client)
    url = host
    |> build_url(path, client)
    |> add_query(query)

    additional_headers = [{"Host", host}, {"Content-Type", "application/x-amz-json-1.1"}]
    headers = AWS.Request.add_headers(additional_headers, headers)

    payload = encode_payload(input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    perform_request(method, url, payload, headers, options, success_status_code)
  end

  defp perform_request(method, url, payload, headers, options, nil) do
    case HTTPoison.request(method, url, payload, headers, options) do
      {:ok, %HTTPoison.Response{status_code: 200, body: ""} = response} ->
        {:ok, response}

      {:ok, %HTTPoison.Response{status_code: status_code, body: body} = response}
      when status_code == 200 or status_code == 202 or status_code == 204 ->
        {:ok, Poison.Parser.parse!(body, %{}), response}

      {:ok, %HTTPoison.Response{body: body}} ->
        error = Poison.Parser.parse!(body, %{})
        {:error, error}

      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp perform_request(method, url, payload, headers, options, success_status_code) do
    case HTTPoison.request(method, url, payload, headers, options) do
      {:ok, %HTTPoison.Response{status_code: ^success_status_code, body: ""} = response} ->
        {:ok, %{}, response}

      {:ok, %HTTPoison.Response{status_code: ^success_status_code, body: body} = response} ->
        {:ok, Poison.Parser.parse!(body, %{}), response}

      {:ok, %HTTPoison.Response{body: body}} ->
        error = Poison.Parser.parse!(body, %{})
        {:error, error}

      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
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

  defp add_query(url, []) do
    url
  end
  defp add_query(url, query) do
    querystring = AWS.Util.encode_query(query)
    "#{url}?#{querystring}"
  end

  defp encode_payload(input) do
    if input != nil, do: Poison.Encoder.encode(input, %{}), else: ""
  end
end
