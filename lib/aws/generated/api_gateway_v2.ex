# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ApiGatewayV2 do
  @moduledoc """
  Amazon API Gateway V2
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      update_stage_request() :: %{
        optional("AccessLogSettings") => access_log_settings(),
        optional("AutoDeploy") => boolean(),
        optional("ClientCertificateId") => String.t() | atom(),
        optional("DefaultRouteSettings") => route_settings(),
        optional("DeploymentId") => String.t() | atom(),
        optional("Description") => String.t() | atom(),
        optional("RouteSettings") => map(),
        optional("StageVariables") => map()
      }

  """
  @type update_stage_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_integration_response_response() :: %{
        "ContentHandlingStrategy" => list(any()),
        "IntegrationResponseId" => String.t() | atom(),
        "IntegrationResponseKey" => String.t() | atom(),
        "ResponseParameters" => map(),
        "ResponseTemplates" => map(),
        "TemplateSelectionExpression" => String.t() | atom()
      }

  """
  @type update_integration_response_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_stages_request() :: %{
        optional("MaxResults") => String.t() | atom(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type get_stages_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_integration_response_response() :: %{
        "ContentHandlingStrategy" => list(any()),
        "IntegrationResponseId" => String.t() | atom(),
        "IntegrationResponseKey" => String.t() | atom(),
        "ResponseParameters" => map(),
        "ResponseTemplates" => map(),
        "TemplateSelectionExpression" => String.t() | atom()
      }

  """
  @type create_integration_response_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      export_api_request() :: %{
        optional("ExportVersion") => String.t() | atom(),
        optional("IncludeExtensions") => boolean(),
        optional("StageName") => String.t() | atom(),
        required("OutputType") => String.t() | atom()
      }

  """
  @type export_api_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      stage() :: %{
        "AccessLogSettings" => access_log_settings(),
        "ApiGatewayManaged" => boolean(),
        "AutoDeploy" => boolean(),
        "ClientCertificateId" => String.t() | atom(),
        "CreatedDate" => non_neg_integer(),
        "DefaultRouteSettings" => route_settings(),
        "DeploymentId" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "LastDeploymentStatusMessage" => String.t() | atom(),
        "LastUpdatedDate" => non_neg_integer(),
        "RouteSettings" => map(),
        "StageName" => String.t() | atom(),
        "StageVariables" => map(),
        "Tags" => map()
      }

  """
  @type stage() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_deployments_request() :: %{
        optional("MaxResults") => String.t() | atom(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type get_deployments_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        optional("Tags") => map()
      }

  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tls_config_input() :: %{
        "ServerNameToVerify" => String.t() | atom()
      }

  """
  @type tls_config_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_routing_rule_request() :: %{
        optional("DomainNameId") => String.t() | atom()
      }

  """
  @type delete_routing_rule_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_vpc_link_response() :: %{}

  """
  @type delete_vpc_link_response() :: %{}

  @typedoc """

  ## Example:

      authorizer() :: %{
        "AuthorizerCredentialsArn" => String.t() | atom(),
        "AuthorizerId" => String.t() | atom(),
        "AuthorizerPayloadFormatVersion" => String.t() | atom(),
        "AuthorizerResultTtlInSeconds" => integer(),
        "AuthorizerType" => list(any()),
        "AuthorizerUri" => String.t() | atom(),
        "EnableSimpleResponses" => boolean(),
        "IdentitySource" => list(String.t() | atom()),
        "IdentityValidationExpression" => String.t() | atom(),
        "JwtConfiguration" => j_w_t_configuration(),
        "Name" => String.t() | atom()
      }

  """
  @type authorizer() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_authorizer_response() :: %{
        "AuthorizerCredentialsArn" => String.t() | atom(),
        "AuthorizerId" => String.t() | atom(),
        "AuthorizerPayloadFormatVersion" => String.t() | atom(),
        "AuthorizerResultTtlInSeconds" => integer(),
        "AuthorizerType" => list(any()),
        "AuthorizerUri" => String.t() | atom(),
        "EnableSimpleResponses" => boolean(),
        "IdentitySource" => list(String.t() | atom()),
        "IdentityValidationExpression" => String.t() | atom(),
        "JwtConfiguration" => j_w_t_configuration(),
        "Name" => String.t() | atom()
      }

  """
  @type get_authorizer_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_stage_response() :: %{
        "AccessLogSettings" => access_log_settings(),
        "ApiGatewayManaged" => boolean(),
        "AutoDeploy" => boolean(),
        "ClientCertificateId" => String.t() | atom(),
        "CreatedDate" => non_neg_integer(),
        "DefaultRouteSettings" => route_settings(),
        "DeploymentId" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "LastDeploymentStatusMessage" => String.t() | atom(),
        "LastUpdatedDate" => non_neg_integer(),
        "RouteSettings" => map(),
        "StageName" => String.t() | atom(),
        "StageVariables" => map(),
        "Tags" => map()
      }

  """
  @type create_stage_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_vpc_links_response() :: %{
        "Items" => list(vpc_link()),
        "NextToken" => String.t() | atom()
      }

  """
  @type get_vpc_links_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      routing_rule_action() :: %{
        "InvokeApi" => routing_rule_action_invoke_api()
      }

  """
  @type routing_rule_action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_tags_request() :: %{}

  """
  @type get_tags_request() :: %{}

  @typedoc """

  ## Example:

      get_stage_response() :: %{
        "AccessLogSettings" => access_log_settings(),
        "ApiGatewayManaged" => boolean(),
        "AutoDeploy" => boolean(),
        "ClientCertificateId" => String.t() | atom(),
        "CreatedDate" => non_neg_integer(),
        "DefaultRouteSettings" => route_settings(),
        "DeploymentId" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "LastDeploymentStatusMessage" => String.t() | atom(),
        "LastUpdatedDate" => non_neg_integer(),
        "RouteSettings" => map(),
        "StageName" => String.t() | atom(),
        "StageVariables" => map(),
        "Tags" => map()
      }

  """
  @type get_stage_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      parameter_constraints() :: %{
        "Required" => boolean()
      }

  """
  @type parameter_constraints() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      deployment() :: %{
        "AutoDeployed" => boolean(),
        "CreatedDate" => non_neg_integer(),
        "DeploymentId" => String.t() | atom(),
        "DeploymentStatus" => list(any()),
        "DeploymentStatusMessage" => String.t() | atom(),
        "Description" => String.t() | atom()
      }

  """
  @type deployment() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_api_mapping_request() :: %{}

  """
  @type delete_api_mapping_request() :: %{}

  @typedoc """

  ## Example:

      integration() :: %{
        "ApiGatewayManaged" => boolean(),
        "ConnectionId" => String.t() | atom(),
        "ConnectionType" => list(any()),
        "ContentHandlingStrategy" => list(any()),
        "CredentialsArn" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "IntegrationId" => String.t() | atom(),
        "IntegrationMethod" => String.t() | atom(),
        "IntegrationResponseSelectionExpression" => String.t() | atom(),
        "IntegrationSubtype" => String.t() | atom(),
        "IntegrationType" => list(any()),
        "IntegrationUri" => String.t() | atom(),
        "PassthroughBehavior" => list(any()),
        "PayloadFormatVersion" => String.t() | atom(),
        "RequestParameters" => map(),
        "RequestTemplates" => map(),
        "ResponseParameters" => map(),
        "TemplateSelectionExpression" => String.t() | atom(),
        "TimeoutInMillis" => integer(),
        "TlsConfig" => tls_config()
      }

  """
  @type integration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_api_mapping_request() :: %{
        optional("ApiMappingKey") => String.t() | atom(),
        optional("Stage") => String.t() | atom(),
        required("ApiId") => String.t() | atom()
      }

  """
  @type update_api_mapping_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_integration_result() :: %{
        "ApiGatewayManaged" => boolean(),
        "ConnectionId" => String.t() | atom(),
        "ConnectionType" => list(any()),
        "ContentHandlingStrategy" => list(any()),
        "CredentialsArn" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "IntegrationId" => String.t() | atom(),
        "IntegrationMethod" => String.t() | atom(),
        "IntegrationResponseSelectionExpression" => String.t() | atom(),
        "IntegrationSubtype" => String.t() | atom(),
        "IntegrationType" => list(any()),
        "IntegrationUri" => String.t() | atom(),
        "PassthroughBehavior" => list(any()),
        "PayloadFormatVersion" => String.t() | atom(),
        "RequestParameters" => map(),
        "RequestTemplates" => map(),
        "ResponseParameters" => map(),
        "TemplateSelectionExpression" => String.t() | atom(),
        "TimeoutInMillis" => integer(),
        "TlsConfig" => tls_config()
      }

  """
  @type get_integration_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_authorizers_response() :: %{
        "Items" => list(authorizer()),
        "NextToken" => String.t() | atom()
      }

  """
  @type get_authorizers_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_integration_response_request() :: %{}

  """
  @type delete_integration_response_request() :: %{}

  @typedoc """

  ## Example:

      route_settings() :: %{
        "DataTraceEnabled" => boolean(),
        "DetailedMetricsEnabled" => boolean(),
        "LoggingLevel" => list(any()),
        "ThrottlingBurstLimit" => integer(),
        "ThrottlingRateLimit" => float()
      }

  """
  @type route_settings() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_routing_rules_response() :: %{
        "NextToken" => String.t() | atom(),
        "RoutingRules" => list(routing_rule())
      }

  """
  @type list_routing_rules_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_route_responses_response() :: %{
        "Items" => list(route_response()),
        "NextToken" => String.t() | atom()
      }

  """
  @type get_route_responses_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      mutual_tls_authentication() :: %{
        optional("TruststoreUri") => String.t() | atom(),
        optional("TruststoreVersion") => String.t() | atom(),
        optional("TruststoreWarnings") => list(String.t() | atom())
      }

  """
  @type mutual_tls_authentication() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_route_response_request() :: %{
        optional("ModelSelectionExpression") => String.t() | atom(),
        optional("ResponseModels") => map(),
        optional("ResponseParameters") => map(),
        required("RouteResponseKey") => String.t() | atom()
      }

  """
  @type create_route_response_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_api_mapping_response() :: %{
        "ApiId" => String.t() | atom(),
        "ApiMappingId" => String.t() | atom(),
        "ApiMappingKey" => String.t() | atom(),
        "Stage" => String.t() | atom()
      }

  """
  @type update_api_mapping_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_route_response_response() :: %{
        "ModelSelectionExpression" => String.t() | atom(),
        "ResponseModels" => map(),
        "ResponseParameters" => map(),
        "RouteResponseId" => String.t() | atom(),
        "RouteResponseKey" => String.t() | atom()
      }

  """
  @type get_route_response_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_deployment_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("StageName") => String.t() | atom()
      }

  """
  @type create_deployment_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_api_response() :: %{
        "ApiEndpoint" => String.t() | atom(),
        "ApiGatewayManaged" => boolean(),
        "ApiId" => String.t() | atom(),
        "ApiKeySelectionExpression" => String.t() | atom(),
        "CorsConfiguration" => cors(),
        "CreatedDate" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "DisableExecuteApiEndpoint" => boolean(),
        "DisableSchemaValidation" => boolean(),
        "ImportInfo" => list(String.t() | atom()),
        "IpAddressType" => list(any()),
        "Name" => String.t() | atom(),
        "ProtocolType" => list(any()),
        "RouteSelectionExpression" => String.t() | atom(),
        "Tags" => map(),
        "Version" => String.t() | atom(),
        "Warnings" => list(String.t() | atom())
      }

  """
  @type create_api_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_model_request() :: %{
        optional("ContentType") => String.t() | atom(),
        optional("Description") => String.t() | atom(),
        required("Name") => String.t() | atom(),
        required("Schema") => String.t() | atom()
      }

  """
  @type create_model_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_route_result() :: %{
        "ApiGatewayManaged" => boolean(),
        "ApiKeyRequired" => boolean(),
        "AuthorizationScopes" => list(String.t() | atom()),
        "AuthorizationType" => list(any()),
        "AuthorizerId" => String.t() | atom(),
        "ModelSelectionExpression" => String.t() | atom(),
        "OperationName" => String.t() | atom(),
        "RequestModels" => map(),
        "RequestParameters" => map(),
        "RouteId" => String.t() | atom(),
        "RouteKey" => String.t() | atom(),
        "RouteResponseSelectionExpression" => String.t() | atom(),
        "Target" => String.t() | atom()
      }

  """
  @type update_route_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_routing_rule_response() :: %{
        "Actions" => list(routing_rule_action()),
        "Conditions" => list(routing_rule_condition()),
        "Priority" => integer(),
        "RoutingRuleArn" => String.t() | atom(),
        "RoutingRuleId" => String.t() | atom()
      }

  """
  @type put_routing_rule_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_model_request() :: %{
        optional("ContentType") => String.t() | atom(),
        optional("Description") => String.t() | atom(),
        optional("Name") => String.t() | atom(),
        optional("Schema") => String.t() | atom()
      }

  """
  @type update_model_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      reimport_api_request() :: %{
        optional("Basepath") => String.t() | atom(),
        optional("FailOnWarnings") => boolean(),
        required("Body") => String.t() | atom()
      }

  """
  @type reimport_api_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_route_response_request() :: %{}

  """
  @type get_route_response_request() :: %{}

  @typedoc """

  ## Example:

      create_domain_name_request() :: %{
        optional("DomainNameConfigurations") => list(domain_name_configuration()),
        optional("MutualTlsAuthentication") => mutual_tls_authentication_input(),
        optional("RoutingMode") => list(any()),
        optional("Tags") => map(),
        required("DomainName") => String.t() | atom()
      }

  """
  @type create_domain_name_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_stage_response() :: %{
        "AccessLogSettings" => access_log_settings(),
        "ApiGatewayManaged" => boolean(),
        "AutoDeploy" => boolean(),
        "ClientCertificateId" => String.t() | atom(),
        "CreatedDate" => non_neg_integer(),
        "DefaultRouteSettings" => route_settings(),
        "DeploymentId" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "LastDeploymentStatusMessage" => String.t() | atom(),
        "LastUpdatedDate" => non_neg_integer(),
        "RouteSettings" => map(),
        "StageName" => String.t() | atom(),
        "StageVariables" => map(),
        "Tags" => map()
      }

  """
  @type update_stage_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      vpc_link() :: %{
        "CreatedDate" => non_neg_integer(),
        "Name" => String.t() | atom(),
        "SecurityGroupIds" => list(String.t() | atom()),
        "SubnetIds" => list(String.t() | atom()),
        "Tags" => map(),
        "VpcLinkId" => String.t() | atom(),
        "VpcLinkStatus" => list(any()),
        "VpcLinkStatusMessage" => String.t() | atom(),
        "VpcLinkVersion" => list(any())
      }

  """
  @type vpc_link() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_deployment_response() :: %{
        "AutoDeployed" => boolean(),
        "CreatedDate" => non_neg_integer(),
        "DeploymentId" => String.t() | atom(),
        "DeploymentStatus" => list(any()),
        "DeploymentStatusMessage" => String.t() | atom(),
        "Description" => String.t() | atom()
      }

  """
  @type create_deployment_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      routing_rule_condition() :: %{
        "MatchBasePaths" => routing_rule_match_base_paths(),
        "MatchHeaders" => routing_rule_match_headers()
      }

  """
  @type routing_rule_condition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("TagKeys") => list(String.t() | atom())
      }

  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_model_template_request() :: %{}

  """
  @type get_model_template_request() :: %{}

  @typedoc """

  ## Example:

      delete_authorizer_request() :: %{}

  """
  @type delete_authorizer_request() :: %{}

  @typedoc """

  ## Example:

      too_many_requests_exception() :: %{
        "LimitType" => String.t() | atom(),
        "Message" => String.t() | atom()
      }

  """
  @type too_many_requests_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_authorizer_request() :: %{
        optional("AuthorizerCredentialsArn") => String.t() | atom(),
        optional("AuthorizerPayloadFormatVersion") => String.t() | atom(),
        optional("AuthorizerResultTtlInSeconds") => integer(),
        optional("AuthorizerUri") => String.t() | atom(),
        optional("EnableSimpleResponses") => boolean(),
        optional("IdentityValidationExpression") => String.t() | atom(),
        optional("JwtConfiguration") => j_w_t_configuration(),
        required("AuthorizerType") => list(any()),
        required("IdentitySource") => list(String.t() | atom()),
        required("Name") => String.t() | atom()
      }

  """
  @type create_authorizer_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_stage_request() :: %{}

  """
  @type get_stage_request() :: %{}

  @typedoc """

  ## Example:

      get_authorizer_request() :: %{}

  """
  @type get_authorizer_request() :: %{}

  @typedoc """

  ## Example:

      get_integration_responses_request() :: %{
        optional("MaxResults") => String.t() | atom(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type get_integration_responses_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_route_response_response() :: %{
        "ModelSelectionExpression" => String.t() | atom(),
        "ResponseModels" => map(),
        "ResponseParameters" => map(),
        "RouteResponseId" => String.t() | atom(),
        "RouteResponseKey" => String.t() | atom()
      }

  """
  @type update_route_response_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_api_mapping_request() :: %{
        optional("ApiMappingKey") => String.t() | atom(),
        required("ApiId") => String.t() | atom(),
        required("Stage") => String.t() | atom()
      }

  """
  @type create_api_mapping_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_authorizer_response() :: %{
        "AuthorizerCredentialsArn" => String.t() | atom(),
        "AuthorizerId" => String.t() | atom(),
        "AuthorizerPayloadFormatVersion" => String.t() | atom(),
        "AuthorizerResultTtlInSeconds" => integer(),
        "AuthorizerType" => list(any()),
        "AuthorizerUri" => String.t() | atom(),
        "EnableSimpleResponses" => boolean(),
        "IdentitySource" => list(String.t() | atom()),
        "IdentityValidationExpression" => String.t() | atom(),
        "JwtConfiguration" => j_w_t_configuration(),
        "Name" => String.t() | atom()
      }

  """
  @type create_authorizer_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_route_request_parameter_request() :: %{}

  """
  @type delete_route_request_parameter_request() :: %{}

  @typedoc """

  ## Example:

      create_integration_result() :: %{
        "ApiGatewayManaged" => boolean(),
        "ConnectionId" => String.t() | atom(),
        "ConnectionType" => list(any()),
        "ContentHandlingStrategy" => list(any()),
        "CredentialsArn" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "IntegrationId" => String.t() | atom(),
        "IntegrationMethod" => String.t() | atom(),
        "IntegrationResponseSelectionExpression" => String.t() | atom(),
        "IntegrationSubtype" => String.t() | atom(),
        "IntegrationType" => list(any()),
        "IntegrationUri" => String.t() | atom(),
        "PassthroughBehavior" => list(any()),
        "PayloadFormatVersion" => String.t() | atom(),
        "RequestParameters" => map(),
        "RequestTemplates" => map(),
        "ResponseParameters" => map(),
        "TemplateSelectionExpression" => String.t() | atom(),
        "TimeoutInMillis" => integer(),
        "TlsConfig" => tls_config()
      }

  """
  @type create_integration_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_stage_request() :: %{}

  """
  @type delete_stage_request() :: %{}

  @typedoc """

  ## Example:

      put_routing_rule_request() :: %{
        optional("DomainNameId") => String.t() | atom(),
        required("Actions") => list(routing_rule_action()),
        required("Conditions") => list(routing_rule_condition()),
        required("Priority") => integer()
      }

  """
  @type put_routing_rule_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_authorizers_request() :: %{
        optional("MaxResults") => String.t() | atom(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type get_authorizers_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_integration_request() :: %{}

  """
  @type delete_integration_request() :: %{}

  @typedoc """

  ## Example:

      get_api_response() :: %{
        "ApiEndpoint" => String.t() | atom(),
        "ApiGatewayManaged" => boolean(),
        "ApiId" => String.t() | atom(),
        "ApiKeySelectionExpression" => String.t() | atom(),
        "CorsConfiguration" => cors(),
        "CreatedDate" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "DisableExecuteApiEndpoint" => boolean(),
        "DisableSchemaValidation" => boolean(),
        "ImportInfo" => list(String.t() | atom()),
        "IpAddressType" => list(any()),
        "Name" => String.t() | atom(),
        "ProtocolType" => list(any()),
        "RouteSelectionExpression" => String.t() | atom(),
        "Tags" => map(),
        "Version" => String.t() | atom(),
        "Warnings" => list(String.t() | atom())
      }

  """
  @type get_api_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_cors_configuration_request() :: %{}

  """
  @type delete_cors_configuration_request() :: %{}

  @typedoc """

  ## Example:

      update_api_response() :: %{
        "ApiEndpoint" => String.t() | atom(),
        "ApiGatewayManaged" => boolean(),
        "ApiId" => String.t() | atom(),
        "ApiKeySelectionExpression" => String.t() | atom(),
        "CorsConfiguration" => cors(),
        "CreatedDate" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "DisableExecuteApiEndpoint" => boolean(),
        "DisableSchemaValidation" => boolean(),
        "ImportInfo" => list(String.t() | atom()),
        "IpAddressType" => list(any()),
        "Name" => String.t() | atom(),
        "ProtocolType" => list(any()),
        "RouteSelectionExpression" => String.t() | atom(),
        "Tags" => map(),
        "Version" => String.t() | atom(),
        "Warnings" => list(String.t() | atom())
      }

  """
  @type update_api_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_deployment_request() :: %{}

  """
  @type get_deployment_request() :: %{}

  @typedoc """

  ## Example:

      j_w_t_configuration() :: %{
        "Audience" => list(String.t() | atom()),
        "Issuer" => String.t() | atom()
      }

  """
  @type j_w_t_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_vpc_link_request() :: %{
        optional("SecurityGroupIds") => list(String.t() | atom()),
        optional("Tags") => map(),
        required("Name") => String.t() | atom(),
        required("SubnetIds") => list(String.t() | atom())
      }

  """
  @type create_vpc_link_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      import_api_request() :: %{
        optional("Basepath") => String.t() | atom(),
        optional("FailOnWarnings") => boolean(),
        required("Body") => String.t() | atom()
      }

  """
  @type import_api_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      routing_rule_match_headers() :: %{
        "AnyOf" => list(routing_rule_match_header_value())
      }

  """
  @type routing_rule_match_headers() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_vpc_link_response() :: %{
        "CreatedDate" => non_neg_integer(),
        "Name" => String.t() | atom(),
        "SecurityGroupIds" => list(String.t() | atom()),
        "SubnetIds" => list(String.t() | atom()),
        "Tags" => map(),
        "VpcLinkId" => String.t() | atom(),
        "VpcLinkStatus" => list(any()),
        "VpcLinkStatusMessage" => String.t() | atom(),
        "VpcLinkVersion" => list(any())
      }

  """
  @type create_vpc_link_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_model_template_response() :: %{
        "Value" => String.t() | atom()
      }

  """
  @type get_model_template_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_integration_responses_response() :: %{
        "Items" => list(integration_response()),
        "NextToken" => String.t() | atom()
      }

  """
  @type get_integration_responses_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      not_found_exception() :: %{
        "Message" => String.t() | atom(),
        "ResourceType" => String.t() | atom()
      }

  """
  @type not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      route() :: %{
        "ApiGatewayManaged" => boolean(),
        "ApiKeyRequired" => boolean(),
        "AuthorizationScopes" => list(String.t() | atom()),
        "AuthorizationType" => list(any()),
        "AuthorizerId" => String.t() | atom(),
        "ModelSelectionExpression" => String.t() | atom(),
        "OperationName" => String.t() | atom(),
        "RequestModels" => map(),
        "RequestParameters" => map(),
        "RouteId" => String.t() | atom(),
        "RouteKey" => String.t() | atom(),
        "RouteResponseSelectionExpression" => String.t() | atom(),
        "Target" => String.t() | atom()
      }

  """
  @type route() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      api_mapping() :: %{
        "ApiId" => String.t() | atom(),
        "ApiMappingId" => String.t() | atom(),
        "ApiMappingKey" => String.t() | atom(),
        "Stage" => String.t() | atom()
      }

  """
  @type api_mapping() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_tags_response() :: %{
        "Tags" => map()
      }

  """
  @type get_tags_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_api_mapping_request() :: %{}

  """
  @type get_api_mapping_request() :: %{}

  @typedoc """

  ## Example:

      delete_route_response_request() :: %{}

  """
  @type delete_route_response_request() :: %{}

  @typedoc """

  ## Example:

      update_domain_name_response() :: %{
        "ApiMappingSelectionExpression" => String.t() | atom(),
        "DomainName" => String.t() | atom(),
        "DomainNameArn" => String.t() | atom(),
        "DomainNameConfigurations" => list(domain_name_configuration()),
        "MutualTlsAuthentication" => mutual_tls_authentication(),
        "RoutingMode" => list(any()),
        "Tags" => map()
      }

  """
  @type update_domain_name_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_domain_names_request() :: %{
        optional("MaxResults") => String.t() | atom(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type get_domain_names_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_access_log_settings_request() :: %{}

  """
  @type delete_access_log_settings_request() :: %{}

  @typedoc """

  ## Example:

      get_integrations_request() :: %{
        optional("MaxResults") => String.t() | atom(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type get_integrations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_integration_request() :: %{}

  """
  @type get_integration_request() :: %{}

  @typedoc """

  ## Example:

      get_routes_response() :: %{
        "Items" => list(route()),
        "NextToken" => String.t() | atom()
      }

  """
  @type get_routes_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_integration_response_request() :: %{
        optional("ContentHandlingStrategy") => list(any()),
        optional("IntegrationResponseKey") => String.t() | atom(),
        optional("ResponseParameters") => map(),
        optional("ResponseTemplates") => map(),
        optional("TemplateSelectionExpression") => String.t() | atom()
      }

  """
  @type update_integration_response_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_route_response_request() :: %{
        optional("ModelSelectionExpression") => String.t() | atom(),
        optional("ResponseModels") => map(),
        optional("ResponseParameters") => map(),
        optional("RouteResponseKey") => String.t() | atom()
      }

  """
  @type update_route_response_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_integration_request() :: %{
        optional("ConnectionId") => String.t() | atom(),
        optional("ConnectionType") => list(any()),
        optional("ContentHandlingStrategy") => list(any()),
        optional("CredentialsArn") => String.t() | atom(),
        optional("Description") => String.t() | atom(),
        optional("IntegrationMethod") => String.t() | atom(),
        optional("IntegrationSubtype") => String.t() | atom(),
        optional("IntegrationType") => list(any()),
        optional("IntegrationUri") => String.t() | atom(),
        optional("PassthroughBehavior") => list(any()),
        optional("PayloadFormatVersion") => String.t() | atom(),
        optional("RequestParameters") => map(),
        optional("RequestTemplates") => map(),
        optional("ResponseParameters") => map(),
        optional("TemplateSelectionExpression") => String.t() | atom(),
        optional("TimeoutInMillis") => integer(),
        optional("TlsConfig") => tls_config_input()
      }

  """
  @type update_integration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_route_settings_request() :: %{}

  """
  @type delete_route_settings_request() :: %{}

  @typedoc """

  ## Example:

      update_model_response() :: %{
        "ContentType" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "ModelId" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "Schema" => String.t() | atom()
      }

  """
  @type update_model_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_model_response() :: %{
        "ContentType" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "ModelId" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "Schema" => String.t() | atom()
      }

  """
  @type create_model_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      reimport_api_response() :: %{
        "ApiEndpoint" => String.t() | atom(),
        "ApiGatewayManaged" => boolean(),
        "ApiId" => String.t() | atom(),
        "ApiKeySelectionExpression" => String.t() | atom(),
        "CorsConfiguration" => cors(),
        "CreatedDate" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "DisableExecuteApiEndpoint" => boolean(),
        "DisableSchemaValidation" => boolean(),
        "ImportInfo" => list(String.t() | atom()),
        "IpAddressType" => list(any()),
        "Name" => String.t() | atom(),
        "ProtocolType" => list(any()),
        "RouteSelectionExpression" => String.t() | atom(),
        "Tags" => map(),
        "Version" => String.t() | atom(),
        "Warnings" => list(String.t() | atom())
      }

  """
  @type reimport_api_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_route_request() :: %{
        optional("ApiKeyRequired") => boolean(),
        optional("AuthorizationScopes") => list(String.t() | atom()),
        optional("AuthorizationType") => list(any()),
        optional("AuthorizerId") => String.t() | atom(),
        optional("ModelSelectionExpression") => String.t() | atom(),
        optional("OperationName") => String.t() | atom(),
        optional("RequestModels") => map(),
        optional("RequestParameters") => map(),
        optional("RouteKey") => String.t() | atom(),
        optional("RouteResponseSelectionExpression") => String.t() | atom(),
        optional("Target") => String.t() | atom()
      }

  """
  @type update_route_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_domain_name_request() :: %{
        optional("DomainNameConfigurations") => list(domain_name_configuration()),
        optional("MutualTlsAuthentication") => mutual_tls_authentication_input(),
        optional("RoutingMode") => list(any())
      }

  """
  @type update_domain_name_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_route_responses_request() :: %{
        optional("MaxResults") => String.t() | atom(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type get_route_responses_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      domain_name() :: %{
        "ApiMappingSelectionExpression" => String.t() | atom(),
        "DomainName" => String.t() | atom(),
        "DomainNameArn" => String.t() | atom(),
        "DomainNameConfigurations" => list(domain_name_configuration()),
        "MutualTlsAuthentication" => mutual_tls_authentication(),
        "RoutingMode" => list(any()),
        "Tags" => map()
      }

  """
  @type domain_name() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_stage_request() :: %{
        optional("AccessLogSettings") => access_log_settings(),
        optional("AutoDeploy") => boolean(),
        optional("ClientCertificateId") => String.t() | atom(),
        optional("DefaultRouteSettings") => route_settings(),
        optional("DeploymentId") => String.t() | atom(),
        optional("Description") => String.t() | atom(),
        optional("RouteSettings") => map(),
        optional("StageVariables") => map(),
        optional("Tags") => map(),
        required("StageName") => String.t() | atom()
      }

  """
  @type create_stage_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_deployment_request() :: %{}

  """
  @type delete_deployment_request() :: %{}

  @typedoc """

  ## Example:

      get_domain_names_response() :: %{
        "Items" => list(domain_name()),
        "NextToken" => String.t() | atom()
      }

  """
  @type get_domain_names_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_integration_request() :: %{
        optional("ConnectionId") => String.t() | atom(),
        optional("ConnectionType") => list(any()),
        optional("ContentHandlingStrategy") => list(any()),
        optional("CredentialsArn") => String.t() | atom(),
        optional("Description") => String.t() | atom(),
        optional("IntegrationMethod") => String.t() | atom(),
        optional("IntegrationSubtype") => String.t() | atom(),
        optional("IntegrationUri") => String.t() | atom(),
        optional("PassthroughBehavior") => list(any()),
        optional("PayloadFormatVersion") => String.t() | atom(),
        optional("RequestParameters") => map(),
        optional("RequestTemplates") => map(),
        optional("ResponseParameters") => map(),
        optional("TemplateSelectionExpression") => String.t() | atom(),
        optional("TimeoutInMillis") => integer(),
        optional("TlsConfig") => tls_config_input(),
        required("IntegrationType") => list(any())
      }

  """
  @type create_integration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_api_mapping_response() :: %{
        "ApiId" => String.t() | atom(),
        "ApiMappingId" => String.t() | atom(),
        "ApiMappingKey" => String.t() | atom(),
        "Stage" => String.t() | atom()
      }

  """
  @type get_api_mapping_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      mutual_tls_authentication_input() :: %{
        optional("TruststoreUri") => String.t() | atom(),
        optional("TruststoreVersion") => String.t() | atom()
      }

  """
  @type mutual_tls_authentication_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      domain_name_configuration() :: %{
        "ApiGatewayDomainName" => String.t() | atom(),
        "CertificateArn" => String.t() | atom(),
        "CertificateName" => String.t() | atom(),
        "CertificateUploadDate" => non_neg_integer(),
        "DomainNameStatus" => list(any()),
        "DomainNameStatusMessage" => String.t() | atom(),
        "EndpointType" => list(any()),
        "HostedZoneId" => String.t() | atom(),
        "IpAddressType" => list(any()),
        "OwnershipVerificationCertificateArn" => String.t() | atom(),
        "SecurityPolicy" => list(any())
      }

  """
  @type domain_name_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      export_api_response() :: %{
        "body" => binary()
      }

  """
  @type export_api_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_api_mappings_request() :: %{
        optional("MaxResults") => String.t() | atom(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type get_api_mappings_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_model_request() :: %{}

  """
  @type delete_model_request() :: %{}

  @typedoc """

  ## Example:

      tls_config() :: %{
        "ServerNameToVerify" => String.t() | atom()
      }

  """
  @type tls_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_integrations_response() :: %{
        "Items" => list(integration()),
        "NextToken" => String.t() | atom()
      }

  """
  @type get_integrations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      access_log_settings() :: %{
        "DestinationArn" => String.t() | atom(),
        "Format" => String.t() | atom()
      }

  """
  @type access_log_settings() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_models_response() :: %{
        "Items" => list(model()),
        "NextToken" => String.t() | atom()
      }

  """
  @type get_models_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_route_result() :: %{
        "ApiGatewayManaged" => boolean(),
        "ApiKeyRequired" => boolean(),
        "AuthorizationScopes" => list(String.t() | atom()),
        "AuthorizationType" => list(any()),
        "AuthorizerId" => String.t() | atom(),
        "ModelSelectionExpression" => String.t() | atom(),
        "OperationName" => String.t() | atom(),
        "RequestModels" => map(),
        "RequestParameters" => map(),
        "RouteId" => String.t() | atom(),
        "RouteKey" => String.t() | atom(),
        "RouteResponseSelectionExpression" => String.t() | atom(),
        "Target" => String.t() | atom()
      }

  """
  @type get_route_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_integration_response_request() :: %{}

  """
  @type get_integration_response_request() :: %{}

  @typedoc """

  ## Example:

      get_stages_response() :: %{
        "Items" => list(stage()),
        "NextToken" => String.t() | atom()
      }

  """
  @type get_stages_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_models_request() :: %{
        optional("MaxResults") => String.t() | atom(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type get_models_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_route_result() :: %{
        "ApiGatewayManaged" => boolean(),
        "ApiKeyRequired" => boolean(),
        "AuthorizationScopes" => list(String.t() | atom()),
        "AuthorizationType" => list(any()),
        "AuthorizerId" => String.t() | atom(),
        "ModelSelectionExpression" => String.t() | atom(),
        "OperationName" => String.t() | atom(),
        "RequestModels" => map(),
        "RequestParameters" => map(),
        "RouteId" => String.t() | atom(),
        "RouteKey" => String.t() | atom(),
        "RouteResponseSelectionExpression" => String.t() | atom(),
        "Target" => String.t() | atom()
      }

  """
  @type create_route_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_routes_request() :: %{
        optional("MaxResults") => String.t() | atom(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type get_routes_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_vpc_link_request() :: %{
        optional("Name") => String.t() | atom()
      }

  """
  @type update_vpc_link_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_routing_rule_response() :: %{
        "Actions" => list(routing_rule_action()),
        "Conditions" => list(routing_rule_condition()),
        "Priority" => integer(),
        "RoutingRuleArn" => String.t() | atom(),
        "RoutingRuleId" => String.t() | atom()
      }

  """
  @type create_routing_rule_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      get_routing_rule_request() :: %{
        optional("DomainNameId") => String.t() | atom()
      }

  """
  @type get_routing_rule_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_domain_name_request() :: %{}

  """
  @type get_domain_name_request() :: %{}

  @typedoc """

  ## Example:

      get_model_request() :: %{}

  """
  @type get_model_request() :: %{}

  @typedoc """

  ## Example:

      update_api_request() :: %{
        optional("ApiKeySelectionExpression") => String.t() | atom(),
        optional("CorsConfiguration") => cors(),
        optional("CredentialsArn") => String.t() | atom(),
        optional("Description") => String.t() | atom(),
        optional("DisableExecuteApiEndpoint") => boolean(),
        optional("DisableSchemaValidation") => boolean(),
        optional("IpAddressType") => list(any()),
        optional("Name") => String.t() | atom(),
        optional("RouteKey") => String.t() | atom(),
        optional("RouteSelectionExpression") => String.t() | atom(),
        optional("Target") => String.t() | atom(),
        optional("Version") => String.t() | atom()
      }

  """
  @type update_api_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_integration_response_request() :: %{
        optional("ContentHandlingStrategy") => list(any()),
        optional("ResponseParameters") => map(),
        optional("ResponseTemplates") => map(),
        optional("TemplateSelectionExpression") => String.t() | atom(),
        required("IntegrationResponseKey") => String.t() | atom()
      }

  """
  @type create_integration_response_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_deployment_response() :: %{
        "AutoDeployed" => boolean(),
        "CreatedDate" => non_neg_integer(),
        "DeploymentId" => String.t() | atom(),
        "DeploymentStatus" => list(any()),
        "DeploymentStatusMessage" => String.t() | atom(),
        "Description" => String.t() | atom()
      }

  """
  @type update_deployment_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_route_request() :: %{}

  """
  @type delete_route_request() :: %{}

  @typedoc """

  ## Example:

      get_deployment_response() :: %{
        "AutoDeployed" => boolean(),
        "CreatedDate" => non_neg_integer(),
        "DeploymentId" => String.t() | atom(),
        "DeploymentStatus" => list(any()),
        "DeploymentStatusMessage" => String.t() | atom(),
        "Description" => String.t() | atom()
      }

  """
  @type get_deployment_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_authorizer_response() :: %{
        "AuthorizerCredentialsArn" => String.t() | atom(),
        "AuthorizerId" => String.t() | atom(),
        "AuthorizerPayloadFormatVersion" => String.t() | atom(),
        "AuthorizerResultTtlInSeconds" => integer(),
        "AuthorizerType" => list(any()),
        "AuthorizerUri" => String.t() | atom(),
        "EnableSimpleResponses" => boolean(),
        "IdentitySource" => list(String.t() | atom()),
        "IdentityValidationExpression" => String.t() | atom(),
        "JwtConfiguration" => j_w_t_configuration(),
        "Name" => String.t() | atom()
      }

  """
  @type update_authorizer_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_api_request() :: %{
        optional("ApiKeySelectionExpression") => String.t() | atom(),
        optional("CorsConfiguration") => cors(),
        optional("CredentialsArn") => String.t() | atom(),
        optional("Description") => String.t() | atom(),
        optional("DisableExecuteApiEndpoint") => boolean(),
        optional("DisableSchemaValidation") => boolean(),
        optional("IpAddressType") => list(any()),
        optional("RouteKey") => String.t() | atom(),
        optional("RouteSelectionExpression") => String.t() | atom(),
        optional("Tags") => map(),
        optional("Target") => String.t() | atom(),
        optional("Version") => String.t() | atom(),
        required("Name") => String.t() | atom(),
        required("ProtocolType") => list(any())
      }

  """
  @type create_api_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_vpc_link_response() :: %{
        "CreatedDate" => non_neg_integer(),
        "Name" => String.t() | atom(),
        "SecurityGroupIds" => list(String.t() | atom()),
        "SubnetIds" => list(String.t() | atom()),
        "Tags" => map(),
        "VpcLinkId" => String.t() | atom(),
        "VpcLinkStatus" => list(any()),
        "VpcLinkStatusMessage" => String.t() | atom(),
        "VpcLinkVersion" => list(any())
      }

  """
  @type get_vpc_link_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cors() :: %{
        "AllowCredentials" => boolean(),
        "AllowHeaders" => list(String.t() | atom()),
        "AllowMethods" => list(String.t() | atom()),
        "AllowOrigins" => list(String.t() | atom()),
        "ExposeHeaders" => list(String.t() | atom()),
        "MaxAge" => integer()
      }

  """
  @type cors() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      api() :: %{
        "ApiEndpoint" => String.t() | atom(),
        "ApiGatewayManaged" => boolean(),
        "ApiId" => String.t() | atom(),
        "ApiKeySelectionExpression" => String.t() | atom(),
        "CorsConfiguration" => cors(),
        "CreatedDate" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "DisableExecuteApiEndpoint" => boolean(),
        "DisableSchemaValidation" => boolean(),
        "ImportInfo" => list(String.t() | atom()),
        "IpAddressType" => list(any()),
        "Name" => String.t() | atom(),
        "ProtocolType" => list(any()),
        "RouteSelectionExpression" => String.t() | atom(),
        "Tags" => map(),
        "Version" => String.t() | atom(),
        "Warnings" => list(String.t() | atom())
      }

  """
  @type api() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_route_response_response() :: %{
        "ModelSelectionExpression" => String.t() | atom(),
        "ResponseModels" => map(),
        "ResponseParameters" => map(),
        "RouteResponseId" => String.t() | atom(),
        "RouteResponseKey" => String.t() | atom()
      }

  """
  @type create_route_response_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      routing_rule_match_header_value() :: %{
        "Header" => String.t() | atom(),
        "ValueGlob" => String.t() | atom()
      }

  """
  @type routing_rule_match_header_value() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_model_response() :: %{
        "ContentType" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "ModelId" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "Schema" => String.t() | atom()
      }

  """
  @type get_model_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      routing_rule_action_invoke_api() :: %{
        "ApiId" => String.t() | atom(),
        "Stage" => String.t() | atom(),
        "StripBasePath" => boolean()
      }

  """
  @type routing_rule_action_invoke_api() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_api_mapping_response() :: %{
        "ApiId" => String.t() | atom(),
        "ApiMappingId" => String.t() | atom(),
        "ApiMappingKey" => String.t() | atom(),
        "Stage" => String.t() | atom()
      }

  """
  @type create_api_mapping_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_domain_name_request() :: %{}

  """
  @type delete_domain_name_request() :: %{}

  @typedoc """

  ## Example:

      update_vpc_link_response() :: %{
        "CreatedDate" => non_neg_integer(),
        "Name" => String.t() | atom(),
        "SecurityGroupIds" => list(String.t() | atom()),
        "SubnetIds" => list(String.t() | atom()),
        "Tags" => map(),
        "VpcLinkId" => String.t() | atom(),
        "VpcLinkStatus" => list(any()),
        "VpcLinkStatusMessage" => String.t() | atom(),
        "VpcLinkVersion" => list(any())
      }

  """
  @type update_vpc_link_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_domain_name_response() :: %{
        "ApiMappingSelectionExpression" => String.t() | atom(),
        "DomainName" => String.t() | atom(),
        "DomainNameArn" => String.t() | atom(),
        "DomainNameConfigurations" => list(domain_name_configuration()),
        "MutualTlsAuthentication" => mutual_tls_authentication(),
        "RoutingMode" => list(any()),
        "Tags" => map()
      }

  """
  @type create_domain_name_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_vpc_link_request() :: %{}

  """
  @type get_vpc_link_request() :: %{}

  @typedoc """

  ## Example:

      bad_request_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type bad_request_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_deployments_response() :: %{
        "Items" => list(deployment()),
        "NextToken" => String.t() | atom()
      }

  """
  @type get_deployments_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      import_api_response() :: %{
        "ApiEndpoint" => String.t() | atom(),
        "ApiGatewayManaged" => boolean(),
        "ApiId" => String.t() | atom(),
        "ApiKeySelectionExpression" => String.t() | atom(),
        "CorsConfiguration" => cors(),
        "CreatedDate" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "DisableExecuteApiEndpoint" => boolean(),
        "DisableSchemaValidation" => boolean(),
        "ImportInfo" => list(String.t() | atom()),
        "IpAddressType" => list(any()),
        "Name" => String.t() | atom(),
        "ProtocolType" => list(any()),
        "RouteSelectionExpression" => String.t() | atom(),
        "Tags" => map(),
        "Version" => String.t() | atom(),
        "Warnings" => list(String.t() | atom())
      }

  """
  @type import_api_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      reset_authorizers_cache_request() :: %{}

  """
  @type reset_authorizers_cache_request() :: %{}

  @typedoc """

  ## Example:

      get_api_mappings_response() :: %{
        "Items" => list(api_mapping()),
        "NextToken" => String.t() | atom()
      }

  """
  @type get_api_mappings_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_route_request() :: %{
        optional("ApiKeyRequired") => boolean(),
        optional("AuthorizationScopes") => list(String.t() | atom()),
        optional("AuthorizationType") => list(any()),
        optional("AuthorizerId") => String.t() | atom(),
        optional("ModelSelectionExpression") => String.t() | atom(),
        optional("OperationName") => String.t() | atom(),
        optional("RequestModels") => map(),
        optional("RequestParameters") => map(),
        optional("RouteResponseSelectionExpression") => String.t() | atom(),
        optional("Target") => String.t() | atom(),
        required("RouteKey") => String.t() | atom()
      }

  """
  @type create_route_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_vpc_links_request() :: %{
        optional("MaxResults") => String.t() | atom(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type get_vpc_links_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_routing_rule_request() :: %{
        optional("DomainNameId") => String.t() | atom(),
        required("Actions") => list(routing_rule_action()),
        required("Conditions") => list(routing_rule_condition()),
        required("Priority") => integer()
      }

  """
  @type create_routing_rule_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_apis_response() :: %{
        "Items" => list(api()),
        "NextToken" => String.t() | atom()
      }

  """
  @type get_apis_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      integration_response() :: %{
        "ContentHandlingStrategy" => list(any()),
        "IntegrationResponseId" => String.t() | atom(),
        "IntegrationResponseKey" => String.t() | atom(),
        "ResponseParameters" => map(),
        "ResponseTemplates" => map(),
        "TemplateSelectionExpression" => String.t() | atom()
      }

  """
  @type integration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      model() :: %{
        "ContentType" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "ModelId" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "Schema" => String.t() | atom()
      }

  """
  @type model() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_routing_rules_request() :: %{
        optional("DomainNameId") => String.t() | atom(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_routing_rules_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      routing_rule() :: %{
        "Actions" => list(routing_rule_action()),
        "Conditions" => list(routing_rule_condition()),
        "Priority" => integer(),
        "RoutingRuleArn" => String.t() | atom(),
        "RoutingRuleId" => String.t() | atom()
      }

  """
  @type routing_rule() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_routing_rule_response() :: %{
        "Actions" => list(routing_rule_action()),
        "Conditions" => list(routing_rule_condition()),
        "Priority" => integer(),
        "RoutingRuleArn" => String.t() | atom(),
        "RoutingRuleId" => String.t() | atom()
      }

  """
  @type get_routing_rule_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_apis_request() :: %{
        optional("MaxResults") => String.t() | atom(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type get_apis_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_deployment_request() :: %{
        optional("Description") => String.t() | atom()
      }

  """
  @type update_deployment_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_integration_response_response() :: %{
        "ContentHandlingStrategy" => list(any()),
        "IntegrationResponseId" => String.t() | atom(),
        "IntegrationResponseKey" => String.t() | atom(),
        "ResponseParameters" => map(),
        "ResponseTemplates" => map(),
        "TemplateSelectionExpression" => String.t() | atom()
      }

  """
  @type get_integration_response_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_api_request() :: %{}

  """
  @type get_api_request() :: %{}

  @typedoc """

  ## Example:

      get_domain_name_response() :: %{
        "ApiMappingSelectionExpression" => String.t() | atom(),
        "DomainName" => String.t() | atom(),
        "DomainNameArn" => String.t() | atom(),
        "DomainNameConfigurations" => list(domain_name_configuration()),
        "MutualTlsAuthentication" => mutual_tls_authentication(),
        "RoutingMode" => list(any()),
        "Tags" => map()
      }

  """
  @type get_domain_name_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_integration_result() :: %{
        "ApiGatewayManaged" => boolean(),
        "ConnectionId" => String.t() | atom(),
        "ConnectionType" => list(any()),
        "ContentHandlingStrategy" => list(any()),
        "CredentialsArn" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "IntegrationId" => String.t() | atom(),
        "IntegrationMethod" => String.t() | atom(),
        "IntegrationResponseSelectionExpression" => String.t() | atom(),
        "IntegrationSubtype" => String.t() | atom(),
        "IntegrationType" => list(any()),
        "IntegrationUri" => String.t() | atom(),
        "PassthroughBehavior" => list(any()),
        "PayloadFormatVersion" => String.t() | atom(),
        "RequestParameters" => map(),
        "RequestTemplates" => map(),
        "ResponseParameters" => map(),
        "TemplateSelectionExpression" => String.t() | atom(),
        "TimeoutInMillis" => integer(),
        "TlsConfig" => tls_config()
      }

  """
  @type update_integration_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_vpc_link_request() :: %{}

  """
  @type delete_vpc_link_request() :: %{}

  @typedoc """

  ## Example:

      update_authorizer_request() :: %{
        optional("AuthorizerCredentialsArn") => String.t() | atom(),
        optional("AuthorizerPayloadFormatVersion") => String.t() | atom(),
        optional("AuthorizerResultTtlInSeconds") => integer(),
        optional("AuthorizerType") => list(any()),
        optional("AuthorizerUri") => String.t() | atom(),
        optional("EnableSimpleResponses") => boolean(),
        optional("IdentitySource") => list(String.t() | atom()),
        optional("IdentityValidationExpression") => String.t() | atom(),
        optional("JwtConfiguration") => j_w_t_configuration(),
        optional("Name") => String.t() | atom()
      }

  """
  @type update_authorizer_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_api_request() :: %{}

  """
  @type delete_api_request() :: %{}

  @typedoc """

  ## Example:

      routing_rule_match_base_paths() :: %{
        "AnyOf" => list(String.t() | atom())
      }

  """
  @type routing_rule_match_base_paths() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_route_request() :: %{}

  """
  @type get_route_request() :: %{}

  @typedoc """

  ## Example:

      route_response() :: %{
        "ModelSelectionExpression" => String.t() | atom(),
        "ResponseModels" => map(),
        "ResponseParameters" => map(),
        "RouteResponseId" => String.t() | atom(),
        "RouteResponseKey" => String.t() | atom()
      }

  """
  @type route_response() :: %{(String.t() | atom()) => any()}

  @type create_api_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()

  @type create_api_mapping_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()

  @type create_authorizer_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()

  @type create_deployment_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()

  @type create_domain_name_errors() ::
          bad_request_exception()
          | access_denied_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()

  @type create_integration_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()

  @type create_integration_response_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()

  @type create_model_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()

  @type create_route_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()

  @type create_route_response_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()

  @type create_routing_rule_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()

  @type create_stage_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()

  @type create_vpc_link_errors() :: bad_request_exception() | too_many_requests_exception()

  @type delete_access_log_settings_errors() ::
          not_found_exception() | too_many_requests_exception()

  @type delete_api_errors() :: not_found_exception() | too_many_requests_exception()

  @type delete_api_mapping_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type delete_authorizer_errors() :: not_found_exception() | too_many_requests_exception()

  @type delete_cors_configuration_errors() ::
          not_found_exception() | too_many_requests_exception()

  @type delete_deployment_errors() :: not_found_exception() | too_many_requests_exception()

  @type delete_domain_name_errors() :: not_found_exception() | too_many_requests_exception()

  @type delete_integration_errors() :: not_found_exception() | too_many_requests_exception()

  @type delete_integration_response_errors() ::
          not_found_exception() | too_many_requests_exception()

  @type delete_model_errors() :: not_found_exception() | too_many_requests_exception()

  @type delete_route_errors() :: not_found_exception() | too_many_requests_exception()

  @type delete_route_request_parameter_errors() ::
          not_found_exception() | too_many_requests_exception()

  @type delete_route_response_errors() :: not_found_exception() | too_many_requests_exception()

  @type delete_route_settings_errors() :: not_found_exception() | too_many_requests_exception()

  @type delete_routing_rule_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type delete_stage_errors() :: not_found_exception() | too_many_requests_exception()

  @type delete_vpc_link_errors() :: not_found_exception() | too_many_requests_exception()

  @type export_api_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type get_api_errors() :: not_found_exception() | too_many_requests_exception()

  @type get_api_mapping_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type get_api_mappings_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type get_apis_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type get_authorizer_errors() :: not_found_exception() | too_many_requests_exception()

  @type get_authorizers_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type get_deployment_errors() :: not_found_exception() | too_many_requests_exception()

  @type get_deployments_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type get_domain_name_errors() :: not_found_exception() | too_many_requests_exception()

  @type get_domain_names_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type get_integration_errors() :: not_found_exception() | too_many_requests_exception()

  @type get_integration_response_errors() :: not_found_exception() | too_many_requests_exception()

  @type get_integration_responses_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type get_integrations_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type get_model_errors() :: not_found_exception() | too_many_requests_exception()

  @type get_model_template_errors() :: not_found_exception() | too_many_requests_exception()

  @type get_models_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type get_route_errors() :: not_found_exception() | too_many_requests_exception()

  @type get_route_response_errors() :: not_found_exception() | too_many_requests_exception()

  @type get_route_responses_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type get_routes_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type get_routing_rule_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type get_stage_errors() :: not_found_exception() | too_many_requests_exception()

  @type get_stages_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type get_tags_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()

  @type get_vpc_link_errors() :: not_found_exception() | too_many_requests_exception()

  @type get_vpc_links_errors() :: bad_request_exception() | too_many_requests_exception()

  @type import_api_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()

  @type list_routing_rules_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type put_routing_rule_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()

  @type reimport_api_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()

  @type reset_authorizers_cache_errors() :: not_found_exception() | too_many_requests_exception()

  @type tag_resource_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()

  @type untag_resource_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()

  @type update_api_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()

  @type update_api_mapping_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()

  @type update_authorizer_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()

  @type update_deployment_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()

  @type update_domain_name_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()

  @type update_integration_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()

  @type update_integration_response_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()

  @type update_model_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()

  @type update_route_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()

  @type update_route_response_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()

  @type update_stage_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()

  @type update_vpc_link_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  def metadata do
    %{
      api_version: "2018-11-29",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "apigateway",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "ApiGatewayV2",
      signature_version: "v4",
      signing_name: "apigateway",
      target_prefix: nil
    }
  end

  @doc """
  Creates an Api resource.
  """
  @spec create_api(map(), create_api_request(), list()) ::
          {:ok, create_api_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_api_errors()}
  def create_api(%Client{} = client, input, options \\ []) do
    url_path = "/v2/apis"
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
      201
    )
  end

  @doc """
  Creates an API mapping.
  """
  @spec create_api_mapping(map(), String.t() | atom(), create_api_mapping_request(), list()) ::
          {:ok, create_api_mapping_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_api_mapping_errors()}
  def create_api_mapping(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/v2/domainnames/#{AWS.Util.encode_uri(domain_name)}/apimappings"
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
      201
    )
  end

  @doc """
  Creates an Authorizer for an API.
  """
  @spec create_authorizer(map(), String.t() | atom(), create_authorizer_request(), list()) ::
          {:ok, create_authorizer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_authorizer_errors()}
  def create_authorizer(%Client{} = client, api_id, input, options \\ []) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/authorizers"
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
      201
    )
  end

  @doc """
  Creates a Deployment for an API.
  """
  @spec create_deployment(map(), String.t() | atom(), create_deployment_request(), list()) ::
          {:ok, create_deployment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_deployment_errors()}
  def create_deployment(%Client{} = client, api_id, input, options \\ []) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/deployments"
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
      201
    )
  end

  @doc """
  Creates a domain name.
  """
  @spec create_domain_name(map(), create_domain_name_request(), list()) ::
          {:ok, create_domain_name_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_domain_name_errors()}
  def create_domain_name(%Client{} = client, input, options \\ []) do
    url_path = "/v2/domainnames"
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
      201
    )
  end

  @doc """
  Creates an Integration.
  """
  @spec create_integration(map(), String.t() | atom(), create_integration_request(), list()) ::
          {:ok, create_integration_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_integration_errors()}
  def create_integration(%Client{} = client, api_id, input, options \\ []) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/integrations"
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
      201
    )
  end

  @doc """
  Creates an IntegrationResponses.
  """
  @spec create_integration_response(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          create_integration_response_request(),
          list()
        ) ::
          {:ok, create_integration_response_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_integration_response_errors()}
  def create_integration_response(
        %Client{} = client,
        api_id,
        integration_id,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/integrations/#{AWS.Util.encode_uri(integration_id)}/integrationresponses"

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
      201
    )
  end

  @doc """
  Creates a Model for an API.
  """
  @spec create_model(map(), String.t() | atom(), create_model_request(), list()) ::
          {:ok, create_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_model_errors()}
  def create_model(%Client{} = client, api_id, input, options \\ []) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/models"
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
      201
    )
  end

  @doc """
  Creates a Route for an API.
  """
  @spec create_route(map(), String.t() | atom(), create_route_request(), list()) ::
          {:ok, create_route_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_route_errors()}
  def create_route(%Client{} = client, api_id, input, options \\ []) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/routes"
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
      201
    )
  end

  @doc """
  Creates a RouteResponse for a Route.
  """
  @spec create_route_response(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          create_route_response_request(),
          list()
        ) ::
          {:ok, create_route_response_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_route_response_errors()}
  def create_route_response(%Client{} = client, api_id, route_id, input, options \\ []) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/routes/#{AWS.Util.encode_uri(route_id)}/routeresponses"

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
      201
    )
  end

  @doc """
  Creates a RoutingRule.
  """
  @spec create_routing_rule(map(), String.t() | atom(), create_routing_rule_request(), list()) ::
          {:ok, create_routing_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_routing_rule_errors()}
  def create_routing_rule(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/v2/domainnames/#{AWS.Util.encode_uri(domain_name)}/routingrules"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"DomainNameId", "domainNameId"}
      ]
      |> Request.build_params(input)

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
      201
    )
  end

  @doc """
  Creates a Stage for an API.
  """
  @spec create_stage(map(), String.t() | atom(), create_stage_request(), list()) ::
          {:ok, create_stage_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_stage_errors()}
  def create_stage(%Client{} = client, api_id, input, options \\ []) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/stages"
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
      201
    )
  end

  @doc """
  Creates a VPC link.
  """
  @spec create_vpc_link(map(), create_vpc_link_request(), list()) ::
          {:ok, create_vpc_link_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_vpc_link_errors()}
  def create_vpc_link(%Client{} = client, input, options \\ []) do
    url_path = "/v2/vpclinks"
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
      201
    )
  end

  @doc """
  Deletes the AccessLogSettings for a Stage.

  To disable access logging for a Stage, delete its AccessLogSettings.
  """
  @spec delete_access_log_settings(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_access_log_settings_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_access_log_settings_errors()}
  def delete_access_log_settings(%Client{} = client, api_id, stage_name, input, options \\ []) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/stages/#{AWS.Util.encode_uri(stage_name)}/accesslogsettings"

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
      204
    )
  end

  @doc """
  Deletes an Api resource.
  """
  @spec delete_api(map(), String.t() | atom(), delete_api_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_api_errors()}
  def delete_api(%Client{} = client, api_id, input, options \\ []) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}"
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
      204
    )
  end

  @doc """
  Deletes an API mapping.
  """
  @spec delete_api_mapping(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_api_mapping_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_api_mapping_errors()}
  def delete_api_mapping(%Client{} = client, api_mapping_id, domain_name, input, options \\ []) do
    url_path =
      "/v2/domainnames/#{AWS.Util.encode_uri(domain_name)}/apimappings/#{AWS.Util.encode_uri(api_mapping_id)}"

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
      204
    )
  end

  @doc """
  Deletes an Authorizer.
  """
  @spec delete_authorizer(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_authorizer_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_authorizer_errors()}
  def delete_authorizer(%Client{} = client, api_id, authorizer_id, input, options \\ []) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/authorizers/#{AWS.Util.encode_uri(authorizer_id)}"

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
      204
    )
  end

  @doc """
  Deletes a CORS configuration.
  """
  @spec delete_cors_configuration(
          map(),
          String.t() | atom(),
          delete_cors_configuration_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_cors_configuration_errors()}
  def delete_cors_configuration(%Client{} = client, api_id, input, options \\ []) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/cors"
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
      204
    )
  end

  @doc """
  Deletes a Deployment.
  """
  @spec delete_deployment(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_deployment_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_deployment_errors()}
  def delete_deployment(%Client{} = client, api_id, deployment_id, input, options \\ []) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/deployments/#{AWS.Util.encode_uri(deployment_id)}"

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
      204
    )
  end

  @doc """
  Deletes a domain name.
  """
  @spec delete_domain_name(map(), String.t() | atom(), delete_domain_name_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_domain_name_errors()}
  def delete_domain_name(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/v2/domainnames/#{AWS.Util.encode_uri(domain_name)}"
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
      204
    )
  end

  @doc """
  Deletes an Integration.
  """
  @spec delete_integration(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_integration_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_integration_errors()}
  def delete_integration(%Client{} = client, api_id, integration_id, input, options \\ []) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/integrations/#{AWS.Util.encode_uri(integration_id)}"

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
      204
    )
  end

  @doc """
  Deletes an IntegrationResponses.
  """
  @spec delete_integration_response(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          delete_integration_response_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_integration_response_errors()}
  def delete_integration_response(
        %Client{} = client,
        api_id,
        integration_id,
        integration_response_id,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/integrations/#{AWS.Util.encode_uri(integration_id)}/integrationresponses/#{AWS.Util.encode_uri(integration_response_id)}"

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
      204
    )
  end

  @doc """
  Deletes a Model.
  """
  @spec delete_model(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_model_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_model_errors()}
  def delete_model(%Client{} = client, api_id, model_id, input, options \\ []) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/models/#{AWS.Util.encode_uri(model_id)}"
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
      204
    )
  end

  @doc """
  Deletes a Route.
  """
  @spec delete_route(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_route_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_route_errors()}
  def delete_route(%Client{} = client, api_id, route_id, input, options \\ []) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/routes/#{AWS.Util.encode_uri(route_id)}"
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
      204
    )
  end

  @doc """
  Deletes a route request parameter.

  Supported only for WebSocket APIs.
  """
  @spec delete_route_request_parameter(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          delete_route_request_parameter_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_route_request_parameter_errors()}
  def delete_route_request_parameter(
        %Client{} = client,
        api_id,
        request_parameter_key,
        route_id,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/routes/#{AWS.Util.encode_uri(route_id)}/requestparameters/#{AWS.Util.encode_uri(request_parameter_key)}"

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
      204
    )
  end

  @doc """
  Deletes a RouteResponse.
  """
  @spec delete_route_response(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          delete_route_response_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_route_response_errors()}
  def delete_route_response(
        %Client{} = client,
        api_id,
        route_id,
        route_response_id,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/routes/#{AWS.Util.encode_uri(route_id)}/routeresponses/#{AWS.Util.encode_uri(route_response_id)}"

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
      204
    )
  end

  @doc """
  Deletes the RouteSettings for a stage.
  """
  @spec delete_route_settings(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          delete_route_settings_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_route_settings_errors()}
  def delete_route_settings(
        %Client{} = client,
        api_id,
        route_key,
        stage_name,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/stages/#{AWS.Util.encode_uri(stage_name)}/routesettings/#{AWS.Util.encode_uri(route_key)}"

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
      204
    )
  end

  @doc """
  Deletes a routing rule.
  """
  @spec delete_routing_rule(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_routing_rule_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_routing_rule_errors()}
  def delete_routing_rule(%Client{} = client, domain_name, routing_rule_id, input, options \\ []) do
    url_path =
      "/v2/domainnames/#{AWS.Util.encode_uri(domain_name)}/routingrules/#{AWS.Util.encode_uri(routing_rule_id)}"

    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"DomainNameId", "domainNameId"}
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
  Deletes a Stage.
  """
  @spec delete_stage(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_stage_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_stage_errors()}
  def delete_stage(%Client{} = client, api_id, stage_name, input, options \\ []) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/stages/#{AWS.Util.encode_uri(stage_name)}"
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
      204
    )
  end

  @doc """
  Deletes a VPC link.
  """
  @spec delete_vpc_link(map(), String.t() | atom(), delete_vpc_link_request(), list()) ::
          {:ok, delete_vpc_link_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_vpc_link_errors()}
  def delete_vpc_link(%Client{} = client, vpc_link_id, input, options \\ []) do
    url_path = "/v2/vpclinks/#{AWS.Util.encode_uri(vpc_link_id)}"
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
      202
    )
  end

  @spec export_api(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom(),
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, export_api_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, export_api_errors()}
  def export_api(
        %Client{} = client,
        api_id,
        specification,
        export_version \\ nil,
        include_extensions \\ nil,
        output_type,
        stage_name \\ nil,
        options \\ []
      ) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/exports/#{AWS.Util.encode_uri(specification)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(stage_name) do
        [{"stageName", stage_name} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(output_type) do
        [{"outputType", output_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(include_extensions) do
        [{"includeExtensions", include_extensions} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(export_version) do
        [{"exportVersion", export_version} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets an Api resource.
  """
  @spec get_api(map(), String.t() | atom(), list()) ::
          {:ok, get_api_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_api_errors()}
  def get_api(%Client{} = client, api_id, options \\ []) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets an API mapping.
  """
  @spec get_api_mapping(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_api_mapping_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_api_mapping_errors()}
  def get_api_mapping(%Client{} = client, api_mapping_id, domain_name, options \\ []) do
    url_path =
      "/v2/domainnames/#{AWS.Util.encode_uri(domain_name)}/apimappings/#{AWS.Util.encode_uri(api_mapping_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets API mappings.
  """
  @spec get_api_mappings(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_api_mappings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_api_mappings_errors()}
  def get_api_mappings(
        %Client{} = client,
        domain_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/v2/domainnames/#{AWS.Util.encode_uri(domain_name)}/apimappings"
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
  Gets a collection of Api resources.
  """
  @spec get_apis(map(), String.t() | atom() | nil, String.t() | atom() | nil, list()) ::
          {:ok, get_apis_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_apis_errors()}
  def get_apis(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/v2/apis"
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
  Gets an Authorizer.
  """
  @spec get_authorizer(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_authorizer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_authorizer_errors()}
  def get_authorizer(%Client{} = client, api_id, authorizer_id, options \\ []) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/authorizers/#{AWS.Util.encode_uri(authorizer_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the Authorizers for an API.
  """
  @spec get_authorizers(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_authorizers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_authorizers_errors()}
  def get_authorizers(
        %Client{} = client,
        api_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/authorizers"
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
  Gets a Deployment.
  """
  @spec get_deployment(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_deployment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_deployment_errors()}
  def get_deployment(%Client{} = client, api_id, deployment_id, options \\ []) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/deployments/#{AWS.Util.encode_uri(deployment_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the Deployments for an API.
  """
  @spec get_deployments(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_deployments_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_deployments_errors()}
  def get_deployments(
        %Client{} = client,
        api_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/deployments"
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
  Gets a domain name.
  """
  @spec get_domain_name(map(), String.t() | atom(), list()) ::
          {:ok, get_domain_name_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_domain_name_errors()}
  def get_domain_name(%Client{} = client, domain_name, options \\ []) do
    url_path = "/v2/domainnames/#{AWS.Util.encode_uri(domain_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the domain names for an AWS account.
  """
  @spec get_domain_names(map(), String.t() | atom() | nil, String.t() | atom() | nil, list()) ::
          {:ok, get_domain_names_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_domain_names_errors()}
  def get_domain_names(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/v2/domainnames"
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
  Gets an Integration.
  """
  @spec get_integration(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_integration_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_integration_errors()}
  def get_integration(%Client{} = client, api_id, integration_id, options \\ []) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/integrations/#{AWS.Util.encode_uri(integration_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets an IntegrationResponses.
  """
  @spec get_integration_response(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          list()
        ) ::
          {:ok, get_integration_response_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_integration_response_errors()}
  def get_integration_response(
        %Client{} = client,
        api_id,
        integration_id,
        integration_response_id,
        options \\ []
      ) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/integrations/#{AWS.Util.encode_uri(integration_id)}/integrationresponses/#{AWS.Util.encode_uri(integration_response_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the IntegrationResponses for an Integration.
  """
  @spec get_integration_responses(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_integration_responses_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_integration_responses_errors()}
  def get_integration_responses(
        %Client{} = client,
        api_id,
        integration_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/integrations/#{AWS.Util.encode_uri(integration_id)}/integrationresponses"

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
  Gets the Integrations for an API.
  """
  @spec get_integrations(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_integrations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_integrations_errors()}
  def get_integrations(
        %Client{} = client,
        api_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/integrations"
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
  Gets a Model.
  """
  @spec get_model(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_model_errors()}
  def get_model(%Client{} = client, api_id, model_id, options \\ []) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/models/#{AWS.Util.encode_uri(model_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a model template.
  """
  @spec get_model_template(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_model_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_model_template_errors()}
  def get_model_template(%Client{} = client, api_id, model_id, options \\ []) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/models/#{AWS.Util.encode_uri(model_id)}/template"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the Models for an API.
  """
  @spec get_models(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_models_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_models_errors()}
  def get_models(%Client{} = client, api_id, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/models"
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
  Gets a Route.
  """
  @spec get_route(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_route_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_route_errors()}
  def get_route(%Client{} = client, api_id, route_id, options \\ []) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/routes/#{AWS.Util.encode_uri(route_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a RouteResponse.
  """
  @spec get_route_response(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          list()
        ) ::
          {:ok, get_route_response_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_route_response_errors()}
  def get_route_response(%Client{} = client, api_id, route_id, route_response_id, options \\ []) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/routes/#{AWS.Util.encode_uri(route_id)}/routeresponses/#{AWS.Util.encode_uri(route_response_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the RouteResponses for a Route.
  """
  @spec get_route_responses(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_route_responses_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_route_responses_errors()}
  def get_route_responses(
        %Client{} = client,
        api_id,
        route_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/routes/#{AWS.Util.encode_uri(route_id)}/routeresponses"

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
  Gets the Routes for an API.
  """
  @spec get_routes(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_routes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_routes_errors()}
  def get_routes(%Client{} = client, api_id, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/routes"
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
  Gets a routing rule.
  """
  @spec get_routing_rule(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_routing_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_routing_rule_errors()}
  def get_routing_rule(
        %Client{} = client,
        domain_name,
        routing_rule_id,
        domain_name_id \\ nil,
        options \\ []
      ) do
    url_path =
      "/v2/domainnames/#{AWS.Util.encode_uri(domain_name)}/routingrules/#{AWS.Util.encode_uri(routing_rule_id)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(domain_name_id) do
        [{"domainNameId", domain_name_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a Stage.
  """
  @spec get_stage(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_stage_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_stage_errors()}
  def get_stage(%Client{} = client, api_id, stage_name, options \\ []) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/stages/#{AWS.Util.encode_uri(stage_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the Stages for an API.
  """
  @spec get_stages(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_stages_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_stages_errors()}
  def get_stages(%Client{} = client, api_id, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/stages"
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
  Gets a collection of Tag resources.
  """
  @spec get_tags(map(), String.t() | atom(), list()) ::
          {:ok, get_tags_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_tags_errors()}
  def get_tags(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/v2/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a VPC link.
  """
  @spec get_vpc_link(map(), String.t() | atom(), list()) ::
          {:ok, get_vpc_link_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_vpc_link_errors()}
  def get_vpc_link(%Client{} = client, vpc_link_id, options \\ []) do
    url_path = "/v2/vpclinks/#{AWS.Util.encode_uri(vpc_link_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a collection of VPC links.
  """
  @spec get_vpc_links(map(), String.t() | atom() | nil, String.t() | atom() | nil, list()) ::
          {:ok, get_vpc_links_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_vpc_links_errors()}
  def get_vpc_links(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/v2/vpclinks"
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
  Imports an API.
  """
  @spec import_api(map(), import_api_request(), list()) ::
          {:ok, import_api_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, import_api_errors()}
  def import_api(%Client{} = client, input, options \\ []) do
    url_path = "/v2/apis"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"Basepath", "basepath"},
        {"FailOnWarnings", "failOnWarnings"}
      ]
      |> Request.build_params(input)

    options =
      Keyword.put(
        options,
        :send_body_as_binary?,
        true
      )

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
      201
    )
  end

  @doc """
  Lists routing rules.
  """
  @spec list_routing_rules(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_routing_rules_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_routing_rules_errors()}
  def list_routing_rules(
        %Client{} = client,
        domain_name,
        domain_name_id \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/v2/domainnames/#{AWS.Util.encode_uri(domain_name)}/routingrules"
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
      if !is_nil(domain_name_id) do
        [{"domainNameId", domain_name_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Updates a routing rule.
  """
  @spec put_routing_rule(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          put_routing_rule_request(),
          list()
        ) ::
          {:ok, put_routing_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_routing_rule_errors()}
  def put_routing_rule(%Client{} = client, domain_name, routing_rule_id, input, options \\ []) do
    url_path =
      "/v2/domainnames/#{AWS.Util.encode_uri(domain_name)}/routingrules/#{AWS.Util.encode_uri(routing_rule_id)}"

    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"DomainNameId", "domainNameId"}
      ]
      |> Request.build_params(input)

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
  Puts an Api resource.
  """
  @spec reimport_api(map(), String.t() | atom(), reimport_api_request(), list()) ::
          {:ok, reimport_api_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, reimport_api_errors()}
  def reimport_api(%Client{} = client, api_id, input, options \\ []) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"Basepath", "basepath"},
        {"FailOnWarnings", "failOnWarnings"}
      ]
      |> Request.build_params(input)

    options =
      Keyword.put(
        options,
        :send_body_as_binary?,
        true
      )

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
      201
    )
  end

  @doc """
  Resets all authorizer cache entries on a stage.

  Supported only for HTTP APIs.
  """
  @spec reset_authorizers_cache(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          reset_authorizers_cache_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, reset_authorizers_cache_errors()}
  def reset_authorizers_cache(%Client{} = client, api_id, stage_name, input, options \\ []) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/stages/#{AWS.Util.encode_uri(stage_name)}/cache/authorizers"

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
      204
    )
  end

  @doc """
  Creates a new Tag resource to represent a tag.
  """
  @spec tag_resource(map(), String.t() | atom(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/v2/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
      201
    )
  end

  @doc """
  Deletes a Tag.
  """
  @spec untag_resource(map(), String.t() | atom(), untag_resource_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/v2/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
      204
    )
  end

  @doc """
  Updates an Api resource.
  """
  @spec update_api(map(), String.t() | atom(), update_api_request(), list()) ::
          {:ok, update_api_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_api_errors()}
  def update_api(%Client{} = client, api_id, input, options \\ []) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}"
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
  The API mapping.
  """
  @spec update_api_mapping(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_api_mapping_request(),
          list()
        ) ::
          {:ok, update_api_mapping_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_api_mapping_errors()}
  def update_api_mapping(%Client{} = client, api_mapping_id, domain_name, input, options \\ []) do
    url_path =
      "/v2/domainnames/#{AWS.Util.encode_uri(domain_name)}/apimappings/#{AWS.Util.encode_uri(api_mapping_id)}"

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
  Updates an Authorizer.
  """
  @spec update_authorizer(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_authorizer_request(),
          list()
        ) ::
          {:ok, update_authorizer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_authorizer_errors()}
  def update_authorizer(%Client{} = client, api_id, authorizer_id, input, options \\ []) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/authorizers/#{AWS.Util.encode_uri(authorizer_id)}"

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
  Updates a Deployment.
  """
  @spec update_deployment(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_deployment_request(),
          list()
        ) ::
          {:ok, update_deployment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_deployment_errors()}
  def update_deployment(%Client{} = client, api_id, deployment_id, input, options \\ []) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/deployments/#{AWS.Util.encode_uri(deployment_id)}"

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
  Updates a domain name.
  """
  @spec update_domain_name(map(), String.t() | atom(), update_domain_name_request(), list()) ::
          {:ok, update_domain_name_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_domain_name_errors()}
  def update_domain_name(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/v2/domainnames/#{AWS.Util.encode_uri(domain_name)}"
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
  Updates an Integration.
  """
  @spec update_integration(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_integration_request(),
          list()
        ) ::
          {:ok, update_integration_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_integration_errors()}
  def update_integration(%Client{} = client, api_id, integration_id, input, options \\ []) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/integrations/#{AWS.Util.encode_uri(integration_id)}"

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
  Updates an IntegrationResponses.
  """
  @spec update_integration_response(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          update_integration_response_request(),
          list()
        ) ::
          {:ok, update_integration_response_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_integration_response_errors()}
  def update_integration_response(
        %Client{} = client,
        api_id,
        integration_id,
        integration_response_id,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/integrations/#{AWS.Util.encode_uri(integration_id)}/integrationresponses/#{AWS.Util.encode_uri(integration_response_id)}"

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
  Updates a Model.
  """
  @spec update_model(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_model_request(),
          list()
        ) ::
          {:ok, update_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_model_errors()}
  def update_model(%Client{} = client, api_id, model_id, input, options \\ []) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/models/#{AWS.Util.encode_uri(model_id)}"
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
  Updates a Route.
  """
  @spec update_route(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_route_request(),
          list()
        ) ::
          {:ok, update_route_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_route_errors()}
  def update_route(%Client{} = client, api_id, route_id, input, options \\ []) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/routes/#{AWS.Util.encode_uri(route_id)}"
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
  Updates a RouteResponse.
  """
  @spec update_route_response(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          update_route_response_request(),
          list()
        ) ::
          {:ok, update_route_response_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_route_response_errors()}
  def update_route_response(
        %Client{} = client,
        api_id,
        route_id,
        route_response_id,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/routes/#{AWS.Util.encode_uri(route_id)}/routeresponses/#{AWS.Util.encode_uri(route_response_id)}"

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
  Updates a Stage.
  """
  @spec update_stage(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_stage_request(),
          list()
        ) ::
          {:ok, update_stage_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_stage_errors()}
  def update_stage(%Client{} = client, api_id, stage_name, input, options \\ []) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/stages/#{AWS.Util.encode_uri(stage_name)}"
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
  Updates a VPC link.
  """
  @spec update_vpc_link(map(), String.t() | atom(), update_vpc_link_request(), list()) ::
          {:ok, update_vpc_link_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_vpc_link_errors()}
  def update_vpc_link(%Client{} = client, vpc_link_id, input, options \\ []) do
    url_path = "/v2/vpclinks/#{AWS.Util.encode_uri(vpc_link_id)}"
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
end
