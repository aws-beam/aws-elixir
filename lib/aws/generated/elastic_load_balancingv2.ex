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
  Application Load Balancers, Network Load Balancers, Gateway Load Balancers, and
  Classic Load Balancers. This reference covers the following load balancer types:

    * Application Load Balancer - Operates at the application layer
  (layer 7) and supports HTTP and HTTPS.

    * Network Load Balancer - Operates at the transport layer (layer 4)
  and supports TCP, TLS, and UDP.

    * Gateway Load Balancer - Operates at the network layer (layer 3).

  For more information, see the [Elastic Load Balancing User Guide](https://docs.aws.amazon.com/elasticloadbalancing/latest/userguide/).

  All Elastic Load Balancing operations are idempotent, which means that they
  complete at most one time. If you repeat an operation, it succeeds.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: "Elastic Load Balancing v2",
      api_version: "2015-12-01",
      content_type: "application/x-www-form-urlencoded",
      credential_scope: nil,
      endpoint_prefix: "elasticloadbalancing",
      global?: false,
      protocol: "query",
      service_id: "Elastic Load Balancing v2",
      signature_version: "v4",
      signing_name: "elasticloadbalancing",
      target_prefix: nil
    }
  end

  @doc """
  Adds the specified SSL server certificate to the certificate list for the
  specified HTTPS or TLS listener.

  If the certificate in already in the certificate list, the call is successful
  but the certificate is not added again.

  For more information, see [HTTPS listeners](https://docs.aws.amazon.com/elasticloadbalancing/latest/application/create-https-listener.html)
  in the *Application Load Balancers Guide* or [TLS listeners](https://docs.aws.amazon.com/elasticloadbalancing/latest/network/create-tls-listener.html)
  in the *Network Load Balancers Guide*.
  """
  def add_listener_certificates(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AddListenerCertificates", input, options)
  end

  @doc """
  Adds the specified tags to the specified Elastic Load Balancing resource.

  You can tag your Application Load Balancers, Network Load Balancers, Gateway
  Load Balancers, target groups, listeners, and rules.

  Each tag consists of a key and an optional value. If a resource already has a
  tag with the same key, `AddTags` updates its value.
  """
  def add_tags(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AddTags", input, options)
  end

  @doc """
  Creates a listener for the specified Application Load Balancer, Network Load
  Balancer, or Gateway Load Balancer.

  For more information, see the following:

    * [Listeners for your Application Load Balancers](https://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-listeners.html)

    * [Listeners for your Network Load Balancers](https://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-listeners.html)

    * [Listeners for your Gateway Load Balancers](https://docs.aws.amazon.com/elasticloadbalancing/latest/gateway/gateway-listeners.html)

  This operation is idempotent, which means that it completes at most one time. If
  you attempt to create multiple listeners with the same settings, each call
  succeeds.
  """
  def create_listener(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateListener", input, options)
  end

  @doc """
  Creates an Application Load Balancer, Network Load Balancer, or Gateway Load
  Balancer.

  For more information, see the following:

    * [Application Load Balancers](https://docs.aws.amazon.com/elasticloadbalancing/latest/application/application-load-balancers.html)

    * [Network Load Balancers](https://docs.aws.amazon.com/elasticloadbalancing/latest/network/network-load-balancers.html)

    * [Gateway Load Balancers](https://docs.aws.amazon.com/elasticloadbalancing/latest/gateway/gateway-load-balancers.html)

  This operation is idempotent, which means that it completes at most one time. If
  you attempt to create multiple load balancers with the same settings, each call
  succeeds.
  """
  def create_load_balancer(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateLoadBalancer", input, options)
  end

  @doc """
  Creates a rule for the specified listener.

  The listener must be associated with an Application Load Balancer.

  Each rule consists of a priority, one or more actions, and one or more
  conditions. Rules are evaluated in priority order, from the lowest value to the
  highest value. When the conditions for a rule are met, its actions are
  performed. If the conditions for no rules are met, the actions for the default
  rule are performed. For more information, see [Listener rules](https://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-listeners.html#listener-rules)
  in the *Application Load Balancers Guide*.
  """
  def create_rule(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateRule", input, options)
  end

  @doc """
  Creates a target group.

  For more information, see the following:

    * [Target groups for your Application Load Balancers](https://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-target-groups.html)

    * [Target groups for your Network Load Balancers](https://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-target-groups.html)

    * [Target groups for your Gateway Load Balancers](https://docs.aws.amazon.com/elasticloadbalancing/latest/gateway/target-groups.html)

  This operation is idempotent, which means that it completes at most one time. If
  you attempt to create multiple target groups with the same settings, each call
  succeeds.
  """
  def create_target_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateTargetGroup", input, options)
  end

  @doc """
  Deletes the specified listener.

  Alternatively, your listener is deleted when you delete the load balancer to
  which it is attached.
  """
  def delete_listener(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteListener", input, options)
  end

  @doc """
  Deletes the specified Application Load Balancer, Network Load Balancer, or
  Gateway Load Balancer.

  Deleting a load balancer also deletes its listeners.

  You can't delete a load balancer if deletion protection is enabled. If the load
  balancer does not exist or has already been deleted, the call succeeds.

  Deleting a load balancer does not affect its registered targets. For example,
  your EC2 instances continue to run and are still registered to their target
  groups. If you no longer need these EC2 instances, you can stop or terminate
  them.
  """
  def delete_load_balancer(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteLoadBalancer", input, options)
  end

  @doc """
  Deletes the specified rule.

  You can't delete the default rule.
  """
  def delete_rule(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteRule", input, options)
  end

  @doc """
  Deletes the specified target group.

  You can delete a target group if it is not referenced by any actions. Deleting a
  target group also deletes any associated health checks. Deleting a target group
  does not affect its registered targets. For example, any EC2 instances continue
  to run until you stop or terminate them.
  """
  def delete_target_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteTargetGroup", input, options)
  end

  @doc """
  Deregisters the specified targets from the specified target group.

  After the targets are deregistered, they no longer receive traffic from the load
  balancer.
  """
  def deregister_targets(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeregisterTargets", input, options)
  end

  @doc """
  Describes the current Elastic Load Balancing resource limits for your AWS
  account.

  For more information, see the following:

    * [Quotas for your Application Load Balancers](https://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-limits.html)

    * [Quotas for your Network Load Balancers](https://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-limits.html)

    * [Quotas for your Gateway Load Balancers](https://docs.aws.amazon.com/elasticloadbalancing/latest/gateway/quotas-limits.html)
  """
  def describe_account_limits(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeAccountLimits", input, options)
  end

  @doc """
  Describes the default certificate and the certificate list for the specified
  HTTPS or TLS listener.

  If the default certificate is also in the certificate list, it appears twice in
  the results (once with `IsDefault` set to true and once with `IsDefault` set to
  false).

  For more information, see [SSL certificates](https://docs.aws.amazon.com/elasticloadbalancing/latest/application/create-https-listener.html#https-listener-certificates)
  in the *Application Load Balancers Guide* or [Server certificates](https://docs.aws.amazon.com/elasticloadbalancing/latest/network/create-tls-listener.html#tls-listener-certificate)
  in the *Network Load Balancers Guide*.
  """
  def describe_listener_certificates(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeListenerCertificates", input, options)
  end

  @doc """
  Describes the specified listeners or the listeners for the specified Application
  Load Balancer, Network Load Balancer, or Gateway Load Balancer.

  You must specify either a load balancer or one or more listeners.
  """
  def describe_listeners(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeListeners", input, options)
  end

  @doc """
  Describes the attributes for the specified Application Load Balancer, Network
  Load Balancer, or Gateway Load Balancer.

  For more information, see the following:

    * [Load balancer attributes](https://docs.aws.amazon.com/elasticloadbalancing/latest/application/application-load-balancers.html#load-balancer-attributes)
  in the *Application Load Balancers Guide*

    * [Load balancer attributes](https://docs.aws.amazon.com/elasticloadbalancing/latest/network/network-load-balancers.html#load-balancer-attributes)
  in the *Network Load Balancers Guide*

    * [Load balancer attributes](https://docs.aws.amazon.com/elasticloadbalancing/latest/gateway/gateway-load-balancers.html#load-balancer-attributes)
  in the *Gateway Load Balancers Guide*
  """
  def describe_load_balancer_attributes(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeLoadBalancerAttributes", input, options)
  end

  @doc """
  Describes the specified load balancers or all of your load balancers.
  """
  def describe_load_balancers(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeLoadBalancers", input, options)
  end

  @doc """
  Describes the specified rules or the rules for the specified listener.

  You must specify either a listener or one or more rules.
  """
  def describe_rules(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeRules", input, options)
  end

  @doc """
  Describes the specified policies or all policies used for SSL negotiation.

  For more information, see [Security policies](https://docs.aws.amazon.com/elasticloadbalancing/latest/application/create-https-listener.html#describe-ssl-policies)
  in the *Application Load Balancers Guide* or [Security policies](https://docs.aws.amazon.com/elasticloadbalancing/latest/network/create-tls-listener.html#describe-ssl-policies)
  in the *Network Load Balancers Guide*.
  """
  def describe_ssl_policies(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeSSLPolicies", input, options)
  end

  @doc """
  Describes the tags for the specified Elastic Load Balancing resources.

  You can describe the tags for one or more Application Load Balancers, Network
  Load Balancers, Gateway Load Balancers, target groups, listeners, or rules.
  """
  def describe_tags(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeTags", input, options)
  end

  @doc """
  Describes the attributes for the specified target group.

  For more information, see the following:

    * [Target group attributes](https://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-target-groups.html#target-group-attributes)
  in the *Application Load Balancers Guide*

    * [Target group attributes](https://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-target-groups.html#target-group-attributes)
  in the *Network Load Balancers Guide*

    * [Target group attributes](https://docs.aws.amazon.com/elasticloadbalancing/latest/gateway/target-groups.html#target-group-attributes)
  in the *Gateway Load Balancers Guide*
  """
  def describe_target_group_attributes(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeTargetGroupAttributes", input, options)
  end

  @doc """
  Describes the specified target groups or all of your target groups.

  By default, all target groups are described. Alternatively, you can specify one
  of the following to filter the results: the ARN of the load balancer, the names
  of one or more target groups, or the ARNs of one or more target groups.
  """
  def describe_target_groups(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeTargetGroups", input, options)
  end

  @doc """
  Describes the health of the specified targets or all of your targets.
  """
  def describe_target_health(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeTargetHealth", input, options)
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
  def modify_listener(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ModifyListener", input, options)
  end

  @doc """
  Modifies the specified attributes of the specified Application Load Balancer,
  Network Load Balancer, or Gateway Load Balancer.

  If any of the specified attributes can't be modified as requested, the call
  fails. Any existing attributes that you do not modify retain their current
  values.
  """
  def modify_load_balancer_attributes(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ModifyLoadBalancerAttributes", input, options)
  end

  @doc """
  Replaces the specified properties of the specified rule.

  Any properties that you do not specify are unchanged.

  To add an item to a list, remove an item from a list, or update an item in a
  list, you must provide the entire list. For example, to add an action, specify a
  list with the current actions plus the new action.
  """
  def modify_rule(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ModifyRule", input, options)
  end

  @doc """
  Modifies the health checks used when evaluating the health state of the targets
  in the specified target group.
  """
  def modify_target_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ModifyTargetGroup", input, options)
  end

  @doc """
  Modifies the specified attributes of the specified target group.
  """
  def modify_target_group_attributes(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ModifyTargetGroupAttributes", input, options)
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
  """
  def register_targets(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RegisterTargets", input, options)
  end

  @doc """
  Removes the specified certificate from the certificate list for the specified
  HTTPS or TLS listener.
  """
  def remove_listener_certificates(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RemoveListenerCertificates", input, options)
  end

  @doc """
  Removes the specified tags from the specified Elastic Load Balancing resources.

  You can remove the tags for one or more Application Load Balancers, Network Load
  Balancers, Gateway Load Balancers, target groups, listeners, or rules.
  """
  def remove_tags(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RemoveTags", input, options)
  end

  @doc """
  Sets the type of IP addresses used by the subnets of the specified Application
  Load Balancer or Network Load Balancer.
  """
  def set_ip_address_type(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "SetIpAddressType", input, options)
  end

  @doc """
  Sets the priorities of the specified rules.

  You can reorder the rules as long as there are no priority conflicts in the new
  order. Any existing rules that you do not specify retain their current priority.
  """
  def set_rule_priorities(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "SetRulePriorities", input, options)
  end

  @doc """
  Associates the specified security groups with the specified Application Load
  Balancer.

  The specified security groups override the previously associated security
  groups.

  You can't specify a security group for a Network Load Balancer or Gateway Load
  Balancer.
  """
  def set_security_groups(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "SetSecurityGroups", input, options)
  end

  @doc """
  Enables the Availability Zones for the specified public subnets for the
  specified Application Load Balancer or Network Load Balancer.

  The specified subnets replace the previously enabled subnets.

  When you specify subnets for a Network Load Balancer, you must include all
  subnets that were enabled previously, with their existing configurations, plus
  any additional subnets.
  """
  def set_subnets(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "SetSubnets", input, options)
  end
end
