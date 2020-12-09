# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Organizations do
  @moduledoc """
  AWS Organizations
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: "Organizations",
      api_version: "2016-11-28",
      content_type: "application/x-amz-json-1.1",
      credential_scope: "us-east-1",
      endpoint_prefix: "organizations",
      global?: true,
      protocol: "json",
      service_id: "Organizations",
      signature_version: "v4",
      signing_name: "organizations",
      target_prefix: "AWSOrganizationsV20161128"
    }
  end

  @doc """
  Sends a response to the originator of a handshake agreeing to the action
  proposed by the handshake request.

  This operation can be called only by the following principals when they also
  have the relevant IAM permissions:

    * **Invitation to join** or ## Approve all features request
  handshakes: only a principal from the member account.

  The user who calls the API for an invitation to join must have the
  `organizations:AcceptHandshake` permission. If you enabled all features in the
  organization, the user must also have the `iam:CreateServiceLinkedRole`
  permission so that AWS Organizations can create the required service-linked role
  named `AWSServiceRoleForOrganizations`. For more information, see [AWS Organizations and Service-Linked
  Roles](http://docs.aws.amazon.com/organizations/latest/userguide/orgs_integration_services.html#orgs_integration_service-linked-roles)
  in the *AWS Organizations User Guide*.

    * **Enable all features final confirmation** handshake: only a
  principal from the management account.

  For more information about invitations, see [Inviting an AWS Account to Join Your
  Organization](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_invites.html)
  in the *AWS Organizations User Guide.* For more information about requests to
  enable all features in the organization, see [Enabling All Features in Your Organization](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html)
  in the *AWS Organizations User Guide.*

  After you accept a handshake, it continues to appear in the results of relevant
  APIs for only 30 days. After that, it's deleted.
  """
  def accept_handshake(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AcceptHandshake", input, options)
  end

  @doc """
  Attaches a policy to a root, an organizational unit (OU), or an individual
  account.

  How the policy affects accounts depends on the type of policy. Refer to the *AWS
  Organizations User Guide* for information about each policy type:

    *
  [AISERVICES_OPT_OUT_POLICY](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html)     *
  [BACKUP_POLICY](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html)

    *
  [SERVICE_CONTROL_POLICY](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scp.html)     *
  [TAG_POLICY](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html)

  This operation can be called only from the organization's management account.
  """
  def attach_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AttachPolicy", input, options)
  end

  @doc """
  Cancels a handshake.

  Canceling a handshake sets the handshake state to `CANCELED`.

  This operation can be called only from the account that originated the
  handshake. The recipient of the handshake can't cancel it, but can use
  `DeclineHandshake` instead. After a handshake is canceled, the recipient can no
  longer respond to that handshake.

  After you cancel a handshake, it continues to appear in the results of relevant
  APIs for only 30 days. After that, it's deleted.
  """
  def cancel_handshake(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CancelHandshake", input, options)
  end

  @doc """
  Creates an AWS account that is automatically a member of the organization whose
  credentials made the request.

  This is an asynchronous request that AWS performs in the background. Because
  `CreateAccount` operates asynchronously, it can return a successful completion
  message even though account initialization might still be in progress. You might
  need to wait a few minutes before you can successfully access the account. To
  check the status of the request, do one of the following:

    * Use the `Id` member of the `CreateAccountStatus` response element
  from this operation to provide as a parameter to the
  `DescribeCreateAccountStatus` operation.

    * Check the AWS CloudTrail log for the `CreateAccountResult` event.
  For information on using AWS CloudTrail with AWS Organizations, see [Monitoring the Activity in Your
  Organization](http://docs.aws.amazon.com/organizations/latest/userguide/orgs_monitoring.html)
  in the *AWS Organizations User Guide.*

  The user who calls the API to create an account must have the
  `organizations:CreateAccount` permission. If you enabled all features in the
  organization, AWS Organizations creates the required service-linked role named
  `AWSServiceRoleForOrganizations`. For more information, see [AWS Organizations and Service-Linked
  Roles](http://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html#orgs_integrate_services-using_slrs)
  in the *AWS Organizations User Guide*.

  If the request includes tags, then the requester must have the
  `organizations:TagResource` permission.

  AWS Organizations preconfigures the new member account with a role (named
  `OrganizationAccountAccessRole` by default) that grants users in the management
  account administrator permissions in the new member account. Principals in the
  management account can assume the role. AWS Organizations clones the company
  name and address information for the new account from the organization's
  management account.

  This operation can be called only from the organization's management account.

  For more information about creating accounts, see [Creating an AWS Account in Your
  Organization](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_create.html)
  in the *AWS Organizations User Guide.*

     When you create an account in an organization using the AWS
  Organizations console, API, or CLI commands, the information required for the
  account to operate as a standalone account, such as a payment method and signing
  the end user license agreement (EULA) is *not* automatically collected. If you
  must remove an account from your organization later, you can do so only after
  you provide the missing information. Follow the steps at [ To leave an organization as a member
  account](http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_remove.html#leave-without-all-info)
  in the *AWS Organizations User Guide*.

     If you get an exception that indicates that you exceeded your
  account limits for the organization, contact [AWS Support](https://console.aws.amazon.com/support/home#/).

     If you get an exception that indicates that the operation failed
  because your organization is still initializing, wait one hour and then try
  again. If the error persists, contact [AWS Support](https://console.aws.amazon.com/support/home#/).

     Using `CreateAccount` to create multiple temporary accounts isn't
  recommended. You can only close an account from the Billing and Cost Management
  Console, and you must be signed in as the root user. For information on the
  requirements and process for closing an account, see [Closing an AWS Account](http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_close.html)
  in the *AWS Organizations User Guide*.

  When you create a member account with this operation, you can choose whether to
  create the account with the ## IAM User and Role Access to Billing Information
  switch enabled. If you enable it, IAM users and roles that have appropriate
  permissions can view billing information for the account. If you disable it,
  only the account root user can access billing information. For information about
  how to disable this switch for an account, see [Granting Access to Your Billing Information and
  Tools](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/grantaccess.html).
  """
  def create_account(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateAccount", input, options)
  end

  @doc """
  This action is available if all of the following are true:

    * You're authorized to create accounts in the AWS GovCloud (US)
  Region.

  For more information on the AWS GovCloud (US) Region, see the [ *AWS GovCloud User
  Guide*.](http://docs.aws.amazon.com/govcloud-us/latest/UserGuide/welcome.html)

    * You already have an account in the AWS GovCloud (US) Region that
  is paired with a management account of an organization in the commercial Region.

    * You call this action from the management account of your
  organization in the commercial Region.

    * You have the `organizations:CreateGovCloudAccount` permission.

  AWS Organizations automatically creates the required service-linked role named
  `AWSServiceRoleForOrganizations`. For more information, see [AWS Organizations and Service-Linked
  Roles](http://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html#orgs_integrate_services-using_slrs)
  in the *AWS Organizations User Guide.*

  AWS automatically enables AWS CloudTrail for AWS GovCloud (US) accounts, but you
  should also do the following:

    * Verify that AWS CloudTrail is enabled to store logs.

    * Create an S3 bucket for AWS CloudTrail log storage.

  For more information, see [Verifying AWS CloudTrail Is Enabled](http://docs.aws.amazon.com/govcloud-us/latest/UserGuide/verifying-cloudtrail.html)
  in the *AWS GovCloud User Guide*.

  If the request includes tags, then the requester must have the
  `organizations:TagResource` permission. The tags are attached to the commercial
  account associated with the GovCloud account, rather than the GovCloud account
  itself. To add tags to the GovCloud account, call the `TagResource` operation in
  the GovCloud Region after the new GovCloud account exists.

  You call this action from the management account of your organization in the
  commercial Region to create a standalone AWS account in the AWS GovCloud (US)
  Region. After the account is created, the management account of an organization
  in the AWS GovCloud (US) Region can invite it to that organization. For more
  information on inviting standalone accounts in the AWS GovCloud (US) to join an
  organization, see [AWS Organizations](http://docs.aws.amazon.com/govcloud-us/latest/UserGuide/govcloud-organizations.html)
  in the *AWS GovCloud User Guide.*

  Calling `CreateGovCloudAccount` is an asynchronous request that AWS performs in
  the background. Because `CreateGovCloudAccount` operates asynchronously, it can
  return a successful completion message even though account initialization might
  still be in progress. You might need to wait a few minutes before you can
  successfully access the account. To check the status of the request, do one of
  the following:

    * Use the `OperationId` response element from this operation to
  provide as a parameter to the `DescribeCreateAccountStatus` operation.

    * Check the AWS CloudTrail log for the `CreateAccountResult` event.
  For information on using AWS CloudTrail with Organizations, see [Monitoring the Activity in Your
  Organization](http://docs.aws.amazon.com/organizations/latest/userguide/orgs_monitoring.html)
  in the *AWS Organizations User Guide.*

  When you call the `CreateGovCloudAccount` action, you create two accounts: a
  standalone account in the AWS GovCloud (US) Region and an associated account in
  the commercial Region for billing and support purposes. The account in the
  commercial Region is automatically a member of the organization whose
  credentials made the request. Both accounts are associated with the same email
  address.

  A role is created in the new account in the commercial Region that allows the
  management account in the organization in the commercial Region to assume it. An
  AWS GovCloud (US) account is then created and associated with the commercial
  account that you just created. A role is also created in the new AWS GovCloud
  (US) account that can be assumed by the AWS GovCloud (US) account that is
  associated with the management account of the commercial organization. For more
  information and to view a diagram that explains how account access works, see
  [AWS Organizations](http://docs.aws.amazon.com/govcloud-us/latest/UserGuide/govcloud-organizations.html)
  in the *AWS GovCloud User Guide.*

  For more information about creating accounts, see [Creating an AWS Account in Your
  Organization](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_create.html)
  in the *AWS Organizations User Guide.*

     When you create an account in an organization using the AWS
  Organizations console, API, or CLI commands, the information required for the
  account to operate as a standalone account is *not* automatically collected.
  This includes a payment method and signing the end user license agreement
  (EULA). If you must remove an account from your organization later, you can do
  so only after you provide the missing information. Follow the steps at [ To leave an organization as a member
  account](http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_remove.html#leave-without-all-info)
  in the *AWS Organizations User Guide.*

     If you get an exception that indicates that you exceeded your
  account limits for the organization, contact [AWS Support](https://console.aws.amazon.com/support/home#/).

     If you get an exception that indicates that the operation failed
  because your organization is still initializing, wait one hour and then try
  again. If the error persists, contact [AWS Support](https://console.aws.amazon.com/support/home#/).

     Using `CreateGovCloudAccount` to create multiple temporary accounts
  isn't recommended. You can only close an account from the AWS Billing and Cost
  Management console, and you must be signed in as the root user. For information
  on the requirements and process for closing an account, see [Closing an AWS Account](http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_close.html)
  in the *AWS Organizations User Guide*.

  When you create a member account with this operation, you can choose whether to
  create the account with the ## IAM User and Role Access to Billing Information
  switch enabled. If you enable it, IAM users and roles that have appropriate
  permissions can view billing information for the account. If you disable it,
  only the account root user can access billing information. For information about
  how to disable this switch for an account, see [Granting Access to Your Billing Information and
  Tools](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/grantaccess.html).
  """
  def create_gov_cloud_account(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateGovCloudAccount", input, options)
  end

  @doc """
  Creates an AWS organization.

  The account whose user is calling the `CreateOrganization` operation
  automatically becomes the [management account](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#account)
  of the new organization.

  This operation must be called using credentials from the account that is to
  become the new organization's management account. The principal must also have
  the relevant IAM permissions.

  By default (or if you set the `FeatureSet` parameter to `ALL`), the new
  organization is created with all features enabled and service control policies
  automatically enabled in the root. If you instead choose to create the
  organization supporting only the consolidated billing features by setting the
  `FeatureSet` parameter to `CONSOLIDATED_BILLING"`, no policy types are enabled
  by default, and you can't use organization policies
  """
  def create_organization(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateOrganization", input, options)
  end

  @doc """
  Creates an organizational unit (OU) within a root or parent OU.

  An OU is a container for accounts that enables you to organize your accounts to
  apply policies according to your business requirements. The number of levels
  deep that you can nest OUs is dependent upon the policy types enabled for that
  root. For service control policies, the limit is five.

  For more information about OUs, see [Managing Organizational Units](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_ous.html)
  in the *AWS Organizations User Guide.*

  If the request includes tags, then the requester must have the
  `organizations:TagResource` permission.

  This operation can be called only from the organization's management account.
  """
  def create_organizational_unit(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateOrganizationalUnit", input, options)
  end

  @doc """
  Creates a policy of a specified type that you can attach to a root, an
  organizational unit (OU), or an individual AWS account.

  For more information about policies and their use, see [Managing Organization Policies](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies.html).

  If the request includes tags, then the requester must have the
  `organizations:TagResource` permission.

  This operation can be called only from the organization's management account.
  """
  def create_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreatePolicy", input, options)
  end

  @doc """
  Declines a handshake request.

  This sets the handshake state to `DECLINED` and effectively deactivates the
  request.

  This operation can be called only from the account that received the handshake.
  The originator of the handshake can use `CancelHandshake` instead. The
  originator can't reactivate a declined request, but can reinitiate the process
  with a new handshake request.

  After you decline a handshake, it continues to appear in the results of relevant
  APIs for only 30 days. After that, it's deleted.
  """
  def decline_handshake(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeclineHandshake", input, options)
  end

  @doc """
  Deletes the organization.

  You can delete an organization only by using credentials from the management
  account. The organization must be empty of member accounts.
  """
  def delete_organization(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteOrganization", input, options)
  end

  @doc """
  Deletes an organizational unit (OU) from a root or another OU.

  You must first remove all accounts and child OUs from the OU that you want to
  delete.

  This operation can be called only from the organization's management account.
  """
  def delete_organizational_unit(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteOrganizationalUnit", input, options)
  end

  @doc """
  Deletes the specified policy from your organization.

  Before you perform this operation, you must first detach the policy from all
  organizational units (OUs), roots, and accounts.

  This operation can be called only from the organization's management account.
  """
  def delete_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeletePolicy", input, options)
  end

  @doc """
  Removes the specified member AWS account as a delegated administrator for the
  specified AWS service.

  Deregistering a delegated administrator can have unintended impacts on the
  functionality of the enabled AWS service. See the documentation for the enabled
  service before you deregister a delegated administrator so that you understand
  any potential impacts.

  You can run this action only for AWS services that support this feature. For a
  current list of services that support it, see the column *Supports Delegated
  Administrator* in the table at [AWS Services that you can use with AWS Organizations](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrated-services-list.html)
  in the *AWS Organizations User Guide.*

  This operation can be called only from the organization's management account.
  """
  def deregister_delegated_administrator(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeregisterDelegatedAdministrator", input, options)
  end

  @doc """
  Retrieves AWS Organizations-related information about the specified account.

  This operation can be called only from the organization's management account or
  by a member account that is a delegated administrator for an AWS service.
  """
  def describe_account(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeAccount", input, options)
  end

  @doc """
  Retrieves the current status of an asynchronous request to create an account.

  This operation can be called only from the organization's management account or
  by a member account that is a delegated administrator for an AWS service.
  """
  def describe_create_account_status(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeCreateAccountStatus", input, options)
  end

  @doc """
  Returns the contents of the effective policy for specified policy type and
  account.

  The effective policy is the aggregation of any policies of the specified type
  that the account inherits, plus any policy of that type that is directly
  attached to the account.

  This operation applies only to policy types *other* than service control
  policies (SCPs).

  For more information about policy inheritance, see [How Policy Inheritance Works](http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies-inheritance.html)
  in the *AWS Organizations User Guide*.

  This operation can be called only from the organization's management account or
  by a member account that is a delegated administrator for an AWS service.
  """
  def describe_effective_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeEffectivePolicy", input, options)
  end

  @doc """
  Retrieves information about a previously requested handshake.

  The handshake ID comes from the response to the original
  `InviteAccountToOrganization` operation that generated the handshake.

  You can access handshakes that are `ACCEPTED`, `DECLINED`, or `CANCELED` for
  only 30 days after they change to that state. They're then deleted and no longer
  accessible.

  This operation can be called from any account in the organization.
  """
  def describe_handshake(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeHandshake", input, options)
  end

  @doc """
  Retrieves information about the organization that the user's account belongs to.

  This operation can be called from any account in the organization.

  Even if a policy type is shown as available in the organization, you can disable
  it separately at the root level with `DisablePolicyType`. Use `ListRoots` to see
  the status of policy types for a specified root.
  """
  def describe_organization(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeOrganization", input, options)
  end

  @doc """
  Retrieves information about an organizational unit (OU).

  This operation can be called only from the organization's management account or
  by a member account that is a delegated administrator for an AWS service.
  """
  def describe_organizational_unit(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeOrganizationalUnit", input, options)
  end

  @doc """
  Retrieves information about a policy.

  This operation can be called only from the organization's management account or
  by a member account that is a delegated administrator for an AWS service.
  """
  def describe_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribePolicy", input, options)
  end

  @doc """
  Detaches a policy from a target root, organizational unit (OU), or account.

  If the policy being detached is a service control policy (SCP), the changes to
  permissions for AWS Identity and Access Management (IAM) users and roles in
  affected accounts are immediate.

  Every root, OU, and account must have at least one SCP attached. If you want to
  replace the default `FullAWSAccess` policy with an SCP that limits the
  permissions that can be delegated, you must attach the replacement SCP before
  you can remove the default SCP. This is the authorization strategy of an "[allow list](https://docs.aws.amazon.com/organizations/latest/userguide/SCP_strategies.html#orgs_policies_allowlist)".
  If you instead attach a second SCP and leave the `FullAWSAccess` SCP still
  attached, and specify `"Effect": "Deny"` in the second SCP to override the
  `"Effect": "Allow"` in the `FullAWSAccess` policy (or any other attached SCP),
  you're using the authorization strategy of a "[deny list](https://docs.aws.amazon.com/organizations/latest/userguide/SCP_strategies.html#orgs_policies_denylist)".

  This operation can be called only from the organization's management account.
  """
  def detach_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DetachPolicy", input, options)
  end

  @doc """
  Disables the integration of an AWS service (the service that is specified by
  `ServicePrincipal`) with AWS Organizations.

  When you disable integration, the specified service no longer can create a
  [service-linked role](http://docs.aws.amazon.com/IAM/latest/UserGuide/using-service-linked-roles.html)
  in *new* accounts in your organization. This means the service can't perform
  operations on your behalf on any new accounts in your organization. The service
  can still perform operations in older accounts until the service completes its
  clean-up from AWS Organizations.

  We recommend that you disable integration between AWS Organizations and the
  specified AWS service by using the console or commands that are provided by the
  specified service. Doing so ensures that the other service is aware that it can
  clean up any resources that are required only for the integration. How the
  service cleans up its resources in the organization's accounts depends on that
  service. For more information, see the documentation for the other AWS service.

  After you perform the `DisableAWSServiceAccess` operation, the specified service
  can no longer perform operations in your organization's accounts unless the
  operations are explicitly permitted by the IAM policies that are attached to
  your roles.

  For more information about integrating other services with AWS Organizations,
  including the list of services that work with Organizations, see [Integrating AWS Organizations with Other AWS
  Services](http://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html)
  in the *AWS Organizations User Guide.*

  This operation can be called only from the organization's management account.
  """
  def disable_aws_service_access(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DisableAWSServiceAccess", input, options)
  end

  @doc """
  Disables an organizational policy type in a root.

  A policy of a certain type can be attached to entities in a root only if that
  type is enabled in the root. After you perform this operation, you no longer can
  attach policies of the specified type to that root or to any organizational unit
  (OU) or account in that root. You can undo this by using the `EnablePolicyType`
  operation.

  This is an asynchronous request that AWS performs in the background. If you
  disable a policy type for a root, it still appears enabled for the organization
  if [all features](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html)
  are enabled for the organization. AWS recommends that you first use `ListRoots`
  to see the status of policy types for a specified root, and then use this
  operation.

  This operation can be called only from the organization's management account.

  To view the status of available policy types in the organization, use
  `DescribeOrganization`.
  """
  def disable_policy_type(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DisablePolicyType", input, options)
  end

  @doc """
  Enables all features in an organization.

  This enables the use of organization policies that can restrict the services and
  actions that can be called in each account. Until you enable all features, you
  have access only to consolidated billing, and you can't use any of the advanced
  account administration features that AWS Organizations supports. For more
  information, see [Enabling All Features in Your Organization](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html)
  in the *AWS Organizations User Guide.*

  This operation is required only for organizations that were created explicitly
  with only the consolidated billing features enabled. Calling this operation
  sends a handshake to every invited account in the organization. The feature set
  change can be finalized and the additional features enabled only after all
  administrators in the invited accounts approve the change by accepting the
  handshake.

  After you enable all features, you can separately enable or disable individual
  policy types in a root using `EnablePolicyType` and `DisablePolicyType`. To see
  the status of policy types in a root, use `ListRoots`.

  After all invited member accounts accept the handshake, you finalize the feature
  set change by accepting the handshake that contains `"Action":
  "ENABLE_ALL_FEATURES"`. This completes the change.

  After you enable all features in your organization, the management account in
  the organization can apply policies on all member accounts. These policies can
  restrict what users and even administrators in those accounts can do. The
  management account can apply policies that prevent accounts from leaving the
  organization. Ensure that your account administrators are aware of this.

  This operation can be called only from the organization's management account.
  """
  def enable_all_features(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "EnableAllFeatures", input, options)
  end

  @doc """
  Enables the integration of an AWS service (the service that is specified by
  `ServicePrincipal`) with AWS Organizations.

  When you enable integration, you allow the specified service to create a
  [service-linked role](http://docs.aws.amazon.com/IAM/latest/UserGuide/using-service-linked-roles.html)
  in all the accounts in your organization. This allows the service to perform
  operations on your behalf in your organization and its accounts.

  We recommend that you enable integration between AWS Organizations and the
  specified AWS service by using the console or commands that are provided by the
  specified service. Doing so ensures that the service is aware that it can create
  the resources that are required for the integration. How the service creates
  those resources in the organization's accounts depends on that service. For more
  information, see the documentation for the other AWS service.

  For more information about enabling services to integrate with AWS
  Organizations, see [Integrating AWS Organizations with Other AWS Services](http://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html)
  in the *AWS Organizations User Guide.*

  This operation can be called only from the organization's management account and
  only if the organization has [enabled all features](http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html).
  """
  def enable_aws_service_access(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "EnableAWSServiceAccess", input, options)
  end

  @doc """
  Enables a policy type in a root.

  After you enable a policy type in a root, you can attach policies of that type
  to the root, any organizational unit (OU), or account in that root. You can undo
  this by using the `DisablePolicyType` operation.

  This is an asynchronous request that AWS performs in the background. AWS
  recommends that you first use `ListRoots` to see the status of policy types for
  a specified root, and then use this operation.

  This operation can be called only from the organization's management account.

  You can enable a policy type in a root only if that policy type is available in
  the organization. To view the status of available policy types in the
  organization, use `DescribeOrganization`.
  """
  def enable_policy_type(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "EnablePolicyType", input, options)
  end

  @doc """
  Sends an invitation to another account to join your organization as a member
  account.

  AWS Organizations sends email on your behalf to the email address that is
  associated with the other account's owner. The invitation is implemented as a
  `Handshake` whose details are in the response.

     You can invite AWS accounts only from the same seller as the
  management account. For example, if your organization's management account was
  created by Amazon Internet Services Pvt. Ltd (AISPL), an AWS seller in India,
  you can invite only other AISPL accounts to your organization. You can't combine
  accounts from AISPL and AWS or from any other AWS seller. For more information,
  see [Consolidated Billing in India](http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/useconsolidatedbilliing-India.html).

     If you receive an exception that indicates that you exceeded your
  account limits for the organization or that the operation failed because your
  organization is still initializing, wait one hour and then try again. If the
  error persists after an hour, contact [AWS Support](https://console.aws.amazon.com/support/home#/).

  If the request includes tags, then the requester must have the
  `organizations:TagResource` permission.

  This operation can be called only from the organization's management account.
  """
  def invite_account_to_organization(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "InviteAccountToOrganization", input, options)
  end

  @doc """
  Removes a member account from its parent organization.

  This version of the operation is performed by the account that wants to leave.
  To remove a member account as a user in the management account, use
  `RemoveAccountFromOrganization` instead.

  This operation can be called only from a member account in the organization.

     The management account in an organization with all features enabled
  can set service control policies (SCPs) that can restrict what administrators of
  member accounts can do. This includes preventing them from successfully calling
  `LeaveOrganization` and leaving the organization.

     You can leave an organization as a member account only if the
  account is configured with the information required to operate as a standalone
  account. When you create an account in an organization using the AWS
  Organizations console, API, or CLI commands, the information required of
  standalone accounts is *not* automatically collected. For each account that you
  want to make standalone, you must perform the following steps. If any of the
  steps are already completed for this account, that step doesn't appear.

       Choose a support plan

       Provide and verify the required contact information

       Provide a current payment method

  AWS uses the payment method to charge for any billable (not free tier) AWS
  activity that occurs while the account isn't attached to an organization. Follow
  the steps at [ To leave an organization when all required account information has not yet been
  provided](http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_remove.html#leave-without-all-info)
  in the *AWS Organizations User Guide.*

     You can leave an organization only after you enable IAM user access
  to billing in your account. For more information, see [Activating Access to the Billing and Cost Management
  Console](http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/grantaccess.html#ControllingAccessWebsite-Activate)
  in the *AWS Billing and Cost Management User Guide.*

     After the account leaves the organization, all tags that were
  attached to the account object in the organization are deleted. AWS accounts
  outside of an organization do not support tags.
  """
  def leave_organization(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "LeaveOrganization", input, options)
  end

  @doc """
  Lists all the accounts in the organization.

  To request only the accounts in a specified root or organizational unit (OU),
  use the `ListAccountsForParent` operation instead.

  Always check the `NextToken` response parameter for a `null` value when calling
  a `List*` operation. These operations can occasionally return an empty set of
  results even when there are more results available. The `NextToken` response
  parameter value is `null` *only* when there are no more results to display.

  This operation can be called only from the organization's management account or
  by a member account that is a delegated administrator for an AWS service.
  """
  def list_accounts(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListAccounts", input, options)
  end

  @doc """
  Lists the accounts in an organization that are contained by the specified target
  root or organizational unit (OU).

  If you specify the root, you get a list of all the accounts that aren't in any
  OU. If you specify an OU, you get a list of all the accounts in only that OU and
  not in any child OUs. To get a list of all accounts in the organization, use the
  `ListAccounts` operation.

  Always check the `NextToken` response parameter for a `null` value when calling
  a `List*` operation. These operations can occasionally return an empty set of
  results even when there are more results available. The `NextToken` response
  parameter value is `null` *only* when there are no more results to display.

  This operation can be called only from the organization's management account or
  by a member account that is a delegated administrator for an AWS service.
  """
  def list_accounts_for_parent(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListAccountsForParent", input, options)
  end

  @doc """
  Returns a list of the AWS services that you enabled to integrate with your
  organization.

  After a service on this list creates the resources that it requires for the
  integration, it can perform operations on your organization and its accounts.

  For more information about integrating other services with AWS Organizations,
  including the list of services that currently work with Organizations, see
  [Integrating AWS Organizations with Other AWS Services](http://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html)
  in the *AWS Organizations User Guide.*

  This operation can be called only from the organization's management account or
  by a member account that is a delegated administrator for an AWS service.
  """
  def list_aws_service_access_for_organization(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "ListAWSServiceAccessForOrganization",
      input,
      options
    )
  end

  @doc """
  Lists all of the organizational units (OUs) or accounts that are contained in
  the specified parent OU or root.

  This operation, along with `ListParents` enables you to traverse the tree
  structure that makes up this root.

  Always check the `NextToken` response parameter for a `null` value when calling
  a `List*` operation. These operations can occasionally return an empty set of
  results even when there are more results available. The `NextToken` response
  parameter value is `null` *only* when there are no more results to display.

  This operation can be called only from the organization's management account or
  by a member account that is a delegated administrator for an AWS service.
  """
  def list_children(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListChildren", input, options)
  end

  @doc """
  Lists the account creation requests that match the specified status that is
  currently being tracked for the organization.

  Always check the `NextToken` response parameter for a `null` value when calling
  a `List*` operation. These operations can occasionally return an empty set of
  results even when there are more results available. The `NextToken` response
  parameter value is `null` *only* when there are no more results to display.

  This operation can be called only from the organization's management account or
  by a member account that is a delegated administrator for an AWS service.
  """
  def list_create_account_status(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListCreateAccountStatus", input, options)
  end

  @doc """
  Lists the AWS accounts that are designated as delegated administrators in this
  organization.

  This operation can be called only from the organization's management account or
  by a member account that is a delegated administrator for an AWS service.
  """
  def list_delegated_administrators(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListDelegatedAdministrators", input, options)
  end

  @doc """
  List the AWS services for which the specified account is a delegated
  administrator.

  This operation can be called only from the organization's management account or
  by a member account that is a delegated administrator for an AWS service.
  """
  def list_delegated_services_for_account(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListDelegatedServicesForAccount", input, options)
  end

  @doc """
  Lists the current handshakes that are associated with the account of the
  requesting user.

  Handshakes that are `ACCEPTED`, `DECLINED`, or `CANCELED` appear in the results
  of this API for only 30 days after changing to that state. After that, they're
  deleted and no longer accessible.

  Always check the `NextToken` response parameter for a `null` value when calling
  a `List*` operation. These operations can occasionally return an empty set of
  results even when there are more results available. The `NextToken` response
  parameter value is `null` *only* when there are no more results to display.

  This operation can be called from any account in the organization.
  """
  def list_handshakes_for_account(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListHandshakesForAccount", input, options)
  end

  @doc """
  Lists the handshakes that are associated with the organization that the
  requesting user is part of.

  The `ListHandshakesForOrganization` operation returns a list of handshake
  structures. Each structure contains details and status about a handshake.

  Handshakes that are `ACCEPTED`, `DECLINED`, or `CANCELED` appear in the results
  of this API for only 30 days after changing to that state. After that, they're
  deleted and no longer accessible.

  Always check the `NextToken` response parameter for a `null` value when calling
  a `List*` operation. These operations can occasionally return an empty set of
  results even when there are more results available. The `NextToken` response
  parameter value is `null` *only* when there are no more results to display.

  This operation can be called only from the organization's management account or
  by a member account that is a delegated administrator for an AWS service.
  """
  def list_handshakes_for_organization(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListHandshakesForOrganization", input, options)
  end

  @doc """
  Lists the organizational units (OUs) in a parent organizational unit or root.

  Always check the `NextToken` response parameter for a `null` value when calling
  a `List*` operation. These operations can occasionally return an empty set of
  results even when there are more results available. The `NextToken` response
  parameter value is `null` *only* when there are no more results to display.

  This operation can be called only from the organization's management account or
  by a member account that is a delegated administrator for an AWS service.
  """
  def list_organizational_units_for_parent(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListOrganizationalUnitsForParent", input, options)
  end

  @doc """
  Lists the root or organizational units (OUs) that serve as the immediate parent
  of the specified child OU or account.

  This operation, along with `ListChildren` enables you to traverse the tree
  structure that makes up this root.

  Always check the `NextToken` response parameter for a `null` value when calling
  a `List*` operation. These operations can occasionally return an empty set of
  results even when there are more results available. The `NextToken` response
  parameter value is `null` *only* when there are no more results to display.

  This operation can be called only from the organization's management account or
  by a member account that is a delegated administrator for an AWS service.

  In the current release, a child can have only a single parent.
  """
  def list_parents(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListParents", input, options)
  end

  @doc """
  Retrieves the list of all policies in an organization of a specified type.

  Always check the `NextToken` response parameter for a `null` value when calling
  a `List*` operation. These operations can occasionally return an empty set of
  results even when there are more results available. The `NextToken` response
  parameter value is `null` *only* when there are no more results to display.

  This operation can be called only from the organization's management account or
  by a member account that is a delegated administrator for an AWS service.
  """
  def list_policies(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListPolicies", input, options)
  end

  @doc """
  Lists the policies that are directly attached to the specified target root,
  organizational unit (OU), or account.

  You must specify the policy type that you want included in the returned list.

  Always check the `NextToken` response parameter for a `null` value when calling
  a `List*` operation. These operations can occasionally return an empty set of
  results even when there are more results available. The `NextToken` response
  parameter value is `null` *only* when there are no more results to display.

  This operation can be called only from the organization's management account or
  by a member account that is a delegated administrator for an AWS service.
  """
  def list_policies_for_target(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListPoliciesForTarget", input, options)
  end

  @doc """
  Lists the roots that are defined in the current organization.

  Always check the `NextToken` response parameter for a `null` value when calling
  a `List*` operation. These operations can occasionally return an empty set of
  results even when there are more results available. The `NextToken` response
  parameter value is `null` *only* when there are no more results to display.

  This operation can be called only from the organization's management account or
  by a member account that is a delegated administrator for an AWS service.

  Policy types can be enabled and disabled in roots. This is distinct from whether
  they're available in the organization. When you enable all features, you make
  policy types available for use in that organization. Individual policy types can
  then be enabled and disabled in a root. To see the availability of a policy type
  in an organization, use `DescribeOrganization`.
  """
  def list_roots(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListRoots", input, options)
  end

  @doc """
  Lists tags that are attached to the specified resource.

  You can attach tags to the following resources in AWS Organizations.

    * AWS account

    * Organization root

    * Organizational unit (OU)

    * Policy (any type)

  This operation can be called only from the organization's management account or
  by a member account that is a delegated administrator for an AWS service.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListTagsForResource", input, options)
  end

  @doc """
  Lists all the roots, organizational units (OUs), and accounts that the specified
  policy is attached to.

  Always check the `NextToken` response parameter for a `null` value when calling
  a `List*` operation. These operations can occasionally return an empty set of
  results even when there are more results available. The `NextToken` response
  parameter value is `null` *only* when there are no more results to display.

  This operation can be called only from the organization's management account or
  by a member account that is a delegated administrator for an AWS service.
  """
  def list_targets_for_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListTargetsForPolicy", input, options)
  end

  @doc """
  Moves an account from its current source parent root or organizational unit (OU)
  to the specified destination parent root or OU.

  This operation can be called only from the organization's management account.
  """
  def move_account(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "MoveAccount", input, options)
  end

  @doc """
  Enables the specified member account to administer the Organizations features of
  the specified AWS service.

  It grants read-only access to AWS Organizations service data. The account still
  requires IAM permissions to access and administer the AWS service.

  You can run this action only for AWS services that support this feature. For a
  current list of services that support it, see the column *Supports Delegated
  Administrator* in the table at [AWS Services that you can use with AWS Organizations](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrated-services-list.html)
  in the *AWS Organizations User Guide.*

  This operation can be called only from the organization's management account.
  """
  def register_delegated_administrator(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RegisterDelegatedAdministrator", input, options)
  end

  @doc """
  Removes the specified account from the organization.

  The removed account becomes a standalone account that isn't a member of any
  organization. It's no longer subject to any policies and is responsible for its
  own bill payments. The organization's management account is no longer charged
  for any expenses accrued by the member account after it's removed from the
  organization.

  This operation can be called only from the organization's management account.
  Member accounts can remove themselves with `LeaveOrganization` instead.

     You can remove an account from your organization only if the
  account is configured with the information required to operate as a standalone
  account. When you create an account in an organization using the AWS
  Organizations console, API, or CLI commands, the information required of
  standalone accounts is *not* automatically collected. For an account that you
  want to make standalone, you must choose a support plan, provide and verify the
  required contact information, and provide a current payment method. AWS uses the
  payment method to charge for any billable (not free tier) AWS activity that
  occurs while the account isn't attached to an organization. To remove an account
  that doesn't yet have this information, you must sign in as the member account
  and follow the steps at [ To leave an organization when all required account information has not yet been
  provided](http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_remove.html#leave-without-all-info)
  in the *AWS Organizations User Guide.*

     After the account leaves the organization, all tags that were
  attached to the account object in the organization are deleted. AWS accounts
  outside of an organization do not support tags.
  """
  def remove_account_from_organization(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RemoveAccountFromOrganization", input, options)
  end

  @doc """
  Adds one or more tags to the specified resource.

  Currently, you can attach tags to the following resources in AWS Organizations.

    * AWS account

    * Organization root

    * Organizational unit (OU)

    * Policy (any type)

  This operation can be called only from the organization's management account.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "TagResource", input, options)
  end

  @doc """
  Removes any tags with the specified keys from the specified resource.

  You can attach tags to the following resources in AWS Organizations.

    * AWS account

    * Organization root

    * Organizational unit (OU)

    * Policy (any type)

  This operation can be called only from the organization's management account.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UntagResource", input, options)
  end

  @doc """
  Renames the specified organizational unit (OU).

  The ID and ARN don't change. The child OUs and accounts remain in place, and any
  attached policies of the OU remain attached.

  This operation can be called only from the organization's management account.
  """
  def update_organizational_unit(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateOrganizationalUnit", input, options)
  end

  @doc """
  Updates an existing policy with a new name, description, or content.

  If you don't supply any parameter, that value remains unchanged. You can't
  change a policy's type.

  This operation can be called only from the organization's management account.
  """
  def update_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdatePolicy", input, options)
  end
end