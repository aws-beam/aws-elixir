# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Organizations do
  @moduledoc """
  AWS Organizations
  """

  @doc """
  Sends a response to the originator of a handshake agreeing to the action
  proposed by the handshake request.

  This operation can be called only by the following principals when they
  also have the relevant IAM permissions:

  <ul> <li> **Invitation to join** or **Approve all features request**
  handshakes: only a principal from the member account.

  The user who calls the API for an invitation to join must have the
  `organizations:AcceptHandshake` permission. If you enabled all features in
  the organization, the user must also have the `iam:CreateServiceLinkedRole`
  permission so that AWS Organizations can create the required service-linked
  role named `AWSServiceRoleForOrganizations`. For more information, see [AWS
  Organizations and Service-Linked
  Roles](http://docs.aws.amazon.com/organizations/latest/userguide/orgs_integration_services.html#orgs_integration_service-linked-roles)
  in the *AWS Organizations User Guide*.

  </li> <li> **Enable all features final confirmation** handshake: only a
  principal from the master account.

  For more information about invitations, see [Inviting an AWS Account to
  Join Your
  Organization](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_invites.html)
  in the *AWS Organizations User Guide.* For more information about requests
  to enable all features in the organization, see [Enabling All Features in
  Your
  Organization](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html)
  in the *AWS Organizations User Guide.*

  </li> </ul> After you accept a handshake, it continues to appear in the
  results of relevant APIs for only 30 days. After that, it's deleted.
  """
  def accept_handshake(client, input, options \\ []) do
    request(client, "AcceptHandshake", input, options)
  end

  @doc """
  Attaches a policy to a root, an organizational unit (OU), or an individual
  account. How the policy affects accounts depends on the type of policy.
  Refer to the *AWS Organizations User Guide* for information about each
  policy type:

  <ul> <li>
  [AISERVICES_OPT_OUT_POLICY](http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html)

  </li> <li>
  [BACKUP_POLICY](http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html)

  </li> <li>
  [SERVICE_CONTROL_POLICY](http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scp.html)

  </li> <li>
  [TAG_POLICY](http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html)

  </li> </ul> This operation can be called only from the organization's
  master account.
  """
  def attach_policy(client, input, options \\ []) do
    request(client, "AttachPolicy", input, options)
  end

  @doc """
  Cancels a handshake. Canceling a handshake sets the handshake state to
  `CANCELED`.

  This operation can be called only from the account that originated the
  handshake. The recipient of the handshake can't cancel it, but can use
  `DeclineHandshake` instead. After a handshake is canceled, the recipient
  can no longer respond to that handshake.

  After you cancel a handshake, it continues to appear in the results of
  relevant APIs for only 30 days. After that, it's deleted.
  """
  def cancel_handshake(client, input, options \\ []) do
    request(client, "CancelHandshake", input, options)
  end

  @doc """
  Creates an AWS account that is automatically a member of the organization
  whose credentials made the request. This is an asynchronous request that
  AWS performs in the background. Because `CreateAccount` operates
  asynchronously, it can return a successful completion message even though
  account initialization might still be in progress. You might need to wait a
  few minutes before you can successfully access the account. To check the
  status of the request, do one of the following:

  <ul> <li> Use the `OperationId` response element from this operation to
  provide as a parameter to the `DescribeCreateAccountStatus` operation.

  </li> <li> Check the AWS CloudTrail log for the `CreateAccountResult`
  event. For information on using AWS CloudTrail with AWS Organizations, see
  [Monitoring the Activity in Your
  Organization](http://docs.aws.amazon.com/organizations/latest/userguide/orgs_monitoring.html)
  in the *AWS Organizations User Guide.*

  </li> </ul> <p/> The user who calls the API to create an account must have
  the `organizations:CreateAccount` permission. If you enabled all features
  in the organization, AWS Organizations creates the required service-linked
  role named `AWSServiceRoleForOrganizations`. For more information, see [AWS
  Organizations and Service-Linked
  Roles](http://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html#orgs_integrate_services-using_slrs)
  in the *AWS Organizations User Guide*.

  AWS Organizations preconfigures the new member account with a role (named
  `OrganizationAccountAccessRole` by default) that grants users in the master
  account administrator permissions in the new member account. Principals in
  the master account can assume the role. AWS Organizations clones the
  company name and address information for the new account from the
  organization's master account.

  This operation can be called only from the organization's master account.

  For more information about creating accounts, see [Creating an AWS Account
  in Your
  Organization](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_create.html)
  in the *AWS Organizations User Guide.*

  <important> <ul> <li> When you create an account in an organization using
  the AWS Organizations console, API, or CLI commands, the information
  required for the account to operate as a standalone account, such as a
  payment method and signing the end user license agreement (EULA) is *not*
  automatically collected. If you must remove an account from your
  organization later, you can do so only after you provide the missing
  information. Follow the steps at [ To leave an organization as a member
  account](http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_remove.html#leave-without-all-info)
  in the *AWS Organizations User Guide*.

  </li> <li> If you get an exception that indicates that you exceeded your
  account limits for the organization, contact [AWS
  Support](https://console.aws.amazon.com/support/home#/).

  </li> <li> If you get an exception that indicates that the operation failed
  because your organization is still initializing, wait one hour and then try
  again. If the error persists, contact [AWS
  Support](https://console.aws.amazon.com/support/home#/).

  </li> <li> Using `CreateAccount` to create multiple temporary accounts
  isn't recommended. You can only close an account from the Billing and Cost
  Management Console, and you must be signed in as the root user. For
  information on the requirements and process for closing an account, see
  [Closing an AWS
  Account](http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_close.html)
  in the *AWS Organizations User Guide*.

  </li> </ul> </important> <note> When you create a member account with this
  operation, you can choose whether to create the account with the **IAM User
  and Role Access to Billing Information** switch enabled. If you enable it,
  IAM users and roles that have appropriate permissions can view billing
  information for the account. If you disable it, only the account root user
  can access billing information. For information about how to disable this
  switch for an account, see [Granting Access to Your Billing Information and
  Tools](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/grantaccess.html).

  </note>
  """
  def create_account(client, input, options \\ []) do
    request(client, "CreateAccount", input, options)
  end

  @doc """
  This action is available if all of the following are true:

  <ul> <li> You're authorized to create accounts in the AWS GovCloud (US)
  Region. For more information on the AWS GovCloud (US) Region, see the [
  *AWS GovCloud User
  Guide*.](http://docs.aws.amazon.com/govcloud-us/latest/UserGuide/welcome.html)

  </li> <li> You already have an account in the AWS GovCloud (US) Region that
  is associated with your master account in the commercial Region.

  </li> <li> You call this action from the master account of your
  organization in the commercial Region.

  </li> <li> You have the `organizations:CreateGovCloudAccount` permission.
  AWS Organizations creates the required service-linked role named
  `AWSServiceRoleForOrganizations`. For more information, see [AWS
  Organizations and Service-Linked
  Roles](http://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html#orgs_integrate_services-using_slrs)
  in the *AWS Organizations User Guide.*

  </li> </ul> AWS automatically enables AWS CloudTrail for AWS GovCloud (US)
  accounts, but you should also do the following:

  <ul> <li> Verify that AWS CloudTrail is enabled to store logs.

  </li> <li> Create an S3 bucket for AWS CloudTrail log storage.

  For more information, see [Verifying AWS CloudTrail Is
  Enabled](http://docs.aws.amazon.com/govcloud-us/latest/UserGuide/verifying-cloudtrail.html)
  in the *AWS GovCloud User Guide*.

  </li> </ul> You call this action from the master account of your
  organization in the commercial Region to create a standalone AWS account in
  the AWS GovCloud (US) Region. After the account is created, the master
  account of an organization in the AWS GovCloud (US) Region can invite it to
  that organization. For more information on inviting standalone accounts in
  the AWS GovCloud (US) to join an organization, see [AWS
  Organizations](http://docs.aws.amazon.com/govcloud-us/latest/UserGuide/govcloud-organizations.html)
  in the *AWS GovCloud User Guide.*

  Calling `CreateGovCloudAccount` is an asynchronous request that AWS
  performs in the background. Because `CreateGovCloudAccount` operates
  asynchronously, it can return a successful completion message even though
  account initialization might still be in progress. You might need to wait a
  few minutes before you can successfully access the account. To check the
  status of the request, do one of the following:

  <ul> <li> Use the `OperationId` response element from this operation to
  provide as a parameter to the `DescribeCreateAccountStatus` operation.

  </li> <li> Check the AWS CloudTrail log for the `CreateAccountResult`
  event. For information on using AWS CloudTrail with Organizations, see
  [Monitoring the Activity in Your
  Organization](http://docs.aws.amazon.com/organizations/latest/userguide/orgs_monitoring.html)
  in the *AWS Organizations User Guide.*

  </li> </ul> <p/> When you call the `CreateGovCloudAccount` action, you
  create two accounts: a standalone account in the AWS GovCloud (US) Region
  and an associated account in the commercial Region for billing and support
  purposes. The account in the commercial Region is automatically a member of
  the organization whose credentials made the request. Both accounts are
  associated with the same email address.

  A role is created in the new account in the commercial Region that allows
  the master account in the organization in the commercial Region to assume
  it. An AWS GovCloud (US) account is then created and associated with the
  commercial account that you just created. A role is created in the new AWS
  GovCloud (US) account that can be assumed by the AWS GovCloud (US) account
  that is associated with the master account of the commercial organization.
  For more information and to view a diagram that explains how account access
  works, see [AWS
  Organizations](http://docs.aws.amazon.com/govcloud-us/latest/UserGuide/govcloud-organizations.html)
  in the *AWS GovCloud User Guide.*

  For more information about creating accounts, see [Creating an AWS Account
  in Your
  Organization](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_create.html)
  in the *AWS Organizations User Guide.*

  <important> <ul> <li> When you create an account in an organization using
  the AWS Organizations console, API, or CLI commands, the information
  required for the account to operate as a standalone account is *not*
  automatically collected. This includes a payment method and signing the end
  user license agreement (EULA). If you must remove an account from your
  organization later, you can do so only after you provide the missing
  information. Follow the steps at [ To leave an organization as a member
  account](http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_remove.html#leave-without-all-info)
  in the *AWS Organizations User Guide.*

  </li> <li> If you get an exception that indicates that you exceeded your
  account limits for the organization, contact [AWS
  Support](https://console.aws.amazon.com/support/home#/).

  </li> <li> If you get an exception that indicates that the operation failed
  because your organization is still initializing, wait one hour and then try
  again. If the error persists, contact [AWS
  Support](https://console.aws.amazon.com/support/home#/).

  </li> <li> Using `CreateGovCloudAccount` to create multiple temporary
  accounts isn't recommended. You can only close an account from the AWS
  Billing and Cost Management console, and you must be signed in as the root
  user. For information on the requirements and process for closing an
  account, see [Closing an AWS
  Account](http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_close.html)
  in the *AWS Organizations User Guide*.

  </li> </ul> </important> <note> When you create a member account with this
  operation, you can choose whether to create the account with the **IAM User
  and Role Access to Billing Information** switch enabled. If you enable it,
  IAM users and roles that have appropriate permissions can view billing
  information for the account. If you disable it, only the account root user
  can access billing information. For information about how to disable this
  switch for an account, see [Granting Access to Your Billing Information and
  Tools](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/grantaccess.html).

  </note>
  """
  def create_gov_cloud_account(client, input, options \\ []) do
    request(client, "CreateGovCloudAccount", input, options)
  end

  @doc """
  Creates an AWS organization. The account whose user is calling the
  `CreateOrganization` operation automatically becomes the [master
  account](https://docs.aws.amazon.com/IAM/latest/UserGuide/orgs_getting-started_concepts.html#account)
  of the new organization.

  This operation must be called using credentials from the account that is to
  become the new organization's master account. The principal must also have
  the relevant IAM permissions.

  By default (or if you set the `FeatureSet` parameter to `ALL`), the new
  organization is created with all features enabled and service control
  policies automatically enabled in the root. If you instead choose to create
  the organization supporting only the consolidated billing features by
  setting the `FeatureSet` parameter to `CONSOLIDATED_BILLING"`, no policy
  types are enabled by default, and you can't use organization policies
  """
  def create_organization(client, input, options \\ []) do
    request(client, "CreateOrganization", input, options)
  end

  @doc """
  Creates an organizational unit (OU) within a root or parent OU. An OU is a
  container for accounts that enables you to organize your accounts to apply
  policies according to your business requirements. The number of levels deep
  that you can nest OUs is dependent upon the policy types enabled for that
  root. For service control policies, the limit is five.

  For more information about OUs, see [Managing Organizational
  Units](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_ous.html)
  in the *AWS Organizations User Guide.*

  This operation can be called only from the organization's master account.
  """
  def create_organizational_unit(client, input, options \\ []) do
    request(client, "CreateOrganizationalUnit", input, options)
  end

  @doc """
  Creates a policy of a specified type that you can attach to a root, an
  organizational unit (OU), or an individual AWS account.

  For more information about policies and their use, see [Managing
  Organization
  Policies](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies.html).

  This operation can be called only from the organization's master account.
  """
  def create_policy(client, input, options \\ []) do
    request(client, "CreatePolicy", input, options)
  end

  @doc """
  Declines a handshake request. This sets the handshake state to `DECLINED`
  and effectively deactivates the request.

  This operation can be called only from the account that received the
  handshake. The originator of the handshake can use `CancelHandshake`
  instead. The originator can't reactivate a declined request, but can
  reinitiate the process with a new handshake request.

  After you decline a handshake, it continues to appear in the results of
  relevant APIs for only 30 days. After that, it's deleted.
  """
  def decline_handshake(client, input, options \\ []) do
    request(client, "DeclineHandshake", input, options)
  end

  @doc """
  Deletes the organization. You can delete an organization only by using
  credentials from the master account. The organization must be empty of
  member accounts.
  """
  def delete_organization(client, input, options \\ []) do
    request(client, "DeleteOrganization", input, options)
  end

  @doc """
  Deletes an organizational unit (OU) from a root or another OU. You must
  first remove all accounts and child OUs from the OU that you want to
  delete.

  This operation can be called only from the organization's master account.
  """
  def delete_organizational_unit(client, input, options \\ []) do
    request(client, "DeleteOrganizationalUnit", input, options)
  end

  @doc """
  Deletes the specified policy from your organization. Before you perform
  this operation, you must first detach the policy from all organizational
  units (OUs), roots, and accounts.

  This operation can be called only from the organization's master account.
  """
  def delete_policy(client, input, options \\ []) do
    request(client, "DeletePolicy", input, options)
  end

  @doc """
  Removes the specified member AWS account as a delegated administrator for
  the specified AWS service.

  <important> Deregistering a delegated administrator can have unintended
  impacts on the functionality of the enabled AWS service. See the
  documentation for the enabled service before you deregister a delegated
  administrator so that you understand any potential impacts.

  </important> You can run this action only for AWS services that support
  this feature. For a current list of services that support it, see the
  column *Supports Delegated Administrator* in the table at [AWS Services
  that you can use with AWS
  Organizations](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrated-services-list.html)
  in the *AWS Organizations User Guide.*

  This operation can be called only from the organization's master account.
  """
  def deregister_delegated_administrator(client, input, options \\ []) do
    request(client, "DeregisterDelegatedAdministrator", input, options)
  end

  @doc """
  Retrieves AWS Organizations-related information about the specified
  account.

  This operation can be called only from the organization's master account or
  by a member account that is a delegated administrator for an AWS service.
  """
  def describe_account(client, input, options \\ []) do
    request(client, "DescribeAccount", input, options)
  end

  @doc """
  Retrieves the current status of an asynchronous request to create an
  account.

  This operation can be called only from the organization's master account or
  by a member account that is a delegated administrator for an AWS service.
  """
  def describe_create_account_status(client, input, options \\ []) do
    request(client, "DescribeCreateAccountStatus", input, options)
  end

  @doc """
  Returns the contents of the effective policy for specified policy type and
  account. The effective policy is the aggregation of any policies of the
  specified type that the account inherits, plus any policy of that type that
  is directly attached to the account.

  This operation applies only to policy types *other* than service control
  policies (SCPs).

  For more information about policy inheritance, see [How Policy Inheritance
  Works](http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies-inheritance.html)
  in the *AWS Organizations User Guide*.

  This operation can be called only from the organization's master account or
  by a member account that is a delegated administrator for an AWS service.
  """
  def describe_effective_policy(client, input, options \\ []) do
    request(client, "DescribeEffectivePolicy", input, options)
  end

  @doc """
  Retrieves information about a previously requested handshake. The handshake
  ID comes from the response to the original `InviteAccountToOrganization`
  operation that generated the handshake.

  You can access handshakes that are `ACCEPTED`, `DECLINED`, or `CANCELED`
  for only 30 days after they change to that state. They're then deleted and
  no longer accessible.

  This operation can be called from any account in the organization.
  """
  def describe_handshake(client, input, options \\ []) do
    request(client, "DescribeHandshake", input, options)
  end

  @doc """
  Retrieves information about the organization that the user's account
  belongs to.

  This operation can be called from any account in the organization.

  <note> Even if a policy type is shown as available in the organization, you
  can disable it separately at the root level with `DisablePolicyType`. Use
  `ListRoots` to see the status of policy types for a specified root.

  </note>
  """
  def describe_organization(client, input, options \\ []) do
    request(client, "DescribeOrganization", input, options)
  end

  @doc """
  Retrieves information about an organizational unit (OU).

  This operation can be called only from the organization's master account or
  by a member account that is a delegated administrator for an AWS service.
  """
  def describe_organizational_unit(client, input, options \\ []) do
    request(client, "DescribeOrganizationalUnit", input, options)
  end

  @doc """
  Retrieves information about a policy.

  This operation can be called only from the organization's master account or
  by a member account that is a delegated administrator for an AWS service.
  """
  def describe_policy(client, input, options \\ []) do
    request(client, "DescribePolicy", input, options)
  end

  @doc """
  Detaches a policy from a target root, organizational unit (OU), or account.

  <important> If the policy being detached is a service control policy (SCP),
  the changes to permissions for AWS Identity and Access Management (IAM)
  users and roles in affected accounts are immediate.

  </important> Every root, OU, and account must have at least one SCP
  attached. If you want to replace the default `FullAWSAccess` policy with an
  SCP that limits the permissions that can be delegated, you must attach the
  replacement SCP before you can remove the default SCP. This is the
  authorization strategy of an "[allow
  list](https://docs.aws.amazon.com/organizations/latest/userguide/SCP_strategies.html#orgs_policies_allowlist)".
  If you instead attach a second SCP and leave the `FullAWSAccess` SCP still
  attached, and specify `"Effect": "Deny"` in the second SCP to override the
  `"Effect": "Allow"` in the `FullAWSAccess` policy (or any other attached
  SCP), you're using the authorization strategy of a "[deny
  list](https://docs.aws.amazon.com/organizations/latest/userguide/SCP_strategies.html#orgs_policies_denylist)".

  This operation can be called only from the organization's master account.
  """
  def detach_policy(client, input, options \\ []) do
    request(client, "DetachPolicy", input, options)
  end

  @doc """
  Disables the integration of an AWS service (the service that is specified
  by `ServicePrincipal`) with AWS Organizations. When you disable
  integration, the specified service no longer can create a [service-linked
  role](http://docs.aws.amazon.com/IAM/latest/UserGuide/using-service-linked-roles.html)
  in *new* accounts in your organization. This means the service can't
  perform operations on your behalf on any new accounts in your organization.
  The service can still perform operations in older accounts until the
  service completes its clean-up from AWS Organizations.

  <p/> <important> We recommend that you disable integration between AWS
  Organizations and the specified AWS service by using the console or
  commands that are provided by the specified service. Doing so ensures that
  the other service is aware that it can clean up any resources that are
  required only for the integration. How the service cleans up its resources
  in the organization's accounts depends on that service. For more
  information, see the documentation for the other AWS service.

  </important> After you perform the `DisableAWSServiceAccess` operation, the
  specified service can no longer perform operations in your organization's
  accounts unless the operations are explicitly permitted by the IAM policies
  that are attached to your roles.

  For more information about integrating other services with AWS
  Organizations, including the list of services that work with Organizations,
  see [Integrating AWS Organizations with Other AWS
  Services](http://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html)
  in the *AWS Organizations User Guide.*

  This operation can be called only from the organization's master account.
  """
  def disable_a_w_s_service_access(client, input, options \\ []) do
    request(client, "DisableAWSServiceAccess", input, options)
  end

  @doc """
  Disables an organizational policy type in a root. A policy of a certain
  type can be attached to entities in a root only if that type is enabled in
  the root. After you perform this operation, you no longer can attach
  policies of the specified type to that root or to any organizational unit
  (OU) or account in that root. You can undo this by using the
  `EnablePolicyType` operation.

  This is an asynchronous request that AWS performs in the background. If you
  disable a policy type for a root, it still appears enabled for the
  organization if [all
  features](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html)
  are enabled for the organization. AWS recommends that you first use
  `ListRoots` to see the status of policy types for a specified root, and
  then use this operation.

  This operation can be called only from the organization's master account.

  To view the status of available policy types in the organization, use
  `DescribeOrganization`.
  """
  def disable_policy_type(client, input, options \\ []) do
    request(client, "DisablePolicyType", input, options)
  end

  @doc """
  Enables the integration of an AWS service (the service that is specified by
  `ServicePrincipal`) with AWS Organizations. When you enable integration,
  you allow the specified service to create a [service-linked
  role](http://docs.aws.amazon.com/IAM/latest/UserGuide/using-service-linked-roles.html)
  in all the accounts in your organization. This allows the service to
  perform operations on your behalf in your organization and its accounts.

  <important> We recommend that you enable integration between AWS
  Organizations and the specified AWS service by using the console or
  commands that are provided by the specified service. Doing so ensures that
  the service is aware that it can create the resources that are required for
  the integration. How the service creates those resources in the
  organization's accounts depends on that service. For more information, see
  the documentation for the other AWS service.

  </important> For more information about enabling services to integrate with
  AWS Organizations, see [Integrating AWS Organizations with Other AWS
  Services](http://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html)
  in the *AWS Organizations User Guide.*

  This operation can be called only from the organization's master account
  and only if the organization has [enabled all
  features](http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html).
  """
  def enable_a_w_s_service_access(client, input, options \\ []) do
    request(client, "EnableAWSServiceAccess", input, options)
  end

  @doc """
  Enables all features in an organization. This enables the use of
  organization policies that can restrict the services and actions that can
  be called in each account. Until you enable all features, you have access
  only to consolidated billing, and you can't use any of the advanced account
  administration features that AWS Organizations supports. For more
  information, see [Enabling All Features in Your
  Organization](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html)
  in the *AWS Organizations User Guide.*

  <important> This operation is required only for organizations that were
  created explicitly with only the consolidated billing features enabled.
  Calling this operation sends a handshake to every invited account in the
  organization. The feature set change can be finalized and the additional
  features enabled only after all administrators in the invited accounts
  approve the change by accepting the handshake.

  </important> After you enable all features, you can separately enable or
  disable individual policy types in a root using `EnablePolicyType` and
  `DisablePolicyType`. To see the status of policy types in a root, use
  `ListRoots`.

  After all invited member accounts accept the handshake, you finalize the
  feature set change by accepting the handshake that contains `"Action":
  "ENABLE_ALL_FEATURES"`. This completes the change.

  After you enable all features in your organization, the master account in
  the organization can apply policies on all member accounts. These policies
  can restrict what users and even administrators in those accounts can do.
  The master account can apply policies that prevent accounts from leaving
  the organization. Ensure that your account administrators are aware of
  this.

  This operation can be called only from the organization's master account.
  """
  def enable_all_features(client, input, options \\ []) do
    request(client, "EnableAllFeatures", input, options)
  end

  @doc """
  Enables a policy type in a root. After you enable a policy type in a root,
  you can attach policies of that type to the root, any organizational unit
  (OU), or account in that root. You can undo this by using the
  `DisablePolicyType` operation.

  This is an asynchronous request that AWS performs in the background. AWS
  recommends that you first use `ListRoots` to see the status of policy types
  for a specified root, and then use this operation.

  This operation can be called only from the organization's master account.

  You can enable a policy type in a root only if that policy type is
  available in the organization. To view the status of available policy types
  in the organization, use `DescribeOrganization`.
  """
  def enable_policy_type(client, input, options \\ []) do
    request(client, "EnablePolicyType", input, options)
  end

  @doc """
  Sends an invitation to another account to join your organization as a
  member account. AWS Organizations sends email on your behalf to the email
  address that is associated with the other account's owner. The invitation
  is implemented as a `Handshake` whose details are in the response.

  <important> <ul> <li> You can invite AWS accounts only from the same seller
  as the master account. For example, if your organization's master account
  was created by Amazon Internet Services Pvt. Ltd (AISPL), an AWS seller in
  India, you can invite only other AISPL accounts to your organization. You
  can't combine accounts from AISPL and AWS or from any other AWS seller. For
  more information, see [Consolidated Billing in
  India](http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/useconsolidatedbilliing-India.html).

  </li> <li> If you receive an exception that indicates that you exceeded
  your account limits for the organization or that the operation failed
  because your organization is still initializing, wait one hour and then try
  again. If the error persists after an hour, contact [AWS
  Support](https://console.aws.amazon.com/support/home#/).

  </li> </ul> </important> This operation can be called only from the
  organization's master account.
  """
  def invite_account_to_organization(client, input, options \\ []) do
    request(client, "InviteAccountToOrganization", input, options)
  end

  @doc """
  Removes a member account from its parent organization. This version of the
  operation is performed by the account that wants to leave. To remove a
  member account as a user in the master account, use
  `RemoveAccountFromOrganization` instead.

  This operation can be called only from a member account in the
  organization.

  <important> <ul> <li> The master account in an organization with all
  features enabled can set service control policies (SCPs) that can restrict
  what administrators of member accounts can do. This includes preventing
  them from successfully calling `LeaveOrganization` and leaving the
  organization.

  </li> <li> You can leave an organization as a member account only if the
  account is configured with the information required to operate as a
  standalone account. When you create an account in an organization using the
  AWS Organizations console, API, or CLI commands, the information required
  of standalone accounts is *not* automatically collected. For each account
  that you want to make standalone, you must do the following steps:

  <ul> <li> Accept the end user license agreement (EULA)

  </li> <li> Choose a support plan

  </li> <li> Provide and verify the required contact information

  </li> <li> Provide a current payment method

  </li> </ul> AWS uses the payment method to charge for any billable (not
  free tier) AWS activity that occurs while the account isn't attached to an
  organization. Follow the steps at [ To leave an organization when all
  required account information has not yet been
  provided](http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_remove.html#leave-without-all-info)
  in the *AWS Organizations User Guide.*

  </li> <li> You can leave an organization only after you enable IAM user
  access to billing in your account. For more information, see [Activating
  Access to the Billing and Cost Management
  Console](http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/grantaccess.html#ControllingAccessWebsite-Activate)
  in the *AWS Billing and Cost Management User Guide.*

  </li> </ul> </important>
  """
  def leave_organization(client, input, options \\ []) do
    request(client, "LeaveOrganization", input, options)
  end

  @doc """
  Returns a list of the AWS services that you enabled to integrate with your
  organization. After a service on this list creates the resources that it
  requires for the integration, it can perform operations on your
  organization and its accounts.

  For more information about integrating other services with AWS
  Organizations, including the list of services that currently work with
  Organizations, see [Integrating AWS Organizations with Other AWS
  Services](http://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html)
  in the *AWS Organizations User Guide.*

  This operation can be called only from the organization's master account or
  by a member account that is a delegated administrator for an AWS service.
  """
  def list_a_w_s_service_access_for_organization(client, input, options \\ []) do
    request(client, "ListAWSServiceAccessForOrganization", input, options)
  end

  @doc """
  Lists all the accounts in the organization. To request only the accounts in
  a specified root or organizational unit (OU), use the
  `ListAccountsForParent` operation instead.

  <note> Always check the `NextToken` response parameter for a `null` value
  when calling a `List*` operation. These operations can occasionally return
  an empty set of results even when there are more results available. The
  `NextToken` response parameter value is `null` *only* when there are no
  more results to display.

  </note> This operation can be called only from the organization's master
  account or by a member account that is a delegated administrator for an AWS
  service.
  """
  def list_accounts(client, input, options \\ []) do
    request(client, "ListAccounts", input, options)
  end

  @doc """
  Lists the accounts in an organization that are contained by the specified
  target root or organizational unit (OU). If you specify the root, you get a
  list of all the accounts that aren't in any OU. If you specify an OU, you
  get a list of all the accounts in only that OU and not in any child OUs. To
  get a list of all accounts in the organization, use the `ListAccounts`
  operation.

  <note> Always check the `NextToken` response parameter for a `null` value
  when calling a `List*` operation. These operations can occasionally return
  an empty set of results even when there are more results available. The
  `NextToken` response parameter value is `null` *only* when there are no
  more results to display.

  </note> This operation can be called only from the organization's master
  account or by a member account that is a delegated administrator for an AWS
  service.
  """
  def list_accounts_for_parent(client, input, options \\ []) do
    request(client, "ListAccountsForParent", input, options)
  end

  @doc """
  Lists all of the organizational units (OUs) or accounts that are contained
  in the specified parent OU or root. This operation, along with
  `ListParents` enables you to traverse the tree structure that makes up this
  root.

  <note> Always check the `NextToken` response parameter for a `null` value
  when calling a `List*` operation. These operations can occasionally return
  an empty set of results even when there are more results available. The
  `NextToken` response parameter value is `null` *only* when there are no
  more results to display.

  </note> This operation can be called only from the organization's master
  account or by a member account that is a delegated administrator for an AWS
  service.
  """
  def list_children(client, input, options \\ []) do
    request(client, "ListChildren", input, options)
  end

  @doc """
  Lists the account creation requests that match the specified status that is
  currently being tracked for the organization.

  <note> Always check the `NextToken` response parameter for a `null` value
  when calling a `List*` operation. These operations can occasionally return
  an empty set of results even when there are more results available. The
  `NextToken` response parameter value is `null` *only* when there are no
  more results to display.

  </note> This operation can be called only from the organization's master
  account or by a member account that is a delegated administrator for an AWS
  service.
  """
  def list_create_account_status(client, input, options \\ []) do
    request(client, "ListCreateAccountStatus", input, options)
  end

  @doc """
  Lists the AWS accounts that are designated as delegated administrators in
  this organization.

  This operation can be called only from the organization's master account or
  by a member account that is a delegated administrator for an AWS service.
  """
  def list_delegated_administrators(client, input, options \\ []) do
    request(client, "ListDelegatedAdministrators", input, options)
  end

  @doc """
  List the AWS services for which the specified account is a delegated
  administrator.

  This operation can be called only from the organization's master account or
  by a member account that is a delegated administrator for an AWS service.
  """
  def list_delegated_services_for_account(client, input, options \\ []) do
    request(client, "ListDelegatedServicesForAccount", input, options)
  end

  @doc """
  Lists the current handshakes that are associated with the account of the
  requesting user.

  Handshakes that are `ACCEPTED`, `DECLINED`, or `CANCELED` appear in the
  results of this API for only 30 days after changing to that state. After
  that, they're deleted and no longer accessible.

  <note> Always check the `NextToken` response parameter for a `null` value
  when calling a `List*` operation. These operations can occasionally return
  an empty set of results even when there are more results available. The
  `NextToken` response parameter value is `null` *only* when there are no
  more results to display.

  </note> This operation can be called only from the organization's master
  account or by a member account that is a delegated administrator for an AWS
  service.
  """
  def list_handshakes_for_account(client, input, options \\ []) do
    request(client, "ListHandshakesForAccount", input, options)
  end

  @doc """
  Lists the handshakes that are associated with the organization that the
  requesting user is part of. The `ListHandshakesForOrganization` operation
  returns a list of handshake structures. Each structure contains details and
  status about a handshake.

  Handshakes that are `ACCEPTED`, `DECLINED`, or `CANCELED` appear in the
  results of this API for only 30 days after changing to that state. After
  that, they're deleted and no longer accessible.

  <note> Always check the `NextToken` response parameter for a `null` value
  when calling a `List*` operation. These operations can occasionally return
  an empty set of results even when there are more results available. The
  `NextToken` response parameter value is `null` *only* when there are no
  more results to display.

  </note> This operation can be called only from the organization's master
  account or by a member account that is a delegated administrator for an AWS
  service.
  """
  def list_handshakes_for_organization(client, input, options \\ []) do
    request(client, "ListHandshakesForOrganization", input, options)
  end

  @doc """
  Lists the organizational units (OUs) in a parent organizational unit or
  root.

  <note> Always check the `NextToken` response parameter for a `null` value
  when calling a `List*` operation. These operations can occasionally return
  an empty set of results even when there are more results available. The
  `NextToken` response parameter value is `null` *only* when there are no
  more results to display.

  </note> This operation can be called only from the organization's master
  account or by a member account that is a delegated administrator for an AWS
  service.
  """
  def list_organizational_units_for_parent(client, input, options \\ []) do
    request(client, "ListOrganizationalUnitsForParent", input, options)
  end

  @doc """
  Lists the root or organizational units (OUs) that serve as the immediate
  parent of the specified child OU or account. This operation, along with
  `ListChildren` enables you to traverse the tree structure that makes up
  this root.

  <note> Always check the `NextToken` response parameter for a `null` value
  when calling a `List*` operation. These operations can occasionally return
  an empty set of results even when there are more results available. The
  `NextToken` response parameter value is `null` *only* when there are no
  more results to display.

  </note> This operation can be called only from the organization's master
  account or by a member account that is a delegated administrator for an AWS
  service.

  <note> In the current release, a child can have only a single parent.

  </note>
  """
  def list_parents(client, input, options \\ []) do
    request(client, "ListParents", input, options)
  end

  @doc """
  Retrieves the list of all policies in an organization of a specified type.

  <note> Always check the `NextToken` response parameter for a `null` value
  when calling a `List*` operation. These operations can occasionally return
  an empty set of results even when there are more results available. The
  `NextToken` response parameter value is `null` *only* when there are no
  more results to display.

  </note> This operation can be called only from the organization's master
  account or by a member account that is a delegated administrator for an AWS
  service.
  """
  def list_policies(client, input, options \\ []) do
    request(client, "ListPolicies", input, options)
  end

  @doc """
  Lists the policies that are directly attached to the specified target root,
  organizational unit (OU), or account. You must specify the policy type that
  you want included in the returned list.

  <note> Always check the `NextToken` response parameter for a `null` value
  when calling a `List*` operation. These operations can occasionally return
  an empty set of results even when there are more results available. The
  `NextToken` response parameter value is `null` *only* when there are no
  more results to display.

  </note> This operation can be called only from the organization's master
  account or by a member account that is a delegated administrator for an AWS
  service.
  """
  def list_policies_for_target(client, input, options \\ []) do
    request(client, "ListPoliciesForTarget", input, options)
  end

  @doc """
  Lists the roots that are defined in the current organization.

  <note> Always check the `NextToken` response parameter for a `null` value
  when calling a `List*` operation. These operations can occasionally return
  an empty set of results even when there are more results available. The
  `NextToken` response parameter value is `null` *only* when there are no
  more results to display.

  </note> This operation can be called only from the organization's master
  account or by a member account that is a delegated administrator for an AWS
  service.

  <note> Policy types can be enabled and disabled in roots. This is distinct
  from whether they're available in the organization. When you enable all
  features, you make policy types available for use in that organization.
  Individual policy types can then be enabled and disabled in a root. To see
  the availability of a policy type in an organization, use
  `DescribeOrganization`.

  </note>
  """
  def list_roots(client, input, options \\ []) do
    request(client, "ListRoots", input, options)
  end

  @doc """
  Lists tags for the specified resource.

  Currently, you can list tags on an account in AWS Organizations.

  This operation can be called only from the organization's master account or
  by a member account that is a delegated administrator for an AWS service.
  """
  def list_tags_for_resource(client, input, options \\ []) do
    request(client, "ListTagsForResource", input, options)
  end

  @doc """
  Lists all the roots, organizational units (OUs), and accounts that the
  specified policy is attached to.

  <note> Always check the `NextToken` response parameter for a `null` value
  when calling a `List*` operation. These operations can occasionally return
  an empty set of results even when there are more results available. The
  `NextToken` response parameter value is `null` *only* when there are no
  more results to display.

  </note> This operation can be called only from the organization's master
  account or by a member account that is a delegated administrator for an AWS
  service.
  """
  def list_targets_for_policy(client, input, options \\ []) do
    request(client, "ListTargetsForPolicy", input, options)
  end

  @doc """
  Moves an account from its current source parent root or organizational unit
  (OU) to the specified destination parent root or OU.

  This operation can be called only from the organization's master account.
  """
  def move_account(client, input, options \\ []) do
    request(client, "MoveAccount", input, options)
  end

  @doc """
  Enables the specified member account to administer the Organizations
  features of the specified AWS service. It grants read-only access to AWS
  Organizations service data. The account still requires IAM permissions to
  access and administer the AWS service.

  You can run this action only for AWS services that support this feature.
  For a current list of services that support it, see the column *Supports
  Delegated Administrator* in the table at [AWS Services that you can use
  with AWS
  Organizations](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrated-services-list.html)
  in the *AWS Organizations User Guide.*

  This operation can be called only from the organization's master account.
  """
  def register_delegated_administrator(client, input, options \\ []) do
    request(client, "RegisterDelegatedAdministrator", input, options)
  end

  @doc """
  Removes the specified account from the organization.

  The removed account becomes a standalone account that isn't a member of any
  organization. It's no longer subject to any policies and is responsible for
  its own bill payments. The organization's master account is no longer
  charged for any expenses accrued by the member account after it's removed
  from the organization.

  This operation can be called only from the organization's master account.
  Member accounts can remove themselves with `LeaveOrganization` instead.

  <important> You can remove an account from your organization only if the
  account is configured with the information required to operate as a
  standalone account. When you create an account in an organization using the
  AWS Organizations console, API, or CLI commands, the information required
  of standalone accounts is *not* automatically collected. For an account
  that you want to make standalone, you must accept the end user license
  agreement (EULA), choose a support plan, provide and verify the required
  contact information, and provide a current payment method. AWS uses the
  payment method to charge for any billable (not free tier) AWS activity that
  occurs while the account isn't attached to an organization. To remove an
  account that doesn't yet have this information, you must sign in as the
  member account and follow the steps at [ To leave an organization when all
  required account information has not yet been
  provided](http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_remove.html#leave-without-all-info)
  in the *AWS Organizations User Guide.*

  </important>
  """
  def remove_account_from_organization(client, input, options \\ []) do
    request(client, "RemoveAccountFromOrganization", input, options)
  end

  @doc """
  Adds one or more tags to the specified resource.

  Currently, you can tag and untag accounts in AWS Organizations.

  This operation can be called only from the organization's master account.
  """
  def tag_resource(client, input, options \\ []) do
    request(client, "TagResource", input, options)
  end

  @doc """
  Removes a tag from the specified resource.

  Currently, you can tag and untag accounts in AWS Organizations.

  This operation can be called only from the organization's master account.
  """
  def untag_resource(client, input, options \\ []) do
    request(client, "UntagResource", input, options)
  end

  @doc """
  Renames the specified organizational unit (OU). The ID and ARN don't
  change. The child OUs and accounts remain in place, and any attached
  policies of the OU remain attached.

  This operation can be called only from the organization's master account.
  """
  def update_organizational_unit(client, input, options \\ []) do
    request(client, "UpdateOrganizationalUnit", input, options)
  end

  @doc """
  Updates an existing policy with a new name, description, or content. If you
  don't supply any parameter, that value remains unchanged. You can't change
  a policy's type.

  This operation can be called only from the organization's master account.
  """
  def update_policy(client, input, options \\ []) do
    request(client, "UpdatePolicy", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, Poison.Parser.t() | nil, Poison.Response.t()}
          | {:error, Poison.Parser.t()}
          | {:error, HTTPoison.Error.t()}
  defp request(client, action, input, options) do
    client = %{client | service: "organizations",
                        region:  "us-east-1"}
    host = get_host("organizations", client)
    url = get_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "AWSOrganizationsV20161128.#{action}"}
    ]

    payload = Poison.Encoder.encode(input, %{})
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)

    case HTTPoison.post(url, payload, headers, options) do
      {:ok, %HTTPoison.Response{status_code: 200, body: ""} = response} ->
        {:ok, nil, response}

      {:ok, %HTTPoison.Response{status_code: 200, body: body} = response} ->
        {:ok, Poison.Parser.parse!(body, %{}), response}

      {:ok, %HTTPoison.Response{body: body}} ->
        error = Poison.Parser.parse!(body, %{})
        {:error, error}

      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp get_host(_endpoint_prefix, %{region: "local"}) do
    "localhost"
  end
  defp get_host(endpoint_prefix, %{endpoint: endpoint}) do
    "#{endpoint_prefix}.#{endpoint}"
  end

  defp get_url(host, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}/"
  end
end
