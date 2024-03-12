# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.NetworkFirewall do
  @moduledoc """
  This is the API Reference for Network Firewall.

  This guide is for developers who need
  detailed information about the Network Firewall API actions, data types, and
  errors.

    *
  The REST API requires you to handle connection details, such as calculating
  signatures, handling request retries, and error handling. For general
  information
  about using the Amazon Web Services REST APIs, see [Amazon Web Services APIs](https://docs.aws.amazon.com/general/latest/gr/aws-apis.html).

  To access Network Firewall using the REST API endpoint:
  `https://network-firewall..amazonaws.com `

    *
  Alternatively, you can use one of the Amazon Web Services SDKs to access an API
  that's tailored to
  the programming language or platform that you're using. For more information,
  see
  [Amazon Web Services SDKs](http://aws.amazon.com/tools/#SDKs). 

    *
  For descriptions of Network Firewall features, including and step-by-step
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
  Network Firewall supports Suricata version 6.0.9. For information about
  Suricata,
  see the [Suricata website](https://suricata.io/).   You can use Network Firewall to monitor and protect your VPC traffic in a number
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
  Network Firewall. For information about using Amazon VPC, see [Amazon VPC User
  Guide](https://docs.aws.amazon.com/vpc/latest/userguide/).

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
  In Network Firewall, create stateless and stateful rule groups,
  to define the components of the network traffic filtering behavior that you want
  your firewall to have.

    4.
  In Network Firewall, create a firewall policy that uses your rule groups and
  specifies additional default traffic filtering behavior.

    5.
  In Network Firewall, create a firewall and specify your new firewall policy and
  VPC subnets. Network Firewall creates a firewall endpoint in each subnet that
  you
  specify, with the behavior that's defined in the firewall policy.

    6.
  In Amazon VPC, use ingress routing enhancements to route traffic through the new
  firewall
  endpoints.
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
  tag_resource_request() :: %{
    required("ResourceArn") => String.t(),
    required("Tags") => list(tag()())
  }
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_resource_policy_response() :: %{

  }
  """
  @type delete_resource_policy_response() :: %{String.t() => any()}

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
    "RuleOrder" => list(any()),
    "StreamExceptionPolicy" => list(any())
  }
  """
  @type stateful_engine_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  untag_resource_response() :: %{

  }
  """
  @type untag_resource_response() :: %{String.t() => any()}

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
  t_l_s_inspection_configuration() :: %{
    "ServerCertificateConfigurations" => list(server_certificate_configuration()())
  }
  """
  @type t_l_s_inspection_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_logging_configuration_request() :: %{
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
  firewall_status() :: %{
    "CapacityUsageSummary" => capacity_usage_summary(),
    "ConfigurationSyncStateSummary" => list(any()),
    "Status" => list(any()),
    "SyncStates" => map()
  }
  """
  @type firewall_status() :: %{String.t() => any()}

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
    "Tags" => list(tag()()),
    "Type" => list(any())
  }
  """
  @type rule_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  ip_set() :: %{
    "Definition" => list(String.t()())
  }
  """
  @type ip_set() :: %{String.t() => any()}

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
  stateful_rule_group_reference() :: %{
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
  firewall() :: %{
    "DeleteProtection" => boolean(),
    "Description" => String.t(),
    "EncryptionConfiguration" => encryption_configuration(),
    "FirewallArn" => String.t(),
    "FirewallId" => String.t(),
    "FirewallName" => String.t(),
    "FirewallPolicyArn" => String.t(),
    "FirewallPolicyChangeProtection" => boolean(),
    "SubnetChangeProtection" => boolean(),
    "SubnetMappings" => list(subnet_mapping()()),
    "Tags" => list(tag()()),
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
    optional("DeleteProtection") => boolean(),
    optional("Description") => String.t(),
    optional("EncryptionConfiguration") => encryption_configuration(),
    optional("FirewallPolicyChangeProtection") => boolean(),
    optional("SubnetChangeProtection") => boolean(),
    optional("Tags") => list(tag()()),
    required("FirewallName") => String.t(),
    required("FirewallPolicyArn") => String.t(),
    required("SubnetMappings") => list(subnet_mapping()()),
    required("VpcId") => String.t()
  }
  """
  @type create_firewall_request() :: %{String.t() => any()}

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
  list_t_l_s_inspection_configurations_response() :: %{
    "NextToken" => String.t(),
    "TLSInspectionConfigurations" => list(t_l_s_inspection_configuration_metadata()())
  }
  """
  @type list_t_l_s_inspection_configurations_response() :: %{String.t() => any()}

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
  tag_resource_response() :: %{

  }
  """
  @type tag_resource_response() :: %{String.t() => any()}

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
  throttling_exception() :: %{
    "Message" => String.t()
  }
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_logging_configuration_response() :: %{
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
  delete_firewall_policy_request() :: %{
    optional("FirewallPolicyArn") => String.t(),
    optional("FirewallPolicyName") => String.t()
  }
  """
  @type delete_firewall_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  put_resource_policy_response() :: %{

  }
  """
  @type put_resource_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  limit_exceeded_exception() :: %{
    "Message" => String.t()
  }
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

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
  update_logging_configuration_response() :: %{
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
    "FirewallName" => String.t()
  }
  """
  @type firewall_metadata() :: %{String.t() => any()}

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
  check_certificate_revocation_status_actions() :: %{
    "RevokedStatusAction" => list(any()),
    "UnknownStatusAction" => list(any())
  }
  """
  @type check_certificate_revocation_status_actions() :: %{String.t() => any()}

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
  describe_firewall_policy_response() :: %{
    "FirewallPolicy" => firewall_policy(),
    "FirewallPolicyResponse" => firewall_policy_response(),
    "UpdateToken" => String.t()
  }
  """
  @type describe_firewall_policy_response() :: %{String.t() => any()}

  def metadata do
    %{
      api_version: "2020-11-12",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "network-firewall",
      global?: false,
      protocol: "json",
      service_id: "Network Firewall",
      signature_version: "v4",
      signing_name: "network-firewall",
      target_prefix: "NetworkFirewall_20201112"
    }
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
          | {:error, internal_server_error()}
          | {:error, invalid_operation_exception()}
          | {:error, invalid_request_exception()}
          | {:error, invalid_token_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
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
          | {:error, insufficient_capacity_exception()}
          | {:error, internal_server_error()}
          | {:error, invalid_operation_exception()}
          | {:error, invalid_request_exception()}
          | {:error, invalid_token_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
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
  """
  @spec create_firewall(map(), create_firewall_request(), list()) ::
          {:ok, create_firewall_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, insufficient_capacity_exception()}
          | {:error, internal_server_error()}
          | {:error, invalid_operation_exception()}
          | {:error, invalid_request_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, throttling_exception()}
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
          | {:error, insufficient_capacity_exception()}
          | {:error, internal_server_error()}
          | {:error, invalid_request_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, throttling_exception()}
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
          | {:error, insufficient_capacity_exception()}
          | {:error, internal_server_error()}
          | {:error, invalid_request_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, throttling_exception()}
  def create_rule_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateRuleGroup", input, options)
  end

  @doc """
  Creates an Network Firewall TLS inspection configuration.

  A TLS inspection configuration contains Certificate Manager certificate
  associations between and the scope configurations that Network Firewall uses to
  decrypt and re-encrypt traffic traveling through your firewall.

  After you create a TLS inspection configuration, you can associate it with a new
  firewall policy.

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
          | {:error, insufficient_capacity_exception()}
          | {:error, internal_server_error()}
          | {:error, invalid_request_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, throttling_exception()}
  def create_t_l_s_inspection_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateTLSInspectionConfiguration", input, options)
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
          | {:error, internal_server_error()}
          | {:error, invalid_operation_exception()}
          | {:error, invalid_request_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, unsupported_operation_exception()}
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
          | {:error, internal_server_error()}
          | {:error, invalid_operation_exception()}
          | {:error, invalid_request_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, unsupported_operation_exception()}
  def delete_firewall_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteFirewallPolicy", input, options)
  end

  @doc """
  Deletes a resource policy that you created in a `PutResourcePolicy` request.
  """
  @spec delete_resource_policy(map(), delete_resource_policy_request(), list()) ::
          {:ok, delete_resource_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_server_error()}
          | {:error, invalid_request_exception()}
          | {:error, invalid_resource_policy_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
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
          | {:error, internal_server_error()}
          | {:error, invalid_operation_exception()}
          | {:error, invalid_request_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, unsupported_operation_exception()}
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
          | {:error, internal_server_error()}
          | {:error, invalid_operation_exception()}
          | {:error, invalid_request_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
  def delete_t_l_s_inspection_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteTLSInspectionConfiguration", input, options)
  end

  @doc """
  Returns the data objects for the specified firewall.
  """
  @spec describe_firewall(map(), describe_firewall_request(), list()) ::
          {:ok, describe_firewall_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_server_error()}
          | {:error, invalid_request_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
  def describe_firewall(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeFirewall", input, options)
  end

  @doc """
  Returns the data objects for the specified firewall policy.
  """
  @spec describe_firewall_policy(map(), describe_firewall_policy_request(), list()) ::
          {:ok, describe_firewall_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_server_error()}
          | {:error, invalid_request_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
  def describe_firewall_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeFirewallPolicy", input, options)
  end

  @doc """
  Returns the logging configuration for the specified firewall.
  """
  @spec describe_logging_configuration(map(), describe_logging_configuration_request(), list()) ::
          {:ok, describe_logging_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_server_error()}
          | {:error, invalid_request_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
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
          | {:error, internal_server_error()}
          | {:error, invalid_request_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
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
          | {:error, internal_server_error()}
          | {:error, invalid_request_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
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
          | {:error, internal_server_error()}
          | {:error, invalid_request_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
  def describe_rule_group_metadata(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeRuleGroupMetadata", input, options)
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
          | {:error, internal_server_error()}
          | {:error, invalid_request_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
  def describe_t_l_s_inspection_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeTLSInspectionConfiguration", input, options)
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
          | {:error, internal_server_error()}
          | {:error, invalid_operation_exception()}
          | {:error, invalid_request_exception()}
          | {:error, invalid_token_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
  def disassociate_subnets(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisassociateSubnets", input, options)
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
          | {:error, internal_server_error()}
          | {:error, invalid_request_exception()}
          | {:error, throttling_exception()}
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
          | {:error, internal_server_error()}
          | {:error, invalid_request_exception()}
          | {:error, throttling_exception()}
  def list_firewalls(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListFirewalls", input, options)
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
          | {:error, internal_server_error()}
          | {:error, invalid_request_exception()}
          | {:error, throttling_exception()}
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
          | {:error, internal_server_error()}
          | {:error, invalid_request_exception()}
          | {:error, throttling_exception()}
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
          | {:error, internal_server_error()}
          | {:error, invalid_request_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Creates or updates an IAM policy for your rule group or firewall policy.

  Use this to share rule groups and firewall policies between accounts. This
  operation works in conjunction with the Amazon Web Services Resource Access
  Manager (RAM) service
  to manage resource sharing for Network Firewall.

  Use this operation to create or update a resource policy for your rule group or
  firewall policy. In the policy, you specify the accounts that you want to share
  the resource with and the operations that you want the accounts to be able to
  perform.

  When you add an account in the resource policy, you then run the following
  Resource Access Manager (RAM) operations to access and accept the shared rule
  group or firewall policy.

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
          | {:error, internal_server_error()}
          | {:error, invalid_request_exception()}
          | {:error, invalid_resource_policy_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
  def put_resource_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutResourcePolicy", input, options)
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
          | {:error, internal_server_error()}
          | {:error, invalid_request_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
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
          | {:error, internal_server_error()}
          | {:error, invalid_request_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
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
          | {:error, internal_server_error()}
          | {:error, invalid_request_exception()}
          | {:error, invalid_token_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, resource_owner_check_exception()}
          | {:error, throttling_exception()}
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
          | {:error, internal_server_error()}
          | {:error, invalid_request_exception()}
          | {:error, invalid_token_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
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
          | {:error, internal_server_error()}
          | {:error, invalid_request_exception()}
          | {:error, invalid_token_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, resource_owner_check_exception()}
          | {:error, throttling_exception()}
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
          | {:error, internal_server_error()}
          | {:error, invalid_request_exception()}
          | {:error, invalid_token_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
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
          | {:error, internal_server_error()}
          | {:error, invalid_request_exception()}
          | {:error, invalid_token_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, resource_owner_check_exception()}
          | {:error, throttling_exception()}
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
          | {:error, internal_server_error()}
          | {:error, invalid_request_exception()}
          | {:error, invalid_token_exception()}
          | {:error, log_destination_permission_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
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
          | {:error, internal_server_error()}
          | {:error, invalid_request_exception()}
          | {:error, invalid_token_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
  def update_rule_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateRuleGroup", input, options)
  end

  @spec update_subnet_change_protection(map(), update_subnet_change_protection_request(), list()) ::
          {:ok, update_subnet_change_protection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_server_error()}
          | {:error, invalid_request_exception()}
          | {:error, invalid_token_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, resource_owner_check_exception()}
          | {:error, throttling_exception()}
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
          | {:error, internal_server_error()}
          | {:error, invalid_request_exception()}
          | {:error, invalid_token_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
  def update_t_l_s_inspection_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateTLSInspectionConfiguration", input, options)
  end
end
