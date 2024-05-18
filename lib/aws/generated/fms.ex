# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.FMS do
  @moduledoc """
  This is the *Firewall Manager API Reference*.

  This guide is for
  developers who need detailed information about the Firewall Manager API actions,
  data
  types, and errors. For detailed information about Firewall Manager features, see
  the
  [Firewall Manager Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/fms-chapter.html).

  Some API actions require explicit resource permissions. For information, see the
  developer guide topic
  [Service roles for Firewall Manager](https://docs.aws.amazon.com/waf/latest/developerguide/fms-security_iam_service-with-iam.html#fms-security_iam_service-with-iam-roles-service).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      app() :: %{
        "AppName" => String.t(),
        "Port" => float(),
        "Protocol" => String.t()
      }
      
  """
  @type app() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      route_has_out_of_scope_endpoint_violation() :: %{
        "CurrentFirewallSubnetRouteTable" => String.t(),
        "CurrentInternetGatewayRouteTable" => String.t(),
        "FirewallSubnetId" => String.t(),
        "FirewallSubnetRoutes" => list(route()()),
        "InternetGatewayId" => String.t(),
        "InternetGatewayRoutes" => list(route()()),
        "RouteTableId" => String.t(),
        "SubnetAvailabilityZone" => String.t(),
        "SubnetAvailabilityZoneId" => String.t(),
        "SubnetId" => String.t(),
        "ViolatingRoutes" => list(route()()),
        "VpcId" => String.t()
      }
      
  """
  @type route_has_out_of_scope_endpoint_violation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      network_acl_entry() :: %{
        "CidrBlock" => String.t(),
        "Egress" => boolean(),
        "IcmpTypeCode" => network_acl_icmp_type_code(),
        "Ipv6CidrBlock" => String.t(),
        "PortRange" => network_acl_port_range(),
        "Protocol" => String.t(),
        "RuleAction" => list(any())
      }
      
  """
  @type network_acl_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_protection_status_response() :: %{
        "AdminAccountId" => String.t(),
        "Data" => String.t(),
        "NextToken" => String.t(),
        "ServiceType" => list(any())
      }
      
  """
  @type get_protection_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      network_acl_entry_set() :: %{
        "FirstEntries" => list(network_acl_entry()()),
        "ForceRemediateForFirstEntries" => boolean(),
        "ForceRemediateForLastEntries" => boolean(),
        "LastEntries" => list(network_acl_entry()())
      }
      
  """
  @type network_acl_entry_set() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_member_accounts_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_member_accounts_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("ResourceArn") => String.t(),
        required("TagList") => list(tag()())
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_apps_lists_response() :: %{
        "AppsLists" => list(apps_list_data_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_apps_lists_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      firewall_subnet_is_out_of_scope_violation() :: %{
        "FirewallSubnetId" => String.t(),
        "SubnetAvailabilityZone" => String.t(),
        "SubnetAvailabilityZoneId" => String.t(),
        "VpcEndpointId" => String.t(),
        "VpcId" => String.t()
      }
      
  """
  @type firewall_subnet_is_out_of_scope_violation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_disassociate_resource_response() :: %{
        "FailedItems" => list(failed_item()()),
        "ResourceSetIdentifier" => String.t()
      }
      
  """
  @type batch_disassociate_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      protocols_list_data_summary() :: %{
        "ListArn" => String.t(),
        "ListId" => String.t(),
        "ListName" => String.t(),
        "ProtocolsList" => list(String.t()())
      }
      
  """
  @type protocols_list_data_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_associate_resource_request() :: %{
        required("Items") => list(String.t()()),
        required("ResourceSetIdentifier") => String.t()
      }
      
  """
  @type batch_associate_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_admin_account_request() :: %{}
      
  """
  @type disassociate_admin_account_request() :: %{}

  @typedoc """

  ## Example:
      
      security_group_rule_description() :: %{
        "FromPort" => float(),
        "IPV4Range" => String.t(),
        "IPV6Range" => String.t(),
        "PrefixListId" => String.t(),
        "Protocol" => String.t(),
        "ToPort" => float()
      }
      
  """
  @type security_group_rule_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dns_rule_group_limit_exceeded_violation() :: %{
        "NumberOfRuleGroupsAlreadyAssociated" => integer(),
        "ViolationTarget" => String.t(),
        "ViolationTargetDescription" => String.t()
      }
      
  """
  @type dns_rule_group_limit_exceeded_violation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      third_party_firewall_missing_expected_route_table_violation() :: %{
        "AvailabilityZone" => String.t(),
        "CurrentRouteTable" => String.t(),
        "ExpectedRouteTable" => String.t(),
        "VPC" => String.t(),
        "ViolationTarget" => String.t()
      }
      
  """
  @type third_party_firewall_missing_expected_route_table_violation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_policies_response() :: %{
        "NextToken" => String.t(),
        "PolicyList" => list(policy_summary()())
      }
      
  """
  @type list_policies_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ec2_create_route_table_action() :: %{
        "Description" => String.t(),
        "VpcId" => action_target()
      }
      
  """
  @type ec2_create_route_table_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stateful_engine_options() :: %{
        "RuleOrder" => list(any()),
        "StreamExceptionPolicy" => list(any())
      }
      
  """
  @type stateful_engine_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      invalid_network_acl_entries_violation() :: %{
        "CurrentAssociatedNetworkAcl" => String.t(),
        "EntryViolations" => list(entry_violation()()),
        "Subnet" => String.t(),
        "SubnetAvailabilityZone" => String.t(),
        "Vpc" => String.t()
      }
      
  """
  @type invalid_network_acl_entries_violation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      security_group_remediation_action() :: %{
        "Description" => String.t(),
        "IsDefaultAction" => boolean(),
        "RemediationActionType" => list(any()),
        "RemediationResult" => security_group_rule_description()
      }
      
  """
  @type security_group_remediation_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stateful_rule_group() :: %{
        "Override" => network_firewall_stateful_rule_group_override(),
        "Priority" => integer(),
        "ResourceId" => String.t(),
        "RuleGroupName" => String.t()
      }
      
  """
  @type stateful_rule_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_third_party_firewall_firewall_policies_request() :: %{
        optional("NextToken") => String.t(),
        required("MaxResults") => integer(),
        required("ThirdPartyFirewall") => list(any())
      }
      
  """
  @type list_third_party_firewall_firewall_policies_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_member_accounts_response() :: %{
        "MemberAccounts" => list(String.t()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_member_accounts_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_policies_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_policies_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_policy_request() :: %{
        required("PolicyId") => String.t()
      }
      
  """
  @type get_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_resource_set_resources_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("Identifier") => String.t()
      }
      
  """
  @type list_resource_set_resources_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_compliance_detail_request() :: %{
        required("MemberAccount") => String.t(),
        required("PolicyId") => String.t()
      }
      
  """
  @type get_compliance_detail_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_notification_channel_request() :: %{}
      
  """
  @type get_notification_channel_request() :: %{}

  @typedoc """

  ## Example:
      
      delete_resource_set_request() :: %{
        required("Identifier") => String.t()
      }
      
  """
  @type delete_resource_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_resource_set_resources_response() :: %{
        "Items" => list(resource()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_resource_set_resources_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      network_firewall_unexpected_gateway_routes_violation() :: %{
        "GatewayId" => String.t(),
        "RouteTableId" => String.t(),
        "ViolatingRoutes" => list(route()()),
        "VpcId" => String.t()
      }
      
  """
  @type network_firewall_unexpected_gateway_routes_violation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_protocols_list_request() :: %{
        optional("DefaultList") => boolean(),
        required("ListId") => String.t()
      }
      
  """
  @type get_protocols_list_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_resource_sets_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_resource_sets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_third_party_firewall_response() :: %{
        "ThirdPartyFirewallStatus" => list(any())
      }
      
  """
  @type associate_third_party_firewall_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_operation_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_operation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_admins_managing_account_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_admins_managing_account_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ec2_create_route_action() :: %{
        "Description" => String.t(),
        "DestinationCidrBlock" => String.t(),
        "DestinationIpv6CidrBlock" => String.t(),
        "DestinationPrefixListId" => String.t(),
        "GatewayId" => action_target(),
        "RouteTableId" => action_target(),
        "VpcEndpointId" => action_target()
      }
      
  """
  @type ec2_create_route_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      network_acl_icmp_type_code() :: %{
        "Code" => integer(),
        "Type" => integer()
      }
      
  """
  @type network_acl_icmp_type_code() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_violation_details_request() :: %{
        required("MemberAccount") => String.t(),
        required("PolicyId") => String.t(),
        required("ResourceId") => String.t(),
        required("ResourceType") => String.t()
      }
      
  """
  @type get_violation_details_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      compliance_violator() :: %{
        "Metadata" => map(),
        "ResourceId" => String.t(),
        "ResourceType" => String.t(),
        "ViolationReason" => list(any())
      }
      
  """
  @type compliance_violator() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_admin_account_request() :: %{
        required("AdminAccount") => String.t()
      }
      
  """
  @type associate_admin_account_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      network_firewall_invalid_route_configuration_violation() :: %{
        "ActualFirewallEndpoint" => String.t(),
        "ActualFirewallSubnetId" => String.t(),
        "ActualFirewallSubnetRoutes" => list(route()()),
        "ActualInternetGatewayRoutes" => list(route()()),
        "AffectedSubnets" => list(String.t()()),
        "CurrentFirewallSubnetRouteTable" => String.t(),
        "CurrentInternetGatewayRouteTable" => String.t(),
        "ExpectedFirewallEndpoint" => String.t(),
        "ExpectedFirewallSubnetId" => String.t(),
        "ExpectedFirewallSubnetRoutes" => list(expected_route()()),
        "ExpectedInternetGatewayRoutes" => list(expected_route()()),
        "InternetGatewayId" => String.t(),
        "IsRouteTableUsedInDifferentAZ" => boolean(),
        "RouteTableId" => String.t(),
        "ViolatingRoute" => route(),
        "VpcId" => String.t()
      }
      
  """
  @type network_firewall_invalid_route_configuration_violation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_notification_channel_response() :: %{
        "SnsRoleName" => String.t(),
        "SnsTopicArn" => String.t()
      }
      
  """
  @type get_notification_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      network_firewall_policy_description() :: %{
        "StatefulDefaultActions" => list(String.t()()),
        "StatefulEngineOptions" => stateful_engine_options(),
        "StatefulRuleGroups" => list(stateful_rule_group()()),
        "StatelessCustomActions" => list(String.t()()),
        "StatelessDefaultActions" => list(String.t()()),
        "StatelessFragmentDefaultActions" => list(String.t()()),
        "StatelessRuleGroups" => list(stateless_rule_group()())
      }
      
  """
  @type network_firewall_policy_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      network_firewall_unexpected_firewall_routes_violation() :: %{
        "FirewallEndpoint" => String.t(),
        "FirewallSubnetId" => String.t(),
        "RouteTableId" => String.t(),
        "ViolatingRoutes" => list(route()()),
        "VpcId" => String.t()
      }
      
  """
  @type network_firewall_unexpected_firewall_routes_violation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dns_duplicate_rule_group_violation() :: %{
        "ViolationTarget" => String.t(),
        "ViolationTargetDescription" => String.t()
      }
      
  """
  @type dns_duplicate_rule_group_violation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      violation_detail() :: %{
        "MemberAccount" => String.t(),
        "PolicyId" => String.t(),
        "ResourceDescription" => String.t(),
        "ResourceId" => String.t(),
        "ResourceTags" => list(tag()()),
        "ResourceType" => String.t(),
        "ResourceViolations" => list(resource_violation()())
      }
      
  """
  @type violation_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("ResourceArn") => String.t(),
        required("TagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      network_firewall_missing_subnet_violation() :: %{
        "AvailabilityZone" => String.t(),
        "TargetViolationReason" => String.t(),
        "VPC" => String.t(),
        "ViolationTarget" => String.t()
      }
      
  """
  @type network_firewall_missing_subnet_violation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_protocols_lists_response() :: %{
        "NextToken" => String.t(),
        "ProtocolsLists" => list(protocols_list_data_summary()())
      }
      
  """
  @type list_protocols_lists_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_apps_list_response() :: %{
        "AppsList" => apps_list_data(),
        "AppsListArn" => String.t()
      }
      
  """
  @type get_apps_list_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_admin_account_response() :: %{
        "AdminAccount" => String.t(),
        "RoleStatus" => list(any())
      }
      
  """
  @type get_admin_account_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      network_firewall_policy() :: %{
        "FirewallDeploymentModel" => list(any())
      }
      
  """
  @type network_firewall_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      apps_list_data() :: %{
        "AppsList" => list(app()()),
        "CreateTime" => non_neg_integer(),
        "LastUpdateTime" => non_neg_integer(),
        "ListId" => String.t(),
        "ListName" => String.t(),
        "ListUpdateToken" => String.t(),
        "PreviousAppsList" => map()
      }
      
  """
  @type apps_list_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_compliance_detail_response() :: %{
        "PolicyComplianceDetail" => policy_compliance_detail()
      }
      
  """
  @type get_compliance_detail_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_protocols_list_request() :: %{
        optional("TagList") => list(tag()()),
        required("ProtocolsList") => protocols_list_data()
      }
      
  """
  @type put_protocols_list_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_network_acl_entries_action() :: %{
        "Description" => String.t(),
        "FMSCanRemediate" => boolean(),
        "NetworkAclEntriesToBeDeleted" => list(entry_description()()),
        "NetworkAclId" => action_target()
      }
      
  """
  @type delete_network_acl_entries_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_third_party_firewall_request() :: %{
        required("ThirdPartyFirewall") => list(any())
      }
      
  """
  @type associate_third_party_firewall_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remediation_action() :: %{
        "CreateNetworkAclAction" => create_network_acl_action(),
        "CreateNetworkAclEntriesAction" => create_network_acl_entries_action(),
        "DeleteNetworkAclEntriesAction" => delete_network_acl_entries_action(),
        "Description" => String.t(),
        "EC2AssociateRouteTableAction" => ec2_associate_route_table_action(),
        "EC2CopyRouteTableAction" => ec2_copy_route_table_action(),
        "EC2CreateRouteAction" => ec2_create_route_action(),
        "EC2CreateRouteTableAction" => ec2_create_route_table_action(),
        "EC2DeleteRouteAction" => ec2_delete_route_action(),
        "EC2ReplaceRouteAction" => ec2_replace_route_action(),
        "EC2ReplaceRouteTableAssociationAction" => ec2_replace_route_table_association_action(),
        "FMSPolicyUpdateFirewallCreationConfigAction" => f_m_s_policy_update_firewall_creation_config_action(),
        "ReplaceNetworkAclAssociationAction" => replace_network_acl_association_action()
      }
      
  """
  @type remediation_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_discovered_resources_response() :: %{
        "Items" => list(discovered_resource()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_discovered_resources_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      third_party_firewall_firewall_policy() :: %{
        "FirewallPolicyId" => String.t(),
        "FirewallPolicyName" => String.t()
      }
      
  """
  @type third_party_firewall_firewall_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      third_party_firewall_policy() :: %{
        "FirewallDeploymentModel" => list(any())
      }
      
  """
  @type third_party_firewall_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_admin_accounts_for_organization_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_admin_accounts_for_organization_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      network_firewall_internet_traffic_not_inspected_violation() :: %{
        "ActualFirewallSubnetRoutes" => list(route()()),
        "ActualInternetGatewayRoutes" => list(route()()),
        "CurrentFirewallSubnetRouteTable" => String.t(),
        "CurrentInternetGatewayRouteTable" => String.t(),
        "ExpectedFirewallEndpoint" => String.t(),
        "ExpectedFirewallSubnetRoutes" => list(expected_route()()),
        "ExpectedInternetGatewayRoutes" => list(expected_route()()),
        "FirewallSubnetId" => String.t(),
        "InternetGatewayId" => String.t(),
        "IsRouteTableUsedInDifferentAZ" => boolean(),
        "RouteTableId" => String.t(),
        "SubnetAvailabilityZone" => String.t(),
        "SubnetId" => String.t(),
        "ViolatingRoutes" => list(route()()),
        "VpcId" => String.t()
      }
      
  """
  @type network_firewall_internet_traffic_not_inspected_violation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      replace_network_acl_association_action() :: %{
        "AssociationId" => action_target(),
        "Description" => String.t(),
        "FMSCanRemediate" => boolean(),
        "NetworkAclId" => action_target()
      }
      
  """
  @type replace_network_acl_association_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      apps_list_data_summary() :: %{
        "AppsList" => list(app()()),
        "ListArn" => String.t(),
        "ListId" => String.t(),
        "ListName" => String.t()
      }
      
  """
  @type apps_list_data_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      network_firewall_stateful_rule_group_override() :: %{
        "Action" => list(any())
      }
      
  """
  @type network_firewall_stateful_rule_group_override() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_violation() :: %{
        "AwsEc2InstanceViolation" => aws_ec2_instance_violation(),
        "AwsEc2NetworkInterfaceViolation" => aws_ec2_network_interface_violation(),
        "AwsVPCSecurityGroupViolation" => aws_vpc_security_group_violation(),
        "DnsDuplicateRuleGroupViolation" => dns_duplicate_rule_group_violation(),
        "DnsRuleGroupLimitExceededViolation" => dns_rule_group_limit_exceeded_violation(),
        "DnsRuleGroupPriorityConflictViolation" => dns_rule_group_priority_conflict_violation(),
        "FirewallSubnetIsOutOfScopeViolation" => firewall_subnet_is_out_of_scope_violation(),
        "FirewallSubnetMissingVPCEndpointViolation" => firewall_subnet_missing_vpcendpoint_violation(),
        "InvalidNetworkAclEntriesViolation" => invalid_network_acl_entries_violation(),
        "NetworkFirewallBlackHoleRouteDetectedViolation" => network_firewall_black_hole_route_detected_violation(),
        "NetworkFirewallInternetTrafficNotInspectedViolation" => network_firewall_internet_traffic_not_inspected_violation(),
        "NetworkFirewallInvalidRouteConfigurationViolation" => network_firewall_invalid_route_configuration_violation(),
        "NetworkFirewallMissingExpectedRTViolation" => network_firewall_missing_expected_r_t_violation(),
        "NetworkFirewallMissingExpectedRoutesViolation" => network_firewall_missing_expected_routes_violation(),
        "NetworkFirewallMissingFirewallViolation" => network_firewall_missing_firewall_violation(),
        "NetworkFirewallMissingSubnetViolation" => network_firewall_missing_subnet_violation(),
        "NetworkFirewallPolicyModifiedViolation" => network_firewall_policy_modified_violation(),
        "NetworkFirewallUnexpectedFirewallRoutesViolation" => network_firewall_unexpected_firewall_routes_violation(),
        "NetworkFirewallUnexpectedGatewayRoutesViolation" => network_firewall_unexpected_gateway_routes_violation(),
        "PossibleRemediationActions" => possible_remediation_actions(),
        "RouteHasOutOfScopeEndpointViolation" => route_has_out_of_scope_endpoint_violation(),
        "ThirdPartyFirewallMissingExpectedRouteTableViolation" => third_party_firewall_missing_expected_route_table_violation(),
        "ThirdPartyFirewallMissingFirewallViolation" => third_party_firewall_missing_firewall_violation(),
        "ThirdPartyFirewallMissingSubnetViolation" => third_party_firewall_missing_subnet_violation()
      }
      
  """
  @type resource_violation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      region_scope() :: %{
        "AllRegionsEnabled" => boolean(),
        "Regions" => list(String.t()())
      }
      
  """
  @type region_scope() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ec2_associate_route_table_action() :: %{
        "Description" => String.t(),
        "GatewayId" => action_target(),
        "RouteTableId" => action_target(),
        "SubnetId" => action_target()
      }
      
  """
  @type ec2_associate_route_table_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remediation_action_with_order() :: %{
        "Order" => integer(),
        "RemediationAction" => remediation_action()
      }
      
  """
  @type remediation_action_with_order() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      entry_description() :: %{
        "EntryDetail" => network_acl_entry(),
        "EntryRuleNumber" => integer(),
        "EntryType" => list(any())
      }
      
  """
  @type entry_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dns_rule_group_priority_conflict_violation() :: %{
        "ConflictingPolicyId" => String.t(),
        "ConflictingPriority" => integer(),
        "UnavailablePriorities" => list(integer()()),
        "ViolationTarget" => String.t(),
        "ViolationTargetDescription" => String.t()
      }
      
  """
  @type dns_rule_group_priority_conflict_violation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_violation_details_response() :: %{
        "ViolationDetail" => violation_detail()
      }
      
  """
  @type get_violation_details_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ec2_replace_route_table_association_action() :: %{
        "AssociationId" => action_target(),
        "Description" => String.t(),
        "RouteTableId" => action_target()
      }
      
  """
  @type ec2_replace_route_table_association_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stateless_rule_group() :: %{
        "Priority" => integer(),
        "ResourceId" => String.t(),
        "RuleGroupName" => String.t()
      }
      
  """
  @type stateless_rule_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_protocols_lists_request() :: %{
        optional("DefaultLists") => boolean(),
        optional("NextToken") => String.t(),
        required("MaxResults") => integer()
      }
      
  """
  @type list_protocols_lists_request() :: %{String.t() => any()}

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
      
      entry_violation() :: %{
        "ActualEvaluationOrder" => String.t(),
        "EntriesWithConflicts" => list(entry_description()()),
        "EntryAtExpectedEvaluationOrder" => entry_description(),
        "EntryViolationReasons" => list(list(any())()),
        "ExpectedEntry" => entry_description(),
        "ExpectedEvaluationOrder" => String.t()
      }
      
  """
  @type entry_violation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      partial_match() :: %{
        "Reference" => String.t(),
        "TargetViolationReasons" => list(String.t()())
      }
      
  """
  @type partial_match() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      possible_remediation_action() :: %{
        "Description" => String.t(),
        "IsDefaultAction" => boolean(),
        "OrderedRemediationActions" => list(remediation_action_with_order()())
      }
      
  """
  @type possible_remediation_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      network_firewall_policy_modified_violation() :: %{
        "CurrentPolicyDescription" => network_firewall_policy_description(),
        "ExpectedPolicyDescription" => network_firewall_policy_description(),
        "ViolationTarget" => String.t()
      }
      
  """
  @type network_firewall_policy_modified_violation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_policy_response() :: %{
        "Policy" => policy(),
        "PolicyArn" => String.t()
      }
      
  """
  @type put_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_apps_list_request() :: %{
        optional("TagList") => list(tag()()),
        required("AppsList") => apps_list_data()
      }
      
  """
  @type put_apps_list_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_admins_managing_account_response() :: %{
        "AdminAccounts" => list(String.t()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_admins_managing_account_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_apps_lists_request() :: %{
        optional("DefaultLists") => boolean(),
        optional("NextToken") => String.t(),
        required("MaxResults") => integer()
      }
      
  """
  @type list_apps_lists_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_resource_set_request() :: %{
        required("Identifier") => String.t()
      }
      
  """
  @type get_resource_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_discovered_resources_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("MemberAccountIds") => list(String.t()()),
        required("ResourceType") => String.t()
      }
      
  """
  @type list_discovered_resources_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      route() :: %{
        "Destination" => String.t(),
        "DestinationType" => list(any()),
        "Target" => String.t(),
        "TargetType" => list(any())
      }
      
  """
  @type route() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      organizational_unit_scope() :: %{
        "AllOrganizationalUnitsEnabled" => boolean(),
        "ExcludeSpecifiedOrganizationalUnits" => boolean(),
        "OrganizationalUnits" => list(String.t()())
      }
      
  """
  @type organizational_unit_scope() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_network_acl_entries_action() :: %{
        "Description" => String.t(),
        "FMSCanRemediate" => boolean(),
        "NetworkAclEntriesToBeCreated" => list(entry_description()()),
        "NetworkAclId" => action_target()
      }
      
  """
  @type create_network_acl_entries_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_compliance_status_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("PolicyId") => String.t()
      }
      
  """
  @type list_compliance_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_input_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_input_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "TagList" => list(tag()())
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_disassociate_resource_request() :: %{
        required("Items") => list(String.t()()),
        required("ResourceSetIdentifier") => String.t()
      }
      
  """
  @type batch_disassociate_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      admin_scope() :: %{
        "AccountScope" => account_scope(),
        "OrganizationalUnitScope" => organizational_unit_scope(),
        "PolicyTypeScope" => policy_type_scope(),
        "RegionScope" => region_scope()
      }
      
  """
  @type admin_scope() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      action_target() :: %{
        "Description" => String.t(),
        "ResourceId" => String.t()
      }
      
  """
  @type action_target() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_network_acl_action() :: %{
        "Description" => String.t(),
        "FMSCanRemediate" => boolean(),
        "Vpc" => action_target()
      }
      
  """
  @type create_network_acl_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      possible_remediation_actions() :: %{
        "Actions" => list(possible_remediation_action()()),
        "Description" => String.t()
      }
      
  """
  @type possible_remediation_actions() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      policy_compliance_status() :: %{
        "EvaluationResults" => list(evaluation_result()()),
        "IssueInfoMap" => map(),
        "LastUpdated" => non_neg_integer(),
        "MemberAccount" => String.t(),
        "PolicyId" => String.t(),
        "PolicyName" => String.t(),
        "PolicyOwner" => String.t()
      }
      
  """
  @type policy_compliance_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_notification_channel_request() :: %{
        required("SnsRoleName") => String.t(),
        required("SnsTopicArn") => String.t()
      }
      
  """
  @type put_notification_channel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_protection_status_request() :: %{
        optional("EndTime") => non_neg_integer(),
        optional("MaxResults") => integer(),
        optional("MemberAccountId") => String.t(),
        optional("NextToken") => String.t(),
        optional("StartTime") => non_neg_integer(),
        required("PolicyId") => String.t()
      }
      
  """
  @type get_protection_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      f_m_s_policy_update_firewall_creation_config_action() :: %{
        "Description" => String.t(),
        "FirewallCreationConfig" => String.t()
      }
      
  """
  @type f_m_s_policy_update_firewall_creation_config_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_policy_response() :: %{
        "Policy" => policy(),
        "PolicyArn" => String.t()
      }
      
  """
  @type get_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      aws_ec2_instance_violation() :: %{
        "AwsEc2NetworkInterfaceViolations" => list(aws_ec2_network_interface_violation()()),
        "ViolationTarget" => String.t()
      }
      
  """
  @type aws_ec2_instance_violation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ec2_copy_route_table_action() :: %{
        "Description" => String.t(),
        "RouteTableId" => action_target(),
        "VpcId" => action_target()
      }
      
  """
  @type ec2_copy_route_table_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      network_firewall_missing_firewall_violation() :: %{
        "AvailabilityZone" => String.t(),
        "TargetViolationReason" => String.t(),
        "VPC" => String.t(),
        "ViolationTarget" => String.t()
      }
      
  """
  @type network_firewall_missing_firewall_violation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_admin_account_request() :: %{
        optional("AdminScope") => admin_scope(),
        required("AdminAccount") => String.t()
      }
      
  """
  @type put_admin_account_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_resource_set_response() :: %{
        "ResourceSet" => resource_set(),
        "ResourceSetArn" => String.t()
      }
      
  """
  @type get_resource_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_resource_sets_response() :: %{
        "NextToken" => String.t(),
        "ResourceSets" => list(resource_set_summary()())
      }
      
  """
  @type list_resource_sets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      policy_option() :: %{
        "NetworkAclCommonPolicy" => network_acl_common_policy(),
        "NetworkFirewallPolicy" => network_firewall_policy(),
        "ThirdPartyFirewallPolicy" => third_party_firewall_policy()
      }
      
  """
  @type policy_option() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_admin_scope_request() :: %{
        required("AdminAccount") => String.t()
      }
      
  """
  @type get_admin_scope_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_policy_request() :: %{
        optional("DeleteAllPolicyResources") => boolean(),
        required("PolicyId") => String.t()
      }
      
  """
  @type delete_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_tag() :: %{
        "Key" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type resource_tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_type_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_type_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      discovered_resource() :: %{
        "AccountId" => String.t(),
        "Name" => String.t(),
        "Type" => String.t(),
        "URI" => String.t()
      }
      
  """
  @type discovered_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      policy() :: %{
        "DeleteUnusedFMManagedResources" => boolean(),
        "ExcludeMap" => map(),
        "ExcludeResourceTags" => boolean(),
        "IncludeMap" => map(),
        "PolicyDescription" => String.t(),
        "PolicyId" => String.t(),
        "PolicyName" => String.t(),
        "PolicyStatus" => list(any()),
        "PolicyUpdateToken" => String.t(),
        "RemediationEnabled" => boolean(),
        "ResourceSetIds" => list(String.t()()),
        "ResourceTags" => list(resource_tag()()),
        "ResourceType" => String.t(),
        "ResourceTypeList" => list(String.t()()),
        "SecurityServicePolicyData" => security_service_policy_data()
      }
      
  """
  @type policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      aws_vpc_security_group_violation() :: %{
        "PartialMatches" => list(partial_match()()),
        "PossibleSecurityGroupRemediationActions" => list(security_group_remediation_action()()),
        "ViolationTarget" => String.t(),
        "ViolationTargetDescription" => String.t()
      }
      
  """
  @type aws_vpc_security_group_violation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_third_party_firewall_firewall_policies_response() :: %{
        "NextToken" => String.t(),
        "ThirdPartyFirewallFirewallPolicies" => list(third_party_firewall_firewall_policy()())
      }
      
  """
  @type list_third_party_firewall_firewall_policies_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_resource_set_response() :: %{
        "ResourceSet" => resource_set(),
        "ResourceSetArn" => String.t()
      }
      
  """
  @type put_resource_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      network_acl_port_range() :: %{
        "From" => integer(),
        "To" => integer()
      }
      
  """
  @type network_acl_port_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_set() :: %{
        "Description" => String.t(),
        "Id" => String.t(),
        "LastUpdateTime" => non_neg_integer(),
        "Name" => String.t(),
        "ResourceSetStatus" => list(any()),
        "ResourceTypeList" => list(String.t()()),
        "UpdateToken" => String.t()
      }
      
  """
  @type resource_set() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ec2_delete_route_action() :: %{
        "Description" => String.t(),
        "DestinationCidrBlock" => String.t(),
        "DestinationIpv6CidrBlock" => String.t(),
        "DestinationPrefixListId" => String.t(),
        "RouteTableId" => action_target()
      }
      
  """
  @type ec2_delete_route_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      protocols_list_data() :: %{
        "CreateTime" => non_neg_integer(),
        "LastUpdateTime" => non_neg_integer(),
        "ListId" => String.t(),
        "ListName" => String.t(),
        "ListUpdateToken" => String.t(),
        "PreviousProtocolsList" => map(),
        "ProtocolsList" => list(String.t()())
      }
      
  """
  @type protocols_list_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      network_firewall_black_hole_route_detected_violation() :: %{
        "RouteTableId" => String.t(),
        "ViolatingRoutes" => list(route()()),
        "ViolationTarget" => String.t(),
        "VpcId" => String.t()
      }
      
  """
  @type network_firewall_black_hole_route_detected_violation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      resource_set_summary() :: %{
        "Description" => String.t(),
        "Id" => String.t(),
        "LastUpdateTime" => non_neg_integer(),
        "Name" => String.t(),
        "ResourceSetStatus" => list(any())
      }
      
  """
  @type resource_set_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_apps_list_request() :: %{
        optional("DefaultList") => boolean(),
        required("ListId") => String.t()
      }
      
  """
  @type get_apps_list_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ec2_replace_route_action() :: %{
        "Description" => String.t(),
        "DestinationCidrBlock" => String.t(),
        "DestinationIpv6CidrBlock" => String.t(),
        "DestinationPrefixListId" => String.t(),
        "GatewayId" => action_target(),
        "RouteTableId" => action_target()
      }
      
  """
  @type ec2_replace_route_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("ResourceArn") => String.t()
      }
      
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      expected_route() :: %{
        "AllowedTargets" => list(String.t()()),
        "ContributingSubnets" => list(String.t()()),
        "IpV4Cidr" => String.t(),
        "IpV6Cidr" => String.t(),
        "PrefixListId" => String.t(),
        "RouteTableId" => String.t()
      }
      
  """
  @type expected_route() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      failed_item() :: %{
        "Reason" => list(any()),
        "URI" => String.t()
      }
      
  """
  @type failed_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      firewall_subnet_missing_vpcendpoint_violation() :: %{
        "FirewallSubnetId" => String.t(),
        "SubnetAvailabilityZone" => String.t(),
        "SubnetAvailabilityZoneId" => String.t(),
        "VpcId" => String.t()
      }
      
  """
  @type firewall_subnet_missing_vpcendpoint_violation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      policy_compliance_detail() :: %{
        "EvaluationLimitExceeded" => boolean(),
        "ExpiredAt" => non_neg_integer(),
        "IssueInfoMap" => map(),
        "MemberAccount" => String.t(),
        "PolicyId" => String.t(),
        "PolicyOwner" => String.t(),
        "Violators" => list(compliance_violator()())
      }
      
  """
  @type policy_compliance_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_third_party_firewall_association_status_response() :: %{
        "MarketplaceOnboardingStatus" => list(any()),
        "ThirdPartyFirewallStatus" => list(any())
      }
      
  """
  @type get_third_party_firewall_association_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      admin_account_summary() :: %{
        "AdminAccount" => String.t(),
        "DefaultAdmin" => boolean(),
        "Status" => list(any())
      }
      
  """
  @type admin_account_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_apps_list_request() :: %{
        required("ListId") => String.t()
      }
      
  """
  @type delete_apps_list_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      policy_summary() :: %{
        "DeleteUnusedFMManagedResources" => boolean(),
        "PolicyArn" => String.t(),
        "PolicyId" => String.t(),
        "PolicyName" => String.t(),
        "PolicyStatus" => list(any()),
        "RemediationEnabled" => boolean(),
        "ResourceType" => String.t(),
        "SecurityServiceType" => list(any())
      }
      
  """
  @type policy_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      aws_ec2_network_interface_violation() :: %{
        "ViolatingSecurityGroups" => list(String.t()()),
        "ViolationTarget" => String.t()
      }
      
  """
  @type aws_ec2_network_interface_violation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_third_party_firewall_response() :: %{
        "ThirdPartyFirewallStatus" => list(any())
      }
      
  """
  @type disassociate_third_party_firewall_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_associate_resource_response() :: %{
        "FailedItems" => list(failed_item()()),
        "ResourceSetIdentifier" => String.t()
      }
      
  """
  @type batch_associate_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      network_acl_common_policy() :: %{
        "NetworkAclEntrySet" => network_acl_entry_set()
      }
      
  """
  @type network_acl_common_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_admin_account_request() :: %{}
      
  """
  @type get_admin_account_request() :: %{}

  @typedoc """

  ## Example:
      
      account_scope() :: %{
        "Accounts" => list(String.t()()),
        "AllAccountsEnabled" => boolean(),
        "ExcludeSpecifiedAccounts" => boolean()
      }
      
  """
  @type account_scope() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_third_party_firewall_request() :: %{
        required("ThirdPartyFirewall") => list(any())
      }
      
  """
  @type disassociate_third_party_firewall_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_protocols_list_request() :: %{
        required("ListId") => String.t()
      }
      
  """
  @type delete_protocols_list_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      evaluation_result() :: %{
        "ComplianceStatus" => list(any()),
        "EvaluationLimitExceeded" => boolean(),
        "ViolatorCount" => float()
      }
      
  """
  @type evaluation_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_policy_request() :: %{
        optional("TagList") => list(tag()()),
        required("Policy") => policy()
      }
      
  """
  @type put_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      security_service_policy_data() :: %{
        "ManagedServiceData" => String.t(),
        "PolicyOption" => policy_option(),
        "Type" => list(any())
      }
      
  """
  @type security_service_policy_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_resource_set_request() :: %{
        optional("TagList") => list(tag()()),
        required("ResourceSet") => resource_set()
      }
      
  """
  @type put_resource_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_protocols_list_response() :: %{
        "ProtocolsList" => protocols_list_data(),
        "ProtocolsListArn" => String.t()
      }
      
  """
  @type put_protocols_list_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_admin_scope_response() :: %{
        "AdminScope" => admin_scope(),
        "Status" => list(any())
      }
      
  """
  @type get_admin_scope_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      network_firewall_missing_expected_r_t_violation() :: %{
        "AvailabilityZone" => String.t(),
        "CurrentRouteTable" => String.t(),
        "ExpectedRouteTable" => String.t(),
        "VPC" => String.t(),
        "ViolationTarget" => String.t()
      }
      
  """
  @type network_firewall_missing_expected_r_t_violation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_protocols_list_response() :: %{
        "ProtocolsList" => protocols_list_data(),
        "ProtocolsListArn" => String.t()
      }
      
  """
  @type get_protocols_list_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_admin_accounts_for_organization_response() :: %{
        "AdminAccounts" => list(admin_account_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_admin_accounts_for_organization_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_error_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type internal_error_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      third_party_firewall_missing_firewall_violation() :: %{
        "AvailabilityZone" => String.t(),
        "TargetViolationReason" => String.t(),
        "VPC" => String.t(),
        "ViolationTarget" => String.t()
      }
      
  """
  @type third_party_firewall_missing_firewall_violation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      network_firewall_missing_expected_routes_violation() :: %{
        "ExpectedRoutes" => list(expected_route()()),
        "ViolationTarget" => String.t(),
        "VpcId" => String.t()
      }
      
  """
  @type network_firewall_missing_expected_routes_violation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      policy_type_scope() :: %{
        "AllPolicyTypesEnabled" => boolean(),
        "PolicyTypes" => list(list(any())())
      }
      
  """
  @type policy_type_scope() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_third_party_firewall_association_status_request() :: %{
        required("ThirdPartyFirewall") => list(any())
      }
      
  """
  @type get_third_party_firewall_association_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      third_party_firewall_missing_subnet_violation() :: %{
        "AvailabilityZone" => String.t(),
        "TargetViolationReason" => String.t(),
        "VPC" => String.t(),
        "ViolationTarget" => String.t()
      }
      
  """
  @type third_party_firewall_missing_subnet_violation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_notification_channel_request() :: %{}
      
  """
  @type delete_notification_channel_request() :: %{}

  @typedoc """

  ## Example:
      
      list_compliance_status_response() :: %{
        "NextToken" => String.t(),
        "PolicyComplianceStatusList" => list(policy_compliance_status()())
      }
      
  """
  @type list_compliance_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_apps_list_response() :: %{
        "AppsList" => apps_list_data(),
        "AppsListArn" => String.t()
      }
      
  """
  @type put_apps_list_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource() :: %{
        "AccountId" => String.t(),
        "URI" => String.t()
      }
      
  """
  @type resource() :: %{String.t() => any()}

  @type associate_admin_account_errors() ::
          internal_error_exception()
          | limit_exceeded_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | invalid_operation_exception()

  @type associate_third_party_firewall_errors() ::
          internal_error_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | invalid_operation_exception()

  @type batch_associate_resource_errors() ::
          internal_error_exception()
          | limit_exceeded_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | invalid_operation_exception()

  @type batch_disassociate_resource_errors() ::
          internal_error_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | invalid_operation_exception()

  @type delete_apps_list_errors() ::
          internal_error_exception()
          | resource_not_found_exception()
          | invalid_operation_exception()

  @type delete_notification_channel_errors() ::
          internal_error_exception()
          | resource_not_found_exception()
          | invalid_operation_exception()

  @type delete_policy_errors() ::
          internal_error_exception()
          | limit_exceeded_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | invalid_operation_exception()

  @type delete_protocols_list_errors() ::
          internal_error_exception()
          | resource_not_found_exception()
          | invalid_operation_exception()

  @type delete_resource_set_errors() ::
          internal_error_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | invalid_operation_exception()

  @type disassociate_admin_account_errors() ::
          internal_error_exception()
          | resource_not_found_exception()
          | invalid_operation_exception()

  @type disassociate_third_party_firewall_errors() ::
          internal_error_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | invalid_operation_exception()

  @type get_admin_account_errors() ::
          internal_error_exception()
          | resource_not_found_exception()
          | invalid_operation_exception()

  @type get_admin_scope_errors() ::
          internal_error_exception()
          | limit_exceeded_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | invalid_operation_exception()

  @type get_apps_list_errors() ::
          internal_error_exception()
          | resource_not_found_exception()
          | invalid_operation_exception()

  @type get_compliance_detail_errors() ::
          internal_error_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | invalid_operation_exception()

  @type get_notification_channel_errors() ::
          internal_error_exception()
          | resource_not_found_exception()
          | invalid_operation_exception()

  @type get_policy_errors() ::
          internal_error_exception()
          | invalid_type_exception()
          | resource_not_found_exception()
          | invalid_operation_exception()

  @type get_protection_status_errors() ::
          internal_error_exception() | invalid_input_exception() | resource_not_found_exception()

  @type get_protocols_list_errors() ::
          internal_error_exception()
          | resource_not_found_exception()
          | invalid_operation_exception()

  @type get_resource_set_errors() ::
          internal_error_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | invalid_operation_exception()

  @type get_third_party_firewall_association_status_errors() ::
          internal_error_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | invalid_operation_exception()

  @type get_violation_details_errors() ::
          internal_error_exception() | invalid_input_exception() | resource_not_found_exception()

  @type list_admin_accounts_for_organization_errors() ::
          internal_error_exception()
          | limit_exceeded_exception()
          | resource_not_found_exception()
          | invalid_operation_exception()

  @type list_admins_managing_account_errors() ::
          internal_error_exception() | invalid_input_exception() | resource_not_found_exception()

  @type list_apps_lists_errors() ::
          internal_error_exception()
          | limit_exceeded_exception()
          | resource_not_found_exception()
          | invalid_operation_exception()

  @type list_compliance_status_errors() ::
          internal_error_exception() | resource_not_found_exception()

  @type list_discovered_resources_errors() ::
          internal_error_exception() | invalid_input_exception() | invalid_operation_exception()

  @type list_member_accounts_errors() ::
          internal_error_exception() | resource_not_found_exception()

  @type list_policies_errors() ::
          internal_error_exception()
          | limit_exceeded_exception()
          | resource_not_found_exception()
          | invalid_operation_exception()

  @type list_protocols_lists_errors() ::
          internal_error_exception()
          | resource_not_found_exception()
          | invalid_operation_exception()

  @type list_resource_set_resources_errors() ::
          internal_error_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | invalid_operation_exception()

  @type list_resource_sets_errors() ::
          internal_error_exception() | invalid_input_exception() | invalid_operation_exception()

  @type list_tags_for_resource_errors() ::
          internal_error_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | invalid_operation_exception()

  @type list_third_party_firewall_firewall_policies_errors() ::
          internal_error_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | invalid_operation_exception()

  @type put_admin_account_errors() ::
          internal_error_exception()
          | limit_exceeded_exception()
          | invalid_input_exception()
          | invalid_operation_exception()

  @type put_apps_list_errors() ::
          internal_error_exception()
          | limit_exceeded_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | invalid_operation_exception()

  @type put_notification_channel_errors() ::
          internal_error_exception()
          | resource_not_found_exception()
          | invalid_operation_exception()

  @type put_policy_errors() ::
          internal_error_exception()
          | limit_exceeded_exception()
          | invalid_type_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | invalid_operation_exception()

  @type put_protocols_list_errors() ::
          internal_error_exception()
          | limit_exceeded_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | invalid_operation_exception()

  @type put_resource_set_errors() ::
          internal_error_exception()
          | limit_exceeded_exception()
          | invalid_input_exception()
          | invalid_operation_exception()

  @type tag_resource_errors() ::
          internal_error_exception()
          | limit_exceeded_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | invalid_operation_exception()

  @type untag_resource_errors() ::
          internal_error_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | invalid_operation_exception()

  def metadata do
    %{
      api_version: "2018-01-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "fms",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "FMS",
      signature_version: "v4",
      signing_name: "fms",
      target_prefix: "AWSFMS_20180101"
    }
  end

  @doc """
  Sets a Firewall Manager default administrator account.

  The Firewall Manager default administrator account can manage third-party
  firewalls and has full administrative scope that allows administration of all
  policy types, accounts, organizational units, and Regions. This account must be
  a member account of the organization in Organizations whose resources you want
  to protect.

  For information about working with Firewall Manager administrator accounts, see
  [Managing Firewall Manager administrators](https://docs.aws.amazon.com/organizations/latest/userguide/fms-administrators.html)
  in the *Firewall Manager Developer Guide*.
  """
  @spec associate_admin_account(map(), associate_admin_account_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_admin_account_errors()}
  def associate_admin_account(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssociateAdminAccount", input, options)
  end

  @doc """
  Sets the Firewall Manager policy administrator as a tenant administrator of a
  third-party firewall service.

  A tenant is an instance of the third-party firewall service that's associated
  with your Amazon Web Services customer account.
  """
  @spec associate_third_party_firewall(map(), associate_third_party_firewall_request(), list()) ::
          {:ok, associate_third_party_firewall_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_third_party_firewall_errors()}
  def associate_third_party_firewall(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssociateThirdPartyFirewall", input, options)
  end

  @doc """
  Associate resources to a Firewall Manager resource set.
  """
  @spec batch_associate_resource(map(), batch_associate_resource_request(), list()) ::
          {:ok, batch_associate_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_associate_resource_errors()}
  def batch_associate_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchAssociateResource", input, options)
  end

  @doc """
  Disassociates resources from a Firewall Manager resource set.
  """
  @spec batch_disassociate_resource(map(), batch_disassociate_resource_request(), list()) ::
          {:ok, batch_disassociate_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_disassociate_resource_errors()}
  def batch_disassociate_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchDisassociateResource", input, options)
  end

  @doc """
  Permanently deletes an Firewall Manager applications list.
  """
  @spec delete_apps_list(map(), delete_apps_list_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_apps_list_errors()}
  def delete_apps_list(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteAppsList", input, options)
  end

  @doc """
  Deletes an Firewall Manager association with the IAM role and the Amazon Simple
  Notification Service (SNS) topic that is used to record Firewall Manager SNS
  logs.
  """
  @spec delete_notification_channel(map(), delete_notification_channel_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_notification_channel_errors()}
  def delete_notification_channel(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteNotificationChannel", input, options)
  end

  @doc """
  Permanently deletes an Firewall Manager policy.
  """
  @spec delete_policy(map(), delete_policy_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_policy_errors()}
  def delete_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeletePolicy", input, options)
  end

  @doc """
  Permanently deletes an Firewall Manager protocols list.
  """
  @spec delete_protocols_list(map(), delete_protocols_list_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_protocols_list_errors()}
  def delete_protocols_list(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteProtocolsList", input, options)
  end

  @doc """
  Deletes the specified `ResourceSet`.
  """
  @spec delete_resource_set(map(), delete_resource_set_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_resource_set_errors()}
  def delete_resource_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteResourceSet", input, options)
  end

  @doc """
  Disassociates an Firewall Manager administrator account.

  To set a different account as an Firewall Manager administrator, submit a
  `PutAdminAccount` request. To set an account as a default administrator account,
  you must submit an `AssociateAdminAccount` request.

  Disassociation of the default administrator account follows the first in, last
  out principle. If you are the default administrator, all Firewall Manager
  administrators within the organization must first disassociate their accounts
  before you can disassociate your account.
  """
  @spec disassociate_admin_account(map(), disassociate_admin_account_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_admin_account_errors()}
  def disassociate_admin_account(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisassociateAdminAccount", input, options)
  end

  @doc """
  Disassociates a Firewall Manager policy administrator from a third-party
  firewall tenant.

  When you call `DisassociateThirdPartyFirewall`, the third-party firewall vendor
  deletes all of the firewalls that are associated with the account.
  """
  @spec disassociate_third_party_firewall(
          map(),
          disassociate_third_party_firewall_request(),
          list()
        ) ::
          {:ok, disassociate_third_party_firewall_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_third_party_firewall_errors()}
  def disassociate_third_party_firewall(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisassociateThirdPartyFirewall", input, options)
  end

  @doc """
  Returns the Organizations account that is associated with Firewall Manager
  as the Firewall Manager default administrator.
  """
  @spec get_admin_account(map(), get_admin_account_request(), list()) ::
          {:ok, get_admin_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_admin_account_errors()}
  def get_admin_account(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetAdminAccount", input, options)
  end

  @doc """
  Returns information about the specified account's administrative scope.

  The administrative scope defines the resources that an Firewall Manager
  administrator can manage.
  """
  @spec get_admin_scope(map(), get_admin_scope_request(), list()) ::
          {:ok, get_admin_scope_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_admin_scope_errors()}
  def get_admin_scope(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetAdminScope", input, options)
  end

  @doc """
  Returns information about the specified Firewall Manager applications list.
  """
  @spec get_apps_list(map(), get_apps_list_request(), list()) ::
          {:ok, get_apps_list_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_apps_list_errors()}
  def get_apps_list(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetAppsList", input, options)
  end

  @doc """
  Returns detailed compliance information about the specified member account.

  Details
  include resources that are in and out of compliance with the specified policy.

  The reasons for resources being considered compliant depend on the Firewall
  Manager policy type.
  """
  @spec get_compliance_detail(map(), get_compliance_detail_request(), list()) ::
          {:ok, get_compliance_detail_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_compliance_detail_errors()}
  def get_compliance_detail(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetComplianceDetail", input, options)
  end

  @doc """
  Information
  about the Amazon Simple Notification Service (SNS) topic that is used to
  record Firewall Manager SNS logs.
  """
  @spec get_notification_channel(map(), get_notification_channel_request(), list()) ::
          {:ok, get_notification_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_notification_channel_errors()}
  def get_notification_channel(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetNotificationChannel", input, options)
  end

  @doc """
  Returns information about the specified Firewall Manager policy.
  """
  @spec get_policy(map(), get_policy_request(), list()) ::
          {:ok, get_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_policy_errors()}
  def get_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetPolicy", input, options)
  end

  @doc """
  If you created a Shield Advanced policy, returns policy-level attack summary
  information
  in the event of a potential DDoS attack.

  Other policy types are currently unsupported.
  """
  @spec get_protection_status(map(), get_protection_status_request(), list()) ::
          {:ok, get_protection_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_protection_status_errors()}
  def get_protection_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetProtectionStatus", input, options)
  end

  @doc """
  Returns information about the specified Firewall Manager protocols list.
  """
  @spec get_protocols_list(map(), get_protocols_list_request(), list()) ::
          {:ok, get_protocols_list_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_protocols_list_errors()}
  def get_protocols_list(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetProtocolsList", input, options)
  end

  @doc """
  Gets information about a specific resource set.
  """
  @spec get_resource_set(map(), get_resource_set_request(), list()) ::
          {:ok, get_resource_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_resource_set_errors()}
  def get_resource_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetResourceSet", input, options)
  end

  @doc """
  The onboarding status of a Firewall Manager admin account to third-party
  firewall vendor tenant.
  """
  @spec get_third_party_firewall_association_status(
          map(),
          get_third_party_firewall_association_status_request(),
          list()
        ) ::
          {:ok, get_third_party_firewall_association_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_third_party_firewall_association_status_errors()}
  def get_third_party_firewall_association_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetThirdPartyFirewallAssociationStatus", input, options)
  end

  @doc """
  Retrieves violations for a resource based on the specified Firewall Manager
  policy and Amazon Web Services account.
  """
  @spec get_violation_details(map(), get_violation_details_request(), list()) ::
          {:ok, get_violation_details_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_violation_details_errors()}
  def get_violation_details(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetViolationDetails", input, options)
  end

  @doc """
  Returns a `AdminAccounts` object that lists the Firewall Manager administrators
  within the organization that are onboarded to Firewall Manager by
  `AssociateAdminAccount`.

  This operation can be called only from the organization's management account.
  """
  @spec list_admin_accounts_for_organization(
          map(),
          list_admin_accounts_for_organization_request(),
          list()
        ) ::
          {:ok, list_admin_accounts_for_organization_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_admin_accounts_for_organization_errors()}
  def list_admin_accounts_for_organization(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAdminAccountsForOrganization", input, options)
  end

  @doc """
  Lists the accounts that are managing the specified Organizations member account.

  This is useful for any member account so that they can view the accounts who are
  managing their account. This operation only returns the managing administrators
  that have the requested account within their `AdminScope`.
  """
  @spec list_admins_managing_account(map(), list_admins_managing_account_request(), list()) ::
          {:ok, list_admins_managing_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_admins_managing_account_errors()}
  def list_admins_managing_account(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAdminsManagingAccount", input, options)
  end

  @doc """
  Returns an array of `AppsListDataSummary` objects.
  """
  @spec list_apps_lists(map(), list_apps_lists_request(), list()) ::
          {:ok, list_apps_lists_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_apps_lists_errors()}
  def list_apps_lists(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAppsLists", input, options)
  end

  @doc """
  Returns an array of `PolicyComplianceStatus` objects.

  Use
  `PolicyComplianceStatus` to get a summary of which member accounts are protected
  by the specified policy.
  """
  @spec list_compliance_status(map(), list_compliance_status_request(), list()) ::
          {:ok, list_compliance_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_compliance_status_errors()}
  def list_compliance_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListComplianceStatus", input, options)
  end

  @doc """
  Returns an array of resources in the organization's accounts that are available
  to be associated with a resource set.
  """
  @spec list_discovered_resources(map(), list_discovered_resources_request(), list()) ::
          {:ok, list_discovered_resources_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_discovered_resources_errors()}
  def list_discovered_resources(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListDiscoveredResources", input, options)
  end

  @doc """
  Returns a `MemberAccounts` object that lists the member accounts in the
  administrator's Amazon Web Services organization.

  Either an Firewall Manager administrator or the organization's management
  account can make this request.
  """
  @spec list_member_accounts(map(), list_member_accounts_request(), list()) ::
          {:ok, list_member_accounts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_member_accounts_errors()}
  def list_member_accounts(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListMemberAccounts", input, options)
  end

  @doc """
  Returns an array of `PolicySummary` objects.
  """
  @spec list_policies(map(), list_policies_request(), list()) ::
          {:ok, list_policies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_policies_errors()}
  def list_policies(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListPolicies", input, options)
  end

  @doc """
  Returns an array of `ProtocolsListDataSummary` objects.
  """
  @spec list_protocols_lists(map(), list_protocols_lists_request(), list()) ::
          {:ok, list_protocols_lists_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_protocols_lists_errors()}
  def list_protocols_lists(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListProtocolsLists", input, options)
  end

  @doc """
  Returns an array of resources that are currently associated to a resource set.
  """
  @spec list_resource_set_resources(map(), list_resource_set_resources_request(), list()) ::
          {:ok, list_resource_set_resources_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_resource_set_resources_errors()}
  def list_resource_set_resources(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListResourceSetResources", input, options)
  end

  @doc """
  Returns an array of `ResourceSetSummary` objects.
  """
  @spec list_resource_sets(map(), list_resource_sets_request(), list()) ::
          {:ok, list_resource_sets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_resource_sets_errors()}
  def list_resource_sets(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListResourceSets", input, options)
  end

  @doc """
  Retrieves the list of tags for the specified Amazon Web Services resource.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_request(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Retrieves a list of all of the third-party firewall policies that are associated
  with the third-party firewall administrator's account.
  """
  @spec list_third_party_firewall_firewall_policies(
          map(),
          list_third_party_firewall_firewall_policies_request(),
          list()
        ) ::
          {:ok, list_third_party_firewall_firewall_policies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_third_party_firewall_firewall_policies_errors()}
  def list_third_party_firewall_firewall_policies(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListThirdPartyFirewallFirewallPolicies", input, options)
  end

  @doc """
  Creates or updates an Firewall Manager administrator account.

  The account must be a member of the organization that was onboarded to Firewall
  Manager by `AssociateAdminAccount`. Only the organization's management account
  can create an Firewall Manager administrator account. When you create an
  Firewall Manager administrator account, the service checks to see if the account
  is already a delegated administrator within Organizations. If the account isn't
  a delegated administrator, Firewall Manager calls Organizations to delegate the
  account within Organizations. For more information about administrator accounts
  within Organizations, see
  [Managing the Amazon Web Services Accounts in Your Organization](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts.html).
  """
  @spec put_admin_account(map(), put_admin_account_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_admin_account_errors()}
  def put_admin_account(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutAdminAccount", input, options)
  end

  @doc """
  Creates an Firewall Manager applications list.
  """
  @spec put_apps_list(map(), put_apps_list_request(), list()) ::
          {:ok, put_apps_list_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_apps_list_errors()}
  def put_apps_list(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutAppsList", input, options)
  end

  @doc """
  Designates the IAM role and Amazon Simple Notification Service (SNS) topic that
  Firewall Manager uses to record SNS logs.

  To perform this action outside of the console, you must first configure the SNS
  topic's access policy to allow the `SnsRoleName` to publish SNS logs. If the
  `SnsRoleName` provided is a role other than the `AWSServiceRoleForFMS`
  service-linked role, this role must have a trust relationship configured to
  allow the Firewall Manager service principal `fms.amazonaws.com` to assume this
  role. For information about configuring an SNS access policy, see
  [Service roles for Firewall Manager](https://docs.aws.amazon.com/waf/latest/developerguide/fms-security_iam_service-with-iam.html#fms-security_iam_service-with-iam-roles-service)
  in the *Firewall Manager Developer Guide*.
  """
  @spec put_notification_channel(map(), put_notification_channel_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_notification_channel_errors()}
  def put_notification_channel(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutNotificationChannel", input, options)
  end

  @doc """
  Creates an Firewall Manager policy.

  A Firewall Manager policy is specific to the individual policy type. If you want
  to enforce multiple
  policy types across accounts, you can create multiple policies. You can create
  more than one
  policy for each type.

  If you add a new account to an organization that you created with Organizations,
  Firewall Manager
  automatically applies the policy to the resources in that account that are
  within scope of
  the policy.

  Firewall Manager provides the following types of policies:

    *

  **WAF policy** - This policy applies WAF web ACL
  protections to specified accounts and resources.

    *

  **Shield Advanced policy** - This policy applies Shield Advanced
  protection to specified accounts and resources.

    *

  **Security Groups policy** - This type of policy gives you
  control over security groups that are in use throughout your organization in
  Organizations and lets you enforce a baseline set of rules across your
  organization.

    *

  **Network ACL policy** - This type of policy gives you
  control over the network ACLs that are in use throughout your organization in
  Organizations and lets you enforce a baseline set of first and last network ACL
  rules across your organization.

    *

  **Network Firewall policy** - This policy applies
  Network Firewall protection to your organization's VPCs.

    *

  **DNS Firewall policy** - This policy applies
  Amazon Route 53 Resolver DNS Firewall protections to your organization's VPCs.

    *

  **Third-party firewall policy** - This policy applies third-party firewall
  protections. Third-party firewalls are available by subscription through the
  Amazon Web Services Marketplace console at [Amazon Web Services Marketplace](http://aws.amazon.com/marketplace).

      *

  **Palo Alto Networks Cloud NGFW policy** - This policy applies Palo Alto
  Networks Cloud Next Generation Firewall (NGFW) protections and Palo Alto
  Networks Cloud NGFW rulestacks to your organization's VPCs.

      *

  **Fortigate CNF policy** - This policy applies
  Fortigate Cloud Native Firewall (CNF) protections. Fortigate CNF is a
  cloud-centered solution that blocks Zero-Day threats and secures cloud
  infrastructures with industry-leading advanced threat prevention, smart web
  application firewalls (WAF), and API protection.
  """
  @spec put_policy(map(), put_policy_request(), list()) ::
          {:ok, put_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_policy_errors()}
  def put_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutPolicy", input, options)
  end

  @doc """
  Creates an Firewall Manager protocols list.
  """
  @spec put_protocols_list(map(), put_protocols_list_request(), list()) ::
          {:ok, put_protocols_list_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_protocols_list_errors()}
  def put_protocols_list(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutProtocolsList", input, options)
  end

  @doc """
  Creates the resource set.

  An Firewall Manager resource set defines the resources to import into an
  Firewall Manager policy from another Amazon Web Services service.
  """
  @spec put_resource_set(map(), put_resource_set_request(), list()) ::
          {:ok, put_resource_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_resource_set_errors()}
  def put_resource_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutResourceSet", input, options)
  end

  @doc """
  Adds one or more tags to an Amazon Web Services resource.
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Removes one or more tags from an Amazon Web Services resource.
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end
end
