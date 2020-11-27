# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ManagedBlockchain do
  @moduledoc """


  Amazon Managed Blockchain is a fully managed service for creating and managing
  blockchain networks using open source frameworks.

  Blockchain allows you to build applications where multiple parties can securely
  and transparently run transactions and share data without the need for a
  trusted, central authority. Currently, Managed Blockchain supports the
  Hyperledger Fabric open source framework.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2018-09-24",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "managedblockchain",
      global?: false,
      protocol: "rest-json",
      service_id: "ManagedBlockchain",
      signature_version: "v4",
      signing_name: "managedblockchain",
      target_prefix: nil
    }
  end

  @doc """
  Creates a member within a Managed Blockchain network.
  """
  def create_member(%Client{} = client, network_id, input, options \\ []) do
    url_path = "/networks/#{URI.encode(network_id)}/members"
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
  Creates a new blockchain network using Amazon Managed Blockchain.
  """
  def create_network(%Client{} = client, input, options \\ []) do
    url_path = "/networks"
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
  Creates a peer node in a member.
  """
  def create_node(%Client{} = client, member_id, network_id, input, options \\ []) do
    url_path = "/networks/#{URI.encode(network_id)}/members/#{URI.encode(member_id)}/nodes"
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
  Creates a proposal for a change to the network that other members of the network
  can vote on, for example, a proposal to add a new member to the network.

  Any member can create a proposal.
  """
  def create_proposal(%Client{} = client, network_id, input, options \\ []) do
    url_path = "/networks/#{URI.encode(network_id)}/proposals"
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
  Deletes a member.

  Deleting a member removes the member and all associated resources from the
  network. `DeleteMember` can only be called for a specified `MemberId` if the
  principal performing the action is associated with the AWS account that owns the
  member. In all other cases, the `DeleteMember` action is carried out as the
  result of an approved proposal to remove a member. If `MemberId` is the last
  member in a network specified by the last AWS account, the network is deleted
  also.
  """
  def delete_member(%Client{} = client, member_id, network_id, input, options \\ []) do
    url_path = "/networks/#{URI.encode(network_id)}/members/#{URI.encode(member_id)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Deletes a peer node from a member that your AWS account owns.

  All data on the node is lost and cannot be recovered.
  """
  def delete_node(%Client{} = client, member_id, network_id, node_id, input, options \\ []) do
    url_path =
      "/networks/#{URI.encode(network_id)}/members/#{URI.encode(member_id)}/nodes/#{
        URI.encode(node_id)
      }"

    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Returns detailed information about a member.
  """
  def get_member(%Client{} = client, member_id, network_id, options \\ []) do
    url_path = "/networks/#{URI.encode(network_id)}/members/#{URI.encode(member_id)}"
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
      nil
    )
  end

  @doc """
  Returns detailed information about a network.
  """
  def get_network(%Client{} = client, network_id, options \\ []) do
    url_path = "/networks/#{URI.encode(network_id)}"
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
      nil
    )
  end

  @doc """
  Returns detailed information about a peer node.
  """
  def get_node(%Client{} = client, member_id, network_id, node_id, options \\ []) do
    url_path =
      "/networks/#{URI.encode(network_id)}/members/#{URI.encode(member_id)}/nodes/#{
        URI.encode(node_id)
      }"

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
      nil
    )
  end

  @doc """
  Returns detailed information about a proposal.
  """
  def get_proposal(%Client{} = client, network_id, proposal_id, options \\ []) do
    url_path = "/networks/#{URI.encode(network_id)}/proposals/#{URI.encode(proposal_id)}"
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
      nil
    )
  end

  @doc """
  Returns a listing of all invitations for the current AWS account.
  """
  def list_invitations(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/invitations"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Returns a listing of the members in a network and properties of their
  configurations.
  """
  def list_members(
        %Client{} = client,
        network_id,
        is_owned \\ nil,
        max_results \\ nil,
        name \\ nil,
        next_token \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path = "/networks/#{URI.encode(network_id)}/members"
    headers = []
    query_params = []

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(name) do
        [{"name", name} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(is_owned) do
        [{"isOwned", is_owned} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Returns information about the networks in which the current AWS account has
  members.
  """
  def list_networks(
        %Client{} = client,
        framework \\ nil,
        max_results \\ nil,
        name \\ nil,
        next_token \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path = "/networks"
    headers = []
    query_params = []

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(name) do
        [{"name", name} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(framework) do
        [{"framework", framework} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Returns information about the nodes within a network.
  """
  def list_nodes(
        %Client{} = client,
        member_id,
        network_id,
        max_results \\ nil,
        next_token \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path = "/networks/#{URI.encode(network_id)}/members/#{URI.encode(member_id)}/nodes"
    headers = []
    query_params = []

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Returns the listing of votes for a specified proposal, including the value of
  each vote and the unique identifier of the member that cast the vote.
  """
  def list_proposal_votes(
        %Client{} = client,
        network_id,
        proposal_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/networks/#{URI.encode(network_id)}/proposals/#{URI.encode(proposal_id)}/votes"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Returns a listing of proposals for the network.
  """
  def list_proposals(
        %Client{} = client,
        network_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/networks/#{URI.encode(network_id)}/proposals"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Rejects an invitation to join a network.

  This action can be called by a principal in an AWS account that has received an
  invitation to create a member and join a network.
  """
  def reject_invitation(%Client{} = client, invitation_id, input, options \\ []) do
    url_path = "/invitations/#{URI.encode(invitation_id)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates a member configuration with new parameters.
  """
  def update_member(%Client{} = client, member_id, network_id, input, options \\ []) do
    url_path = "/networks/#{URI.encode(network_id)}/members/#{URI.encode(member_id)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates a node configuration with new parameters.
  """
  def update_node(%Client{} = client, member_id, network_id, node_id, input, options \\ []) do
    url_path =
      "/networks/#{URI.encode(network_id)}/members/#{URI.encode(member_id)}/nodes/#{
        URI.encode(node_id)
      }"

    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Casts a vote for a specified `ProposalId` on behalf of a member.

  The member to vote as, specified by `VoterMemberId`, must be in the same AWS
  account as the principal that calls the action.
  """
  def vote_on_proposal(%Client{} = client, network_id, proposal_id, input, options \\ []) do
    url_path = "/networks/#{URI.encode(network_id)}/proposals/#{URI.encode(proposal_id)}/votes"
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