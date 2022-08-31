# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Detective do
  @moduledoc """
  Detective uses machine learning and purpose-built visualizations to help you to
  analyze and investigate security issues across your Amazon Web Services (Amazon
  Web Services) workloads.

  Detective automatically extracts time-based events such as login attempts, API
  calls, and network traffic from CloudTrail and Amazon Virtual Private Cloud
  (Amazon VPC) flow logs. It also extracts findings detected by Amazon GuardDuty.

  The Detective API primarily supports the creation and management of behavior
  graphs. A behavior graph contains the extracted data from a set of member
  accounts, and is created and managed by an administrator account.

  To add a member account to the behavior graph, the administrator account sends
  an invitation to the account. When the account accepts the invitation, it
  becomes a member account in the behavior graph.

  Detective is also integrated with Organizations. The organization management
  account designates the Detective administrator account for the organization.
  That account becomes the administrator account for the organization behavior
  graph. The Detective administrator account is also the delegated administrator
  account for Detective in Organizations.

  The Detective administrator account can enable any organization account as a
  member account in the organization behavior graph. The organization accounts do
  not receive invitations. The Detective administrator account can also invite
  other accounts to the organization behavior graph.

  Every behavior graph is specific to a Region. You can only use the API to manage
  behavior graphs that belong to the Region that is associated with the currently
  selected endpoint.

  The administrator account for a behavior graph can use the Detective API to do
  the following:

    * Enable and disable Detective. Enabling Detective creates a new
  behavior graph.

    * View the list of member accounts in a behavior graph.

    * Add member accounts to a behavior graph.

    * Remove member accounts from a behavior graph.

    * Apply tags to a behavior graph.

  The organization management account can use the Detective API to select the
  delegated administrator for Detective.

  The Detective administrator account for an organization can use the Detective
  API to do the following:

    * Perform all of the functions of an administrator account.

    * Determine whether to automatically enable new organization
  accounts as member accounts in the organization behavior graph.

  An invited member account can use the Detective API to do the following:

    * View the list of behavior graphs that they are invited to.

    * Accept an invitation to contribute to a behavior graph.

    * Decline an invitation to contribute to a behavior graph.

    * Remove their account from a behavior graph.

  All API actions are logged as CloudTrail events. See [Logging Detective API Calls with
  CloudTrail](https://docs.aws.amazon.com/detective/latest/adminguide/logging-using-cloudtrail.html).

  We replaced the term "master account" with the term "administrator account." An
  administrator account is used to centrally manage multiple accounts. In the case
  of Detective, the administrator account manages the accounts in their behavior
  graph.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2018-10-26",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "api.detective",
      global?: false,
      protocol: "rest-json",
      service_id: "Detective",
      signature_version: "v4",
      signing_name: "detective",
      target_prefix: nil
    }
  end

  @doc """
  Accepts an invitation for the member account to contribute data to a behavior
  graph.

  This operation can only be called by an invited member account.

  The request provides the ARN of behavior graph.

  The member account status in the graph must be `INVITED`.
  """
  def accept_invitation(%Client{} = client, input, options \\ []) do
    url_path = "/invitation"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Gets data source package information for the behavior graph.
  """
  def batch_get_graph_member_datasources(%Client{} = client, input, options \\ []) do
    url_path = "/graph/datasources/get"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Gets information on the data source package history for an account.
  """
  def batch_get_membership_datasources(%Client{} = client, input, options \\ []) do
    url_path = "/membership/datasources/get"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Creates a new behavior graph for the calling account, and sets that account as
  the administrator account.

  This operation is called by the account that is enabling Detective.

  Before you try to enable Detective, make sure that your account has been
  enrolled in Amazon GuardDuty for at least 48 hours. If you do not meet this
  requirement, you cannot enable Detective. If you do meet the GuardDuty
  prerequisite, then when you make the request to enable Detective, it checks
  whether your data volume is within the Detective quota. If it exceeds the quota,
  then you cannot enable Detective.

  The operation also enables Detective for the calling account in the currently
  selected Region. It returns the ARN of the new behavior graph.

  `CreateGraph` triggers a process to create the corresponding data tables for the
  new behavior graph.

  An account can only be the administrator account for one behavior graph within a
  Region. If the same account calls `CreateGraph` with the same administrator
  account, it always returns the same behavior graph ARN. It does not create a new
  behavior graph.
  """
  def create_graph(%Client{} = client, input, options \\ []) do
    url_path = "/graph"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  `CreateMembers` is used to send invitations to accounts.

  For the organization behavior graph, the Detective administrator account uses
  `CreateMembers` to enable organization accounts as member accounts.

  For invited accounts, `CreateMembers` sends a request to invite the specified
  Amazon Web Services accounts to be member accounts in the behavior graph. This
  operation can only be called by the administrator account for a behavior graph.

  `CreateMembers` verifies the accounts and then invites the verified accounts.
  The administrator can optionally specify to not send invitation emails to the
  member accounts. This would be used when the administrator manages their member
  accounts centrally.

  For organization accounts in the organization behavior graph, `CreateMembers`
  attempts to enable the accounts. The organization accounts do not receive
  invitations.

  The request provides the behavior graph ARN and the list of accounts to invite
  or to enable.

  The response separates the requested accounts into two lists:

    * The accounts that `CreateMembers` was able to process. For invited
  accounts, includes member accounts that are being verified, that have passed
  verification and are to be invited, and that have failed verification. For
  organization accounts in the organization behavior graph, includes accounts that
  can be enabled and that cannot be enabled.

    * The accounts that `CreateMembers` was unable to process. This list
  includes accounts that were already invited to be member accounts in the
  behavior graph.
  """
  def create_members(%Client{} = client, input, options \\ []) do
    url_path = "/graph/members"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Disables the specified behavior graph and queues it to be deleted.

  This operation removes the behavior graph from each member account's list of
  behavior graphs.

  `DeleteGraph` can only be called by the administrator account for a behavior
  graph.
  """
  def delete_graph(%Client{} = client, input, options \\ []) do
    url_path = "/graph/removal"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Removes the specified member accounts from the behavior graph.

  The removed accounts no longer contribute data to the behavior graph. This
  operation can only be called by the administrator account for the behavior
  graph.

  For invited accounts, the removed accounts are deleted from the list of accounts
  in the behavior graph. To restore the account, the administrator account must
  send another invitation.

  For organization accounts in the organization behavior graph, the Detective
  administrator account can always enable the organization account again.
  Organization accounts that are not enabled as member accounts are not included
  in the `ListMembers` results for the organization behavior graph.

  An administrator account cannot use `DeleteMembers` to remove their own account
  from the behavior graph. To disable a behavior graph, the administrator account
  uses the `DeleteGraph` API method.
  """
  def delete_members(%Client{} = client, input, options \\ []) do
    url_path = "/graph/members/removal"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Returns information about the configuration for the organization behavior graph.

  Currently indicates whether to automatically enable new organization accounts as
  member accounts.

  Can only be called by the Detective administrator account for the organization.
  """
  def describe_organization_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/orgs/describeOrganizationConfiguration"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Removes the Detective administrator account in the current Region.

  Deletes the organization behavior graph.

  Can only be called by the organization management account.

  Removing the Detective administrator account does not affect the delegated
  administrator account for Detective in Organizations.

  To remove the delegated administrator account in Organizations, use the
  Organizations API. Removing the delegated administrator account also removes the
  Detective administrator account in all Regions, except for Regions where the
  Detective administrator account is the organization management account.
  """
  def disable_organization_admin_account(%Client{} = client, input, options \\ []) do
    url_path = "/orgs/disableAdminAccount"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Removes the member account from the specified behavior graph.

  This operation can only be called by an invited member account that has the
  `ENABLED` status.

  `DisassociateMembership` cannot be called by an organization account in the
  organization behavior graph. For the organization behavior graph, the Detective
  administrator account determines which organization accounts to enable or
  disable as member accounts.
  """
  def disassociate_membership(%Client{} = client, input, options \\ []) do
    url_path = "/membership/removal"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Designates the Detective administrator account for the organization in the
  current Region.

  If the account does not have Detective enabled, then enables Detective for that
  account and creates a new behavior graph.

  Can only be called by the organization management account.

  If the organization has a delegated administrator account in Organizations, then
  the Detective administrator account must be either the delegated administrator
  account or the organization management account.

  If the organization does not have a delegated administrator account in
  Organizations, then you can choose any account in the organization. If you
  choose an account other than the organization management account, Detective
  calls Organizations to make that account the delegated administrator account for
  Detective. The organization management account cannot be the delegated
  administrator account.
  """
  def enable_organization_admin_account(%Client{} = client, input, options \\ []) do
    url_path = "/orgs/enableAdminAccount"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Returns the membership details for specified member accounts for a behavior
  graph.
  """
  def get_members(%Client{} = client, input, options \\ []) do
    url_path = "/graph/members/get"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Lists data source packages in the behavior graph.
  """
  def list_datasource_packages(%Client{} = client, input, options \\ []) do
    url_path = "/graph/datasources/list"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Returns the list of behavior graphs that the calling account is an administrator
  account of.

  This operation can only be called by an administrator account.

  Because an account can currently only be the administrator of one behavior graph
  within a Region, the results always contain a single behavior graph.
  """
  def list_graphs(%Client{} = client, input, options \\ []) do
    url_path = "/graphs/list"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Retrieves the list of open and accepted behavior graph invitations for the
  member account.

  This operation can only be called by an invited member account.

  Open invitations are invitations that the member account has not responded to.

  The results do not include behavior graphs for which the member account declined
  the invitation. The results also do not include behavior graphs that the member
  account resigned from or was removed from.
  """
  def list_invitations(%Client{} = client, input, options \\ []) do
    url_path = "/invitations/list"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Retrieves the list of member accounts for a behavior graph.

  For invited accounts, the results do not include member accounts that were
  removed from the behavior graph.

  For the organization behavior graph, the results do not include organization
  accounts that the Detective administrator account has not enabled as member
  accounts.
  """
  def list_members(%Client{} = client, input, options \\ []) do
    url_path = "/graph/members/list"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Returns information about the Detective administrator account for an
  organization.

  Can only be called by the organization management account.
  """
  def list_organization_admin_accounts(%Client{} = client, input, options \\ []) do
    url_path = "/orgs/adminAccountslist"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Returns the tag values that are assigned to a behavior graph.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Rejects an invitation to contribute the account data to a behavior graph.

  This operation must be called by an invited member account that has the
  `INVITED` status.

  `RejectInvitation` cannot be called by an organization account in the
  organization behavior graph. In the organization behavior graph, organization
  accounts do not receive an invitation.
  """
  def reject_invitation(%Client{} = client, input, options \\ []) do
    url_path = "/invitation/removal"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Sends a request to enable data ingest for a member account that has a status of
  `ACCEPTED_BUT_DISABLED`.

  For valid member accounts, the status is updated as follows.

    * If Detective enabled the member account, then the new status is
  `ENABLED`.

    * If Detective cannot enable the member account, the status remains
  `ACCEPTED_BUT_DISABLED`.
  """
  def start_monitoring_member(%Client{} = client, input, options \\ []) do
    url_path = "/graph/member/monitoringstate"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Applies tag values to a behavior graph.
  """
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Removes tags from a behavior graph.
  """
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

    {query_params, input} =
      [
        {"TagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Starts a data source packages for the behavior graph.
  """
  def update_datasource_packages(%Client{} = client, input, options \\ []) do
    url_path = "/graph/datasources/update"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates the configuration for the Organizations integration in the current
  Region.

  Can only be called by the Detective administrator account for the organization.
  """
  def update_organization_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/orgs/updateOrganizationConfiguration"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end
end
