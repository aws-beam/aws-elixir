# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.IoTEventsData do
  @moduledoc """
  AWS IoT Events monitors your equipment or device fleets for failures or changes
  in operation, and triggers actions when such events occur.

  AWS IoT Events Data API commands enable you to send inputs to detectors, list
  detectors, and view or update a detector's status.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2018-10-23",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "data.iotevents",
      global?: false,
      protocol: "rest-json",
      service_id: "IoT Events Data",
      signature_version: "v4",
      signing_name: "ioteventsdata",
      target_prefix: nil
    }
  end

  @doc """
  Sends a set of messages to the AWS IoT Events system.

  Each message payload is transformed into the input you specify (`"inputName"`)
  and ingested into any detectors that monitor that input. If multiple messages
  are sent, the order in which the messages are processed isn't guaranteed. To
  guarantee ordering, you must send messages one at a time and wait for a
  successful response.
  """
  def batch_put_message(%Client{} = client, input, options \\ []) do
    url_path = "/inputs/messages"
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
  Updates the state, variable values, and timer settings of one or more detectors
  (instances) of a specified detector model.
  """
  def batch_update_detector(%Client{} = client, input, options \\ []) do
    url_path = "/detectors"
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
  Returns information about the specified detector (instance).
  """
  def describe_detector(%Client{} = client, detector_model_name, key_value \\ nil, options \\ []) do
    url_path = "/detectors/#{URI.encode(detector_model_name)}/keyValues/"
    headers = []
    query_params = []

    query_params =
      if !is_nil(key_value) do
        [{"keyValue", key_value} | query_params]
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
  Lists detectors (the instances of a detector model).
  """
  def list_detectors(
        %Client{} = client,
        detector_model_name,
        max_results \\ nil,
        next_token \\ nil,
        state_name \\ nil,
        options \\ []
      ) do
    url_path = "/detectors/#{URI.encode(detector_model_name)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(state_name) do
        [{"stateName", state_name} | query_params]
      else
        query_params
      end

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
end