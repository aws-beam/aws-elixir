# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.PinpointSMSVoice do
  @moduledoc """
  Pinpoint SMS and Voice Messaging public facing APIs
  """

  @doc """
  Create a new configuration set. After you create the configuration set, you
  can add one or more event destinations to it.
  """
  def create_configuration_set(client, input, options \\ []) do
    path_ = "/v1/sms-voice/configuration-sets"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Create a new event destination in a configuration set.
  """
  def create_configuration_set_event_destination(client, configuration_set_name, input, options \\ []) do
    path_ = "/v1/sms-voice/configuration-sets/#{URI.encode(configuration_set_name)}/event-destinations"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Deletes an existing configuration set.
  """
  def delete_configuration_set(client, configuration_set_name, input, options \\ []) do
    path_ = "/v1/sms-voice/configuration-sets/#{URI.encode(configuration_set_name)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 200)
  end

  @doc """
  Deletes an event destination in a configuration set.
  """
  def delete_configuration_set_event_destination(client, configuration_set_name, event_destination_name, input, options \\ []) do
    path_ = "/v1/sms-voice/configuration-sets/#{URI.encode(configuration_set_name)}/event-destinations/#{URI.encode(event_destination_name)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 200)
  end

  @doc """
  Obtain information about an event destination, including the types of
  events it reports, the Amazon Resource Name (ARN) of the destination, and
  the name of the event destination.
  """
  def get_configuration_set_event_destinations(client, configuration_set_name, options \\ []) do
    path_ = "/v1/sms-voice/configuration-sets/#{URI.encode(configuration_set_name)}/event-destinations"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  List all of the configuration sets associated with your Amazon Pinpoint
  account in the current region.
  """
  def list_configuration_sets(client, next_token \\ nil, page_size \\ nil, options \\ []) do
    path_ = "/v1/sms-voice/configuration-sets"
    headers = []
    query_ = []
    query_ = if !is_nil(page_size) do
      [{"PageSize", page_size} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"NextToken", next_token} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Create a new voice message and send it to a recipient's phone number.
  """
  def send_voice_message(client, input, options \\ []) do
    path_ = "/v1/sms-voice/voice/message"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Update an event destination in a configuration set. An event destination is
  a location that you publish information about your voice calls to. For
  example, you can log an event to an Amazon CloudWatch destination when a
  call fails.
  """
  def update_configuration_set_event_destination(client, configuration_set_name, event_destination_name, input, options \\ []) do
    path_ = "/v1/sms-voice/configuration-sets/#{URI.encode(configuration_set_name)}/event-destinations/#{URI.encode(event_destination_name)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "sms-voice"}
    host = build_host("sms-voice.pinpoint", client)
    url = host
    |> build_url(path, client)
    |> add_query(query)

    additional_headers = [{"Host", host}, {"Content-Type", "application/x-amz-json-1.1"}]
    headers = AWS.Request.add_headers(additional_headers, headers)

    payload = AWS.JSON.encode!(input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    AWS.HTTP.request(method, url, payload, headers, options, success_status_code)
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

  defp add_query(url, []) do
    url
  end
  defp add_query(url, query) do
    querystring = AWS.Util.encode_query(query)
    "#{url}?#{querystring}"
  end

  defp encode_payload(input) do
    if input != nil, do: AWS.JSON.encode!(input), else: ""
  end
end
