# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.WorkMail do
  @moduledoc """
  Amazon WorkMail is a secure, managed business email and calendaring service with
  support for existing desktop and mobile email clients.

  You can access your email, contacts, and calendars using Microsoft Outlook, your
  browser, or other native iOS and Android email applications. You can integrate
  WorkMail with your existing corporate directory and control both the keys that
  encrypt your data and the location in which your data is stored.

  The WorkMail API is designed for the following scenarios:

    * Listing and describing organizations

    * Managing users

    * Managing groups

    * Managing resources

  All WorkMail API operations are Amazon-authenticated and certificate-signed.
  They not only require the use of the AWS SDK, but also allow for the exclusive
  use of AWS Identity and Access Management users and roles to help facilitate
  access, trust, and permission policies. By creating a role and allowing an IAM
  user to access the WorkMail site, the IAM user gains full administrative
  visibility into the entire WorkMail organization (or as set in the IAM policy).
  This includes, but is not limited to, the ability to create, update, and delete
  users, groups, and resources. This allows developers to perform the scenarios
  listed above, as well as give users the ability to grant access on a selective
  basis using the IAM model.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2017-10-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "workmail",
      global?: false,
      protocol: "json",
      service_id: "WorkMail",
      signature_version: "v4",
      signing_name: "workmail",
      target_prefix: "WorkMailService"
    }
  end

  @doc """
  Adds a member (user or group) to the resource's set of delegates.
  """
  def associate_delegate_to_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AssociateDelegateToResource", input, options)
  end

  @doc """
  Adds a member (user or group) to the group's set.
  """
  def associate_member_to_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AssociateMemberToGroup", input, options)
  end

  @doc """
  Cancels a mailbox export job.

  If the mailbox export job is near completion, it might not be possible to cancel
  it.
  """
  def cancel_mailbox_export_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CancelMailboxExportJob", input, options)
  end

  @doc """
  Adds an alias to the set of a given member (user or group) of Amazon WorkMail.
  """
  def create_alias(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateAlias", input, options)
  end

  @doc """
  Creates a group that can be used in Amazon WorkMail by calling the
  `RegisterToWorkMail` operation.
  """
  def create_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateGroup", input, options)
  end

  @doc """
  Creates a new mobile device access rule for the specified Amazon WorkMail
  organization.
  """
  def create_mobile_device_access_rule(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateMobileDeviceAccessRule", input, options)
  end

  @doc """
  Creates a new Amazon WorkMail organization.

  Optionally, you can choose to associate an existing AWS Directory Service
  directory with your organization. If an AWS Directory Service directory ID is
  specified, the organization alias must match the directory alias. If you choose
  not to associate an existing directory with your organization, then we create a
  new Amazon WorkMail directory for you. For more information, see [Adding an organization](https://docs.aws.amazon.com/workmail/latest/adminguide/add_new_organization.html)
  in the *Amazon WorkMail Administrator Guide*.

  You can associate multiple email domains with an organization, then set your
  default email domain from the Amazon WorkMail console. You can also associate a
  domain that is managed in an Amazon Route 53 public hosted zone. For more
  information, see [Adding a domain](https://docs.aws.amazon.com/workmail/latest/adminguide/add_domain.html)
  and [Choosing the default domain](https://docs.aws.amazon.com/workmail/latest/adminguide/default_domain.html)
  in the *Amazon WorkMail Administrator Guide*.

  Optionally, you can use a customer managed master key from AWS Key Management
  Service (AWS KMS) to encrypt email for your organization. If you don't associate
  an AWS KMS key, Amazon WorkMail creates a default AWS managed master key for
  you.
  """
  def create_organization(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateOrganization", input, options)
  end

  @doc """
  Creates a new Amazon WorkMail resource.
  """
  def create_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateResource", input, options)
  end

  @doc """
  Creates a user who can be used in Amazon WorkMail by calling the
  `RegisterToWorkMail` operation.
  """
  def create_user(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateUser", input, options)
  end

  @doc """
  Deletes an access control rule for the specified WorkMail organization.

  Deleting already deleted and non-existing rules does not produce an error. In
  those cases, the service sends back an HTTP 200 response with an empty HTTP
  body.
  """
  def delete_access_control_rule(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteAccessControlRule", input, options)
  end

  @doc """
  Remove one or more specified aliases from a set of aliases for a given user.
  """
  def delete_alias(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteAlias", input, options)
  end

  @doc """
  Deletes the email monitoring configuration for a specified organization.
  """
  def delete_email_monitoring_configuration(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteEmailMonitoringConfiguration", input, options)
  end

  @doc """
  Deletes a group from Amazon WorkMail.
  """
  def delete_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteGroup", input, options)
  end

  @doc """
  Deletes permissions granted to a member (user or group).
  """
  def delete_mailbox_permissions(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteMailboxPermissions", input, options)
  end

  @doc """
  Deletes the mobile device access override for the given WorkMail organization,
  user, and device.

  Deleting already deleted and non-existing overrides does not produce an error.
  In those cases, the service sends back an HTTP 200 response with an empty HTTP
  body.
  """
  def delete_mobile_device_access_override(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteMobileDeviceAccessOverride", input, options)
  end

  @doc """
  Deletes a mobile device access rule for the specified Amazon WorkMail
  organization.

  Deleting already deleted and non-existing rules does not produce an error. In
  those cases, the service sends back an HTTP 200 response with an empty HTTP
  body.
  """
  def delete_mobile_device_access_rule(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteMobileDeviceAccessRule", input, options)
  end

  @doc """
  Deletes an Amazon WorkMail organization and all underlying AWS resources managed
  by Amazon WorkMail as part of the organization.

  You can choose whether to delete the associated directory. For more information,
  see [Removing an organization](https://docs.aws.amazon.com/workmail/latest/adminguide/remove_organization.html)
  in the *Amazon WorkMail Administrator Guide*.
  """
  def delete_organization(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteOrganization", input, options)
  end

  @doc """
  Deletes the specified resource.
  """
  def delete_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteResource", input, options)
  end

  @doc """
  Deletes the specified retention policy from the specified organization.
  """
  def delete_retention_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteRetentionPolicy", input, options)
  end

  @doc """
  Deletes a user from Amazon WorkMail and all subsequent systems.

  Before you can delete a user, the user state must be `DISABLED`. Use the
  `DescribeUser` action to confirm the user state.

  Deleting a user is permanent and cannot be undone. WorkMail archives user
  mailboxes for 30 days before they are permanently removed.
  """
  def delete_user(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteUser", input, options)
  end

  @doc """
  Mark a user, group, or resource as no longer used in Amazon WorkMail.

  This action disassociates the mailbox and schedules it for clean-up. WorkMail
  keeps mailboxes for 30 days before they are permanently removed. The
  functionality in the console is *Disable*.
  """
  def deregister_from_work_mail(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeregisterFromWorkMail", input, options)
  end

  @doc """
  Removes a domain from Amazon WorkMail, stops email routing to WorkMail, and
  removes the authorization allowing WorkMail use.

  SES keeps the domain because other applications may use it. You must first
  remove any email address used by WorkMail entities before you remove the domain.
  """
  def deregister_mail_domain(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeregisterMailDomain", input, options)
  end

  @doc """
  Describes the current email monitoring configuration for a specified
  organization.
  """
  def describe_email_monitoring_configuration(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "DescribeEmailMonitoringConfiguration",
      input,
      options
    )
  end

  @doc """
  Returns the data available for the group.
  """
  def describe_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeGroup", input, options)
  end

  @doc """
  Lists the settings in a DMARC policy for a specified organization.
  """
  def describe_inbound_dmarc_settings(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeInboundDmarcSettings", input, options)
  end

  @doc """
  Describes the current status of a mailbox export job.
  """
  def describe_mailbox_export_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeMailboxExportJob", input, options)
  end

  @doc """
  Provides more information regarding a given organization based on its
  identifier.
  """
  def describe_organization(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeOrganization", input, options)
  end

  @doc """
  Returns the data available for the resource.
  """
  def describe_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeResource", input, options)
  end

  @doc """
  Provides information regarding the user.
  """
  def describe_user(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeUser", input, options)
  end

  @doc """
  Removes a member from the resource's set of delegates.
  """
  def disassociate_delegate_from_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DisassociateDelegateFromResource", input, options)
  end

  @doc """
  Removes a member from a group.
  """
  def disassociate_member_from_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DisassociateMemberFromGroup", input, options)
  end

  @doc """
  Gets the effects of an organization's access control rules as they apply to a
  specified IPv4 address, access protocol action, or user ID.
  """
  def get_access_control_effect(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetAccessControlEffect", input, options)
  end

  @doc """
  Gets the default retention policy details for the specified organization.
  """
  def get_default_retention_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetDefaultRetentionPolicy", input, options)
  end

  @doc """
  Gets details for a mail domain, including domain records required to configure
  your domain with recommended security.
  """
  def get_mail_domain(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetMailDomain", input, options)
  end

  @doc """
  Requests a user's mailbox details for a specified organization and user.
  """
  def get_mailbox_details(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetMailboxDetails", input, options)
  end

  @doc """
  Simulates the effect of the mobile device access rules for the given attributes
  of a sample access event.

  Use this method to test the effects of the current set of mobile device access
  rules for the Amazon WorkMail organization for a particular user's attributes.
  """
  def get_mobile_device_access_effect(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetMobileDeviceAccessEffect", input, options)
  end

  @doc """
  Gets the mobile device access override for the given WorkMail organization,
  user, and device.
  """
  def get_mobile_device_access_override(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetMobileDeviceAccessOverride", input, options)
  end

  @doc """
  Lists the access control rules for the specified organization.
  """
  def list_access_control_rules(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListAccessControlRules", input, options)
  end

  @doc """
  Creates a paginated call to list the aliases associated with a given entity.
  """
  def list_aliases(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListAliases", input, options)
  end

  @doc """
  Returns an overview of the members of a group.

  Users and groups can be members of a group.
  """
  def list_group_members(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListGroupMembers", input, options)
  end

  @doc """
  Returns summaries of the organization's groups.
  """
  def list_groups(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListGroups", input, options)
  end

  @doc """
  Lists the mail domains in a given Amazon WorkMail organization.
  """
  def list_mail_domains(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListMailDomains", input, options)
  end

  @doc """
  Lists the mailbox export jobs started for the specified organization within the
  last seven days.
  """
  def list_mailbox_export_jobs(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListMailboxExportJobs", input, options)
  end

  @doc """
  Lists the mailbox permissions associated with a user, group, or resource
  mailbox.
  """
  def list_mailbox_permissions(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListMailboxPermissions", input, options)
  end

  @doc """
  Lists all the mobile device access overrides for any given combination of
  WorkMail organization, user, or device.
  """
  def list_mobile_device_access_overrides(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListMobileDeviceAccessOverrides", input, options)
  end

  @doc """
  Lists the mobile device access rules for the specified Amazon WorkMail
  organization.
  """
  def list_mobile_device_access_rules(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListMobileDeviceAccessRules", input, options)
  end

  @doc """
  Returns summaries of the customer's organizations.
  """
  def list_organizations(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListOrganizations", input, options)
  end

  @doc """
  Lists the delegates associated with a resource.

  Users and groups can be resource delegates and answer requests on behalf of the
  resource.
  """
  def list_resource_delegates(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListResourceDelegates", input, options)
  end

  @doc """
  Returns summaries of the organization's resources.
  """
  def list_resources(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListResources", input, options)
  end

  @doc """
  Lists the tags applied to an Amazon WorkMail organization resource.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListTagsForResource", input, options)
  end

  @doc """
  Returns summaries of the organization's users.
  """
  def list_users(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListUsers", input, options)
  end

  @doc """
  Adds a new access control rule for the specified organization.

  The rule allows or denies access to the organization for the specified IPv4
  addresses, access protocol actions, and user IDs. Adding a new rule with the
  same name as an existing rule replaces the older rule.
  """
  def put_access_control_rule(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutAccessControlRule", input, options)
  end

  @doc """
  Creates or updates the email monitoring configuration for a specified
  organization.
  """
  def put_email_monitoring_configuration(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutEmailMonitoringConfiguration", input, options)
  end

  @doc """
  Enables or disables a DMARC policy for a given organization.
  """
  def put_inbound_dmarc_settings(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutInboundDmarcSettings", input, options)
  end

  @doc """
  Sets permissions for a user, group, or resource.

  This replaces any pre-existing permissions.
  """
  def put_mailbox_permissions(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutMailboxPermissions", input, options)
  end

  @doc """
  Creates or updates a mobile device access override for the given WorkMail
  organization, user, and device.
  """
  def put_mobile_device_access_override(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutMobileDeviceAccessOverride", input, options)
  end

  @doc """
  Puts a retention policy to the specified organization.
  """
  def put_retention_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutRetentionPolicy", input, options)
  end

  @doc """
  Registers a new domain in Amazon WorkMail and SES, and configures it for use by
  WorkMail.

  Emails received by SES for this domain are routed to the specified WorkMail
  organization, and WorkMail has permanent permission to use the specified domain
  for sending your users' emails.
  """
  def register_mail_domain(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RegisterMailDomain", input, options)
  end

  @doc """
  Registers an existing and disabled user, group, or resource for Amazon WorkMail
  use by associating a mailbox and calendaring capabilities.

  It performs no change if the user, group, or resource is enabled and fails if
  the user, group, or resource is deleted. This operation results in the
  accumulation of costs. For more information, see
  [Pricing](https://aws.amazon.com/workmail/pricing). The equivalent console
  functionality for this operation is *Enable*.

  Users can either be created by calling the `CreateUser` API operation or they
  can be synchronized from your directory. For more information, see
  `DeregisterFromWorkMail`.
  """
  def register_to_work_mail(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RegisterToWorkMail", input, options)
  end

  @doc """
  Allows the administrator to reset the password for a user.
  """
  def reset_password(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ResetPassword", input, options)
  end

  @doc """
  Starts a mailbox export job to export MIME-format email messages and calendar
  items from the specified mailbox to the specified Amazon Simple Storage Service
  (Amazon S3) bucket.

  For more information, see [Exporting mailbox content](https://docs.aws.amazon.com/workmail/latest/adminguide/mail-export.html)
  in the *Amazon WorkMail Administrator Guide*.
  """
  def start_mailbox_export_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StartMailboxExportJob", input, options)
  end

  @doc """
  Applies the specified tags to the specified Amazon WorkMail organization
  resource.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "TagResource", input, options)
  end

  @doc """
  Untags the specified tags from the specified Amazon WorkMail organization
  resource.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UntagResource", input, options)
  end

  @doc """
  Updates the default mail domain for an organization.

  The default mail domain is used by the WorkMail AWS Console to suggest an email
  address when enabling a mail user. You can only have one default domain.
  """
  def update_default_mail_domain(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateDefaultMailDomain", input, options)
  end

  @doc """
  Updates a user's current mailbox quota for a specified organization and user.
  """
  def update_mailbox_quota(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateMailboxQuota", input, options)
  end

  @doc """
  Updates a mobile device access rule for the specified Amazon WorkMail
  organization.
  """
  def update_mobile_device_access_rule(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateMobileDeviceAccessRule", input, options)
  end

  @doc """
  Updates the primary email for a user, group, or resource.

  The current email is moved into the list of aliases (or swapped between an
  existing alias and the current primary email), and the email provided in the
  input is promoted as the primary.
  """
  def update_primary_email_address(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdatePrimaryEmailAddress", input, options)
  end

  @doc """
  Updates data for the resource.

  To have the latest information, it must be preceded by a `DescribeResource`
  call. The dataset in the request should be the one expected when performing
  another `DescribeResource` call.
  """
  def update_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateResource", input, options)
  end
end
