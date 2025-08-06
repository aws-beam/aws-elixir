# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.IoTEventsData do
  @moduledoc """
  IoT Events monitors your equipment or device fleets for failures or changes in
  operation, and
  triggers actions when such events occur.

  You can use IoT Events Data API commands to send inputs to
  detectors, list detectors, and view or update a detector's status.

  For more information, see [What is IoT Events?](https://docs.aws.amazon.com/iotevents/latest/developerguide/what-is-iotevents.html)
  in the
  *IoT Events Developer Guide*.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      internal_failure_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type internal_failure_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_reset_alarm_response() :: %{
        "errorEntries" => list(batch_alarm_action_error_entry())
      }

  """
  @type batch_reset_alarm_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_alarm_action_error_entry() :: %{
        "errorCode" => list(any()),
        "errorMessage" => String.t() | atom(),
        "requestId" => String.t() | atom()
      }

  """
  @type batch_alarm_action_error_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      detector_state() :: %{
        "stateName" => String.t() | atom(),
        "timers" => list(timer()),
        "variables" => list(variable())
      }

  """
  @type detector_state() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_snooze_alarm_request() :: %{
        required("snoozeActionRequests") => list(snooze_alarm_action_request())
      }

  """
  @type batch_snooze_alarm_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      alarm() :: %{
        "alarmModelName" => String.t() | atom(),
        "alarmModelVersion" => String.t() | atom(),
        "alarmState" => alarm_state(),
        "creationTime" => non_neg_integer(),
        "keyValue" => String.t() | atom(),
        "lastUpdateTime" => non_neg_integer(),
        "severity" => integer()
      }

  """
  @type alarm() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_alarms_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_alarms_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      acknowledge_action_configuration() :: %{
        "note" => String.t() | atom()
      }

  """
  @type acknowledge_action_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      timer() :: %{
        "name" => String.t() | atom(),
        "timestamp" => non_neg_integer()
      }

  """
  @type timer() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_detectors_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("stateName") => String.t() | atom()
      }

  """
  @type list_detectors_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disable_alarm_action_request() :: %{
        "alarmModelName" => String.t() | atom(),
        "keyValue" => String.t() | atom(),
        "note" => String.t() | atom(),
        "requestId" => String.t() | atom()
      }

  """
  @type disable_alarm_action_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_acknowledge_alarm_response() :: %{
        "errorEntries" => list(batch_alarm_action_error_entry())
      }

  """
  @type batch_acknowledge_alarm_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      reset_alarm_action_request() :: %{
        "alarmModelName" => String.t() | atom(),
        "keyValue" => String.t() | atom(),
        "note" => String.t() | atom(),
        "requestId" => String.t() | atom()
      }

  """
  @type reset_alarm_action_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_put_message_request() :: %{
        required("messages") => list(message())
      }

  """
  @type batch_put_message_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      enable_action_configuration() :: %{
        "note" => String.t() | atom()
      }

  """
  @type enable_action_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_delete_detector_response() :: %{
        "batchDeleteDetectorErrorEntries" => list(batch_delete_detector_error_entry())
      }

  """
  @type batch_delete_detector_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_detector_request() :: %{
        optional("keyValue") => String.t() | atom()
      }

  """
  @type describe_detector_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      alarm_summary() :: %{
        "alarmModelName" => String.t() | atom(),
        "alarmModelVersion" => String.t() | atom(),
        "creationTime" => non_neg_integer(),
        "keyValue" => String.t() | atom(),
        "lastUpdateTime" => non_neg_integer(),
        "stateName" => list(any())
      }

  """
  @type alarm_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      simple_rule_evaluation() :: %{
        "inputPropertyValue" => String.t() | atom(),
        "operator" => list(any()),
        "thresholdValue" => String.t() | atom()
      }

  """
  @type simple_rule_evaluation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_acknowledge_alarm_request() :: %{
        required("acknowledgeActionRequests") => list(acknowledge_alarm_action_request())
      }

  """
  @type batch_acknowledge_alarm_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      acknowledge_alarm_action_request() :: %{
        "alarmModelName" => String.t() | atom(),
        "keyValue" => String.t() | atom(),
        "note" => String.t() | atom(),
        "requestId" => String.t() | atom()
      }

  """
  @type acknowledge_alarm_action_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      detector_state_summary() :: %{
        "stateName" => String.t() | atom()
      }

  """
  @type detector_state_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      timer_definition() :: %{
        "name" => String.t() | atom(),
        "seconds" => integer()
      }

  """
  @type timer_definition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invalid_request_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type invalid_request_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_update_detector_request() :: %{
        required("detectors") => list(update_detector_request())
      }

  """
  @type batch_update_detector_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_snooze_alarm_response() :: %{
        "errorEntries" => list(batch_alarm_action_error_entry())
      }

  """
  @type batch_snooze_alarm_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      customer_action() :: %{
        "acknowledgeActionConfiguration" => acknowledge_action_configuration(),
        "actionName" => list(any()),
        "disableActionConfiguration" => disable_action_configuration(),
        "enableActionConfiguration" => enable_action_configuration(),
        "resetActionConfiguration" => reset_action_configuration(),
        "snoozeActionConfiguration" => snooze_action_configuration()
      }

  """
  @type customer_action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disable_action_configuration() :: %{
        "note" => String.t() | atom()
      }

  """
  @type disable_action_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      detector_state_definition() :: %{
        "stateName" => String.t() | atom(),
        "timers" => list(timer_definition()),
        "variables" => list(variable_definition())
      }

  """
  @type detector_state_definition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_update_detector_error_entry() :: %{
        "errorCode" => list(any()),
        "errorMessage" => String.t() | atom(),
        "messageId" => String.t() | atom()
      }

  """
  @type batch_update_detector_error_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      detector_summary() :: %{
        "creationTime" => non_neg_integer(),
        "detectorModelName" => String.t() | atom(),
        "detectorModelVersion" => String.t() | atom(),
        "keyValue" => String.t() | atom(),
        "lastUpdateTime" => non_neg_integer(),
        "state" => detector_state_summary()
      }

  """
  @type detector_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_unavailable_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type service_unavailable_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      variable() :: %{
        "name" => String.t() | atom(),
        "value" => String.t() | atom()
      }

  """
  @type variable() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_disable_alarm_request() :: %{
        required("disableActionRequests") => list(disable_alarm_action_request())
      }

  """
  @type batch_disable_alarm_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_alarms_response() :: %{
        "alarmSummaries" => list(alarm_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_alarms_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      reset_action_configuration() :: %{
        "note" => String.t() | atom()
      }

  """
  @type reset_action_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_alarm_response() :: %{
        "alarm" => alarm()
      }

  """
  @type describe_alarm_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_enable_alarm_request() :: %{
        required("enableActionRequests") => list(enable_alarm_action_request())
      }

  """
  @type batch_enable_alarm_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_reset_alarm_request() :: %{
        required("resetActionRequests") => list(reset_alarm_action_request())
      }

  """
  @type batch_reset_alarm_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_detector_response() :: %{
        "detector" => detector()
      }

  """
  @type describe_detector_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_delete_detector_request() :: %{
        required("detectors") => list(delete_detector_request())
      }

  """
  @type batch_delete_detector_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_detectors_response() :: %{
        "detectorSummaries" => list(detector_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_detectors_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      alarm_state() :: %{
        "customerAction" => customer_action(),
        "ruleEvaluation" => rule_evaluation(),
        "stateName" => list(any()),
        "systemEvent" => system_event()
      }

  """
  @type alarm_state() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      variable_definition() :: %{
        "name" => String.t() | atom(),
        "value" => String.t() | atom()
      }

  """
  @type variable_definition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_alarm_request() :: %{
        optional("keyValue") => String.t() | atom()
      }

  """
  @type describe_alarm_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      state_change_configuration() :: %{
        "triggerType" => list(any())
      }

  """
  @type state_change_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_put_message_error_entry() :: %{
        "errorCode" => list(any()),
        "errorMessage" => String.t() | atom(),
        "messageId" => String.t() | atom()
      }

  """
  @type batch_put_message_error_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      snooze_action_configuration() :: %{
        "note" => String.t() | atom(),
        "snoozeDuration" => integer()
      }

  """
  @type snooze_action_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      snooze_alarm_action_request() :: %{
        "alarmModelName" => String.t() | atom(),
        "keyValue" => String.t() | atom(),
        "note" => String.t() | atom(),
        "requestId" => String.t() | atom(),
        "snoozeDuration" => integer()
      }

  """
  @type snooze_alarm_action_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      system_event() :: %{
        "eventType" => list(any()),
        "stateChangeConfiguration" => state_change_configuration()
      }

  """
  @type system_event() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_update_detector_response() :: %{
        "batchUpdateDetectorErrorEntries" => list(batch_update_detector_error_entry())
      }

  """
  @type batch_update_detector_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_enable_alarm_response() :: %{
        "errorEntries" => list(batch_alarm_action_error_entry())
      }

  """
  @type batch_enable_alarm_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_delete_detector_error_entry() :: %{
        "errorCode" => list(any()),
        "errorMessage" => String.t() | atom(),
        "messageId" => String.t() | atom()
      }

  """
  @type batch_delete_detector_error_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_detector_request() :: %{
        "detectorModelName" => String.t() | atom(),
        "keyValue" => String.t() | atom(),
        "messageId" => String.t() | atom(),
        "state" => detector_state_definition()
      }

  """
  @type update_detector_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_put_message_response() :: %{
        "BatchPutMessageErrorEntries" => list(batch_put_message_error_entry())
      }

  """
  @type batch_put_message_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      rule_evaluation() :: %{
        "simpleRuleEvaluation" => simple_rule_evaluation()
      }

  """
  @type rule_evaluation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      detector() :: %{
        "creationTime" => non_neg_integer(),
        "detectorModelName" => String.t() | atom(),
        "detectorModelVersion" => String.t() | atom(),
        "keyValue" => String.t() | atom(),
        "lastUpdateTime" => non_neg_integer(),
        "state" => detector_state()
      }

  """
  @type detector() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      timestamp_value() :: %{
        "timeInMillis" => float()
      }

  """
  @type timestamp_value() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_disable_alarm_response() :: %{
        "errorEntries" => list(batch_alarm_action_error_entry())
      }

  """
  @type batch_disable_alarm_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      message() :: %{
        "inputName" => String.t() | atom(),
        "messageId" => String.t() | atom(),
        "payload" => binary(),
        "timestamp" => timestamp_value()
      }

  """
  @type message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_detector_request() :: %{
        "detectorModelName" => String.t() | atom(),
        "keyValue" => String.t() | atom(),
        "messageId" => String.t() | atom()
      }

  """
  @type delete_detector_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      enable_alarm_action_request() :: %{
        "alarmModelName" => String.t() | atom(),
        "keyValue" => String.t() | atom(),
        "note" => String.t() | atom(),
        "requestId" => String.t() | atom()
      }

  """
  @type enable_alarm_action_request() :: %{(String.t() | atom()) => any()}

  @type batch_acknowledge_alarm_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type batch_delete_detector_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type batch_disable_alarm_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type batch_enable_alarm_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type batch_put_message_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type batch_reset_alarm_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type batch_snooze_alarm_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type batch_update_detector_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type describe_alarm_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type describe_detector_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type list_alarms_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type list_detectors_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  def metadata do
    %{
      api_version: "2018-10-23",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "data.iotevents",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "IoT Events Data",
      signature_version: "v4",
      signing_name: "ioteventsdata",
      target_prefix: nil
    }
  end

  @doc """
  Acknowledges one or more alarms.

  The alarms change to the `ACKNOWLEDGED` state
  after you acknowledge them.
  """
  @spec batch_acknowledge_alarm(map(), batch_acknowledge_alarm_request(), list()) ::
          {:ok, batch_acknowledge_alarm_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_acknowledge_alarm_errors()}
  def batch_acknowledge_alarm(%Client{} = client, input, options \\ []) do
    url_path = "/alarms/acknowledge"
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
  @spec batch_delete_detector(map(), batch_delete_detector_request(), list()) ::
          {:ok, batch_delete_detector_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_delete_detector_errors()}
  def batch_delete_detector(%Client{} = client, input, options \\ []) do
    url_path = "/detectors/delete"
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
  Disables one or more alarms.

  The alarms change to the `DISABLED` state after
  you disable them.
  """
  @spec batch_disable_alarm(map(), batch_disable_alarm_request(), list()) ::
          {:ok, batch_disable_alarm_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_disable_alarm_errors()}
  def batch_disable_alarm(%Client{} = client, input, options \\ []) do
    url_path = "/alarms/disable"
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
      202
    )
  end

  @doc """
  Enables one or more alarms.

  The alarms change to the `NORMAL` state after you
  enable them.
  """
  @spec batch_enable_alarm(map(), batch_enable_alarm_request(), list()) ::
          {:ok, batch_enable_alarm_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_enable_alarm_errors()}
  def batch_enable_alarm(%Client{} = client, input, options \\ []) do
    url_path = "/alarms/enable"
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
      202
    )
  end

  @doc """
  Sends a set of messages to the IoT Events system.

  Each message payload is transformed into
  the input you specify (`"inputName"`) and ingested into any detectors that
  monitor
  that input. If multiple messages are sent, the order in which the messages are
  processed isn't
  guaranteed. To guarantee ordering, you must send messages one at a time and wait
  for a
  successful response.
  """
  @spec batch_put_message(map(), batch_put_message_request(), list()) ::
          {:ok, batch_put_message_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_put_message_errors()}
  def batch_put_message(%Client{} = client, input, options \\ []) do
    url_path = "/inputs/messages"
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
  Resets one or more alarms.

  The alarms return to the `NORMAL` state after you
  reset them.
  """
  @spec batch_reset_alarm(map(), batch_reset_alarm_request(), list()) ::
          {:ok, batch_reset_alarm_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_reset_alarm_errors()}
  def batch_reset_alarm(%Client{} = client, input, options \\ []) do
    url_path = "/alarms/reset"
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
      202
    )
  end

  @doc """
  Changes one or more alarms to the snooze mode.

  The alarms change to the
  `SNOOZE_DISABLED` state after you set them to the snooze mode.
  """
  @spec batch_snooze_alarm(map(), batch_snooze_alarm_request(), list()) ::
          {:ok, batch_snooze_alarm_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_snooze_alarm_errors()}
  def batch_snooze_alarm(%Client{} = client, input, options \\ []) do
    url_path = "/alarms/snooze"
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
      202
    )
  end

  @doc """
  Updates the state, variable values, and timer settings of one or more detectors
  (instances) of a specified detector model.
  """
  @spec batch_update_detector(map(), batch_update_detector_request(), list()) ::
          {:ok, batch_update_detector_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_update_detector_errors()}
  def batch_update_detector(%Client{} = client, input, options \\ []) do
    url_path = "/detectors"
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
  Retrieves information about an alarm.
  """
  @spec describe_alarm(map(), String.t() | atom(), String.t() | atom() | nil, list()) ::
          {:ok, describe_alarm_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_alarm_errors()}
  def describe_alarm(%Client{} = client, alarm_model_name, key_value \\ nil, options \\ []) do
    url_path = "/alarms/#{AWS.Util.encode_uri(alarm_model_name)}/keyValues"
    headers = []
    query_params = []

    query_params =
      if !is_nil(key_value) do
        [{"keyValue", key_value} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about the specified detector (instance).
  """
  @spec describe_detector(map(), String.t() | atom(), String.t() | atom() | nil, list()) ::
          {:ok, describe_detector_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_detector_errors()}
  def describe_detector(%Client{} = client, detector_model_name, key_value \\ nil, options \\ []) do
    url_path = "/detectors/#{AWS.Util.encode_uri(detector_model_name)}/keyValues"
    headers = []
    query_params = []

    query_params =
      if !is_nil(key_value) do
        [{"keyValue", key_value} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists one or more alarms.

  The operation returns only the metadata associated with each
  alarm.
  """
  @spec list_alarms(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_alarms_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_alarms_errors()}
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists detectors (the instances of a detector model).
  """
  @spec list_detectors(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_detectors_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_detectors_errors()}
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end
end
