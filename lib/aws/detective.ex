# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Detective do
  @moduledoc """
  Detective uses machine learning and purpose-built visualizations to help
  you analyze and investigate security issues across your Amazon Web Services
  (AWS) workloads. Detective automatically extracts time-based events such as
  login attempts, API calls, and network traffic from AWS CloudTrail and
  Amazon Virtual Private Cloud (Amazon VPC) flow logs. It also extracts
  findings detected by Amazon GuardDuty.

  The Detective API primarily supports the creation and management of
  behavior graphs. A behavior graph contains the extracted data from a set of
  member accounts, and is created and managed by a master account.

  Every behavior graph is specific to a Region. You can only use the API to
  manage graphs that belong to the Region that is associated with the
  currently selected endpoint.

  A Detective master account can use the Detective API to do the following:

  <ul> <li> Enable and disable Detective. Enabling Detective creates a new
  behavior graph.

  </li> <li> View the list of member accounts in a behavior graph.

  </li> <li> Add member accounts to a behavior graph.

  </li> <li> Remove member accounts from a behavior graph.

  </li> </ul> A member account can use the Detective API to do the following:

  <ul> <li> View the list of behavior graphs that they are invited to.

  </li> <li> Accept an invitation to contribute to a behavior graph.

  </li> <li> Decline an invitation to contribute to a behavior graph.

  </li> <li> Remove their account from a behavior graph.

  </li> </ul> All API actions are logged as CloudTrail events. See [Logging
  Detective API Calls with
  CloudTrail](https://docs.aws.amazon.com/detective/latest/adminguide/logging-using-cloudtrail.html).
  """

  @doc """
  Accepts an invitation for the member account to contribute data to a
  behavior graph. This operation can only be called by an invited member
  account.

  The request provides the ARN of behavior graph.

  The member account status in the graph must be `INVITED`.
  """
  def accept_invitation(client, input, options \\ []) do
    path_ = "/invitation"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a new behavior graph for the calling account, and sets that account
  as the master account. This operation is called by the account that is
  enabling Detective.

  Before you try to enable Detective, make sure that your account has been
  enrolled in Amazon GuardDuty for at least 48 hours. If you do not meet this
  requirement, you cannot enable Detective. If you do meet the GuardDuty
  prerequisite, then when you make the request to enable Detective, it checks
  whether your data volume is within the Detective quota. If it exceeds the
  quota, then you cannot enable Detective.

  The operation also enables Detective for the calling account in the
  currently selected Region. It returns the ARN of the new behavior graph.

  `CreateGraph` triggers a process to create the corresponding data tables
  for the new behavior graph.

  An account can only be the master account for one behavior graph within a
  Region. If the same account calls `CreateGraph` with the same master
  account, it always returns the same behavior graph ARN. It does not create
  a new behavior graph.
  """
  def create_graph(client, input, options \\ []) do
    path_ = "/graph"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Sends a request to invite the specified AWS accounts to be member accounts
  in the behavior graph. This operation can only be called by the master
  account for a behavior graph.

  `CreateMembers` verifies the accounts and then sends invitations to the
  verified accounts.

  The request provides the behavior graph ARN and the list of accounts to
  invite.

  The response separates the requested accounts into two lists:

  <ul> <li> The accounts that `CreateMembers` was able to start the
  verification for. This list includes member accounts that are being
  verified, that have passed verification and are being sent an invitation,
  and that have failed verification.

  </li> <li> The accounts that `CreateMembers` was unable to process. This
  list includes accounts that were already invited to be member accounts in
  the behavior graph.

  </li> </ul>
  """
  def create_members(client, input, options \\ []) do
    path_ = "/graph/members"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Disables the specified behavior graph and queues it to be deleted. This
  operation removes the graph from each member account's list of behavior
  graphs.

  `DeleteGraph` can only be called by the master account for a behavior
  graph.
  """
  def delete_graph(client, input, options \\ []) do
    path_ = "/graph/removal"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes one or more member accounts from the master account behavior graph.
  This operation can only be called by a Detective master account. That
  account cannot use `DeleteMembers` to delete their own account from the
  behavior graph. To disable a behavior graph, the master account uses the
  `DeleteGraph` API method.
  """
  def delete_members(client, input, options \\ []) do
    path_ = "/graph/members/removal"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Removes the member account from the specified behavior graph. This
  operation can only be called by a member account that has the `ENABLED`
  status.
  """
  def disassociate_membership(client, input, options \\ []) do
    path_ = "/membership/removal"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Returns the membership details for specified member accounts for a behavior
  graph.
  """
  def get_members(client, input, options \\ []) do
    path_ = "/graph/members/get"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Returns the list of behavior graphs that the calling account is a master
  of. This operation can only be called by a master account.

  Because an account can currently only be the master of one behavior graph
  within a Region, the results always contain a single graph.
  """
  def list_graphs(client, input, options \\ []) do
    path_ = "/graphs/list"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Retrieves the list of open and accepted behavior graph invitations for the
  member account. This operation can only be called by a member account.

  Open invitations are invitations that the member account has not responded
  to.

  The results do not include behavior graphs for which the member account
  declined the invitation. The results also do not include behavior graphs
  that the member account resigned from or was removed from.
  """
  def list_invitations(client, input, options \\ []) do
    path_ = "/invitations/list"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Retrieves the list of member accounts for a behavior graph. Does not return
  member accounts that were removed from the behavior graph.
  """
  def list_members(client, input, options \\ []) do
    path_ = "/graph/members/list"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Rejects an invitation to contribute the account data to a behavior graph.
  This operation must be called by a member account that has the `INVITED`
  status.
  """
  def reject_invitation(client, input, options \\ []) do
    path_ = "/invitation/removal"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Sends a request to enable data ingest for a member account that has a
  status of `ACCEPTED_BUT_DISABLED`.

  For valid member accounts, the status is updated as follows.

  <ul> <li> If Detective enabled the member account, then the new status is
  `ENABLED`.

  </li> <li> If Detective cannot enable the member account, the status
  remains `ACCEPTED_BUT_DISABLED`.

  </li> </ul>
  """
  def start_monitoring_member(client, input, options \\ []) do
    path_ = "/graph/member/monitoringstate"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, Poison.Parser.t(), Poison.Response.t()}
          | {:error, Poison.Parser.t()}
          | {:error, HTTPoison.Error.t()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "detective"}
    host = build_host("api.detective", client)
    url = host
    |> build_url(path, client)
    |> add_query(query)

    additional_headers = [{"Host", host}, {"Content-Type", "application/x-amz-json-1.1"}]
    headers = AWS.Request.add_headers(additional_headers, headers)

    payload = encode_payload(input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    perform_request(method, url, payload, headers, options, success_status_code)
  end

  defp perform_request(method, url, payload, headers, options, nil) do
    case HTTPoison.request(method, url, payload, headers, options) do
      {:ok, %HTTPoison.Response{status_code: 200, body: ""} = response} ->
        {:ok, response}

      {:ok, %HTTPoison.Response{status_code: status_code, body: body} = response}
      when status_code == 200 or status_code == 202 or status_code == 204 ->
        {:ok, Poison.Parser.parse!(body, %{}), response}

      {:ok, %HTTPoison.Response{body: body}} ->
        error = Poison.Parser.parse!(body, %{})
        {:error, error}

      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp perform_request(method, url, payload, headers, options, success_status_code) do
    case HTTPoison.request(method, url, payload, headers, options) do
      {:ok, %HTTPoison.Response{status_code: ^success_status_code, body: ""} = response} ->
        {:ok, %{}, response}

      {:ok, %HTTPoison.Response{status_code: ^success_status_code, body: body} = response} ->
        {:ok, Poison.Parser.parse!(body, %{}), response}

      {:ok, %HTTPoison.Response{body: body}} ->
        error = Poison.Parser.parse!(body, %{})
        {:error, error}

      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp build_host(_endpoint_prefix, %{region: "local"}) do
    "localhost"
  end
  defp build_host(endpoint_prefix, %{region: region, endpoint: endpoint}) do
    "#{endpoint_prefix}.#{region}.#{endpoint}"
  end

  defp build_url(host, path, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}#{path}"
  end

  defp add_query(url, []) do
    url
  end
  defp add_query(url, query) do
    querystring = AWS.Util.encode_query(query)
    "#{url}?#{querystring}"
  end

  defp encode_payload(input) do
    if input != nil, do: Poison.Encoder.encode(input, %{}), else: ""
  end
end
