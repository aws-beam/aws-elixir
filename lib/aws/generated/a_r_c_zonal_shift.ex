# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ARCZonalShift do
  @moduledoc """
  Welcome to the Zonal Shift API Reference Guide for Amazon Route 53 Application
  Recovery Controller (Route 53 ARC).

  You can start a zonal shift to move traffic for a load balancer resource away
  from an Availability Zone to
  help your application recover quickly from an impairment in an Availability
  Zone. For example,
  you can recover your application from a developer's bad code deployment or from
  an
  Amazon Web Services infrastructure failure in a single Availability Zone.

  You can also configure zonal autoshift for a load balancer resource. Zonal
  autoshift
  is a capability in Route 53 ARC where Amazon Web Services shifts away
  application resource
  traffic from an Availability Zone, on your behalf, to help reduce your time to
  recovery during events.
  Amazon Web Services shifts away traffic for resources that are enabled for zonal
  autoshift whenever Amazon Web Services
  determines that there's an issue in the Availability Zone that could potentially
  affect
  customers.

  To ensure that zonal autoshift is safe for your application, you must
  also configure practice runs when you enable zonal autoshift for a resource.
  Practice runs start
  weekly zonal shifts for a resource, to shift
  traffic for the resource out of an Availability Zone. Practice runs make sure,
  on a regular basis,
  that you have enough capacity in all the Availability Zones in an Amazon Web
  Services Region
  for your application to continue to operate normally
  when traffic for a resource is shifted away from one Availability Zone.

  You must prescale resource capacity in all Availability Zones in the Region
  where your application is deployed, before you configure practice runs or enable
  zonal autoshift
  for a resource. You should not rely on scaling on demand when an autoshift or
  practice run
  starts.

  For more information about using zonal shift and zonal autoshift, see the
  [Amazon Route 53 Application Recovery Controller Developer
  Guide](https://docs.aws.amazon.com/r53recovery/latest/dg/what-is-route53-recovery.html).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      api_version: "2022-10-30",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "arc-zonal-shift",
      global?: false,
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

  For more information, see
  [
  Considerations when you configure zonal
  autoshift](https://docs.aws.amazon.com/r53recovery/latest/dg/arc-zonal-autoshift.considerations.html)
  in the Amazon Route 53 Application Recovery Controller Developer Guide.
  """
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
  def get_managed_resource(%Client{} = client, resource_identifier, options \\ []) do
    url_path = "/managedresources/#{AWS.Util.encode_uri(resource_identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the active autoshifts for a specified resource.
  """
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

  `ListZonalShifts` returns customer-started zonal shifts, as well as practice run
  zonal shifts that Route 53 ARC started on
  your behalf for zonal autoshift.

  The `ListZonalShifts` operation does not list autoshifts. For more information
  about listing
  autoshifts, see
  [">ListAutoshifts](https://docs.aws.amazon.com/arc-zonal-shift/latest/api/API_ListAutoshifts.html).
  """
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
  Update a practice run configuration to change one or more of the following: add,
  change, or remove the blocking alarm; change the outcome alarm; or add, change,
  or remove blocking dates or time windows.
  """
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
  You can update the zonal autoshift status for a resource, to enable or disable
  zonal
  autoshift.

  When zonal autoshift is `ENABLED`, Amazon Web Services shifts away
  resource traffic from an Availability Zone, on your behalf, when Amazon Web
  Services
  determines that there's an issue in the Availability Zone that could potentially
  affect customers.
  """
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
