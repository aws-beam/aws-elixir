# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.PinpointSMSVoice do
  @moduledoc """
  Pinpoint SMS and Voice Messaging public facing APIs
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2018-09-05",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "sms-voice.pinpoint",
      global?: false,
      protocol: "rest-json",
      service_id: "Pinpoint SMS Voice",
      signature_version: "v4",
      signing_name: "sms-voice",
      target_prefix: nil
    }
  end

  @doc """
  Create a new configuration set.

  After you create the configuration set, you can add one or more event
  destinations to it.
  """
  def create_configuration_set(%Client{} = client, input, options \\ []) do
    url_path = "/v1/sms-voice/configuration-sets"
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
  Create a new event destination in a configuration set.
  """
  def create_configuration_set_event_destination(
        %Client{} = client,
        configuration_set_name,
        input,
        options \\ []
      ) do
    url_path =
      "/v1/sms-voice/configuration-sets/#{URI.encode(configuration_set_name)}/event-destinations"

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
  Deletes an existing configuration set.
  """
  def delete_configuration_set(%Client{} = client, configuration_set_name, input, options \\ []) do
    url_path = "/v1/sms-voice/configuration-sets/#{URI.encode(configuration_set_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes an event destination in a configuration set.
  """
  def delete_configuration_set_event_destination(
        %Client{} = client,
        configuration_set_name,
        event_destination_name,
        input,
        options \\ []
      ) do
    url_path =
      "/v1/sms-voice/configuration-sets/#{URI.encode(configuration_set_name)}/event-destinations/#{
        URI.encode(event_destination_name)
      }"

    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Obtain information about an event destination, including the types of events it
  reports, the Amazon Resource Name (ARN) of the destination, and the name of the
  event destination.
  """
  def get_configuration_set_event_destinations(
        %Client{} = client,
        configuration_set_name,
        options \\ []
      ) do
    url_path =
      "/v1/sms-voice/configuration-sets/#{URI.encode(configuration_set_name)}/event-destinations"

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
  List all of the configuration sets associated with your Amazon Pinpoint account
  in the current region.
  """
  def list_configuration_sets(
        %Client{} = client,
        next_token \\ nil,
        page_size \\ nil,
        options \\ []
      ) do
    url_path = "/v1/sms-voice/configuration-sets"
    headers = []
    query_params = []

    query_params =
      if !is_nil(page_size) do
        [{"PageSize", page_size} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
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
  Create a new voice message and send it to a recipient's phone number.
  """
  def send_voice_message(%Client{} = client, input, options \\ []) do
    url_path = "/v1/sms-voice/voice/message"
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
  Update an event destination in a configuration set.

  An event destination is a location that you publish information about your voice
  calls to. For example, you can log an event to an Amazon CloudWatch destination
  when a call fails.
  """
  def update_configuration_set_event_destination(
        %Client{} = client,
        configuration_set_name,
        event_destination_name,
        input,
        options \\ []
      ) do
    url_path =
      "/v1/sms-voice/configuration-sets/#{URI.encode(configuration_set_name)}/event-destinations/#{
        URI.encode(event_destination_name)
      }"

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
