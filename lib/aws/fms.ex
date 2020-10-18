# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.FMS do
  @moduledoc """
  AWS Firewall Manager

  This is the *AWS Firewall Manager API Reference*. This guide is for
  developers who need detailed information about the AWS Firewall Manager API
  actions, data types, and errors. For detailed information about AWS
  Firewall Manager features, see the [AWS Firewall Manager Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/fms-chapter.html).
  """

  @doc """
  Sets the AWS Firewall Manager administrator account. AWS Firewall Manager
  must be associated with the master account of your AWS organization or
  associated with a member account that has the appropriate permissions. If
  the account ID that you submit is not an AWS Organizations master account,
  AWS Firewall Manager will set the appropriate permissions for the given
  member account.

  The account that you associate with AWS Firewall Manager is called the AWS
  Firewall Manager administrator account.
  """
  def associate_admin_account(client, input, options \\ []) do
    request(client, "AssociateAdminAccount", input, options)
  end

  @doc """
  Permanently deletes an AWS Firewall Manager applications list.
  """
  def delete_apps_list(client, input, options \\ []) do
    request(client, "DeleteAppsList", input, options)
  end

  @doc """
  Deletes an AWS Firewall Manager association with the IAM role and the
  Amazon Simple Notification Service (SNS) topic that is used to record AWS
  Firewall Manager SNS logs.
  """
  def delete_notification_channel(client, input, options \\ []) do
    request(client, "DeleteNotificationChannel", input, options)
  end

  @doc """
  Permanently deletes an AWS Firewall Manager policy.
  """
  def delete_policy(client, input, options \\ []) do
    request(client, "DeletePolicy", input, options)
  end

  @doc """
  Permanently deletes an AWS Firewall Manager protocols list.
  """
  def delete_protocols_list(client, input, options \\ []) do
    request(client, "DeleteProtocolsList", input, options)
  end

  @doc """
  Disassociates the account that has been set as the AWS Firewall Manager
  administrator account. To set a different account as the administrator
  account, you must submit an `AssociateAdminAccount` request.
  """
  def disassociate_admin_account(client, input, options \\ []) do
    request(client, "DisassociateAdminAccount", input, options)
  end

  @doc """
  Returns the AWS Organizations master account that is associated with AWS
  Firewall Manager as the AWS Firewall Manager administrator.
  """
  def get_admin_account(client, input, options \\ []) do
    request(client, "GetAdminAccount", input, options)
  end

  @doc """
  Returns information about the specified AWS Firewall Manager applications
  list.
  """
  def get_apps_list(client, input, options \\ []) do
    request(client, "GetAppsList", input, options)
  end

  @doc """
  Returns detailed compliance information about the specified member account.
  Details include resources that are in and out of compliance with the
  specified policy. Resources are considered noncompliant for AWS WAF and
  Shield Advanced policies if the specified policy has not been applied to
  them. Resources are considered noncompliant for security group policies if
  they are in scope of the policy, they violate one or more of the policy
  rules, and remediation is disabled or not possible.
  """
  def get_compliance_detail(client, input, options \\ []) do
    request(client, "GetComplianceDetail", input, options)
  end

  @doc """
  Information about the Amazon Simple Notification Service (SNS) topic that
  is used to record AWS Firewall Manager SNS logs.
  """
  def get_notification_channel(client, input, options \\ []) do
    request(client, "GetNotificationChannel", input, options)
  end

  @doc """
  Returns information about the specified AWS Firewall Manager policy.
  """
  def get_policy(client, input, options \\ []) do
    request(client, "GetPolicy", input, options)
  end

  @doc """
  If you created a Shield Advanced policy, returns policy-level attack
  summary information in the event of a potential DDoS attack. Other policy
  types are currently unsupported.
  """
  def get_protection_status(client, input, options \\ []) do
    request(client, "GetProtectionStatus", input, options)
  end

  @doc """
  Returns information about the specified AWS Firewall Manager protocols
  list.
  """
  def get_protocols_list(client, input, options \\ []) do
    request(client, "GetProtocolsList", input, options)
  end

  @doc """
  Retrieves violations for a resource based on the specified AWS Firewall
  Manager policy and AWS account.
  """
  def get_violation_details(client, input, options \\ []) do
    request(client, "GetViolationDetails", input, options)
  end

  @doc """
  Returns an array of `AppsListDataSummary` objects.
  """
  def list_apps_lists(client, input, options \\ []) do
    request(client, "ListAppsLists", input, options)
  end

  @doc """
  Returns an array of `PolicyComplianceStatus` objects. Use
  `PolicyComplianceStatus` to get a summary of which member accounts are
  protected by the specified policy.
  """
  def list_compliance_status(client, input, options \\ []) do
    request(client, "ListComplianceStatus", input, options)
  end

  @doc """
  Returns a `MemberAccounts` object that lists the member accounts in the
  administrator's AWS organization.

  The `ListMemberAccounts` must be submitted by the account that is set as
  the AWS Firewall Manager administrator.
  """
  def list_member_accounts(client, input, options \\ []) do
    request(client, "ListMemberAccounts", input, options)
  end

  @doc """
  Returns an array of `PolicySummary` objects.
  """
  def list_policies(client, input, options \\ []) do
    request(client, "ListPolicies", input, options)
  end

  @doc """
  Returns an array of `ProtocolsListDataSummary` objects.
  """
  def list_protocols_lists(client, input, options \\ []) do
    request(client, "ListProtocolsLists", input, options)
  end

  @doc """
  Retrieves the list of tags for the specified AWS resource.
  """
  def list_tags_for_resource(client, input, options \\ []) do
    request(client, "ListTagsForResource", input, options)
  end

  @doc """
  Creates an AWS Firewall Manager applications list.
  """
  def put_apps_list(client, input, options \\ []) do
    request(client, "PutAppsList", input, options)
  end

  @doc """
  Designates the IAM role and Amazon Simple Notification Service (SNS) topic
  that AWS Firewall Manager uses to record SNS logs.
  """
  def put_notification_channel(client, input, options \\ []) do
    request(client, "PutNotificationChannel", input, options)
  end

  @doc """
  Creates an AWS Firewall Manager policy.

  Firewall Manager provides the following types of policies:

  <ul> <li> A Shield Advanced policy, which applies Shield Advanced
  protection to specified accounts and resources

  </li> <li> An AWS WAF policy (type WAFV2), which defines rule groups to run
  first in the corresponding AWS WAF web ACL and rule groups to run last in
  the web ACL.

  </li> <li> An AWS WAF Classic policy (type WAF), which defines a rule
  group.

  </li> <li> A security group policy, which manages VPC security groups
  across your AWS organization.

  </li> </ul> Each policy is specific to one of the types. If you want to
  enforce more than one policy type across accounts, create multiple
  policies. You can create multiple policies for each type.

  You must be subscribed to Shield Advanced to create a Shield Advanced
  policy. For more information about subscribing to Shield Advanced, see
  [CreateSubscription](https://docs.aws.amazon.com/waf/latest/DDOSAPIReference/API_CreateSubscription.html).
  """
  def put_policy(client, input, options \\ []) do
    request(client, "PutPolicy", input, options)
  end

  @doc """
  Creates an AWS Firewall Manager protocols list.
  """
  def put_protocols_list(client, input, options \\ []) do
    request(client, "PutProtocolsList", input, options)
  end

  @doc """
  Adds one or more tags to an AWS resource.
  """
  def tag_resource(client, input, options \\ []) do
    request(client, "TagResource", input, options)
  end

  @doc """
  Removes one or more tags from an AWS resource.
  """
  def untag_resource(client, input, options \\ []) do
    request(client, "UntagResource", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, action, input, options) do
    client = %{client | service: "fms"}
    host = build_host("fms", client)
    url = build_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "AWSFMS_20180101.#{action}"}
    ]

    payload = encode!(input)
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    perform_request(:post, url, payload, headers, options, 200)
  end

  defp encode!(input) do
    {encoder, fun} = Application.get_env(:aws_elixir, :json_encoder, {Poison, :encode!})
    apply(encoder, fun, [input])
  end

  defp perform_request(method, url, payload, headers, options, success_status_code) do
    {client, fun} = Application.get_env(:aws_elixir, :http_client, {Aws.Internal.HttpClient, :request})
    apply(client, fun, [method, url, payload, headers, options, success_status_code])
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
end
