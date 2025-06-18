# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.NetworkFirewall do
  @moduledoc """
  This is the API Reference for Network Firewall.

  This guide is for developers who need
  detailed information about the Network Firewall API actions, data types, and
  errors.

  The REST API requires you to handle connection details, such as calculating
  signatures, handling request retries, and error handling. For general
  information
  about using the Amazon Web Services REST APIs, see [Amazon Web Services APIs](https://docs.aws.amazon.com/general/latest/gr/aws-apis.html).

  To view the complete list of Amazon Web Services Regions where Network Firewall
  is available, see
  [Service endpoints and
  quotas](https://docs.aws.amazon.com/general/latest/gr/network-firewall.html) in
  the *Amazon Web Services General
  Reference*.

  To access Network Firewall using the IPv4 REST API endpoint:
  `https://network-firewall..amazonaws.com `

  To access Network Firewall using the Dualstack (IPv4 and IPv6) REST API
  endpoint:
  `https://network-firewall..aws.api `

  Alternatively, you can use one of the Amazon Web Services SDKs to access an API
  that's tailored to
  the programming language or platform that you're using. For more information,
  see
  [Amazon Web Services SDKs](http://aws.amazon.com/tools/#SDKs).   For descriptions of Network Firewall features, including and step-by-step
  instructions on how to use them through the Network Firewall console, see the
  [Network Firewall Developer
  Guide](https://docs.aws.amazon.com/network-firewall/latest/developerguide/).

  Network Firewall is a stateful, managed, network firewall and intrusion
  detection and
  prevention service for Amazon Virtual Private Cloud (Amazon VPC). With Network
  Firewall, you can filter traffic at the
  perimeter of your VPC. This includes filtering traffic going to and coming from
  an internet
  gateway, NAT gateway, or over VPN or Direct Connect. Network Firewall uses rules
  that are compatible
  with Suricata, a free, open source network analysis and threat detection engine.
  Network Firewall supports Suricata version 7.0.3. For information about
  Suricata,
  see the [Suricata website](https://suricata.io/) and the [Suricata User Guide](https://suricata.readthedocs.io/en/suricata-7.0.3/).

  You can use Network Firewall to monitor and protect your VPC traffic in a number
  of ways.
  The following are just a few examples:

    *
  Allow domains or IP addresses for known Amazon Web Services service endpoints,
  such as Amazon S3, and
  block all other forms of traffic.

    *
  Use custom lists of known bad domains to limit the types of domain names that
  your
  applications can access.

    *
  Perform deep packet inspection on traffic entering or leaving your VPC.

    *
  Use stateful protocol detection to filter protocols like HTTPS, regardless of
  the
  port used.

  To enable Network Firewall for your VPCs, you perform steps in both Amazon VPC
  and in
  Network Firewall. For information about using Amazon VPC, see [Amazon VPC User Guide](https://docs.aws.amazon.com/vpc/latest/userguide/).

  To start using Network Firewall, do the following:

    1.
  (Optional) If you don't already have a VPC that you want to protect, create it
  in
  Amazon VPC.

    2.
  In Amazon VPC, in each Availability Zone where you want to have a firewall
  endpoint, create a
  subnet for the sole use of Network Firewall.

    3.
  In Network Firewall, define the firewall behavior as follows:

      1.
  Create stateless and stateful rule groups,
  to define the components of the network traffic filtering behavior that you want
  your firewall to have.

      2.
  Create a firewall policy that uses your rule groups and
  specifies additional default traffic filtering behavior.

    4.
  In Network Firewall, create a firewall and specify your new firewall policy and
  VPC subnets. Network Firewall creates a firewall endpoint in each subnet that
  you
  specify, with the behavior that's defined in the firewall policy.

    5.
  In Amazon VPC, use ingress routing enhancements to route traffic through the new
  firewall
  endpoints.

  After your firewall is established, you can add firewall endpoints for new
  Availability Zones by following the prior steps for the Amazon VPC setup and
  firewall subnet definitions. You can also add endpoints to Availability Zones
  that you're using in the firewall, either for the same VPC
  or for another VPC, by following the prior steps for the Amazon VPC setup, and
  defining the new VPC subnets as VPC endpoint associations.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      update_firewall_description_request() :: %{
        optional("Description") => String.t(),
        optional("FirewallArn") => String.t(),
        optional("FirewallName") => String.t(),
        optional("UpdateToken") => String.t()
      }
      
  """
  @type update_firewall_description_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_t_l_s_inspection_configurations_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_t_l_s_inspection_configurations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      server_certificate_configuration() :: %{
        "CertificateAuthorityArn" => String.t(),
        "CheckCertificateRevocationStatus" => check_certificate_revocation_status_actions(),
        "Scopes" => list(server_certificate_scope()()),
        "ServerCertificates" => list(server_certificate()())
      }
      
  """
  @type server_certificate_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      t_c_p_flag_field() :: %{
        "Flags" => list(list(any())()),
        "Masks" => list(list(any())())
      }
      
  """
  @type t_c_p_flag_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      a_z_sync_state() :: %{
        "Attachment" => attachment()
      }
      
  """
  @type a_z_sync_state() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      analysis_result() :: %{
        "AnalysisDetail" => String.t(),
        "IdentifiedRuleIds" => list(String.t()()),
        "IdentifiedType" => list(any())
      }
      
  """
  @type analysis_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      encryption_configuration() :: %{
        "KeyId" => String.t(),
        "Type" => list(any())
      }
      
  """
  @type encryption_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rules_source() :: %{
        "RulesSourceList" => rules_source_list(),
        "RulesString" => String.t(),
        "StatefulRules" => list(stateful_rule()()),
        "StatelessRulesAndCustomActions" => stateless_rules_and_custom_actions()
      }
      
  """
  @type rules_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_rule_group_response() :: %{
        "RuleGroupResponse" => rule_group_response(),
        "UpdateToken" => String.t()
      }
      
  """
  @type update_rule_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      flow_filter() :: %{
        "DestinationAddress" => address(),
        "DestinationPort" => String.t(),
        "Protocols" => list(String.t()()),
        "SourceAddress" => address(),
        "SourcePort" => String.t()
      }
      
  """
  @type flow_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("ResourceArn") => String.t(),
        required("Tags") => list(tag()())
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_resource_policy_response() :: %{}
      
  """
  @type delete_resource_policy_response() :: %{}

  @typedoc """

  ## Example:
      
      unsupported_operation_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type unsupported_operation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stateful_rule_group_override() :: %{
        "Action" => list(any())
      }
      
  """
  @type stateful_rule_group_override() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rule_group_metadata() :: %{
        "Arn" => String.t(),
        "Name" => String.t()
      }
      
  """
  @type rule_group_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_rule_groups_response() :: %{
        "NextToken" => String.t(),
        "RuleGroups" => list(rule_group_metadata()())
      }
      
  """
  @type list_rule_groups_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_flow_capture_request() :: %{
        optional("AvailabilityZone") => String.t(),
        optional("MinimumFlowAgeInSeconds") => integer(),
        optional("VpcEndpointAssociationArn") => String.t(),
        optional("VpcEndpointId") => String.t(),
        required("FirewallArn") => String.t(),
        required("FlowFilters") => list(flow_filter()())
      }
      
  """
  @type start_flow_capture_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_flow_operation_request() :: %{
        optional("AvailabilityZone") => String.t(),
        optional("VpcEndpointAssociationArn") => String.t(),
        optional("VpcEndpointId") => String.t(),
        required("FirewallArn") => String.t(),
        required("FlowOperationId") => String.t()
      }
      
  """
  @type describe_flow_operation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_availability_zone_change_protection_response() :: %{
        "AvailabilityZoneChangeProtection" => boolean(),
        "FirewallArn" => String.t(),
        "FirewallName" => String.t(),
        "UpdateToken" => String.t()
      }
      
  """
  @type update_availability_zone_change_protection_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_flow_operation_response() :: %{
        "AvailabilityZone" => String.t(),
        "FirewallArn" => String.t(),
        "FlowOperation" => flow_operation(),
        "FlowOperationId" => String.t(),
        "FlowOperationStatus" => list(any()),
        "FlowOperationType" => list(any()),
        "FlowRequestTimestamp" => non_neg_integer(),
        "StatusMessage" => String.t(),
        "VpcEndpointAssociationArn" => String.t(),
        "VpcEndpointId" => String.t()
      }
      
  """
  @type describe_flow_operation_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_subnets_response() :: %{
        "FirewallArn" => String.t(),
        "FirewallName" => String.t(),
        "SubnetMappings" => list(subnet_mapping()()),
        "UpdateToken" => String.t()
      }
      
  """
  @type associate_subnets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_availability_zones_response() :: %{
        "AvailabilityZoneMappings" => list(availability_zone_mapping()()),
        "FirewallArn" => String.t(),
        "FirewallName" => String.t(),
        "UpdateToken" => String.t()
      }
      
  """
  @type associate_availability_zones_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_firewall_policy_change_protection_request() :: %{
        optional("FirewallArn") => String.t(),
        optional("FirewallName") => String.t(),
        optional("UpdateToken") => String.t(),
        required("FirewallPolicyChangeProtection") => boolean()
      }
      
  """
  @type update_firewall_policy_change_protection_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stateful_engine_options() :: %{
        "FlowTimeouts" => flow_timeouts(),
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
      
      rule_definition() :: %{
        "Actions" => list(String.t()()),
        "MatchAttributes" => match_attributes()
      }
      
  """
  @type rule_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_owner_check_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_owner_check_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      t_l_s_inspection_configuration_metadata() :: %{
        "Arn" => String.t(),
        "Name" => String.t()
      }
      
  """
  @type t_l_s_inspection_configuration_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_t_l_s_inspection_configuration_request() :: %{
        optional("TLSInspectionConfigurationArn") => String.t(),
        optional("TLSInspectionConfigurationName") => String.t()
      }
      
  """
  @type describe_t_l_s_inspection_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_rule_group_metadata_request() :: %{
        optional("RuleGroupArn") => String.t(),
        optional("RuleGroupName") => String.t(),
        optional("Type") => list(any())
      }
      
  """
  @type describe_rule_group_metadata_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_vpc_endpoint_association_response() :: %{
        "VpcEndpointAssociation" => vpc_endpoint_association(),
        "VpcEndpointAssociationStatus" => vpc_endpoint_association_status()
      }
      
  """
  @type delete_vpc_endpoint_association_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_analysis_report_results_response() :: %{
        "AnalysisReportResults" => list(analysis_type_report_result()()),
        "AnalysisType" => list(any()),
        "EndTime" => non_neg_integer(),
        "NextToken" => String.t(),
        "ReportTime" => non_neg_integer(),
        "StartTime" => non_neg_integer(),
        "Status" => String.t()
      }
      
  """
  @type get_analysis_report_results_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_rule_group_request() :: %{
        optional("AnalyzeRuleGroup") => boolean(),
        optional("RuleGroupArn") => String.t(),
        optional("RuleGroupName") => String.t(),
        optional("Type") => list(any())
      }
      
  """
  @type describe_rule_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rule_group() :: %{
        "ReferenceSets" => reference_sets(),
        "RuleVariables" => rule_variables(),
        "RulesSource" => rules_source(),
        "StatefulRuleOptions" => stateful_rule_options()
      }
      
  """
  @type rule_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_operation_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_operation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      attachment() :: %{
        "EndpointId" => String.t(),
        "Status" => list(any()),
        "StatusMessage" => String.t(),
        "SubnetId" => String.t()
      }
      
  """
  @type attachment() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_firewall_analysis_settings_request() :: %{
        optional("EnabledAnalysisTypes") => list(list(any())()),
        optional("FirewallArn") => String.t(),
        optional("FirewallName") => String.t(),
        optional("UpdateToken") => String.t()
      }
      
  """
  @type update_firewall_analysis_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      t_l_s_inspection_configuration() :: %{
        "ServerCertificateConfigurations" => list(server_certificate_configuration()())
      }
      
  """
  @type t_l_s_inspection_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_logging_configuration_request() :: %{
        optional("EnableMonitoringDashboard") => boolean(),
        optional("FirewallArn") => String.t(),
        optional("FirewallName") => String.t(),
        optional("LoggingConfiguration") => logging_configuration()
      }
      
  """
  @type update_logging_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      subnet_mapping() :: %{
        "IPAddressType" => list(any()),
        "SubnetId" => String.t()
      }
      
  """
  @type subnet_mapping() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_firewall_encryption_configuration_response() :: %{
        "EncryptionConfiguration" => encryption_configuration(),
        "FirewallArn" => String.t(),
        "FirewallName" => String.t(),
        "UpdateToken" => String.t()
      }
      
  """
  @type update_firewall_encryption_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      publish_metric_action() :: %{
        "Dimensions" => list(dimension()())
      }
      
  """
  @type publish_metric_action() :: %{String.t() => any()}

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
      
      header() :: %{
        "Destination" => String.t(),
        "DestinationPort" => String.t(),
        "Direction" => list(any()),
        "Protocol" => list(any()),
        "Source" => String.t(),
        "SourcePort" => String.t()
      }
      
  """
  @type header() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_firewall_metadata_response() :: %{
        "Description" => String.t(),
        "FirewallArn" => String.t(),
        "FirewallPolicyArn" => String.t(),
        "Status" => list(any()),
        "SupportedAvailabilityZones" => map(),
        "TransitGatewayAttachmentId" => String.t()
      }
      
  """
  @type describe_firewall_metadata_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_network_firewall_transit_gateway_attachment_response() :: %{
        "TransitGatewayAttachmentId" => String.t(),
        "TransitGatewayAttachmentStatus" => list(any())
      }
      
  """
  @type delete_network_firewall_transit_gateway_attachment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_firewall_policy_request() :: %{
        optional("Description") => String.t(),
        optional("DryRun") => boolean(),
        optional("EncryptionConfiguration") => encryption_configuration(),
        optional("Tags") => list(tag()()),
        required("FirewallPolicy") => firewall_policy(),
        required("FirewallPolicyName") => String.t()
      }
      
  """
  @type create_firewall_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_firewall_policy_request() :: %{
        optional("FirewallArn") => String.t(),
        optional("FirewallName") => String.t(),
        optional("UpdateToken") => String.t(),
        required("FirewallPolicyArn") => String.t()
      }
      
  """
  @type associate_firewall_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_vpc_endpoint_associations_response() :: %{
        "NextToken" => String.t(),
        "VpcEndpointAssociations" => list(vpc_endpoint_association_metadata()())
      }
      
  """
  @type list_vpc_endpoint_associations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      logging_configuration() :: %{
        "LogDestinationConfigs" => list(log_destination_config()())
      }
      
  """
  @type logging_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tls_certificate_data() :: %{
        "CertificateArn" => String.t(),
        "CertificateSerial" => String.t(),
        "Status" => String.t(),
        "StatusMessage" => String.t()
      }
      
  """
  @type tls_certificate_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      firewall_policy() :: %{
        "PolicyVariables" => policy_variables(),
        "StatefulDefaultActions" => list(String.t()()),
        "StatefulEngineOptions" => stateful_engine_options(),
        "StatefulRuleGroupReferences" => list(stateful_rule_group_reference()()),
        "StatelessCustomActions" => list(custom_action()()),
        "StatelessDefaultActions" => list(String.t()()),
        "StatelessFragmentDefaultActions" => list(String.t()()),
        "StatelessRuleGroupReferences" => list(stateless_rule_group_reference()()),
        "TLSInspectionConfigurationArn" => String.t()
      }
      
  """
  @type firewall_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_vpc_endpoint_association_response() :: %{
        "VpcEndpointAssociation" => vpc_endpoint_association(),
        "VpcEndpointAssociationStatus" => vpc_endpoint_association_status()
      }
      
  """
  @type describe_vpc_endpoint_association_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_analysis_report_results_request() :: %{
        optional("FirewallArn") => String.t(),
        optional("FirewallName") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("AnalysisReportId") => String.t()
      }
      
  """
  @type get_analysis_report_results_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reject_network_firewall_transit_gateway_attachment_response() :: %{
        "TransitGatewayAttachmentId" => String.t(),
        "TransitGatewayAttachmentStatus" => list(any())
      }
      
  """
  @type reject_network_firewall_transit_gateway_attachment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_firewall_policy_request() :: %{
        optional("Description") => String.t(),
        optional("DryRun") => boolean(),
        optional("EncryptionConfiguration") => encryption_configuration(),
        optional("FirewallPolicyArn") => String.t(),
        optional("FirewallPolicyName") => String.t(),
        required("FirewallPolicy") => firewall_policy(),
        required("UpdateToken") => String.t()
      }
      
  """
  @type update_firewall_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_rule_group_response() :: %{
        "RuleGroupResponse" => rule_group_response(),
        "UpdateToken" => String.t()
      }
      
  """
  @type create_rule_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_rule_group_request() :: %{
        optional("AnalyzeRuleGroup") => boolean(),
        optional("Description") => String.t(),
        optional("DryRun") => boolean(),
        optional("EncryptionConfiguration") => encryption_configuration(),
        optional("RuleGroup") => rule_group(),
        optional("Rules") => String.t(),
        optional("SourceMetadata") => source_metadata(),
        optional("SummaryConfiguration") => summary_configuration(),
        optional("Tags") => list(tag()()),
        required("Capacity") => integer(),
        required("RuleGroupName") => String.t(),
        required("Type") => list(any())
      }
      
  """
  @type create_rule_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ip_set_metadata() :: %{
        "ResolvedCIDRCount" => integer()
      }
      
  """
  @type ip_set_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      insufficient_capacity_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type insufficient_capacity_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_analysis_reports_response() :: %{
        "AnalysisReports" => list(analysis_report()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_analysis_reports_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      firewall_status() :: %{
        "CapacityUsageSummary" => capacity_usage_summary(),
        "ConfigurationSyncStateSummary" => list(any()),
        "Status" => list(any()),
        "SyncStates" => map(),
        "TransitGatewayAttachmentSyncState" => transit_gateway_attachment_sync_state()
      }
      
  """
  @type firewall_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      vpc_endpoint_association_status() :: %{
        "AssociationSyncState" => map(),
        "Status" => list(any())
      }
      
  """
  @type vpc_endpoint_association_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_firewall_response() :: %{
        "Firewall" => firewall(),
        "FirewallStatus" => firewall_status()
      }
      
  """
  @type delete_firewall_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_flow_operations_response() :: %{
        "FlowOperations" => list(flow_operation_metadata()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_flow_operations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      accept_network_firewall_transit_gateway_attachment_response() :: %{
        "TransitGatewayAttachmentId" => String.t(),
        "TransitGatewayAttachmentStatus" => list(any())
      }
      
  """
  @type accept_network_firewall_transit_gateway_attachment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_rule_group_summary_request() :: %{
        optional("RuleGroupArn") => String.t(),
        optional("RuleGroupName") => String.t(),
        optional("Type") => list(any())
      }
      
  """
  @type describe_rule_group_summary_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_vpc_endpoint_association_request() :: %{
        required("VpcEndpointAssociationArn") => String.t()
      }
      
  """
  @type describe_vpc_endpoint_association_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_firewall_policy_response() :: %{
        "FirewallPolicyResponse" => firewall_policy_response()
      }
      
  """
  @type delete_firewall_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      vpc_endpoint_association_metadata() :: %{
        "VpcEndpointAssociationArn" => String.t()
      }
      
  """
  @type vpc_endpoint_association_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_rule_group_summary_response() :: %{
        "Description" => String.t(),
        "RuleGroupName" => String.t(),
        "Summary" => summary()
      }
      
  """
  @type describe_rule_group_summary_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_firewall_policy_response() :: %{
        "FirewallPolicyResponse" => firewall_policy_response(),
        "UpdateToken" => String.t()
      }
      
  """
  @type create_firewall_policy_response() :: %{String.t() => any()}

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
      
      server_certificate_scope() :: %{
        "DestinationPorts" => list(port_range()()),
        "Destinations" => list(address()()),
        "Protocols" => list(integer()()),
        "SourcePorts" => list(port_range()()),
        "Sources" => list(address()())
      }
      
  """
  @type server_certificate_scope() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_request_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      flow_operation_metadata() :: %{
        "FlowOperationId" => String.t(),
        "FlowOperationStatus" => list(any()),
        "FlowOperationType" => list(any()),
        "FlowRequestTimestamp" => non_neg_integer()
      }
      
  """
  @type flow_operation_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      availability_zone_mapping() :: %{
        "AvailabilityZone" => String.t()
      }
      
  """
  @type availability_zone_mapping() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_logging_configuration_request() :: %{
        optional("FirewallArn") => String.t(),
        optional("FirewallName") => String.t()
      }
      
  """
  @type describe_logging_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_subnets_response() :: %{
        "FirewallArn" => String.t(),
        "FirewallName" => String.t(),
        "SubnetMappings" => list(subnet_mapping()()),
        "UpdateToken" => String.t()
      }
      
  """
  @type disassociate_subnets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sync_state() :: %{
        "Attachment" => attachment(),
        "Config" => map()
      }
      
  """
  @type sync_state() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      hits() :: %{
        "Count" => integer()
      }
      
  """
  @type hits() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_firewall_response() :: %{
        "Firewall" => firewall(),
        "FirewallStatus" => firewall_status()
      }
      
  """
  @type create_firewall_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      per_object_status() :: %{
        "SyncStatus" => list(any()),
        "UpdateToken" => String.t()
      }
      
  """
  @type per_object_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      vpc_endpoint_association() :: %{
        "Description" => String.t(),
        "FirewallArn" => String.t(),
        "SubnetMapping" => subnet_mapping(),
        "Tags" => list(tag()()),
        "VpcEndpointAssociationArn" => String.t(),
        "VpcEndpointAssociationId" => String.t(),
        "VpcId" => String.t()
      }
      
  """
  @type vpc_endpoint_association() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_firewall_request() :: %{
        optional("FirewallArn") => String.t(),
        optional("FirewallName") => String.t()
      }
      
  """
  @type describe_firewall_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_t_l_s_inspection_configuration_request() :: %{
        optional("TLSInspectionConfigurationArn") => String.t(),
        optional("TLSInspectionConfigurationName") => String.t()
      }
      
  """
  @type delete_t_l_s_inspection_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rule_group_response() :: %{
        "AnalysisResults" => list(analysis_result()()),
        "Capacity" => integer(),
        "ConsumedCapacity" => integer(),
        "Description" => String.t(),
        "EncryptionConfiguration" => encryption_configuration(),
        "LastModifiedTime" => non_neg_integer(),
        "NumberOfAssociations" => integer(),
        "RuleGroupArn" => String.t(),
        "RuleGroupId" => String.t(),
        "RuleGroupName" => String.t(),
        "RuleGroupStatus" => list(any()),
        "SnsTopic" => String.t(),
        "SourceMetadata" => source_metadata(),
        "SummaryConfiguration" => summary_configuration(),
        "Tags" => list(tag()()),
        "Type" => list(any())
      }
      
  """
  @type rule_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      analysis_report() :: %{
        "AnalysisReportId" => String.t(),
        "AnalysisType" => list(any()),
        "ReportTime" => non_neg_integer(),
        "Status" => String.t()
      }
      
  """
  @type analysis_report() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ip_set() :: %{
        "Definition" => list(String.t()())
      }
      
  """
  @type ip_set() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_flow_operation_results_request() :: %{
        optional("AvailabilityZone") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("VpcEndpointAssociationArn") => String.t(),
        optional("VpcEndpointId") => String.t(),
        required("FirewallArn") => String.t(),
        required("FlowOperationId") => String.t()
      }
      
  """
  @type list_flow_operation_results_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      accept_network_firewall_transit_gateway_attachment_request() :: %{
        required("TransitGatewayAttachmentId") => String.t()
      }
      
  """
  @type accept_network_firewall_transit_gateway_attachment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stateful_rule() :: %{
        "Action" => list(any()),
        "Header" => header(),
        "RuleOptions" => list(rule_option()())
      }
      
  """
  @type stateful_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_vpc_endpoint_association_response() :: %{
        "VpcEndpointAssociation" => vpc_endpoint_association(),
        "VpcEndpointAssociationStatus" => vpc_endpoint_association_status()
      }
      
  """
  @type create_vpc_endpoint_association_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stateful_rule_group_reference() :: %{
        "DeepThreatInspection" => boolean(),
        "Override" => stateful_rule_group_override(),
        "Priority" => integer(),
        "ResourceArn" => String.t()
      }
      
  """
  @type stateful_rule_group_reference() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "NextToken" => String.t(),
        "Tags" => list(tag()())
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_firewalls_response() :: %{
        "Firewalls" => list(firewall_metadata()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_firewalls_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_t_l_s_inspection_configuration_request() :: %{
        optional("Description") => String.t(),
        optional("EncryptionConfiguration") => encryption_configuration(),
        optional("Tags") => list(tag()()),
        required("TLSInspectionConfiguration") => t_l_s_inspection_configuration(),
        required("TLSInspectionConfigurationName") => String.t()
      }
      
  """
  @type create_t_l_s_inspection_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_analysis_reports_request() :: %{
        optional("FirewallArn") => String.t(),
        optional("FirewallName") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_analysis_reports_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      firewall_policy_response() :: %{
        "ConsumedStatefulRuleCapacity" => integer(),
        "ConsumedStatelessRuleCapacity" => integer(),
        "Description" => String.t(),
        "EncryptionConfiguration" => encryption_configuration(),
        "FirewallPolicyArn" => String.t(),
        "FirewallPolicyId" => String.t(),
        "FirewallPolicyName" => String.t(),
        "FirewallPolicyStatus" => list(any()),
        "LastModifiedTime" => non_neg_integer(),
        "NumberOfAssociations" => integer(),
        "Tags" => list(tag()())
      }
      
  """
  @type firewall_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      flow_operation() :: %{
        "FlowFilters" => list(flow_filter()()),
        "MinimumFlowAgeInSeconds" => integer()
      }
      
  """
  @type flow_operation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_flow_capture_response() :: %{
        "FirewallArn" => String.t(),
        "FlowOperationId" => String.t(),
        "FlowOperationStatus" => list(any())
      }
      
  """
  @type start_flow_capture_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_firewall_policy_change_protection_response() :: %{
        "FirewallArn" => String.t(),
        "FirewallName" => String.t(),
        "FirewallPolicyChangeProtection" => boolean(),
        "UpdateToken" => String.t()
      }
      
  """
  @type update_firewall_policy_change_protection_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reference_sets() :: %{
        "IPSetReferences" => map()
      }
      
  """
  @type reference_sets() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_subnet_change_protection_request() :: %{
        optional("FirewallArn") => String.t(),
        optional("FirewallName") => String.t(),
        optional("UpdateToken") => String.t(),
        required("SubnetChangeProtection") => boolean()
      }
      
  """
  @type update_subnet_change_protection_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_network_firewall_transit_gateway_attachment_request() :: %{
        required("TransitGatewayAttachmentId") => String.t()
      }
      
  """
  @type delete_network_firewall_transit_gateway_attachment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_flow_operations_request() :: %{
        optional("AvailabilityZone") => String.t(),
        optional("FlowOperationType") => list(any()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("VpcEndpointAssociationArn") => String.t(),
        optional("VpcEndpointId") => String.t(),
        required("FirewallArn") => String.t()
      }
      
  """
  @type list_flow_operations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      firewall() :: %{
        "AvailabilityZoneChangeProtection" => boolean(),
        "AvailabilityZoneMappings" => list(availability_zone_mapping()()),
        "DeleteProtection" => boolean(),
        "Description" => String.t(),
        "EnabledAnalysisTypes" => list(list(any())()),
        "EncryptionConfiguration" => encryption_configuration(),
        "FirewallArn" => String.t(),
        "FirewallId" => String.t(),
        "FirewallName" => String.t(),
        "FirewallPolicyArn" => String.t(),
        "FirewallPolicyChangeProtection" => boolean(),
        "NumberOfAssociations" => integer(),
        "SubnetChangeProtection" => boolean(),
        "SubnetMappings" => list(subnet_mapping()()),
        "Tags" => list(tag()()),
        "TransitGatewayId" => String.t(),
        "TransitGatewayOwnerAccountId" => String.t(),
        "VpcId" => String.t()
      }
      
  """
  @type firewall() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      policy_variables() :: %{
        "RuleVariables" => map()
      }
      
  """
  @type policy_variables() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_firewall_request() :: %{
        optional("AvailabilityZoneChangeProtection") => boolean(),
        optional("AvailabilityZoneMappings") => list(availability_zone_mapping()()),
        optional("DeleteProtection") => boolean(),
        optional("Description") => String.t(),
        optional("EnabledAnalysisTypes") => list(list(any())()),
        optional("EncryptionConfiguration") => encryption_configuration(),
        optional("FirewallPolicyChangeProtection") => boolean(),
        optional("SubnetChangeProtection") => boolean(),
        optional("SubnetMappings") => list(subnet_mapping()()),
        optional("Tags") => list(tag()()),
        optional("TransitGatewayId") => String.t(),
        optional("VpcId") => String.t(),
        required("FirewallName") => String.t(),
        required("FirewallPolicyArn") => String.t()
      }
      
  """
  @type create_firewall_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      analysis_type_report_result() :: %{
        "Domain" => String.t(),
        "FirstAccessed" => non_neg_integer(),
        "Hits" => hits(),
        "LastAccessed" => non_neg_integer(),
        "Protocol" => String.t(),
        "UniqueSources" => unique_sources()
      }
      
  """
  @type analysis_type_report_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_firewall_request() :: %{
        optional("FirewallArn") => String.t(),
        optional("FirewallName") => String.t()
      }
      
  """
  @type delete_firewall_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rule_summary() :: %{
        "Metadata" => String.t(),
        "Msg" => String.t(),
        "SID" => String.t()
      }
      
  """
  @type rule_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_t_l_s_inspection_configurations_response() :: %{
        "NextToken" => String.t(),
        "TLSInspectionConfigurations" => list(t_l_s_inspection_configuration_metadata()())
      }
      
  """
  @type list_t_l_s_inspection_configurations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_flow_flush_request() :: %{
        optional("AvailabilityZone") => String.t(),
        optional("MinimumFlowAgeInSeconds") => integer(),
        optional("VpcEndpointAssociationArn") => String.t(),
        optional("VpcEndpointId") => String.t(),
        required("FirewallArn") => String.t(),
        required("FlowFilters") => list(flow_filter()())
      }
      
  """
  @type start_flow_flush_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_flow_flush_response() :: %{
        "FirewallArn" => String.t(),
        "FlowOperationId" => String.t(),
        "FlowOperationStatus" => list(any())
      }
      
  """
  @type start_flow_flush_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      t_l_s_inspection_configuration_response() :: %{
        "CertificateAuthority" => tls_certificate_data(),
        "Certificates" => list(tls_certificate_data()()),
        "Description" => String.t(),
        "EncryptionConfiguration" => encryption_configuration(),
        "LastModifiedTime" => non_neg_integer(),
        "NumberOfAssociations" => integer(),
        "TLSInspectionConfigurationArn" => String.t(),
        "TLSInspectionConfigurationId" => String.t(),
        "TLSInspectionConfigurationName" => String.t(),
        "TLSInspectionConfigurationStatus" => list(any()),
        "Tags" => list(tag()())
      }
      
  """
  @type t_l_s_inspection_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_t_l_s_inspection_configuration_response() :: %{
        "TLSInspectionConfiguration" => t_l_s_inspection_configuration(),
        "TLSInspectionConfigurationResponse" => t_l_s_inspection_configuration_response(),
        "UpdateToken" => String.t()
      }
      
  """
  @type describe_t_l_s_inspection_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      flow_timeouts() :: %{
        "TcpIdleTimeoutSeconds" => integer()
      }
      
  """
  @type flow_timeouts() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      custom_action() :: %{
        "ActionDefinition" => action_definition(),
        "ActionName" => String.t()
      }
      
  """
  @type custom_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      port_range() :: %{
        "FromPort" => integer(),
        "ToPort" => integer()
      }
      
  """
  @type port_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rules_source_list() :: %{
        "GeneratedRulesType" => list(any()),
        "TargetTypes" => list(list(any())()),
        "Targets" => list(String.t()())
      }
      
  """
  @type rules_source_list() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_resource_policy_request() :: %{
        required("Policy") => String.t(),
        required("ResourceArn") => String.t()
      }
      
  """
  @type put_resource_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_firewall_policies_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_firewall_policies_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_availability_zones_request() :: %{
        optional("FirewallArn") => String.t(),
        optional("FirewallName") => String.t(),
        optional("UpdateToken") => String.t(),
        required("AvailabilityZoneMappings") => list(availability_zone_mapping()())
      }
      
  """
  @type disassociate_availability_zones_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_firewall_policies_response() :: %{
        "FirewallPolicies" => list(firewall_policy_metadata()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_firewall_policies_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_firewall_delete_protection_response() :: %{
        "DeleteProtection" => boolean(),
        "FirewallArn" => String.t(),
        "FirewallName" => String.t(),
        "UpdateToken" => String.t()
      }
      
  """
  @type update_firewall_delete_protection_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      port_set() :: %{
        "Definition" => list(String.t()())
      }
      
  """
  @type port_set() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_error() :: %{
        "Message" => String.t()
      }
      
  """
  @type internal_server_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      transit_gateway_attachment_sync_state() :: %{
        "AttachmentId" => String.t(),
        "StatusMessage" => String.t(),
        "TransitGatewayAttachmentStatus" => list(any())
      }
      
  """
  @type transit_gateway_attachment_sync_state() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      capacity_usage_summary() :: %{
        "CIDRs" => c_id_r_summary()
      }
      
  """
  @type capacity_usage_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_firewall_encryption_configuration_request() :: %{
        optional("EncryptionConfiguration") => encryption_configuration(),
        optional("FirewallArn") => String.t(),
        optional("FirewallName") => String.t(),
        optional("UpdateToken") => String.t()
      }
      
  """
  @type update_firewall_encryption_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_t_l_s_inspection_configuration_response() :: %{
        "TLSInspectionConfigurationResponse" => t_l_s_inspection_configuration_response()
      }
      
  """
  @type delete_t_l_s_inspection_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_rule_group_request() :: %{
        optional("AnalyzeRuleGroup") => boolean(),
        optional("Description") => String.t(),
        optional("DryRun") => boolean(),
        optional("EncryptionConfiguration") => encryption_configuration(),
        optional("RuleGroup") => rule_group(),
        optional("RuleGroupArn") => String.t(),
        optional("RuleGroupName") => String.t(),
        optional("Rules") => String.t(),
        optional("SourceMetadata") => source_metadata(),
        optional("SummaryConfiguration") => summary_configuration(),
        optional("Type") => list(any()),
        required("UpdateToken") => String.t()
      }
      
  """
  @type update_rule_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_rule_group_response() :: %{
        "RuleGroupResponse" => rule_group_response()
      }
      
  """
  @type delete_rule_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_t_l_s_inspection_configuration_response() :: %{
        "TLSInspectionConfigurationResponse" => t_l_s_inspection_configuration_response(),
        "UpdateToken" => String.t()
      }
      
  """
  @type create_t_l_s_inspection_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      firewall_policy_metadata() :: %{
        "Arn" => String.t(),
        "Name" => String.t()
      }
      
  """
  @type firewall_policy_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stateful_rule_options() :: %{
        "RuleOrder" => list(any())
      }
      
  """
  @type stateful_rule_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_firewalls_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("VpcIds") => list(String.t()())
      }
      
  """
  @type list_firewalls_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_firewall_policy_response() :: %{
        "FirewallArn" => String.t(),
        "FirewallName" => String.t(),
        "FirewallPolicyArn" => String.t(),
        "UpdateToken" => String.t()
      }
      
  """
  @type associate_firewall_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      log_destination_config() :: %{
        "LogDestination" => map(),
        "LogDestinationType" => list(any()),
        "LogType" => list(any())
      }
      
  """
  @type log_destination_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_resource_policy_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_resource_policy_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_firewall_response() :: %{
        "Firewall" => firewall(),
        "FirewallStatus" => firewall_status(),
        "UpdateToken" => String.t()
      }
      
  """
  @type describe_firewall_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unique_sources() :: %{
        "Count" => integer()
      }
      
  """
  @type unique_sources() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("ResourceArn") => String.t()
      }
      
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_t_l_s_inspection_configuration_response() :: %{
        "TLSInspectionConfigurationResponse" => t_l_s_inspection_configuration_response(),
        "UpdateToken" => String.t()
      }
      
  """
  @type update_t_l_s_inspection_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rule_variables() :: %{
        "IPSets" => map(),
        "PortSets" => map()
      }
      
  """
  @type rule_variables() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_firewall_analysis_settings_response() :: %{
        "EnabledAnalysisTypes" => list(list(any())()),
        "FirewallArn" => String.t(),
        "FirewallName" => String.t(),
        "UpdateToken" => String.t()
      }
      
  """
  @type update_firewall_analysis_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_logging_configuration_response() :: %{
        "EnableMonitoringDashboard" => boolean(),
        "FirewallArn" => String.t(),
        "LoggingConfiguration" => logging_configuration()
      }
      
  """
  @type describe_logging_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_resource_policy_response() :: %{
        "Policy" => String.t()
      }
      
  """
  @type describe_resource_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_subnets_request() :: %{
        optional("FirewallArn") => String.t(),
        optional("FirewallName") => String.t(),
        optional("UpdateToken") => String.t(),
        required("SubnetIds") => list(String.t()())
      }
      
  """
  @type disassociate_subnets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      log_destination_permission_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type log_destination_permission_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      availability_zone_metadata() :: %{
        "IPAddressType" => list(any())
      }
      
  """
  @type availability_zone_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_firewall_policy_request() :: %{
        optional("FirewallPolicyArn") => String.t(),
        optional("FirewallPolicyName") => String.t()
      }
      
  """
  @type delete_firewall_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_resource_policy_response() :: %{}
      
  """
  @type put_resource_policy_response() :: %{}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_vpc_endpoint_association_request() :: %{
        optional("Description") => String.t(),
        optional("Tags") => list(tag()()),
        required("FirewallArn") => String.t(),
        required("SubnetMapping") => subnet_mapping(),
        required("VpcId") => String.t()
      }
      
  """
  @type create_vpc_endpoint_association_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_analysis_report_request() :: %{
        optional("FirewallArn") => String.t(),
        optional("FirewallName") => String.t(),
        required("AnalysisType") => list(any())
      }
      
  """
  @type start_analysis_report_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reject_network_firewall_transit_gateway_attachment_request() :: %{
        required("TransitGatewayAttachmentId") => String.t()
      }
      
  """
  @type reject_network_firewall_transit_gateway_attachment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dimension() :: %{
        "Value" => String.t()
      }
      
  """
  @type dimension() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_resource_policy_request() :: %{
        required("ResourceArn") => String.t()
      }
      
  """
  @type delete_resource_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      summary_configuration() :: %{
        "RuleOptions" => list(list(any())())
      }
      
  """
  @type summary_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_availability_zones_request() :: %{
        optional("FirewallArn") => String.t(),
        optional("FirewallName") => String.t(),
        optional("UpdateToken") => String.t(),
        required("AvailabilityZoneMappings") => list(availability_zone_mapping()())
      }
      
  """
  @type associate_availability_zones_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_t_l_s_inspection_configuration_request() :: %{
        optional("Description") => String.t(),
        optional("EncryptionConfiguration") => encryption_configuration(),
        optional("TLSInspectionConfigurationArn") => String.t(),
        optional("TLSInspectionConfigurationName") => String.t(),
        required("TLSInspectionConfiguration") => t_l_s_inspection_configuration(),
        required("UpdateToken") => String.t()
      }
      
  """
  @type update_t_l_s_inspection_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_flow_operation_results_response() :: %{
        "AvailabilityZone" => String.t(),
        "FirewallArn" => String.t(),
        "FlowOperationId" => String.t(),
        "FlowOperationStatus" => list(any()),
        "FlowRequestTimestamp" => non_neg_integer(),
        "Flows" => list(flow()()),
        "NextToken" => String.t(),
        "StatusMessage" => String.t(),
        "VpcEndpointAssociationArn" => String.t(),
        "VpcEndpointId" => String.t()
      }
      
  """
  @type list_flow_operation_results_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_firewall_delete_protection_request() :: %{
        optional("FirewallArn") => String.t(),
        optional("FirewallName") => String.t(),
        optional("UpdateToken") => String.t(),
        required("DeleteProtection") => boolean()
      }
      
  """
  @type update_firewall_delete_protection_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      source_metadata() :: %{
        "SourceArn" => String.t(),
        "SourceUpdateToken" => String.t()
      }
      
  """
  @type source_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_firewall_policy_response() :: %{
        "FirewallPolicyResponse" => firewall_policy_response(),
        "UpdateToken" => String.t()
      }
      
  """
  @type update_firewall_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_firewall_description_response() :: %{
        "Description" => String.t(),
        "FirewallArn" => String.t(),
        "FirewallName" => String.t(),
        "UpdateToken" => String.t()
      }
      
  """
  @type update_firewall_description_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      match_attributes() :: %{
        "DestinationPorts" => list(port_range()()),
        "Destinations" => list(address()()),
        "Protocols" => list(integer()()),
        "SourcePorts" => list(port_range()()),
        "Sources" => list(address()()),
        "TCPFlags" => list(t_c_p_flag_field()())
      }
      
  """
  @type match_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_rule_group_metadata_response() :: %{
        "Capacity" => integer(),
        "Description" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "RuleGroupArn" => String.t(),
        "RuleGroupName" => String.t(),
        "StatefulRuleOptions" => stateful_rule_options(),
        "Type" => list(any())
      }
      
  """
  @type describe_rule_group_metadata_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_subnets_request() :: %{
        optional("FirewallArn") => String.t(),
        optional("FirewallName") => String.t(),
        optional("UpdateToken") => String.t(),
        required("SubnetMappings") => list(subnet_mapping()())
      }
      
  """
  @type associate_subnets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      address() :: %{
        "AddressDefinition" => String.t()
      }
      
  """
  @type address() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_firewall_metadata_request() :: %{
        optional("FirewallArn") => String.t()
      }
      
  """
  @type describe_firewall_metadata_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      flow() :: %{
        "Age" => integer(),
        "ByteCount" => float(),
        "DestinationAddress" => address(),
        "DestinationPort" => String.t(),
        "PacketCount" => integer(),
        "Protocol" => String.t(),
        "SourceAddress" => address(),
        "SourcePort" => String.t()
      }
      
  """
  @type flow() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_logging_configuration_response() :: %{
        "EnableMonitoringDashboard" => boolean(),
        "FirewallArn" => String.t(),
        "FirewallName" => String.t(),
        "LoggingConfiguration" => logging_configuration()
      }
      
  """
  @type update_logging_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_rule_group_response() :: %{
        "RuleGroup" => rule_group(),
        "RuleGroupResponse" => rule_group_response(),
        "UpdateToken" => String.t()
      }
      
  """
  @type describe_rule_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stateless_rule() :: %{
        "Priority" => integer(),
        "RuleDefinition" => rule_definition()
      }
      
  """
  @type stateless_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_token_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_token_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_rule_group_request() :: %{
        optional("RuleGroupArn") => String.t(),
        optional("RuleGroupName") => String.t(),
        optional("Type") => list(any())
      }
      
  """
  @type delete_rule_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stateless_rule_group_reference() :: %{
        "Priority" => integer(),
        "ResourceArn" => String.t()
      }
      
  """
  @type stateless_rule_group_reference() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      firewall_metadata() :: %{
        "FirewallArn" => String.t(),
        "FirewallName" => String.t(),
        "TransitGatewayAttachmentId" => String.t()
      }
      
  """
  @type firewall_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_vpc_endpoint_association_request() :: %{
        required("VpcEndpointAssociationArn") => String.t()
      }
      
  """
  @type delete_vpc_endpoint_association_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      summary() :: %{
        "RuleSummaries" => list(rule_summary()())
      }
      
  """
  @type summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      c_id_r_summary() :: %{
        "AvailableCIDRCount" => integer(),
        "IPSetReferences" => map(),
        "UtilizedCIDRCount" => integer()
      }
      
  """
  @type c_id_r_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_subnet_change_protection_response() :: %{
        "FirewallArn" => String.t(),
        "FirewallName" => String.t(),
        "SubnetChangeProtection" => boolean(),
        "UpdateToken" => String.t()
      }
      
  """
  @type update_subnet_change_protection_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stateless_rules_and_custom_actions() :: %{
        "CustomActions" => list(custom_action()()),
        "StatelessRules" => list(stateless_rule()())
      }
      
  """
  @type stateless_rules_and_custom_actions() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rule_option() :: %{
        "Keyword" => String.t(),
        "Settings" => list(String.t()())
      }
      
  """
  @type rule_option() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_availability_zones_response() :: %{
        "AvailabilityZoneMappings" => list(availability_zone_mapping()()),
        "FirewallArn" => String.t(),
        "FirewallName" => String.t(),
        "UpdateToken" => String.t()
      }
      
  """
  @type disassociate_availability_zones_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      check_certificate_revocation_status_actions() :: %{
        "RevokedStatusAction" => list(any()),
        "UnknownStatusAction" => list(any())
      }
      
  """
  @type check_certificate_revocation_status_actions() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_analysis_report_response() :: %{
        "AnalysisReportId" => String.t()
      }
      
  """
  @type start_analysis_report_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ip_set_reference() :: %{
        "ReferenceArn" => String.t()
      }
      
  """
  @type ip_set_reference() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_rule_groups_request() :: %{
        optional("ManagedType") => list(any()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("Scope") => list(any()),
        optional("Type") => list(any())
      }
      
  """
  @type list_rule_groups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      action_definition() :: %{
        "PublishMetricAction" => publish_metric_action()
      }
      
  """
  @type action_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_firewall_policy_request() :: %{
        optional("FirewallPolicyArn") => String.t(),
        optional("FirewallPolicyName") => String.t()
      }
      
  """
  @type describe_firewall_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      server_certificate() :: %{
        "ResourceArn" => String.t()
      }
      
  """
  @type server_certificate() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_resource_policy_request() :: %{
        required("ResourceArn") => String.t()
      }
      
  """
  @type describe_resource_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_vpc_endpoint_associations_request() :: %{
        optional("FirewallArn") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_vpc_endpoint_associations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_firewall_policy_response() :: %{
        "FirewallPolicy" => firewall_policy(),
        "FirewallPolicyResponse" => firewall_policy_response(),
        "UpdateToken" => String.t()
      }
      
  """
  @type describe_firewall_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_availability_zone_change_protection_request() :: %{
        optional("FirewallArn") => String.t(),
        optional("FirewallName") => String.t(),
        optional("UpdateToken") => String.t(),
        required("AvailabilityZoneChangeProtection") => boolean()
      }
      
  """
  @type update_availability_zone_change_protection_request() :: %{String.t() => any()}

  @type accept_network_firewall_transit_gateway_attachment_errors() ::
          throttling_exception()
          | internal_server_error()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type associate_availability_zones_errors() ::
          invalid_token_exception()
          | throttling_exception()
          | internal_server_error()
          | invalid_request_exception()
          | resource_not_found_exception()
          | insufficient_capacity_exception()
          | invalid_operation_exception()

  @type associate_firewall_policy_errors() ::
          invalid_token_exception()
          | throttling_exception()
          | internal_server_error()
          | invalid_request_exception()
          | resource_not_found_exception()
          | invalid_operation_exception()

  @type associate_subnets_errors() ::
          invalid_token_exception()
          | throttling_exception()
          | internal_server_error()
          | invalid_request_exception()
          | resource_not_found_exception()
          | insufficient_capacity_exception()
          | invalid_operation_exception()

  @type create_firewall_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | internal_server_error()
          | invalid_request_exception()
          | insufficient_capacity_exception()
          | invalid_operation_exception()

  @type create_firewall_policy_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | internal_server_error()
          | invalid_request_exception()
          | insufficient_capacity_exception()

  @type create_rule_group_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | internal_server_error()
          | invalid_request_exception()
          | insufficient_capacity_exception()

  @type create_t_l_s_inspection_configuration_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | internal_server_error()
          | invalid_request_exception()
          | insufficient_capacity_exception()

  @type create_vpc_endpoint_association_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | internal_server_error()
          | invalid_request_exception()
          | resource_not_found_exception()
          | insufficient_capacity_exception()
          | invalid_operation_exception()

  @type delete_firewall_errors() ::
          throttling_exception()
          | internal_server_error()
          | invalid_request_exception()
          | resource_not_found_exception()
          | invalid_operation_exception()
          | unsupported_operation_exception()

  @type delete_firewall_policy_errors() ::
          throttling_exception()
          | internal_server_error()
          | invalid_request_exception()
          | resource_not_found_exception()
          | invalid_operation_exception()
          | unsupported_operation_exception()

  @type delete_network_firewall_transit_gateway_attachment_errors() ::
          throttling_exception()
          | internal_server_error()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type delete_resource_policy_errors() ::
          throttling_exception()
          | invalid_resource_policy_exception()
          | internal_server_error()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type delete_rule_group_errors() ::
          throttling_exception()
          | internal_server_error()
          | invalid_request_exception()
          | resource_not_found_exception()
          | invalid_operation_exception()
          | unsupported_operation_exception()

  @type delete_t_l_s_inspection_configuration_errors() ::
          throttling_exception()
          | internal_server_error()
          | invalid_request_exception()
          | resource_not_found_exception()
          | invalid_operation_exception()

  @type delete_vpc_endpoint_association_errors() ::
          throttling_exception()
          | internal_server_error()
          | invalid_request_exception()
          | resource_not_found_exception()
          | invalid_operation_exception()

  @type describe_firewall_errors() ::
          throttling_exception()
          | internal_server_error()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type describe_firewall_metadata_errors() ::
          throttling_exception()
          | internal_server_error()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type describe_firewall_policy_errors() ::
          throttling_exception()
          | internal_server_error()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type describe_flow_operation_errors() ::
          throttling_exception()
          | internal_server_error()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type describe_logging_configuration_errors() ::
          throttling_exception()
          | internal_server_error()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type describe_resource_policy_errors() ::
          throttling_exception()
          | internal_server_error()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type describe_rule_group_errors() ::
          throttling_exception()
          | internal_server_error()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type describe_rule_group_metadata_errors() ::
          throttling_exception()
          | internal_server_error()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type describe_rule_group_summary_errors() ::
          throttling_exception()
          | internal_server_error()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type describe_t_l_s_inspection_configuration_errors() ::
          throttling_exception()
          | internal_server_error()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type describe_vpc_endpoint_association_errors() ::
          throttling_exception()
          | internal_server_error()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type disassociate_availability_zones_errors() ::
          invalid_token_exception()
          | throttling_exception()
          | internal_server_error()
          | invalid_request_exception()
          | resource_not_found_exception()
          | invalid_operation_exception()

  @type disassociate_subnets_errors() ::
          invalid_token_exception()
          | throttling_exception()
          | internal_server_error()
          | invalid_request_exception()
          | resource_not_found_exception()
          | invalid_operation_exception()

  @type get_analysis_report_results_errors() ::
          throttling_exception()
          | internal_server_error()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type list_analysis_reports_errors() ::
          throttling_exception()
          | internal_server_error()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type list_firewall_policies_errors() ::
          throttling_exception() | internal_server_error() | invalid_request_exception()

  @type list_firewalls_errors() ::
          throttling_exception() | internal_server_error() | invalid_request_exception()

  @type list_flow_operation_results_errors() ::
          throttling_exception()
          | internal_server_error()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type list_flow_operations_errors() ::
          throttling_exception()
          | internal_server_error()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type list_rule_groups_errors() ::
          throttling_exception() | internal_server_error() | invalid_request_exception()

  @type list_t_l_s_inspection_configurations_errors() ::
          throttling_exception() | internal_server_error() | invalid_request_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | internal_server_error()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type list_vpc_endpoint_associations_errors() ::
          throttling_exception() | internal_server_error() | invalid_request_exception()

  @type put_resource_policy_errors() ::
          throttling_exception()
          | invalid_resource_policy_exception()
          | internal_server_error()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type reject_network_firewall_transit_gateway_attachment_errors() ::
          throttling_exception()
          | internal_server_error()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type start_analysis_report_errors() ::
          throttling_exception()
          | internal_server_error()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type start_flow_capture_errors() ::
          throttling_exception()
          | internal_server_error()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type start_flow_flush_errors() ::
          throttling_exception()
          | internal_server_error()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | internal_server_error()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | internal_server_error()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type update_availability_zone_change_protection_errors() ::
          invalid_token_exception()
          | throttling_exception()
          | internal_server_error()
          | invalid_request_exception()
          | resource_not_found_exception()
          | resource_owner_check_exception()

  @type update_firewall_analysis_settings_errors() ::
          throttling_exception()
          | internal_server_error()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type update_firewall_delete_protection_errors() ::
          invalid_token_exception()
          | throttling_exception()
          | internal_server_error()
          | invalid_request_exception()
          | resource_not_found_exception()
          | resource_owner_check_exception()

  @type update_firewall_description_errors() ::
          invalid_token_exception()
          | throttling_exception()
          | internal_server_error()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type update_firewall_encryption_configuration_errors() ::
          invalid_token_exception()
          | throttling_exception()
          | internal_server_error()
          | invalid_request_exception()
          | resource_not_found_exception()
          | resource_owner_check_exception()

  @type update_firewall_policy_errors() ::
          invalid_token_exception()
          | throttling_exception()
          | internal_server_error()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type update_firewall_policy_change_protection_errors() ::
          invalid_token_exception()
          | throttling_exception()
          | internal_server_error()
          | invalid_request_exception()
          | resource_not_found_exception()
          | resource_owner_check_exception()

  @type update_logging_configuration_errors() ::
          invalid_token_exception()
          | log_destination_permission_exception()
          | throttling_exception()
          | internal_server_error()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type update_rule_group_errors() ::
          invalid_token_exception()
          | throttling_exception()
          | internal_server_error()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type update_subnet_change_protection_errors() ::
          invalid_token_exception()
          | throttling_exception()
          | internal_server_error()
          | invalid_request_exception()
          | resource_not_found_exception()
          | resource_owner_check_exception()

  @type update_t_l_s_inspection_configuration_errors() ::
          invalid_token_exception()
          | throttling_exception()
          | internal_server_error()
          | invalid_request_exception()
          | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2020-11-12",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "network-firewall",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Network Firewall",
      signature_version: "v4",
      signing_name: "network-firewall",
      target_prefix: "NetworkFirewall_20201112"
    }
  end

  @doc """
  Accepts a transit gateway attachment request for Network Firewall.

  When you accept the attachment request, Network Firewall creates the necessary
  routing components to enable traffic flow between the transit gateway and
  firewall endpoints.

  You must accept a transit gateway attachment to complete the creation of a
  transit gateway-attached firewall, unless auto-accept is enabled on the transit
  gateway. After acceptance, use `DescribeFirewall` to verify the firewall status.

  To reject an attachment instead of accepting it, use
  `RejectNetworkFirewallTransitGatewayAttachment`.

  It can take several minutes for the attachment acceptance to complete and the
  firewall to become available.
  """
  @spec accept_network_firewall_transit_gateway_attachment(
          map(),
          accept_network_firewall_transit_gateway_attachment_request(),
          list()
        ) ::
          {:ok, accept_network_firewall_transit_gateway_attachment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, accept_network_firewall_transit_gateway_attachment_errors()}
  def accept_network_firewall_transit_gateway_attachment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "AcceptNetworkFirewallTransitGatewayAttachment",
      input,
      options
    )
  end

  @doc """
  Associates the specified Availability Zones with a transit gateway-attached
  firewall.

  For each Availability Zone, Network Firewall creates a firewall endpoint to
  process traffic. You can specify one or more Availability Zones where you want
  to deploy the firewall.

  After adding Availability Zones, you must update your transit gateway route
  tables to direct traffic through the new firewall endpoints. Use
  `DescribeFirewall` to monitor the status of the new endpoints.
  """
  @spec associate_availability_zones(map(), associate_availability_zones_request(), list()) ::
          {:ok, associate_availability_zones_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_availability_zones_errors()}
  def associate_availability_zones(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssociateAvailabilityZones", input, options)
  end

  @doc """
  Associates a `FirewallPolicy` to a `Firewall`.

  A firewall policy defines how to monitor and manage your VPC network traffic,
  using a
  collection of inspection rule groups and other settings. Each firewall requires
  one
  firewall policy association, and you can use the same firewall policy for
  multiple
  firewalls.
  """
  @spec associate_firewall_policy(map(), associate_firewall_policy_request(), list()) ::
          {:ok, associate_firewall_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_firewall_policy_errors()}
  def associate_firewall_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssociateFirewallPolicy", input, options)
  end

  @doc """
  Associates the specified subnets in the Amazon VPC to the firewall.

  You can specify one
  subnet for each of the Availability Zones that the VPC spans.

  This request creates an Network Firewall firewall endpoint in each of the
  subnets. To
  enable the firewall's protections, you must also modify the VPC's route tables
  for each
  subnet's Availability Zone, to redirect the traffic that's coming into and going
  out of the
  zone through the firewall endpoint.
  """
  @spec associate_subnets(map(), associate_subnets_request(), list()) ::
          {:ok, associate_subnets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_subnets_errors()}
  def associate_subnets(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssociateSubnets", input, options)
  end

  @doc """
  Creates an Network Firewall `Firewall` and accompanying `FirewallStatus` for a
  VPC.

  The firewall defines the configuration settings for an Network Firewall
  firewall. The settings that you can define at creation include the firewall
  policy, the subnets in your VPC to use for the firewall endpoints, and any tags
  that are attached to the firewall Amazon Web Services resource.

  After you create a firewall, you can provide additional settings, like the
  logging configuration.

  To update the settings for a firewall, you use the operations that apply to the
  settings
  themselves, for example `UpdateLoggingConfiguration`, `AssociateSubnets`, and
  `UpdateFirewallDeleteProtection`.

  To manage a firewall's tags, use the standard Amazon Web Services resource
  tagging operations, `ListTagsForResource`, `TagResource`, and `UntagResource`.

  To retrieve information about firewalls, use `ListFirewalls` and
  `DescribeFirewall`.

  To generate a report on the last 30 days of traffic monitored by a firewall, use
  `StartAnalysisReport`.
  """
  @spec create_firewall(map(), create_firewall_request(), list()) ::
          {:ok, create_firewall_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_firewall_errors()}
  def create_firewall(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateFirewall", input, options)
  end

  @doc """
  Creates the firewall policy for the firewall according to the specifications.

  An Network Firewall firewall policy defines the behavior of a firewall, in a
  collection of
  stateless and stateful rule groups and other settings. You can use one firewall
  policy for
  multiple firewalls.
  """
  @spec create_firewall_policy(map(), create_firewall_policy_request(), list()) ::
          {:ok, create_firewall_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_firewall_policy_errors()}
  def create_firewall_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateFirewallPolicy", input, options)
  end

  @doc """
  Creates the specified stateless or stateful rule group, which includes the rules
  for
  network traffic inspection, a capacity setting, and tags.

  You provide your rule group specification in your request using either
  `RuleGroup` or `Rules`.
  """
  @spec create_rule_group(map(), create_rule_group_request(), list()) ::
          {:ok, create_rule_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_rule_group_errors()}
  def create_rule_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateRuleGroup", input, options)
  end

  @doc """
  Creates an Network Firewall TLS inspection configuration.

  Network Firewall uses TLS inspection configurations to decrypt your firewall's
  inbound and outbound SSL/TLS traffic. After decryption, Network Firewall
  inspects the traffic according to your firewall policy's stateful rules, and
  then re-encrypts it before sending it to its destination. You can enable
  inspection of your firewall's inbound traffic, outbound traffic, or both. To use
  TLS inspection with your firewall, you must first import or provision
  certificates using ACM, create a TLS inspection configuration, add that
  configuration to a new firewall policy, and then associate that policy with your
  firewall.

  To update the settings for a TLS inspection configuration, use
  `UpdateTLSInspectionConfiguration`.

  To manage a TLS inspection configuration's tags, use the standard Amazon Web
  Services resource tagging operations, `ListTagsForResource`, `TagResource`, and
  `UntagResource`.

  To retrieve information about TLS inspection configurations, use
  `ListTLSInspectionConfigurations` and `DescribeTLSInspectionConfiguration`.

  For more information about TLS inspection configurations, see [Inspecting SSL/TLS traffic with TLS
  inspection
  configurations](https://docs.aws.amazon.com/network-firewall/latest/developerguide/tls-inspection.html)
  in the *Network Firewall Developer Guide*.
  """
  @spec create_t_l_s_inspection_configuration(
          map(),
          create_t_l_s_inspection_configuration_request(),
          list()
        ) ::
          {:ok, create_t_l_s_inspection_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_t_l_s_inspection_configuration_errors()}
  def create_t_l_s_inspection_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateTLSInspectionConfiguration", input, options)
  end

  @doc """
  Creates a firewall endpoint for an Network Firewall firewall.

  This type of firewall endpoint is independent of the firewall endpoints that you
  specify in the `Firewall` itself, and you define it in addition to those
  endpoints after the firewall has been created. You can define a VPC endpoint
  association using a different VPC than the one you used in the firewall
  specifications.
  """
  @spec create_vpc_endpoint_association(map(), create_vpc_endpoint_association_request(), list()) ::
          {:ok, create_vpc_endpoint_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_vpc_endpoint_association_errors()}
  def create_vpc_endpoint_association(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateVpcEndpointAssociation", input, options)
  end

  @doc """
  Deletes the specified `Firewall` and its `FirewallStatus`.

  This operation requires the firewall's `DeleteProtection` flag to be
  `FALSE`. You can't revert this operation.

  You can check whether a firewall is
  in use by reviewing the route tables for the Availability Zones where you have
  firewall subnet mappings. Retrieve the subnet mappings by calling
  `DescribeFirewall`.
  You define and update the route tables through Amazon VPC. As needed, update the
  route tables for the
  zones to remove the firewall endpoints. When the route tables no longer use the
  firewall endpoints,
  you can remove the firewall safely.

  To delete a firewall, remove the delete protection if you need to using
  `UpdateFirewallDeleteProtection`,
  then delete the firewall by calling `DeleteFirewall`.
  """
  @spec delete_firewall(map(), delete_firewall_request(), list()) ::
          {:ok, delete_firewall_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_firewall_errors()}
  def delete_firewall(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteFirewall", input, options)
  end

  @doc """
  Deletes the specified `FirewallPolicy`.
  """
  @spec delete_firewall_policy(map(), delete_firewall_policy_request(), list()) ::
          {:ok, delete_firewall_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_firewall_policy_errors()}
  def delete_firewall_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteFirewallPolicy", input, options)
  end

  @doc """
  Deletes a transit gateway attachment from a Network Firewall.

  Either the firewall owner or the transit gateway owner can delete the
  attachment.

  After you delete a transit gateway attachment, raffic will no longer flow
  through the firewall endpoints.

  After you initiate the delete operation, use `DescribeFirewall` to monitor the
  deletion status.
  """
  @spec delete_network_firewall_transit_gateway_attachment(
          map(),
          delete_network_firewall_transit_gateway_attachment_request(),
          list()
        ) ::
          {:ok, delete_network_firewall_transit_gateway_attachment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_network_firewall_transit_gateway_attachment_errors()}
  def delete_network_firewall_transit_gateway_attachment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "DeleteNetworkFirewallTransitGatewayAttachment",
      input,
      options
    )
  end

  @doc """
  Deletes a resource policy that you created in a `PutResourcePolicy` request.
  """
  @spec delete_resource_policy(map(), delete_resource_policy_request(), list()) ::
          {:ok, delete_resource_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_resource_policy_errors()}
  def delete_resource_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteResourcePolicy", input, options)
  end

  @doc """
  Deletes the specified `RuleGroup`.
  """
  @spec delete_rule_group(map(), delete_rule_group_request(), list()) ::
          {:ok, delete_rule_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_rule_group_errors()}
  def delete_rule_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteRuleGroup", input, options)
  end

  @doc """
  Deletes the specified `TLSInspectionConfiguration`.
  """
  @spec delete_t_l_s_inspection_configuration(
          map(),
          delete_t_l_s_inspection_configuration_request(),
          list()
        ) ::
          {:ok, delete_t_l_s_inspection_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_t_l_s_inspection_configuration_errors()}
  def delete_t_l_s_inspection_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteTLSInspectionConfiguration", input, options)
  end

  @doc """
  Deletes the specified `VpcEndpointAssociation`.

  You can check whether an endpoint association is
  in use by reviewing the route tables for the Availability Zones where you have
  the endpoint subnet mapping.
  You can retrieve the subnet mapping by calling `DescribeVpcEndpointAssociation`.
  You define and update the route tables through Amazon VPC. As needed, update the
  route tables for the
  Availability Zone to remove the firewall endpoint for the association. When the
  route tables no longer use the firewall endpoint,
  you can remove the endpoint association safely.
  """
  @spec delete_vpc_endpoint_association(map(), delete_vpc_endpoint_association_request(), list()) ::
          {:ok, delete_vpc_endpoint_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_vpc_endpoint_association_errors()}
  def delete_vpc_endpoint_association(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteVpcEndpointAssociation", input, options)
  end

  @doc """
  Returns the data objects for the specified firewall.
  """
  @spec describe_firewall(map(), describe_firewall_request(), list()) ::
          {:ok, describe_firewall_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_firewall_errors()}
  def describe_firewall(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeFirewall", input, options)
  end

  @doc """
  Returns the high-level information about a firewall, including the Availability
  Zones where the Firewall is
  currently in use.
  """
  @spec describe_firewall_metadata(map(), describe_firewall_metadata_request(), list()) ::
          {:ok, describe_firewall_metadata_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_firewall_metadata_errors()}
  def describe_firewall_metadata(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeFirewallMetadata", input, options)
  end

  @doc """
  Returns the data objects for the specified firewall policy.
  """
  @spec describe_firewall_policy(map(), describe_firewall_policy_request(), list()) ::
          {:ok, describe_firewall_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_firewall_policy_errors()}
  def describe_firewall_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeFirewallPolicy", input, options)
  end

  @doc """
  Returns key information about a specific flow operation.
  """
  @spec describe_flow_operation(map(), describe_flow_operation_request(), list()) ::
          {:ok, describe_flow_operation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_flow_operation_errors()}
  def describe_flow_operation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeFlowOperation", input, options)
  end

  @doc """
  Returns the logging configuration for the specified firewall.
  """
  @spec describe_logging_configuration(map(), describe_logging_configuration_request(), list()) ::
          {:ok, describe_logging_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_logging_configuration_errors()}
  def describe_logging_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeLoggingConfiguration", input, options)
  end

  @doc """
  Retrieves a resource policy that you created in a `PutResourcePolicy` request.
  """
  @spec describe_resource_policy(map(), describe_resource_policy_request(), list()) ::
          {:ok, describe_resource_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_resource_policy_errors()}
  def describe_resource_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeResourcePolicy", input, options)
  end

  @doc """
  Returns the data objects for the specified rule group.
  """
  @spec describe_rule_group(map(), describe_rule_group_request(), list()) ::
          {:ok, describe_rule_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_rule_group_errors()}
  def describe_rule_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeRuleGroup", input, options)
  end

  @doc """
  High-level information about a rule group, returned by operations like create
  and describe.

  You can use the information provided in the metadata to retrieve and manage a
  rule group.
  You can retrieve all objects for a rule group by calling `DescribeRuleGroup`.
  """
  @spec describe_rule_group_metadata(map(), describe_rule_group_metadata_request(), list()) ::
          {:ok, describe_rule_group_metadata_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_rule_group_metadata_errors()}
  def describe_rule_group_metadata(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeRuleGroupMetadata", input, options)
  end

  @doc """
  Returns detailed information for a stateful rule group.

  For active threat defense Amazon Web Services managed rule groups, this
  operation provides insight into the protections enabled by the rule group, based
  on Suricata rule metadata fields. Summaries are available for rule groups you
  manage and for active threat defense Amazon Web Services managed rule groups.

  To modify how threat information appears in summaries, use the
  `SummaryConfiguration` parameter in `UpdateRuleGroup`.
  """
  @spec describe_rule_group_summary(map(), describe_rule_group_summary_request(), list()) ::
          {:ok, describe_rule_group_summary_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_rule_group_summary_errors()}
  def describe_rule_group_summary(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeRuleGroupSummary", input, options)
  end

  @doc """
  Returns the data objects for the specified TLS inspection configuration.
  """
  @spec describe_t_l_s_inspection_configuration(
          map(),
          describe_t_l_s_inspection_configuration_request(),
          list()
        ) ::
          {:ok, describe_t_l_s_inspection_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_t_l_s_inspection_configuration_errors()}
  def describe_t_l_s_inspection_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeTLSInspectionConfiguration", input, options)
  end

  @doc """
  Returns the data object for the specified VPC endpoint association.
  """
  @spec describe_vpc_endpoint_association(
          map(),
          describe_vpc_endpoint_association_request(),
          list()
        ) ::
          {:ok, describe_vpc_endpoint_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_vpc_endpoint_association_errors()}
  def describe_vpc_endpoint_association(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeVpcEndpointAssociation", input, options)
  end

  @doc """
  Removes the specified Availability Zone associations from a transit
  gateway-attached firewall.

  This removes the firewall endpoints from these Availability Zones and stops
  traffic filtering in those zones. Before removing an Availability Zone, ensure
  you've updated your transit gateway route tables to redirect traffic
  appropriately.

  If `AvailabilityZoneChangeProtection` is enabled, you must first disable it
  using `UpdateAvailabilityZoneChangeProtection`.

  To verify the status of your Availability Zone changes, use `DescribeFirewall`.
  """
  @spec disassociate_availability_zones(map(), disassociate_availability_zones_request(), list()) ::
          {:ok, disassociate_availability_zones_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_availability_zones_errors()}
  def disassociate_availability_zones(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisassociateAvailabilityZones", input, options)
  end

  @doc """
  Removes the specified subnet associations from the firewall.

  This removes the
  firewall endpoints from the subnets and removes any network filtering
  protections that the endpoints
  were providing.
  """
  @spec disassociate_subnets(map(), disassociate_subnets_request(), list()) ::
          {:ok, disassociate_subnets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_subnets_errors()}
  def disassociate_subnets(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisassociateSubnets", input, options)
  end

  @doc """
  The results of a `COMPLETED` analysis report generated with
  `StartAnalysisReport`.

  For more information, see `AnalysisTypeReportResult`.
  """
  @spec get_analysis_report_results(map(), get_analysis_report_results_request(), list()) ::
          {:ok, get_analysis_report_results_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_analysis_report_results_errors()}
  def get_analysis_report_results(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetAnalysisReportResults", input, options)
  end

  @doc """
  Returns a list of all traffic analysis reports generated within the last 30
  days.
  """
  @spec list_analysis_reports(map(), list_analysis_reports_request(), list()) ::
          {:ok, list_analysis_reports_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_analysis_reports_errors()}
  def list_analysis_reports(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAnalysisReports", input, options)
  end

  @doc """
  Retrieves the metadata for the firewall policies that you have defined.

  Depending on
  your setting for max results and the number of firewall policies, a single call
  might not
  return the full list.
  """
  @spec list_firewall_policies(map(), list_firewall_policies_request(), list()) ::
          {:ok, list_firewall_policies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_firewall_policies_errors()}
  def list_firewall_policies(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListFirewallPolicies", input, options)
  end

  @doc """
  Retrieves the metadata for the firewalls that you have defined.

  If you provide VPC
  identifiers in your request, this returns only the firewalls for those VPCs.

  Depending on your setting for max results and the number of firewalls, a single
  call
  might not return the full list.
  """
  @spec list_firewalls(map(), list_firewalls_request(), list()) ::
          {:ok, list_firewalls_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_firewalls_errors()}
  def list_firewalls(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListFirewalls", input, options)
  end

  @doc """
  Returns the results of a specific flow operation.

  Flow operations let you manage the flows tracked in the flow table, also known
  as the firewall table.

  A flow is network traffic that is monitored by a firewall, either by stateful or
  stateless rules.
  For traffic to be considered part of a flow, it must share Destination,
  DestinationPort, Direction, Protocol, Source, and SourcePort.
  """
  @spec list_flow_operation_results(map(), list_flow_operation_results_request(), list()) ::
          {:ok, list_flow_operation_results_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_flow_operation_results_errors()}
  def list_flow_operation_results(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListFlowOperationResults", input, options)
  end

  @doc """
  Returns a list of all flow operations ran in a specific firewall.

  You can optionally narrow the request scope by specifying the operation type or
  Availability Zone associated with a firewall's flow operations.

  Flow operations let you manage the flows tracked in the flow table, also known
  as the firewall table.

  A flow is network traffic that is monitored by a firewall, either by stateful or
  stateless rules.
  For traffic to be considered part of a flow, it must share Destination,
  DestinationPort, Direction, Protocol, Source, and SourcePort.
  """
  @spec list_flow_operations(map(), list_flow_operations_request(), list()) ::
          {:ok, list_flow_operations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_flow_operations_errors()}
  def list_flow_operations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListFlowOperations", input, options)
  end

  @doc """
  Retrieves the metadata for the rule groups that you have defined.

  Depending on your
  setting for max results and the number of rule groups, a single call might not
  return the
  full list.
  """
  @spec list_rule_groups(map(), list_rule_groups_request(), list()) ::
          {:ok, list_rule_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_rule_groups_errors()}
  def list_rule_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListRuleGroups", input, options)
  end

  @doc """
  Retrieves the metadata for the TLS inspection configurations that you have
  defined.

  Depending on your setting for max results and the number of TLS inspection
  configurations, a single call might not return the full list.
  """
  @spec list_t_l_s_inspection_configurations(
          map(),
          list_t_l_s_inspection_configurations_request(),
          list()
        ) ::
          {:ok, list_t_l_s_inspection_configurations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_t_l_s_inspection_configurations_errors()}
  def list_t_l_s_inspection_configurations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTLSInspectionConfigurations", input, options)
  end

  @doc """
  Retrieves the tags associated with the specified resource.

  Tags are key:value pairs that
  you can use to categorize and manage your resources, for purposes like billing.
  For
  example, you might set the tag key to "customer" and the value to the customer
  name or ID.
  You can specify one or more tags to add to each Amazon Web Services resource, up
  to 50 tags for a
  resource.

  You can tag the Amazon Web Services resources that you manage through Network
  Firewall: firewalls, firewall
  policies, and rule groups.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_request(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Retrieves the metadata for the VPC endpoint associations that you have defined.

  If you specify a fireawll,
  this returns only the endpoint associations for that firewall.

  Depending on your setting for max results and the number of associations, a
  single call
  might not return the full list.
  """
  @spec list_vpc_endpoint_associations(map(), list_vpc_endpoint_associations_request(), list()) ::
          {:ok, list_vpc_endpoint_associations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_vpc_endpoint_associations_errors()}
  def list_vpc_endpoint_associations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListVpcEndpointAssociations", input, options)
  end

  @doc """
  Creates or updates an IAM policy for your rule group, firewall policy, or
  firewall.

  Use this to share these resources between accounts. This operation works in
  conjunction with the Amazon Web Services Resource Access Manager (RAM) service
  to manage resource sharing for Network Firewall.

  For information about using sharing with Network Firewall resources, see
  [Sharing Network Firewall resources](https://docs.aws.amazon.com/network-firewall/latest/developerguide/sharing.html)
  in the *Network Firewall Developer Guide*.

  Use this operation to create or update a resource policy for your Network
  Firewall rule group, firewall policy, or firewall. In the resource policy, you
  specify the accounts that you want to share the Network Firewall resource with
  and the operations that you want the accounts to be able to perform.

  When you add an account in the resource policy, you then run the following
  Resource Access Manager (RAM) operations to access and accept the shared
  resource.

    *

  [GetResourceShareInvitations](https://docs.aws.amazon.com/ram/latest/APIReference/API_GetResourceShareInvitations.html) - Returns the Amazon Resource Names (ARNs) of the resource share invitations.

    *

  [AcceptResourceShareInvitation](https://docs.aws.amazon.com/ram/latest/APIReference/API_AcceptResourceShareInvitation.html)
  - Accepts the share invitation for a specified resource share.

  For additional information about resource sharing using RAM, see [Resource Access Manager User
  Guide](https://docs.aws.amazon.com/ram/latest/userguide/what-is.html).
  """
  @spec put_resource_policy(map(), put_resource_policy_request(), list()) ::
          {:ok, put_resource_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_resource_policy_errors()}
  def put_resource_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutResourcePolicy", input, options)
  end

  @doc """
  Rejects a transit gateway attachment request for Network Firewall.

  When you reject the attachment request, Network Firewall cancels the creation of
  routing components between the transit gateway and firewall endpoints.

  Only the firewall owner can reject the attachment. After rejection, no traffic
  will flow through the firewall endpoints for this attachment.

  Use `DescribeFirewall` to monitor the rejection status. To accept the attachment
  instead of rejecting it, use `AcceptNetworkFirewallTransitGatewayAttachment`.

  Once rejected, you cannot reverse this action. To establish connectivity, you
  must create a new transit gateway-attached firewall.
  """
  @spec reject_network_firewall_transit_gateway_attachment(
          map(),
          reject_network_firewall_transit_gateway_attachment_request(),
          list()
        ) ::
          {:ok, reject_network_firewall_transit_gateway_attachment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, reject_network_firewall_transit_gateway_attachment_errors()}
  def reject_network_firewall_transit_gateway_attachment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "RejectNetworkFirewallTransitGatewayAttachment",
      input,
      options
    )
  end

  @doc """
  Generates a traffic analysis report for the timeframe and traffic type you
  specify.

  For information on the contents of a traffic analysis report, see
  `AnalysisReport`.
  """
  @spec start_analysis_report(map(), start_analysis_report_request(), list()) ::
          {:ok, start_analysis_report_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_analysis_report_errors()}
  def start_analysis_report(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartAnalysisReport", input, options)
  end

  @doc """
  Begins capturing the flows in a firewall, according to the filters you define.

  Captures are similar, but not identical to snapshots. Capture operations provide
  visibility into flows that are not closed and are tracked by a firewall's flow
  table.
  Unlike snapshots, captures are a time-boxed view.

  A flow is network traffic that is monitored by a firewall, either by stateful or
  stateless rules.
  For traffic to be considered part of a flow, it must share Destination,
  DestinationPort, Direction, Protocol, Source, and SourcePort.

  To avoid encountering operation limits, you should avoid starting captures with
  broad filters, like wide IP ranges.
  Instead, we recommend you define more specific criteria with `FlowFilters`, like
  narrow IP ranges, ports, or protocols.
  """
  @spec start_flow_capture(map(), start_flow_capture_request(), list()) ::
          {:ok, start_flow_capture_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_flow_capture_errors()}
  def start_flow_capture(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartFlowCapture", input, options)
  end

  @doc """
  Begins the flushing of traffic from the firewall, according to the filters you
  define.

  When the operation starts, impacted flows are temporarily marked as timed out
  before the Suricata engine prunes,
  or flushes, the flows from the firewall table.

  While the flush completes, impacted flows are processed as midstream traffic.
  This may result in a
  temporary increase in midstream traffic metrics. We recommend that you double
  check your stream exception policy
  before you perform a flush operation.
  """
  @spec start_flow_flush(map(), start_flow_flush_request(), list()) ::
          {:ok, start_flow_flush_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_flow_flush_errors()}
  def start_flow_flush(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartFlowFlush", input, options)
  end

  @doc """
  Adds the specified tags to the specified resource.

  Tags are key:value pairs that you can
  use to categorize and manage your resources, for purposes like billing. For
  example, you
  might set the tag key to "customer" and the value to the customer name or ID.
  You can
  specify one or more tags to add to each Amazon Web Services resource, up to 50
  tags for a resource.

  You can tag the Amazon Web Services resources that you manage through Network
  Firewall: firewalls, firewall
  policies, and rule groups.
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Removes the tags with the specified keys from the specified resource.

  Tags are key:value
  pairs that you can use to categorize and manage your resources, for purposes
  like billing.
  For example, you might set the tag key to "customer" and the value to the
  customer name or
  ID. You can specify one or more tags to add to each Amazon Web Services
  resource, up to 50 tags for a
  resource.

  You can manage tags for the Amazon Web Services resources that you manage
  through Network Firewall:
  firewalls, firewall policies, and rule groups.
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Modifies the `AvailabilityZoneChangeProtection` setting for a transit
  gateway-attached firewall.

  When enabled, this setting prevents accidental changes to the firewall's
  Availability Zone configuration. This helps protect against disrupting traffic
  flow in production environments.

  When enabled, you must disable this protection before using
  `AssociateAvailabilityZones` or `DisassociateAvailabilityZones` to modify the
  firewall's Availability Zone configuration.
  """
  @spec update_availability_zone_change_protection(
          map(),
          update_availability_zone_change_protection_request(),
          list()
        ) ::
          {:ok, update_availability_zone_change_protection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_availability_zone_change_protection_errors()}
  def update_availability_zone_change_protection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateAvailabilityZoneChangeProtection", input, options)
  end

  @doc """
  Enables specific types of firewall analysis on a specific firewall you define.
  """
  @spec update_firewall_analysis_settings(
          map(),
          update_firewall_analysis_settings_request(),
          list()
        ) ::
          {:ok, update_firewall_analysis_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_firewall_analysis_settings_errors()}
  def update_firewall_analysis_settings(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateFirewallAnalysisSettings", input, options)
  end

  @doc """
  Modifies the flag, `DeleteProtection`, which indicates whether it is possible
  to delete the firewall.

  If the flag is set to `TRUE`, the firewall is protected
  against deletion. This setting helps protect against accidentally deleting a
  firewall
  that's in use.
  """
  @spec update_firewall_delete_protection(
          map(),
          update_firewall_delete_protection_request(),
          list()
        ) ::
          {:ok, update_firewall_delete_protection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_firewall_delete_protection_errors()}
  def update_firewall_delete_protection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateFirewallDeleteProtection", input, options)
  end

  @doc """
  Modifies the description for the specified firewall.

  Use the description to help you
  identify the firewall when you're working with it.
  """
  @spec update_firewall_description(map(), update_firewall_description_request(), list()) ::
          {:ok, update_firewall_description_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_firewall_description_errors()}
  def update_firewall_description(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateFirewallDescription", input, options)
  end

  @doc """
  A complex type that contains settings for encryption of your firewall resources.
  """
  @spec update_firewall_encryption_configuration(
          map(),
          update_firewall_encryption_configuration_request(),
          list()
        ) ::
          {:ok, update_firewall_encryption_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_firewall_encryption_configuration_errors()}
  def update_firewall_encryption_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateFirewallEncryptionConfiguration", input, options)
  end

  @doc """
  Updates the properties of the specified firewall policy.
  """
  @spec update_firewall_policy(map(), update_firewall_policy_request(), list()) ::
          {:ok, update_firewall_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_firewall_policy_errors()}
  def update_firewall_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateFirewallPolicy", input, options)
  end

  @doc """
  Modifies the flag, `ChangeProtection`, which indicates whether it
  is possible to change the firewall.

  If the flag is set to `TRUE`, the firewall is protected
  from changes. This setting helps protect against accidentally changing a
  firewall that's in use.
  """
  @spec update_firewall_policy_change_protection(
          map(),
          update_firewall_policy_change_protection_request(),
          list()
        ) ::
          {:ok, update_firewall_policy_change_protection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_firewall_policy_change_protection_errors()}
  def update_firewall_policy_change_protection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateFirewallPolicyChangeProtection", input, options)
  end

  @doc """
  Sets the logging configuration for the specified firewall.

  To change the logging configuration, retrieve the `LoggingConfiguration` by
  calling `DescribeLoggingConfiguration`, then change it and provide
  the modified object to this update call. You must change the logging
  configuration one
  `LogDestinationConfig` at a time inside the retrieved `LoggingConfiguration`
  object.

  You can perform only one of the following actions in any call to
  `UpdateLoggingConfiguration`:

    *
  Create a new log destination object by adding a single
  `LogDestinationConfig` array element to
  `LogDestinationConfigs`.

    *
  Delete a log destination object by removing a single
  `LogDestinationConfig` array element from
  `LogDestinationConfigs`.

    *
  Change the `LogDestination` setting in a single
  `LogDestinationConfig` array element.

  You can't change the `LogDestinationType` or `LogType` in a
  `LogDestinationConfig`. To change these settings, delete the existing
  `LogDestinationConfig` object and create a new one, using two separate calls
  to this update operation.
  """
  @spec update_logging_configuration(map(), update_logging_configuration_request(), list()) ::
          {:ok, update_logging_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_logging_configuration_errors()}
  def update_logging_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateLoggingConfiguration", input, options)
  end

  @doc """
  Updates the rule settings for the specified rule group.

  You use a rule group by
  reference in one or more firewall policies. When you modify a rule group, you
  modify all
  firewall policies that use the rule group.

  To update a rule group, first call `DescribeRuleGroup` to retrieve the
  current `RuleGroup` object, update the object as needed, and then provide
  the updated object to this call.
  """
  @spec update_rule_group(map(), update_rule_group_request(), list()) ::
          {:ok, update_rule_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_rule_group_errors()}
  def update_rule_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateRuleGroup", input, options)
  end

  @spec update_subnet_change_protection(map(), update_subnet_change_protection_request(), list()) ::
          {:ok, update_subnet_change_protection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_subnet_change_protection_errors()}
  def update_subnet_change_protection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateSubnetChangeProtection", input, options)
  end

  @doc """
  Updates the TLS inspection configuration settings for the specified TLS
  inspection configuration.

  You use a TLS inspection configuration by
  referencing it in one or more firewall policies. When you modify a TLS
  inspection configuration, you modify all
  firewall policies that use the TLS inspection configuration.

  To update a TLS inspection configuration, first call
  `DescribeTLSInspectionConfiguration` to retrieve the
  current `TLSInspectionConfiguration` object, update the object as needed, and
  then provide
  the updated object to this call.
  """
  @spec update_t_l_s_inspection_configuration(
          map(),
          update_t_l_s_inspection_configuration_request(),
          list()
        ) ::
          {:ok, update_t_l_s_inspection_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_t_l_s_inspection_configuration_errors()}
  def update_t_l_s_inspection_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateTLSInspectionConfiguration", input, options)
  end
end
