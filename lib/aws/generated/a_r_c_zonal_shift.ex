# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ARCZonalShift do
  @moduledoc """
  This is the API Reference Guide for the zonal shift feature of Amazon Route 53
  Application Recovery Controller.

  This guide is for developers who need detailed information about zonal shift API
  actions, data types, and errors.

  Zonal shift is in preview release for Amazon Route 53 Application Recovery
  Controller and is subject to change.

  Zonal shift in Route 53 ARC enables you to move traffic for a load balancer
  resource away from an Availability Zone. Starting a zonal shift helps your
  application recover immediately, for example, from a developer's bad code
  deployment or from an AWS infrastructure failure in a single Availability Zone,
  reducing the impact and time lost from an issue in one zone.

  Supported AWS resources are automatically registered with Route 53 ARC.
  Resources that are registered for zonal shifts in Route 53 ARC are managed
  resources in Route 53 ARC. You can start a zonal shift for any managed resource
  in your account in a Region. At this time, you can only start a zonal shift for
  Network Load Balancers and Application Load Balancers with cross-zone load
  balancing turned off.

  Zonal shifts are temporary. You must specify an expiration when you start a
  zonal shift, of up to three days initially. If you want to still keep traffic
  away from an Availability Zone, you can update the zonal shift and set a new
  expiration. You can also cancel a zonal shift, before it expires, for example,
  if you're ready to restore traffic to the Availability Zone.

  For more information about using zonal shift, see the [Amazon Route 53 Application Recovery Controller Developer
  Guide](https://docs.aws.amazon.com/r53recovery/latest/dg/what-is-route53-recovery.html).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
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
  Cancel a zonal shift in Amazon Route 53 Application Recovery Controller that
  you've started for a resource in your AWS account in an AWS Region.
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
  Get information about a resource that's been registered for zonal shifts with
  Amazon Route 53 Application Recovery Controller in this AWS Region.

  Resources that are registered for zonal shifts are managed resources in Route 53
  ARC.

  At this time, you can only start a zonal shift for Network Load Balancers and
  Application Load Balancers with cross-zone load balancing turned off.
  """
  def get_managed_resource(%Client{} = client, resource_identifier, options \\ []) do
    url_path = "/managedresources/#{AWS.Util.encode_uri(resource_identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all the resources in your AWS account in this AWS Region that are managed
  for zonal shifts in Amazon Route 53 Application Recovery Controller, and
  information about them.

  The information includes their Amazon Resource Names (ARNs), the Availability
  Zones the resources are deployed in, and the resource name.
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
  Lists all the active zonal shifts in Amazon Route 53 Application Recovery
  Controller in your AWS account in this AWS Region.
  """
  def list_zonal_shifts(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
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
  Availability Zone in a AWS Region, to help your application recover immediately,
  for example, from a developer's bad code deployment or from an AWS
  infrastructure failure in a single Availability Zone.

  You can start a zonal shift in Route 53 ARC only for managed resources in your
  account in an AWS Region. Resources are automatically registered with Route 53
  ARC by AWS services.

  At this time, you can only start a zonal shift for Network Load Balancers and
  Application Load Balancers with cross-zone load balancing turned off.

  When you start a zonal shift, traffic for the resource is no longer routed to
  the Availability Zone. The zonal shift is created immediately in Route 53 ARC.
  However, it can take a short time, typically up to a few minutes, for existing,
  in-progress connections in the Availability Zone to complete.

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
  Update an active zonal shift in Amazon Route 53 Application Recovery Controller
  in your AWS account.

  You can update a zonal shift to set a new expiration, or edit or replace the
  comment for the zonal shift.
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
