# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Detective do
  @moduledoc """
  Detective uses machine learning and purpose-built visualizations to help you
  analyze and investigate security issues across your Amazon Web Services (AWS)
  workloads.

  Detective automatically extracts time-based events such as login attempts, API
  calls, and network traffic from AWS CloudTrail and Amazon Virtual Private Cloud
  (Amazon VPC) flow logs. It also extracts findings detected by Amazon GuardDuty.

  The Detective API primarily supports the creation and management of behavior
  graphs. A behavior graph contains the extracted data from a set of member
  accounts, and is created and managed by an administrator account.

  Every behavior graph is specific to a Region. You can only use the API to manage
  graphs that belong to the Region that is associated with the currently selected
  endpoint.

  A Detective administrator account can use the Detective API to do the following:

    * Enable and disable Detective. Enabling Detective creates a new
  behavior graph.

    * View the list of member accounts in a behavior graph.

    * Add member accounts to a behavior graph.

    * Remove member accounts from a behavior graph.

  A member account can use the Detective API to do the following:

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
    %AWS.ServiceMetadata{
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
  Sends a request to invite the specified AWS accounts to be member accounts in
  the behavior graph.

  This operation can only be called by the administrator account for a behavior
  graph.

  `CreateMembers` verifies the accounts and then invites the verified accounts.
  The administrator can optionally specify to not send invitation emails to the
  member accounts. This would be used when the administrator manages their member
  accounts centrally.

  The request provides the behavior graph ARN and the list of accounts to invite.

  The response separates the requested accounts into two lists:

    * The accounts that `CreateMembers` was able to start the
  verification for. This list includes member accounts that are being verified,
  that have passed verification and are to be invited, and that have failed
  verification.

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

  This operation removes the graph from each member account's list of behavior
  graphs.

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
  Deletes one or more member accounts from the administrator account's behavior
  graph.

  This operation can only be called by a Detective administrator account. That
  account cannot use `DeleteMembers` to delete their own account from the behavior
  graph. To disable a behavior graph, the administrator account uses the
  `DeleteGraph` API method.
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
  Removes the member account from the specified behavior graph.

  This operation can only be called by a member account that has the `ENABLED`
  status.
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

  This operation can only be called by a member account.

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

  Does not return member accounts that were removed from the behavior graph.
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
  Rejects an invitation to contribute the account data to a behavior graph.

  This operation must be called by a member account that has the `INVITED` status.
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
end