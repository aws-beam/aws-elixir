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

  @doc """
  Adds a member (user or group) to the resource's set of delegates.
  """
  def associate_delegate_to_resource(client, input, options \\ []) do
    request(client, "AssociateDelegateToResource", input, options)
  end

  @doc """
  Adds a member (user or group) to the group's set.
  """
  def associate_member_to_group(client, input, options \\ []) do
    request(client, "AssociateMemberToGroup", input, options)
  end

  @doc """
  Cancels a mailbox export job.

  If the mailbox export job is near completion, it might not be possible to cancel
  it.
  """
  def cancel_mailbox_export_job(client, input, options \\ []) do
    request(client, "CancelMailboxExportJob", input, options)
  end

  @doc """
  Adds an alias to the set of a given member (user or group) of Amazon WorkMail.
  """
  def create_alias(client, input, options \\ []) do
    request(client, "CreateAlias", input, options)
  end

  @doc """
  Creates a group that can be used in Amazon WorkMail by calling the
  `RegisterToWorkMail` operation.
  """
  def create_group(client, input, options \\ []) do
    request(client, "CreateGroup", input, options)
  end

  @doc """
  Creates a new Amazon WorkMail resource.
  """
  def create_resource(client, input, options \\ []) do
    request(client, "CreateResource", input, options)
  end

  @doc """
  Creates a user who can be used in Amazon WorkMail by calling the
  `RegisterToWorkMail` operation.
  """
  def create_user(client, input, options \\ []) do
    request(client, "CreateUser", input, options)
  end

  @doc """
  Deletes an access control rule for the specified WorkMail organization.
  """
  def delete_access_control_rule(client, input, options \\ []) do
    request(client, "DeleteAccessControlRule", input, options)
  end

  @doc """
  Remove one or more specified aliases from a set of aliases for a given user.
  """
  def delete_alias(client, input, options \\ []) do
    request(client, "DeleteAlias", input, options)
  end

  @doc """
  Deletes a group from Amazon WorkMail.
  """
  def delete_group(client, input, options \\ []) do
    request(client, "DeleteGroup", input, options)
  end

  @doc """
  Deletes permissions granted to a member (user or group).
  """
  def delete_mailbox_permissions(client, input, options \\ []) do
    request(client, "DeleteMailboxPermissions", input, options)
  end

  @doc """
  Deletes the specified resource.
  """
  def delete_resource(client, input, options \\ []) do
    request(client, "DeleteResource", input, options)
  end

  @doc """
  Deletes the specified retention policy from the specified organization.
  """
  def delete_retention_policy(client, input, options \\ []) do
    request(client, "DeleteRetentionPolicy", input, options)
  end

  @doc """
  Deletes a user from Amazon WorkMail and all subsequent systems.

  Before you can delete a user, the user state must be `DISABLED`. Use the
  `DescribeUser` action to confirm the user state.

  Deleting a user is permanent and cannot be undone. WorkMail archives user
  mailboxes for 30 days before they are permanently removed.
  """
  def delete_user(client, input, options \\ []) do
    request(client, "DeleteUser", input, options)
  end

  @doc """
  Mark a user, group, or resource as no longer used in Amazon WorkMail.

  This action disassociates the mailbox and schedules it for clean-up. WorkMail
  keeps mailboxes for 30 days before they are permanently removed. The
  functionality in the console is *Disable*.
  """
  def deregister_from_work_mail(client, input, options \\ []) do
    request(client, "DeregisterFromWorkMail", input, options)
  end

  @doc """
  Returns the data available for the group.
  """
  def describe_group(client, input, options \\ []) do
    request(client, "DescribeGroup", input, options)
  end

  @doc """
  Describes the current status of a mailbox export job.
  """
  def describe_mailbox_export_job(client, input, options \\ []) do
    request(client, "DescribeMailboxExportJob", input, options)
  end

  @doc """
  Provides more information regarding a given organization based on its
  identifier.
  """
  def describe_organization(client, input, options \\ []) do
    request(client, "DescribeOrganization", input, options)
  end

  @doc """
  Returns the data available for the resource.
  """
  def describe_resource(client, input, options \\ []) do
    request(client, "DescribeResource", input, options)
  end

  @doc """
  Provides information regarding the user.
  """
  def describe_user(client, input, options \\ []) do
    request(client, "DescribeUser", input, options)
  end

  @doc """
  Removes a member from the resource's set of delegates.
  """
  def disassociate_delegate_from_resource(client, input, options \\ []) do
    request(client, "DisassociateDelegateFromResource", input, options)
  end

  @doc """
  Removes a member from a group.
  """
  def disassociate_member_from_group(client, input, options \\ []) do
    request(client, "DisassociateMemberFromGroup", input, options)
  end

  @doc """
  Gets the effects of an organization's access control rules as they apply to a
  specified IPv4 address, access protocol action, or user ID.
  """
  def get_access_control_effect(client, input, options \\ []) do
    request(client, "GetAccessControlEffect", input, options)
  end

  @doc """
  Gets the default retention policy details for the specified organization.
  """
  def get_default_retention_policy(client, input, options \\ []) do
    request(client, "GetDefaultRetentionPolicy", input, options)
  end

  @doc """
  Requests a user's mailbox details for a specified organization and user.
  """
  def get_mailbox_details(client, input, options \\ []) do
    request(client, "GetMailboxDetails", input, options)
  end

  @doc """
  Lists the access control rules for the specified organization.
  """
  def list_access_control_rules(client, input, options \\ []) do
    request(client, "ListAccessControlRules", input, options)
  end

  @doc """
  Creates a paginated call to list the aliases associated with a given entity.
  """
  def list_aliases(client, input, options \\ []) do
    request(client, "ListAliases", input, options)
  end

  @doc """
  Returns an overview of the members of a group.

  Users and groups can be members of a group.
  """
  def list_group_members(client, input, options \\ []) do
    request(client, "ListGroupMembers", input, options)
  end

  @doc """
  Returns summaries of the organization's groups.
  """
  def list_groups(client, input, options \\ []) do
    request(client, "ListGroups", input, options)
  end

  @doc """
  Lists the mailbox export jobs started for the specified organization within the
  last seven days.
  """
  def list_mailbox_export_jobs(client, input, options \\ []) do
    request(client, "ListMailboxExportJobs", input, options)
  end

  @doc """
  Lists the mailbox permissions associated with a user, group, or resource
  mailbox.
  """
  def list_mailbox_permissions(client, input, options \\ []) do
    request(client, "ListMailboxPermissions", input, options)
  end

  @doc """
  Returns summaries of the customer's organizations.
  """
  def list_organizations(client, input, options \\ []) do
    request(client, "ListOrganizations", input, options)
  end

  @doc """
  Lists the delegates associated with a resource.

  Users and groups can be resource delegates and answer requests on behalf of the
  resource.
  """
  def list_resource_delegates(client, input, options \\ []) do
    request(client, "ListResourceDelegates", input, options)
  end

  @doc """
  Returns summaries of the organization's resources.
  """
  def list_resources(client, input, options \\ []) do
    request(client, "ListResources", input, options)
  end

  @doc """
  Lists the tags applied to an Amazon WorkMail organization resource.
  """
  def list_tags_for_resource(client, input, options \\ []) do
    request(client, "ListTagsForResource", input, options)
  end

  @doc """
  Returns summaries of the organization's users.
  """
  def list_users(client, input, options \\ []) do
    request(client, "ListUsers", input, options)
  end

  @doc """
  Adds a new access control rule for the specified organization.

  The rule allows or denies access to the organization for the specified IPv4
  addresses, access protocol actions, and user IDs. Adding a new rule with the
  same name as an existing rule replaces the older rule.
  """
  def put_access_control_rule(client, input, options \\ []) do
    request(client, "PutAccessControlRule", input, options)
  end

  @doc """
  Sets permissions for a user, group, or resource.

  This replaces any pre-existing permissions.
  """
  def put_mailbox_permissions(client, input, options \\ []) do
    request(client, "PutMailboxPermissions", input, options)
  end

  @doc """
  Puts a retention policy to the specified organization.
  """
  def put_retention_policy(client, input, options \\ []) do
    request(client, "PutRetentionPolicy", input, options)
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
  def register_to_work_mail(client, input, options \\ []) do
    request(client, "RegisterToWorkMail", input, options)
  end

  @doc """
  Allows the administrator to reset the password for a user.
  """
  def reset_password(client, input, options \\ []) do
    request(client, "ResetPassword", input, options)
  end

  @doc """
  Starts a mailbox export job to export MIME-format email messages and calendar
  items from the specified mailbox to the specified Amazon Simple Storage Service
  (Amazon S3) bucket.

  For more information, see [Exporting mailbox content](https://docs.aws.amazon.com/workmail/latest/adminguide/mail-export.html)
  in the *Amazon WorkMail Administrator Guide*.
  """
  def start_mailbox_export_job(client, input, options \\ []) do
    request(client, "StartMailboxExportJob", input, options)
  end

  @doc """
  Applies the specified tags to the specified Amazon WorkMail organization
  resource.
  """
  def tag_resource(client, input, options \\ []) do
    request(client, "TagResource", input, options)
  end

  @doc """
  Untags the specified tags from the specified Amazon WorkMail organization
  resource.
  """
  def untag_resource(client, input, options \\ []) do
    request(client, "UntagResource", input, options)
  end

  @doc """
  Updates a user's current mailbox quota for a specified organization and user.
  """
  def update_mailbox_quota(client, input, options \\ []) do
    request(client, "UpdateMailboxQuota", input, options)
  end

  @doc """
  Updates the primary email for a user, group, or resource.

  The current email is moved into the list of aliases (or swapped between an
  existing alias and the current primary email), and the email provided in the
  input is promoted as the primary.
  """
  def update_primary_email_address(client, input, options \\ []) do
    request(client, "UpdatePrimaryEmailAddress", input, options)
  end

  @doc """
  Updates data for the resource.

  To have the latest information, it must be preceded by a `DescribeResource`
  call. The dataset in the request should be the one expected when performing
  another `DescribeResource` call.
  """
  def update_resource(client, input, options \\ []) do
    request(client, "UpdateResource", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, map() | nil, map()}
          | {:error, term()}
  defp request(client, action, input, options) do
    client = %{client | service: "workmail"}
    host = build_host("workmail", client)
    url = build_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "WorkMailService.#{action}"}
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
  defp build_host(endpoint_prefix, %{region: region, endpoint: endpoint}) do
    "#{endpoint_prefix}.#{region}.#{endpoint}"
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
