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

      trust_store_configuration() :: %{
        "certificateAuthorityCertificates" => list(String.t() | atom())
      }

  """
  @type trust_store_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      link_application_log_configuration() :: %{
        "sampling" => link_application_log_sampling()
      }

  """
  @type link_application_log_configuration() :: %{(String.t() | atom()) => any()}

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

      delete_link_response() :: %{
        "linkId" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type delete_link_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_requester_gateway_request() :: %{}

  """
  @type get_requester_gateway_request() :: %{}

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

      header_tag_action() :: %{
        "name" => [String.t() | atom()],
        "value" => [String.t() | atom()]
      }

  """
  @type header_tag_action() :: %{(String.t() | atom()) => any()}

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

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

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

      delete_requester_gateway_request() :: %{}

  """
  @type delete_requester_gateway_request() :: %{}

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

      accept_link_response() :: %{
        "attributes" => link_attributes(),
        "createdAt" => [non_neg_integer()],
        "direction" => list(any()),
        "flowModules" => list(module_configuration()),
        "gatewayId" => String.t() | atom(),
        "linkId" => String.t() | atom(),
        "peerGatewayId" => String.t() | atom(),
        "pendingFlowModules" => list(module_configuration()),
        "status" => list(any()),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type accept_link_response() :: %{(String.t() | atom()) => any()}

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

      get_requester_gateway_response() :: %{
        "activeLinksCount" => [integer()],
        "createdAt" => [non_neg_integer()],
        "description" => [String.t() | atom()],
        "domainName" => String.t() | atom(),
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

      get_inbound_external_link_response() :: %{
        "attributes" => link_attributes(),
        "createdAt" => [non_neg_integer()],
        "domainName" => String.t() | atom(),
        "flowModules" => list(module_configuration()),
        "gatewayId" => String.t() | atom(),
        "linkId" => String.t() | atom(),
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

      create_responder_gateway_request() :: %{
        optional("description") => [String.t() | atom()],
        optional("domainName") => String.t() | atom(),
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

      list_requester_gateways_response() :: %{
        "gatewayIds" => list(String.t() | atom()),
        "nextToken" => [String.t() | atom()]
      }

  """
  @type list_requester_gateways_response() :: %{(String.t() | atom()) => any()}

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

      delete_link_request() :: %{}

  """
  @type delete_link_request() :: %{}

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

      create_link_response() :: %{
        "attributes" => link_attributes(),
        "createdAt" => [non_neg_integer()],
        "customerProvidedId" => [String.t() | atom()],
        "direction" => list(any()),
        "flowModules" => list(module_configuration()),
        "gatewayId" => String.t() | atom(),
        "linkId" => String.t() | atom(),
        "peerGatewayId" => String.t() | atom(),
        "pendingFlowModules" => list(module_configuration()),
        "status" => list(any()),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type create_link_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t() | atom())
      }

  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_responder_gateway_request() :: %{}

  """
  @type delete_responder_gateway_request() :: %{}

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

      list_links_response() :: %{
        "links" => list(list_links_response_structure()),
        "nextToken" => [String.t() | atom()]
      }

  """
  @type list_links_response() :: %{(String.t() | atom()) => any()}

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

      create_link_request() :: %{
        optional("attributes") => link_attributes(),
        optional("httpResponderAllowed") => [boolean()],
        optional("tags") => map(),
        required("logSettings") => link_log_settings(),
        required("peerGatewayId") => String.t() | atom()
      }

  """
  @type create_link_request() :: %{(String.t() | atom()) => any()}

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

      conflict_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      reject_link_request() :: %{}

  """
  @type reject_link_request() :: %{}

  @typedoc """

  ## Example:

      list_links_response_structure() :: %{
        "attributes" => link_attributes(),
        "createdAt" => [non_neg_integer()],
        "direction" => list(any()),
        "flowModules" => list(module_configuration()),
        "gatewayId" => String.t() | atom(),
        "linkId" => String.t() | atom(),
        "peerGatewayId" => String.t() | atom(),
        "pendingFlowModules" => list(module_configuration()),
        "status" => list(any()),
        "tags" => map(),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type list_links_response_structure() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_outbound_external_link_request() :: %{}

  """
  @type get_outbound_external_link_request() :: %{}

  @typedoc """

  ## Example:

      get_link_response() :: %{
        "attributes" => link_attributes(),
        "createdAt" => [non_neg_integer()],
        "direction" => list(any()),
        "flowModules" => list(module_configuration()),
        "gatewayId" => String.t() | atom(),
        "linkId" => String.t() | atom(),
        "logSettings" => link_log_settings(),
        "peerGatewayId" => String.t() | atom(),
        "pendingFlowModules" => list(module_configuration()),
        "status" => list(any()),
        "tags" => map(),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type get_link_response() :: %{(String.t() | atom()) => any()}

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

      get_outbound_external_link_response() :: %{
        "createdAt" => [non_neg_integer()],
        "gatewayId" => String.t() | atom(),
        "linkId" => String.t() | atom(),
        "logSettings" => link_log_settings(),
        "publicEndpoint" => String.t() | atom(),
        "status" => list(any()),
        "tags" => map(),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type get_outbound_external_link_response() :: %{(String.t() | atom()) => any()}

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

      get_responder_gateway_response() :: %{
        "activeLinksCount" => [integer()],
        "createdAt" => [non_neg_integer()],
        "description" => [String.t() | atom()],
        "domainName" => String.t() | atom(),
        "gatewayId" => String.t() | atom(),
        "inboundLinksCount" => [integer()],
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

      delete_inbound_external_link_request() :: %{}

  """
  @type delete_inbound_external_link_request() :: %{}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_link_response() :: %{
        "linkId" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type update_link_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      no_bid_action() :: %{
        "noBidReasonCode" => [integer()]
      }

  """
  @type no_bid_action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_link_module_flow_response() :: %{
        "gatewayId" => String.t() | atom(),
        "linkId" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type update_link_module_flow_response() :: %{(String.t() | atom()) => any()}

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

      filter() :: %{
        "criteria" => list(filter_criterion())
      }

  """
  @type filter() :: %{(String.t() | atom()) => any()}

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

      list_links_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()]
      }

  """
  @type list_links_request() :: %{(String.t() | atom()) => any()}

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

      update_responder_gateway_request() :: %{
        optional("description") => [String.t() | atom()],
        optional("domainName") => String.t() | atom(),
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

      internal_server_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

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

      delete_outbound_external_link_request() :: %{}

  """
  @type delete_outbound_external_link_request() :: %{}

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

      update_requester_gateway_request() :: %{
        optional("description") => [String.t() | atom()],
        required("clientToken") => [String.t() | atom()]
      }

  """
  @type update_requester_gateway_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      reject_link_response() :: %{
        "attributes" => link_attributes(),
        "createdAt" => [non_neg_integer()],
        "direction" => list(any()),
        "flowModules" => list(module_configuration()),
        "gatewayId" => String.t() | atom(),
        "linkId" => String.t() | atom(),
        "peerGatewayId" => String.t() | atom(),
        "pendingFlowModules" => list(module_configuration()),
        "status" => list(any()),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type reject_link_response() :: %{(String.t() | atom()) => any()}

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

      access_denied_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      link_log_settings() :: %{
        "applicationLogs" => link_application_log_configuration()
      }

  """
  @type link_log_settings() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      rate_limiter_module_parameters() :: %{
        "tps" => [float()]
      }

  """
  @type rate_limiter_module_parameters() :: %{(String.t() | atom()) => any()}

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

      auto_scaling_groups_configuration() :: %{
        "autoScalingGroupNames" => list(String.t() | atom()),
        "roleArn" => [String.t() | atom()]
      }

  """
  @type auto_scaling_groups_configuration() :: %{(String.t() | atom()) => any()}

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

      get_responder_gateway_request() :: %{}

  """
  @type get_responder_gateway_request() :: %{}

  @typedoc """

  ## Example:

      get_inbound_external_link_request() :: %{}

  """
  @type get_inbound_external_link_request() :: %{}

  @typedoc """

  ## Example:

      create_responder_gateway_response() :: %{
        "gatewayId" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type create_responder_gateway_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_link_request() :: %{}

  """
  @type get_link_request() :: %{}

  @typedoc """

  ## Example:

      accept_link_request() :: %{
        optional("attributes") => link_attributes(),
        required("logSettings") => link_log_settings()
      }

  """
  @type accept_link_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_responder_gateway_response() :: %{
        "gatewayId" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type update_responder_gateway_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_link_request() :: %{
        optional("logSettings") => link_log_settings()
      }

  """
  @type update_link_request() :: %{(String.t() | atom()) => any()}

  @type accept_link_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_inbound_external_link_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_link_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_outbound_external_link_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type create_requester_gateway_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type create_responder_gateway_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type delete_inbound_external_link_errors() ::
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

  @type delete_outbound_external_link_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_requester_gateway_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_responder_gateway_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_inbound_external_link_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_link_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_outbound_external_link_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_requester_gateway_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_responder_gateway_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_links_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_requester_gateways_errors() :: validation_exception() | internal_server_exception()

  @type list_responder_gateways_errors() :: validation_exception() | internal_server_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type reject_link_errors() ::
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
          | resource_not_found_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_link_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_link_module_flow_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_requester_gateway_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_responder_gateway_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

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
  Updates a responder gateway.
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
