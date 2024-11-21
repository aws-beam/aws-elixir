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

  @typedoc """

  ## Example:

      voting_policy() :: %{
        "ApprovalThresholdPolicy" => approval_threshold_policy()
      }

  """
  @type voting_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      reject_invitation_output() :: %{}

  """
  @type reject_invitation_output() :: %{}

  @typedoc """

  ## Example:

      create_proposal_output() :: %{
        "ProposalId" => String.t()
      }

  """
  @type create_proposal_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_node_output() :: %{}

  """
  @type update_node_output() :: %{}

  @typedoc """

  ## Example:

      node_ethereum_attributes() :: %{
        "HttpEndpoint" => String.t(),
        "WebSocketEndpoint" => String.t()
      }

  """
  @type node_ethereum_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("Tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      accessor() :: %{
        "Arn" => String.t(),
        "BillingToken" => String.t(),
        "CreationDate" => non_neg_integer(),
        "Id" => String.t(),
        "NetworkType" => list(any()),
        "Status" => list(any()),
        "Tags" => map(),
        "Type" => list(any())
      }

  """
  @type accessor() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_proposal_votes_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_proposal_votes_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      network_fabric_attributes() :: %{
        "Edition" => list(any()),
        "OrderingServiceEndpoint" => String.t()
      }

  """
  @type network_fabric_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_proposals_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_proposals_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      vote_on_proposal_output() :: %{}

  """
  @type vote_on_proposal_output() :: %{}

  @typedoc """

  ## Example:

      create_member_input() :: %{
        required("ClientRequestToken") => String.t(),
        required("InvitationId") => String.t(),
        required("MemberConfiguration") => member_configuration()
      }

  """
  @type create_member_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_members_output() :: %{
        "Members" => list(member_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_members_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      proposal_actions() :: %{
        "Invitations" => list(invite_action()()),
        "Removals" => list(remove_action()())
      }

  """
  @type proposal_actions() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      network_framework_configuration() :: %{
        "Fabric" => network_fabric_configuration()
      }

  """
  @type network_framework_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      get_proposal_output() :: %{
        "Proposal" => proposal()
      }

  """
  @type get_proposal_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      approval_threshold_policy() :: %{
        "ProposalDurationInHours" => integer(),
        "ThresholdComparator" => list(any()),
        "ThresholdPercentage" => integer()
      }

  """
  @type approval_threshold_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invitation() :: %{
        "Arn" => String.t(),
        "CreationDate" => non_neg_integer(),
        "ExpirationDate" => non_neg_integer(),
        "InvitationId" => String.t(),
        "NetworkSummary" => network_summary(),
        "Status" => list(any())
      }

  """
  @type invitation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_accessor_output() :: %{
        "Accessor" => accessor()
      }

  """
  @type get_accessor_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_accessor_input() :: %{}

  """
  @type get_accessor_input() :: %{}

  @typedoc """

  ## Example:

      list_accessors_input() :: %{
        optional("MaxResults") => integer(),
        optional("NetworkType") => list(any()),
        optional("NextToken") => String.t()
      }

  """
  @type list_accessors_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      node_fabric_log_publishing_configuration() :: %{
        "ChaincodeLogs" => log_configurations(),
        "PeerLogs" => log_configurations()
      }

  """
  @type node_fabric_log_publishing_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      node_fabric_attributes() :: %{
        "PeerEndpoint" => String.t(),
        "PeerEventEndpoint" => String.t()
      }

  """
  @type node_fabric_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_service_error_exception() :: %{}

  """
  @type internal_service_error_exception() :: %{}

  @typedoc """

  ## Example:

      network_fabric_configuration() :: %{
        "Edition" => list(any())
      }

  """
  @type network_fabric_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_networks_input() :: %{
        optional("Framework") => list(any()),
        optional("MaxResults") => integer(),
        optional("Name") => String.t(),
        optional("NextToken") => String.t(),
        optional("Status") => list(any())
      }

  """
  @type list_networks_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      member_configuration() :: %{
        "Description" => String.t(),
        "FrameworkConfiguration" => member_framework_configuration(),
        "KmsKeyArn" => String.t(),
        "LogPublishingConfiguration" => member_log_publishing_configuration(),
        "Name" => String.t(),
        "Tags" => map()
      }

  """
  @type member_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("TagKeys") => list(String.t()())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      member_fabric_log_publishing_configuration() :: %{
        "CaLogs" => log_configurations()
      }

  """
  @type member_fabric_log_publishing_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      reject_invitation_input() :: %{}

  """
  @type reject_invitation_input() :: %{}

  @typedoc """

  ## Example:

      list_nodes_input() :: %{
        optional("MaxResults") => integer(),
        optional("MemberId") => String.t(),
        optional("NextToken") => String.t(),
        optional("Status") => list(any())
      }

  """
  @type list_nodes_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      member_framework_attributes() :: %{
        "Fabric" => member_fabric_attributes()
      }

  """
  @type member_framework_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_network_input() :: %{
        optional("Description") => String.t(),
        optional("FrameworkConfiguration") => network_framework_configuration(),
        optional("Tags") => map(),
        required("ClientRequestToken") => String.t(),
        required("Framework") => list(any()),
        required("FrameworkVersion") => String.t(),
        required("MemberConfiguration") => member_configuration(),
        required("Name") => String.t(),
        required("VotingPolicy") => voting_policy()
      }

  """
  @type create_network_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_member_output() :: %{}

  """
  @type update_member_output() :: %{}

  @typedoc """

  ## Example:

      create_proposal_input() :: %{
        optional("Description") => String.t(),
        optional("Tags") => map(),
        required("Actions") => proposal_actions(),
        required("ClientRequestToken") => String.t(),
        required("MemberId") => String.t()
      }

  """
  @type create_proposal_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_member_output() :: %{}

  """
  @type delete_member_output() :: %{}

  @typedoc """

  ## Example:

      list_proposal_votes_output() :: %{
        "NextToken" => String.t(),
        "ProposalVotes" => list(vote_summary()())
      }

  """
  @type list_proposal_votes_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_network_output() :: %{
        "Network" => network()
      }

  """
  @type get_network_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_node_input() :: %{
        optional("LogPublishingConfiguration") => node_log_publishing_configuration(),
        optional("MemberId") => String.t()
      }

  """
  @type update_node_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_member_input() :: %{}

  """
  @type delete_member_input() :: %{}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Message" => String.t(),
        "ResourceName" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_networks_output() :: %{
        "Networks" => list(network_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_networks_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_member_input() :: %{
        optional("LogPublishingConfiguration") => member_log_publishing_configuration()
      }

  """
  @type update_member_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      managedblockchain_node() :: %{
        "Arn" => String.t(),
        "AvailabilityZone" => String.t(),
        "CreationDate" => non_neg_integer(),
        "FrameworkAttributes" => node_framework_attributes(),
        "Id" => String.t(),
        "InstanceType" => String.t(),
        "KmsKeyArn" => String.t(),
        "LogPublishingConfiguration" => node_log_publishing_configuration(),
        "MemberId" => String.t(),
        "NetworkId" => String.t(),
        "StateDB" => list(any()),
        "Status" => list(any()),
        "Tags" => map()
      }

  """
  @type managedblockchain_node() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_request_exception() :: %{
        "Message" => String.t()
      }

  """
  @type invalid_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      node_log_publishing_configuration() :: %{
        "Fabric" => node_fabric_log_publishing_configuration()
      }

  """
  @type node_log_publishing_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invite_action() :: %{
        "Principal" => String.t()
      }

  """
  @type invite_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_limit_exceeded_exception() :: %{
        "Message" => String.t()
      }

  """
  @type resource_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_accessor_input() :: %{}

  """
  @type delete_accessor_input() :: %{}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "Tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_member_output() :: %{
        "Member" => member()
      }

  """
  @type get_member_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      member_fabric_configuration() :: %{
        "AdminPassword" => String.t(),
        "AdminUsername" => String.t()
      }

  """
  @type member_fabric_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_members_input() :: %{
        optional("IsOwned") => boolean(),
        optional("MaxResults") => integer(),
        optional("Name") => String.t(),
        optional("NextToken") => String.t(),
        optional("Status") => list(any())
      }

  """
  @type list_members_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      vote_on_proposal_input() :: %{
        required("Vote") => list(any()),
        required("VoterMemberId") => String.t()
      }

  """
  @type vote_on_proposal_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_proposal_input() :: %{}

  """
  @type get_proposal_input() :: %{}

  @typedoc """

  ## Example:

      create_accessor_output() :: %{
        "AccessorId" => String.t(),
        "BillingToken" => String.t(),
        "NetworkType" => list(any())
      }

  """
  @type create_accessor_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      accessor_summary() :: %{
        "Arn" => String.t(),
        "CreationDate" => non_neg_integer(),
        "Id" => String.t(),
        "NetworkType" => list(any()),
        "Status" => list(any()),
        "Type" => list(any())
      }

  """
  @type accessor_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      proposal() :: %{
        "Actions" => proposal_actions(),
        "Arn" => String.t(),
        "CreationDate" => non_neg_integer(),
        "Description" => String.t(),
        "ExpirationDate" => non_neg_integer(),
        "NetworkId" => String.t(),
        "NoVoteCount" => integer(),
        "OutstandingVoteCount" => integer(),
        "ProposalId" => String.t(),
        "ProposedByMemberId" => String.t(),
        "ProposedByMemberName" => String.t(),
        "Status" => list(any()),
        "Tags" => map(),
        "YesVoteCount" => integer()
      }

  """
  @type proposal() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_node_input() :: %{
        optional("MemberId") => String.t()
      }

  """
  @type get_node_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "Message" => String.t()
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      network_framework_attributes() :: %{
        "Ethereum" => network_ethereum_attributes(),
        "Fabric" => network_fabric_attributes()
      }

  """
  @type network_framework_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      remove_action() :: %{
        "MemberId" => String.t()
      }

  """
  @type remove_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      network() :: %{
        "Arn" => String.t(),
        "CreationDate" => non_neg_integer(),
        "Description" => String.t(),
        "Framework" => list(any()),
        "FrameworkAttributes" => network_framework_attributes(),
        "FrameworkVersion" => String.t(),
        "Id" => String.t(),
        "Name" => String.t(),
        "Status" => list(any()),
        "Tags" => map(),
        "VotingPolicy" => voting_policy(),
        "VpcEndpointServiceName" => String.t()
      }

  """
  @type network() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      proposal_summary() :: %{
        "Arn" => String.t(),
        "CreationDate" => non_neg_integer(),
        "Description" => String.t(),
        "ExpirationDate" => non_neg_integer(),
        "ProposalId" => String.t(),
        "ProposedByMemberId" => String.t(),
        "ProposedByMemberName" => String.t(),
        "Status" => list(any())
      }

  """
  @type proposal_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      node_summary() :: %{
        "Arn" => String.t(),
        "AvailabilityZone" => String.t(),
        "CreationDate" => non_neg_integer(),
        "Id" => String.t(),
        "InstanceType" => String.t(),
        "Status" => list(any())
      }

  """
  @type node_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{}

  """
  @type throttling_exception() :: %{}

  @typedoc """

  ## Example:

      delete_node_input() :: %{
        optional("MemberId") => String.t()
      }

  """
  @type delete_node_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_accessor_input() :: %{
        optional("NetworkType") => list(any()),
        optional("Tags") => map(),
        required("AccessorType") => list(any()),
        required("ClientRequestToken") => String.t()
      }

  """
  @type create_accessor_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_network_input() :: %{}

  """
  @type get_network_input() :: %{}

  @typedoc """

  ## Example:

      list_invitations_output() :: %{
        "Invitations" => list(invitation()()),
        "NextToken" => String.t()
      }

  """
  @type list_invitations_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_accessor_output() :: %{}

  """
  @type delete_accessor_output() :: %{}

  @typedoc """

  ## Example:

      network_ethereum_attributes() :: %{
        "ChainId" => String.t()
      }

  """
  @type network_ethereum_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      member() :: %{
        "Arn" => String.t(),
        "CreationDate" => non_neg_integer(),
        "Description" => String.t(),
        "FrameworkAttributes" => member_framework_attributes(),
        "Id" => String.t(),
        "KmsKeyArn" => String.t(),
        "LogPublishingConfiguration" => member_log_publishing_configuration(),
        "Name" => String.t(),
        "NetworkId" => String.t(),
        "Status" => list(any()),
        "Tags" => map()
      }

  """
  @type member() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_node_output() :: %{
        "NodeId" => String.t()
      }

  """
  @type create_node_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      network_summary() :: %{
        "Arn" => String.t(),
        "CreationDate" => non_neg_integer(),
        "Description" => String.t(),
        "Framework" => list(any()),
        "FrameworkVersion" => String.t(),
        "Id" => String.t(),
        "Name" => String.t(),
        "Status" => list(any())
      }

  """
  @type network_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      member_summary() :: %{
        "Arn" => String.t(),
        "CreationDate" => non_neg_integer(),
        "Description" => String.t(),
        "Id" => String.t(),
        "IsOwned" => boolean(),
        "Name" => String.t(),
        "Status" => list(any())
      }

  """
  @type member_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      node_configuration() :: %{
        "AvailabilityZone" => String.t(),
        "InstanceType" => String.t(),
        "LogPublishingConfiguration" => node_log_publishing_configuration(),
        "StateDB" => list(any())
      }

  """
  @type node_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_member_input() :: %{}

  """
  @type get_member_input() :: %{}

  @typedoc """

  ## Example:

      member_fabric_attributes() :: %{
        "AdminUsername" => String.t(),
        "CaEndpoint" => String.t()
      }

  """
  @type member_fabric_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      log_configurations() :: %{
        "Cloudwatch" => log_configuration()
      }

  """
  @type log_configurations() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_invitations_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_invitations_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_already_exists_exception() :: %{
        "Message" => String.t()
      }

  """
  @type resource_already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_node_input() :: %{
        optional("MemberId") => String.t(),
        optional("Tags") => map(),
        required("ClientRequestToken") => String.t(),
        required("NodeConfiguration") => node_configuration()
      }

  """
  @type create_node_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      log_configuration() :: %{
        "Enabled" => boolean()
      }

  """
  @type log_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      illegal_action_exception() :: %{
        "Message" => String.t()
      }

  """
  @type illegal_action_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      member_log_publishing_configuration() :: %{
        "Fabric" => member_fabric_log_publishing_configuration()
      }

  """
  @type member_log_publishing_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_nodes_output() :: %{
        "NextToken" => String.t(),
        "Nodes" => list(node_summary()())
      }

  """
  @type list_nodes_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_ready_exception() :: %{
        "Message" => String.t()
      }

  """
  @type resource_not_ready_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_member_output() :: %{
        "MemberId" => String.t()
      }

  """
  @type create_member_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_node_output() :: %{}

  """
  @type delete_node_output() :: %{}

  @typedoc """

  ## Example:

      list_accessors_output() :: %{
        "Accessors" => list(accessor_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_accessors_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      node_framework_attributes() :: %{
        "Ethereum" => node_ethereum_attributes(),
        "Fabric" => node_fabric_attributes()
      }

  """
  @type node_framework_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_tags_exception() :: %{
        "Message" => String.t(),
        "ResourceName" => String.t()
      }

  """
  @type too_many_tags_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_network_output() :: %{
        "MemberId" => String.t(),
        "NetworkId" => String.t()
      }

  """
  @type create_network_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_proposals_output() :: %{
        "NextToken" => String.t(),
        "Proposals" => list(proposal_summary()())
      }

  """
  @type list_proposals_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_node_output() :: %{
        "Node" => managedblockchain_node()
      }

  """
  @type get_node_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      member_framework_configuration() :: %{
        "Fabric" => member_fabric_configuration()
      }

  """
  @type member_framework_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      vote_summary() :: %{
        "MemberId" => String.t(),
        "MemberName" => String.t(),
        "Vote" => list(any())
      }

  """
  @type vote_summary() :: %{String.t() => any()}

  @type create_accessor_errors() ::
          too_many_tags_exception()
          | resource_already_exists_exception()
          | throttling_exception()
          | access_denied_exception()
          | resource_limit_exceeded_exception()
          | invalid_request_exception()
          | internal_service_error_exception()

  @type create_member_errors() ::
          too_many_tags_exception()
          | resource_not_ready_exception()
          | resource_already_exists_exception()
          | throttling_exception()
          | access_denied_exception()
          | resource_limit_exceeded_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_error_exception()

  @type create_network_errors() ::
          too_many_tags_exception()
          | resource_already_exists_exception()
          | throttling_exception()
          | access_denied_exception()
          | resource_limit_exceeded_exception()
          | invalid_request_exception()
          | internal_service_error_exception()

  @type create_node_errors() ::
          too_many_tags_exception()
          | resource_not_ready_exception()
          | resource_already_exists_exception()
          | throttling_exception()
          | access_denied_exception()
          | resource_limit_exceeded_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_error_exception()

  @type create_proposal_errors() ::
          too_many_tags_exception()
          | resource_not_ready_exception()
          | throttling_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_error_exception()

  @type delete_accessor_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_error_exception()

  @type delete_member_errors() ::
          resource_not_ready_exception()
          | throttling_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_error_exception()

  @type delete_node_errors() ::
          resource_not_ready_exception()
          | throttling_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_error_exception()

  @type get_accessor_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_error_exception()

  @type get_member_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_error_exception()

  @type get_network_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_error_exception()

  @type get_node_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_error_exception()

  @type get_proposal_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_error_exception()

  @type list_accessors_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | internal_service_error_exception()

  @type list_invitations_errors() ::
          throttling_exception()
          | access_denied_exception()
          | resource_limit_exceeded_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_error_exception()

  @type list_members_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | internal_service_error_exception()

  @type list_networks_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | internal_service_error_exception()

  @type list_nodes_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | internal_service_error_exception()

  @type list_proposal_votes_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | internal_service_error_exception()

  @type list_proposals_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_error_exception()

  @type list_tags_for_resource_errors() ::
          resource_not_ready_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_error_exception()

  @type reject_invitation_errors() ::
          illegal_action_exception()
          | throttling_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_error_exception()

  @type tag_resource_errors() ::
          too_many_tags_exception()
          | resource_not_ready_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_error_exception()

  @type untag_resource_errors() ::
          resource_not_ready_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_error_exception()

  @type update_member_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_error_exception()

  @type update_node_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_error_exception()

  @type vote_on_proposal_errors() ::
          illegal_action_exception()
          | throttling_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_error_exception()

  def metadata do
    %{
      api_version: "2018-09-24",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "managedblockchain",
      global?: false,
      hostname: nil,
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
  @spec create_accessor(map(), create_accessor_input(), list()) ::
          {:ok, create_accessor_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_accessor_errors()}
  def create_accessor(%Client{} = client, input, options \\ []) do
    url_path = "/accessors"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a member within a Managed Blockchain network.

  Applies only to Hyperledger Fabric.
  """
  @spec create_member(map(), String.t(), create_member_input(), list()) ::
          {:ok, create_member_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_member_errors()}
  def create_member(%Client{} = client, network_id, input, options \\ []) do
    url_path = "/networks/#{AWS.Util.encode_uri(network_id)}/members"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a new blockchain network using Amazon Managed Blockchain.

  Applies only to Hyperledger Fabric.
  """
  @spec create_network(map(), create_network_input(), list()) ::
          {:ok, create_network_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_network_errors()}
  def create_network(%Client{} = client, input, options \\ []) do
    url_path = "/networks"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a node on the specified blockchain network.

  Applies to Hyperledger Fabric and Ethereum.
  """
  @spec create_node(map(), String.t(), create_node_input(), list()) ::
          {:ok, create_node_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_node_errors()}
  def create_node(%Client{} = client, network_id, input, options \\ []) do
    url_path = "/networks/#{AWS.Util.encode_uri(network_id)}/nodes"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a proposal for a change to the network that other members of the network
  can vote on, for example, a proposal to add a new member to the network.

  Any member can create a proposal.

  Applies only to Hyperledger Fabric.
  """
  @spec create_proposal(map(), String.t(), create_proposal_input(), list()) ::
          {:ok, create_proposal_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_proposal_errors()}
  def create_proposal(%Client{} = client, network_id, input, options \\ []) do
    url_path = "/networks/#{AWS.Util.encode_uri(network_id)}/proposals"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes an accessor that your Amazon Web Services account owns.

  An accessor object is a container that has the
  information required for token based access to your Ethereum nodes including,
  the
  `BILLING_TOKEN`. After an accessor is deleted, the status of the accessor
  changes
  from `AVAILABLE` to `PENDING_DELETION`. An accessor in the
  `PENDING_DELETION` state can’t be used for new WebSocket requests or
  HTTP requests. However, WebSocket connections that were initiated while the
  accessor was in the
  `AVAILABLE` state remain open until they expire (up to 2 hours).
  """
  @spec delete_accessor(map(), String.t(), delete_accessor_input(), list()) ::
          {:ok, delete_accessor_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_accessor_errors()}
  def delete_accessor(%Client{} = client, accessor_id, input, options \\ []) do
    url_path = "/accessors/#{AWS.Util.encode_uri(accessor_id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
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
  @spec delete_member(map(), String.t(), String.t(), delete_member_input(), list()) ::
          {:ok, delete_member_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_member_errors()}
  def delete_member(%Client{} = client, member_id, network_id, input, options \\ []) do
    url_path =
      "/networks/#{AWS.Util.encode_uri(network_id)}/members/#{AWS.Util.encode_uri(member_id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes a node that your Amazon Web Services account owns.

  All data on the node is lost and cannot be recovered.

  Applies to Hyperledger Fabric and Ethereum.
  """
  @spec delete_node(map(), String.t(), String.t(), delete_node_input(), list()) ::
          {:ok, delete_node_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_node_errors()}
  def delete_node(%Client{} = client, network_id, node_id, input, options \\ []) do
    url_path =
      "/networks/#{AWS.Util.encode_uri(network_id)}/nodes/#{AWS.Util.encode_uri(node_id)}"

    headers = []
    custom_headers = []

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
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Returns detailed information about an accessor.

  An accessor object is a container that has the
  information required for token based access to your Ethereum nodes.
  """
  @spec get_accessor(map(), String.t(), list()) ::
          {:ok, get_accessor_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_accessor_errors()}
  def get_accessor(%Client{} = client, accessor_id, options \\ []) do
    url_path = "/accessors/#{AWS.Util.encode_uri(accessor_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns detailed information about a member.

  Applies only to Hyperledger Fabric.
  """
  @spec get_member(map(), String.t(), String.t(), list()) ::
          {:ok, get_member_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_member_errors()}
  def get_member(%Client{} = client, member_id, network_id, options \\ []) do
    url_path =
      "/networks/#{AWS.Util.encode_uri(network_id)}/members/#{AWS.Util.encode_uri(member_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns detailed information about a network.

  Applies to Hyperledger Fabric and Ethereum.
  """
  @spec get_network(map(), String.t(), list()) ::
          {:ok, get_network_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_network_errors()}
  def get_network(%Client{} = client, network_id, options \\ []) do
    url_path = "/networks/#{AWS.Util.encode_uri(network_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns detailed information about a node.

  Applies to Hyperledger Fabric and Ethereum.
  """
  @spec get_node(map(), String.t(), String.t(), String.t() | nil, list()) ::
          {:ok, get_node_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_node_errors()}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns detailed information about a proposal.

  Applies only to Hyperledger Fabric.
  """
  @spec get_proposal(map(), String.t(), String.t(), list()) ::
          {:ok, get_proposal_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_proposal_errors()}
  def get_proposal(%Client{} = client, network_id, proposal_id, options \\ []) do
    url_path =
      "/networks/#{AWS.Util.encode_uri(network_id)}/proposals/#{AWS.Util.encode_uri(proposal_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of the accessors and their properties.

  Accessor objects are containers that have the
  information required for token based access to your Ethereum nodes.
  """
  @spec list_accessors(map(), String.t() | nil, String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_accessors_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_accessors_errors()}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of all invitations for the current Amazon Web Services account.

  Applies only to Hyperledger Fabric.
  """
  @spec list_invitations(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_invitations_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_invitations_errors()}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of the members in a network and properties of their
  configurations.

  Applies only to Hyperledger Fabric.
  """
  @spec list_members(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_members_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_members_errors()}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about the networks in which the current Amazon Web Services
  account participates.

  Applies to Hyperledger Fabric and Ethereum.
  """
  @spec list_networks(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_networks_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_networks_errors()}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about the nodes within a network.

  Applies to Hyperledger Fabric and Ethereum.
  """
  @spec list_nodes(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_nodes_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_nodes_errors()}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the list of votes for a specified proposal, including the value of each
  vote and the unique identifier of the member that cast the vote.

  Applies only to Hyperledger Fabric.
  """
  @spec list_proposal_votes(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_proposal_votes_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_proposal_votes_errors()}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of proposals for the network.

  Applies only to Hyperledger Fabric.
  """
  @spec list_proposals(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_proposals_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_proposals_errors()}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of tags for the specified resource.

  Each tag consists of a key and optional value.

  For more information about tags, see [Tagging Resources](https://docs.aws.amazon.com/managed-blockchain/latest/ethereum-dev/tagging-resources.html)
  in the *Amazon Managed Blockchain Ethereum Developer Guide*, or [Tagging Resources](https://docs.aws.amazon.com/managed-blockchain/latest/hyperledger-fabric-dev/tagging-resources.html)
  in the *Amazon Managed Blockchain Hyperledger Fabric Developer Guide*.
  """
  @spec list_tags_for_resource(map(), String.t(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Rejects an invitation to join a network.

  This action can be called by a principal in an Amazon Web Services account that
  has received an invitation to create a member and join a network.

  Applies only to Hyperledger Fabric.
  """
  @spec reject_invitation(map(), String.t(), reject_invitation_input(), list()) ::
          {:ok, reject_invitation_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, reject_invitation_errors()}
  def reject_invitation(%Client{} = client, invitation_id, input, options \\ []) do
    url_path = "/invitations/#{AWS.Util.encode_uri(invitation_id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
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
  @spec tag_resource(map(), String.t(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Removes the specified tags from the Amazon Managed Blockchain resource.

  For more information about tags, see [Tagging Resources](https://docs.aws.amazon.com/managed-blockchain/latest/ethereum-dev/tagging-resources.html)
  in the *Amazon Managed Blockchain Ethereum Developer Guide*, or [Tagging Resources](https://docs.aws.amazon.com/managed-blockchain/latest/hyperledger-fabric-dev/tagging-resources.html)
  in the *Amazon Managed Blockchain Hyperledger Fabric Developer Guide*.
  """
  @spec untag_resource(map(), String.t(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    custom_headers = []

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
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a member configuration with new parameters.

  Applies only to Hyperledger Fabric.
  """
  @spec update_member(map(), String.t(), String.t(), update_member_input(), list()) ::
          {:ok, update_member_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_member_errors()}
  def update_member(%Client{} = client, member_id, network_id, input, options \\ []) do
    url_path =
      "/networks/#{AWS.Util.encode_uri(network_id)}/members/#{AWS.Util.encode_uri(member_id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a node configuration with new parameters.

  Applies only to Hyperledger Fabric.
  """
  @spec update_node(map(), String.t(), String.t(), update_node_input(), list()) ::
          {:ok, update_node_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_node_errors()}
  def update_node(%Client{} = client, network_id, node_id, input, options \\ []) do
    url_path =
      "/networks/#{AWS.Util.encode_uri(network_id)}/nodes/#{AWS.Util.encode_uri(node_id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Casts a vote for a specified `ProposalId` on behalf of a member.

  The member to vote as, specified by `VoterMemberId`, must be in the same Amazon
  Web Services account as the principal that calls the action.

  Applies only to Hyperledger Fabric.
  """
  @spec vote_on_proposal(map(), String.t(), String.t(), vote_on_proposal_input(), list()) ::
          {:ok, vote_on_proposal_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, vote_on_proposal_errors()}
  def vote_on_proposal(%Client{} = client, network_id, proposal_id, input, options \\ []) do
    url_path =
      "/networks/#{AWS.Util.encode_uri(network_id)}/proposals/#{AWS.Util.encode_uri(proposal_id)}/votes"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end
end
