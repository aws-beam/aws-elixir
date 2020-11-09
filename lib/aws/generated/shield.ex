# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Shield do
  @moduledoc """
  AWS Shield Advanced

  This is the *AWS Shield Advanced API Reference*.

  This guide is for developers who need detailed information about the AWS Shield
  Advanced API actions, data types, and errors. For detailed information about AWS
  WAF and AWS Shield Advanced features and an overview of how to use the AWS WAF
  and AWS Shield Advanced APIs, see the [AWS WAF and AWS Shield Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/).
  """

  @doc """
  Authorizes the DDoS Response Team (DRT) to access the specified Amazon S3 bucket
  containing your AWS WAF logs.

  You can associate up to 10 Amazon S3 buckets with your subscription.

  To use the services of the DRT and make an `AssociateDRTLogBucket` request, you
  must be subscribed to the [Business Support plan](https://aws.amazon.com/premiumsupport/business-support/) or the
  [Enterprise Support plan](https://aws.amazon.com/premiumsupport/enterprise-support/).
  """
  def associate_d_r_t_log_bucket(client, input, options \\ []) do
    request(client, "AssociateDRTLogBucket", input, options)
  end

  @doc """
  Authorizes the DDoS Response Team (DRT), using the specified role, to access
  your AWS account to assist with DDoS attack mitigation during potential attacks.

  This enables the DRT to inspect your AWS WAF configuration and create or update
  AWS WAF rules and web ACLs.

  You can associate only one `RoleArn` with your subscription. If you submit an
  `AssociateDRTRole` request for an account that already has an associated role,
  the new `RoleArn` will replace the existing `RoleArn`.

  Prior to making the `AssociateDRTRole` request, you must attach the
  [AWSShieldDRTAccessPolicy](https://console.aws.amazon.com/iam/home?#/policies/arn:aws:iam::aws:policy/service-role/AWSShieldDRTAccessPolicy) managed policy to the role you will specify in the request. For more information
  see [Attaching and Detaching IAM Policies](
  https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_manage-attach-detach.html).
  The role must also trust the service principal ` drt.shield.amazonaws.com`. For
  more information, see [IAM JSON Policy Elements: Principal](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html).

  The DRT will have access only to your AWS WAF and Shield resources. By
  submitting this request, you authorize the DRT to inspect your AWS WAF and
  Shield configuration and create and update AWS WAF rules and web ACLs on your
  behalf. The DRT takes these actions only if explicitly authorized by you.

  You must have the `iam:PassRole` permission to make an `AssociateDRTRole`
  request. For more information, see [Granting a User Permissions to Pass a Role to an AWS
  Service](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_passrole.html).

  To use the services of the DRT and make an `AssociateDRTRole` request, you must
  be subscribed to the [Business Support plan](https://aws.amazon.com/premiumsupport/business-support/) or the
  [Enterprise Support plan](https://aws.amazon.com/premiumsupport/enterprise-support/).
  """
  def associate_d_r_t_role(client, input, options \\ []) do
    request(client, "AssociateDRTRole", input, options)
  end

  @doc """
  Adds health-based detection to the Shield Advanced protection for a resource.

  Shield Advanced health-based detection uses the health of your AWS resource to
  improve responsiveness and accuracy in attack detection and mitigation.

  You define the health check in Route 53 and then associate it with your Shield
  Advanced protection. For more information, see [Shield Advanced Health-Based Detection](https://docs.aws.amazon.com/waf/latest/developerguide/ddos-overview.html#ddos-advanced-health-check-option)
  in the [AWS WAF and AWS Shield Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/).
  """
  def associate_health_check(client, input, options \\ []) do
    request(client, "AssociateHealthCheck", input, options)
  end

  @doc """
  Initializes proactive engagement and sets the list of contacts for the DDoS
  Response Team (DRT) to use.

  You must provide at least one phone number in the emergency contact list.

  After you have initialized proactive engagement using this call, to disable or
  enable proactive engagement, use the calls `DisableProactiveEngagement` and
  `EnableProactiveEngagement`.

  This call defines the list of email addresses and phone numbers that the DDoS
  Response Team (DRT) can use to contact you for escalations to the DRT and to
  initiate proactive customer support.

  The contacts that you provide in the request replace any contacts that were
  already defined. If you already have contacts defined and want to use them,
  retrieve the list using `DescribeEmergencyContactSettings` and then provide it
  to this call.
  """
  def associate_proactive_engagement_details(client, input, options \\ []) do
    request(client, "AssociateProactiveEngagementDetails", input, options)
  end

  @doc """
  Enables AWS Shield Advanced for a specific AWS resource.

  The resource can be an Amazon CloudFront distribution, Elastic Load Balancing
  load balancer, AWS Global Accelerator accelerator, Elastic IP Address, or an
  Amazon Route 53 hosted zone.

  You can add protection to only a single resource with each CreateProtection
  request. If you want to add protection to multiple resources at once, use the
  [AWS WAF console](https://console.aws.amazon.com/waf/). For more information see [Getting Started with AWS Shield
  Advanced](https://docs.aws.amazon.com/waf/latest/developerguide/getting-started-ddos.html)
  and [Add AWS Shield Advanced Protection to more AWS Resources](https://docs.aws.amazon.com/waf/latest/developerguide/configure-new-protection.html).
  """
  def create_protection(client, input, options \\ []) do
    request(client, "CreateProtection", input, options)
  end

  @doc """
  Activates AWS Shield Advanced for an account.

  When you initally create a subscription, your subscription is set to be
  automatically renewed at the end of the existing subscription period. You can
  change this by submitting an `UpdateSubscription` request.
  """
  def create_subscription(client, input, options \\ []) do
    request(client, "CreateSubscription", input, options)
  end

  @doc """
  Deletes an AWS Shield Advanced `Protection`.
  """
  def delete_protection(client, input, options \\ []) do
    request(client, "DeleteProtection", input, options)
  end

  @doc """
  Removes AWS Shield Advanced from an account.

  AWS Shield Advanced requires a 1-year subscription commitment. You cannot delete
  a subscription prior to the completion of that commitment.
  """
  def delete_subscription(client, input, options \\ []) do
    request(client, "DeleteSubscription", input, options)
  end

  @doc """
  Describes the details of a DDoS attack.
  """
  def describe_attack(client, input, options \\ []) do
    request(client, "DescribeAttack", input, options)
  end

  @doc """
  Returns the current role and list of Amazon S3 log buckets used by the DDoS
  Response Team (DRT) to access your AWS account while assisting with attack
  mitigation.
  """
  def describe_d_r_t_access(client, input, options \\ []) do
    request(client, "DescribeDRTAccess", input, options)
  end

  @doc """
  A list of email addresses and phone numbers that the DDoS Response Team (DRT)
  can use to contact you if you have proactive engagement enabled, for escalations
  to the DRT and to initiate proactive customer support.
  """
  def describe_emergency_contact_settings(client, input, options \\ []) do
    request(client, "DescribeEmergencyContactSettings", input, options)
  end

  @doc """
  Lists the details of a `Protection` object.
  """
  def describe_protection(client, input, options \\ []) do
    request(client, "DescribeProtection", input, options)
  end

  @doc """
  Provides details about the AWS Shield Advanced subscription for an account.
  """
  def describe_subscription(client, input, options \\ []) do
    request(client, "DescribeSubscription", input, options)
  end

  @doc """
  Removes authorization from the DDoS Response Team (DRT) to notify contacts about
  escalations to the DRT and to initiate proactive customer support.
  """
  def disable_proactive_engagement(client, input, options \\ []) do
    request(client, "DisableProactiveEngagement", input, options)
  end

  @doc """
  Removes the DDoS Response Team's (DRT) access to the specified Amazon S3 bucket
  containing your AWS WAF logs.

  To make a `DisassociateDRTLogBucket` request, you must be subscribed to the
  [Business Support plan](https://aws.amazon.com/premiumsupport/business-support/) or the [Enterprise Support
  plan](https://aws.amazon.com/premiumsupport/enterprise-support/). However, if
  you are not subscribed to one of these support plans, but had been previously
  and had granted the DRT access to your account, you can submit a
  `DisassociateDRTLogBucket` request to remove this access.
  """
  def disassociate_d_r_t_log_bucket(client, input, options \\ []) do
    request(client, "DisassociateDRTLogBucket", input, options)
  end

  @doc """
  Removes the DDoS Response Team's (DRT) access to your AWS account.

  To make a `DisassociateDRTRole` request, you must be subscribed to the [Business Support plan](https://aws.amazon.com/premiumsupport/business-support/) or the
  [Enterprise Support plan](https://aws.amazon.com/premiumsupport/enterprise-support/). However, if
  you are not subscribed to one of these support plans, but had been previously
  and had granted the DRT access to your account, you can submit a
  `DisassociateDRTRole` request to remove this access.
  """
  def disassociate_d_r_t_role(client, input, options \\ []) do
    request(client, "DisassociateDRTRole", input, options)
  end

  @doc """
  Removes health-based detection from the Shield Advanced protection for a
  resource.

  Shield Advanced health-based detection uses the health of your AWS resource to
  improve responsiveness and accuracy in attack detection and mitigation.

  You define the health check in Route 53 and then associate or disassociate it
  with your Shield Advanced protection. For more information, see [Shield Advanced Health-Based
  Detection](https://docs.aws.amazon.com/waf/latest/developerguide/ddos-overview.html#ddos-advanced-health-check-option)
  in the [AWS WAF and AWS Shield Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/).
  """
  def disassociate_health_check(client, input, options \\ []) do
    request(client, "DisassociateHealthCheck", input, options)
  end

  @doc """
  Authorizes the DDoS Response Team (DRT) to use email and phone to notify
  contacts about escalations to the DRT and to initiate proactive customer
  support.
  """
  def enable_proactive_engagement(client, input, options \\ []) do
    request(client, "EnableProactiveEngagement", input, options)
  end

  @doc """
  Returns the `SubscriptionState`, either `Active` or `Inactive`.
  """
  def get_subscription_state(client, input, options \\ []) do
    request(client, "GetSubscriptionState", input, options)
  end

  @doc """
  Returns all ongoing DDoS attacks or all DDoS attacks during a specified time
  period.
  """
  def list_attacks(client, input, options \\ []) do
    request(client, "ListAttacks", input, options)
  end

  @doc """
  Lists all `Protection` objects for the account.
  """
  def list_protections(client, input, options \\ []) do
    request(client, "ListProtections", input, options)
  end

  @doc """
  Updates the details of the list of email addresses and phone numbers that the
  DDoS Response Team (DRT) can use to contact you if you have proactive engagement
  enabled, for escalations to the DRT and to initiate proactive customer support.
  """
  def update_emergency_contact_settings(client, input, options \\ []) do
    request(client, "UpdateEmergencyContactSettings", input, options)
  end

  @doc """
  Updates the details of an existing subscription.

  Only enter values for parameters you want to change. Empty parameters are not
  updated.
  """
  def update_subscription(client, input, options \\ []) do
    request(client, "UpdateSubscription", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, map() | nil, map()}
          | {:error, term()}
  defp request(client, action, input, options) do
    client = %{client | service: "shield",
                        region:  "us-east-1"}
    host = build_host("shield", client)
    url = build_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "AWSShield_20160616.#{action}"}
    ]

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
  defp build_host(endpoint_prefix, %{endpoint: endpoint}) do
    "#{endpoint_prefix}.#{endpoint}"
  end

  defp build_url(host, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}/"
  end

  defp encode!(client, payload) do
    AWS.Client.encode!(client, payload, :json)
  end

  defp decode!(client, payload) do
    AWS.Client.decode!(client, payload, :json)
  end
end
