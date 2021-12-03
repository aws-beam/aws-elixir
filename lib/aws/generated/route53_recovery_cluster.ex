# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Route53RecoveryCluster do
  @moduledoc """
  Welcome to the Amazon Route 53 Application Recovery Controller API Reference
  Guide for Recovery Control Data Plane .

  Recovery control in Route 53 Application Recovery Controller includes extremely
  reliable routing controls that enable you to recover applications by rerouting
  traffic, for example, across Availability Zones or AWS Regions. Routing controls
  are simple on/off switches hosted on a cluster. A cluster is a set of five
  redundant regional endpoints against which you can execute API calls to update
  or get the state of routing controls. You use routing controls to failover
  traffic to recover your application across Availability Zones or Regions.

  This API guide includes information about how to get and update routing control
  states in Route 53 Application Recovery Controller.

  For more information about Route 53 Application Recovery Controller, see the
  following:

    * You can create clusters, routing controls, and control panels by
  using the control plane API for Recovery Control. For more information, see
  [Amazon Route 53 Application Recovery Controller Recovery Control API Reference](https://docs.aws.amazon.com/recovery-cluster/latest/api/).

    * Route 53 Application Recovery Controller also provides continuous
  readiness checks to ensure that your applications are scaled to handle failover
  traffic. For more information about the related API actions, see [Amazon Route 53 Application Recovery Controller Recovery Readiness API
  Reference](https://docs.aws.amazon.com/recovery-readiness/latest/api/).

    * For more information about creating resilient applications and
  preparing for recovery readiness with Route 53 Application Recovery Controller,
  see the [Amazon Route 53 Application Recovery Controller Developer Guide](r53recovery/latest/dg/).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2019-12-02",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "route53-recovery-cluster",
      global?: false,
      protocol: "json",
      service_id: "Route53 Recovery Cluster",
      signature_version: "v4",
      signing_name: "route53-recovery-cluster",
      target_prefix: "ToggleCustomerAPI"
    }
  end

  @doc """
  Get the state for a routing control.

  A routing control is a simple on/off switch that you can use to route traffic to
  cells. When the state is On, traffic flows to a cell. When it's off, traffic
  does not flow.

  Before you can create a routing control, you first must create a cluster to host
  the control. For more information, see
  [CreateCluster](https://docs.aws.amazon.com/recovery-cluster/latest/api/cluster.html). Access one of the endpoints for the cluster to get or update the routing control
  state to redirect traffic.

  For more information about working with routing controls, see [Routing
  control](https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.html)
  in the Route 53 Application Recovery Controller Developer Guide.
  """
  def get_routing_control_state(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetRoutingControlState", input, options)
  end

  @doc """
  Set the state of the routing control to reroute traffic.

  You can set the value to be On or Off. When the state is On, traffic flows to a
  cell. When it's off, traffic does not flow.

  For more information about working with routing controls, see [Routing control](https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.html)
  in the Route 53 Application Recovery Controller Developer Guide.
  """
  def update_routing_control_state(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateRoutingControlState", input, options)
  end

  @doc """
  Set multiple routing control states.

  You can set the value for each state to be On or Off. When the state is On,
  traffic flows to a cell. When it's off, traffic does not flow.

  For more information about working with routing controls, see [Routing control](https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.html)
  in the Route 53 Application Recovery Controller Developer Guide.
  """
  def update_routing_control_states(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateRoutingControlStates", input, options)
  end
end
