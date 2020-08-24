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
          {:ok, Poison.Parser.t(), Poison.Response.t()}
          | {:error, Poison.Parser.t()}
          | {:error, HTTPoison.Error.t()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "execute-api"}
    host = build_host("participant.connect", client)
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
