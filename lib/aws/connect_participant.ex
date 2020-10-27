# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ConnectParticipant do
  @moduledoc """
  Amazon Connect is a cloud-based contact center solution that makes it easy
  to set up and manage a customer contact center and provide reliable
  customer engagement at any scale.

  Amazon Connect enables customer contacts through voice or chat.

  The APIs described here are used by chat participants, such as agents and
  customers.
  """

  @doc """
  Creates the participant's connection. Note that ParticipantToken is used
  for invoking this API instead of ConnectionToken.

  The participant token is valid for the lifetime of the participant – until
  the they are part of a contact.

  The response URL for `WEBSOCKET` Type has a connect expiry timeout of 100s.
  Clients must manually connect to the returned websocket URL and subscribe
  to the desired topic.

  For chat, you need to publish the following on the established websocket
  connection:

  `{"topic":"aws/subscribe","content":{"topics":["aws/chat"]}}`

  Upon websocket URL expiry, as specified in the response ConnectionExpiry
  parameter, clients need to call this API again to obtain a new websocket
  URL and perform the same steps as before.
  """
  def create_participant_connection(client, input, options \\ []) do
    path_ = "/participant/connection"
    {headers, input} =
      [
        {"ParticipantToken", "X-Amz-Bearer"},
      ]
      |> AWS.Request.build_params(input)
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Disconnects a participant. Note that ConnectionToken is used for invoking
  this API instead of ParticipantToken.
  """
  def disconnect_participant(client, input, options \\ []) do
    path_ = "/participant/disconnect"
    {headers, input} =
      [
        {"ConnectionToken", "X-Amz-Bearer"},
      ]
      |> AWS.Request.build_params(input)
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Retrieves a transcript of the session. Note that ConnectionToken is used
  for invoking this API instead of ParticipantToken.
  """
  def get_transcript(client, input, options \\ []) do
    path_ = "/participant/transcript"
    {headers, input} =
      [
        {"ConnectionToken", "X-Amz-Bearer"},
      ]
      |> AWS.Request.build_params(input)
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Sends an event. Note that ConnectionToken is used for invoking this API
  instead of ParticipantToken.
  """
  def send_event(client, input, options \\ []) do
    path_ = "/participant/event"
    {headers, input} =
      [
        {"ConnectionToken", "X-Amz-Bearer"},
      ]
      |> AWS.Request.build_params(input)
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Sends a message. Note that ConnectionToken is used for invoking this API
  instead of ParticipantToken.
  """
  def send_message(client, input, options \\ []) do
    path_ = "/participant/message"
    {headers, input} =
      [
        {"ConnectionToken", "X-Amz-Bearer"},
      ]
      |> AWS.Request.build_params(input)
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "execute-api"}
    host = build_host("participant.connect", client)
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
