# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Route53RecoveryControlConfig do
  @moduledoc """
  Recovery Control Configuration API Reference for Amazon Route 53 Application
  Recovery Controller
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2020-11-02",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "route53-recovery-control-config",
      global?: false,
      protocol: "rest-json",
      service_id: "Route53 Recovery Control Config",
      signature_version: "v4",
      signing_name: "route53-recovery-control-config",
      target_prefix: nil
    }
  end

  @doc """
  Create a new cluster.

  A cluster is a set of redundant Regional endpoints against which you can run API
  calls to update or get the state of one or more routing controls. Each cluster
  has a name, status, Amazon Resource Name (ARN), and an array of the five cluster
  endpoints (one for each supported Amazon Web Services Region) that you can use
  with API calls to the cluster data plane.
  """
  def create_cluster(%Client{} = client, input, options \\ []) do
    url_path = "/cluster"
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
  Creates a new control panel.

  A control panel represents a group of routing controls that can be changed
  together in a single transaction. You can use a control panel to centrally view
  the operational status of applications across your organization, and trigger
  multi-app failovers in a single transaction, for example, to fail over an
  Availability Zone or Amazon Web Services Region.
  """
  def create_control_panel(%Client{} = client, input, options \\ []) do
    url_path = "/controlpanel"
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
  Creates a new routing control.

  A routing control has one of two states: ON and OFF. You can map the routing
  control state to the state of an Amazon Route 53 health check, which can be used
  to control traffic routing.

  To get or update the routing control state, see the Recovery Cluster (data
  plane) API actions for Amazon Route 53 Application Recovery Controller.
  """
  def create_routing_control(%Client{} = client, input, options \\ []) do
    url_path = "/routingcontrol"
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
  Creates a safety rule in a control panel.

  Safety rules let you add safeguards around changing routing control states, and
  for enabling and disabling routing controls, to help prevent unexpected
  outcomes.

  There are two types of safety rules: assertion rules and gating rules.

  Assertion rule: An assertion rule enforces that, when you change a routing
  control state, that a certain criteria is met. For example, the criteria might
  be that at least one routing control state is On after the transation so that
  traffic continues to flow to at least one cell for the application. This ensures
  that you avoid a fail-open scenario.

  Gating rule: A gating rule lets you configure a gating routing control as an
  overall "on/off" switch for a group of routing controls. Or, you can configure
  more complex gating scenarios, for example by configuring multiple gating
  routing controls.

  For more information, see [Safety rules](https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.safety-rules.html)
  in the Amazon Route 53 Application Recovery Controller Developer Guide.
  """
  def create_safety_rule(%Client{} = client, input, options \\ []) do
    url_path = "/safetyrule"
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
  Delete a cluster.
  """
  def delete_cluster(%Client{} = client, cluster_arn, input, options \\ []) do
    url_path = "/cluster/#{AWS.Util.encode_uri(cluster_arn)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Deletes a control panel.
  """
  def delete_control_panel(%Client{} = client, control_panel_arn, input, options \\ []) do
    url_path = "/controlpanel/#{AWS.Util.encode_uri(control_panel_arn)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Deletes a routing control.
  """
  def delete_routing_control(%Client{} = client, routing_control_arn, input, options \\ []) do
    url_path = "/routingcontrol/#{AWS.Util.encode_uri(routing_control_arn)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Deletes a safety rule.

  />
  """
  def delete_safety_rule(%Client{} = client, safety_rule_arn, input, options \\ []) do
    url_path = "/safetyrule/#{AWS.Util.encode_uri(safety_rule_arn)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Display the details about a cluster.

  The response includes the cluster name, endpoints, status, and Amazon Resource
  Name (ARN).
  """
  def describe_cluster(%Client{} = client, cluster_arn, options \\ []) do
    url_path = "/cluster/#{AWS.Util.encode_uri(cluster_arn)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Displays details about a control panel.
  """
  def describe_control_panel(%Client{} = client, control_panel_arn, options \\ []) do
    url_path = "/controlpanel/#{AWS.Util.encode_uri(control_panel_arn)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Displays details about a routing control.

  A routing control has one of two states: ON and OFF. You can map the routing
  control state to the state of an Amazon Route 53 health check, which can be used
  to control routing.

  To get or update the routing control state, see the Recovery Cluster (data
  plane) API actions for Amazon Route 53 Application Recovery Controller.
  """
  def describe_routing_control(%Client{} = client, routing_control_arn, options \\ []) do
    url_path = "/routingcontrol/#{AWS.Util.encode_uri(routing_control_arn)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Returns information about a safety rule.
  """
  def describe_safety_rule(%Client{} = client, safety_rule_arn, options \\ []) do
    url_path = "/safetyrule/#{AWS.Util.encode_uri(safety_rule_arn)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Returns an array of all Amazon Route 53 health checks associated with a specific
  routing control.
  """
  def list_associated_route53_health_checks(
        %Client{} = client,
        routing_control_arn,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/routingcontrol/#{AWS.Util.encode_uri(routing_control_arn)}/associatedRoute53HealthChecks"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
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
      200
    )
  end

  @doc """
  Returns an array of all the clusters in an account.
  """
  def list_clusters(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/cluster"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
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
      200
    )
  end

  @doc """
  Returns an array of control panels in an account or in a cluster.
  """
  def list_control_panels(
        %Client{} = client,
        cluster_arn \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/controlpanels"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(cluster_arn) do
        [{"ClusterArn", cluster_arn} | query_params]
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
      200
    )
  end

  @doc """
  Returns an array of routing controls for a control panel.

  A routing control is an Amazon Route 53 Application Recovery Controller
  construct that has one of two states: ON and OFF. You can map the routing
  control state to the state of an Amazon Route 53 health check, which can be used
  to control routing.
  """
  def list_routing_controls(
        %Client{} = client,
        control_panel_arn,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/controlpanel/#{AWS.Util.encode_uri(control_panel_arn)}/routingcontrols"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
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
      200
    )
  end

  @doc """
  List the safety rules (the assertion rules and gating rules) that you've defined
  for the routing controls in a control panel.
  """
  def list_safety_rules(
        %Client{} = client,
        control_panel_arn,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/controlpanel/#{AWS.Util.encode_uri(control_panel_arn)}/safetyrules"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
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
      200
    )
  end

  @doc """
  Lists the tags for a resource.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Adds a tag to a resource.
  """
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
  Removes a tag from a resource.
  """
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

    {query_params, input} =
      [
        {"TagKeys", "TagKeys"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
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
  Updates a control panel.

  The only update you can make to a control panel is to change the name of the
  control panel.
  """
  def update_control_panel(%Client{} = client, input, options \\ []) do
    url_path = "/controlpanel"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a routing control.

  You can only update the name of the routing control. To get or update the
  routing control state, see the Recovery Cluster (data plane) API actions for
  Amazon Route 53 Application Recovery Controller.
  """
  def update_routing_control(%Client{} = client, input, options \\ []) do
    url_path = "/routingcontrol"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Update a safety rule (an assertion rule or gating rule).

  You can only update the name and the waiting period for a safety rule. To make
  other updates, delete the safety rule and create a new one.
  """
  def update_safety_rule(%Client{} = client, input, options \\ []) do
    url_path = "/safetyrule"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end
end
