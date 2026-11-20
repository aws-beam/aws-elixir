# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.RTBFabric do
  @moduledoc """
  Amazon Web Services RTB Fabric provides secure, low-latency infrastructure for
  connecting real-time bidding (RTB) applications.

  Rather than hosting applications directly, RTB Fabric acts as the connecting
  fabric that enables your applications to communicate efficiently over private
  networks instead of the public internet. You maintain complete control over your
  applications, data, and bidding decisions, while RTB Fabric provides the
  underlying infrastructure for secure, reliable connectivity.

  You can use these APIs to complete RTB Fabric tasks, such as setting up audit
  log ingestions or viewing user access. For more information about RTB Fabric,
  including the required permissions to use the service, see the [Amazon Web Services RTB Fabric User
  Guide](https://docs.aws.amazon.com/rtb-fabric/latest/userguide/).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      accept_link_request() :: %{
        optional("attributes") => link_attributes(),
        optional("timeoutInMillis") => float(),
        required("logSettings") => link_log_settings()
      }

  """
  @type accept_link_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      accept_link_response() :: %{
        "attributes" => link_attributes(),
        "connectivityType" => list(any()),
        "createdAt" => [non_neg_integer()],
        "direction" => list(any()),
        "errorDetails" => list(error_detail()),
        "flowModules" => list(module_configuration()),
        "gatewayId" => String.t() | atom(),
        "linkId" => String.t() | atom(),
        "logSettings" => link_log_settings(),
        "peerGatewayId" => String.t() | atom(),
        "pendingFlowModules" => list(module_configuration()),
        "status" => list(any()),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type accept_link_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_certificate_request() :: %{
        required("acmCertificateArn") => String.t() | atom(),
        required("clientToken") => [String.t() | atom()]
      }

  """
  @type associate_certificate_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_certificate_response() :: %{
        "acmCertificateArn" => String.t() | atom(),
        "gatewayId" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type associate_certificate_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      auto_scaling_groups_configuration() :: %{
        "autoScalingGroupNames" => list(String.t() | atom()),
        "healthCheckConfig" => health_check_config(),
        "roleArn" => [String.t() | atom()]
      }

  """
  @type auto_scaling_groups_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      available_module_summary() :: %{
        "marketplaceProductId" => [String.t() | atom()],
        "moduleArn" => String.t() | atom(),
        "moduleId" => String.t() | atom(),
        "moduleName" => String.t() | atom(),
        "subscriptionStatus" => list(any()),
        "subscriptionType" => list(any())
      }

  """
  @type available_module_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      available_module_version_summary() :: %{
        "createdAt" => [non_neg_integer()],
        "moduleVersionArn" => String.t() | atom(),
        "status" => list(any()),
        "version" => String.t() | atom()
      }

  """
  @type available_module_version_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      certificate_association_summary() :: %{
        "acmCertificateArn" => String.t() | atom(),
        "associatedAt" => [non_neg_integer()],
        "status" => list(any()),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type certificate_association_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_inbound_external_link_request() :: %{
        optional("attributes") => link_attributes(),
        optional("tags") => map(),
        required("clientToken") => [String.t() | atom()],
        required("logSettings") => link_log_settings()
      }

  """
  @type create_inbound_external_link_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_inbound_external_link_response() :: %{
        "domainName" => String.t() | atom(),
        "gatewayId" => String.t() | atom(),
        "linkId" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type create_inbound_external_link_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_link_request() :: %{
        optional("attributes") => link_attributes(),
        optional("httpResponderAllowed") => [boolean()],
        optional("tags") => map(),
        optional("timeoutInMillis") => float(),
        required("logSettings") => link_log_settings(),
        required("peerGatewayId") => String.t() | atom()
      }

  """
  @type create_link_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_link_response() :: %{
        "attributes" => link_attributes(),
        "connectivityType" => list(any()),
        "createdAt" => [non_neg_integer()],
        "customerProvidedId" => [String.t() | atom()],
        "direction" => list(any()),
        "errorDetails" => list(error_detail()),
        "flowModules" => list(module_configuration()),
        "gatewayId" => String.t() | atom(),
        "linkId" => String.t() | atom(),
        "logSettings" => link_log_settings(),
        "peerGatewayId" => String.t() | atom(),
        "pendingFlowModules" => list(module_configuration()),
        "status" => list(any()),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type create_link_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_link_routing_rule_request() :: %{
        optional("tags") => map(),
        required("clientToken") => [String.t() | atom()],
        required("conditions") => rule_condition(),
        required("priority") => integer()
      }

  """
  @type create_link_routing_rule_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_link_routing_rule_response() :: %{
        "createdAt" => [non_neg_integer()],
        "ruleId" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type create_link_routing_rule_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_outbound_external_link_request() :: %{
        optional("attributes") => link_attributes(),
        optional("tags") => map(),
        required("clientToken") => [String.t() | atom()],
        required("logSettings") => link_log_settings(),
        required("publicEndpoint") => String.t() | atom()
      }

  """
  @type create_outbound_external_link_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_outbound_external_link_response() :: %{
        "gatewayId" => String.t() | atom(),
        "linkId" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type create_outbound_external_link_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_requester_gateway_request() :: %{
        optional("description") => [String.t() | atom()],
        optional("tags") => map(),
        required("clientToken") => [String.t() | atom()],
        required("securityGroupIds") => list(String.t() | atom()),
        required("subnetIds") => list(String.t() | atom()),
        required("vpcId") => String.t() | atom()
      }

  """
  @type create_requester_gateway_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_requester_gateway_response() :: %{
        "domainName" => String.t() | atom(),
        "gatewayId" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type create_requester_gateway_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_responder_gateway_request() :: %{
        optional("clientRoutingPolicy") => list(any()),
        optional("description") => [String.t() | atom()],
        optional("domainName") => String.t() | atom(),
        optional("gatewayType") => list(any()),
        optional("listenerConfig") => listener_config(),
        optional("managedEndpointConfiguration") => list(),
        optional("tags") => map(),
        optional("trustStoreConfiguration") => trust_store_configuration(),
        required("clientToken") => [String.t() | atom()],
        required("port") => [integer()],
        required("protocol") => list(any()),
        required("securityGroupIds") => list(String.t() | atom()),
        required("subnetIds") => list(String.t() | atom()),
        required("vpcId") => String.t() | atom()
      }

  """
  @type create_responder_gateway_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_responder_gateway_response() :: %{
        "clientRoutingPolicy" => list(any()),
        "externalInboundEndpoint" => String.t() | atom(),
        "gatewayId" => String.t() | atom(),
        "listenerConfig" => listener_config(),
        "status" => list(any())
      }

  """
  @type create_responder_gateway_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_inbound_external_link_request() :: %{}

  """
  @type delete_inbound_external_link_request() :: %{}

  @typedoc """

  ## Example:

      delete_inbound_external_link_response() :: %{
        "linkId" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type delete_inbound_external_link_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_link_request() :: %{}

  """
  @type delete_link_request() :: %{}

  @typedoc """

  ## Example:

      delete_link_response() :: %{
        "linkId" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type delete_link_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_link_routing_rule_request() :: %{}

  """
  @type delete_link_routing_rule_request() :: %{}

  @typedoc """

  ## Example:

      delete_link_routing_rule_response() :: %{
        "ruleId" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type delete_link_routing_rule_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_outbound_external_link_request() :: %{}

  """
  @type delete_outbound_external_link_request() :: %{}

  @typedoc """

  ## Example:

      delete_outbound_external_link_response() :: %{
        "linkId" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type delete_outbound_external_link_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_requester_gateway_request() :: %{}

  """
  @type delete_requester_gateway_request() :: %{}

  @typedoc """

  ## Example:

      delete_requester_gateway_response() :: %{
        "gatewayId" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type delete_requester_gateway_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_responder_gateway_request() :: %{}

  """
  @type delete_responder_gateway_request() :: %{}

  @typedoc """

  ## Example:

      delete_responder_gateway_response() :: %{
        "gatewayId" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type delete_responder_gateway_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_certificate_request() :: %{
        required("acmCertificateArn") => String.t() | atom()
      }

  """
  @type disassociate_certificate_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_certificate_response() :: %{
        "acmCertificateArn" => String.t() | atom(),
        "gatewayId" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type disassociate_certificate_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      eks_endpoints_configuration() :: %{
        "clusterApiServerCaCertificateChain" => String.t() | atom(),
        "clusterApiServerEndpointUri" => String.t() | atom(),
        "clusterName" => String.t() | atom(),
        "endpointsResourceName" => String.t() | atom(),
        "endpointsResourceNamespace" => String.t() | atom(),
        "roleArn" => [String.t() | atom()]
      }

  """
  @type eks_endpoints_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      error_detail() :: %{
        "code" => list(any()),
        "message" => [String.t() | atom()],
        "resourceIds" => list(String.t() | atom())
      }

  """
  @type error_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      filter() :: %{
        "criteria" => list(filter_criterion())
      }

  """
  @type filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      filter_criterion() :: %{
        "path" => [String.t() | atom()],
        "values" => list([String.t() | atom()]())
      }

  """
  @type filter_criterion() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      flow() :: %{
        "name" => String.t() | atom(),
        "pipeline" => list()
      }

  """
  @type flow() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      flow_module() :: %{
        "activationPercentage" => float(),
        "configurationValues" => String.t() | atom(),
        "failureMode" => list(any()),
        "moduleVersionArn" => String.t() | atom(),
        "name" => String.t() | atom(),
        "selectedActions" => list(list(any())())
      }

  """
  @type flow_module() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      flow_phase() :: %{
        "modules" => list(flow_module())
      }

  """
  @type flow_phase() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_available_module_request() :: %{}

  """
  @type get_available_module_request() :: %{}

  @typedoc """

  ## Example:

      get_available_module_response() :: %{
        "createdAt" => [non_neg_integer()],
        "description" => String.t() | atom(),
        "marketplaceProductId" => [String.t() | atom()],
        "moduleArn" => String.t() | atom(),
        "moduleId" => String.t() | atom(),
        "moduleName" => String.t() | atom(),
        "subscriptionStatus" => list(any()),
        "subscriptionType" => list(any())
      }

  """
  @type get_available_module_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_available_module_version_request() :: %{}

  """
  @type get_available_module_version_request() :: %{}

  @typedoc """

  ## Example:

      get_available_module_version_response() :: %{
        "configurableActions" => list(list(any())()),
        "configurationSchema" => String.t() | atom(),
        "createdAt" => [non_neg_integer()],
        "moduleId" => String.t() | atom(),
        "moduleVersionArn" => String.t() | atom(),
        "permissions" => list(list(any())()),
        "releaseNotes" => String.t() | atom(),
        "status" => list(any()),
        "updatedAt" => [non_neg_integer()],
        "version" => String.t() | atom()
      }

  """
  @type get_available_module_version_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_certificate_association_request() :: %{
        required("acmCertificateArn") => String.t() | atom()
      }

  """
  @type get_certificate_association_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_certificate_association_response() :: %{
        "acmCertificateArn" => String.t() | atom(),
        "associatedAt" => [non_neg_integer()],
        "errorDetails" => list(error_detail()),
        "gatewayId" => String.t() | atom(),
        "status" => list(any()),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type get_certificate_association_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_inbound_external_link_request() :: %{}

  """
  @type get_inbound_external_link_request() :: %{}

  @typedoc """

  ## Example:

      get_inbound_external_link_response() :: %{
        "attributes" => link_attributes(),
        "connectivityType" => list(any()),
        "createdAt" => [non_neg_integer()],
        "domainName" => String.t() | atom(),
        "errorDetails" => list(error_detail()),
        "flowModules" => list(module_configuration()),
        "flows" => list(flow()),
        "gatewayId" => String.t() | atom(),
        "linkId" => String.t() | atom(),
        "lockToken" => String.t() | atom(),
        "logSettings" => link_log_settings(),
        "pendingFlowModules" => list(module_configuration()),
        "status" => list(any()),
        "tags" => map(),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type get_inbound_external_link_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_link_request() :: %{}

  """
  @type get_link_request() :: %{}

  @typedoc """

  ## Example:

      get_link_response() :: %{
        "attributes" => link_attributes(),
        "connectivityType" => list(any()),
        "createdAt" => [non_neg_integer()],
        "direction" => list(any()),
        "errorDetails" => list(error_detail()),
        "flowModules" => list(module_configuration()),
        "flows" => list(flow()),
        "gatewayId" => String.t() | atom(),
        "httpResponderAllowed" => [boolean()],
        "linkId" => String.t() | atom(),
        "lockToken" => String.t() | atom(),
        "logSettings" => link_log_settings(),
        "peerGatewayId" => String.t() | atom(),
        "pendingFlowModules" => list(module_configuration()),
        "status" => list(any()),
        "tags" => map(),
        "timeoutInMillis" => float(),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type get_link_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_link_routing_rule_request() :: %{}

  """
  @type get_link_routing_rule_request() :: %{}

  @typedoc """

  ## Example:

      get_link_routing_rule_response() :: %{
        "conditions" => rule_condition(),
        "createdAt" => [non_neg_integer()],
        "errorDetails" => list(error_detail()),
        "gatewayId" => String.t() | atom(),
        "linkId" => String.t() | atom(),
        "priority" => integer(),
        "ruleId" => String.t() | atom(),
        "status" => list(any()),
        "tags" => map(),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type get_link_routing_rule_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_outbound_external_link_request() :: %{}

  """
  @type get_outbound_external_link_request() :: %{}

  @typedoc """

  ## Example:

      get_outbound_external_link_response() :: %{
        "attributes" => link_attributes(),
        "connectivityType" => list(any()),
        "createdAt" => [non_neg_integer()],
        "errorDetails" => list(error_detail()),
        "flowModules" => list(module_configuration()),
        "flows" => list(flow()),
        "gatewayId" => String.t() | atom(),
        "linkId" => String.t() | atom(),
        "lockToken" => String.t() | atom(),
        "logSettings" => link_log_settings(),
        "pendingFlowModules" => list(module_configuration()),
        "publicEndpoint" => String.t() | atom(),
        "status" => list(any()),
        "tags" => map(),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type get_outbound_external_link_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_requester_gateway_request() :: %{}

  """
  @type get_requester_gateway_request() :: %{}

  @typedoc """

  ## Example:

      get_requester_gateway_response() :: %{
        "activeLinksCount" => [integer()],
        "createdAt" => [non_neg_integer()],
        "description" => [String.t() | atom()],
        "domainName" => String.t() | atom(),
        "errorDetails" => list(error_detail()),
        "gatewayId" => String.t() | atom(),
        "securityGroupIds" => list(String.t() | atom()),
        "status" => list(any()),
        "subnetIds" => list(String.t() | atom()),
        "tags" => map(),
        "totalLinksCount" => [integer()],
        "updatedAt" => [non_neg_integer()],
        "vpcId" => String.t() | atom()
      }

  """
  @type get_requester_gateway_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_responder_gateway_request() :: %{}

  """
  @type get_responder_gateway_request() :: %{}

  @typedoc """

  ## Example:

      get_responder_gateway_response() :: %{
        "activeLinksCount" => [integer()],
        "clientRoutingPolicy" => list(any()),
        "createdAt" => [non_neg_integer()],
        "description" => [String.t() | atom()],
        "domainName" => String.t() | atom(),
        "errorDetails" => list(error_detail()),
        "externalInboundEndpoint" => String.t() | atom(),
        "gatewayId" => String.t() | atom(),
        "gatewayType" => list(any()),
        "linksRequestedCount" => [integer()],
        "listenerConfig" => listener_config(),
        "managedEndpointConfiguration" => list(),
        "port" => [integer()],
        "protocol" => list(any()),
        "securityGroupIds" => list(String.t() | atom()),
        "status" => list(any()),
        "subnetIds" => list(String.t() | atom()),
        "tags" => map(),
        "totalLinksCount" => [integer()],
        "trustStoreConfiguration" => trust_store_configuration(),
        "updatedAt" => [non_neg_integer()],
        "vpcId" => String.t() | atom()
      }

  """
  @type get_responder_gateway_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_update_request() :: %{}

  """
  @type get_update_request() :: %{}

  @typedoc """

  ## Example:

      get_update_response() :: %{
        "update" => update()
      }

  """
  @type get_update_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      header_tag_action() :: %{
        "name" => [String.t() | atom()],
        "value" => [String.t() | atom()]
      }

  """
  @type header_tag_action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      health_check_config() :: %{
        "healthyThresholdCount" => [integer()],
        "intervalSeconds" => [integer()],
        "path" => [String.t() | atom()],
        "port" => [integer()],
        "protocol" => list(any()),
        "statusCodeMatcher" => String.t() | atom(),
        "timeoutMs" => [integer()],
        "unhealthyThresholdCount" => [integer()]
      }

  """
  @type health_check_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      link_application_log_configuration() :: %{
        "sampling" => link_application_log_sampling()
      }

  """
  @type link_application_log_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      link_application_log_sampling() :: %{
        "errorLog" => [float()],
        "filterLog" => [float()]
      }

  """
  @type link_application_log_sampling() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      link_attributes() :: %{
        "customerProvidedId" => String.t() | atom(),
        "responderErrorMasking" => list(responder_error_masking_for_http_code())
      }

  """
  @type link_attributes() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      link_config_parameters() :: %{
        "logSettings" => link_log_settings(),
        "timeoutInMillis" => float()
      }

  """
  @type link_config_parameters() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      link_log_settings() :: %{
        "applicationLogs" => link_application_log_configuration()
      }

  """
  @type link_log_settings() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      link_routing_rule_summary() :: %{
        "conditions" => rule_condition(),
        "createdAt" => [non_neg_integer()],
        "errorDetails" => list(error_detail()),
        "priority" => integer(),
        "ruleId" => String.t() | atom(),
        "status" => list(any()),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type link_routing_rule_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      link_target() :: %{
        "linkId" => String.t() | atom()
      }

  """
  @type link_target() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_available_module_versions_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()],
        optional("status") => list(any())
      }

  """
  @type list_available_module_versions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_available_module_versions_response() :: %{
        "moduleId" => String.t() | atom(),
        "nextToken" => [String.t() | atom()],
        "versions" => list(available_module_version_summary())
      }

  """
  @type list_available_module_versions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_available_modules_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()],
        optional("subscriptionType") => list(any())
      }

  """
  @type list_available_modules_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_available_modules_response() :: %{
        "modules" => list(available_module_summary()),
        "nextToken" => [String.t() | atom()]
      }

  """
  @type list_available_modules_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_certificate_associations_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()]
      }

  """
  @type list_certificate_associations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_certificate_associations_response() :: %{
        "certificateAssociations" => list(certificate_association_summary()),
        "nextToken" => [String.t() | atom()]
      }

  """
  @type list_certificate_associations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_link_routing_rules_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()]
      }

  """
  @type list_link_routing_rules_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_link_routing_rules_response() :: %{
        "nextToken" => [String.t() | atom()],
        "rules" => list(link_routing_rule_summary())
      }

  """
  @type list_link_routing_rules_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_links_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()]
      }

  """
  @type list_links_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_links_response() :: %{
        "links" => list(list_links_response_structure()),
        "nextToken" => [String.t() | atom()]
      }

  """
  @type list_links_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_links_response_structure() :: %{
        "attributes" => link_attributes(),
        "connectivityType" => list(any()),
        "createdAt" => [non_neg_integer()],
        "direction" => list(any()),
        "errorDetails" => list(error_detail()),
        "flowModules" => list(module_configuration()),
        "gatewayId" => String.t() | atom(),
        "linkId" => String.t() | atom(),
        "logSettings" => link_log_settings(),
        "peerGatewayId" => String.t() | atom(),
        "pendingFlowModules" => list(module_configuration()),
        "publicEndpoint" => String.t() | atom(),
        "status" => list(any()),
        "tags" => map(),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type list_links_response_structure() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_requester_gateways_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()]
      }

  """
  @type list_requester_gateways_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_requester_gateways_response() :: %{
        "gatewayIds" => list(String.t() | atom()),
        "nextToken" => [String.t() | atom()]
      }

  """
  @type list_requester_gateways_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_responder_gateways_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()]
      }

  """
  @type list_responder_gateways_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_responder_gateways_response() :: %{
        "gatewayIds" => list(String.t() | atom()),
        "nextToken" => [String.t() | atom()]
      }

  """
  @type list_responder_gateways_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_updates_request() :: %{
        optional("linkId") => String.t() | atom(),
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()],
        optional("ruleId") => String.t() | atom(),
        optional("status") => list(any()),
        optional("type") => list(any())
      }

  """
  @type list_updates_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_updates_response() :: %{
        "nextToken" => [String.t() | atom()],
        "updates" => list(update_summary())
      }

  """
  @type list_updates_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      listener_config() :: %{
        "protocols" => list(list(any())())
      }

  """
  @type listener_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      module_configuration() :: %{
        "dependsOn" => list(String.t() | atom()),
        "moduleParameters" => list(),
        "name" => String.t() | atom(),
        "version" => String.t() | atom()
      }

  """
  @type module_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      no_bid_action() :: %{
        "noBidReasonCode" => [integer()]
      }

  """
  @type no_bid_action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      no_bid_module_parameters() :: %{
        "passThroughPercentage" => [float()],
        "reason" => [String.t() | atom()],
        "reasonCode" => [integer()]
      }

  """
  @type no_bid_module_parameters() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      open_rtb_attribute_module_parameters() :: %{
        "action" => list(),
        "filterConfiguration" => list(filter()),
        "filterType" => list(any()),
        "holdbackPercentage" => [float()]
      }

  """
  @type open_rtb_attribute_module_parameters() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      phased_pipeline() :: %{
        "phases" => list(flow_phase())
      }

  """
  @type phased_pipeline() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_link_flows_request() :: %{
        optional("clientToken") => String.t() | atom(),
        required("flows") => list(flow()),
        required("lockToken") => String.t() | atom()
      }

  """
  @type put_link_flows_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_link_flows_response() :: %{
        "gatewayId" => String.t() | atom(),
        "linkId" => String.t() | atom(),
        "status" => list(any()),
        "updateId" => String.t() | atom()
      }

  """
  @type put_link_flows_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      query_string_key_value_pair() :: %{
        "key" => [String.t() | atom()],
        "value" => [String.t() | atom()]
      }

  """
  @type query_string_key_value_pair() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      rate_limiter_module_parameters() :: %{
        "tps" => [float()]
      }

  """
  @type rate_limiter_module_parameters() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      reject_link_request() :: %{}

  """
  @type reject_link_request() :: %{}

  @typedoc """

  ## Example:

      reject_link_response() :: %{
        "attributes" => link_attributes(),
        "connectivityType" => list(any()),
        "createdAt" => [non_neg_integer()],
        "direction" => list(any()),
        "errorDetails" => list(error_detail()),
        "flowModules" => list(module_configuration()),
        "gatewayId" => String.t() | atom(),
        "linkId" => String.t() | atom(),
        "logSettings" => link_log_settings(),
        "peerGatewayId" => String.t() | atom(),
        "pendingFlowModules" => list(module_configuration()),
        "status" => list(any()),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type reject_link_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      responder_error_masking_for_http_code() :: %{
        "action" => list(any()),
        "httpCode" => [String.t() | atom()],
        "loggingTypes" => list(list(any())()),
        "responseLoggingPercentage" => [float()]
      }

  """
  @type responder_error_masking_for_http_code() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      responder_gateway_config_parameters() :: %{
        "clientRoutingPolicy" => list(any()),
        "description" => [String.t() | atom()],
        "domainName" => String.t() | atom(),
        "listenerConfig" => listener_config(),
        "managedEndpointConfiguration" => list(),
        "port" => [integer()],
        "protocol" => list(any()),
        "trustStoreConfiguration" => trust_store_configuration()
      }

  """
  @type responder_gateway_config_parameters() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      routing_rule_parameters() :: %{
        "conditions" => rule_condition(),
        "priority" => integer()
      }

  """
  @type routing_rule_parameters() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      routing_rule_target() :: %{
        "linkId" => String.t() | atom(),
        "ruleId" => String.t() | atom()
      }

  """
  @type routing_rule_target() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      rule_condition() :: %{
        "hostHeader" => [String.t() | atom()],
        "hostHeaderWildcard" => [String.t() | atom()],
        "pathExact" => [String.t() | atom()],
        "pathPrefix" => [String.t() | atom()],
        "queryStringEquals" => query_string_key_value_pair(),
        "queryStringExists" => [String.t() | atom()]
      }

  """
  @type rule_condition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      sequential_pipeline() :: %{
        "modules" => list(flow_module())
      }

  """
  @type sequential_pipeline() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      trust_store_configuration() :: %{
        "certificateAuthorityCertificates" => list(String.t() | atom())
      }

  """
  @type trust_store_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t() | atom())
      }

  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      update() :: %{
        "createdAt" => [non_neg_integer()],
        "errorDetails" => list(error_detail()),
        "parameters" => list(),
        "status" => list(any()),
        "target" => list(),
        "type" => list(any()),
        "updateId" => String.t() | atom()
      }

  """
  @type update() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_link_module_flow_request() :: %{
        required("clientToken") => [String.t() | atom()],
        required("modules") => list(module_configuration())
      }

  """
  @type update_link_module_flow_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_link_module_flow_response() :: %{
        "gatewayId" => String.t() | atom(),
        "linkId" => String.t() | atom(),
        "status" => list(any()),
        "updateId" => String.t() | atom()
      }

  """
  @type update_link_module_flow_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_link_request() :: %{
        optional("clientToken") => [String.t() | atom()],
        optional("logSettings") => link_log_settings(),
        optional("timeoutInMillis") => float()
      }

  """
  @type update_link_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_link_response() :: %{
        "linkId" => String.t() | atom(),
        "status" => list(any()),
        "updateId" => String.t() | atom()
      }

  """
  @type update_link_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_link_routing_rule_request() :: %{
        optional("clientToken") => [String.t() | atom()],
        required("conditions") => rule_condition(),
        required("priority") => integer()
      }

  """
  @type update_link_routing_rule_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_link_routing_rule_response() :: %{
        "ruleId" => String.t() | atom(),
        "status" => list(any()),
        "updateId" => String.t() | atom(),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type update_link_routing_rule_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_requester_gateway_request() :: %{
        optional("description") => [String.t() | atom()],
        required("clientToken") => [String.t() | atom()]
      }

  """
  @type update_requester_gateway_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_requester_gateway_response() :: %{
        "gatewayId" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type update_requester_gateway_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_responder_gateway_request() :: %{
        optional("clientRoutingPolicy") => list(any()),
        optional("description") => [String.t() | atom()],
        optional("domainName") => String.t() | atom(),
        optional("listenerConfig") => listener_config(),
        optional("managedEndpointConfiguration") => list(),
        optional("trustStoreConfiguration") => trust_store_configuration(),
        required("clientToken") => [String.t() | atom()],
        required("port") => [integer()],
        required("protocol") => list(any())
      }

  """
  @type update_responder_gateway_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_responder_gateway_response() :: %{
        "clientRoutingPolicy" => list(any()),
        "gatewayId" => String.t() | atom(),
        "status" => list(any()),
        "updateId" => String.t() | atom()
      }

  """
  @type update_responder_gateway_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_summary() :: %{
        "createdAt" => [non_neg_integer()],
        "status" => list(any()),
        "type" => list(any()),
        "updateId" => String.t() | atom()
      }

  """
  @type update_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @type accept_link_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type associate_certificate_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type create_inbound_external_link_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type create_link_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type create_link_routing_rule_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type create_outbound_external_link_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type create_requester_gateway_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type create_responder_gateway_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type delete_inbound_external_link_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type delete_link_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type delete_link_routing_rule_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type delete_outbound_external_link_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type delete_requester_gateway_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type delete_responder_gateway_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type disassociate_certificate_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type get_available_module_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type get_available_module_version_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type get_certificate_association_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type get_inbound_external_link_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type get_link_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type get_link_routing_rule_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type get_outbound_external_link_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type get_requester_gateway_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type get_responder_gateway_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type get_update_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_available_module_versions_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_available_modules_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_certificate_associations_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_link_routing_rules_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_links_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_requester_gateways_errors() :: validation_exception() | internal_server_exception()

  @type list_responder_gateways_errors() :: validation_exception() | internal_server_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_updates_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type put_link_flows_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type reject_link_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type tag_resource_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type untag_resource_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type update_link_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type update_link_module_flow_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type update_link_routing_rule_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type update_requester_gateway_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type update_responder_gateway_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  def metadata do
    %{
      api_version: "2023-05-15",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "rtbfabric",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "RTBFabric",
      signature_version: "v4",
      signing_name: "rtbfabric",
      target_prefix: nil
    }
  end

  @doc """
  Accepts a link request between gateways.

  When a requester gateway requests to link with a responder gateway, the
  responder can use this operation to accept the link request and establish the
  connection.
  """
  @spec accept_link(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          accept_link_request(),
          list()
        ) ::
          {:ok, accept_link_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, accept_link_errors()}
  def accept_link(%Client{} = client, gateway_id, link_id, input, options \\ []) do
    url_path =
      "/gateway/#{AWS.Util.encode_uri(gateway_id)}/link/#{AWS.Util.encode_uri(link_id)}/accept"

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
  Associates an ACM certificate with a responder gateway.
  """
  @spec associate_certificate(map(), String.t() | atom(), associate_certificate_request(), list()) ::
          {:ok, associate_certificate_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_certificate_errors()}
  def associate_certificate(%Client{} = client, gateway_id, input, options \\ []) do
    url_path = "/responder-gateway/#{AWS.Util.encode_uri(gateway_id)}/certificate"
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
  Creates an inbound external link.
  """
  @spec create_inbound_external_link(
          map(),
          String.t() | atom(),
          create_inbound_external_link_request(),
          list()
        ) ::
          {:ok, create_inbound_external_link_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_inbound_external_link_errors()}
  def create_inbound_external_link(%Client{} = client, gateway_id, input, options \\ []) do
    url_path = "/responder-gateway/#{AWS.Util.encode_uri(gateway_id)}/inbound-external-link"
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
  Creates a new link between gateways.

  Establishes a connection that allows gateways to communicate and exchange bid
  requests and responses.
  """
  @spec create_link(map(), String.t() | atom(), create_link_request(), list()) ::
          {:ok, create_link_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_link_errors()}
  def create_link(%Client{} = client, gateway_id, input, options \\ []) do
    url_path = "/gateway/#{AWS.Util.encode_uri(gateway_id)}/create-link"
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
  Creates a routing rule for a link.

  Routing rules use priority-based evaluation where lower priority numbers are
  evaluated first. Each rule specifies conditions that must all match for the rule
  to apply.
  """
  @spec create_link_routing_rule(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          create_link_routing_rule_request(),
          list()
        ) ::
          {:ok, create_link_routing_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_link_routing_rule_errors()}
  def create_link_routing_rule(%Client{} = client, gateway_id, link_id, input, options \\ []) do
    url_path =
      "/responder-gateway/#{AWS.Util.encode_uri(gateway_id)}/link/#{AWS.Util.encode_uri(link_id)}/routing-rule"

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
  Creates an outbound external link.
  """
  @spec create_outbound_external_link(
          map(),
          String.t() | atom(),
          create_outbound_external_link_request(),
          list()
        ) ::
          {:ok, create_outbound_external_link_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_outbound_external_link_errors()}
  def create_outbound_external_link(%Client{} = client, gateway_id, input, options \\ []) do
    url_path = "/requester-gateway/#{AWS.Util.encode_uri(gateway_id)}/outbound-external-link"
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
  Creates a requester gateway.
  """
  @spec create_requester_gateway(map(), create_requester_gateway_request(), list()) ::
          {:ok, create_requester_gateway_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_requester_gateway_errors()}
  def create_requester_gateway(%Client{} = client, input, options \\ []) do
    url_path = "/requester-gateway"
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
  Creates a responder gateway.

  A domain name or managed endpoint is required.
  """
  @spec create_responder_gateway(map(), create_responder_gateway_request(), list()) ::
          {:ok, create_responder_gateway_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_responder_gateway_errors()}
  def create_responder_gateway(%Client{} = client, input, options \\ []) do
    url_path = "/responder-gateway"
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
  Deletes an inbound external link.
  """
  @spec delete_inbound_external_link(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_inbound_external_link_request(),
          list()
        ) ::
          {:ok, delete_inbound_external_link_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_inbound_external_link_errors()}
  def delete_inbound_external_link(%Client{} = client, gateway_id, link_id, input, options \\ []) do
    url_path =
      "/responder-gateway/#{AWS.Util.encode_uri(gateway_id)}/inbound-external-link/#{AWS.Util.encode_uri(link_id)}"

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
  Deletes a link between gateways.

  Permanently removes the connection between gateways. This action cannot be
  undone.
  """
  @spec delete_link(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_link_request(),
          list()
        ) ::
          {:ok, delete_link_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_link_errors()}
  def delete_link(%Client{} = client, gateway_id, link_id, input, options \\ []) do
    url_path = "/gateway/#{AWS.Util.encode_uri(gateway_id)}/link/#{AWS.Util.encode_uri(link_id)}"
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
  Deletes a routing rule from a link.
  """
  @spec delete_link_routing_rule(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          delete_link_routing_rule_request(),
          list()
        ) ::
          {:ok, delete_link_routing_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_link_routing_rule_errors()}
  def delete_link_routing_rule(
        %Client{} = client,
        gateway_id,
        link_id,
        rule_id,
        input,
        options \\ []
      ) do
    url_path =
      "/responder-gateway/#{AWS.Util.encode_uri(gateway_id)}/link/#{AWS.Util.encode_uri(link_id)}/routing-rule/#{AWS.Util.encode_uri(rule_id)}"

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
  Deletes an outbound external link.
  """
  @spec delete_outbound_external_link(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_outbound_external_link_request(),
          list()
        ) ::
          {:ok, delete_outbound_external_link_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_outbound_external_link_errors()}
  def delete_outbound_external_link(%Client{} = client, gateway_id, link_id, input, options \\ []) do
    url_path =
      "/requester-gateway/#{AWS.Util.encode_uri(gateway_id)}/outbound-external-link/#{AWS.Util.encode_uri(link_id)}"

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
  Deletes a requester gateway.
  """
  @spec delete_requester_gateway(
          map(),
          String.t() | atom(),
          delete_requester_gateway_request(),
          list()
        ) ::
          {:ok, delete_requester_gateway_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_requester_gateway_errors()}
  def delete_requester_gateway(%Client{} = client, gateway_id, input, options \\ []) do
    url_path = "/requester-gateway/#{AWS.Util.encode_uri(gateway_id)}"
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
  Deletes a responder gateway.
  """
  @spec delete_responder_gateway(
          map(),
          String.t() | atom(),
          delete_responder_gateway_request(),
          list()
        ) ::
          {:ok, delete_responder_gateway_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_responder_gateway_errors()}
  def delete_responder_gateway(%Client{} = client, gateway_id, input, options \\ []) do
    url_path = "/responder-gateway/#{AWS.Util.encode_uri(gateway_id)}"
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
  Removes a certificate association from a responder gateway.
  """
  @spec disassociate_certificate(
          map(),
          String.t() | atom(),
          disassociate_certificate_request(),
          list()
        ) ::
          {:ok, disassociate_certificate_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_certificate_errors()}
  def disassociate_certificate(%Client{} = client, gateway_id, input, options \\ []) do
    url_path = "/responder-gateway/#{AWS.Util.encode_uri(gateway_id)}/certificate"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"acmCertificateArn", "acmCertificateArn"}
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
  Returns a module that you can attach.

  If you can't attach the module, the operation returns ResourceNotFoundException,
  the same as for a missing one.
  """
  @spec get_available_module(map(), String.t() | atom(), list()) ::
          {:ok, get_available_module_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_available_module_errors()}
  def get_available_module(%Client{} = client, module_id, options \\ []) do
    url_path = "/available-modules/#{AWS.Util.encode_uri(module_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns an ACTIVE or DEPRECATED version of a module that you can attach.

  If you can't attach the module, or the version is in another status, the
  operation returns ResourceNotFoundException, the same as for a missing one.
  """
  @spec get_available_module_version(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_available_module_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_available_module_version_errors()}
  def get_available_module_version(%Client{} = client, module_id, version, options \\ []) do
    url_path =
      "/available-modules/#{AWS.Util.encode_uri(module_id)}/versions/#{AWS.Util.encode_uri(version)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the details of a certificate association with a responder gateway.
  """
  @spec get_certificate_association(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_certificate_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_certificate_association_errors()}
  def get_certificate_association(
        %Client{} = client,
        gateway_id,
        acm_certificate_arn,
        options \\ []
      ) do
    url_path = "/responder-gateway/#{AWS.Util.encode_uri(gateway_id)}/certificate"
    headers = []
    query_params = []

    query_params =
      if !is_nil(acm_certificate_arn) do
        [{"acmCertificateArn", acm_certificate_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about an inbound external link.
  """
  @spec get_inbound_external_link(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_inbound_external_link_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_inbound_external_link_errors()}
  def get_inbound_external_link(%Client{} = client, gateway_id, link_id, options \\ []) do
    url_path =
      "/responder-gateway/#{AWS.Util.encode_uri(gateway_id)}/inbound-external-link/#{AWS.Util.encode_uri(link_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a link between gateways.

  Returns detailed information about the link configuration, status, and
  associated gateways.
  """
  @spec get_link(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_link_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_link_errors()}
  def get_link(%Client{} = client, gateway_id, link_id, options \\ []) do
    url_path = "/gateway/#{AWS.Util.encode_uri(gateway_id)}/link/#{AWS.Util.encode_uri(link_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the details of a routing rule for a link.
  """
  @spec get_link_routing_rule(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          list()
        ) ::
          {:ok, get_link_routing_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_link_routing_rule_errors()}
  def get_link_routing_rule(%Client{} = client, gateway_id, link_id, rule_id, options \\ []) do
    url_path =
      "/responder-gateway/#{AWS.Util.encode_uri(gateway_id)}/link/#{AWS.Util.encode_uri(link_id)}/routing-rule/#{AWS.Util.encode_uri(rule_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about an outbound external link.
  """
  @spec get_outbound_external_link(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_outbound_external_link_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_outbound_external_link_errors()}
  def get_outbound_external_link(%Client{} = client, gateway_id, link_id, options \\ []) do
    url_path =
      "/requester-gateway/#{AWS.Util.encode_uri(gateway_id)}/outbound-external-link/#{AWS.Util.encode_uri(link_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a requester gateway.
  """
  @spec get_requester_gateway(map(), String.t() | atom(), list()) ::
          {:ok, get_requester_gateway_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_requester_gateway_errors()}
  def get_requester_gateway(%Client{} = client, gateway_id, options \\ []) do
    url_path = "/requester-gateway/#{AWS.Util.encode_uri(gateway_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a responder gateway.
  """
  @spec get_responder_gateway(map(), String.t() | atom(), list()) ::
          {:ok, get_responder_gateway_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_responder_gateway_errors()}
  def get_responder_gateway(%Client{} = client, gateway_id, options \\ []) do
    url_path = "/responder-gateway/#{AWS.Util.encode_uri(gateway_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns ResourceNotFoundException for an updateId past the 90-day retention
  window, indistinguishable in the response from an id that never existed.
  """
  @spec get_update(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_update_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_update_errors()}
  def get_update(%Client{} = client, gateway_id, update_id, options \\ []) do
    url_path =
      "/gateway/#{AWS.Util.encode_uri(gateway_id)}/updates/#{AWS.Util.encode_uri(update_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the ACTIVE and DEPRECATED versions of a module that you can attach,
  highest version first (numerically by MAJOR, then MINOR, then PATCH).

  If you can't attach the module, the operation returns ResourceNotFoundException,
  the same as for a missing one. If the module has no ACTIVE or DEPRECATED
  versions, the operation returns an empty list. The operation lists DEPRECATED
  versions so that you can inspect one that you've attached, but you can't attach
  them. Results are paginated. Use `nextToken` to get the next page.
  """
  @spec list_available_module_versions(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_available_module_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_available_module_versions_errors()}
  def list_available_module_versions(
        %Client{} = client,
        module_id,
        max_results \\ nil,
        next_token \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path = "/available-modules/#{AWS.Util.encode_uri(module_id)}/versions"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
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
      if !is_nil(status) do
        [{"status", status} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the modules that you can attach, newest first by `createdAt`.

  Results are paginated. Use `nextToken` to get the next page.
  """
  @spec list_available_modules(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_available_modules_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_available_modules_errors()}
  def list_available_modules(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        subscription_type \\ nil,
        options \\ []
      ) do
    url_path = "/available-modules"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
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
      if !is_nil(subscription_type) do
        [{"subscriptionType", subscription_type} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the certificate associations for a responder gateway.
  """
  @spec list_certificate_associations(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_certificate_associations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_certificate_associations_errors()}
  def list_certificate_associations(
        %Client{} = client,
        gateway_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/responder-gateway/#{AWS.Util.encode_uri(gateway_id)}/certificates"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the routing rules for a link.
  """
  @spec list_link_routing_rules(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_link_routing_rules_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_link_routing_rules_errors()}
  def list_link_routing_rules(
        %Client{} = client,
        gateway_id,
        link_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/responder-gateway/#{AWS.Util.encode_uri(gateway_id)}/link/#{AWS.Util.encode_uri(link_id)}/routing-rules"

    headers = []
    query_params = []

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists links associated with gateways.

  Returns a list of all links for the specified gateways, including their status
  and configuration details.
  """
  @spec list_links(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_links_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_links_errors()}
  def list_links(
        %Client{} = client,
        gateway_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/gateway/#{AWS.Util.encode_uri(gateway_id)}/links/"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists requester gateways.
  """
  @spec list_requester_gateways(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_requester_gateways_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_requester_gateways_errors()}
  def list_requester_gateways(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/requester-gateways"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists reponder gateways.
  """
  @spec list_responder_gateways(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_responder_gateways_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_responder_gateways_errors()}
  def list_responder_gateways(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/responder-gateways"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists tags for a resource.
  """
  @spec list_tags_for_resource(map(), String.t() | atom(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the updates on a gateway.

  Results are paginated. Use `nextToken` to get the next page.
  """
  @spec list_updates(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_updates_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_updates_errors()}
  def list_updates(
        %Client{} = client,
        gateway_id,
        link_id \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        rule_id \\ nil,
        status \\ nil,
        type \\ nil,
        options \\ []
      ) do
    url_path = "/gateway/#{AWS.Util.encode_uri(gateway_id)}/updates"
    headers = []
    query_params = []

    query_params =
      if !is_nil(link_id) do
        [{"linkId", link_id} | query_params]
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
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(rule_id) do
        [{"ruleId", rule_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(type) do
        [{"type", type} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Replaces a link's flow configuration.

  The change applies asynchronously. The call returns once the change is accepted,
  and the link serves its prior flows until the update commits atomically. RTB
  Fabric validates the request before accepting it, and a request that fails
  validation changes nothing. After the call, use GetLink. Once the change
  completes, the link's status is ACTIVE again and its flows show the change.
  """
  @spec put_link_flows(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          put_link_flows_request(),
          list()
        ) ::
          {:ok, put_link_flows_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_link_flows_errors()}
  def put_link_flows(%Client{} = client, gateway_id, link_id, input, options \\ []) do
    url_path =
      "/gateway/#{AWS.Util.encode_uri(gateway_id)}/link/#{AWS.Util.encode_uri(link_id)}/flows"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Rejects a link request between gateways.

  When a requester gateway requests to link with a responder gateway, the
  responder can use this operation to decline the link request.
  """
  @spec reject_link(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          reject_link_request(),
          list()
        ) ::
          {:ok, reject_link_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, reject_link_errors()}
  def reject_link(%Client{} = client, gateway_id, link_id, input, options \\ []) do
    url_path =
      "/gateway/#{AWS.Util.encode_uri(gateway_id)}/link/#{AWS.Util.encode_uri(link_id)}/reject"

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
  Assigns one or more tags (key-value pairs) to the specified resource.
  """
  @spec tag_resource(map(), String.t() | atom(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
      204
    )
  end

  @doc """
  Removes a tag or tags from a resource.
  """
  @spec untag_resource(map(), String.t() | atom(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"tagKeys", "tagKeys"}
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
      204
    )
  end

  @doc """
  Updates the configuration of a link between gateways.

  Allows you to modify settings and parameters for an existing link.
  """
  @spec update_link(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_link_request(),
          list()
        ) ::
          {:ok, update_link_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_link_errors()}
  def update_link(%Client{} = client, gateway_id, link_id, input, options \\ []) do
    url_path = "/gateway/#{AWS.Util.encode_uri(gateway_id)}/link/#{AWS.Util.encode_uri(link_id)}"
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
  Updates a link module flow.
  """
  @spec update_link_module_flow(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_link_module_flow_request(),
          list()
        ) ::
          {:ok, update_link_module_flow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_link_module_flow_errors()}
  def update_link_module_flow(%Client{} = client, gateway_id, link_id, input, options \\ []) do
    url_path =
      "/gateway/#{AWS.Util.encode_uri(gateway_id)}/link/#{AWS.Util.encode_uri(link_id)}/module-flow"

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
  Updates a routing rule for a link.
  """
  @spec update_link_routing_rule(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          update_link_routing_rule_request(),
          list()
        ) ::
          {:ok, update_link_routing_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_link_routing_rule_errors()}
  def update_link_routing_rule(
        %Client{} = client,
        gateway_id,
        link_id,
        rule_id,
        input,
        options \\ []
      ) do
    url_path =
      "/responder-gateway/#{AWS.Util.encode_uri(gateway_id)}/link/#{AWS.Util.encode_uri(link_id)}/routing-rule/#{AWS.Util.encode_uri(rule_id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a requester gateway.
  """
  @spec update_requester_gateway(
          map(),
          String.t() | atom(),
          update_requester_gateway_request(),
          list()
        ) ::
          {:ok, update_requester_gateway_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_requester_gateway_errors()}
  def update_requester_gateway(%Client{} = client, gateway_id, input, options \\ []) do
    url_path = "/requester-gateway/#{AWS.Util.encode_uri(gateway_id)}/update"
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
  Updates the description, Auto Scaling group managed endpoint configuration,
  trust store configuration, and client routing policy of a responder gateway.

  This operation also updates the `protocols` list in the listener configuration.

  You cannot change the `domainName`, `port`, and `protocol` values that you set
  when you create a responder gateway. To change any of them, delete the gateway
  and create a new one.
  """
  @spec update_responder_gateway(
          map(),
          String.t() | atom(),
          update_responder_gateway_request(),
          list()
        ) ::
          {:ok, update_responder_gateway_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_responder_gateway_errors()}
  def update_responder_gateway(%Client{} = client, gateway_id, input, options \\ []) do
    url_path = "/responder-gateway/#{AWS.Util.encode_uri(gateway_id)}/update"
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
