# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ManagedBlockchain do
  @moduledoc """


  Amazon Managed Blockchain is a fully managed service for creating and managing
  blockchain networks using open-source frameworks.

  Blockchain allows you to build applications where multiple parties can securely
  and transparently run transactions and share data without the need for a
  trusted, central authority.

  Managed Blockchain supports the Hyperledger Fabric and Ethereum open-source
  frameworks. Because of fundamental differences between the frameworks, some API
  actions or data types may only apply in the context of one framework and not the
  other. For example, actions related to Hyperledger Fabric network members such
  as `CreateMember` and `DeleteMember` don't apply to Ethereum.

  The description for each action indicates the framework or frameworks to which
  it applies. Data types and properties that apply only in the context of a
  particular framework are similarly indicated.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
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
  Creates a new accessor for use with Amazon Managed Blockchain service that
  supports token based access.

  The accessor contains information required for token based access.
  """
  def create_accessor(%Client{} = client, input, options \\ []) do
    url_path = "/accessors"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Creates a member within a Managed Blockchain network.

  Applies only to Hyperledger Fabric.
  """
  def create_member(%Client{} = client, network_id, input, options \\ []) do
    url_path = "/networks/#{AWS.Util.encode_uri(network_id)}/members"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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

  Applies only to Hyperledger Fabric.
  """
  def create_network(%Client{} = client, input, options \\ []) do
    url_path = "/networks"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Creates a node on the specified blockchain network.

  Applies to Hyperledger Fabric and Ethereum.
  """
  def create_node(%Client{} = client, network_id, input, options \\ []) do
    url_path = "/networks/#{AWS.Util.encode_uri(network_id)}/nodes"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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

  Applies only to Hyperledger Fabric.
  """
  def create_proposal(%Client{} = client, network_id, input, options \\ []) do
    url_path = "/networks/#{AWS.Util.encode_uri(network_id)}/proposals"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Deletes an accessor that your Amazon Web Services account owns.

  An accessor object is a container that has the information required for token
  based access to your Ethereum nodes including, the `BILLING_TOKEN`. After an
  accessor is deleted, the status of the accessor changes from `AVAILABLE` to
  `PENDING_DELETION`. An accessor in the `PENDING_DELETION` state can’t be used
  for new WebSocket requests or HTTP requests. However, WebSocket connections that
  were initiated while the accessor was in the `AVAILABLE` state remain open until
  they expire (up to 2 hours).
  """
  def delete_accessor(%Client{} = client, accessor_id, input, options \\ []) do
    url_path = "/accessors/#{AWS.Util.encode_uri(accessor_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Deletes a member.

  Deleting a member removes the member and all associated resources from the
  network. `DeleteMember` can only be called for a specified `MemberId` if the
  principal performing the action is associated with the Amazon Web Services
  account that owns the member. In all other cases, the `DeleteMember` action is
  carried out as the result of an approved proposal to remove a member. If
  `MemberId` is the last member in a network specified by the last Amazon Web
  Services account, the network is deleted also.

  Applies only to Hyperledger Fabric.
  """
  def delete_member(%Client{} = client, member_id, network_id, input, options \\ []) do
    url_path =
      "/networks/#{AWS.Util.encode_uri(network_id)}/members/#{AWS.Util.encode_uri(member_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Deletes a node that your Amazon Web Services account owns.

  All data on the node is lost and cannot be recovered.

  Applies to Hyperledger Fabric and Ethereum.
  """
  def delete_node(%Client{} = client, network_id, node_id, input, options \\ []) do
    url_path =
      "/networks/#{AWS.Util.encode_uri(network_id)}/nodes/#{AWS.Util.encode_uri(node_id)}"

    headers = []

    {query_params, input} =
      [
        {"MemberId", "memberId"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Returns detailed information about an accessor.

  An accessor object is a container that has the information required for token
  based access to your Ethereum nodes.
  """
  def get_accessor(%Client{} = client, accessor_id, options \\ []) do
    url_path = "/accessors/#{AWS.Util.encode_uri(accessor_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns detailed information about a member.

  Applies only to Hyperledger Fabric.
  """
  def get_member(%Client{} = client, member_id, network_id, options \\ []) do
    url_path =
      "/networks/#{AWS.Util.encode_uri(network_id)}/members/#{AWS.Util.encode_uri(member_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns detailed information about a network.

  Applies to Hyperledger Fabric and Ethereum.
  """
  def get_network(%Client{} = client, network_id, options \\ []) do
    url_path = "/networks/#{AWS.Util.encode_uri(network_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns detailed information about a node.

  Applies to Hyperledger Fabric and Ethereum.
  """
  def get_node(%Client{} = client, network_id, node_id, member_id \\ nil, options \\ []) do
    url_path =
      "/networks/#{AWS.Util.encode_uri(network_id)}/nodes/#{AWS.Util.encode_uri(node_id)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(member_id) do
        [{"memberId", member_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns detailed information about a proposal.

  Applies only to Hyperledger Fabric.
  """
  def get_proposal(%Client{} = client, network_id, proposal_id, options \\ []) do
    url_path =
      "/networks/#{AWS.Util.encode_uri(network_id)}/proposals/#{AWS.Util.encode_uri(proposal_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns a list of the accessors and their properties.

  Accessor objects are containers that have the information required for token
  based access to your Ethereum nodes.
  """
  def list_accessors(
        %Client{} = client,
        max_results \\ nil,
        network_type \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/accessors"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(network_type) do
        [{"networkType", network_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns a list of all invitations for the current Amazon Web Services account.

  Applies only to Hyperledger Fabric.
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns a list of the members in a network and properties of their
  configurations.

  Applies only to Hyperledger Fabric.
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
    url_path = "/networks/#{AWS.Util.encode_uri(network_id)}/members"
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns information about the networks in which the current Amazon Web Services
  account participates.

  Applies to Hyperledger Fabric and Ethereum.
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns information about the nodes within a network.

  Applies to Hyperledger Fabric and Ethereum.
  """
  def list_nodes(
        %Client{} = client,
        network_id,
        max_results \\ nil,
        member_id \\ nil,
        next_token \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path = "/networks/#{AWS.Util.encode_uri(network_id)}/nodes"
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
      if !is_nil(member_id) do
        [{"memberId", member_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns the list of votes for a specified proposal, including the value of each
  vote and the unique identifier of the member that cast the vote.

  Applies only to Hyperledger Fabric.
  """
  def list_proposal_votes(
        %Client{} = client,
        network_id,
        proposal_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/networks/#{AWS.Util.encode_uri(network_id)}/proposals/#{AWS.Util.encode_uri(proposal_id)}/votes"

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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns a list of proposals for the network.

  Applies only to Hyperledger Fabric.
  """
  def list_proposals(
        %Client{} = client,
        network_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/networks/#{AWS.Util.encode_uri(network_id)}/proposals"
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns a list of tags for the specified resource.

  Each tag consists of a key and optional value.

  For more information about tags, see [Tagging Resources](https://docs.aws.amazon.com/managed-blockchain/latest/ethereum-dev/tagging-resources.html)
  in the *Amazon Managed Blockchain Ethereum Developer Guide*, or [Tagging Resources](https://docs.aws.amazon.com/managed-blockchain/latest/hyperledger-fabric-dev/tagging-resources.html)
  in the *Amazon Managed Blockchain Hyperledger Fabric Developer Guide*.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Rejects an invitation to join a network.

  This action can be called by a principal in an Amazon Web Services account that
  has received an invitation to create a member and join a network.

  Applies only to Hyperledger Fabric.
  """
  def reject_invitation(%Client{} = client, invitation_id, input, options \\ []) do
    url_path = "/invitations/#{AWS.Util.encode_uri(invitation_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Adds or overwrites the specified tags for the specified Amazon Managed
  Blockchain resource.

  Each tag consists of a key and optional value.

  When you specify a tag key that already exists, the tag value is overwritten
  with the new value. Use `UntagResource` to remove tag keys.

  A resource can have up to 50 tags. If you try to create more than 50 tags for a
  resource, your request fails and returns an error.

  For more information about tags, see [Tagging Resources](https://docs.aws.amazon.com/managed-blockchain/latest/ethereum-dev/tagging-resources.html)
  in the *Amazon Managed Blockchain Ethereum Developer Guide*, or [Tagging Resources](https://docs.aws.amazon.com/managed-blockchain/latest/hyperledger-fabric-dev/tagging-resources.html)
  in the *Amazon Managed Blockchain Hyperledger Fabric Developer Guide*.
  """
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Removes the specified tags from the Amazon Managed Blockchain resource.

  For more information about tags, see [Tagging Resources](https://docs.aws.amazon.com/managed-blockchain/latest/ethereum-dev/tagging-resources.html)
  in the *Amazon Managed Blockchain Ethereum Developer Guide*, or [Tagging Resources](https://docs.aws.amazon.com/managed-blockchain/latest/hyperledger-fabric-dev/tagging-resources.html)
  in the *Amazon Managed Blockchain Hyperledger Fabric Developer Guide*.
  """
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

    {query_params, input} =
      [
        {"TagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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

  Applies only to Hyperledger Fabric.
  """
  def update_member(%Client{} = client, member_id, network_id, input, options \\ []) do
    url_path =
      "/networks/#{AWS.Util.encode_uri(network_id)}/members/#{AWS.Util.encode_uri(member_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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

  Applies only to Hyperledger Fabric.
  """
  def update_node(%Client{} = client, network_id, node_id, input, options \\ []) do
    url_path =
      "/networks/#{AWS.Util.encode_uri(network_id)}/nodes/#{AWS.Util.encode_uri(node_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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

  The member to vote as, specified by `VoterMemberId`, must be in the same Amazon
  Web Services account as the principal that calls the action.

  Applies only to Hyperledger Fabric.
  """
  def vote_on_proposal(%Client{} = client, network_id, proposal_id, input, options \\ []) do
    url_path =
      "/networks/#{AWS.Util.encode_uri(network_id)}/proposals/#{AWS.Util.encode_uri(proposal_id)}/votes"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
