# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.FMS do
  @moduledoc """
  This is the *Firewall Manager API Reference*.

  This guide is for
  developers who need detailed information about the Firewall Manager API actions,
  data
  types, and errors. For detailed information about Firewall Manager features, see
  the
  [Firewall Manager Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/fms-chapter.html).

  Some API actions require explicit resource permissions. For information, see the
  developer guide topic
  [Service roles for Firewall Manager](https://docs.aws.amazon.com/waf/latest/developerguide/fms-security_iam_service-with-iam.html#fms-security_iam_service-with-iam-roles-service).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
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
  Sets a Firewall Manager default administrator account.

  The Firewall Manager default administrator account can manage third-party
  firewalls and has full administrative scope that allows administration of all
  policy types, accounts, organizational units, and Regions. This account must be
  a member account of the organization in Organizations whose resources you want
  to protect.

  For information about working with Firewall Manager administrator accounts, see
  [Managing Firewall Manager administrators](https://docs.aws.amazon.com/organizations/latest/userguide/fms-administrators.html)
  in the *Firewall Manager Developer Guide*.
  """
  def associate_admin_account(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssociateAdminAccount", input, options)
  end

  @doc """
  Sets the Firewall Manager policy administrator as a tenant administrator of a
  third-party firewall service.

  A tenant is an instance of the third-party firewall service that's associated
  with your Amazon Web Services customer account.
  """
  def associate_third_party_firewall(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssociateThirdPartyFirewall", input, options)
  end

  @doc """
  Associate resources to a Firewall Manager resource set.
  """
  def batch_associate_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchAssociateResource", input, options)
  end

  @doc """
  Disassociates resources from a Firewall Manager resource set.
  """
  def batch_disassociate_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchDisassociateResource", input, options)
  end

  @doc """
  Permanently deletes an Firewall Manager applications list.
  """
  def delete_apps_list(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteAppsList", input, options)
  end

  @doc """
  Deletes an Firewall Manager association with the IAM role and the Amazon Simple
  Notification Service (SNS) topic that is used to record Firewall Manager SNS
  logs.
  """
  def delete_notification_channel(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteNotificationChannel", input, options)
  end

  @doc """
  Permanently deletes an Firewall Manager policy.
  """
  def delete_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeletePolicy", input, options)
  end

  @doc """
  Permanently deletes an Firewall Manager protocols list.
  """
  def delete_protocols_list(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteProtocolsList", input, options)
  end

  @doc """
  Deletes the specified `ResourceSet`.
  """
  def delete_resource_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteResourceSet", input, options)
  end

  @doc """
  Disassociates an Firewall Manager administrator account.

  To set a different account as an Firewall Manager administrator, submit a
  `PutAdminAccount` request. To set an account as a default administrator account,
  you must submit an `AssociateAdminAccount` request.

  Disassociation of the default administrator account follows the first in, last
  out principle. If you are the default administrator, all Firewall Manager
  administrators within the organization must first disassociate their accounts
  before you can disassociate your account.
  """
  def disassociate_admin_account(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisassociateAdminAccount", input, options)
  end

  @doc """
  Disassociates a Firewall Manager policy administrator from a third-party
  firewall tenant.

  When you call `DisassociateThirdPartyFirewall`, the third-party firewall vendor
  deletes all of the firewalls that are associated with the account.
  """
  def disassociate_third_party_firewall(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisassociateThirdPartyFirewall", input, options)
  end

  @doc """
  Returns the Organizations account that is associated with Firewall Manager
  as the Firewall Manager default administrator.
  """
  def get_admin_account(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetAdminAccount", input, options)
  end

  @doc """
  Returns information about the specified account's administrative scope.

  The admistrative scope defines the resources that an Firewall Manager
  administrator can manage.
  """
  def get_admin_scope(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetAdminScope", input, options)
  end

  @doc """
  Returns information about the specified Firewall Manager applications list.
  """
  def get_apps_list(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetAppsList", input, options)
  end

  @doc """
  Returns detailed compliance information about the specified member account.

  Details
  include resources that are in and out of compliance with the specified policy.

    *
  Resources are
  considered noncompliant for WAF and Shield Advanced policies if the specified
  policy has
  not been applied to them.

    *
  Resources are considered noncompliant for security group policies if
  they are in scope of the policy, they violate one or more of the policy rules,
  and remediation
  is disabled or not possible.

    *
  Resources are considered noncompliant for Network Firewall policies
  if a firewall is missing in the VPC, if the firewall endpoint isn't set up in an
  expected Availability Zone and subnet,
  if a subnet created by the Firewall Manager doesn't have the expected route
  table,
  and for modifications to a firewall policy that violate the Firewall Manager
  policy's rules.

    *
  Resources are considered noncompliant for DNS Firewall policies
  if a DNS Firewall rule group is missing from the rule group associations for the
  VPC.
  """
  def get_compliance_detail(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetComplianceDetail", input, options)
  end

  @doc """
  Information
  about the Amazon Simple Notification Service (SNS) topic that is used to
  record Firewall Manager SNS logs.
  """
  def get_notification_channel(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetNotificationChannel", input, options)
  end

  @doc """
  Returns information about the specified Firewall Manager policy.
  """
  def get_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetPolicy", input, options)
  end

  @doc """
  If you created a Shield Advanced policy, returns policy-level attack summary
  information
  in the event of a potential DDoS attack.

  Other policy types are currently unsupported.
  """
  def get_protection_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetProtectionStatus", input, options)
  end

  @doc """
  Returns information about the specified Firewall Manager protocols list.
  """
  def get_protocols_list(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetProtocolsList", input, options)
  end

  @doc """
  Gets information about a specific resource set.
  """
  def get_resource_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetResourceSet", input, options)
  end

  @doc """
  The onboarding status of a Firewall Manager admin account to third-party
  firewall vendor tenant.
  """
  def get_third_party_firewall_association_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetThirdPartyFirewallAssociationStatus", input, options)
  end

  @doc """
  Retrieves violations for a resource based on the specified Firewall Manager
  policy and Amazon Web Services account.
  """
  def get_violation_details(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetViolationDetails", input, options)
  end

  @doc """
  Returns a `AdminAccounts` object that lists the Firewall Manager administrators
  within the organization that are onboarded to Firewall Manager by
  `AssociateAdminAccount`.

  This operation can be called only from the organization's management account.
  """
  def list_admin_accounts_for_organization(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAdminAccountsForOrganization", input, options)
  end

  @doc """
  Lists the accounts that are managing the specified Organizations member account.

  This is useful for any member account so that they can view the accounts who are
  managing their account. This operation only returns the managing administrators
  that have the requested account within their `AdminScope`.
  """
  def list_admins_managing_account(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAdminsManagingAccount", input, options)
  end

  @doc """
  Returns an array of `AppsListDataSummary` objects.
  """
  def list_apps_lists(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAppsLists", input, options)
  end

  @doc """
  Returns an array of `PolicyComplianceStatus` objects.

  Use
  `PolicyComplianceStatus` to get a summary of which member accounts are protected
  by the specified policy.
  """
  def list_compliance_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListComplianceStatus", input, options)
  end

  @doc """
  Returns an array of resources in the organization's accounts that are available
  to be associated with a resource set.
  """
  def list_discovered_resources(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListDiscoveredResources", input, options)
  end

  @doc """
  Returns a `MemberAccounts` object that lists the member accounts in the
  administrator's Amazon Web Services organization.

  Either an Firewall Manager administrator or the organization's management
  account can make this request.
  """
  def list_member_accounts(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListMemberAccounts", input, options)
  end

  @doc """
  Returns an array of `PolicySummary` objects.
  """
  def list_policies(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListPolicies", input, options)
  end

  @doc """
  Returns an array of `ProtocolsListDataSummary` objects.
  """
  def list_protocols_lists(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListProtocolsLists", input, options)
  end

  @doc """
  Returns an array of resources that are currently associated to a resource set.
  """
  def list_resource_set_resources(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListResourceSetResources", input, options)
  end

  @doc """
  Returns an array of `ResourceSetSummary` objects.
  """
  def list_resource_sets(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListResourceSets", input, options)
  end

  @doc """
  Retrieves the list of tags for the specified Amazon Web Services resource.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Retrieves a list of all of the third-party firewall policies that are associated
  with the third-party firewall administrator's account.
  """
  def list_third_party_firewall_firewall_policies(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListThirdPartyFirewallFirewallPolicies", input, options)
  end

  @doc """
  Creates or updates an Firewall Manager administrator account.

  The account must be a member of the organization that was onboarded to Firewall
  Manager by `AssociateAdminAccount`. Only the organization's management account
  can create an Firewall Manager administrator account. When you create an
  Firewall Manager administrator account, the service checks to see if the account
  is already a delegated administrator within Organizations. If the account isn't
  a delegated administrator, Firewall Manager calls Organizations to delegate the
  account within Organizations. For more information about administrator accounts
  within Organizations, see
  [Managing the Amazon Web Services Accounts in Your Organization](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts.html).
  """
  def put_admin_account(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutAdminAccount", input, options)
  end

  @doc """
  Creates an Firewall Manager applications list.
  """
  def put_apps_list(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutAppsList", input, options)
  end

  @doc """
  Designates the IAM role and Amazon Simple Notification Service (SNS) topic that
  Firewall Manager uses to record SNS logs.

  To perform this action outside of the console, you must first configure the SNS
  topic's access policy to allow the `SnsRoleName` to publish SNS logs. If the
  `SnsRoleName` provided is a role other than the `AWSServiceRoleForFMS`
  service-linked role, this role must have a trust relationship configured to
  allow the Firewall Manager service principal `fms.amazonaws.com` to assume this
  role. For information about configuring an SNS access policy, see
  [Service roles for Firewall Manager](https://docs.aws.amazon.com/waf/latest/developerguide/fms-security_iam_service-with-iam.html#fms-security_iam_service-with-iam-roles-service)
  in the *Firewall Manager Developer Guide*.
  """
  def put_notification_channel(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutNotificationChannel", input, options)
  end

  @doc """
  Creates an Firewall Manager policy.

  A Firewall Manager policy is specific to the individual policy type. If you want
  to enforce multiple
  policy types across accounts, you can create multiple policies. You can create
  more than one
  policy for each type.

  If you add a new account to an organization that you created with Organizations,
  Firewall Manager
  automatically applies the policy to the resources in that account that are
  within scope of
  the policy.

  Firewall Manager provides the following types of policies:

    *

  **Shield Advanced policy** - This policy applies Shield Advanced
  protection to specified accounts and resources.

    *

  **Security Groups policy** - This type of policy gives you
  control over security groups that are in use throughout your organization in
  Organizations and lets you enforce a baseline set of rules across your
  organization.

    *

  **Network Firewall policy** - This policy applies
  Network Firewall protection to your organization's VPCs.

    *

  **DNS Firewall policy** - This policy applies
  Amazon Route 53 Resolver DNS Firewall protections to your organization's VPCs.

    *

  **Third-party firewall policy** - This policy applies third-party firewall
  protections. Third-party firewalls are available by subscription through the
  Amazon Web Services Marketplace console at [Amazon Web Services Marketplace](https://aws.amazon.com/marketplace).

      *

  **Palo Alto Networks Cloud NGFW policy** - This policy applies Palo Alto
  Networks Cloud Next Generation Firewall (NGFW) protections and Palo Alto
  Networks Cloud NGFW rulestacks to your organization's VPCs.

      *

  **Fortigate CNF policy** - This policy applies
  Fortigate Cloud Native Firewall (CNF) protections. Fortigate CNF is a
  cloud-centered solution that blocks Zero-Day threats and secures cloud
  infrastructures with industry-leading advanced threat prevention, smart web
  application firewalls (WAF), and API protection.
  """
  def put_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutPolicy", input, options)
  end

  @doc """
  Creates an Firewall Manager protocols list.
  """
  def put_protocols_list(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutProtocolsList", input, options)
  end

  @doc """
  Creates the resource set.

  An Firewall Manager resource set defines the resources to import into an
  Firewall Manager policy from another Amazon Web Services service.
  """
  def put_resource_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutResourceSet", input, options)
  end

  @doc """
  Adds one or more tags to an Amazon Web Services resource.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Removes one or more tags from an Amazon Web Services resource.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end
end
