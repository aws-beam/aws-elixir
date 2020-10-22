# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ManagedBlockchain do
  @moduledoc """
  <p/> Amazon Managed Blockchain is a fully managed service for creating and
  managing blockchain networks using open source frameworks. Blockchain
  allows you to build applications where multiple parties can securely and
  transparently run transactions and share data without the need for a
  trusted, central authority. Currently, Managed Blockchain supports the
  Hyperledger Fabric open source framework.
  """

  @doc """
  Creates a member within a Managed Blockchain network.
  """
  def create_member(client, network_id, input, options \\ []) do
    path_ = "/networks/#{URI.encode(network_id)}/members"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a new blockchain network using Amazon Managed Blockchain.
  """
  def create_network(client, input, options \\ []) do
    path_ = "/networks"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a peer node in a member.
  """
  def create_node(client, member_id, network_id, input, options \\ []) do
    path_ = "/networks/#{URI.encode(network_id)}/members/#{URI.encode(member_id)}/nodes"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a proposal for a change to the network that other members of the
  network can vote on, for example, a proposal to add a new member to the
  network. Any member can create a proposal.
  """
  def create_proposal(client, network_id, input, options \\ []) do
    path_ = "/networks/#{URI.encode(network_id)}/proposals"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes a member. Deleting a member removes the member and all associated
  resources from the network. `DeleteMember` can only be called for a
  specified `MemberId` if the principal performing the action is associated
  with the AWS account that owns the member. In all other cases, the
  `DeleteMember` action is carried out as the result of an approved proposal
  to remove a member. If `MemberId` is the last member in a network specified
  by the last AWS account, the network is deleted also.
  """
  def delete_member(client, member_id, network_id, input, options \\ []) do
    path_ = "/networks/#{URI.encode(network_id)}/members/#{URI.encode(member_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes a peer node from a member that your AWS account owns. All data on
  the node is lost and cannot be recovered.
  """
  def delete_node(client, member_id, network_id, node_id, input, options \\ []) do
    path_ = "/networks/#{URI.encode(network_id)}/members/#{URI.encode(member_id)}/nodes/#{URI.encode(node_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Returns detailed information about a member.
  """
  def get_member(client, member_id, network_id, options \\ []) do
    path_ = "/networks/#{URI.encode(network_id)}/members/#{URI.encode(member_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns detailed information about a network.
  """
  def get_network(client, network_id, options \\ []) do
    path_ = "/networks/#{URI.encode(network_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns detailed information about a peer node.
  """
  def get_node(client, member_id, network_id, node_id, options \\ []) do
    path_ = "/networks/#{URI.encode(network_id)}/members/#{URI.encode(member_id)}/nodes/#{URI.encode(node_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns detailed information about a proposal.
  """
  def get_proposal(client, network_id, proposal_id, options \\ []) do
    path_ = "/networks/#{URI.encode(network_id)}/proposals/#{URI.encode(proposal_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns a listing of all invitations for the current AWS account.
  """
  def list_invitations(client, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/invitations"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns a listing of the members in a network and properties of their
  configurations.
  """
  def list_members(client, network_id, is_owned \\ nil, max_results \\ nil, name \\ nil, next_token \\ nil, status \\ nil, options \\ []) do
    path_ = "/networks/#{URI.encode(network_id)}/members"
    headers = []
    query_ = []
    query_ = if !is_nil(status) do
      [{"status", status} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(name) do
      [{"name", name} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    query_ = if !is_nil(is_owned) do
      [{"isOwned", is_owned} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns information about the networks in which the current AWS account has
  members.
  """
  def list_networks(client, framework \\ nil, max_results \\ nil, name \\ nil, next_token \\ nil, status \\ nil, options \\ []) do
    path_ = "/networks"
    headers = []
    query_ = []
    query_ = if !is_nil(status) do
      [{"status", status} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(name) do
      [{"name", name} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    query_ = if !is_nil(framework) do
      [{"framework", framework} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns information about the nodes within a network.
  """
  def list_nodes(client, member_id, network_id, max_results \\ nil, next_token \\ nil, status \\ nil, options \\ []) do
    path_ = "/networks/#{URI.encode(network_id)}/members/#{URI.encode(member_id)}/nodes"
    headers = []
    query_ = []
    query_ = if !is_nil(status) do
      [{"status", status} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns the listing of votes for a specified proposal, including the value
  of each vote and the unique identifier of the member that cast the vote.
  """
  def list_proposal_votes(client, network_id, proposal_id, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/networks/#{URI.encode(network_id)}/proposals/#{URI.encode(proposal_id)}/votes"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns a listing of proposals for the network.
  """
  def list_proposals(client, network_id, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/networks/#{URI.encode(network_id)}/proposals"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Rejects an invitation to join a network. This action can be called by a
  principal in an AWS account that has received an invitation to create a
  member and join a network.
  """
  def reject_invitation(client, invitation_id, input, options \\ []) do
    path_ = "/invitations/#{URI.encode(invitation_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates a member configuration with new parameters.
  """
  def update_member(client, member_id, network_id, input, options \\ []) do
    path_ = "/networks/#{URI.encode(network_id)}/members/#{URI.encode(member_id)}"
    headers = []
    query_ = []
    request(client, :patch, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates a node configuration with new parameters.
  """
  def update_node(client, member_id, network_id, node_id, input, options \\ []) do
    path_ = "/networks/#{URI.encode(network_id)}/members/#{URI.encode(member_id)}/nodes/#{URI.encode(node_id)}"
    headers = []
    query_ = []
    request(client, :patch, path_, query_, headers, input, options, nil)
  end

  @doc """
  Casts a vote for a specified `ProposalId` on behalf of a member. The member
  to vote as, specified by `VoterMemberId`, must be in the same AWS account
  as the principal that calls the action.
  """
  def vote_on_proposal(client, network_id, proposal_id, input, options \\ []) do
    path_ = "/networks/#{URI.encode(network_id)}/proposals/#{URI.encode(proposal_id)}/votes"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "managedblockchain"}
    host = build_host("managedblockchain", client)
    url = host
    |> build_url(path, client)
    |> add_query(query)

    additional_headers = [{"Host", host}, {"Content-Type", "application/x-amz-json-1.1"}]
    headers = AWS.Request.add_headers(additional_headers, headers)

    payload = encode_payload(input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    AWS.HTTP.request(method, url, payload, headers, options, success_status_code)
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
    if input != nil, do: AWS.JSON.encode!(input), else: ""
  end
end
