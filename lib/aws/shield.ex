# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Shield do
  @moduledoc """
  AWS Shield Advanced

  This is the *AWS Shield Advanced API Reference*. This guide is for
  developers who need detailed information about the AWS Shield Advanced API
  actions, data types, and errors. For detailed information about AWS WAF and
  AWS Shield Advanced features and an overview of how to use the AWS WAF and
  AWS Shield Advanced APIs, see the [AWS WAF and AWS Shield Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/).
  """

  @doc """
  Authorizes the DDoS Response team (DRT) to access the specified Amazon S3
  bucket containing your AWS WAF logs. You can associate up to 10 Amazon S3
  buckets with your subscription.

  To use the services of the DRT and make an `AssociateDRTLogBucket` request,
  you must be subscribed to the [Business Support
  plan](https://aws.amazon.com/premiumsupport/business-support/) or the
  [Enterprise Support
  plan](https://aws.amazon.com/premiumsupport/enterprise-support/).
  """
  def associate_d_r_t_log_bucket(client, input, options \\ []) do
    request(client, "AssociateDRTLogBucket", input, options)
  end

  @doc """
  Authorizes the DDoS Response team (DRT), using the specified role, to
  access your AWS account to assist with DDoS attack mitigation during
  potential attacks. This enables the DRT to inspect your AWS WAF
  configuration and create or update AWS WAF rules and web ACLs.

  You can associate only one `RoleArn` with your subscription. If you submit
  an `AssociateDRTRole` request for an account that already has an associated
  role, the new `RoleArn` will replace the existing `RoleArn`.

  Prior to making the `AssociateDRTRole` request, you must attach the
  [AWSShieldDRTAccessPolicy](https://console.aws.amazon.com/iam/home?#/policies/arn:aws:iam::aws:policy/service-role/AWSShieldDRTAccessPolicy)
  managed policy to the role you will specify in the request. For more
  information see [Attaching and Detaching IAM Policies](
  https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_manage-attach-detach.html).
  The role must also trust the service principal ` drt.shield.amazonaws.com`.
  For more information, see [IAM JSON Policy Elements:
  Principal](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html).

  The DRT will have access only to your AWS WAF and Shield resources. By
  submitting this request, you authorize the DRT to inspect your AWS WAF and
  Shield configuration and create and update AWS WAF rules and web ACLs on
  your behalf. The DRT takes these actions only if explicitly authorized by
  you.

  You must have the `iam:PassRole` permission to make an `AssociateDRTRole`
  request. For more information, see [Granting a User Permissions to Pass a
  Role to an AWS
  Service](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_passrole.html).

  To use the services of the DRT and make an `AssociateDRTRole` request, you
  must be subscribed to the [Business Support
  plan](https://aws.amazon.com/premiumsupport/business-support/) or the
  [Enterprise Support
  plan](https://aws.amazon.com/premiumsupport/enterprise-support/).
  """
  def associate_d_r_t_role(client, input, options \\ []) do
    request(client, "AssociateDRTRole", input, options)
  end

  @doc """
  Enables AWS Shield Advanced for a specific AWS resource. The resource can
  be an Amazon CloudFront distribution, Elastic Load Balancing load balancer,
  AWS Global Accelerator accelerator, Elastic IP Address, or an Amazon Route
  53 hosted zone.

  You can add protection to only a single resource with each CreateProtection
  request. If you want to add protection to multiple resources at once, use
  the [AWS WAF console](https://console.aws.amazon.com/waf/). For more
  information see [Getting Started with AWS Shield
  Advanced](https://docs.aws.amazon.com/waf/latest/developerguide/getting-started-ddos.html)
  and [Add AWS Shield Advanced Protection to more AWS
  Resources](https://docs.aws.amazon.com/waf/latest/developerguide/configure-new-protection.html).
  """
  def create_protection(client, input, options \\ []) do
    request(client, "CreateProtection", input, options)
  end

  @doc """
  Activates AWS Shield Advanced for an account.

  As part of this request you can specify `EmergencySettings` that
  automaticaly grant the DDoS response team (DRT) needed permissions to
  assist you during a suspected DDoS attack. For more information see
  [Authorize the DDoS Response Team to Create Rules and Web ACLs on Your
  Behalf](https://docs.aws.amazon.com/waf/latest/developerguide/authorize-DRT.html).

  To use the services of the DRT, you must be subscribed to the [Business
  Support plan](https://aws.amazon.com/premiumsupport/business-support/) or
  the [Enterprise Support
  plan](https://aws.amazon.com/premiumsupport/enterprise-support/).

  When you initally create a subscription, your subscription is set to be
  automatically renewed at the end of the existing subscription period. You
  can change this by submitting an `UpdateSubscription` request.
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
  Removes AWS Shield Advanced from an account. AWS Shield Advanced requires a
  1-year subscription commitment. You cannot delete a subscription prior to
  the completion of that commitment.
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
  Response team (DRT) to access your AWS account while assisting with attack
  mitigation.
  """
  def describe_d_r_t_access(client, input, options \\ []) do
    request(client, "DescribeDRTAccess", input, options)
  end

  @doc """
  Lists the email addresses that the DRT can use to contact you during a
  suspected attack.
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
  Removes the DDoS Response team's (DRT) access to the specified Amazon S3
  bucket containing your AWS WAF logs.

  To make a `DisassociateDRTLogBucket` request, you must be subscribed to the
  [Business Support
  plan](https://aws.amazon.com/premiumsupport/business-support/) or the
  [Enterprise Support
  plan](https://aws.amazon.com/premiumsupport/enterprise-support/). However,
  if you are not subscribed to one of these support plans, but had been
  previously and had granted the DRT access to your account, you can submit a
  `DisassociateDRTLogBucket` request to remove this access.
  """
  def disassociate_d_r_t_log_bucket(client, input, options \\ []) do
    request(client, "DisassociateDRTLogBucket", input, options)
  end

  @doc """
  Removes the DDoS Response team's (DRT) access to your AWS account.

  To make a `DisassociateDRTRole` request, you must be subscribed to the
  [Business Support
  plan](https://aws.amazon.com/premiumsupport/business-support/) or the
  [Enterprise Support
  plan](https://aws.amazon.com/premiumsupport/enterprise-support/). However,
  if you are not subscribed to one of these support plans, but had been
  previously and had granted the DRT access to your account, you can submit a
  `DisassociateDRTRole` request to remove this access.
  """
  def disassociate_d_r_t_role(client, input, options \\ []) do
    request(client, "DisassociateDRTRole", input, options)
  end

  @doc """
  Returns the `SubscriptionState`, either `Active` or `Inactive`.
  """
  def get_subscription_state(client, input, options \\ []) do
    request(client, "GetSubscriptionState", input, options)
  end

  @doc """
  Returns all ongoing DDoS attacks or all DDoS attacks during a specified
  time period.
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
  Updates the details of the list of email addresses that the DRT can use to
  contact you during a suspected attack.
  """
  def update_emergency_contact_settings(client, input, options \\ []) do
    request(client, "UpdateEmergencyContactSettings", input, options)
  end

  @doc """
  Updates the details of an existing subscription. Only enter values for
  parameters you want to change. Empty parameters are not updated.
  """
  def update_subscription(client, input, options \\ []) do
    request(client, "UpdateSubscription", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, Poison.Parser.t() | nil, Poison.Response.t()}
          | {:error, Poison.Parser.t()}
          | {:error, HTTPoison.Error.t()}
  defp request(client, action, input, options) do
    client = %{client | service: "shield"}
    host = get_host("shield", client)
    url = get_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "AWSShield_20160616.#{action}"},
      {"X-Amz-Security-Token", client.session_token}
    ]
    
    payload = Poison.Encoder.encode(input, [])
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    
    case HTTPoison.post(url, payload, headers, options) do
      {:ok, %HTTPoison.Response{status_code: 200, body: ""} = response} ->
        {:ok, nil, response}
    
      {:ok, %HTTPoison.Response{status_code: 200, body: body} = response} ->
        {:ok, Poison.Parser.parse!(body, %{}), response}
    
      {:ok, %HTTPoison.Response{body: body}} ->
        error = Poison.Parser.parse!(body, %{})
        exception = error["__type"]
        message = error["message"]
        {:error, {exception, message}}
    
      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp get_host(endpoint_prefix, client) do
    if client.region == "local" do
      "localhost"
    else
      "#{endpoint_prefix}.#{client.region}.#{client.endpoint}"
    end
  end

  defp get_url(host, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}/"
  end
end
