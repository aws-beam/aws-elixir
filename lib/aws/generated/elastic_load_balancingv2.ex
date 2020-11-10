# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ElasticLoadBalancingv2 do
  @moduledoc """
  Elastic Load Balancing

  A load balancer distributes incoming traffic across targets, such as your EC2
  instances.

  This enables you to increase the availability of your application. The load
  balancer also monitors the health of its registered targets and ensures that it
  routes traffic only to healthy targets. You configure your load balancer to
  accept incoming traffic by specifying one or more listeners, which are
  configured with a protocol and port number for connections from clients to the
  load balancer. You configure a target group with a protocol and port number for
  connections from the load balancer to the targets, and with health check
  settings to be used when checking the health status of the targets.

  Elastic Load Balancing supports the following types of load balancers:
  Application Load Balancers, Network Load Balancers, and Classic Load Balancers.
  This reference covers Application Load Balancers and Network Load Balancers.

  An Application Load Balancer makes routing and load balancing decisions at the
  application layer (HTTP/HTTPS). A Network Load Balancer makes routing and load
  balancing decisions at the transport layer (TCP/TLS). Both Application Load
  Balancers and Network Load Balancers can route requests to one or more ports on
  each EC2 instance or container instance in your virtual private cloud (VPC). For
  more information, see the [Elastic Load Balancing User Guide](https://docs.aws.amazon.com/elasticloadbalancing/latest/userguide/).

  All Elastic Load Balancing operations are idempotent, which means that they
  complete at most one time. If you repeat an operation, it succeeds.
  """

  @doc """
  Adds the specified SSL server certificate to the certificate list for the
  specified HTTPS or TLS listener.

  If the certificate in already in the certificate list, the call is successful
  but the certificate is not added again.

  To get the certificate list for a listener, use `DescribeListenerCertificates`.
  To remove certificates from the certificate list for a listener, use
  `RemoveListenerCertificates`. To replace the default certificate for a listener,
  use `ModifyListener`.

  For more information, see [SSL Certificates](https://docs.aws.amazon.com/elasticloadbalancing/latest/application/create-https-listener.html#https-listener-certificates)
  in the *Application Load Balancers Guide*.
  """
  def add_listener_certificates(client, input, options \\ []) do
    request(client, "AddListenerCertificates", input, options)
  end

  @doc """
  Adds the specified tags to the specified Elastic Load Balancing resource.

  You can tag your Application Load Balancers, Network Load Balancers, target
  groups, listeners, and rules.

  Each tag consists of a key and an optional value. If a resource already has a
  tag with the same key, `AddTags` updates its value.

  To list the current tags for your resources, use `DescribeTags`. To remove tags
  from your resources, use `RemoveTags`.
  """
  def add_tags(client, input, options \\ []) do
    request(client, "AddTags", input, options)
  end

  @doc """
  Creates a listener for the specified Application Load Balancer or Network Load
  Balancer.

  To update a listener, use `ModifyListener`. When you are finished with a
  listener, you can delete it using `DeleteListener`. If you are finished with
  both the listener and the load balancer, you can delete them both using
  `DeleteLoadBalancer`.

  This operation is idempotent, which means that it completes at most one time. If
  you attempt to create multiple listeners with the same settings, each call
  succeeds.

  For more information, see [Listeners for Your Application Load Balancers](https://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-listeners.html)
  in the *Application Load Balancers Guide* and [Listeners for Your Network Load Balancers](https://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-listeners.html)
  in the *Network Load Balancers Guide*.
  """
  def create_listener(client, input, options \\ []) do
    request(client, "CreateListener", input, options)
  end

  @doc """
  Creates an Application Load Balancer or a Network Load Balancer.

  When you create a load balancer, you can specify security groups, public
  subnets, IP address type, and tags. Otherwise, you could do so later using
  `SetSecurityGroups`, `SetSubnets`, `SetIpAddressType`, and `AddTags`.

  To create listeners for your load balancer, use `CreateListener`. To describe
  your current load balancers, see `DescribeLoadBalancers`. When you are finished
  with a load balancer, you can delete it using `DeleteLoadBalancer`.

  For limit information, see [Limits for Your Application Load Balancer](https://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-limits.html)
  in the *Application Load Balancers Guide* and [Limits for Your Network Load Balancer](https://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-limits.html)
  in the *Network Load Balancers Guide*.

  This operation is idempotent, which means that it completes at most one time. If
  you attempt to create multiple load balancers with the same settings, each call
  succeeds.

  For more information, see [Application Load Balancers](https://docs.aws.amazon.com/elasticloadbalancing/latest/application/application-load-balancers.html)
  in the *Application Load Balancers Guide* and [Network Load Balancers](https://docs.aws.amazon.com/elasticloadbalancing/latest/network/network-load-balancers.html)
  in the *Network Load Balancers Guide*.
  """
  def create_load_balancer(client, input, options \\ []) do
    request(client, "CreateLoadBalancer", input, options)
  end

  @doc """
  Creates a rule for the specified listener.

  The listener must be associated with an Application Load Balancer.

  Each rule consists of a priority, one or more actions, and one or more
  conditions. Rules are evaluated in priority order, from the lowest value to the
  highest value. When the conditions for a rule are met, its actions are
  performed. If the conditions for no rules are met, the actions for the default
  rule are performed. For more information, see [Listener Rules](https://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-listeners.html#listener-rules)
  in the *Application Load Balancers Guide*.

  To view your current rules, use `DescribeRules`. To update a rule, use
  `ModifyRule`. To set the priorities of your rules, use `SetRulePriorities`. To
  delete a rule, use `DeleteRule`.
  """
  def create_rule(client, input, options \\ []) do
    request(client, "CreateRule", input, options)
  end

  @doc """
  Creates a target group.

  To register targets with the target group, use `RegisterTargets`. To update the
  health check settings for the target group, use `ModifyTargetGroup`. To monitor
  the health of targets in the target group, use `DescribeTargetHealth`.

  To route traffic to the targets in a target group, specify the target group in
  an action using `CreateListener` or `CreateRule`.

  To delete a target group, use `DeleteTargetGroup`.

  This operation is idempotent, which means that it completes at most one time. If
  you attempt to create multiple target groups with the same settings, each call
  succeeds.

  For more information, see [Target Groups for Your Application Load Balancers](https://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-target-groups.html)
  in the *Application Load Balancers Guide* or [Target Groups for Your Network Load
  Balancers](https://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-target-groups.html)
  in the *Network Load Balancers Guide*.
  """
  def create_target_group(client, input, options \\ []) do
    request(client, "CreateTargetGroup", input, options)
  end

  @doc """
  Deletes the specified listener.

  Alternatively, your listener is deleted when you delete the load balancer to
  which it is attached, using `DeleteLoadBalancer`.
  """
  def delete_listener(client, input, options \\ []) do
    request(client, "DeleteListener", input, options)
  end

  @doc """
  Deletes the specified Application Load Balancer or Network Load Balancer and its
  attached listeners.

  You can't delete a load balancer if deletion protection is enabled. If the load
  balancer does not exist or has already been deleted, the call succeeds.

  Deleting a load balancer does not affect its registered targets. For example,
  your EC2 instances continue to run and are still registered to their target
  groups. If you no longer need these EC2 instances, you can stop or terminate
  them.
  """
  def delete_load_balancer(client, input, options \\ []) do
    request(client, "DeleteLoadBalancer", input, options)
  end

  @doc """
  Deletes the specified rule.

  You can't delete the default rule.
  """
  def delete_rule(client, input, options \\ []) do
    request(client, "DeleteRule", input, options)
  end

  @doc """
  Deletes the specified target group.

  You can delete a target group if it is not referenced by any actions. Deleting a
  target group also deletes any associated health checks.
  """
  def delete_target_group(client, input, options \\ []) do
    request(client, "DeleteTargetGroup", input, options)
  end

  @doc """
  Deregisters the specified targets from the specified target group.

  After the targets are deregistered, they no longer receive traffic from the load
  balancer.
  """
  def deregister_targets(client, input, options \\ []) do
    request(client, "DeregisterTargets", input, options)
  end

  @doc """
  Describes the current Elastic Load Balancing resource limits for your AWS
  account.

  For more information, see [Limits for Your Application Load Balancers](https://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-limits.html)
  in the *Application Load Balancer Guide* or [Limits for Your Network Load Balancers](https://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-limits.html)
  in the *Network Load Balancers Guide*.
  """
  def describe_account_limits(client, input, options \\ []) do
    request(client, "DescribeAccountLimits", input, options)
  end

  @doc """
  Describes the default certificate and the certificate list for the specified
  HTTPS or TLS listener.

  If the default certificate is also in the certificate list, it appears twice in
  the results (once with `IsDefault` set to true and once with `IsDefault` set to
  false).

  For more information, see [SSL Certificates](https://docs.aws.amazon.com/elasticloadbalancing/latest/application/create-https-listener.html#https-listener-certificates)
  in the *Application Load Balancers Guide*.
  """
  def describe_listener_certificates(client, input, options \\ []) do
    request(client, "DescribeListenerCertificates", input, options)
  end

  @doc """
  Describes the specified listeners or the listeners for the specified Application
  Load Balancer or Network Load Balancer.

  You must specify either a load balancer or one or more listeners.

  For an HTTPS or TLS listener, the output includes the default certificate for
  the listener. To describe the certificate list for the listener, use
  `DescribeListenerCertificates`.
  """
  def describe_listeners(client, input, options \\ []) do
    request(client, "DescribeListeners", input, options)
  end

  @doc """
  Describes the attributes for the specified Application Load Balancer or Network
  Load Balancer.

  For more information, see [Load Balancer Attributes](https://docs.aws.amazon.com/elasticloadbalancing/latest/application/application-load-balancers.html#load-balancer-attributes)
  in the *Application Load Balancers Guide* or [Load Balancer Attributes](https://docs.aws.amazon.com/elasticloadbalancing/latest/network/network-load-balancers.html#load-balancer-attributes)
  in the *Network Load Balancers Guide*.
  """
  def describe_load_balancer_attributes(client, input, options \\ []) do
    request(client, "DescribeLoadBalancerAttributes", input, options)
  end

  @doc """
  Describes the specified load balancers or all of your load balancers.

  To describe the listeners for a load balancer, use `DescribeListeners`. To
  describe the attributes for a load balancer, use
  `DescribeLoadBalancerAttributes`.
  """
  def describe_load_balancers(client, input, options \\ []) do
    request(client, "DescribeLoadBalancers", input, options)
  end

  @doc """
  Describes the specified rules or the rules for the specified listener.

  You must specify either a listener or one or more rules.
  """
  def describe_rules(client, input, options \\ []) do
    request(client, "DescribeRules", input, options)
  end

  @doc """
  Describes the specified policies or all policies used for SSL negotiation.

  For more information, see [Security Policies](https://docs.aws.amazon.com/elasticloadbalancing/latest/application/create-https-listener.html#describe-ssl-policies)
  in the *Application Load Balancers Guide*.
  """
  def describe_s_s_l_policies(client, input, options \\ []) do
    request(client, "DescribeSSLPolicies", input, options)
  end

  @doc """
  Describes the tags for the specified Elastic Load Balancing resources.

  You can describe the tags for one or more Application Load Balancers, Network
  Load Balancers, target groups, listeners, or rules.
  """
  def describe_tags(client, input, options \\ []) do
    request(client, "DescribeTags", input, options)
  end

  @doc """
  Describes the attributes for the specified target group.

  For more information, see [Target Group Attributes](https://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-target-groups.html#target-group-attributes)
  in the *Application Load Balancers Guide* or [Target Group Attributes](https://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-target-groups.html#target-group-attributes)
  in the *Network Load Balancers Guide*.
  """
  def describe_target_group_attributes(client, input, options \\ []) do
    request(client, "DescribeTargetGroupAttributes", input, options)
  end

  @doc """
  Describes the specified target groups or all of your target groups.

  By default, all target groups are described. Alternatively, you can specify one
  of the following to filter the results: the ARN of the load balancer, the names
  of one or more target groups, or the ARNs of one or more target groups.

  To describe the targets for a target group, use `DescribeTargetHealth`. To
  describe the attributes of a target group, use `DescribeTargetGroupAttributes`.
  """
  def describe_target_groups(client, input, options \\ []) do
    request(client, "DescribeTargetGroups", input, options)
  end

  @doc """
  Describes the health of the specified targets or all of your targets.
  """
  def describe_target_health(client, input, options \\ []) do
    request(client, "DescribeTargetHealth", input, options)
  end

  @doc """
  Replaces the specified properties of the specified listener.

  Any properties that you do not specify remain unchanged.

  Changing the protocol from HTTPS to HTTP, or from TLS to TCP, removes the
  security policy and default certificate properties. If you change the protocol
  from HTTP to HTTPS, or from TCP to TLS, you must add the security policy and
  default certificate properties.

  To add an item to a list, remove an item from a list, or update an item in a
  list, you must provide the entire list. For example, to add an action, specify a
  list with the current actions plus the new action.
  """
  def modify_listener(client, input, options \\ []) do
    request(client, "ModifyListener", input, options)
  end

  @doc """
  Modifies the specified attributes of the specified Application Load Balancer or
  Network Load Balancer.

  If any of the specified attributes can't be modified as requested, the call
  fails. Any existing attributes that you do not modify retain their current
  values.
  """
  def modify_load_balancer_attributes(client, input, options \\ []) do
    request(client, "ModifyLoadBalancerAttributes", input, options)
  end

  @doc """
  Replaces the specified properties of the specified rule.

  Any properties that you do not specify are unchanged.

  To add an item to a list, remove an item from a list, or update an item in a
  list, you must provide the entire list. For example, to add an action, specify a
  list with the current actions plus the new action.

  To modify the actions for the default rule, use `ModifyListener`.
  """
  def modify_rule(client, input, options \\ []) do
    request(client, "ModifyRule", input, options)
  end

  @doc """
  Modifies the health checks used when evaluating the health state of the targets
  in the specified target group.

  To monitor the health of the targets, use `DescribeTargetHealth`.
  """
  def modify_target_group(client, input, options \\ []) do
    request(client, "ModifyTargetGroup", input, options)
  end

  @doc """
  Modifies the specified attributes of the specified target group.
  """
  def modify_target_group_attributes(client, input, options \\ []) do
    request(client, "ModifyTargetGroupAttributes", input, options)
  end

  @doc """
  Registers the specified targets with the specified target group.

  If the target is an EC2 instance, it must be in the `running` state when you
  register it.

  By default, the load balancer routes requests to registered targets using the
  protocol and port for the target group. Alternatively, you can override the port
  for a target when you register it. You can register each EC2 instance or IP
  address with the same target group multiple times using different ports.

  With a Network Load Balancer, you cannot register instances by instance ID if
  they have the following instance types: C1, CC1, CC2, CG1, CG2, CR1, CS1, G1,
  G2, HI1, HS1, M1, M2, M3, and T1. You can register instances of these types by
  IP address.

  To remove a target from a target group, use `DeregisterTargets`.
  """
  def register_targets(client, input, options \\ []) do
    request(client, "RegisterTargets", input, options)
  end

  @doc """
  Removes the specified certificate from the certificate list for the specified
  HTTPS or TLS listener.

  You can't remove the default certificate for a listener. To replace the default
  certificate, call `ModifyListener`.

  To list the certificates for your listener, use `DescribeListenerCertificates`.
  """
  def remove_listener_certificates(client, input, options \\ []) do
    request(client, "RemoveListenerCertificates", input, options)
  end

  @doc """
  Removes the specified tags from the specified Elastic Load Balancing resources.

  You can remove the tags for one or more Application Load Balancers, Network Load
  Balancers, target groups, listeners, or rules.

  To list the current tags for your resources, use `DescribeTags`.
  """
  def remove_tags(client, input, options \\ []) do
    request(client, "RemoveTags", input, options)
  end

  @doc """
  Sets the type of IP addresses used by the subnets of the specified Application
  Load Balancer or Network Load Balancer.
  """
  def set_ip_address_type(client, input, options \\ []) do
    request(client, "SetIpAddressType", input, options)
  end

  @doc """
  Sets the priorities of the specified rules.

  You can reorder the rules as long as there are no priority conflicts in the new
  order. Any existing rules that you do not specify retain their current priority.
  """
  def set_rule_priorities(client, input, options \\ []) do
    request(client, "SetRulePriorities", input, options)
  end

  @doc """
  Associates the specified security groups with the specified Application Load
  Balancer.

  The specified security groups override the previously associated security
  groups.

  You can't specify a security group for a Network Load Balancer.
  """
  def set_security_groups(client, input, options \\ []) do
    request(client, "SetSecurityGroups", input, options)
  end

  @doc """
  Enables the Availability Zones for the specified public subnets for the
  specified load balancer.

  The specified subnets replace the previously enabled subnets.

  When you specify subnets for a Network Load Balancer, you must include all
  subnets that were enabled previously, with their existing configurations, plus
  any additional subnets.
  """
  def set_subnets(client, input, options \\ []) do
    request(client, "SetSubnets", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, map() | nil, map()}
          | {:error, term()}
  defp request(client, action, input, options) do
    client = %{client | service: "elasticloadbalancing"}
    host = build_host("elasticloadbalancing", client)
    url = build_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-www-form-urlencoded"}
    ]

    input = Map.merge(input, %{"Action" => action, "Version" => "2015-12-01"})
    payload = encode!(client, input)
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    post(client, url, payload, headers, options)
  end

  defp post(client, url, payload, headers, options) do
    case AWS.Client.request(client, :post, url, payload, headers, options) do
      {:ok, %{status_code: 200, body: body} = response} ->
        body = if body != "", do: decode!(client, body)
        {:ok, body, response}

      {:ok, response} ->
        {:error, {:unexpected_response, response}}

      error = {:error, _reason} -> error
    end
  end

  defp build_host(_endpoint_prefix, %{region: "local", endpoint: endpoint}) do
    endpoint
  end
  defp build_host(_endpoint_prefix, %{region: "local"}) do
    "localhost"
  end
  defp build_host(endpoint_prefix, %{region: region, endpoint: endpoint}) do
    "#{endpoint_prefix}.#{region}.#{endpoint}"
  end

  defp build_url(host, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}/"
  end

  defp encode!(client, payload) do
    AWS.Client.encode!(client, payload, :query)
  end

  defp decode!(client, payload) do
    AWS.Client.decode!(client, payload, :xml)
  end
end
