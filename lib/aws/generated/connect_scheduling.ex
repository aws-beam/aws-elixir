# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ConnectScheduling do
  @moduledoc """
    * [Scheduling actions](https://docs.aws.amazon.com/connect/latest/APIReference/API_Operations_Amazon_Connect_Scheduling.html)

    * [Scheduling data types](https://docs.aws.amazon.com/connect/latest/APIReference/API_Types_Amazon_Connect_Scheduling.html)

  Use the Amazon Connect Scheduling API to work programmatically with Connect
  Customer forecasting, capacity planning, and scheduling, and to integrate these
  capabilities with your own systems.

  In the Connect Customer admin website, you use them to forecast contact volume,
  plan capacity, and create and manage agent schedules.

  For more information, see [Forecasting & agent scheduling](https://docs.aws.amazon.com/connect/latest/adminguide/forecasting-capacity-planning-scheduling.html)
  in the *Connect Customer Administrator Guide*.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      approve_time_off_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("RuleFailureAction") => list(any())
      }

  """
  @type approve_time_off_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      approve_time_off_response() :: %{}

  """
  @type approve_time_off_response() :: %{}

  @typedoc """

  ## Example:

      cancel_time_off_request() :: %{
        optional("Description") => String.t() | atom()
      }

  """
  @type cancel_time_off_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cancel_time_off_response() :: %{}

  """
  @type cancel_time_off_response() :: %{}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "Message" => String.t() | atom(),
        "ResourceId" => [String.t() | atom()],
        "ResourceType" => [String.t() | atom()]
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_time_off_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        optional("Description") => String.t() | atom(),
        optional("RuleFailureAction") => list(any()),
        required("ApprovalType") => list(any()),
        required("EndAt") => [non_neg_integer()],
        required("ShiftActivityId") => String.t() | atom(),
        required("StartAt") => [non_neg_integer()]
      }

  """
  @type create_time_off_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_time_off_response() :: %{
        "TimeOffId" => String.t() | atom()
      }

  """
  @type create_time_off_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      duration() :: %{
        "Unit" => list(any()),
        "Value" => integer()
      }

  """
  @type duration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_time_off_request() :: %{}

  """
  @type get_time_off_request() :: %{}

  @typedoc """

  ## Example:

      get_time_off_response() :: %{
        "CreatedAt" => [non_neg_integer()],
        "CreatedBy" => list(),
        "Description" => String.t() | atom(),
        "EndAt" => [non_neg_integer()],
        "ShiftActivityId" => String.t() | atom(),
        "StartAt" => [non_neg_integer()],
        "Status" => list(any()),
        "TimeOffId" => String.t() | atom(),
        "UpdatedAt" => [non_neg_integer()],
        "UpdatedBy" => list(),
        "UserId" => String.t() | atom(),
        "ValidationResults" => list(time_off_validation_result())
      }

  """
  @type get_time_off_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "Message" => String.t() | atom(),
        "RetryAfterSeconds" => [integer()]
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_time_off_balance_request() :: %{
        required("Balance") => duration()
      }

  """
  @type put_time_off_balance_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_time_off_balance_response() :: %{}

  """
  @type put_time_off_balance_response() :: %{}

  @typedoc """

  ## Example:

      reject_time_off_request() :: %{
        optional("Description") => String.t() | atom()
      }

  """
  @type reject_time_off_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      reject_time_off_response() :: %{}

  """
  @type reject_time_off_response() :: %{}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Message" => String.t() | atom(),
        "ResourceId" => [String.t() | atom()],
        "ResourceType" => [String.t() | atom()]
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "Message" => String.t() | atom(),
        "QuotaCode" => [String.t() | atom()],
        "ResourceId" => [String.t() | atom()],
        "ResourceType" => [String.t() | atom()],
        "ServiceCode" => [String.t() | atom()]
      }

  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "Message" => String.t() | atom(),
        "QuotaCode" => [String.t() | atom()],
        "RetryAfterSeconds" => [integer()],
        "ServiceCode" => [String.t() | atom()]
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      time_off_validation_result() :: %{
        "Code" => list(any()),
        "Severity" => list(any())
      }

  """
  @type time_off_validation_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "FieldList" => list(validation_exception_field()),
        "Message" => String.t() | atom(),
        "Reason" => list(any())
      }

  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception_field() :: %{
        "Message" => [String.t() | atom()],
        "Name" => [String.t() | atom()]
      }

  """
  @type validation_exception_field() :: %{(String.t() | atom()) => any()}

  @type approve_time_off_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type cancel_time_off_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type create_time_off_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type get_time_off_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type put_time_off_balance_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type reject_time_off_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  def metadata do
    %{
      api_version: "2026-07-16",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "connect",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "ConnectScheduling",
      signature_version: "v4",
      signing_name: "connect",
      target_prefix: nil
    }
  end

  @doc """
  Approves a time off request.

  Evaluates agent time off balances and group time off allowances before
  approving. `RuleFailureAction` controls what happens when these evaluations
  fail. The request is rejected with `CONFLICTING_TIME_OFF_REQUEST` if it overlaps
  another time off request for the user that is `APPROVED` or being approved.

  The time off request is processed asynchronously, so a successful call doesn't
  indicate the final status. Read the resulting status with `GetTimeOff` or from
  the time off state-change events.

  Approving an `APPROVED` request succeeds without a change. Approving a
  `REJECTED` request evaluates the rules again, so it can end `APPROVED` or
  `REJECTED`, and repeating the call can give a different result. Check the status
  with `GetTimeOff` before you retry.

  Returns `ConflictException` if the request is `PENDING` or `CANCELLED`.
  `PENDING` means Connect Customer is still processing the request asynchronously.
  Wait until `GetTimeOff` returns a status other than `PENDING`, and then retry.

  When the approval succeeds, Connect Customer cancels any overtime or voluntary
  time off activity that overlaps the approved window.

  Connect Customer doesn't check whether the principal that calls this operation
  supervises the user. The staffing group's approval settings also don't apply.
  IAM permissions are the only control. If you allow a principal to call this
  operation, that principal can send `RuleFailureAction` `OVERRIDE` and approve a
  request past failed rules. Grant permission for this operation only to
  principals that you trust to override time off rules.
  """
  @spec approve_time_off(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          approve_time_off_request(),
          list()
        ) ::
          {:ok, approve_time_off_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, approve_time_off_errors()}
  def approve_time_off(
        %Client{} = client,
        instance_id,
        time_off_id,
        user_id,
        input,
        options \\ []
      ) do
    url_path =
      "/scheduling/instances/#{AWS.Util.encode_uri(instance_id)}/users/#{AWS.Util.encode_uri(user_id)}/timeoffs/#{AWS.Util.encode_uri(time_off_id)}/approve"

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
  Cancels a time off request.

  Cancelling a `CANCELLED` request succeeds without a change. Returns
  `ConflictException` if the request is `PENDING`, which means Connect Customer is
  still processing the request asynchronously. Wait until `GetTimeOff` returns a
  status other than `PENDING`, and then retry.
  """
  @spec cancel_time_off(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          cancel_time_off_request(),
          list()
        ) ::
          {:ok, cancel_time_off_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, cancel_time_off_errors()}
  def cancel_time_off(%Client{} = client, instance_id, time_off_id, user_id, input, options \\ []) do
    url_path =
      "/scheduling/instances/#{AWS.Util.encode_uri(instance_id)}/users/#{AWS.Util.encode_uri(user_id)}/timeoffs/#{AWS.Util.encode_uri(time_off_id)}/cancel"

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
  Creates a time off request for a user.

  You don't provide a status, because Connect Customer owns the request lifecycle.
  To get the decided status, call `GetTimeOff` or use the time off state-change
  events.

  `ApprovalType` controls who approves the request. You can specify one of the
  following values:

    * `AWAIT_APPROVAL`: the request waits in `AWAITING_APPROVAL` until
  you call `ApproveTimeOff` or `RejectTimeOff`. Rule evaluation and the overlap
  check run at approval, not at creation. A waiting request doesn't reserve its
  window, so another request for the same window can be approved first.

    * `AUTOMATIC`: Connect Customer evaluates the rules (time off
  balances and group allowances) and decides the request. The request can be
  `PENDING` while Connect Customer decides, and then ends `APPROVED` or
  `REJECTED`. If it overlaps another time off request for the user, the requested
  time off ends `REJECTED` with `CONFLICTING_TIME_OFF_REQUEST`. It also ends
  `REJECTED` if it overlaps overtime or voluntary time off. If the whole window is
  in the past, Connect Customer records failed rules as `WARNING` and doesn't
  reject the request, whatever the `RuleFailureAction`.

  The staffing group's *Supervisor approval needed* setting doesn't apply to this
  operation. `ApprovalType` alone decides whether the request waits for approval.
  The operation fails with `ValidationException` on `UserId` in the following
  cases:

    * The user isn't in a staffing group, or the staffing group isn't
  associated with a forecast group.

    * Time off isn't
  [enabled](https://docs.aws.amazon.com/connect/latest/adminguide/enable-to.html) for the user's staffing group, or the user's staff rules don't allow time off.

  To change the dates of a request, cancel it with `CancelTimeOff` and create a
  new request. The new request has a new `TimeOffId`.

  Connect Customer doesn't check whether the principal that calls this operation
  supervises the user. The staffing group's approval settings also don't apply.
  IAM permissions are the only control. If you allow a principal to call this
  operation, that principal can send `ApprovalType` `AUTOMATIC` with
  `RuleFailureAction` `OVERRIDE` and approve a request past failed rules. Grant
  permission for this operation only to principals that you trust to override time
  off rules.

  For information about time off in the Connect Customer admin website, see [Time
  off
  management](https://docs.aws.amazon.com/connect/latest/adminguide/scheduling-time-off.html)
  in the *Connect Customer Administrator Guide*.
  """
  @spec create_time_off(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          create_time_off_request(),
          list()
        ) ::
          {:ok, create_time_off_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_time_off_errors()}
  def create_time_off(%Client{} = client, instance_id, user_id, input, options \\ []) do
    url_path =
      "/scheduling/instances/#{AWS.Util.encode_uri(instance_id)}/users/#{AWS.Util.encode_uri(user_id)}/timeoffs"

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
  Returns a time off request, including its current status and validation results.
  """
  @spec get_time_off(map(), String.t() | atom(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_time_off_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_time_off_errors()}
  def get_time_off(%Client{} = client, instance_id, time_off_id, user_id, options \\ []) do
    url_path =
      "/scheduling/instances/#{AWS.Util.encode_uri(instance_id)}/users/#{AWS.Util.encode_uri(user_id)}/timeoffs/#{AWS.Util.encode_uri(time_off_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Sets the time off balance for one user and shift activity.

  The value replaces the existing balance rather than adjusting it, so you can
  safely retry the call. This operation can't remove a balance. To remove one,
  upload a blank balance in the Connect Customer admin website. For more
  information, see [Import an agent's time off balance](https://docs.aws.amazon.com/connect/latest/adminguide/upload-timeoff-balance.html)
  in the *Connect Customer Administrator Guide*.
  """
  @spec put_time_off_balance(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          put_time_off_balance_request(),
          list()
        ) ::
          {:ok, put_time_off_balance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_time_off_balance_errors()}
  def put_time_off_balance(
        %Client{} = client,
        instance_id,
        shift_activity_id,
        user_id,
        input,
        options \\ []
      ) do
    url_path =
      "/scheduling/instances/#{AWS.Util.encode_uri(instance_id)}/users/#{AWS.Util.encode_uri(user_id)}/timeoff-balances/#{AWS.Util.encode_uri(shift_activity_id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Rejects a time off request.

  Rejecting a `REJECTED` request succeeds without a change. Returns
  `ConflictException` if the request is `PENDING` or `CANCELLED`. `PENDING` means
  Connect Customer is still processing the request asynchronously. Wait until
  `GetTimeOff` returns a status other than `PENDING`, and then retry.
  """
  @spec reject_time_off(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          reject_time_off_request(),
          list()
        ) ::
          {:ok, reject_time_off_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, reject_time_off_errors()}
  def reject_time_off(%Client{} = client, instance_id, time_off_id, user_id, input, options \\ []) do
    url_path =
      "/scheduling/instances/#{AWS.Util.encode_uri(instance_id)}/users/#{AWS.Util.encode_uri(user_id)}/timeoffs/#{AWS.Util.encode_uri(time_off_id)}/reject"

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
