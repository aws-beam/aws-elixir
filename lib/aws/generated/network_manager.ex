# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.NetworkManager do
  @moduledoc """
  Amazon Web Services enables you to centrally manage your Amazon Web Services
  Cloud WAN core network and your Transit Gateway network across Amazon Web
  Services accounts, Regions, and on-premises locations.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      get_core_network_policy_request() :: %{
        optional("Alias") => list(any()),
        optional("PolicyVersionId") => integer()
      }

  """
  @type get_core_network_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      core_network_policy_version() :: %{
        "Alias" => list(any()),
        "ChangeSetState" => list(any()),
        "CoreNetworkId" => String.t(),
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t(),
        "PolicyVersionId" => integer()
      }

  """
  @type core_network_policy_version() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_network_telemetry_request() :: %{
        optional("AccountId") => String.t(),
        optional("AwsRegion") => String.t(),
        optional("CoreNetworkId") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("RegisteredGatewayArn") => String.t(),
        optional("ResourceArn") => String.t(),
        optional("ResourceType") => String.t()
      }

  """
  @type get_network_telemetry_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      deregister_transit_gateway_response() :: %{
        "TransitGatewayRegistration" => transit_gateway_registration()
      }

  """
  @type deregister_transit_gateway_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_link_response() :: %{
        "Link" => link()
      }

  """
  @type delete_link_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_connection_request() :: %{
        optional("ConnectedLinkId") => String.t(),
        optional("Description") => String.t(),
        optional("LinkId") => String.t()
      }

  """
  @type update_connection_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_peering_request() :: %{}

  """
  @type delete_peering_request() :: %{}

  @typedoc """

  ## Example:

      get_network_resource_counts_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("ResourceType") => String.t()
      }

  """
  @type get_network_resource_counts_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_customer_gateway_response() :: %{
        "CustomerGatewayAssociation" => customer_gateway_association()
      }

  """
  @type associate_customer_gateway_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      transit_gateway_peering() :: %{
        "Peering" => peering(),
        "TransitGatewayArn" => String.t(),
        "TransitGatewayPeeringAttachmentId" => String.t()
      }

  """
  @type transit_gateway_peering() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("Tags") => list(tag()())
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_transit_gateway_peering_response() :: %{
        "TransitGatewayPeering" => transit_gateway_peering()
      }

  """
  @type create_transit_gateway_peering_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      edge_override() :: %{
        "EdgeSets" => list(list(String.t()())()),
        "UseEdge" => String.t()
      }

  """
  @type edge_override() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_device_response() :: %{
        "Device" => device()
      }

  """
  @type update_device_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_devices_request() :: %{
        optional("DeviceIds") => list(String.t()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SiteId") => String.t()
      }

  """
  @type get_devices_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_resource_policy_response() :: %{}

  """
  @type delete_resource_policy_response() :: %{}

  @typedoc """

  ## Example:

      list_core_network_policy_versions_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_core_network_policy_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_transit_gateway_connect_peer_associations_response() :: %{
        "NextToken" => String.t(),
        "TransitGatewayConnectPeerAssociations" => list(transit_gateway_connect_peer_association()())
      }

  """
  @type get_transit_gateway_connect_peer_associations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_transit_gateway_connect_peer_associations_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("TransitGatewayConnectPeerArns") => list(String.t()())
      }

  """
  @type get_transit_gateway_connect_peer_associations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_core_network_policy_response() :: %{
        "CoreNetworkPolicy" => core_network_policy()
      }

  """
  @type get_core_network_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      path_component() :: %{
        "DestinationCidrBlock" => String.t(),
        "Resource" => network_resource_summary(),
        "Sequence" => integer()
      }

  """
  @type path_component() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_network_resource_counts_response() :: %{
        "NetworkResourceCounts" => list(network_resource_count()()),
        "NextToken" => String.t()
      }

  """
  @type get_network_resource_counts_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_link_request() :: %{
        required("DeviceId") => String.t(),
        required("LinkId") => String.t()
      }

  """
  @type associate_link_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_transit_gateway_peering_request() :: %{}

  """
  @type get_transit_gateway_peering_request() :: %{}

  @typedoc """

  ## Example:

      service_insertion_segments() :: %{
        "SendTo" => list(String.t()()),
        "SendVia" => list(String.t()())
      }

  """
  @type service_insertion_segments() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_core_network_response() :: %{
        "CoreNetwork" => core_network()
      }

  """
  @type delete_core_network_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      connect_attachment_options() :: %{
        "Protocol" => list(any())
      }

  """
  @type connect_attachment_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_device_response() :: %{
        "Device" => device()
      }

  """
  @type create_device_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_transit_gateway_connect_peer_request() :: %{}

  """
  @type disassociate_transit_gateway_connect_peer_request() :: %{}

  @typedoc """

  ## Example:

      route_analysis() :: %{
        "Destination" => route_analysis_endpoint_options(),
        "ForwardPath" => route_analysis_path(),
        "GlobalNetworkId" => String.t(),
        "IncludeReturnPath" => boolean(),
        "OwnerAccountId" => String.t(),
        "ReturnPath" => route_analysis_path(),
        "RouteAnalysisId" => String.t(),
        "Source" => route_analysis_endpoint_options(),
        "StartTimestamp" => non_neg_integer(),
        "Status" => list(any()),
        "UseMiddleboxes" => boolean()
      }

  """
  @type route_analysis() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_network_resources_response() :: %{
        "NetworkResources" => list(network_resource()()),
        "NextToken" => String.t()
      }

  """
  @type get_network_resources_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_global_network_request() :: %{
        optional("Description") => String.t()
      }

  """
  @type update_global_network_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_connect_peer_associations_request() :: %{
        optional("ConnectPeerIds") => list(String.t()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type get_connect_peer_associations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_global_network_request() :: %{
        optional("Description") => String.t(),
        optional("Tags") => list(tag()())
      }

  """
  @type create_global_network_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_site_to_site_vpn_attachment_response() :: %{
        "SiteToSiteVpnAttachment" => site_to_site_vpn_attachment()
      }

  """
  @type create_site_to_site_vpn_attachment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      vpc_attachment() :: %{
        "Attachment" => attachment(),
        "Options" => vpc_options(),
        "SubnetArns" => list(String.t()())
      }

  """
  @type vpc_attachment() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      update_device_request() :: %{
        optional("AWSLocation") => aws_location(),
        optional("Description") => String.t(),
        optional("Location") => location(),
        optional("Model") => String.t(),
        optional("SerialNumber") => String.t(),
        optional("SiteId") => String.t(),
        optional("Type") => String.t(),
        optional("Vendor") => String.t()
      }

  """
  @type update_device_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_core_network_change_events_response() :: %{
        "CoreNetworkChangeEvents" => list(core_network_change_event()()),
        "NextToken" => String.t()
      }

  """
  @type get_core_network_change_events_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_core_network_change_set_response() :: %{
        "CoreNetworkChanges" => list(core_network_change()()),
        "NextToken" => String.t()
      }

  """
  @type get_core_network_change_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_network_resource_relationships_response() :: %{
        "NextToken" => String.t(),
        "Relationships" => list(relationship()())
      }

  """
  @type get_network_resource_relationships_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      site_to_site_vpn_attachment() :: %{
        "Attachment" => attachment(),
        "VpnConnectionArn" => String.t()
      }

  """
  @type site_to_site_vpn_attachment() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      accept_attachment_request() :: %{}

  """
  @type accept_attachment_request() :: %{}

  @typedoc """

  ## Example:

      relationship() :: %{
        "From" => String.t(),
        "To" => String.t()
      }

  """
  @type relationship() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_global_networks_response() :: %{
        "GlobalNetworks" => list(global_network()()),
        "NextToken" => String.t()
      }

  """
  @type describe_global_networks_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_network_telemetry_response() :: %{
        "NetworkTelemetry" => list(network_telemetry()()),
        "NextToken" => String.t()
      }

  """
  @type get_network_telemetry_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      transit_gateway_connect_peer_association() :: %{
        "DeviceId" => String.t(),
        "GlobalNetworkId" => String.t(),
        "LinkId" => String.t(),
        "State" => list(any()),
        "TransitGatewayConnectPeerArn" => String.t()
      }

  """
  @type transit_gateway_connect_peer_association() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      connect_peer_configuration() :: %{
        "BgpConfigurations" => list(connect_peer_bgp_configuration()()),
        "CoreNetworkAddress" => String.t(),
        "InsideCidrBlocks" => list(String.t()()),
        "PeerAddress" => String.t(),
        "Protocol" => list(any())
      }

  """
  @type connect_peer_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_transit_gateway_route_table_attachment_request() :: %{
        optional("ClientToken") => String.t(),
        optional("Tags") => list(tag()()),
        required("PeeringId") => String.t(),
        required("TransitGatewayRouteTableArn") => String.t()
      }

  """
  @type create_transit_gateway_route_table_attachment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_connections_request() :: %{
        optional("ConnectionIds") => list(String.t()()),
        optional("DeviceId") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type get_connections_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_site_to_site_vpn_attachment_response() :: %{
        "SiteToSiteVpnAttachment" => site_to_site_vpn_attachment()
      }

  """
  @type get_site_to_site_vpn_attachment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_insertion_action() :: %{
        "Action" => list(any()),
        "Mode" => list(any()),
        "Via" => via(),
        "WhenSentTo" => when_sent_to()
      }

  """
  @type service_insertion_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_site_to_site_vpn_attachment_request() :: %{
        optional("ClientToken") => String.t(),
        optional("Tags") => list(tag()()),
        required("CoreNetworkId") => String.t(),
        required("VpnConnectionArn") => String.t()
      }

  """
  @type create_site_to_site_vpn_attachment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_core_network_request() :: %{
        optional("ClientToken") => String.t(),
        optional("Description") => String.t(),
        optional("PolicyDocument") => String.t(),
        optional("Tags") => list(tag()()),
        required("GlobalNetworkId") => String.t()
      }

  """
  @type create_core_network_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      proposed_network_function_group_change() :: %{
        "AttachmentPolicyRuleNumber" => integer(),
        "NetworkFunctionGroupName" => String.t(),
        "Tags" => list(tag()())
      }

  """
  @type proposed_network_function_group_change() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      attachment() :: %{
        "AttachmentId" => String.t(),
        "AttachmentPolicyRuleNumber" => integer(),
        "AttachmentType" => list(any()),
        "CoreNetworkArn" => String.t(),
        "CoreNetworkId" => String.t(),
        "CreatedAt" => non_neg_integer(),
        "EdgeLocation" => String.t(),
        "NetworkFunctionGroupName" => String.t(),
        "OwnerAccountId" => String.t(),
        "ProposedNetworkFunctionGroupChange" => proposed_network_function_group_change(),
        "ProposedSegmentChange" => proposed_segment_change(),
        "ResourceArn" => String.t(),
        "SegmentName" => String.t(),
        "State" => list(any()),
        "Tags" => list(tag()()),
        "UpdatedAt" => non_neg_integer()
      }

  """
  @type attachment() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_site_response() :: %{
        "Site" => site()
      }

  """
  @type delete_site_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      core_network_network_function_group_identifier() :: %{
        "CoreNetworkId" => String.t(),
        "EdgeLocation" => String.t(),
        "NetworkFunctionGroupName" => String.t()
      }

  """
  @type core_network_network_function_group_identifier() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_resource_policy_response() :: %{
        "PolicyDocument" => String.t()
      }

  """
  @type get_resource_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      link() :: %{
        "Bandwidth" => bandwidth(),
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t(),
        "GlobalNetworkId" => String.t(),
        "LinkArn" => String.t(),
        "LinkId" => String.t(),
        "Provider" => String.t(),
        "SiteId" => String.t(),
        "State" => list(any()),
        "Tags" => list(tag()()),
        "Type" => String.t()
      }

  """
  @type link() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_device_request() :: %{}

  """
  @type delete_device_request() :: %{}

  @typedoc """

  ## Example:

      put_core_network_policy_request() :: %{
        optional("ClientToken") => String.t(),
        optional("Description") => String.t(),
        optional("LatestVersionId") => integer(),
        required("PolicyDocument") => String.t()
      }

  """
  @type put_core_network_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      network_route_destination() :: %{
        "CoreNetworkAttachmentId" => String.t(),
        "EdgeLocation" => String.t(),
        "NetworkFunctionGroupName" => String.t(),
        "ResourceId" => String.t(),
        "ResourceType" => String.t(),
        "SegmentName" => String.t(),
        "TransitGatewayAttachmentId" => String.t()
      }

  """
  @type network_route_destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_link_request() :: %{}

  """
  @type delete_link_request() :: %{}

  @typedoc """

  ## Example:

      get_connect_peer_request() :: %{}

  """
  @type get_connect_peer_request() :: %{}

  @typedoc """

  ## Example:

      update_vpc_attachment_request() :: %{
        optional("AddSubnetArns") => list(String.t()()),
        optional("Options") => vpc_options(),
        optional("RemoveSubnetArns") => list(String.t()())
      }

  """
  @type update_vpc_attachment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_connect_peer_response() :: %{
        "ConnectPeer" => connect_peer()
      }

  """
  @type delete_connect_peer_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_global_networks_request() :: %{
        optional("GlobalNetworkIds") => list(String.t()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type describe_global_networks_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      route_analysis_path() :: %{
        "CompletionStatus" => route_analysis_completion(),
        "Path" => list(path_component()())
      }

  """
  @type route_analysis_path() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_connections_response() :: %{
        "Connections" => list(connection()()),
        "NextToken" => String.t()
      }

  """
  @type get_connections_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_network_routes_request() :: %{
        optional("DestinationFilters") => map(),
        optional("ExactCidrMatches") => list(String.t()()),
        optional("LongestPrefixMatches") => list(String.t()()),
        optional("PrefixListIds") => list(String.t()()),
        optional("States") => list(list(any())()),
        optional("SubnetOfMatches") => list(String.t()()),
        optional("SupernetOfMatches") => list(String.t()()),
        optional("Types") => list(list(any())()),
        required("RouteTableIdentifier") => route_table_identifier()
      }

  """
  @type get_network_routes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_link_response() :: %{
        "Link" => link()
      }

  """
  @type create_link_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("TagKeys") => list(String.t()())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_network_routes_response() :: %{
        "CoreNetworkSegmentEdge" => core_network_segment_edge_identifier(),
        "NetworkRoutes" => list(network_route()()),
        "RouteTableArn" => String.t(),
        "RouteTableTimestamp" => non_neg_integer(),
        "RouteTableType" => list(any())
      }

  """
  @type get_network_routes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_core_network_request() :: %{}

  """
  @type get_core_network_request() :: %{}

  @typedoc """

  ## Example:

      account_status() :: %{
        "AccountId" => String.t(),
        "SLRDeploymentStatus" => String.t()
      }

  """
  @type account_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      register_transit_gateway_response() :: %{
        "TransitGatewayRegistration" => transit_gateway_registration()
      }

  """
  @type register_transit_gateway_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      execute_core_network_change_set_request() :: %{}

  """
  @type execute_core_network_change_set_request() :: %{}

  @typedoc """

  ## Example:

      create_site_request() :: %{
        optional("Description") => String.t(),
        optional("Location") => location(),
        optional("Tags") => list(tag()())
      }

  """
  @type create_site_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_route_analysis_response() :: %{
        "RouteAnalysis" => route_analysis()
      }

  """
  @type start_route_analysis_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_organization_service_access_update_response() :: %{
        "OrganizationStatus" => organization_status()
      }

  """
  @type start_organization_service_access_update_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_transit_gateway_registrations_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("TransitGatewayArns") => list(String.t()())
      }

  """
  @type get_transit_gateway_registrations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_organization_service_access_update_request() :: %{
        required("Action") => String.t()
      }

  """
  @type start_organization_service_access_update_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      connect_peer_association() :: %{
        "ConnectPeerId" => String.t(),
        "DeviceId" => String.t(),
        "GlobalNetworkId" => String.t(),
        "LinkId" => String.t(),
        "State" => list(any())
      }

  """
  @type connect_peer_association() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_site_to_site_vpn_attachment_request() :: %{}

  """
  @type get_site_to_site_vpn_attachment_request() :: %{}

  @typedoc """

  ## Example:

      core_network_edge() :: %{
        "Asn" => float(),
        "EdgeLocation" => String.t(),
        "InsideCidrBlocks" => list(String.t()())
      }

  """
  @type core_network_edge() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_route_analysis_request() :: %{}

  """
  @type get_route_analysis_request() :: %{}

  @typedoc """

  ## Example:

      link_association() :: %{
        "DeviceId" => String.t(),
        "GlobalNetworkId" => String.t(),
        "LinkAssociationState" => list(any()),
        "LinkId" => String.t()
      }

  """
  @type link_association() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      route_analysis_endpoint_options() :: %{
        "IpAddress" => String.t(),
        "TransitGatewayArn" => String.t(),
        "TransitGatewayAttachmentArn" => String.t()
      }

  """
  @type route_analysis_endpoint_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_connect_peer_response() :: %{
        "ConnectPeer" => connect_peer()
      }

  """
  @type create_connect_peer_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_connect_attachment_request() :: %{}

  """
  @type get_connect_attachment_request() :: %{}

  @typedoc """

  ## Example:

      create_connect_attachment_request() :: %{
        optional("ClientToken") => String.t(),
        optional("Tags") => list(tag()()),
        required("CoreNetworkId") => String.t(),
        required("EdgeLocation") => String.t(),
        required("Options") => connect_attachment_options(),
        required("TransportAttachmentId") => String.t()
      }

  """
  @type create_connect_attachment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_connect_peer_request() :: %{}

  """
  @type disassociate_connect_peer_request() :: %{}

  @typedoc """

  ## Example:

      list_peerings_request() :: %{
        optional("CoreNetworkId") => String.t(),
        optional("EdgeLocation") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("PeeringType") => list(any()),
        optional("State") => list(any())
      }

  """
  @type list_peerings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_link_request() :: %{
        required("DeviceId") => String.t(),
        required("LinkId") => String.t()
      }

  """
  @type disassociate_link_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_site_response() :: %{
        "Site" => site()
      }

  """
  @type update_site_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      when_sent_to() :: %{
        "WhenSentToSegmentsList" => list(String.t()())
      }

  """
  @type when_sent_to() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_transit_gateway_peering_request() :: %{
        optional("ClientToken") => String.t(),
        optional("Tags") => list(tag()()),
        required("CoreNetworkId") => String.t(),
        required("TransitGatewayArn") => String.t()
      }

  """
  @type create_transit_gateway_peering_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_customer_gateway_request() :: %{
        optional("LinkId") => String.t(),
        required("CustomerGatewayArn") => String.t(),
        required("DeviceId") => String.t()
      }

  """
  @type associate_customer_gateway_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_transit_gateway_route_table_attachment_response() :: %{
        "TransitGatewayRouteTableAttachment" => transit_gateway_route_table_attachment()
      }

  """
  @type create_transit_gateway_route_table_attachment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      core_network_change_values() :: %{
        "Asn" => float(),
        "Cidr" => String.t(),
        "DestinationIdentifier" => String.t(),
        "EdgeLocations" => list(String.t()()),
        "InsideCidrBlocks" => list(String.t()()),
        "NetworkFunctionGroupName" => String.t(),
        "SegmentName" => String.t(),
        "ServiceInsertionActions" => list(service_insertion_action()()),
        "SharedSegments" => list(String.t()())
      }

  """
  @type core_network_change_values() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_connect_peer_response() :: %{
        "ConnectPeerAssociation" => connect_peer_association()
      }

  """
  @type disassociate_connect_peer_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_network_resources_request() :: %{
        optional("AccountId") => String.t(),
        optional("AwsRegion") => String.t(),
        optional("CoreNetworkId") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("RegisteredGatewayArn") => String.t(),
        optional("ResourceArn") => String.t(),
        optional("ResourceType") => String.t()
      }

  """
  @type get_network_resources_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_link_associations_request() :: %{
        optional("DeviceId") => String.t(),
        optional("LinkId") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type get_link_associations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_core_network_response() :: %{
        "CoreNetwork" => core_network()
      }

  """
  @type create_core_network_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_core_network_policy_response() :: %{
        "CoreNetworkPolicy" => core_network_policy()
      }

  """
  @type put_core_network_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_link_request() :: %{
        optional("Description") => String.t(),
        optional("Provider") => String.t(),
        optional("Tags") => list(tag()()),
        optional("Type") => String.t(),
        required("Bandwidth") => bandwidth(),
        required("SiteId") => String.t()
      }

  """
  @type create_link_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_connect_peer_response() :: %{
        "ConnectPeerAssociation" => connect_peer_association()
      }

  """
  @type associate_connect_peer_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      network_route() :: %{
        "DestinationCidrBlock" => String.t(),
        "Destinations" => list(network_route_destination()()),
        "PrefixListId" => String.t(),
        "State" => list(any()),
        "Type" => list(any())
      }

  """
  @type network_route() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      execute_core_network_change_set_response() :: %{}

  """
  @type execute_core_network_change_set_response() :: %{}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "Message" => String.t(),
        "ResourceId" => String.t(),
        "ResourceType" => String.t()
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Context" => map(),
        "Message" => String.t(),
        "ResourceId" => String.t(),
        "ResourceType" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      bgp_options() :: %{
        "PeerAsn" => float()
      }

  """
  @type bgp_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      reject_attachment_response() :: %{
        "Attachment" => attachment()
      }

  """
  @type reject_attachment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      route_analysis_completion() :: %{
        "ReasonCode" => list(any()),
        "ReasonContext" => map(),
        "ResultCode" => list(any())
      }

  """
  @type route_analysis_completion() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag() :: %{
        "Key" => String.t(),
        "Value" => String.t()
      }

  """
  @type tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      connection() :: %{
        "ConnectedDeviceId" => String.t(),
        "ConnectedLinkId" => String.t(),
        "ConnectionArn" => String.t(),
        "ConnectionId" => String.t(),
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t(),
        "DeviceId" => String.t(),
        "GlobalNetworkId" => String.t(),
        "LinkId" => String.t(),
        "State" => list(any()),
        "Tags" => list(tag()())
      }

  """
  @type connection() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_network_resource_metadata_request() :: %{
        required("Metadata") => map()
      }

  """
  @type update_network_resource_metadata_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      restore_core_network_policy_version_response() :: %{
        "CoreNetworkPolicy" => core_network_policy()
      }

  """
  @type restore_core_network_policy_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_attachment_request() :: %{}

  """
  @type delete_attachment_request() :: %{}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "LimitCode" => String.t(),
        "Message" => String.t(),
        "ResourceId" => String.t(),
        "ResourceType" => String.t(),
        "ServiceCode" => String.t()
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_sites_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SiteIds") => list(String.t()())
      }

  """
  @type get_sites_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_connect_attachment_response() :: %{
        "ConnectAttachment" => connect_attachment()
      }

  """
  @type get_connect_attachment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      connect_peer_bgp_configuration() :: %{
        "CoreNetworkAddress" => String.t(),
        "CoreNetworkAsn" => float(),
        "PeerAddress" => String.t(),
        "PeerAsn" => float()
      }

  """
  @type connect_peer_bgp_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_connect_peer_associations_response() :: %{
        "ConnectPeerAssociations" => list(connect_peer_association()()),
        "NextToken" => String.t()
      }

  """
  @type get_connect_peer_associations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      peering() :: %{
        "CoreNetworkArn" => String.t(),
        "CoreNetworkId" => String.t(),
        "CreatedAt" => non_neg_integer(),
        "EdgeLocation" => String.t(),
        "OwnerAccountId" => String.t(),
        "PeeringId" => String.t(),
        "PeeringType" => list(any()),
        "ResourceArn" => String.t(),
        "State" => list(any()),
        "Tags" => list(tag()())
      }

  """
  @type peering() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_organization_service_access_status_response() :: %{
        "NextToken" => String.t(),
        "OrganizationStatus" => organization_status()
      }

  """
  @type list_organization_service_access_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_vpc_attachment_response() :: %{
        "VpcAttachment" => vpc_attachment()
      }

  """
  @type update_vpc_attachment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      customer_gateway_association() :: %{
        "CustomerGatewayArn" => String.t(),
        "DeviceId" => String.t(),
        "GlobalNetworkId" => String.t(),
        "LinkId" => String.t(),
        "State" => list(any())
      }

  """
  @type customer_gateway_association() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_site_request() :: %{}

  """
  @type delete_site_request() :: %{}

  @typedoc """

  ## Example:

      site() :: %{
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t(),
        "GlobalNetworkId" => String.t(),
        "Location" => location(),
        "SiteArn" => String.t(),
        "SiteId" => String.t(),
        "State" => list(any()),
        "Tags" => list(tag()())
      }

  """
  @type site() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      core_network() :: %{
        "CoreNetworkArn" => String.t(),
        "CoreNetworkId" => String.t(),
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t(),
        "Edges" => list(core_network_edge()()),
        "GlobalNetworkId" => String.t(),
        "NetworkFunctionGroups" => list(core_network_network_function_group()()),
        "Segments" => list(core_network_segment()()),
        "State" => list(any()),
        "Tags" => list(tag()())
      }

  """
  @type core_network() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      network_resource_summary() :: %{
        "Definition" => String.t(),
        "IsMiddlebox" => boolean(),
        "NameTag" => String.t(),
        "RegisteredGatewayArn" => String.t(),
        "ResourceArn" => String.t(),
        "ResourceType" => String.t()
      }

  """
  @type network_resource_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      transit_gateway_registration() :: %{
        "GlobalNetworkId" => String.t(),
        "State" => transit_gateway_registration_state_reason(),
        "TransitGatewayArn" => String.t()
      }

  """
  @type transit_gateway_registration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "TagList" => list(tag()())
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_connect_peers_request() :: %{
        optional("ConnectAttachmentId") => String.t(),
        optional("CoreNetworkId") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_connect_peers_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_core_network_policy_version_response() :: %{
        "CoreNetworkPolicy" => core_network_policy()
      }

  """
  @type delete_core_network_policy_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_connection_response() :: %{
        "Connection" => connection()
      }

  """
  @type update_connection_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      core_network_change() :: %{
        "Action" => list(any()),
        "Identifier" => String.t(),
        "IdentifierPath" => String.t(),
        "NewValues" => core_network_change_values(),
        "PreviousValues" => core_network_change_values(),
        "Type" => list(any())
      }

  """
  @type core_network_change() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      deregister_transit_gateway_request() :: %{}

  """
  @type deregister_transit_gateway_request() :: %{}

  @typedoc """

  ## Example:

      validation_exception_field() :: %{
        "Message" => String.t(),
        "Name" => String.t()
      }

  """
  @type validation_exception_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_link_response() :: %{
        "Link" => link()
      }

  """
  @type update_link_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      location() :: %{
        "Address" => String.t(),
        "Latitude" => String.t(),
        "Longitude" => String.t()
      }

  """
  @type location() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_connect_peer_response() :: %{
        "ConnectPeer" => connect_peer()
      }

  """
  @type get_connect_peer_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_core_networks_response() :: %{
        "CoreNetworks" => list(core_network_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_core_networks_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      connect_peer_summary() :: %{
        "ConnectAttachmentId" => String.t(),
        "ConnectPeerId" => String.t(),
        "ConnectPeerState" => list(any()),
        "CoreNetworkId" => String.t(),
        "CreatedAt" => non_neg_integer(),
        "EdgeLocation" => String.t(),
        "SubnetArn" => String.t(),
        "Tags" => list(tag()())
      }

  """
  @type connect_peer_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_resource_policy_request() :: %{}

  """
  @type get_resource_policy_request() :: %{}

  @typedoc """

  ## Example:

      delete_global_network_response() :: %{
        "GlobalNetwork" => global_network()
      }

  """
  @type delete_global_network_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_attachments_request() :: %{
        optional("AttachmentType") => list(any()),
        optional("CoreNetworkId") => String.t(),
        optional("EdgeLocation") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("State") => list(any())
      }

  """
  @type list_attachments_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      core_network_policy_exception() :: %{
        "Errors" => list(core_network_policy_error()()),
        "Message" => String.t()
      }

  """
  @type core_network_policy_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      restore_core_network_policy_version_request() :: %{}

  """
  @type restore_core_network_policy_version_request() :: %{}

  @typedoc """

  ## Example:

      global_network() :: %{
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t(),
        "GlobalNetworkArn" => String.t(),
        "GlobalNetworkId" => String.t(),
        "State" => list(any()),
        "Tags" => list(tag()())
      }

  """
  @type global_network() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_device_response() :: %{
        "Device" => device()
      }

  """
  @type delete_device_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_links_response() :: %{
        "Links" => list(link()()),
        "NextToken" => String.t()
      }

  """
  @type get_links_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "Message" => String.t(),
        "RetryAfterSeconds" => integer()
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_vpc_attachment_request() :: %{
        optional("ClientToken") => String.t(),
        optional("Options") => vpc_options(),
        optional("Tags") => list(tag()()),
        required("CoreNetworkId") => String.t(),
        required("SubnetArns") => list(String.t()()),
        required("VpcArn") => String.t()
      }

  """
  @type create_vpc_attachment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      network_function_group() :: %{
        "Name" => String.t()
      }

  """
  @type network_function_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      core_network_policy() :: %{
        "Alias" => list(any()),
        "ChangeSetState" => list(any()),
        "CoreNetworkId" => String.t(),
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t(),
        "PolicyDocument" => String.t(),
        "PolicyErrors" => list(core_network_policy_error()()),
        "PolicyVersionId" => integer()
      }

  """
  @type core_network_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      register_transit_gateway_request() :: %{
        required("TransitGatewayArn") => String.t()
      }

  """
  @type register_transit_gateway_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_site_request() :: %{
        optional("Description") => String.t(),
        optional("Location") => location()
      }

  """
  @type update_site_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_connect_peer_request() :: %{
        optional("LinkId") => String.t(),
        required("ConnectPeerId") => String.t(),
        required("DeviceId") => String.t()
      }

  """
  @type associate_connect_peer_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_connect_peer_request() :: %{}

  """
  @type delete_connect_peer_request() :: %{}

  @typedoc """

  ## Example:

      get_link_associations_response() :: %{
        "LinkAssociations" => list(link_association()()),
        "NextToken" => String.t()
      }

  """
  @type get_link_associations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      transit_gateway_route_table_attachment() :: %{
        "Attachment" => attachment(),
        "PeeringId" => String.t(),
        "TransitGatewayRouteTableArn" => String.t()
      }

  """
  @type transit_gateway_route_table_attachment() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_device_request() :: %{
        optional("AWSLocation") => aws_location(),
        optional("Description") => String.t(),
        optional("Location") => location(),
        optional("Model") => String.t(),
        optional("SerialNumber") => String.t(),
        optional("SiteId") => String.t(),
        optional("Tags") => list(tag()()),
        optional("Type") => String.t(),
        optional("Vendor") => String.t()
      }

  """
  @type create_device_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_customer_gateway_response() :: %{
        "CustomerGatewayAssociation" => customer_gateway_association()
      }

  """
  @type disassociate_customer_gateway_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_peering_response() :: %{
        "Peering" => peering()
      }

  """
  @type delete_peering_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_vpc_attachment_response() :: %{
        "VpcAttachment" => vpc_attachment()
      }

  """
  @type create_vpc_attachment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_resource_policy_request() :: %{
        required("PolicyDocument") => String.t()
      }

  """
  @type put_resource_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_transit_gateway_peering_response() :: %{
        "TransitGatewayPeering" => transit_gateway_peering()
      }

  """
  @type get_transit_gateway_peering_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      core_network_change_event_values() :: %{
        "AttachmentId" => String.t(),
        "Cidr" => String.t(),
        "EdgeLocation" => String.t(),
        "NetworkFunctionGroupName" => String.t(),
        "SegmentName" => String.t()
      }

  """
  @type core_network_change_event_values() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_transit_gateway_route_table_attachment_request() :: %{}

  """
  @type get_transit_gateway_route_table_attachment_request() :: %{}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "Message" => String.t()
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_core_network_request() :: %{}

  """
  @type delete_core_network_request() :: %{}

  @typedoc """

  ## Example:

      delete_global_network_request() :: %{}

  """
  @type delete_global_network_request() :: %{}

  @typedoc """

  ## Example:

      list_core_networks_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_core_networks_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_devices_response() :: %{
        "Devices" => list(device()()),
        "NextToken" => String.t()
      }

  """
  @type get_devices_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      network_resource_count() :: %{
        "Count" => integer(),
        "ResourceType" => String.t()
      }

  """
  @type network_resource_count() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_global_network_response() :: %{
        "GlobalNetwork" => global_network()
      }

  """
  @type create_global_network_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_link_response() :: %{
        "LinkAssociation" => link_association()
      }

  """
  @type disassociate_link_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      bandwidth() :: %{
        "DownloadSpeed" => integer(),
        "UploadSpeed" => integer()
      }

  """
  @type bandwidth() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      create_connect_attachment_response() :: %{
        "ConnectAttachment" => connect_attachment()
      }

  """
  @type create_connect_attachment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_transit_gateway_connect_peer_response() :: %{
        "TransitGatewayConnectPeerAssociation" => transit_gateway_connect_peer_association()
      }

  """
  @type associate_transit_gateway_connect_peer_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      connect_attachment() :: %{
        "Attachment" => attachment(),
        "Options" => connect_attachment_options(),
        "TransportAttachmentId" => String.t()
      }

  """
  @type connect_attachment() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_transit_gateway_connect_peer_response() :: %{
        "TransitGatewayConnectPeerAssociation" => transit_gateway_connect_peer_association()
      }

  """
  @type disassociate_transit_gateway_connect_peer_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      accept_attachment_response() :: %{
        "Attachment" => attachment()
      }

  """
  @type accept_attachment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      core_network_policy_error() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t(),
        "Path" => String.t()
      }

  """
  @type core_network_policy_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_connection_response() :: %{
        "Connection" => connection()
      }

  """
  @type delete_connection_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "Fields" => list(validation_exception_field()()),
        "Message" => String.t(),
        "Reason" => list(any())
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      get_transit_gateway_route_table_attachment_response() :: %{
        "TransitGatewayRouteTableAttachment" => transit_gateway_route_table_attachment()
      }

  """
  @type get_transit_gateway_route_table_attachment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      core_network_segment() :: %{
        "EdgeLocations" => list(String.t()()),
        "Name" => String.t(),
        "SharedSegments" => list(String.t()())
      }

  """
  @type core_network_segment() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_core_network_change_events_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type get_core_network_change_events_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      proposed_segment_change() :: %{
        "AttachmentPolicyRuleNumber" => integer(),
        "SegmentName" => String.t(),
        "Tags" => list(tag()())
      }

  """
  @type proposed_segment_change() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      reject_attachment_request() :: %{}

  """
  @type reject_attachment_request() :: %{}

  @typedoc """

  ## Example:

      transit_gateway_registration_state_reason() :: %{
        "Code" => list(any()),
        "Message" => String.t()
      }

  """
  @type transit_gateway_registration_state_reason() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "Message" => String.t(),
        "RetryAfterSeconds" => integer()
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      core_network_network_function_group() :: %{
        "EdgeLocations" => list(String.t()()),
        "Name" => String.t(),
        "Segments" => service_insertion_segments()
      }

  """
  @type core_network_network_function_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_customer_gateway_associations_request() :: %{
        optional("CustomerGatewayArns") => list(String.t()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type get_customer_gateway_associations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_global_network_response() :: %{
        "GlobalNetwork" => global_network()
      }

  """
  @type update_global_network_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_customer_gateway_associations_response() :: %{
        "CustomerGatewayAssociations" => list(customer_gateway_association()()),
        "NextToken" => String.t()
      }

  """
  @type get_customer_gateway_associations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      vpc_options() :: %{
        "ApplianceModeSupport" => boolean(),
        "Ipv6Support" => boolean()
      }

  """
  @type vpc_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      network_resource() :: %{
        "AccountId" => String.t(),
        "AwsRegion" => String.t(),
        "CoreNetworkId" => String.t(),
        "Definition" => String.t(),
        "DefinitionTimestamp" => non_neg_integer(),
        "Metadata" => map(),
        "RegisteredGatewayArn" => String.t(),
        "ResourceArn" => String.t(),
        "ResourceId" => String.t(),
        "ResourceType" => String.t(),
        "Tags" => list(tag()())
      }

  """
  @type network_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_resource_policy_response() :: %{}

  """
  @type put_resource_policy_response() :: %{}

  @typedoc """

  ## Example:

      route_table_identifier() :: %{
        "CoreNetworkNetworkFunctionGroup" => core_network_network_function_group_identifier(),
        "CoreNetworkSegmentEdge" => core_network_segment_edge_identifier(),
        "TransitGatewayRouteTableArn" => String.t()
      }

  """
  @type route_table_identifier() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      network_telemetry() :: %{
        "AccountId" => String.t(),
        "Address" => String.t(),
        "AwsRegion" => String.t(),
        "CoreNetworkId" => String.t(),
        "Health" => connection_health(),
        "RegisteredGatewayArn" => String.t(),
        "ResourceArn" => String.t(),
        "ResourceId" => String.t(),
        "ResourceType" => String.t()
      }

  """
  @type network_telemetry() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_route_analysis_request() :: %{
        optional("IncludeReturnPath") => boolean(),
        optional("UseMiddleboxes") => boolean(),
        required("Destination") => route_analysis_endpoint_options_specification(),
        required("Source") => route_analysis_endpoint_options_specification()
      }

  """
  @type start_route_analysis_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_connection_response() :: %{
        "Connection" => connection()
      }

  """
  @type create_connection_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_transit_gateway_connect_peer_request() :: %{
        optional("LinkId") => String.t(),
        required("DeviceId") => String.t(),
        required("TransitGatewayConnectPeerArn") => String.t()
      }

  """
  @type associate_transit_gateway_connect_peer_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      core_network_segment_edge_identifier() :: %{
        "CoreNetworkId" => String.t(),
        "EdgeLocation" => String.t(),
        "SegmentName" => String.t()
      }

  """
  @type core_network_segment_edge_identifier() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_resource_policy_request() :: %{}

  """
  @type delete_resource_policy_request() :: %{}

  @typedoc """

  ## Example:

      get_core_network_change_set_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type get_core_network_change_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      connect_peer() :: %{
        "Configuration" => connect_peer_configuration(),
        "ConnectAttachmentId" => String.t(),
        "ConnectPeerId" => String.t(),
        "CoreNetworkId" => String.t(),
        "CreatedAt" => non_neg_integer(),
        "EdgeLocation" => String.t(),
        "State" => list(any()),
        "SubnetArn" => String.t(),
        "Tags" => list(tag()())
      }

  """
  @type connect_peer() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      connection_health() :: %{
        "Status" => list(any()),
        "Timestamp" => non_neg_integer(),
        "Type" => list(any())
      }

  """
  @type connection_health() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_links_request() :: %{
        optional("LinkIds") => list(String.t()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("Provider") => String.t(),
        optional("SiteId") => String.t(),
        optional("Type") => String.t()
      }

  """
  @type get_links_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_network_resource_metadata_response() :: %{
        "Metadata" => map(),
        "ResourceArn" => String.t()
      }

  """
  @type update_network_resource_metadata_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      aws_location() :: %{
        "SubnetArn" => String.t(),
        "Zone" => String.t()
      }

  """
  @type aws_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_organization_service_access_status_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_organization_service_access_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      device() :: %{
        "AWSLocation" => aws_location(),
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t(),
        "DeviceArn" => String.t(),
        "DeviceId" => String.t(),
        "GlobalNetworkId" => String.t(),
        "Location" => location(),
        "Model" => String.t(),
        "SerialNumber" => String.t(),
        "SiteId" => String.t(),
        "State" => list(any()),
        "Tags" => list(tag()()),
        "Type" => String.t(),
        "Vendor" => String.t()
      }

  """
  @type device() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      core_network_change_event() :: %{
        "Action" => list(any()),
        "EventTime" => non_neg_integer(),
        "IdentifierPath" => String.t(),
        "Status" => list(any()),
        "Type" => list(any()),
        "Values" => core_network_change_event_values()
      }

  """
  @type core_network_change_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_vpc_attachment_request() :: %{}

  """
  @type get_vpc_attachment_request() :: %{}

  @typedoc """

  ## Example:

      get_core_network_response() :: %{
        "CoreNetwork" => core_network()
      }

  """
  @type get_core_network_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_site_response() :: %{
        "Site" => site()
      }

  """
  @type create_site_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      core_network_summary() :: %{
        "CoreNetworkArn" => String.t(),
        "CoreNetworkId" => String.t(),
        "Description" => String.t(),
        "GlobalNetworkId" => String.t(),
        "OwnerAccountId" => String.t(),
        "State" => list(any()),
        "Tags" => list(tag()())
      }

  """
  @type core_network_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_connection_request() :: %{}

  """
  @type delete_connection_request() :: %{}

  @typedoc """

  ## Example:

      list_core_network_policy_versions_response() :: %{
        "CoreNetworkPolicyVersions" => list(core_network_policy_version()()),
        "NextToken" => String.t()
      }

  """
  @type list_core_network_policy_versions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_connect_peers_response() :: %{
        "ConnectPeers" => list(connect_peer_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_connect_peers_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_peerings_response() :: %{
        "NextToken" => String.t(),
        "Peerings" => list(peering()())
      }

  """
  @type list_peerings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_network_resource_relationships_request() :: %{
        optional("AccountId") => String.t(),
        optional("AwsRegion") => String.t(),
        optional("CoreNetworkId") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("RegisteredGatewayArn") => String.t(),
        optional("ResourceArn") => String.t(),
        optional("ResourceType") => String.t()
      }

  """
  @type get_network_resource_relationships_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_route_analysis_response() :: %{
        "RouteAnalysis" => route_analysis()
      }

  """
  @type get_route_analysis_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_core_network_response() :: %{
        "CoreNetwork" => core_network()
      }

  """
  @type update_core_network_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_sites_response() :: %{
        "NextToken" => String.t(),
        "Sites" => list(site()())
      }

  """
  @type get_sites_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_customer_gateway_request() :: %{}

  """
  @type disassociate_customer_gateway_request() :: %{}

  @typedoc """

  ## Example:

      update_core_network_request() :: %{
        optional("Description") => String.t()
      }

  """
  @type update_core_network_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_transit_gateway_registrations_response() :: %{
        "NextToken" => String.t(),
        "TransitGatewayRegistrations" => list(transit_gateway_registration()())
      }

  """
  @type get_transit_gateway_registrations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_attachment_response() :: %{
        "Attachment" => attachment()
      }

  """
  @type delete_attachment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_link_response() :: %{
        "LinkAssociation" => link_association()
      }

  """
  @type associate_link_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_connection_request() :: %{
        optional("ConnectedLinkId") => String.t(),
        optional("Description") => String.t(),
        optional("LinkId") => String.t(),
        optional("Tags") => list(tag()()),
        required("ConnectedDeviceId") => String.t(),
        required("DeviceId") => String.t()
      }

  """
  @type create_connection_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_attachments_response() :: %{
        "Attachments" => list(attachment()()),
        "NextToken" => String.t()
      }

  """
  @type list_attachments_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      route_analysis_endpoint_options_specification() :: %{
        "IpAddress" => String.t(),
        "TransitGatewayAttachmentArn" => String.t()
      }

  """
  @type route_analysis_endpoint_options_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_vpc_attachment_response() :: %{
        "VpcAttachment" => vpc_attachment()
      }

  """
  @type get_vpc_attachment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_link_request() :: %{
        optional("Bandwidth") => bandwidth(),
        optional("Description") => String.t(),
        optional("Provider") => String.t(),
        optional("Type") => String.t()
      }

  """
  @type update_link_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      organization_status() :: %{
        "AccountStatusList" => list(account_status()()),
        "OrganizationAwsServiceAccessStatus" => String.t(),
        "OrganizationId" => String.t(),
        "SLRDeploymentStatus" => String.t()
      }

  """
  @type organization_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      via() :: %{
        "NetworkFunctionGroups" => list(network_function_group()()),
        "WithEdgeOverrides" => list(edge_override()())
      }

  """
  @type via() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_connect_peer_request() :: %{
        optional("BgpOptions") => bgp_options(),
        optional("ClientToken") => String.t(),
        optional("CoreNetworkAddress") => String.t(),
        optional("InsideCidrBlocks") => list(String.t()()),
        optional("SubnetArn") => String.t(),
        optional("Tags") => list(tag()()),
        required("ConnectAttachmentId") => String.t(),
        required("PeerAddress") => String.t()
      }

  """
  @type create_connect_peer_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_core_network_policy_version_request() :: %{}

  """
  @type delete_core_network_policy_version_request() :: %{}

  @type accept_attachment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type associate_connect_peer_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type associate_customer_gateway_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type associate_link_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type associate_transit_gateway_connect_peer_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_connect_attachment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_connect_peer_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_connection_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_core_network_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | core_network_policy_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_device_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_global_network_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_link_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_site_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_site_to_site_vpn_attachment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_transit_gateway_peering_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_transit_gateway_route_table_attachment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_vpc_attachment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_attachment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_connect_peer_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_connection_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_core_network_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_core_network_policy_version_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_device_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_global_network_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_link_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_peering_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_resource_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type delete_site_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type deregister_transit_gateway_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type describe_global_networks_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type disassociate_connect_peer_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type disassociate_customer_gateway_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type disassociate_link_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type disassociate_transit_gateway_connect_peer_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type execute_core_network_change_set_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_connect_attachment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_connect_peer_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_connect_peer_associations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_connections_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_core_network_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_core_network_change_events_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_core_network_change_set_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_core_network_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_customer_gateway_associations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_devices_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_link_associations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_links_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_network_resource_counts_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type get_network_resource_relationships_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_network_resources_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_network_routes_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_network_telemetry_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_resource_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type get_route_analysis_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_site_to_site_vpn_attachment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_sites_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_transit_gateway_connect_peer_associations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_transit_gateway_peering_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_transit_gateway_registrations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_transit_gateway_route_table_attachment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_vpc_attachment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_attachments_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_connect_peers_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_core_network_policy_versions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_core_networks_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_peerings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type put_core_network_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | core_network_policy_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type put_resource_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type register_transit_gateway_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type reject_attachment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type restore_core_network_policy_version_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type start_organization_service_access_update_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type start_route_analysis_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_connection_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_core_network_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_device_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_global_network_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_link_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_network_resource_metadata_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_site_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_vpc_attachment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2019-07-05",
      content_type: "application/x-amz-json-1.1",
      credential_scope: "us-west-2",
      endpoint_prefix: "networkmanager",
      global?: true,
      hostname: "networkmanager.us-west-2.amazonaws.com",
      protocol: "rest-json",
      service_id: "NetworkManager",
      signature_version: "v4",
      signing_name: "networkmanager",
      target_prefix: nil
    }
  end

  @doc """
  Accepts a core network attachment request.

  Once the attachment request is accepted by a core network owner, the attachment
  is
  created and connected to a core network.
  """
  @spec accept_attachment(map(), String.t(), accept_attachment_request(), list()) ::
          {:ok, accept_attachment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, accept_attachment_errors()}
  def accept_attachment(%Client{} = client, attachment_id, input, options \\ []) do
    url_path = "/attachments/#{AWS.Util.encode_uri(attachment_id)}/accept"
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
      200
    )
  end

  @doc """
  Associates a core network Connect peer with a device and optionally, with a
  link.

  If you specify a link, it must be associated with the specified device. You can
  only
  associate core network Connect peers that have been created on a core network
  Connect
  attachment on a core network.
  """
  @spec associate_connect_peer(map(), String.t(), associate_connect_peer_request(), list()) ::
          {:ok, associate_connect_peer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_connect_peer_errors()}
  def associate_connect_peer(%Client{} = client, global_network_id, input, options \\ []) do
    url_path =
      "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/connect-peer-associations"

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
      200
    )
  end

  @doc """
  Associates a customer gateway with a device and optionally, with a link.

  If you
  specify a link, it must be associated with the specified device.

  You can only associate customer gateways that are connected to a VPN attachment
  on a
  transit gateway or core network registered in your global network. When you
  register a
  transit gateway or core network, customer gateways that are connected to the
  transit
  gateway are automatically included in the global network. To list customer
  gateways
  that are connected to a transit gateway, use the
  [DescribeVpnConnections](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeVpnConnections.html)
  EC2 API and filter by
  `transit-gateway-id`.

  You cannot associate a customer gateway with more than one device and link.
  """
  @spec associate_customer_gateway(
          map(),
          String.t(),
          associate_customer_gateway_request(),
          list()
        ) ::
          {:ok, associate_customer_gateway_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_customer_gateway_errors()}
  def associate_customer_gateway(%Client{} = client, global_network_id, input, options \\ []) do
    url_path =
      "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/customer-gateway-associations"

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
      200
    )
  end

  @doc """
  Associates a link to a device.

  A device can be associated to multiple links and a link can be associated to
  multiple devices. The device and link must be in the same global network and the
  same site.
  """
  @spec associate_link(map(), String.t(), associate_link_request(), list()) ::
          {:ok, associate_link_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_link_errors()}
  def associate_link(%Client{} = client, global_network_id, input, options \\ []) do
    url_path = "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/link-associations"
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
      200
    )
  end

  @doc """
  Associates a transit gateway Connect peer with a device, and optionally, with a
  link.

  If you
  specify a link, it must be associated with the specified device.

  You can only associate transit gateway Connect peers that have been created on a
  transit gateway that's registered in your global network.

  You cannot associate a transit gateway Connect peer with more than one device
  and link.
  """
  @spec associate_transit_gateway_connect_peer(
          map(),
          String.t(),
          associate_transit_gateway_connect_peer_request(),
          list()
        ) ::
          {:ok, associate_transit_gateway_connect_peer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_transit_gateway_connect_peer_errors()}
  def associate_transit_gateway_connect_peer(
        %Client{} = client,
        global_network_id,
        input,
        options \\ []
      ) do
    url_path =
      "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/transit-gateway-connect-peer-associations"

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
      200
    )
  end

  @doc """
  Creates a core network Connect attachment from a specified core network
  attachment.

  A core network Connect attachment is a GRE-based tunnel attachment that you can
  use to
  establish a connection between a core network and an appliance. A core network
  Connect
  attachment uses an existing VPC attachment as the underlying transport
  mechanism.
  """
  @spec create_connect_attachment(map(), create_connect_attachment_request(), list()) ::
          {:ok, create_connect_attachment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_connect_attachment_errors()}
  def create_connect_attachment(%Client{} = client, input, options \\ []) do
    url_path = "/connect-attachments"
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
      200
    )
  end

  @doc """
  Creates a core network Connect peer for a specified core network connect
  attachment between a core network and an appliance.

  The peer address and transit gateway address must be the same IP address family
  (IPv4 or IPv6).
  """
  @spec create_connect_peer(map(), create_connect_peer_request(), list()) ::
          {:ok, create_connect_peer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_connect_peer_errors()}
  def create_connect_peer(%Client{} = client, input, options \\ []) do
    url_path = "/connect-peers"
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
      200
    )
  end

  @doc """
  Creates a connection between two devices.

  The devices can be a physical or virtual appliance that connects to a
  third-party appliance in a VPC, or a physical appliance that connects to another
  physical appliance in an on-premises network.
  """
  @spec create_connection(map(), String.t(), create_connection_request(), list()) ::
          {:ok, create_connection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_connection_errors()}
  def create_connection(%Client{} = client, global_network_id, input, options \\ []) do
    url_path = "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/connections"
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
      200
    )
  end

  @doc """
  Creates a core network as part of your global network, and optionally, with a
  core network policy.
  """
  @spec create_core_network(map(), create_core_network_request(), list()) ::
          {:ok, create_core_network_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_core_network_errors()}
  def create_core_network(%Client{} = client, input, options \\ []) do
    url_path = "/core-networks"
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
      200
    )
  end

  @doc """
  Creates a new device in a global network.

  If you specify both a site ID and a
  location, the location of the site is used for visualization in the Network
  Manager console.
  """
  @spec create_device(map(), String.t(), create_device_request(), list()) ::
          {:ok, create_device_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_device_errors()}
  def create_device(%Client{} = client, global_network_id, input, options \\ []) do
    url_path = "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/devices"
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
      200
    )
  end

  @doc """
  Creates a new, empty global network.
  """
  @spec create_global_network(map(), create_global_network_request(), list()) ::
          {:ok, create_global_network_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_global_network_errors()}
  def create_global_network(%Client{} = client, input, options \\ []) do
    url_path = "/global-networks"
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
      200
    )
  end

  @doc """
  Creates a new link for a specified site.
  """
  @spec create_link(map(), String.t(), create_link_request(), list()) ::
          {:ok, create_link_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_link_errors()}
  def create_link(%Client{} = client, global_network_id, input, options \\ []) do
    url_path = "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/links"
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
      200
    )
  end

  @doc """
  Creates a new site in a global network.
  """
  @spec create_site(map(), String.t(), create_site_request(), list()) ::
          {:ok, create_site_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_site_errors()}
  def create_site(%Client{} = client, global_network_id, input, options \\ []) do
    url_path = "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/sites"
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
      200
    )
  end

  @doc """
  Creates an Amazon Web Services site-to-site VPN attachment on an edge location
  of a core network.
  """
  @spec create_site_to_site_vpn_attachment(
          map(),
          create_site_to_site_vpn_attachment_request(),
          list()
        ) ::
          {:ok, create_site_to_site_vpn_attachment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_site_to_site_vpn_attachment_errors()}
  def create_site_to_site_vpn_attachment(%Client{} = client, input, options \\ []) do
    url_path = "/site-to-site-vpn-attachments"
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
      200
    )
  end

  @doc """
  Creates a transit gateway peering connection.
  """
  @spec create_transit_gateway_peering(map(), create_transit_gateway_peering_request(), list()) ::
          {:ok, create_transit_gateway_peering_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_transit_gateway_peering_errors()}
  def create_transit_gateway_peering(%Client{} = client, input, options \\ []) do
    url_path = "/transit-gateway-peerings"
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
      200
    )
  end

  @doc """
  Creates a transit gateway route table attachment.
  """
  @spec create_transit_gateway_route_table_attachment(
          map(),
          create_transit_gateway_route_table_attachment_request(),
          list()
        ) ::
          {:ok, create_transit_gateway_route_table_attachment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_transit_gateway_route_table_attachment_errors()}
  def create_transit_gateway_route_table_attachment(%Client{} = client, input, options \\ []) do
    url_path = "/transit-gateway-route-table-attachments"
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
      200
    )
  end

  @doc """
  Creates a VPC attachment on an edge location of a core network.
  """
  @spec create_vpc_attachment(map(), create_vpc_attachment_request(), list()) ::
          {:ok, create_vpc_attachment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_vpc_attachment_errors()}
  def create_vpc_attachment(%Client{} = client, input, options \\ []) do
    url_path = "/vpc-attachments"
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
      200
    )
  end

  @doc """
  Deletes an attachment.

  Supports all attachment types.
  """
  @spec delete_attachment(map(), String.t(), delete_attachment_request(), list()) ::
          {:ok, delete_attachment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_attachment_errors()}
  def delete_attachment(%Client{} = client, attachment_id, input, options \\ []) do
    url_path = "/attachments/#{AWS.Util.encode_uri(attachment_id)}"
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
      200
    )
  end

  @doc """
  Deletes a Connect peer.
  """
  @spec delete_connect_peer(map(), String.t(), delete_connect_peer_request(), list()) ::
          {:ok, delete_connect_peer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_connect_peer_errors()}
  def delete_connect_peer(%Client{} = client, connect_peer_id, input, options \\ []) do
    url_path = "/connect-peers/#{AWS.Util.encode_uri(connect_peer_id)}"
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
      200
    )
  end

  @doc """
  Deletes the specified connection in your global network.
  """
  @spec delete_connection(map(), String.t(), String.t(), delete_connection_request(), list()) ::
          {:ok, delete_connection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_connection_errors()}
  def delete_connection(
        %Client{} = client,
        connection_id,
        global_network_id,
        input,
        options \\ []
      ) do
    url_path =
      "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/connections/#{AWS.Util.encode_uri(connection_id)}"

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
      200
    )
  end

  @doc """
  Deletes a core network along with all core network policies.

  This can only be done if there are no attachments on a core network.
  """
  @spec delete_core_network(map(), String.t(), delete_core_network_request(), list()) ::
          {:ok, delete_core_network_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_core_network_errors()}
  def delete_core_network(%Client{} = client, core_network_id, input, options \\ []) do
    url_path = "/core-networks/#{AWS.Util.encode_uri(core_network_id)}"
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
      200
    )
  end

  @doc """
  Deletes a policy version from a core network.

  You can't delete the current LIVE policy.
  """
  @spec delete_core_network_policy_version(
          map(),
          String.t(),
          String.t(),
          delete_core_network_policy_version_request(),
          list()
        ) ::
          {:ok, delete_core_network_policy_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_core_network_policy_version_errors()}
  def delete_core_network_policy_version(
        %Client{} = client,
        core_network_id,
        policy_version_id,
        input,
        options \\ []
      ) do
    url_path =
      "/core-networks/#{AWS.Util.encode_uri(core_network_id)}/core-network-policy-versions/#{AWS.Util.encode_uri(policy_version_id)}"

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
      200
    )
  end

  @doc """
  Deletes an existing device.

  You must first disassociate the device from any links and
  customer gateways.
  """
  @spec delete_device(map(), String.t(), String.t(), delete_device_request(), list()) ::
          {:ok, delete_device_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_device_errors()}
  def delete_device(%Client{} = client, device_id, global_network_id, input, options \\ []) do
    url_path =
      "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/devices/#{AWS.Util.encode_uri(device_id)}"

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
      200
    )
  end

  @doc """
  Deletes an existing global network.

  You must first delete all global network objects
  (devices, links, and sites), deregister all transit gateways, and delete any
  core networks.
  """
  @spec delete_global_network(map(), String.t(), delete_global_network_request(), list()) ::
          {:ok, delete_global_network_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_global_network_errors()}
  def delete_global_network(%Client{} = client, global_network_id, input, options \\ []) do
    url_path = "/global-networks/#{AWS.Util.encode_uri(global_network_id)}"
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
      200
    )
  end

  @doc """
  Deletes an existing link.

  You must first disassociate the link from any devices and
  customer gateways.
  """
  @spec delete_link(map(), String.t(), String.t(), delete_link_request(), list()) ::
          {:ok, delete_link_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_link_errors()}
  def delete_link(%Client{} = client, global_network_id, link_id, input, options \\ []) do
    url_path =
      "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/links/#{AWS.Util.encode_uri(link_id)}"

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
      200
    )
  end

  @doc """
  Deletes an existing peering connection.
  """
  @spec delete_peering(map(), String.t(), delete_peering_request(), list()) ::
          {:ok, delete_peering_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_peering_errors()}
  def delete_peering(%Client{} = client, peering_id, input, options \\ []) do
    url_path = "/peerings/#{AWS.Util.encode_uri(peering_id)}"
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
      200
    )
  end

  @doc """
  Deletes a resource policy for the specified resource.

  This revokes the access of the principals specified in the resource policy.
  """
  @spec delete_resource_policy(map(), String.t(), delete_resource_policy_request(), list()) ::
          {:ok, delete_resource_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_resource_policy_errors()}
  def delete_resource_policy(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/resource-policy/#{AWS.Util.encode_uri(resource_arn)}"
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
      200
    )
  end

  @doc """
  Deletes an existing site.

  The site cannot be associated with any device or link.
  """
  @spec delete_site(map(), String.t(), String.t(), delete_site_request(), list()) ::
          {:ok, delete_site_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_site_errors()}
  def delete_site(%Client{} = client, global_network_id, site_id, input, options \\ []) do
    url_path =
      "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/sites/#{AWS.Util.encode_uri(site_id)}"

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
      200
    )
  end

  @doc """
  Deregisters a transit gateway from your global network.

  This action does not delete
  your transit gateway, or modify any of its attachments. This action removes any
  customer gateway associations.
  """
  @spec deregister_transit_gateway(
          map(),
          String.t(),
          String.t(),
          deregister_transit_gateway_request(),
          list()
        ) ::
          {:ok, deregister_transit_gateway_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, deregister_transit_gateway_errors()}
  def deregister_transit_gateway(
        %Client{} = client,
        global_network_id,
        transit_gateway_arn,
        input,
        options \\ []
      ) do
    url_path =
      "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/transit-gateway-registrations/#{AWS.Util.encode_uri(transit_gateway_arn)}"

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
      200
    )
  end

  @doc """
  Describes one or more global networks.

  By default, all global networks are
  described. To describe the objects in your global network, you must use the
  appropriate
  `Get*` action. For example, to list the transit gateways in your global
  network, use `GetTransitGatewayRegistrations`.
  """
  @spec describe_global_networks(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, describe_global_networks_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_global_networks_errors()}
  def describe_global_networks(
        %Client{} = client,
        global_network_ids \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/global-networks"
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

    query_params =
      if !is_nil(global_network_ids) do
        [{"globalNetworkIds", global_network_ids} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Disassociates a core network Connect peer from a device and a link.
  """
  @spec disassociate_connect_peer(
          map(),
          String.t(),
          String.t(),
          disassociate_connect_peer_request(),
          list()
        ) ::
          {:ok, disassociate_connect_peer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_connect_peer_errors()}
  def disassociate_connect_peer(
        %Client{} = client,
        connect_peer_id,
        global_network_id,
        input,
        options \\ []
      ) do
    url_path =
      "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/connect-peer-associations/#{AWS.Util.encode_uri(connect_peer_id)}"

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
      200
    )
  end

  @doc """
  Disassociates a customer gateway from a device and a link.
  """
  @spec disassociate_customer_gateway(
          map(),
          String.t(),
          String.t(),
          disassociate_customer_gateway_request(),
          list()
        ) ::
          {:ok, disassociate_customer_gateway_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_customer_gateway_errors()}
  def disassociate_customer_gateway(
        %Client{} = client,
        customer_gateway_arn,
        global_network_id,
        input,
        options \\ []
      ) do
    url_path =
      "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/customer-gateway-associations/#{AWS.Util.encode_uri(customer_gateway_arn)}"

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
      200
    )
  end

  @doc """
  Disassociates an existing device from a link.

  You must first disassociate any customer
  gateways that are associated with the link.
  """
  @spec disassociate_link(map(), String.t(), disassociate_link_request(), list()) ::
          {:ok, disassociate_link_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_link_errors()}
  def disassociate_link(%Client{} = client, global_network_id, input, options \\ []) do
    url_path = "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/link-associations"
    headers = []

    {query_params, input} =
      [
        {"DeviceId", "deviceId"},
        {"LinkId", "linkId"}
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
      200
    )
  end

  @doc """
  Disassociates a transit gateway Connect peer from a device and link.
  """
  @spec disassociate_transit_gateway_connect_peer(
          map(),
          String.t(),
          String.t(),
          disassociate_transit_gateway_connect_peer_request(),
          list()
        ) ::
          {:ok, disassociate_transit_gateway_connect_peer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_transit_gateway_connect_peer_errors()}
  def disassociate_transit_gateway_connect_peer(
        %Client{} = client,
        global_network_id,
        transit_gateway_connect_peer_arn,
        input,
        options \\ []
      ) do
    url_path =
      "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/transit-gateway-connect-peer-associations/#{AWS.Util.encode_uri(transit_gateway_connect_peer_arn)}"

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
      200
    )
  end

  @doc """
  Executes a change set on your core network.

  Deploys changes globally based on the policy submitted..
  """
  @spec execute_core_network_change_set(
          map(),
          String.t(),
          String.t(),
          execute_core_network_change_set_request(),
          list()
        ) ::
          {:ok, execute_core_network_change_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, execute_core_network_change_set_errors()}
  def execute_core_network_change_set(
        %Client{} = client,
        core_network_id,
        policy_version_id,
        input,
        options \\ []
      ) do
    url_path =
      "/core-networks/#{AWS.Util.encode_uri(core_network_id)}/core-network-change-sets/#{AWS.Util.encode_uri(policy_version_id)}/execute"

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
      200
    )
  end

  @doc """
  Returns information about a core network Connect attachment.
  """
  @spec get_connect_attachment(map(), String.t(), list()) ::
          {:ok, get_connect_attachment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_connect_attachment_errors()}
  def get_connect_attachment(%Client{} = client, attachment_id, options \\ []) do
    url_path = "/connect-attachments/#{AWS.Util.encode_uri(attachment_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about a core network Connect peer.
  """
  @spec get_connect_peer(map(), String.t(), list()) ::
          {:ok, get_connect_peer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_connect_peer_errors()}
  def get_connect_peer(%Client{} = client, connect_peer_id, options \\ []) do
    url_path = "/connect-peers/#{AWS.Util.encode_uri(connect_peer_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about a core network Connect peer associations.
  """
  @spec get_connect_peer_associations(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, get_connect_peer_associations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_connect_peer_associations_errors()}
  def get_connect_peer_associations(
        %Client{} = client,
        global_network_id,
        connect_peer_ids \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/connect-peer-associations"

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

    query_params =
      if !is_nil(connect_peer_ids) do
        [{"connectPeerIds", connect_peer_ids} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about one or more of your connections in a global network.
  """
  @spec get_connections(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, get_connections_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_connections_errors()}
  def get_connections(
        %Client{} = client,
        global_network_id,
        connection_ids \\ nil,
        device_id \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/connections"
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

    query_params =
      if !is_nil(device_id) do
        [{"deviceId", device_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(connection_ids) do
        [{"connectionIds", connection_ids} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about the LIVE policy for a core network.
  """
  @spec get_core_network(map(), String.t(), list()) ::
          {:ok, get_core_network_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_core_network_errors()}
  def get_core_network(%Client{} = client, core_network_id, options \\ []) do
    url_path = "/core-networks/#{AWS.Util.encode_uri(core_network_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about a core network change event.
  """
  @spec get_core_network_change_events(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, get_core_network_change_events_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_core_network_change_events_errors()}
  def get_core_network_change_events(
        %Client{} = client,
        core_network_id,
        policy_version_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/core-networks/#{AWS.Util.encode_uri(core_network_id)}/core-network-change-events/#{AWS.Util.encode_uri(policy_version_id)}"

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
  Returns a change set between the LIVE core network policy and a submitted
  policy.
  """
  @spec get_core_network_change_set(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, get_core_network_change_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_core_network_change_set_errors()}
  def get_core_network_change_set(
        %Client{} = client,
        core_network_id,
        policy_version_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/core-networks/#{AWS.Util.encode_uri(core_network_id)}/core-network-change-sets/#{AWS.Util.encode_uri(policy_version_id)}"

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
  Returns details about a core network policy.

  You can get details about your current live policy or any previous policy
  version.
  """
  @spec get_core_network_policy(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, get_core_network_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_core_network_policy_errors()}
  def get_core_network_policy(
        %Client{} = client,
        core_network_id,
        alias \\ nil,
        policy_version_id \\ nil,
        options \\ []
      ) do
    url_path = "/core-networks/#{AWS.Util.encode_uri(core_network_id)}/core-network-policy"
    headers = []
    query_params = []

    query_params =
      if !is_nil(policy_version_id) do
        [{"policyVersionId", policy_version_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(alias) do
        [{"alias", alias} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the association information for customer gateways that are associated with
  devices and links in your global network.
  """
  @spec get_customer_gateway_associations(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, get_customer_gateway_associations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_customer_gateway_associations_errors()}
  def get_customer_gateway_associations(
        %Client{} = client,
        global_network_id,
        customer_gateway_arns \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/customer-gateway-associations"

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

    query_params =
      if !is_nil(customer_gateway_arns) do
        [{"customerGatewayArns", customer_gateway_arns} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about one or more of your devices in a global network.
  """
  @spec get_devices(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, get_devices_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_devices_errors()}
  def get_devices(
        %Client{} = client,
        global_network_id,
        device_ids \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        site_id \\ nil,
        options \\ []
      ) do
    url_path = "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/devices"
    headers = []
    query_params = []

    query_params =
      if !is_nil(site_id) do
        [{"siteId", site_id} | query_params]
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

    query_params =
      if !is_nil(device_ids) do
        [{"deviceIds", device_ids} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the link associations for a device or a link.

  Either the device ID or the link ID
  must be specified.
  """
  @spec get_link_associations(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, get_link_associations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_link_associations_errors()}
  def get_link_associations(
        %Client{} = client,
        global_network_id,
        device_id \\ nil,
        link_id \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/link-associations"
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

    query_params =
      if !is_nil(link_id) do
        [{"linkId", link_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(device_id) do
        [{"deviceId", device_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about one or more links in a specified global network.

  If you specify the site ID, you cannot specify the type or provider in the same
  request. You can specify the type and provider in the same request.
  """
  @spec get_links(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, get_links_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_links_errors()}
  def get_links(
        %Client{} = client,
        global_network_id,
        link_ids \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        provider \\ nil,
        site_id \\ nil,
        type \\ nil,
        options \\ []
      ) do
    url_path = "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/links"
    headers = []
    query_params = []

    query_params =
      if !is_nil(type) do
        [{"type", type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(site_id) do
        [{"siteId", site_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(provider) do
        [{"provider", provider} | query_params]
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

    query_params =
      if !is_nil(link_ids) do
        [{"linkIds", link_ids} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the count of network resources, by resource type, for the specified global
  network.
  """
  @spec get_network_resource_counts(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, get_network_resource_counts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_network_resource_counts_errors()}
  def get_network_resource_counts(
        %Client{} = client,
        global_network_id,
        max_results \\ nil,
        next_token \\ nil,
        resource_type \\ nil,
        options \\ []
      ) do
    url_path = "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/network-resource-count"
    headers = []
    query_params = []

    query_params =
      if !is_nil(resource_type) do
        [{"resourceType", resource_type} | query_params]
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the network resource relationships for the specified global network.
  """
  @spec get_network_resource_relationships(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, get_network_resource_relationships_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_network_resource_relationships_errors()}
  def get_network_resource_relationships(
        %Client{} = client,
        global_network_id,
        account_id \\ nil,
        aws_region \\ nil,
        core_network_id \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        registered_gateway_arn \\ nil,
        resource_arn \\ nil,
        resource_type \\ nil,
        options \\ []
      ) do
    url_path =
      "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/network-resource-relationships"

    headers = []
    query_params = []

    query_params =
      if !is_nil(resource_type) do
        [{"resourceType", resource_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(resource_arn) do
        [{"resourceArn", resource_arn} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(registered_gateway_arn) do
        [{"registeredGatewayArn", registered_gateway_arn} | query_params]
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

    query_params =
      if !is_nil(core_network_id) do
        [{"coreNetworkId", core_network_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(aws_region) do
        [{"awsRegion", aws_region} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(account_id) do
        [{"accountId", account_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes the network resources for the specified global network.

  The results include information from the corresponding Describe call for the
  resource, minus any sensitive information such as pre-shared keys.
  """
  @spec get_network_resources(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, get_network_resources_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_network_resources_errors()}
  def get_network_resources(
        %Client{} = client,
        global_network_id,
        account_id \\ nil,
        aws_region \\ nil,
        core_network_id \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        registered_gateway_arn \\ nil,
        resource_arn \\ nil,
        resource_type \\ nil,
        options \\ []
      ) do
    url_path = "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/network-resources"
    headers = []
    query_params = []

    query_params =
      if !is_nil(resource_type) do
        [{"resourceType", resource_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(resource_arn) do
        [{"resourceArn", resource_arn} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(registered_gateway_arn) do
        [{"registeredGatewayArn", registered_gateway_arn} | query_params]
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

    query_params =
      if !is_nil(core_network_id) do
        [{"coreNetworkId", core_network_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(aws_region) do
        [{"awsRegion", aws_region} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(account_id) do
        [{"accountId", account_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the network routes of the specified global network.
  """
  @spec get_network_routes(map(), String.t(), get_network_routes_request(), list()) ::
          {:ok, get_network_routes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_network_routes_errors()}
  def get_network_routes(%Client{} = client, global_network_id, input, options \\ []) do
    url_path = "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/network-routes"
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
      200
    )
  end

  @doc """
  Gets the network telemetry of the specified global network.
  """
  @spec get_network_telemetry(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, get_network_telemetry_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_network_telemetry_errors()}
  def get_network_telemetry(
        %Client{} = client,
        global_network_id,
        account_id \\ nil,
        aws_region \\ nil,
        core_network_id \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        registered_gateway_arn \\ nil,
        resource_arn \\ nil,
        resource_type \\ nil,
        options \\ []
      ) do
    url_path = "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/network-telemetry"
    headers = []
    query_params = []

    query_params =
      if !is_nil(resource_type) do
        [{"resourceType", resource_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(resource_arn) do
        [{"resourceArn", resource_arn} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(registered_gateway_arn) do
        [{"registeredGatewayArn", registered_gateway_arn} | query_params]
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

    query_params =
      if !is_nil(core_network_id) do
        [{"coreNetworkId", core_network_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(aws_region) do
        [{"awsRegion", aws_region} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(account_id) do
        [{"accountId", account_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about a resource policy.
  """
  @spec get_resource_policy(map(), String.t(), list()) ::
          {:ok, get_resource_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_resource_policy_errors()}
  def get_resource_policy(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/resource-policy/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about the specified route analysis.
  """
  @spec get_route_analysis(map(), String.t(), String.t(), list()) ::
          {:ok, get_route_analysis_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_route_analysis_errors()}
  def get_route_analysis(%Client{} = client, global_network_id, route_analysis_id, options \\ []) do
    url_path =
      "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/route-analyses/#{AWS.Util.encode_uri(route_analysis_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about a site-to-site VPN attachment.
  """
  @spec get_site_to_site_vpn_attachment(map(), String.t(), list()) ::
          {:ok, get_site_to_site_vpn_attachment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_site_to_site_vpn_attachment_errors()}
  def get_site_to_site_vpn_attachment(%Client{} = client, attachment_id, options \\ []) do
    url_path = "/site-to-site-vpn-attachments/#{AWS.Util.encode_uri(attachment_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about one or more of your sites in a global network.
  """
  @spec get_sites(map(), String.t(), String.t() | nil, String.t() | nil, String.t() | nil, list()) ::
          {:ok, get_sites_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_sites_errors()}
  def get_sites(
        %Client{} = client,
        global_network_id,
        max_results \\ nil,
        next_token \\ nil,
        site_ids \\ nil,
        options \\ []
      ) do
    url_path = "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/sites"
    headers = []
    query_params = []

    query_params =
      if !is_nil(site_ids) do
        [{"siteIds", site_ids} | query_params]
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about one or more of your transit gateway Connect peer
  associations in a global network.
  """
  @spec get_transit_gateway_connect_peer_associations(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, get_transit_gateway_connect_peer_associations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_transit_gateway_connect_peer_associations_errors()}
  def get_transit_gateway_connect_peer_associations(
        %Client{} = client,
        global_network_id,
        max_results \\ nil,
        next_token \\ nil,
        transit_gateway_connect_peer_arns \\ nil,
        options \\ []
      ) do
    url_path =
      "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/transit-gateway-connect-peer-associations"

    headers = []
    query_params = []

    query_params =
      if !is_nil(transit_gateway_connect_peer_arns) do
        [{"transitGatewayConnectPeerArns", transit_gateway_connect_peer_arns} | query_params]
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about a transit gateway peer.
  """
  @spec get_transit_gateway_peering(map(), String.t(), list()) ::
          {:ok, get_transit_gateway_peering_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_transit_gateway_peering_errors()}
  def get_transit_gateway_peering(%Client{} = client, peering_id, options \\ []) do
    url_path = "/transit-gateway-peerings/#{AWS.Util.encode_uri(peering_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about the transit gateway registrations in a specified
  global network.
  """
  @spec get_transit_gateway_registrations(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, get_transit_gateway_registrations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_transit_gateway_registrations_errors()}
  def get_transit_gateway_registrations(
        %Client{} = client,
        global_network_id,
        max_results \\ nil,
        next_token \\ nil,
        transit_gateway_arns \\ nil,
        options \\ []
      ) do
    url_path =
      "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/transit-gateway-registrations"

    headers = []
    query_params = []

    query_params =
      if !is_nil(transit_gateway_arns) do
        [{"transitGatewayArns", transit_gateway_arns} | query_params]
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about a transit gateway route table attachment.
  """
  @spec get_transit_gateway_route_table_attachment(map(), String.t(), list()) ::
          {:ok, get_transit_gateway_route_table_attachment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_transit_gateway_route_table_attachment_errors()}
  def get_transit_gateway_route_table_attachment(%Client{} = client, attachment_id, options \\ []) do
    url_path = "/transit-gateway-route-table-attachments/#{AWS.Util.encode_uri(attachment_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about a VPC attachment.
  """
  @spec get_vpc_attachment(map(), String.t(), list()) ::
          {:ok, get_vpc_attachment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_vpc_attachment_errors()}
  def get_vpc_attachment(%Client{} = client, attachment_id, options \\ []) do
    url_path = "/vpc-attachments/#{AWS.Util.encode_uri(attachment_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of core network attachments.
  """
  @spec list_attachments(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_attachments_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_attachments_errors()}
  def list_attachments(
        %Client{} = client,
        attachment_type \\ nil,
        core_network_id \\ nil,
        edge_location \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        state \\ nil,
        options \\ []
      ) do
    url_path = "/attachments"
    headers = []
    query_params = []

    query_params =
      if !is_nil(state) do
        [{"state", state} | query_params]
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

    query_params =
      if !is_nil(edge_location) do
        [{"edgeLocation", edge_location} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(core_network_id) do
        [{"coreNetworkId", core_network_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(attachment_type) do
        [{"attachmentType", attachment_type} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of core network Connect peers.
  """
  @spec list_connect_peers(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_connect_peers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_connect_peers_errors()}
  def list_connect_peers(
        %Client{} = client,
        connect_attachment_id \\ nil,
        core_network_id \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/connect-peers"
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

    query_params =
      if !is_nil(core_network_id) do
        [{"coreNetworkId", core_network_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(connect_attachment_id) do
        [{"connectAttachmentId", connect_attachment_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of core network policy versions.
  """
  @spec list_core_network_policy_versions(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_core_network_policy_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_core_network_policy_versions_errors()}
  def list_core_network_policy_versions(
        %Client{} = client,
        core_network_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/core-networks/#{AWS.Util.encode_uri(core_network_id)}/core-network-policy-versions"

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
  Returns a list of owned and shared core networks.
  """
  @spec list_core_networks(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_core_networks_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_core_networks_errors()}
  def list_core_networks(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/core-networks"
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
  Gets the status of the Service Linked Role (SLR) deployment for the accounts in
  a given Amazon Web Services Organization.
  """
  @spec list_organization_service_access_status(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_organization_service_access_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_organization_service_access_status(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/organizations/service-access"
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
  Lists the peerings for a core network.
  """
  @spec list_peerings(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_peerings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_peerings_errors()}
  def list_peerings(
        %Client{} = client,
        core_network_id \\ nil,
        edge_location \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        peering_type \\ nil,
        state \\ nil,
        options \\ []
      ) do
    url_path = "/peerings"
    headers = []
    query_params = []

    query_params =
      if !is_nil(state) do
        [{"state", state} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(peering_type) do
        [{"peeringType", peering_type} | query_params]
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

    query_params =
      if !is_nil(edge_location) do
        [{"edgeLocation", edge_location} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(core_network_id) do
        [{"coreNetworkId", core_network_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the tags for a specified resource.
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
  Creates a new, immutable version of a core network policy.

  A subsequent change set is created showing the differences between the LIVE
  policy and the submitted policy.
  """
  @spec put_core_network_policy(map(), String.t(), put_core_network_policy_request(), list()) ::
          {:ok, put_core_network_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_core_network_policy_errors()}
  def put_core_network_policy(%Client{} = client, core_network_id, input, options \\ []) do
    url_path = "/core-networks/#{AWS.Util.encode_uri(core_network_id)}/core-network-policy"
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
      200
    )
  end

  @doc """
  Creates or updates a resource policy.
  """
  @spec put_resource_policy(map(), String.t(), put_resource_policy_request(), list()) ::
          {:ok, put_resource_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_resource_policy_errors()}
  def put_resource_policy(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/resource-policy/#{AWS.Util.encode_uri(resource_arn)}"
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
      200
    )
  end

  @doc """
  Registers a transit gateway in your global network.

  Not all Regions support transit
  gateways for global networks. For a list of the supported Regions, see [Region Availability](https://docs.aws.amazon.com/network-manager/latest/tgwnm/what-are-global-networks.html#nm-available-regions)
  in the *Amazon Web Services Transit Gateways for Global
  Networks User Guide*. The transit gateway can be in any of the supported
  Amazon Web Services Regions, but it must be owned by the same Amazon Web
  Services account that owns the global
  network. You cannot register a transit gateway in more than one global network.
  """
  @spec register_transit_gateway(map(), String.t(), register_transit_gateway_request(), list()) ::
          {:ok, register_transit_gateway_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, register_transit_gateway_errors()}
  def register_transit_gateway(%Client{} = client, global_network_id, input, options \\ []) do
    url_path =
      "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/transit-gateway-registrations"

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
      200
    )
  end

  @doc """
  Rejects a core network attachment request.
  """
  @spec reject_attachment(map(), String.t(), reject_attachment_request(), list()) ::
          {:ok, reject_attachment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, reject_attachment_errors()}
  def reject_attachment(%Client{} = client, attachment_id, input, options \\ []) do
    url_path = "/attachments/#{AWS.Util.encode_uri(attachment_id)}/reject"
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
      200
    )
  end

  @doc """
  Restores a previous policy version as a new, immutable version of a core network
  policy.

  A subsequent change set is created showing the differences between the LIVE
  policy and restored policy.
  """
  @spec restore_core_network_policy_version(
          map(),
          String.t(),
          String.t(),
          restore_core_network_policy_version_request(),
          list()
        ) ::
          {:ok, restore_core_network_policy_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, restore_core_network_policy_version_errors()}
  def restore_core_network_policy_version(
        %Client{} = client,
        core_network_id,
        policy_version_id,
        input,
        options \\ []
      ) do
    url_path =
      "/core-networks/#{AWS.Util.encode_uri(core_network_id)}/core-network-policy-versions/#{AWS.Util.encode_uri(policy_version_id)}/restore"

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
      200
    )
  end

  @doc """
  Enables the Network Manager service for an Amazon Web Services Organization.

  This can only be called by a management account within the organization.
  """
  @spec start_organization_service_access_update(
          map(),
          start_organization_service_access_update_request(),
          list()
        ) ::
          {:ok, start_organization_service_access_update_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_organization_service_access_update_errors()}
  def start_organization_service_access_update(%Client{} = client, input, options \\ []) do
    url_path = "/organizations/service-access"
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
      200
    )
  end

  @doc """
  Starts analyzing the routing path between the specified source and destination.

  For more information,
  see [Route Analyzer](https://docs.aws.amazon.com/vpc/latest/tgw/route-analyzer.html).
  """
  @spec start_route_analysis(map(), String.t(), start_route_analysis_request(), list()) ::
          {:ok, start_route_analysis_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_route_analysis_errors()}
  def start_route_analysis(%Client{} = client, global_network_id, input, options \\ []) do
    url_path = "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/route-analyses"
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
      200
    )
  end

  @doc """
  Tags a specified resource.
  """
  @spec tag_resource(map(), String.t(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
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
      200
    )
  end

  @doc """
  Removes tags from a specified resource.
  """
  @spec untag_resource(map(), String.t(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
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
      200
    )
  end

  @doc """
  Updates the information for an existing connection.

  To remove information for any of the parameters,
  specify an empty string.
  """
  @spec update_connection(map(), String.t(), String.t(), update_connection_request(), list()) ::
          {:ok, update_connection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_connection_errors()}
  def update_connection(
        %Client{} = client,
        connection_id,
        global_network_id,
        input,
        options \\ []
      ) do
    url_path =
      "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/connections/#{AWS.Util.encode_uri(connection_id)}"

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
      200
    )
  end

  @doc """
  Updates the description of a core network.
  """
  @spec update_core_network(map(), String.t(), update_core_network_request(), list()) ::
          {:ok, update_core_network_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_core_network_errors()}
  def update_core_network(%Client{} = client, core_network_id, input, options \\ []) do
    url_path = "/core-networks/#{AWS.Util.encode_uri(core_network_id)}"
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
      200
    )
  end

  @doc """
  Updates the details for an existing device.

  To remove information for any of the
  parameters, specify an empty string.
  """
  @spec update_device(map(), String.t(), String.t(), update_device_request(), list()) ::
          {:ok, update_device_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_device_errors()}
  def update_device(%Client{} = client, device_id, global_network_id, input, options \\ []) do
    url_path =
      "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/devices/#{AWS.Util.encode_uri(device_id)}"

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
      200
    )
  end

  @doc """
  Updates an existing global network.

  To remove information for any of the parameters,
  specify an empty string.
  """
  @spec update_global_network(map(), String.t(), update_global_network_request(), list()) ::
          {:ok, update_global_network_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_global_network_errors()}
  def update_global_network(%Client{} = client, global_network_id, input, options \\ []) do
    url_path = "/global-networks/#{AWS.Util.encode_uri(global_network_id)}"
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
      200
    )
  end

  @doc """
  Updates the details for an existing link.

  To remove information for any of the
  parameters, specify an empty string.
  """
  @spec update_link(map(), String.t(), String.t(), update_link_request(), list()) ::
          {:ok, update_link_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_link_errors()}
  def update_link(%Client{} = client, global_network_id, link_id, input, options \\ []) do
    url_path =
      "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/links/#{AWS.Util.encode_uri(link_id)}"

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
      200
    )
  end

  @doc """
  Updates the resource metadata for the specified global network.
  """
  @spec update_network_resource_metadata(
          map(),
          String.t(),
          String.t(),
          update_network_resource_metadata_request(),
          list()
        ) ::
          {:ok, update_network_resource_metadata_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_network_resource_metadata_errors()}
  def update_network_resource_metadata(
        %Client{} = client,
        global_network_id,
        resource_arn,
        input,
        options \\ []
      ) do
    url_path =
      "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/network-resources/#{AWS.Util.encode_uri(resource_arn)}/metadata"

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
      200
    )
  end

  @doc """
  Updates the information for an existing site.

  To remove information for any of the
  parameters, specify an empty string.
  """
  @spec update_site(map(), String.t(), String.t(), update_site_request(), list()) ::
          {:ok, update_site_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_site_errors()}
  def update_site(%Client{} = client, global_network_id, site_id, input, options \\ []) do
    url_path =
      "/global-networks/#{AWS.Util.encode_uri(global_network_id)}/sites/#{AWS.Util.encode_uri(site_id)}"

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
      200
    )
  end

  @doc """
  Updates a VPC attachment.
  """
  @spec update_vpc_attachment(map(), String.t(), update_vpc_attachment_request(), list()) ::
          {:ok, update_vpc_attachment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_vpc_attachment_errors()}
  def update_vpc_attachment(%Client{} = client, attachment_id, input, options \\ []) do
    url_path = "/vpc-attachments/#{AWS.Util.encode_uri(attachment_id)}"
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
      200
    )
  end
end
