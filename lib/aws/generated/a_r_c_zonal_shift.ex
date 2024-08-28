# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ARCZonalShift do
  @moduledoc """
  Welcome to the API Reference Guide for zonal shift and zonal autoshift in Amazon
  Route 53 Application Recovery Controller (Route 53 ARC).

  You can start a zonal shift to move traffic for a load balancer resource away
  from an Availability Zone to
  help your application recover quickly from an impairment in an Availability
  Zone. For example,
  you can recover your application from a developer's bad code deployment or from
  an
  Amazon Web Services infrastructure failure in a single Availability Zone.

  You can also configure zonal autoshift for supported load balancer resources.
  Zonal autoshift
  is a capability in Route 53 ARC where you authorize Amazon Web Services to shift
  away application resource
  traffic from an Availability Zone during events, on your behalf, to help reduce
  your time to recovery.
  Amazon Web Services starts an autoshift when internal telemetry indicates that
  there is an Availability
  Zone impairment that could potentially impact customers.

  To help make sure that zonal autoshift is safe for your application, you must
  also configure practice runs when you enable zonal autoshift for a resource.
  Practice runs start
  weekly zonal shifts for a resource, to shift traffic for the resource away from
  an Availability Zone.
  Practice runs help you to make sure, on a regular basis, that you have enough
  capacity in all the
  Availability Zones in an Amazon Web Services Region for your application to
  continue to operate normally
  when traffic for a resource is shifted away from one Availability Zone.

  Before you configure practice runs or enable zonal autoshift, we strongly
  recommend
  that you prescale your application resource capacity in all Availability Zones
  in the Region where
  your application resources are deployed. You should not rely on scaling on
  demand when an
  autoshift or practice run starts. Zonal autoshift, including practice runs,
  works independently,
  and does not wait for auto scaling actions to complete. Relying on auto scaling,
  instead of
  pre-scaling, can result in loss of availability.

  If you use auto scaling to handle regular cycles of traffic, we strongly
  recommend that you configure
  the minimum capacity of your auto scaling to continue operating normally with
  the loss of an
  Availability Zone.

  Be aware that Route 53 ARC does not inspect the health of individual resources.
  Amazon Web Services only starts an
  autoshift when Amazon Web Services telemetry detects that there is an
  Availability Zone impairment that could
  potentially impact customers. In some cases, resources might be shifted away
  that are not experiencing
  impact.

  For more information about using zonal shift and zonal autoshift, see the
  [Amazon Route 53 Application Recovery Controller Developer
  Guide](https://docs.aws.amazon.com/r53recovery/latest/dg/what-is-route53-recovery.html).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      list_managed_resources_response() :: %{
        "items" => list(managed_resource_summary()()),
        "nextToken" => [String.t()]
      }

  """
  @type list_managed_resources_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_managed_resource_response() :: %{
        "appliedWeights" => map(),
        "arn" => String.t(),
        "autoshifts" => list(autoshift_in_resource()()),
        "name" => String.t(),
        "practiceRunConfiguration" => practice_run_configuration(),
        "zonalAutoshiftStatus" => list(any()),
        "zonalShifts" => list(zonal_shift_in_resource()())
      }

  """
  @type get_managed_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_zonal_shifts_response() :: %{
        "items" => list(zonal_shift_summary()()),
        "nextToken" => [String.t()]
      }

  """
  @type list_zonal_shifts_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_zonal_shift_request() :: %{
        optional("comment") => String.t(),
        optional("expiresIn") => String.t()
      }

  """
  @type update_zonal_shift_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      autoshift_summary() :: %{
        "awayFrom" => String.t(),
        "endTime" => non_neg_integer(),
        "startTime" => non_neg_integer(),
        "status" => list(any())
      }

  """
  @type autoshift_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_autoshifts_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => [String.t()],
        optional("status") => list(any())
      }

  """
  @type list_autoshifts_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      zonal_shift() :: %{
        required("awayFrom") => String.t(),
        required("comment") => String.t(),
        required("expiryTime") => non_neg_integer(),
        required("resourceIdentifier") => String.t(),
        required("startTime") => non_neg_integer(),
        required("status") => list(any()),
        required("zonalShiftId") => String.t()
      }

  """
  @type zonal_shift() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      autoshift_in_resource() :: %{
        "appliedStatus" => list(any()),
        "awayFrom" => String.t(),
        "startTime" => non_neg_integer()
      }

  """
  @type autoshift_in_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      managed_resource_summary() :: %{
        "appliedWeights" => map(),
        "arn" => String.t(),
        "autoshifts" => list(autoshift_in_resource()()),
        "availabilityZones" => list(String.t()()),
        "name" => String.t(),
        "practiceRunStatus" => list(any()),
        "zonalAutoshiftStatus" => list(any()),
        "zonalShifts" => list(zonal_shift_in_resource()())
      }

  """
  @type managed_resource_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_zonal_autoshift_configuration_request() :: %{
        required("zonalAutoshiftStatus") => list(any())
      }

  """
  @type update_zonal_autoshift_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      zonal_shift_summary() :: %{
        "awayFrom" => String.t(),
        "comment" => String.t(),
        "expiryTime" => non_neg_integer(),
        "practiceRunOutcome" => list(any()),
        "resourceIdentifier" => String.t(),
        "startTime" => non_neg_integer(),
        "status" => list(any()),
        "zonalShiftId" => String.t()
      }

  """
  @type zonal_shift_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cancel_zonal_shift_request() :: %{}

  """
  @type cancel_zonal_shift_request() :: %{}

  @typedoc """

  ## Example:

      update_practice_run_configuration_request() :: %{
        optional("blockedDates") => list(String.t()()),
        optional("blockedWindows") => list(String.t()()),
        optional("blockingAlarms") => list(control_condition()()),
        optional("outcomeAlarms") => list(control_condition()())
      }

  """
  @type update_practice_run_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => [String.t()],
        "reason" => list(any()),
        "zonalShiftId" => [String.t()]
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      zonal_shift_in_resource() :: %{
        "appliedStatus" => list(any()),
        "awayFrom" => String.t(),
        "comment" => String.t(),
        "expiryTime" => non_neg_integer(),
        "practiceRunOutcome" => list(any()),
        "resourceIdentifier" => String.t(),
        "startTime" => non_neg_integer(),
        "zonalShiftId" => String.t()
      }

  """
  @type zonal_shift_in_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_zonal_shifts_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => [String.t()],
        optional("resourceIdentifier") => String.t(),
        optional("status") => list(any())
      }

  """
  @type list_zonal_shifts_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_managed_resources_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => [String.t()]
      }

  """
  @type list_managed_resources_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_zonal_autoshift_configuration_response() :: %{
        "resourceIdentifier" => String.t(),
        "zonalAutoshiftStatus" => list(any())
      }

  """
  @type update_zonal_autoshift_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      control_condition() :: %{
        "alarmIdentifier" => String.t(),
        "type" => list(any())
      }

  """
  @type control_condition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_autoshift_observer_notification_status_response() :: %{
        "status" => list(any())
      }

  """
  @type update_autoshift_observer_notification_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_practice_run_configuration_response() :: %{
        "arn" => String.t(),
        "name" => String.t(),
        "practiceRunConfiguration" => practice_run_configuration(),
        "zonalAutoshiftStatus" => list(any())
      }

  """
  @type create_practice_run_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_autoshift_observer_notification_status_request() :: %{
        required("status") => list(any())
      }

  """
  @type update_autoshift_observer_notification_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_autoshift_observer_notification_status_response() :: %{
        "status" => list(any())
      }

  """
  @type get_autoshift_observer_notification_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_managed_resource_request() :: %{}

  """
  @type get_managed_resource_request() :: %{}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_zonal_shift_request() :: %{
        required("awayFrom") => String.t(),
        required("comment") => String.t(),
        required("expiresIn") => String.t(),
        required("resourceIdentifier") => String.t()
      }

  """
  @type start_zonal_shift_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_practice_run_configuration_request() :: %{}

  """
  @type delete_practice_run_configuration_request() :: %{}

  @typedoc """

  ## Example:

      list_autoshifts_response() :: %{
        "items" => list(autoshift_summary()()),
        "nextToken" => [String.t()]
      }

  """
  @type list_autoshifts_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => [String.t()],
        "reason" => String.t()
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_practice_run_configuration_response() :: %{
        "arn" => String.t(),
        "name" => String.t(),
        "practiceRunConfiguration" => practice_run_configuration(),
        "zonalAutoshiftStatus" => list(any())
      }

  """
  @type update_practice_run_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_practice_run_configuration_request() :: %{
        optional("blockedDates") => list(String.t()()),
        optional("blockedWindows") => list(String.t()()),
        optional("blockingAlarms") => list(control_condition()()),
        required("outcomeAlarms") => list(control_condition()()),
        required("resourceIdentifier") => String.t()
      }

  """
  @type create_practice_run_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_autoshift_observer_notification_status_request() :: %{}

  """
  @type get_autoshift_observer_notification_status_request() :: %{}

  @typedoc """

  ## Example:

      practice_run_configuration() :: %{
        "blockedDates" => list(String.t()()),
        "blockedWindows" => list(String.t()()),
        "blockingAlarms" => list(control_condition()()),
        "outcomeAlarms" => list(control_condition()())
      }

  """
  @type practice_run_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_practice_run_configuration_response() :: %{
        "arn" => String.t(),
        "name" => String.t(),
        "zonalAutoshiftStatus" => list(any())
      }

  """
  @type delete_practice_run_configuration_response() :: %{String.t() => any()}

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
  Cancel a zonal shift in Amazon Route 53 Application Recovery Controller.

  To cancel the zonal shift, specify the zonal shift ID.

  A zonal shift can be one that you've started for a resource in your Amazon Web
  Services account
  in an Amazon Web Services Region, or it can be a zonal shift started by a
  practice run with zonal
  autoshift.
  """
  @spec cancel_zonal_shift(map(), String.t(), cancel_zonal_shift_request(), list()) ::
          {:ok, zonal_shift(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_zonal_shift_errors()}
  def cancel_zonal_shift(%Client{} = client, zonal_shift_id, input, options \\ []) do
    url_path = "/zonalshifts/#{AWS.Util.encode_uri(zonal_shift_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  A practice run configuration for zonal autoshift is required when you enable
  zonal autoshift.

  A practice run configuration includes specifications for blocked dates and
  blocked time windows,
  and for Amazon CloudWatch alarms that you create to use with practice runs. The
  alarms that you specify are an
  *outcome alarm*, to monitor application health during practice runs and,
  optionally, a *blocking alarm*, to block practice runs from starting.

  When a resource has a practice run configuration, Route 53 ARC starts zonal
  shifts for the resource
  weekly, to shift traffic for practice runs. Practice runs help you to ensure
  that
  shifting away traffic from an Availability Zone during an autoshift is safe for
  your application.

  For more information, see
  [
  Considerations when you configure zonal
  autoshift](https://docs.aws.amazon.com/r53recovery/latest/dg/arc-zonal-autoshift.considerations.html)
  in the Amazon Route 53 Application Recovery Controller Developer Guide.
  """
  @spec create_practice_run_configuration(
          map(),
          create_practice_run_configuration_request(),
          list()
        ) ::
          {:ok, create_practice_run_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_practice_run_configuration_errors()}
  def create_practice_run_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/configuration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      201
    )
  end

  @doc """
  Deletes the practice run configuration for a resource.

  Before you can delete
  a practice run configuration for a resource., you must disable zonal autoshift
  for
  the resource. Practice runs must be configured for zonal autoshift to be
  enabled.
  """
  @spec delete_practice_run_configuration(
          map(),
          String.t(),
          delete_practice_run_configuration_request(),
          list()
        ) ::
          {:ok, delete_practice_run_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_practice_run_configuration_errors()}
  def delete_practice_run_configuration(
        %Client{} = client,
        resource_identifier,
        input,
        options \\ []
      ) do
    url_path = "/configuration/#{AWS.Util.encode_uri(resource_identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Returns the status of autoshift observer notification.

  Autoshift observer
  notification enables you to be notified, through Amazon EventBridge, when
  there is an autoshift event for zonal autoshift.

  If the status is `ENABLED`,
  Route 53 ARC includes all autoshift events when you use the EventBridge pattern
  `Autoshift In Progress`. When the status is `DISABLED`,
  Route 53 ARC includes only autoshift events for autoshifts when one or more of
  your
  resources is included in the autoshift.

  For more information, see
  [
  Notifications for practice runs and
  autoshifts](https://docs.aws.amazon.com/r53recovery/latest/dg/arc-zonal-autoshift.how-it-works.html#ZAShiftNotification)
  in the Amazon Route 53 Application Recovery Controller Developer Guide.
  """
  @spec get_autoshift_observer_notification_status(map(), list()) ::
          {:ok, get_autoshift_observer_notification_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  Amazon Route 53 Application Recovery Controller in this Amazon Web Services
  Region.

  Resources that are registered for
  zonal shifts are managed resources in Route 53 ARC. You can start zonal shifts
  and configure zonal autoshift for managed resources.

  At this time, you can only start a zonal shift or configure zonal autoshift for
  Network Load Balancers and Application Load Balancers with cross-zone load
  balancing turned off.
  """
  @spec get_managed_resource(map(), String.t(), list()) ::
          {:ok, get_managed_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_managed_resource_errors()}
  def get_managed_resource(%Client{} = client, resource_identifier, options \\ []) do
    url_path = "/managedresources/#{AWS.Util.encode_uri(resource_identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of autoshifts for an Amazon Web Services Region.

  By default, the call returns
  only `ACTIVE` autoshifts. Optionally, you can specify the `status` parameter to
  return
  `COMPLETED` autoshifts.
  """
  @spec list_autoshifts(map(), String.t() | nil, String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_autoshifts_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  Services Region that are managed for
  zonal shifts in Amazon Route 53 Application Recovery Controller, and information
  about them.

  The information includes the zonal autoshift status for the resource,
  as well as the Amazon Resource Name (ARN), the Availability Zones that each
  resource is deployed in, and
  the resource name.
  """
  @spec list_managed_resources(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_managed_resources_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  Lists all active and completed zonal shifts in Amazon Route 53 Application
  Recovery Controller in your Amazon Web Services account in this Amazon Web
  Services Region.

  `ListZonalShifts` returns customer-initiated zonal shifts, as well as practice
  run zonal shifts that Route 53 ARC started on
  your behalf for zonal autoshift.

  The `ListZonalShifts` operation does not list autoshifts. For more information
  about listing
  autoshifts, see
  [">ListAutoshifts](https://docs.aws.amazon.com/arc-zonal-shift/latest/api/API_ListAutoshifts.html).
  """
  @spec list_zonal_shifts(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_zonal_shifts_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  You start a zonal shift to temporarily move load balancer traffic away from an
  Availability Zone in an Amazon Web Services Region,
  to help your application recover immediately, for example, from a developer's
  bad code deployment or from an Amazon Web Services
  infrastructure failure in a single Availability Zone.

  You can start a zonal shift in Route 53 ARC only for managed
  resources in your Amazon Web Services account in an Amazon Web Services Region.
  Resources are automatically registered with Route 53 ARC
  by Amazon Web Services services.

  At this time, you can only start a zonal shift for Network Load Balancers and
  Application Load Balancers with cross-zone load balancing turned off.

  When you start a zonal shift, traffic for the resource is no longer routed to
  the Availability Zone. The
  zonal shift is created immediately in Route 53 ARC. However, it can take a short
  time, typically up to a few minutes,
  for existing, in-progress connections in the Availability Zone to complete.

  For more information, see [Zonal shift](https://docs.aws.amazon.com/r53recovery/latest/dg/arc-zonal-shift.html)
  in the Amazon Route 53 Application Recovery Controller Developer Guide.
  """
  @spec start_zonal_shift(map(), start_zonal_shift_request(), list()) ::
          {:ok, zonal_shift(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_zonal_shift_errors()}
  def start_zonal_shift(%Client{} = client, input, options \\ []) do
    url_path = "/zonalshifts"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      201
    )
  end

  @doc """
  Update the status of autoshift observer notification.

  Autoshift observer
  notification enables you to be notified, through Amazon EventBridge, when
  there is an autoshift event for zonal autoshift.

  If the status is `ENABLED`,
  Route 53 ARC includes all autoshift events when you use the EventBridge pattern
  `Autoshift In Progress`. When the status is `DISABLED`,
  Route 53 ARC includes only autoshift events for autoshifts when one or more of
  your
  resources is included in the autoshift.

  For more information, see
  [
  Notifications for practice runs and
  autoshifts](https://docs.aws.amazon.com/r53recovery/latest/dg/arc-zonal-autoshift.how-it-works.html#ZAShiftNotification)
  in the Amazon Route 53 Application Recovery Controller Developer Guide.
  """
  @spec update_autoshift_observer_notification_status(
          map(),
          update_autoshift_observer_notification_status_request(),
          list()
        ) ::
          {:ok, update_autoshift_observer_notification_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_autoshift_observer_notification_status_errors()}
  def update_autoshift_observer_notification_status(%Client{} = client, input, options \\ []) do
    url_path = "/autoshift-observer-notification"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Update a practice run configuration to change one or more of the following: add,
  change, or remove the blocking alarm; change the outcome alarm; or add, change,
  or remove blocking dates or time windows.
  """
  @spec update_practice_run_configuration(
          map(),
          String.t(),
          update_practice_run_configuration_request(),
          list()
        ) ::
          {:ok, update_practice_run_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_practice_run_configuration_errors()}
  def update_practice_run_configuration(
        %Client{} = client,
        resource_identifier,
        input,
        options \\ []
      ) do
    url_path = "/configuration/#{AWS.Util.encode_uri(resource_identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  The zonal autoshift configuration for a resource includes the practice run
  configuration and the status for
  running autoshifts, zonal autoshift status.

  When a resource has a practice run configuation, Route 53 ARC
  starts weekly zonal shifts for the resource, to shift traffic away from an
  Availability Zone. Weekly practice
  runs help you to make sure that your application can continue to operate
  normally with the loss of one Availability Zone.

  You can update the zonal autoshift autoshift status to enable or disable zonal
  autoshift. When zonal
  autoshift is `ENABLED`, you authorize Amazon Web Services to shift away resource
  traffic for
  an application from an Availability Zone during events, on your behalf, to help
  reduce time to recovery.
  Traffic is also shifted away for the required weekly practice runs.
  """
  @spec update_zonal_autoshift_configuration(
          map(),
          String.t(),
          update_zonal_autoshift_configuration_request(),
          list()
        ) ::
          {:ok, update_zonal_autoshift_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_zonal_autoshift_configuration_errors()}
  def update_zonal_autoshift_configuration(
        %Client{} = client,
        resource_identifier,
        input,
        options \\ []
      ) do
    url_path = "/managedresources/#{AWS.Util.encode_uri(resource_identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Update an active zonal shift in Amazon Route 53 Application Recovery Controller
  in your Amazon Web Services account.

  You can update a zonal shift to set a new expiration, or
  edit or replace the comment for the zonal shift.
  """
  @spec update_zonal_shift(map(), String.t(), update_zonal_shift_request(), list()) ::
          {:ok, zonal_shift(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_zonal_shift_errors()}
  def update_zonal_shift(%Client{} = client, zonal_shift_id, input, options \\ []) do
    url_path = "/zonalshifts/#{AWS.Util.encode_uri(zonal_shift_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end
end
