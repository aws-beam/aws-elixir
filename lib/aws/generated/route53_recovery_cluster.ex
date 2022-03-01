# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Route53RecoveryCluster do
  @moduledoc """
  Welcome to the Routing Control (Recovery Cluster) API Reference Guide for Amazon
  Route 53 Application Recovery Controller.

  With Amazon Route 53 Application Recovery Controller, you can use routing
  control with extreme reliability to recover applications by rerouting traffic
  across Availability Zones or AWS Regions. Routing controls are simple on/off
  switches hosted on a highly available cluster in Application Recovery
  Controller. A cluster provides a set of five redundant Regional endpoints
  against which you can run API calls to get or update the state of routing
  controls. To implement failover, you set one routing control on and another one
  off, to reroute traffic from one Availability Zone or Amazon Web Services Region
  to another.

  *Be aware that you must specify the Regional endpoints for a cluster when you
  work with API cluster operations to get or update routing control states in
  Application Recovery Controller.* In addition, you must specify the US West
  (Oregon) Region for Application Recovery Controller API calls. For example, use
  the parameter `region us-west-2` with AWS CLI commands. For more information,
  see [ Get and update routing control states using the API](https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.update.api.html)
  in the Amazon Route 53 Application Recovery Controller Developer Guide.

  This API guide includes information about the API operations for how to get and
  update routing control states in Application Recovery Controller. You also must
  set up the structures to support routing controls: clusters and control panels.

  For more information about working with routing control in Application Recovery
  Controller, see the following:

    * To create clusters, routing controls, and control panels by using
  the control plane API for routing control, see the [Recovery Control Configuration API Reference Guide for Amazon Route 53 Application Recovery
  Controller](https://docs.aws.amazon.com/recovery-cluster/latest/api/).

    * Learn about the components in recovery control configuration,
  including clusters, routing controls, and control panels. For more information,
  see [ Recovery control components](https://docs.aws.amazon.com/r53recovery/latest/dg/introduction-components.html#introduction-components-routing)
  in the Amazon Route 53 Application Recovery Controller Developer Guide.

    * Application Recovery Controller also provides readiness checks
  that run continually to help make sure that your applications are scaled and
  ready to handle failover traffic. For more information about the related API
  actions, see the [Recovery Readiness API Reference Guide for Amazon Route 53 Application Recovery
  Controller](https://docs.aws.amazon.com/recovery-readiness/latest/api/).

    * For more information about creating resilient applications and
  preparing for recovery readiness with Application Recovery Controller, see the
  [Amazon Route 53 Application Recovery Controller Developer Guide](https://docs.aws.amazon.com/r53recovery/latest/dg/).
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
  cells. When the state is On, traffic flows to a cell. When it's Off, traffic
  does not flow.

  Before you can create a routing control, you must first create a cluster to host
  the control in a control panel. For more information, see [ Create routing control
  structures](https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.create.html)
  in the Amazon Route 53 Application Recovery Controller Developer Guide. Then you
  access one of the endpoints for the cluster to get or update the routing control
  state to redirect traffic.

  *You must specify Regional endpoints when you work with API cluster operations
  to get or update routing control states in Application Recovery Controller.*

  To see a code example for getting a routing control state, including accessing
  Regional cluster endpoints in sequence, see [API examples](https://docs.aws.amazon.com/r53recovery/latest/dg/service_code_examples_actions.html)
  in the Amazon Route 53 Application Recovery Controller Developer Guide.

  Learn more about working with routing controls in the following topics in the
  Amazon Route 53 Application Recovery Controller Developer Guide:

    * [ Viewing and updating routing control states](https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.update.html)

    * [Working with routing controls overall](https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.html)
  """
  def get_routing_control_state(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetRoutingControlState", input, options)
  end

  @doc """
  Set the state of the routing control to reroute traffic.

  You can set the value to be On or Off. When the state is On, traffic flows to a
  cell. When it's Off, traffic does not flow.

  With Application Recovery Controller, you can add safety rules for routing
  controls, which are safeguards for routing control state updates that help
  prevent unexpected outcomes, like fail open traffic routing. However, there are
  scenarios when you might want to bypass the routing control safeguards that are
  enforced with safety rules that you've configured. For example, you might want
  to fail over quickly for disaster recovery, and one or more safety rules might
  be unexpectedly preventing you from updating a routing control state to reroute
  traffic. In a "break glass" scenario like this, you can override one or more
  safety rules to change a routing control state and fail over your application.

  The `SafetyRulesToOverride` property enables you override one or more safety
  rules and update routing control states. For more information, see [ Override safety rules to reroute
  traffic](https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.override-safety-rule.html)
  in the Amazon Route 53 Application Recovery Controller Developer Guide.

  *You must specify Regional endpoints when you work with API cluster operations
  to get or update routing control states in Application Recovery Controller.*

  To see a code example for getting a routing control state, including accessing
  Regional cluster endpoints in sequence, see [API examples](https://docs.aws.amazon.com/r53recovery/latest/dg/service_code_examples_actions.html)
  in the Amazon Route 53 Application Recovery Controller Developer Guide.

    * [ Viewing and updating routing control states](https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.update.html)

    * [Working with routing controls overall](https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.html)
  """
  def update_routing_control_state(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateRoutingControlState", input, options)
  end

  @doc """
  Set multiple routing control states.

  You can set the value for each state to be On or Off. When the state is On,
  traffic flows to a cell. When it's Off, traffic does not flow.

  With Application Recovery Controller, you can add safety rules for routing
  controls, which are safeguards for routing control state updates that help
  prevent unexpected outcomes, like fail open traffic routing. However, there are
  scenarios when you might want to bypass the routing control safeguards that are
  enforced with safety rules that you've configured. For example, you might want
  to fail over quickly for disaster recovery, and one or more safety rules might
  be unexpectedly preventing you from updating a routing control state to reroute
  traffic. In a "break glass" scenario like this, you can override one or more
  safety rules to change a routing control state and fail over your application.

  The `SafetyRulesToOverride` property enables you override one or more safety
  rules and update routing control states. For more information, see [ Override safety rules to reroute
  traffic](https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.override-safety-rule.html)
  in the Amazon Route 53 Application Recovery Controller Developer Guide.

  *You must specify Regional endpoints when you work with API cluster operations
  to get or update routing control states in Application Recovery Controller.*

  To see a code example for getting a routing control state, including accessing
  Regional cluster endpoints in sequence, see [API examples](https://docs.aws.amazon.com/r53recovery/latest/dg/service_code_examples_actions.html)
  in the Amazon Route 53 Application Recovery Controller Developer Guide.

    * [ Viewing and updating routing control states](https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.update.html)

    * [Working with routing controls overall](https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.html)
  """
  def update_routing_control_states(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateRoutingControlStates", input, options)
  end
end
