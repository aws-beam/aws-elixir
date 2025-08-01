# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ARCZonalShift do
  @moduledoc """
  Welcome to the API Reference Guide for zonal shift and zonal autoshift in Amazon
  Application Recovery Controller (ARC).

  You can start a zonal shift to move traffic for a load balancer resource away
  from an Availability Zone to help your application recover quickly from an
  impairment in an Availability Zone. For example, you can recover your
  application from a developer's bad code deployment or from an Amazon Web
  Services infrastructure failure in a single Availability Zone.

  You can also configure zonal autoshift for supported load balancer resources.
  Zonal autoshift is a capability in ARC where you authorize Amazon Web Services
  to shift away application resource traffic from an Availability Zone during
  events, on your behalf, to help reduce your time to recovery. Amazon Web
  Services starts an autoshift when internal telemetry indicates that there is an
  Availability Zone impairment that could potentially impact customers.

  For more information about using zonal shift and zonal autoshift, see the
  [Amazon Application Recovery Controller Developer Guide](https://docs.aws.amazon.com/r53recovery/latest/dg/what-is-route53-recovery.html).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      list_managed_resources_response() :: %{
        "items" => list(managed_resource_summary()),
        "nextToken" => [String.t() | Atom.t()]
      }

  """
  @type list_managed_resources_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_managed_resource_response() :: %{
        "appliedWeights" => map(),
        "arn" => String.t() | Atom.t(),
        "autoshifts" => list(autoshift_in_resource()),
        "name" => String.t() | Atom.t(),
        "practiceRunConfiguration" => practice_run_configuration(),
        "zonalAutoshiftStatus" => list(any()),
        "zonalShifts" => list(zonal_shift_in_resource())
      }

  """
  @type get_managed_resource_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_zonal_shifts_response() :: %{
        "items" => list(zonal_shift_summary()),
        "nextToken" => [String.t() | Atom.t()]
      }

  """
  @type list_zonal_shifts_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_zonal_shift_request() :: %{
        optional("comment") => String.t() | Atom.t(),
        optional("expiresIn") => String.t() | Atom.t()
      }

  """
  @type update_zonal_shift_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      start_practice_run_request() :: %{
        required("awayFrom") => String.t() | Atom.t(),
        required("comment") => String.t() | Atom.t(),
        required("resourceIdentifier") => String.t() | Atom.t()
      }

  """
  @type start_practice_run_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      autoshift_summary() :: %{
        "awayFrom" => String.t() | Atom.t(),
        "endTime" => non_neg_integer(),
        "startTime" => non_neg_integer(),
        "status" => list(any())
      }

  """
  @type autoshift_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_autoshifts_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => [String.t() | Atom.t()],
        optional("status") => list(any())
      }

  """
  @type list_autoshifts_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      zonal_shift() :: %{
        required("awayFrom") => String.t() | Atom.t(),
        required("comment") => String.t() | Atom.t(),
        required("expiryTime") => non_neg_integer(),
        required("resourceIdentifier") => String.t() | Atom.t(),
        required("startTime") => non_neg_integer(),
        required("status") => list(any()),
        required("zonalShiftId") => String.t() | Atom.t()
      }

  """
  @type zonal_shift() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      autoshift_in_resource() :: %{
        "appliedStatus" => list(any()),
        "awayFrom" => String.t() | Atom.t(),
        "startTime" => non_neg_integer()
      }

  """
  @type autoshift_in_resource() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      managed_resource_summary() :: %{
        "appliedWeights" => map(),
        "arn" => String.t() | Atom.t(),
        "autoshifts" => list(autoshift_in_resource()),
        "availabilityZones" => list(String.t() | Atom.t()),
        "name" => String.t() | Atom.t(),
        "practiceRunStatus" => list(any()),
        "zonalAutoshiftStatus" => list(any()),
        "zonalShifts" => list(zonal_shift_in_resource())
      }

  """
  @type managed_resource_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_zonal_autoshift_configuration_request() :: %{
        required("zonalAutoshiftStatus") => list(any())
      }

  """
  @type update_zonal_autoshift_configuration_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      zonal_shift_summary() :: %{
        "awayFrom" => String.t() | Atom.t(),
        "comment" => String.t() | Atom.t(),
        "expiryTime" => non_neg_integer(),
        "practiceRunOutcome" => list(any()),
        "resourceIdentifier" => String.t() | Atom.t(),
        "shiftType" => list(any()),
        "startTime" => non_neg_integer(),
        "status" => list(any()),
        "zonalShiftId" => String.t() | Atom.t()
      }

  """
  @type zonal_shift_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      cancel_zonal_shift_request() :: %{}

  """
  @type cancel_zonal_shift_request() :: %{}

  @typedoc """

  ## Example:

      update_practice_run_configuration_request() :: %{
        optional("blockedDates") => list(String.t() | Atom.t()),
        optional("blockedWindows") => list(String.t() | Atom.t()),
        optional("blockingAlarms") => list(control_condition()),
        optional("outcomeAlarms") => list(control_condition())
      }

  """
  @type update_practice_run_configuration_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => [String.t() | Atom.t()],
        "reason" => list(any()),
        "zonalShiftId" => [String.t() | Atom.t()]
      }

  """
  @type conflict_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => [String.t() | Atom.t()]
      }

  """
  @type resource_not_found_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      zonal_shift_in_resource() :: %{
        "appliedStatus" => list(any()),
        "awayFrom" => String.t() | Atom.t(),
        "comment" => String.t() | Atom.t(),
        "expiryTime" => non_neg_integer(),
        "practiceRunOutcome" => list(any()),
        "resourceIdentifier" => String.t() | Atom.t(),
        "shiftType" => list(any()),
        "startTime" => non_neg_integer(),
        "zonalShiftId" => String.t() | Atom.t()
      }

  """
  @type zonal_shift_in_resource() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_zonal_shifts_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => [String.t() | Atom.t()],
        optional("resourceIdentifier") => String.t() | Atom.t(),
        optional("status") => list(any())
      }

  """
  @type list_zonal_shifts_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_managed_resources_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => [String.t() | Atom.t()]
      }

  """
  @type list_managed_resources_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_zonal_autoshift_configuration_response() :: %{
        "resourceIdentifier" => String.t() | Atom.t(),
        "zonalAutoshiftStatus" => list(any())
      }

  """
  @type update_zonal_autoshift_configuration_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      control_condition() :: %{
        "alarmIdentifier" => String.t() | Atom.t(),
        "type" => list(any())
      }

  """
  @type control_condition() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_autoshift_observer_notification_status_response() :: %{
        "status" => list(any())
      }

  """
  @type update_autoshift_observer_notification_status_response() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      create_practice_run_configuration_response() :: %{
        "arn" => String.t() | Atom.t(),
        "name" => String.t() | Atom.t(),
        "practiceRunConfiguration" => practice_run_configuration(),
        "zonalAutoshiftStatus" => list(any())
      }

  """
  @type create_practice_run_configuration_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => [String.t() | Atom.t()]
      }

  """
  @type internal_server_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_autoshift_observer_notification_status_request() :: %{
        required("status") => list(any())
      }

  """
  @type update_autoshift_observer_notification_status_request() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      cancel_practice_run_request() :: %{}

  """
  @type cancel_practice_run_request() :: %{}

  @typedoc """

  ## Example:

      get_autoshift_observer_notification_status_response() :: %{
        "status" => list(any())
      }

  """
  @type get_autoshift_observer_notification_status_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_managed_resource_request() :: %{}

  """
  @type get_managed_resource_request() :: %{}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => [String.t() | Atom.t()]
      }

  """
  @type access_denied_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      start_zonal_shift_request() :: %{
        required("awayFrom") => String.t() | Atom.t(),
        required("comment") => String.t() | Atom.t(),
        required("expiresIn") => String.t() | Atom.t(),
        required("resourceIdentifier") => String.t() | Atom.t()
      }

  """
  @type start_zonal_shift_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_practice_run_configuration_request() :: %{}

  """
  @type delete_practice_run_configuration_request() :: %{}

  @typedoc """

  ## Example:

      list_autoshifts_response() :: %{
        "items" => list(autoshift_summary()),
        "nextToken" => [String.t() | Atom.t()]
      }

  """
  @type list_autoshifts_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => [String.t() | Atom.t()],
        "reason" => list(any())
      }

  """
  @type validation_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => [String.t() | Atom.t()]
      }

  """
  @type throttling_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_practice_run_configuration_response() :: %{
        "arn" => String.t() | Atom.t(),
        "name" => String.t() | Atom.t(),
        "practiceRunConfiguration" => practice_run_configuration(),
        "zonalAutoshiftStatus" => list(any())
      }

  """
  @type update_practice_run_configuration_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_practice_run_configuration_request() :: %{
        optional("blockedDates") => list(String.t() | Atom.t()),
        optional("blockedWindows") => list(String.t() | Atom.t()),
        optional("blockingAlarms") => list(control_condition()),
        required("outcomeAlarms") => list(control_condition()),
        required("resourceIdentifier") => String.t() | Atom.t()
      }

  """
  @type create_practice_run_configuration_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      start_practice_run_response() :: %{
        "awayFrom" => String.t() | Atom.t(),
        "comment" => String.t() | Atom.t(),
        "expiryTime" => non_neg_integer(),
        "resourceIdentifier" => String.t() | Atom.t(),
        "startTime" => non_neg_integer(),
        "status" => list(any()),
        "zonalShiftId" => String.t() | Atom.t()
      }

  """
  @type start_practice_run_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_autoshift_observer_notification_status_request() :: %{}

  """
  @type get_autoshift_observer_notification_status_request() :: %{}

  @typedoc """

  ## Example:

      practice_run_configuration() :: %{
        "blockedDates" => list(String.t() | Atom.t()),
        "blockedWindows" => list(String.t() | Atom.t()),
        "blockingAlarms" => list(control_condition()),
        "outcomeAlarms" => list(control_condition())
      }

  """
  @type practice_run_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_practice_run_configuration_response() :: %{
        "arn" => String.t() | Atom.t(),
        "name" => String.t() | Atom.t(),
        "zonalAutoshiftStatus" => list(any())
      }

  """
  @type delete_practice_run_configuration_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      cancel_practice_run_response() :: %{
        "awayFrom" => String.t() | Atom.t(),
        "comment" => String.t() | Atom.t(),
        "expiryTime" => non_neg_integer(),
        "resourceIdentifier" => String.t() | Atom.t(),
        "startTime" => non_neg_integer(),
        "status" => list(any()),
        "zonalShiftId" => String.t() | Atom.t()
      }

  """
  @type cancel_practice_run_response() :: %{String.t() | Atom.t() => any()}

  @type cancel_practice_run_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type cancel_zonal_shift_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_practice_run_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_practice_run_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_autoshift_observer_notification_status_errors() ::
          throttling_exception() | access_denied_exception() | internal_server_exception()

  @type get_managed_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_autoshifts_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_managed_resources_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_zonal_shifts_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type start_practice_run_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type start_zonal_shift_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_autoshift_observer_notification_status_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type update_practice_run_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_zonal_autoshift_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_zonal_shift_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2022-10-30",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "arc-zonal-shift",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "ARC Zonal Shift",
      signature_version: "v4",
      signing_name: "arc-zonal-shift",
      target_prefix: nil
    }
  end

  @doc """
  Cancel an in-progress practice run zonal shift in Amazon Application Recovery
  Controller.
  """
  @spec cancel_practice_run(map(), String.t() | Atom.t(), cancel_practice_run_request(), list()) ::
          {:ok, cancel_practice_run_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, cancel_practice_run_errors()}
  def cancel_practice_run(%Client{} = client, zonal_shift_id, input, options \\ []) do
    url_path = "/practiceruns/#{AWS.Util.encode_uri(zonal_shift_id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Cancel a zonal shift in Amazon Application Recovery Controller.

  To cancel the zonal shift, specify the zonal shift ID.

  A zonal shift can be one that you've started for a resource in your Amazon Web
  Services account in an Amazon Web Services Region, or it can be a zonal shift
  started by a practice run with zonal autoshift.
  """
  @spec cancel_zonal_shift(map(), String.t() | Atom.t(), cancel_zonal_shift_request(), list()) ::
          {:ok, zonal_shift(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, cancel_zonal_shift_errors()}
  def cancel_zonal_shift(%Client{} = client, zonal_shift_id, input, options \\ []) do
    url_path = "/zonalshifts/#{AWS.Util.encode_uri(zonal_shift_id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  A practice run configuration for zonal autoshift is required when you enable
  zonal autoshift.

  A practice run configuration includes specifications for blocked dates and
  blocked time windows, and for Amazon CloudWatch alarms that you create to use
  with practice runs. The alarms that you specify are an *outcome alarm*, to
  monitor application health during practice runs and, optionally, a *blocking
  alarm*, to block practice runs from starting.

  When a resource has a practice run configuration, ARC starts zonal shifts for
  the resource weekly, to shift traffic for practice runs. Practice runs help you
  to ensure that shifting away traffic from an Availability Zone during an
  autoshift is safe for your application.

  For more information, see [ Considerations when you configure zonal autoshift](https://docs.aws.amazon.com/r53recovery/latest/dg/arc-zonal-autoshift.considerations.html)
  in the Amazon Application Recovery Controller Developer Guide.
  """
  @spec create_practice_run_configuration(
          map(),
          create_practice_run_configuration_request(),
          list()
        ) ::
          {:ok, create_practice_run_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_practice_run_configuration_errors()}
  def create_practice_run_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/configuration"
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
      201
    )
  end

  @doc """
  Deletes the practice run configuration for a resource.

  Before you can delete a practice run configuration for a resource., you must
  disable zonal autoshift for the resource. Practice runs must be configured for
  zonal autoshift to be enabled.
  """
  @spec delete_practice_run_configuration(
          map(),
          String.t() | Atom.t(),
          delete_practice_run_configuration_request(),
          list()
        ) ::
          {:ok, delete_practice_run_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_practice_run_configuration_errors()}
  def delete_practice_run_configuration(
        %Client{} = client,
        resource_identifier,
        input,
        options \\ []
      ) do
    url_path = "/configuration/#{AWS.Util.encode_uri(resource_identifier)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Returns the status of the autoshift observer notification.

  Autoshift observer notifications notify you through Amazon EventBridge when
  there is an autoshift event for zonal autoshift. The status can be `ENABLED` or
  `DISABLED`. When `ENABLED`, a notification is sent when an autoshift is
  triggered. When `DISABLED`, notifications are not sent.
  """
  @spec get_autoshift_observer_notification_status(map(), list()) ::
          {:ok, get_autoshift_observer_notification_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_autoshift_observer_notification_status_errors()}
  def get_autoshift_observer_notification_status(%Client{} = client, options \\ []) do
    url_path = "/autoshift-observer-notification"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get information about a resource that's been registered for zonal shifts with
  Amazon Application Recovery Controller in this Amazon Web Services Region.

  Resources that are registered for zonal shifts are managed resources in ARC. You
  can start zonal shifts and configure zonal autoshift for managed resources.
  """
  @spec get_managed_resource(map(), String.t() | Atom.t(), list()) ::
          {:ok, get_managed_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_managed_resource_errors()}
  def get_managed_resource(%Client{} = client, resource_identifier, options \\ []) do
    url_path = "/managedresources/#{AWS.Util.encode_uri(resource_identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the autoshifts for an Amazon Web Services Region.

  By default, the call returns only `ACTIVE` autoshifts. Optionally, you can
  specify the `status` parameter to return `COMPLETED` autoshifts.
  """
  @spec list_autoshifts(
          map(),
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          list()
        ) ::
          {:ok, list_autoshifts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_autoshifts_errors()}
  def list_autoshifts(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path = "/autoshifts"
    headers = []
    query_params = []

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
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

  @doc """
  Lists all the resources in your Amazon Web Services account in this Amazon Web
  Services Region that are managed for zonal shifts in Amazon Application Recovery
  Controller, and information about them.

  The information includes the zonal autoshift status for the resource, as well as
  the Amazon Resource Name (ARN), the Availability Zones that each resource is
  deployed in, and the resource name.
  """
  @spec list_managed_resources(
          map(),
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          list()
        ) ::
          {:ok, list_managed_resources_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_managed_resources_errors()}
  def list_managed_resources(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/managedresources"
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
  Lists all active and completed zonal shifts in Amazon Application Recovery
  Controller in your Amazon Web Services account in this Amazon Web Services
  Region.

  `ListZonalShifts` returns customer-initiated zonal shifts, as well as practice
  run zonal shifts that ARC started on your behalf for zonal autoshift.

  For more information about listing autoshifts, see
  [">ListAutoshifts](https://docs.aws.amazon.com/arc-zonal-shift/latest/api/API_ListAutoshifts.html).
  """
  @spec list_zonal_shifts(
          map(),
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          list()
        ) ::
          {:ok, list_zonal_shifts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_zonal_shifts_errors()}
  def list_zonal_shifts(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        resource_identifier \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path = "/zonalshifts"
    headers = []
    query_params = []

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(resource_identifier) do
        [{"resourceIdentifier", resource_identifier} | query_params]
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

  @doc """
  Start an on-demand practice run zonal shift in Amazon Application Recovery
  Controller.

  With zonal autoshift enabled, you can start an on-demand practice run to verify
  preparedness at any time. Amazon Web Services also runs automated practice runs
  about weekly when you have enabled zonal autoshift.

  For more information, see [ Considerations when you configure zonal autoshift](https://docs.aws.amazon.com/r53recovery/latest/dg/arc-zonal-autoshift.considerations.html)
  in the Amazon Application Recovery Controller Developer Guide.
  """
  @spec start_practice_run(map(), start_practice_run_request(), list()) ::
          {:ok, start_practice_run_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_practice_run_errors()}
  def start_practice_run(%Client{} = client, input, options \\ []) do
    url_path = "/practiceruns"
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
  You start a zonal shift to temporarily move load balancer traffic away from an
  Availability Zone in an Amazon Web Services Region, to help your application
  recover immediately, for example, from a developer's bad code deployment or from
  an Amazon Web Services infrastructure failure in a single Availability Zone.

  You can start a zonal shift in ARC only for managed resources in your Amazon Web
  Services account in an Amazon Web Services Region. Resources are automatically
  registered with ARC by Amazon Web Services services.

  Amazon Application Recovery Controller currently supports enabling the following
  resources for zonal shift and zonal autoshift:

    * [Amazon EC2 Auto Scaling groups](https://docs.aws.amazon.com/r53recovery/latest/dg/arc-zonal-shift.resource-types.ec2-auto-scaling-groups.html)

    * [Amazon Elastic Kubernetes Service](https://docs.aws.amazon.com/r53recovery/latest/dg/arc-zonal-shift.resource-types.eks.html)

    * [Application Load Balancer](https://docs.aws.amazon.com/r53recovery/latest/dg/arc-zonal-shift.resource-types.app-load-balancers.html)

    * [Network Load Balancer](https://docs.aws.amazon.com/r53recovery/latest/dg/arc-zonal-shift.resource-types.network-load-balancers.html)

  When you start a zonal shift, traffic for the resource is no longer routed to
  the Availability Zone. The zonal shift is created immediately in ARC. However,
  it can take a short time, typically up to a few minutes, for existing,
  in-progress connections in the Availability Zone to complete.

  For more information, see [Zonal shift](https://docs.aws.amazon.com/r53recovery/latest/dg/arc-zonal-shift.html)
  in the Amazon Application Recovery Controller Developer Guide.
  """
  @spec start_zonal_shift(map(), start_zonal_shift_request(), list()) ::
          {:ok, zonal_shift(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_zonal_shift_errors()}
  def start_zonal_shift(%Client{} = client, input, options \\ []) do
    url_path = "/zonalshifts"
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
      201
    )
  end

  @doc """
  Update the status of autoshift observer notification.

  Autoshift observer notification enables you to be notified, through Amazon
  EventBridge, when there is an autoshift event for zonal autoshift.

  If the status is `ENABLED`, ARC includes all autoshift events when you use the
  EventBridge pattern `Autoshift In Progress`. When the status is `DISABLED`, ARC
  includes only autoshift events for autoshifts when one or more of your resources
  is included in the autoshift.

  For more information, see [ Notifications for practice runs and autoshifts](https://docs.aws.amazon.com/r53recovery/latest/dg/arc-zonal-autoshift.how-it-works.html#ZAShiftNotification)
  in the Amazon Application Recovery Controller Developer Guide.
  """
  @spec update_autoshift_observer_notification_status(
          map(),
          update_autoshift_observer_notification_status_request(),
          list()
        ) ::
          {:ok, update_autoshift_observer_notification_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_autoshift_observer_notification_status_errors()}
  def update_autoshift_observer_notification_status(%Client{} = client, input, options \\ []) do
    url_path = "/autoshift-observer-notification"
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
  Update a practice run configuration to change one or more of the following: add,
  change, or remove the blocking alarm; change the outcome alarm; or add, change,
  or remove blocking dates or time windows.
  """
  @spec update_practice_run_configuration(
          map(),
          String.t() | Atom.t(),
          update_practice_run_configuration_request(),
          list()
        ) ::
          {:ok, update_practice_run_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_practice_run_configuration_errors()}
  def update_practice_run_configuration(
        %Client{} = client,
        resource_identifier,
        input,
        options \\ []
      ) do
    url_path = "/configuration/#{AWS.Util.encode_uri(resource_identifier)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  The zonal autoshift configuration for a resource includes the practice run
  configuration and the status for running autoshifts, zonal autoshift status.

  When a resource has a practice run configuation, ARC starts weekly zonal shifts
  for the resource, to shift traffic away from an Availability Zone. Weekly
  practice runs help you to make sure that your application can continue to
  operate normally with the loss of one Availability Zone.

  You can update the zonal autoshift autoshift status to enable or disable zonal
  autoshift. When zonal autoshift is `ENABLED`, you authorize Amazon Web Services
  to shift away resource traffic for an application from an Availability Zone
  during events, on your behalf, to help reduce time to recovery. Traffic is also
  shifted away for the required weekly practice runs.
  """
  @spec update_zonal_autoshift_configuration(
          map(),
          String.t() | Atom.t(),
          update_zonal_autoshift_configuration_request(),
          list()
        ) ::
          {:ok, update_zonal_autoshift_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_zonal_autoshift_configuration_errors()}
  def update_zonal_autoshift_configuration(
        %Client{} = client,
        resource_identifier,
        input,
        options \\ []
      ) do
    url_path = "/managedresources/#{AWS.Util.encode_uri(resource_identifier)}"
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
  Update an active zonal shift in Amazon Application Recovery Controller in your
  Amazon Web Services account.

  You can update a zonal shift to set a new expiration, or edit or replace the
  comment for the zonal shift.
  """
  @spec update_zonal_shift(map(), String.t() | Atom.t(), update_zonal_shift_request(), list()) ::
          {:ok, zonal_shift(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_zonal_shift_errors()}
  def update_zonal_shift(%Client{} = client, zonal_shift_id, input, options \\ []) do
    url_path = "/zonalshifts/#{AWS.Util.encode_uri(zonal_shift_id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end
end
