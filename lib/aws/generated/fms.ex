# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.FMS do
  @moduledoc """
  This is the *Firewall Manager API Reference*.

  This guide is for developers who need detailed information about the Firewall
  Manager API actions, data types, and errors. For detailed information about
  Firewall Manager features, see the [Firewall Manager Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/fms-chapter.html).

  Some API actions require explicit resource permissions. For information, see the
  developer guide topic [Firewall Manager required permissions for API actions](https://docs.aws.amazon.com/waf/latest/developerguide/fms-api-permissions-ref.html).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: "FMS",
      api_version: "2018-01-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "fms",
      global?: false,
      protocol: "json",
      service_id: "FMS",
      signature_version: "v4",
      signing_name: "fms",
      target_prefix: "AWSFMS_20180101"
    }
  end

  @doc """
  Sets the Firewall Manager administrator account.

  The account must be a member of the organization in Organizations whose
  resources you want to protect. Firewall Manager sets the permissions that allow
  the account to administer your Firewall Manager policies.

  The account that you associate with Firewall Manager is called the Firewall
  Manager administrator account.
  """
  def associate_admin_account(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AssociateAdminAccount", input, options)
  end

  @doc """
  Permanently deletes an Firewall Manager applications list.
  """
  def delete_apps_list(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteAppsList", input, options)
  end

  @doc """
  Deletes an Firewall Manager association with the IAM role and the Amazon Simple
  Notification Service (SNS) topic that is used to record Firewall Manager SNS
  logs.
  """
  def delete_notification_channel(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteNotificationChannel", input, options)
  end

  @doc """
  Permanently deletes an Firewall Manager policy.
  """
  def delete_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeletePolicy", input, options)
  end

  @doc """
  Permanently deletes an Firewall Manager protocols list.
  """
  def delete_protocols_list(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteProtocolsList", input, options)
  end

  @doc """
  Disassociates the account that has been set as the Firewall Manager
  administrator account.

  To set a different account as the administrator account, you must submit an
  `AssociateAdminAccount` request.
  """
  def disassociate_admin_account(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DisassociateAdminAccount", input, options)
  end

  @doc """
  Returns the Organizations account that is associated with Firewall Manager as
  the Firewall Manager administrator.
  """
  def get_admin_account(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetAdminAccount", input, options)
  end

  @doc """
  Returns information about the specified Firewall Manager applications list.
  """
  def get_apps_list(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetAppsList", input, options)
  end

  @doc """
  Returns detailed compliance information about the specified member account.

  Details include resources that are in and out of compliance with the specified
  policy.

    * Resources are considered noncompliant for WAF and Shield Advanced
  policies if the specified policy has not been applied to them.

    * Resources are considered noncompliant for security group policies
  if they are in scope of the policy, they violate one or more of the policy
  rules, and remediation is disabled or not possible.

    * Resources are considered noncompliant for Network Firewall
  policies if a firewall is missing in the VPC, if the firewall endpoint isn't set
  up in an expected Availability Zone and subnet, if a subnet created by the
  Firewall Manager doesn't have the expected route table, and for modifications to
  a firewall policy that violate the Firewall Manager policy's rules.

    * Resources are considered noncompliant for DNS Firewall policies if
  a DNS Firewall rule group is missing from the rule group associations for the
  VPC.
  """
  def get_compliance_detail(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetComplianceDetail", input, options)
  end

  @doc """
  Information about the Amazon Simple Notification Service (SNS) topic that is
  used to record Firewall Manager SNS logs.
  """
  def get_notification_channel(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetNotificationChannel", input, options)
  end

  @doc """
  Returns information about the specified Firewall Manager policy.
  """
  def get_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetPolicy", input, options)
  end

  @doc """
  If you created a Shield Advanced policy, returns policy-level attack summary
  information in the event of a potential DDoS attack.

  Other policy types are currently unsupported.
  """
  def get_protection_status(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetProtectionStatus", input, options)
  end

  @doc """
  Returns information about the specified Firewall Manager protocols list.
  """
  def get_protocols_list(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetProtocolsList", input, options)
  end

  @doc """
  Retrieves violations for a resource based on the specified Firewall Manager
  policy and Amazon Web Services account.
  """
  def get_violation_details(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetViolationDetails", input, options)
  end

  @doc """
  Returns an array of `AppsListDataSummary` objects.
  """
  def list_apps_lists(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListAppsLists", input, options)
  end

  @doc """
  Returns an array of `PolicyComplianceStatus` objects.

  Use `PolicyComplianceStatus` to get a summary of which member accounts are
  protected by the specified policy.
  """
  def list_compliance_status(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListComplianceStatus", input, options)
  end

  @doc """
  Returns a `MemberAccounts` object that lists the member accounts in the
  administrator's Amazon Web Services organization.

  The `ListMemberAccounts` must be submitted by the account that is set as the
  Firewall Manager administrator.
  """
  def list_member_accounts(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListMemberAccounts", input, options)
  end

  @doc """
  Returns an array of `PolicySummary` objects.
  """
  def list_policies(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListPolicies", input, options)
  end

  @doc """
  Returns an array of `ProtocolsListDataSummary` objects.
  """
  def list_protocols_lists(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListProtocolsLists", input, options)
  end

  @doc """
  Retrieves the list of tags for the specified Amazon Web Services resource.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListTagsForResource", input, options)
  end

  @doc """
  Creates an Firewall Manager applications list.
  """
  def put_apps_list(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutAppsList", input, options)
  end

  @doc """
  Designates the IAM role and Amazon Simple Notification Service (SNS) topic that
  Firewall Manager uses to record SNS logs.

  To perform this action outside of the console, you must configure the SNS topic
  to allow the Firewall Manager role `AWSServiceRoleForFMS` to publish SNS logs.
  For more information, see [Firewall Manager required permissions for API actions](https://docs.aws.amazon.com/waf/latest/developerguide/fms-api-permissions-ref.html)
  in the *Firewall Manager Developer Guide*.
  """
  def put_notification_channel(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutNotificationChannel", input, options)
  end

  @doc """
  Creates an Firewall Manager policy.

  Firewall Manager provides the following types of policies:

    * An WAF policy (type WAFV2), which defines rule groups to run first
  in the corresponding WAF web ACL and rule groups to run last in the web ACL.

    * An WAF Classic policy (type WAF), which defines a rule group.

    * A Shield Advanced policy, which applies Shield Advanced protection
  to specified accounts and resources.

    * A security group policy, which manages VPC security groups across
  your Amazon Web Services organization.

    * An Network Firewall policy, which provides firewall rules to
  filter network traffic in specified Amazon VPCs.

    * A DNS Firewall policy, which provides Route 53 Resolver DNS
  Firewall rules to filter DNS queries for specified VPCs.

  Each policy is specific to one of the types. If you want to enforce more than
  one policy type across accounts, create multiple policies. You can create
  multiple policies for each type.

  You must be subscribed to Shield Advanced to create a Shield Advanced policy.
  For more information about subscribing to Shield Advanced, see
  [CreateSubscription](https://docs.aws.amazon.com/waf/latest/DDOSAPIReference/API_CreateSubscription.html).
  """
  def put_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutPolicy", input, options)
  end

  @doc """
  Creates an Firewall Manager protocols list.
  """
  def put_protocols_list(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutProtocolsList", input, options)
  end

  @doc """
  Adds one or more tags to an Amazon Web Services resource.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "TagResource", input, options)
  end

  @doc """
  Removes one or more tags from an Amazon Web Services resource.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UntagResource", input, options)
  end
end
