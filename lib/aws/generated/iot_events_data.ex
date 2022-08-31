# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.IoTEventsData do
  @moduledoc """
  IoT Events monitors your equipment or device fleets for failures or changes in
  operation, and triggers actions when such events occur.

  You can use IoT Events Data API commands to send inputs to detectors, list
  detectors, and view or update a detector's status.

  For more information, see [What is IoT Events?](https://docs.aws.amazon.com/iotevents/latest/developerguide/what-is-iotevents.html)
  in the *IoT Events Developer Guide*.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
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
  Acknowledges one or more alarms.

  The alarms change to the `ACKNOWLEDGED` state after you acknowledge them.
  """
  def batch_acknowledge_alarm(%Client{} = client, input, options \\ []) do
    url_path = "/alarms/acknowledge"
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
      202
    )
  end

  @doc """
  Deletes one or more detectors that were created.

  When a detector is deleted, its state will be cleared and the detector will be
  removed from the list of detectors. The deleted detector will no longer appear
  if referenced in the
  [ListDetectors](https://docs.aws.amazon.com/iotevents/latest/apireference/API_iotevents-data_ListDetectors.html)
  API call.
  """
  def batch_delete_detector(%Client{} = client, input, options \\ []) do
    url_path = "/detectors/delete"
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
  Disables one or more alarms.

  The alarms change to the `DISABLED` state after you disable them.
  """
  def batch_disable_alarm(%Client{} = client, input, options \\ []) do
    url_path = "/alarms/disable"
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
      202
    )
  end

  @doc """
  Enables one or more alarms.

  The alarms change to the `NORMAL` state after you enable them.
  """
  def batch_enable_alarm(%Client{} = client, input, options \\ []) do
    url_path = "/alarms/enable"
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
      202
    )
  end

  @doc """
  Sends a set of messages to the IoT Events system.

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
  Resets one or more alarms.

  The alarms return to the `NORMAL` state after you reset them.
  """
  def batch_reset_alarm(%Client{} = client, input, options \\ []) do
    url_path = "/alarms/reset"
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
      202
    )
  end

  @doc """
  Changes one or more alarms to the snooze mode.

  The alarms change to the `SNOOZE_DISABLED` state after you set them to the
  snooze mode.
  """
  def batch_snooze_alarm(%Client{} = client, input, options \\ []) do
    url_path = "/alarms/snooze"
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
      202
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
  Retrieves information about an alarm.
  """
  def describe_alarm(%Client{} = client, alarm_model_name, key_value \\ nil, options \\ []) do
    url_path = "/alarms/#{AWS.Util.encode_uri(alarm_model_name)}/keyValues/"
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
  Returns information about the specified detector (instance).
  """
  def describe_detector(%Client{} = client, detector_model_name, key_value \\ nil, options \\ []) do
    url_path = "/detectors/#{AWS.Util.encode_uri(detector_model_name)}/keyValues/"
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
  Lists one or more alarms.

  The operation returns only the metadata associated with each alarm.
  """
  def list_alarms(
        %Client{} = client,
        alarm_model_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/alarms/#{AWS.Util.encode_uri(alarm_model_name)}"
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
    url_path = "/detectors/#{AWS.Util.encode_uri(detector_model_name)}"
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
