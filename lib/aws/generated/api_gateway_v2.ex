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
        optional("ClientCertificateId") => String.t(),
        optional("DefaultRouteSettings") => route_settings(),
        optional("DeploymentId") => String.t(),
        optional("Description") => String.t(),
        optional("RouteSettings") => map(),
        optional("StageVariables") => map()
      }

  """
  @type update_stage_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_integration_response_response() :: %{
        "ContentHandlingStrategy" => list(any()),
        "IntegrationResponseId" => String.t(),
        "IntegrationResponseKey" => String.t(),
        "ResponseParameters" => map(),
        "ResponseTemplates" => map(),
        "TemplateSelectionExpression" => String.t()
      }

  """
  @type update_integration_response_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_stages_request() :: %{
        optional("MaxResults") => String.t(),
        optional("NextToken") => String.t()
      }

  """
  @type get_stages_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_integration_response_response() :: %{
        "ContentHandlingStrategy" => list(any()),
        "IntegrationResponseId" => String.t(),
        "IntegrationResponseKey" => String.t(),
        "ResponseParameters" => map(),
        "ResponseTemplates" => map(),
        "TemplateSelectionExpression" => String.t()
      }

  """
  @type create_integration_response_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      export_api_request() :: %{
        optional("ExportVersion") => String.t(),
        optional("IncludeExtensions") => boolean(),
        optional("StageName") => String.t(),
        required("OutputType") => String.t()
      }

  """
  @type export_api_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stage() :: %{
        "AccessLogSettings" => access_log_settings(),
        "ApiGatewayManaged" => boolean(),
        "AutoDeploy" => boolean(),
        "ClientCertificateId" => String.t(),
        "CreatedDate" => non_neg_integer(),
        "DefaultRouteSettings" => route_settings(),
        "DeploymentId" => String.t(),
        "Description" => String.t(),
        "LastDeploymentStatusMessage" => String.t(),
        "LastUpdatedDate" => non_neg_integer(),
        "RouteSettings" => map(),
        "StageName" => String.t(),
        "StageVariables" => map(),
        "Tags" => map()
      }

  """
  @type stage() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_deployments_request() :: %{
        optional("MaxResults") => String.t(),
        optional("NextToken") => String.t()
      }

  """
  @type get_deployments_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        optional("Tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tls_config_input() :: %{
        "ServerNameToVerify" => String.t()
      }

  """
  @type tls_config_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_vpc_link_response() :: %{}

  """
  @type delete_vpc_link_response() :: %{}

  @typedoc """

  ## Example:

      authorizer() :: %{
        "AuthorizerCredentialsArn" => String.t(),
        "AuthorizerId" => String.t(),
        "AuthorizerPayloadFormatVersion" => String.t(),
        "AuthorizerResultTtlInSeconds" => integer(),
        "AuthorizerType" => list(any()),
        "AuthorizerUri" => String.t(),
        "EnableSimpleResponses" => boolean(),
        "IdentitySource" => list(String.t()()),
        "IdentityValidationExpression" => String.t(),
        "JwtConfiguration" => j_w_t_configuration(),
        "Name" => String.t()
      }

  """
  @type authorizer() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_authorizer_response() :: %{
        "AuthorizerCredentialsArn" => String.t(),
        "AuthorizerId" => String.t(),
        "AuthorizerPayloadFormatVersion" => String.t(),
        "AuthorizerResultTtlInSeconds" => integer(),
        "AuthorizerType" => list(any()),
        "AuthorizerUri" => String.t(),
        "EnableSimpleResponses" => boolean(),
        "IdentitySource" => list(String.t()()),
        "IdentityValidationExpression" => String.t(),
        "JwtConfiguration" => j_w_t_configuration(),
        "Name" => String.t()
      }

  """
  @type get_authorizer_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_stage_response() :: %{
        "AccessLogSettings" => access_log_settings(),
        "ApiGatewayManaged" => boolean(),
        "AutoDeploy" => boolean(),
        "ClientCertificateId" => String.t(),
        "CreatedDate" => non_neg_integer(),
        "DefaultRouteSettings" => route_settings(),
        "DeploymentId" => String.t(),
        "Description" => String.t(),
        "LastDeploymentStatusMessage" => String.t(),
        "LastUpdatedDate" => non_neg_integer(),
        "RouteSettings" => map(),
        "StageName" => String.t(),
        "StageVariables" => map(),
        "Tags" => map()
      }

  """
  @type create_stage_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_vpc_links_response() :: %{
        "Items" => list(vpc_link()()),
        "NextToken" => String.t()
      }

  """
  @type get_vpc_links_response() :: %{String.t() => any()}

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
        "ClientCertificateId" => String.t(),
        "CreatedDate" => non_neg_integer(),
        "DefaultRouteSettings" => route_settings(),
        "DeploymentId" => String.t(),
        "Description" => String.t(),
        "LastDeploymentStatusMessage" => String.t(),
        "LastUpdatedDate" => non_neg_integer(),
        "RouteSettings" => map(),
        "StageName" => String.t(),
        "StageVariables" => map(),
        "Tags" => map()
      }

  """
  @type get_stage_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      parameter_constraints() :: %{
        "Required" => boolean()
      }

  """
  @type parameter_constraints() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      deployment() :: %{
        "AutoDeployed" => boolean(),
        "CreatedDate" => non_neg_integer(),
        "DeploymentId" => String.t(),
        "DeploymentStatus" => list(any()),
        "DeploymentStatusMessage" => String.t(),
        "Description" => String.t()
      }

  """
  @type deployment() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_api_mapping_request() :: %{}

  """
  @type delete_api_mapping_request() :: %{}

  @typedoc """

  ## Example:

      integration() :: %{
        "ApiGatewayManaged" => boolean(),
        "ConnectionId" => String.t(),
        "ConnectionType" => list(any()),
        "ContentHandlingStrategy" => list(any()),
        "CredentialsArn" => String.t(),
        "Description" => String.t(),
        "IntegrationId" => String.t(),
        "IntegrationMethod" => String.t(),
        "IntegrationResponseSelectionExpression" => String.t(),
        "IntegrationSubtype" => String.t(),
        "IntegrationType" => list(any()),
        "IntegrationUri" => String.t(),
        "PassthroughBehavior" => list(any()),
        "PayloadFormatVersion" => String.t(),
        "RequestParameters" => map(),
        "RequestTemplates" => map(),
        "ResponseParameters" => map(),
        "TemplateSelectionExpression" => String.t(),
        "TimeoutInMillis" => integer(),
        "TlsConfig" => tls_config()
      }

  """
  @type integration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_api_mapping_request() :: %{
        optional("ApiMappingKey") => String.t(),
        optional("Stage") => String.t(),
        required("ApiId") => String.t()
      }

  """
  @type update_api_mapping_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_integration_result() :: %{
        "ApiGatewayManaged" => boolean(),
        "ConnectionId" => String.t(),
        "ConnectionType" => list(any()),
        "ContentHandlingStrategy" => list(any()),
        "CredentialsArn" => String.t(),
        "Description" => String.t(),
        "IntegrationId" => String.t(),
        "IntegrationMethod" => String.t(),
        "IntegrationResponseSelectionExpression" => String.t(),
        "IntegrationSubtype" => String.t(),
        "IntegrationType" => list(any()),
        "IntegrationUri" => String.t(),
        "PassthroughBehavior" => list(any()),
        "PayloadFormatVersion" => String.t(),
        "RequestParameters" => map(),
        "RequestTemplates" => map(),
        "ResponseParameters" => map(),
        "TemplateSelectionExpression" => String.t(),
        "TimeoutInMillis" => integer(),
        "TlsConfig" => tls_config()
      }

  """
  @type get_integration_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_authorizers_response() :: %{
        "Items" => list(authorizer()()),
        "NextToken" => String.t()
      }

  """
  @type get_authorizers_response() :: %{String.t() => any()}

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
  @type route_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_route_responses_response() :: %{
        "Items" => list(route_response()()),
        "NextToken" => String.t()
      }

  """
  @type get_route_responses_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      mutual_tls_authentication() :: %{
        optional("TruststoreUri") => String.t(),
        optional("TruststoreVersion") => String.t(),
        optional("TruststoreWarnings") => list(String.t()())
      }

  """
  @type mutual_tls_authentication() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_route_response_request() :: %{
        optional("ModelSelectionExpression") => String.t(),
        optional("ResponseModels") => map(),
        optional("ResponseParameters") => map(),
        required("RouteResponseKey") => String.t()
      }

  """
  @type create_route_response_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_api_mapping_response() :: %{
        "ApiId" => String.t(),
        "ApiMappingId" => String.t(),
        "ApiMappingKey" => String.t(),
        "Stage" => String.t()
      }

  """
  @type update_api_mapping_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_route_response_response() :: %{
        "ModelSelectionExpression" => String.t(),
        "ResponseModels" => map(),
        "ResponseParameters" => map(),
        "RouteResponseId" => String.t(),
        "RouteResponseKey" => String.t()
      }

  """
  @type get_route_response_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_deployment_request() :: %{
        optional("Description") => String.t(),
        optional("StageName") => String.t()
      }

  """
  @type create_deployment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_api_response() :: %{
        "ApiEndpoint" => String.t(),
        "ApiGatewayManaged" => boolean(),
        "ApiId" => String.t(),
        "ApiKeySelectionExpression" => String.t(),
        "CorsConfiguration" => cors(),
        "CreatedDate" => non_neg_integer(),
        "Description" => String.t(),
        "DisableExecuteApiEndpoint" => boolean(),
        "DisableSchemaValidation" => boolean(),
        "ImportInfo" => list(String.t()()),
        "Name" => String.t(),
        "ProtocolType" => list(any()),
        "RouteSelectionExpression" => String.t(),
        "Tags" => map(),
        "Version" => String.t(),
        "Warnings" => list(String.t()())
      }

  """
  @type create_api_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_model_request() :: %{
        optional("ContentType") => String.t(),
        optional("Description") => String.t(),
        required("Name") => String.t(),
        required("Schema") => String.t()
      }

  """
  @type create_model_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_route_result() :: %{
        "ApiGatewayManaged" => boolean(),
        "ApiKeyRequired" => boolean(),
        "AuthorizationScopes" => list(String.t()()),
        "AuthorizationType" => list(any()),
        "AuthorizerId" => String.t(),
        "ModelSelectionExpression" => String.t(),
        "OperationName" => String.t(),
        "RequestModels" => map(),
        "RequestParameters" => map(),
        "RouteId" => String.t(),
        "RouteKey" => String.t(),
        "RouteResponseSelectionExpression" => String.t(),
        "Target" => String.t()
      }

  """
  @type update_route_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_model_request() :: %{
        optional("ContentType") => String.t(),
        optional("Description") => String.t(),
        optional("Name") => String.t(),
        optional("Schema") => String.t()
      }

  """
  @type update_model_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      reimport_api_request() :: %{
        optional("Basepath") => String.t(),
        optional("FailOnWarnings") => boolean(),
        required("Body") => String.t()
      }

  """
  @type reimport_api_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_route_response_request() :: %{}

  """
  @type get_route_response_request() :: %{}

  @typedoc """

  ## Example:

      create_domain_name_request() :: %{
        optional("DomainNameConfigurations") => list(domain_name_configuration()()),
        optional("MutualTlsAuthentication") => mutual_tls_authentication_input(),
        optional("Tags") => map(),
        required("DomainName") => String.t()
      }

  """
  @type create_domain_name_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_stage_response() :: %{
        "AccessLogSettings" => access_log_settings(),
        "ApiGatewayManaged" => boolean(),
        "AutoDeploy" => boolean(),
        "ClientCertificateId" => String.t(),
        "CreatedDate" => non_neg_integer(),
        "DefaultRouteSettings" => route_settings(),
        "DeploymentId" => String.t(),
        "Description" => String.t(),
        "LastDeploymentStatusMessage" => String.t(),
        "LastUpdatedDate" => non_neg_integer(),
        "RouteSettings" => map(),
        "StageName" => String.t(),
        "StageVariables" => map(),
        "Tags" => map()
      }

  """
  @type update_stage_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      vpc_link() :: %{
        "CreatedDate" => non_neg_integer(),
        "Name" => String.t(),
        "SecurityGroupIds" => list(String.t()()),
        "SubnetIds" => list(String.t()()),
        "Tags" => map(),
        "VpcLinkId" => String.t(),
        "VpcLinkStatus" => list(any()),
        "VpcLinkStatusMessage" => String.t(),
        "VpcLinkVersion" => list(any())
      }

  """
  @type vpc_link() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_deployment_response() :: %{
        "AutoDeployed" => boolean(),
        "CreatedDate" => non_neg_integer(),
        "DeploymentId" => String.t(),
        "DeploymentStatus" => list(any()),
        "DeploymentStatusMessage" => String.t(),
        "Description" => String.t()
      }

  """
  @type create_deployment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("TagKeys") => list(String.t()())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

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
        "LimitType" => String.t(),
        "Message" => String.t()
      }

  """
  @type too_many_requests_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_authorizer_request() :: %{
        optional("AuthorizerCredentialsArn") => String.t(),
        optional("AuthorizerPayloadFormatVersion") => String.t(),
        optional("AuthorizerResultTtlInSeconds") => integer(),
        optional("AuthorizerUri") => String.t(),
        optional("EnableSimpleResponses") => boolean(),
        optional("IdentityValidationExpression") => String.t(),
        optional("JwtConfiguration") => j_w_t_configuration(),
        required("AuthorizerType") => list(any()),
        required("IdentitySource") => list(String.t()()),
        required("Name") => String.t()
      }

  """
  @type create_authorizer_request() :: %{String.t() => any()}

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
        optional("MaxResults") => String.t(),
        optional("NextToken") => String.t()
      }

  """
  @type get_integration_responses_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_route_response_response() :: %{
        "ModelSelectionExpression" => String.t(),
        "ResponseModels" => map(),
        "ResponseParameters" => map(),
        "RouteResponseId" => String.t(),
        "RouteResponseKey" => String.t()
      }

  """
  @type update_route_response_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_api_mapping_request() :: %{
        optional("ApiMappingKey") => String.t(),
        required("ApiId") => String.t(),
        required("Stage") => String.t()
      }

  """
  @type create_api_mapping_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_authorizer_response() :: %{
        "AuthorizerCredentialsArn" => String.t(),
        "AuthorizerId" => String.t(),
        "AuthorizerPayloadFormatVersion" => String.t(),
        "AuthorizerResultTtlInSeconds" => integer(),
        "AuthorizerType" => list(any()),
        "AuthorizerUri" => String.t(),
        "EnableSimpleResponses" => boolean(),
        "IdentitySource" => list(String.t()()),
        "IdentityValidationExpression" => String.t(),
        "JwtConfiguration" => j_w_t_configuration(),
        "Name" => String.t()
      }

  """
  @type create_authorizer_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_route_request_parameter_request() :: %{}

  """
  @type delete_route_request_parameter_request() :: %{}

  @typedoc """

  ## Example:

      create_integration_result() :: %{
        "ApiGatewayManaged" => boolean(),
        "ConnectionId" => String.t(),
        "ConnectionType" => list(any()),
        "ContentHandlingStrategy" => list(any()),
        "CredentialsArn" => String.t(),
        "Description" => String.t(),
        "IntegrationId" => String.t(),
        "IntegrationMethod" => String.t(),
        "IntegrationResponseSelectionExpression" => String.t(),
        "IntegrationSubtype" => String.t(),
        "IntegrationType" => list(any()),
        "IntegrationUri" => String.t(),
        "PassthroughBehavior" => list(any()),
        "PayloadFormatVersion" => String.t(),
        "RequestParameters" => map(),
        "RequestTemplates" => map(),
        "ResponseParameters" => map(),
        "TemplateSelectionExpression" => String.t(),
        "TimeoutInMillis" => integer(),
        "TlsConfig" => tls_config()
      }

  """
  @type create_integration_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_stage_request() :: %{}

  """
  @type delete_stage_request() :: %{}

  @typedoc """

  ## Example:

      get_authorizers_request() :: %{
        optional("MaxResults") => String.t(),
        optional("NextToken") => String.t()
      }

  """
  @type get_authorizers_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "Message" => String.t()
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_integration_request() :: %{}

  """
  @type delete_integration_request() :: %{}

  @typedoc """

  ## Example:

      get_api_response() :: %{
        "ApiEndpoint" => String.t(),
        "ApiGatewayManaged" => boolean(),
        "ApiId" => String.t(),
        "ApiKeySelectionExpression" => String.t(),
        "CorsConfiguration" => cors(),
        "CreatedDate" => non_neg_integer(),
        "Description" => String.t(),
        "DisableExecuteApiEndpoint" => boolean(),
        "DisableSchemaValidation" => boolean(),
        "ImportInfo" => list(String.t()()),
        "Name" => String.t(),
        "ProtocolType" => list(any()),
        "RouteSelectionExpression" => String.t(),
        "Tags" => map(),
        "Version" => String.t(),
        "Warnings" => list(String.t()())
      }

  """
  @type get_api_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_cors_configuration_request() :: %{}

  """
  @type delete_cors_configuration_request() :: %{}

  @typedoc """

  ## Example:

      update_api_response() :: %{
        "ApiEndpoint" => String.t(),
        "ApiGatewayManaged" => boolean(),
        "ApiId" => String.t(),
        "ApiKeySelectionExpression" => String.t(),
        "CorsConfiguration" => cors(),
        "CreatedDate" => non_neg_integer(),
        "Description" => String.t(),
        "DisableExecuteApiEndpoint" => boolean(),
        "DisableSchemaValidation" => boolean(),
        "ImportInfo" => list(String.t()()),
        "Name" => String.t(),
        "ProtocolType" => list(any()),
        "RouteSelectionExpression" => String.t(),
        "Tags" => map(),
        "Version" => String.t(),
        "Warnings" => list(String.t()())
      }

  """
  @type update_api_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_deployment_request() :: %{}

  """
  @type get_deployment_request() :: %{}

  @typedoc """

  ## Example:

      j_w_t_configuration() :: %{
        "Audience" => list(String.t()()),
        "Issuer" => String.t()
      }

  """
  @type j_w_t_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_vpc_link_request() :: %{
        optional("SecurityGroupIds") => list(String.t()()),
        optional("Tags") => map(),
        required("Name") => String.t(),
        required("SubnetIds") => list(String.t()())
      }

  """
  @type create_vpc_link_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      import_api_request() :: %{
        optional("Basepath") => String.t(),
        optional("FailOnWarnings") => boolean(),
        required("Body") => String.t()
      }

  """
  @type import_api_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_vpc_link_response() :: %{
        "CreatedDate" => non_neg_integer(),
        "Name" => String.t(),
        "SecurityGroupIds" => list(String.t()()),
        "SubnetIds" => list(String.t()()),
        "Tags" => map(),
        "VpcLinkId" => String.t(),
        "VpcLinkStatus" => list(any()),
        "VpcLinkStatusMessage" => String.t(),
        "VpcLinkVersion" => list(any())
      }

  """
  @type create_vpc_link_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_model_template_response() :: %{
        "Value" => String.t()
      }

  """
  @type get_model_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_integration_responses_response() :: %{
        "Items" => list(integration_response()()),
        "NextToken" => String.t()
      }

  """
  @type get_integration_responses_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      not_found_exception() :: %{
        "Message" => String.t(),
        "ResourceType" => String.t()
      }

  """
  @type not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      route() :: %{
        "ApiGatewayManaged" => boolean(),
        "ApiKeyRequired" => boolean(),
        "AuthorizationScopes" => list(String.t()()),
        "AuthorizationType" => list(any()),
        "AuthorizerId" => String.t(),
        "ModelSelectionExpression" => String.t(),
        "OperationName" => String.t(),
        "RequestModels" => map(),
        "RequestParameters" => map(),
        "RouteId" => String.t(),
        "RouteKey" => String.t(),
        "RouteResponseSelectionExpression" => String.t(),
        "Target" => String.t()
      }

  """
  @type route() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      api_mapping() :: %{
        "ApiId" => String.t(),
        "ApiMappingId" => String.t(),
        "ApiMappingKey" => String.t(),
        "Stage" => String.t()
      }

  """
  @type api_mapping() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_tags_response() :: %{
        "Tags" => map()
      }

  """
  @type get_tags_response() :: %{String.t() => any()}

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
        "ApiMappingSelectionExpression" => String.t(),
        "DomainName" => String.t(),
        "DomainNameConfigurations" => list(domain_name_configuration()()),
        "MutualTlsAuthentication" => mutual_tls_authentication(),
        "Tags" => map()
      }

  """
  @type update_domain_name_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_domain_names_request() :: %{
        optional("MaxResults") => String.t(),
        optional("NextToken") => String.t()
      }

  """
  @type get_domain_names_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_access_log_settings_request() :: %{}

  """
  @type delete_access_log_settings_request() :: %{}

  @typedoc """

  ## Example:

      get_integrations_request() :: %{
        optional("MaxResults") => String.t(),
        optional("NextToken") => String.t()
      }

  """
  @type get_integrations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_integration_request() :: %{}

  """
  @type get_integration_request() :: %{}

  @typedoc """

  ## Example:

      get_routes_response() :: %{
        "Items" => list(route()()),
        "NextToken" => String.t()
      }

  """
  @type get_routes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_integration_response_request() :: %{
        optional("ContentHandlingStrategy") => list(any()),
        optional("IntegrationResponseKey") => String.t(),
        optional("ResponseParameters") => map(),
        optional("ResponseTemplates") => map(),
        optional("TemplateSelectionExpression") => String.t()
      }

  """
  @type update_integration_response_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_route_response_request() :: %{
        optional("ModelSelectionExpression") => String.t(),
        optional("ResponseModels") => map(),
        optional("ResponseParameters") => map(),
        optional("RouteResponseKey") => String.t()
      }

  """
  @type update_route_response_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_integration_request() :: %{
        optional("ConnectionId") => String.t(),
        optional("ConnectionType") => list(any()),
        optional("ContentHandlingStrategy") => list(any()),
        optional("CredentialsArn") => String.t(),
        optional("Description") => String.t(),
        optional("IntegrationMethod") => String.t(),
        optional("IntegrationSubtype") => String.t(),
        optional("IntegrationType") => list(any()),
        optional("IntegrationUri") => String.t(),
        optional("PassthroughBehavior") => list(any()),
        optional("PayloadFormatVersion") => String.t(),
        optional("RequestParameters") => map(),
        optional("RequestTemplates") => map(),
        optional("ResponseParameters") => map(),
        optional("TemplateSelectionExpression") => String.t(),
        optional("TimeoutInMillis") => integer(),
        optional("TlsConfig") => tls_config_input()
      }

  """
  @type update_integration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_route_settings_request() :: %{}

  """
  @type delete_route_settings_request() :: %{}

  @typedoc """

  ## Example:

      update_model_response() :: %{
        "ContentType" => String.t(),
        "Description" => String.t(),
        "ModelId" => String.t(),
        "Name" => String.t(),
        "Schema" => String.t()
      }

  """
  @type update_model_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_model_response() :: %{
        "ContentType" => String.t(),
        "Description" => String.t(),
        "ModelId" => String.t(),
        "Name" => String.t(),
        "Schema" => String.t()
      }

  """
  @type create_model_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      reimport_api_response() :: %{
        "ApiEndpoint" => String.t(),
        "ApiGatewayManaged" => boolean(),
        "ApiId" => String.t(),
        "ApiKeySelectionExpression" => String.t(),
        "CorsConfiguration" => cors(),
        "CreatedDate" => non_neg_integer(),
        "Description" => String.t(),
        "DisableExecuteApiEndpoint" => boolean(),
        "DisableSchemaValidation" => boolean(),
        "ImportInfo" => list(String.t()()),
        "Name" => String.t(),
        "ProtocolType" => list(any()),
        "RouteSelectionExpression" => String.t(),
        "Tags" => map(),
        "Version" => String.t(),
        "Warnings" => list(String.t()())
      }

  """
  @type reimport_api_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_route_request() :: %{
        optional("ApiKeyRequired") => boolean(),
        optional("AuthorizationScopes") => list(String.t()()),
        optional("AuthorizationType") => list(any()),
        optional("AuthorizerId") => String.t(),
        optional("ModelSelectionExpression") => String.t(),
        optional("OperationName") => String.t(),
        optional("RequestModels") => map(),
        optional("RequestParameters") => map(),
        optional("RouteKey") => String.t(),
        optional("RouteResponseSelectionExpression") => String.t(),
        optional("Target") => String.t()
      }

  """
  @type update_route_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_domain_name_request() :: %{
        optional("DomainNameConfigurations") => list(domain_name_configuration()()),
        optional("MutualTlsAuthentication") => mutual_tls_authentication_input()
      }

  """
  @type update_domain_name_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_route_responses_request() :: %{
        optional("MaxResults") => String.t(),
        optional("NextToken") => String.t()
      }

  """
  @type get_route_responses_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      domain_name() :: %{
        "ApiMappingSelectionExpression" => String.t(),
        "DomainName" => String.t(),
        "DomainNameConfigurations" => list(domain_name_configuration()()),
        "MutualTlsAuthentication" => mutual_tls_authentication(),
        "Tags" => map()
      }

  """
  @type domain_name() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_stage_request() :: %{
        optional("AccessLogSettings") => access_log_settings(),
        optional("AutoDeploy") => boolean(),
        optional("ClientCertificateId") => String.t(),
        optional("DefaultRouteSettings") => route_settings(),
        optional("DeploymentId") => String.t(),
        optional("Description") => String.t(),
        optional("RouteSettings") => map(),
        optional("StageVariables") => map(),
        optional("Tags") => map(),
        required("StageName") => String.t()
      }

  """
  @type create_stage_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_deployment_request() :: %{}

  """
  @type delete_deployment_request() :: %{}

  @typedoc """

  ## Example:

      get_domain_names_response() :: %{
        "Items" => list(domain_name()()),
        "NextToken" => String.t()
      }

  """
  @type get_domain_names_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_integration_request() :: %{
        optional("ConnectionId") => String.t(),
        optional("ConnectionType") => list(any()),
        optional("ContentHandlingStrategy") => list(any()),
        optional("CredentialsArn") => String.t(),
        optional("Description") => String.t(),
        optional("IntegrationMethod") => String.t(),
        optional("IntegrationSubtype") => String.t(),
        optional("IntegrationUri") => String.t(),
        optional("PassthroughBehavior") => list(any()),
        optional("PayloadFormatVersion") => String.t(),
        optional("RequestParameters") => map(),
        optional("RequestTemplates") => map(),
        optional("ResponseParameters") => map(),
        optional("TemplateSelectionExpression") => String.t(),
        optional("TimeoutInMillis") => integer(),
        optional("TlsConfig") => tls_config_input(),
        required("IntegrationType") => list(any())
      }

  """
  @type create_integration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_api_mapping_response() :: %{
        "ApiId" => String.t(),
        "ApiMappingId" => String.t(),
        "ApiMappingKey" => String.t(),
        "Stage" => String.t()
      }

  """
  @type get_api_mapping_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      mutual_tls_authentication_input() :: %{
        optional("TruststoreUri") => String.t(),
        optional("TruststoreVersion") => String.t()
      }

  """
  @type mutual_tls_authentication_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      domain_name_configuration() :: %{
        "ApiGatewayDomainName" => String.t(),
        "CertificateArn" => String.t(),
        "CertificateName" => String.t(),
        "CertificateUploadDate" => non_neg_integer(),
        "DomainNameStatus" => list(any()),
        "DomainNameStatusMessage" => String.t(),
        "EndpointType" => list(any()),
        "HostedZoneId" => String.t(),
        "OwnershipVerificationCertificateArn" => String.t(),
        "SecurityPolicy" => list(any())
      }

  """
  @type domain_name_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      export_api_response() :: %{
        "body" => binary()
      }

  """
  @type export_api_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_api_mappings_request() :: %{
        optional("MaxResults") => String.t(),
        optional("NextToken") => String.t()
      }

  """
  @type get_api_mappings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_model_request() :: %{}

  """
  @type delete_model_request() :: %{}

  @typedoc """

  ## Example:

      tls_config() :: %{
        "ServerNameToVerify" => String.t()
      }

  """
  @type tls_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_integrations_response() :: %{
        "Items" => list(integration()()),
        "NextToken" => String.t()
      }

  """
  @type get_integrations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_log_settings() :: %{
        "DestinationArn" => String.t(),
        "Format" => String.t()
      }

  """
  @type access_log_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_models_response() :: %{
        "Items" => list(model()()),
        "NextToken" => String.t()
      }

  """
  @type get_models_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_route_result() :: %{
        "ApiGatewayManaged" => boolean(),
        "ApiKeyRequired" => boolean(),
        "AuthorizationScopes" => list(String.t()()),
        "AuthorizationType" => list(any()),
        "AuthorizerId" => String.t(),
        "ModelSelectionExpression" => String.t(),
        "OperationName" => String.t(),
        "RequestModels" => map(),
        "RequestParameters" => map(),
        "RouteId" => String.t(),
        "RouteKey" => String.t(),
        "RouteResponseSelectionExpression" => String.t(),
        "Target" => String.t()
      }

  """
  @type get_route_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_integration_response_request() :: %{}

  """
  @type get_integration_response_request() :: %{}

  @typedoc """

  ## Example:

      get_stages_response() :: %{
        "Items" => list(stage()()),
        "NextToken" => String.t()
      }

  """
  @type get_stages_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_models_request() :: %{
        optional("MaxResults") => String.t(),
        optional("NextToken") => String.t()
      }

  """
  @type get_models_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_route_result() :: %{
        "ApiGatewayManaged" => boolean(),
        "ApiKeyRequired" => boolean(),
        "AuthorizationScopes" => list(String.t()()),
        "AuthorizationType" => list(any()),
        "AuthorizerId" => String.t(),
        "ModelSelectionExpression" => String.t(),
        "OperationName" => String.t(),
        "RequestModels" => map(),
        "RequestParameters" => map(),
        "RouteId" => String.t(),
        "RouteKey" => String.t(),
        "RouteResponseSelectionExpression" => String.t(),
        "Target" => String.t()
      }

  """
  @type create_route_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_routes_request() :: %{
        optional("MaxResults") => String.t(),
        optional("NextToken") => String.t()
      }

  """
  @type get_routes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "Message" => String.t()
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_vpc_link_request() :: %{
        optional("Name") => String.t()
      }

  """
  @type update_vpc_link_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

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
        optional("ApiKeySelectionExpression") => String.t(),
        optional("CorsConfiguration") => cors(),
        optional("CredentialsArn") => String.t(),
        optional("Description") => String.t(),
        optional("DisableExecuteApiEndpoint") => boolean(),
        optional("DisableSchemaValidation") => boolean(),
        optional("Name") => String.t(),
        optional("RouteKey") => String.t(),
        optional("RouteSelectionExpression") => String.t(),
        optional("Target") => String.t(),
        optional("Version") => String.t()
      }

  """
  @type update_api_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_integration_response_request() :: %{
        optional("ContentHandlingStrategy") => list(any()),
        optional("ResponseParameters") => map(),
        optional("ResponseTemplates") => map(),
        optional("TemplateSelectionExpression") => String.t(),
        required("IntegrationResponseKey") => String.t()
      }

  """
  @type create_integration_response_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_deployment_response() :: %{
        "AutoDeployed" => boolean(),
        "CreatedDate" => non_neg_integer(),
        "DeploymentId" => String.t(),
        "DeploymentStatus" => list(any()),
        "DeploymentStatusMessage" => String.t(),
        "Description" => String.t()
      }

  """
  @type update_deployment_response() :: %{String.t() => any()}

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
        "DeploymentId" => String.t(),
        "DeploymentStatus" => list(any()),
        "DeploymentStatusMessage" => String.t(),
        "Description" => String.t()
      }

  """
  @type get_deployment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_authorizer_response() :: %{
        "AuthorizerCredentialsArn" => String.t(),
        "AuthorizerId" => String.t(),
        "AuthorizerPayloadFormatVersion" => String.t(),
        "AuthorizerResultTtlInSeconds" => integer(),
        "AuthorizerType" => list(any()),
        "AuthorizerUri" => String.t(),
        "EnableSimpleResponses" => boolean(),
        "IdentitySource" => list(String.t()()),
        "IdentityValidationExpression" => String.t(),
        "JwtConfiguration" => j_w_t_configuration(),
        "Name" => String.t()
      }

  """
  @type update_authorizer_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_api_request() :: %{
        optional("ApiKeySelectionExpression") => String.t(),
        optional("CorsConfiguration") => cors(),
        optional("CredentialsArn") => String.t(),
        optional("Description") => String.t(),
        optional("DisableExecuteApiEndpoint") => boolean(),
        optional("DisableSchemaValidation") => boolean(),
        optional("RouteKey") => String.t(),
        optional("RouteSelectionExpression") => String.t(),
        optional("Tags") => map(),
        optional("Target") => String.t(),
        optional("Version") => String.t(),
        required("Name") => String.t(),
        required("ProtocolType") => list(any())
      }

  """
  @type create_api_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_vpc_link_response() :: %{
        "CreatedDate" => non_neg_integer(),
        "Name" => String.t(),
        "SecurityGroupIds" => list(String.t()()),
        "SubnetIds" => list(String.t()()),
        "Tags" => map(),
        "VpcLinkId" => String.t(),
        "VpcLinkStatus" => list(any()),
        "VpcLinkStatusMessage" => String.t(),
        "VpcLinkVersion" => list(any())
      }

  """
  @type get_vpc_link_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cors() :: %{
        "AllowCredentials" => boolean(),
        "AllowHeaders" => list(String.t()()),
        "AllowMethods" => list(String.t()()),
        "AllowOrigins" => list(String.t()()),
        "ExposeHeaders" => list(String.t()()),
        "MaxAge" => integer()
      }

  """
  @type cors() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      api() :: %{
        "ApiEndpoint" => String.t(),
        "ApiGatewayManaged" => boolean(),
        "ApiId" => String.t(),
        "ApiKeySelectionExpression" => String.t(),
        "CorsConfiguration" => cors(),
        "CreatedDate" => non_neg_integer(),
        "Description" => String.t(),
        "DisableExecuteApiEndpoint" => boolean(),
        "DisableSchemaValidation" => boolean(),
        "ImportInfo" => list(String.t()()),
        "Name" => String.t(),
        "ProtocolType" => list(any()),
        "RouteSelectionExpression" => String.t(),
        "Tags" => map(),
        "Version" => String.t(),
        "Warnings" => list(String.t()())
      }

  """
  @type api() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_route_response_response() :: %{
        "ModelSelectionExpression" => String.t(),
        "ResponseModels" => map(),
        "ResponseParameters" => map(),
        "RouteResponseId" => String.t(),
        "RouteResponseKey" => String.t()
      }

  """
  @type create_route_response_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_model_response() :: %{
        "ContentType" => String.t(),
        "Description" => String.t(),
        "ModelId" => String.t(),
        "Name" => String.t(),
        "Schema" => String.t()
      }

  """
  @type get_model_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_api_mapping_response() :: %{
        "ApiId" => String.t(),
        "ApiMappingId" => String.t(),
        "ApiMappingKey" => String.t(),
        "Stage" => String.t()
      }

  """
  @type create_api_mapping_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_domain_name_request() :: %{}

  """
  @type delete_domain_name_request() :: %{}

  @typedoc """

  ## Example:

      update_vpc_link_response() :: %{
        "CreatedDate" => non_neg_integer(),
        "Name" => String.t(),
        "SecurityGroupIds" => list(String.t()()),
        "SubnetIds" => list(String.t()()),
        "Tags" => map(),
        "VpcLinkId" => String.t(),
        "VpcLinkStatus" => list(any()),
        "VpcLinkStatusMessage" => String.t(),
        "VpcLinkVersion" => list(any())
      }

  """
  @type update_vpc_link_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_domain_name_response() :: %{
        "ApiMappingSelectionExpression" => String.t(),
        "DomainName" => String.t(),
        "DomainNameConfigurations" => list(domain_name_configuration()()),
        "MutualTlsAuthentication" => mutual_tls_authentication(),
        "Tags" => map()
      }

  """
  @type create_domain_name_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_vpc_link_request() :: %{}

  """
  @type get_vpc_link_request() :: %{}

  @typedoc """

  ## Example:

      bad_request_exception() :: %{
        "Message" => String.t()
      }

  """
  @type bad_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_deployments_response() :: %{
        "Items" => list(deployment()()),
        "NextToken" => String.t()
      }

  """
  @type get_deployments_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      import_api_response() :: %{
        "ApiEndpoint" => String.t(),
        "ApiGatewayManaged" => boolean(),
        "ApiId" => String.t(),
        "ApiKeySelectionExpression" => String.t(),
        "CorsConfiguration" => cors(),
        "CreatedDate" => non_neg_integer(),
        "Description" => String.t(),
        "DisableExecuteApiEndpoint" => boolean(),
        "DisableSchemaValidation" => boolean(),
        "ImportInfo" => list(String.t()()),
        "Name" => String.t(),
        "ProtocolType" => list(any()),
        "RouteSelectionExpression" => String.t(),
        "Tags" => map(),
        "Version" => String.t(),
        "Warnings" => list(String.t()())
      }

  """
  @type import_api_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      reset_authorizers_cache_request() :: %{}

  """
  @type reset_authorizers_cache_request() :: %{}

  @typedoc """

  ## Example:

      get_api_mappings_response() :: %{
        "Items" => list(api_mapping()()),
        "NextToken" => String.t()
      }

  """
  @type get_api_mappings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_route_request() :: %{
        optional("ApiKeyRequired") => boolean(),
        optional("AuthorizationScopes") => list(String.t()()),
        optional("AuthorizationType") => list(any()),
        optional("AuthorizerId") => String.t(),
        optional("ModelSelectionExpression") => String.t(),
        optional("OperationName") => String.t(),
        optional("RequestModels") => map(),
        optional("RequestParameters") => map(),
        optional("RouteResponseSelectionExpression") => String.t(),
        optional("Target") => String.t(),
        required("RouteKey") => String.t()
      }

  """
  @type create_route_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_vpc_links_request() :: %{
        optional("MaxResults") => String.t(),
        optional("NextToken") => String.t()
      }

  """
  @type get_vpc_links_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_apis_response() :: %{
        "Items" => list(api()()),
        "NextToken" => String.t()
      }

  """
  @type get_apis_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      integration_response() :: %{
        "ContentHandlingStrategy" => list(any()),
        "IntegrationResponseId" => String.t(),
        "IntegrationResponseKey" => String.t(),
        "ResponseParameters" => map(),
        "ResponseTemplates" => map(),
        "TemplateSelectionExpression" => String.t()
      }

  """
  @type integration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      model() :: %{
        "ContentType" => String.t(),
        "Description" => String.t(),
        "ModelId" => String.t(),
        "Name" => String.t(),
        "Schema" => String.t()
      }

  """
  @type model() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_apis_request() :: %{
        optional("MaxResults") => String.t(),
        optional("NextToken") => String.t()
      }

  """
  @type get_apis_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_deployment_request() :: %{
        optional("Description") => String.t()
      }

  """
  @type update_deployment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_integration_response_response() :: %{
        "ContentHandlingStrategy" => list(any()),
        "IntegrationResponseId" => String.t(),
        "IntegrationResponseKey" => String.t(),
        "ResponseParameters" => map(),
        "ResponseTemplates" => map(),
        "TemplateSelectionExpression" => String.t()
      }

  """
  @type get_integration_response_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_api_request() :: %{}

  """
  @type get_api_request() :: %{}

  @typedoc """

  ## Example:

      get_domain_name_response() :: %{
        "ApiMappingSelectionExpression" => String.t(),
        "DomainName" => String.t(),
        "DomainNameConfigurations" => list(domain_name_configuration()()),
        "MutualTlsAuthentication" => mutual_tls_authentication(),
        "Tags" => map()
      }

  """
  @type get_domain_name_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_integration_result() :: %{
        "ApiGatewayManaged" => boolean(),
        "ConnectionId" => String.t(),
        "ConnectionType" => list(any()),
        "ContentHandlingStrategy" => list(any()),
        "CredentialsArn" => String.t(),
        "Description" => String.t(),
        "IntegrationId" => String.t(),
        "IntegrationMethod" => String.t(),
        "IntegrationResponseSelectionExpression" => String.t(),
        "IntegrationSubtype" => String.t(),
        "IntegrationType" => list(any()),
        "IntegrationUri" => String.t(),
        "PassthroughBehavior" => list(any()),
        "PayloadFormatVersion" => String.t(),
        "RequestParameters" => map(),
        "RequestTemplates" => map(),
        "ResponseParameters" => map(),
        "TemplateSelectionExpression" => String.t(),
        "TimeoutInMillis" => integer(),
        "TlsConfig" => tls_config()
      }

  """
  @type update_integration_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_vpc_link_request() :: %{}

  """
  @type delete_vpc_link_request() :: %{}

  @typedoc """

  ## Example:

      update_authorizer_request() :: %{
        optional("AuthorizerCredentialsArn") => String.t(),
        optional("AuthorizerPayloadFormatVersion") => String.t(),
        optional("AuthorizerResultTtlInSeconds") => integer(),
        optional("AuthorizerType") => list(any()),
        optional("AuthorizerUri") => String.t(),
        optional("EnableSimpleResponses") => boolean(),
        optional("IdentitySource") => list(String.t()()),
        optional("IdentityValidationExpression") => String.t(),
        optional("JwtConfiguration") => j_w_t_configuration(),
        optional("Name") => String.t()
      }

  """
  @type update_authorizer_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_api_request() :: %{}

  """
  @type delete_api_request() :: %{}

  @typedoc """

  ## Example:

      get_route_request() :: %{}

  """
  @type get_route_request() :: %{}

  @typedoc """

  ## Example:

      route_response() :: %{
        "ModelSelectionExpression" => String.t(),
        "ResponseModels" => map(),
        "ResponseParameters" => map(),
        "RouteResponseId" => String.t(),
        "RouteResponseKey" => String.t()
      }

  """
  @type route_response() :: %{String.t() => any()}

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
          | {:error, create_api_errors()}
  def create_api(%Client{} = client, input, options \\ []) do
    url_path = "/v2/apis"
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
      201
    )
  end

  @doc """
  Creates an API mapping.
  """
  @spec create_api_mapping(map(), String.t(), create_api_mapping_request(), list()) ::
          {:ok, create_api_mapping_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_api_mapping_errors()}
  def create_api_mapping(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/v2/domainnames/#{AWS.Util.encode_uri(domain_name)}/apimappings"
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
      201
    )
  end

  @doc """
  Creates an Authorizer for an API.
  """
  @spec create_authorizer(map(), String.t(), create_authorizer_request(), list()) ::
          {:ok, create_authorizer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_authorizer_errors()}
  def create_authorizer(%Client{} = client, api_id, input, options \\ []) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/authorizers"
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
      201
    )
  end

  @doc """
  Creates a Deployment for an API.
  """
  @spec create_deployment(map(), String.t(), create_deployment_request(), list()) ::
          {:ok, create_deployment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_deployment_errors()}
  def create_deployment(%Client{} = client, api_id, input, options \\ []) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/deployments"
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
      201
    )
  end

  @doc """
  Creates a domain name.
  """
  @spec create_domain_name(map(), create_domain_name_request(), list()) ::
          {:ok, create_domain_name_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_domain_name_errors()}
  def create_domain_name(%Client{} = client, input, options \\ []) do
    url_path = "/v2/domainnames"
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
      201
    )
  end

  @doc """
  Creates an Integration.
  """
  @spec create_integration(map(), String.t(), create_integration_request(), list()) ::
          {:ok, create_integration_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_integration_errors()}
  def create_integration(%Client{} = client, api_id, input, options \\ []) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/integrations"
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
      201
    )
  end

  @doc """
  Creates an IntegrationResponses.
  """
  @spec create_integration_response(
          map(),
          String.t(),
          String.t(),
          create_integration_response_request(),
          list()
        ) ::
          {:ok, create_integration_response_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
      201
    )
  end

  @doc """
  Creates a Model for an API.
  """
  @spec create_model(map(), String.t(), create_model_request(), list()) ::
          {:ok, create_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_model_errors()}
  def create_model(%Client{} = client, api_id, input, options \\ []) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/models"
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
      201
    )
  end

  @doc """
  Creates a Route for an API.
  """
  @spec create_route(map(), String.t(), create_route_request(), list()) ::
          {:ok, create_route_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_route_errors()}
  def create_route(%Client{} = client, api_id, input, options \\ []) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/routes"
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
      201
    )
  end

  @doc """
  Creates a RouteResponse for a Route.
  """
  @spec create_route_response(
          map(),
          String.t(),
          String.t(),
          create_route_response_request(),
          list()
        ) ::
          {:ok, create_route_response_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_route_response_errors()}
  def create_route_response(%Client{} = client, api_id, route_id, input, options \\ []) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/routes/#{AWS.Util.encode_uri(route_id)}/routeresponses"

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
      201
    )
  end

  @doc """
  Creates a Stage for an API.
  """
  @spec create_stage(map(), String.t(), create_stage_request(), list()) ::
          {:ok, create_stage_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_stage_errors()}
  def create_stage(%Client{} = client, api_id, input, options \\ []) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/stages"
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
      201
    )
  end

  @doc """
  Creates a VPC link.
  """
  @spec create_vpc_link(map(), create_vpc_link_request(), list()) ::
          {:ok, create_vpc_link_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_vpc_link_errors()}
  def create_vpc_link(%Client{} = client, input, options \\ []) do
    url_path = "/v2/vpclinks"
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
      201
    )
  end

  @doc """
  Deletes the AccessLogSettings for a Stage.

  To disable access logging for a Stage, delete its AccessLogSettings.
  """
  @spec delete_access_log_settings(
          map(),
          String.t(),
          String.t(),
          delete_access_log_settings_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_access_log_settings_errors()}
  def delete_access_log_settings(%Client{} = client, api_id, stage_name, input, options \\ []) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/stages/#{AWS.Util.encode_uri(stage_name)}/accesslogsettings"

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
      204
    )
  end

  @doc """
  Deletes an Api resource.
  """
  @spec delete_api(map(), String.t(), delete_api_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_api_errors()}
  def delete_api(%Client{} = client, api_id, input, options \\ []) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}"
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
      204
    )
  end

  @doc """
  Deletes an API mapping.
  """
  @spec delete_api_mapping(map(), String.t(), String.t(), delete_api_mapping_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_api_mapping_errors()}
  def delete_api_mapping(%Client{} = client, api_mapping_id, domain_name, input, options \\ []) do
    url_path =
      "/v2/domainnames/#{AWS.Util.encode_uri(domain_name)}/apimappings/#{AWS.Util.encode_uri(api_mapping_id)}"

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
      204
    )
  end

  @doc """
  Deletes an Authorizer.
  """
  @spec delete_authorizer(map(), String.t(), String.t(), delete_authorizer_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_authorizer_errors()}
  def delete_authorizer(%Client{} = client, api_id, authorizer_id, input, options \\ []) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/authorizers/#{AWS.Util.encode_uri(authorizer_id)}"

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
      204
    )
  end

  @doc """
  Deletes a CORS configuration.
  """
  @spec delete_cors_configuration(map(), String.t(), delete_cors_configuration_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_cors_configuration_errors()}
  def delete_cors_configuration(%Client{} = client, api_id, input, options \\ []) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/cors"
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
      204
    )
  end

  @doc """
  Deletes a Deployment.
  """
  @spec delete_deployment(map(), String.t(), String.t(), delete_deployment_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_deployment_errors()}
  def delete_deployment(%Client{} = client, api_id, deployment_id, input, options \\ []) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/deployments/#{AWS.Util.encode_uri(deployment_id)}"

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
      204
    )
  end

  @doc """
  Deletes a domain name.
  """
  @spec delete_domain_name(map(), String.t(), delete_domain_name_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_domain_name_errors()}
  def delete_domain_name(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/v2/domainnames/#{AWS.Util.encode_uri(domain_name)}"
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
      204
    )
  end

  @doc """
  Deletes an Integration.
  """
  @spec delete_integration(map(), String.t(), String.t(), delete_integration_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_integration_errors()}
  def delete_integration(%Client{} = client, api_id, integration_id, input, options \\ []) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/integrations/#{AWS.Util.encode_uri(integration_id)}"

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
      204
    )
  end

  @doc """
  Deletes an IntegrationResponses.
  """
  @spec delete_integration_response(
          map(),
          String.t(),
          String.t(),
          String.t(),
          delete_integration_response_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
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
      204
    )
  end

  @doc """
  Deletes a Model.
  """
  @spec delete_model(map(), String.t(), String.t(), delete_model_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_model_errors()}
  def delete_model(%Client{} = client, api_id, model_id, input, options \\ []) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/models/#{AWS.Util.encode_uri(model_id)}"
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
      204
    )
  end

  @doc """
  Deletes a Route.
  """
  @spec delete_route(map(), String.t(), String.t(), delete_route_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_route_errors()}
  def delete_route(%Client{} = client, api_id, route_id, input, options \\ []) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/routes/#{AWS.Util.encode_uri(route_id)}"
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
      204
    )
  end

  @doc """
  Deletes a route request parameter.

  Supported only for WebSocket APIs.
  """
  @spec delete_route_request_parameter(
          map(),
          String.t(),
          String.t(),
          String.t(),
          delete_route_request_parameter_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
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
      204
    )
  end

  @doc """
  Deletes a RouteResponse.
  """
  @spec delete_route_response(
          map(),
          String.t(),
          String.t(),
          String.t(),
          delete_route_response_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
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
      204
    )
  end

  @doc """
  Deletes the RouteSettings for a stage.
  """
  @spec delete_route_settings(
          map(),
          String.t(),
          String.t(),
          String.t(),
          delete_route_settings_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
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
      204
    )
  end

  @doc """
  Deletes a Stage.
  """
  @spec delete_stage(map(), String.t(), String.t(), delete_stage_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_stage_errors()}
  def delete_stage(%Client{} = client, api_id, stage_name, input, options \\ []) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/stages/#{AWS.Util.encode_uri(stage_name)}"
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
      204
    )
  end

  @doc """
  Deletes a VPC link.
  """
  @spec delete_vpc_link(map(), String.t(), delete_vpc_link_request(), list()) ::
          {:ok, delete_vpc_link_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_vpc_link_errors()}
  def delete_vpc_link(%Client{} = client, vpc_link_id, input, options \\ []) do
    url_path = "/v2/vpclinks/#{AWS.Util.encode_uri(vpc_link_id)}"
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
      202
    )
  end

  @spec export_api(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t(),
          String.t() | nil,
          list()
        ) ::
          {:ok, export_api_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec get_api(map(), String.t(), list()) ::
          {:ok, get_api_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec get_api_mapping(map(), String.t(), String.t(), list()) ::
          {:ok, get_api_mapping_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec get_api_mappings(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, get_api_mappings_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec get_apis(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, get_apis_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec get_authorizer(map(), String.t(), String.t(), list()) ::
          {:ok, get_authorizer_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec get_authorizers(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, get_authorizers_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec get_deployment(map(), String.t(), String.t(), list()) ::
          {:ok, get_deployment_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec get_deployments(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, get_deployments_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec get_domain_name(map(), String.t(), list()) ::
          {:ok, get_domain_name_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec get_domain_names(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, get_domain_names_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec get_integration(map(), String.t(), String.t(), list()) ::
          {:ok, get_integration_result(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec get_integration_response(map(), String.t(), String.t(), String.t(), list()) ::
          {:ok, get_integration_response_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, get_integration_responses_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec get_integrations(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, get_integrations_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec get_model(map(), String.t(), String.t(), list()) ::
          {:ok, get_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec get_model_template(map(), String.t(), String.t(), list()) ::
          {:ok, get_model_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec get_models(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, get_models_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec get_route(map(), String.t(), String.t(), list()) ::
          {:ok, get_route_result(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec get_route_response(map(), String.t(), String.t(), String.t(), list()) ::
          {:ok, get_route_response_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, get_route_responses_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec get_routes(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, get_routes_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  Gets a Stage.
  """
  @spec get_stage(map(), String.t(), String.t(), list()) ::
          {:ok, get_stage_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec get_stages(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, get_stages_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec get_tags(map(), String.t(), list()) ::
          {:ok, get_tags_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec get_vpc_link(map(), String.t(), list()) ::
          {:ok, get_vpc_link_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec get_vpc_links(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, get_vpc_links_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
          | {:error, import_api_errors()}
  def import_api(%Client{} = client, input, options \\ []) do
    url_path = "/v2/apis"
    headers = []

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

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 201)
  end

  @doc """
  Puts an Api resource.
  """
  @spec reimport_api(map(), String.t(), reimport_api_request(), list()) ::
          {:ok, reimport_api_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, reimport_api_errors()}
  def reimport_api(%Client{} = client, api_id, input, options \\ []) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}"
    headers = []

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

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 201)
  end

  @doc """
  Resets all authorizer cache entries on a stage.

  Supported only for HTTP APIs.
  """
  @spec reset_authorizers_cache(
          map(),
          String.t(),
          String.t(),
          reset_authorizers_cache_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, reset_authorizers_cache_errors()}
  def reset_authorizers_cache(%Client{} = client, api_id, stage_name, input, options \\ []) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/stages/#{AWS.Util.encode_uri(stage_name)}/cache/authorizers"

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
      204
    )
  end

  @doc """
  Creates a new Tag resource to represent a tag.
  """
  @spec tag_resource(map(), String.t(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/v2/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
      201
    )
  end

  @doc """
  Deletes a Tag.
  """
  @spec untag_resource(map(), String.t(), untag_resource_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/v2/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
      204
    )
  end

  @doc """
  Updates an Api resource.
  """
  @spec update_api(map(), String.t(), update_api_request(), list()) ::
          {:ok, update_api_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_api_errors()}
  def update_api(%Client{} = client, api_id, input, options \\ []) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}"
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
  The API mapping.
  """
  @spec update_api_mapping(map(), String.t(), String.t(), update_api_mapping_request(), list()) ::
          {:ok, update_api_mapping_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_api_mapping_errors()}
  def update_api_mapping(%Client{} = client, api_mapping_id, domain_name, input, options \\ []) do
    url_path =
      "/v2/domainnames/#{AWS.Util.encode_uri(domain_name)}/apimappings/#{AWS.Util.encode_uri(api_mapping_id)}"

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
  Updates an Authorizer.
  """
  @spec update_authorizer(map(), String.t(), String.t(), update_authorizer_request(), list()) ::
          {:ok, update_authorizer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_authorizer_errors()}
  def update_authorizer(%Client{} = client, api_id, authorizer_id, input, options \\ []) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/authorizers/#{AWS.Util.encode_uri(authorizer_id)}"

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
  Updates a Deployment.
  """
  @spec update_deployment(map(), String.t(), String.t(), update_deployment_request(), list()) ::
          {:ok, update_deployment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_deployment_errors()}
  def update_deployment(%Client{} = client, api_id, deployment_id, input, options \\ []) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/deployments/#{AWS.Util.encode_uri(deployment_id)}"

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
  Updates a domain name.
  """
  @spec update_domain_name(map(), String.t(), update_domain_name_request(), list()) ::
          {:ok, update_domain_name_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_domain_name_errors()}
  def update_domain_name(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/v2/domainnames/#{AWS.Util.encode_uri(domain_name)}"
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
  Updates an Integration.
  """
  @spec update_integration(map(), String.t(), String.t(), update_integration_request(), list()) ::
          {:ok, update_integration_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_integration_errors()}
  def update_integration(%Client{} = client, api_id, integration_id, input, options \\ []) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/integrations/#{AWS.Util.encode_uri(integration_id)}"

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
  Updates an IntegrationResponses.
  """
  @spec update_integration_response(
          map(),
          String.t(),
          String.t(),
          String.t(),
          update_integration_response_request(),
          list()
        ) ::
          {:ok, update_integration_response_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  Updates a Model.
  """
  @spec update_model(map(), String.t(), String.t(), update_model_request(), list()) ::
          {:ok, update_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_model_errors()}
  def update_model(%Client{} = client, api_id, model_id, input, options \\ []) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/models/#{AWS.Util.encode_uri(model_id)}"
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
  Updates a Route.
  """
  @spec update_route(map(), String.t(), String.t(), update_route_request(), list()) ::
          {:ok, update_route_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_route_errors()}
  def update_route(%Client{} = client, api_id, route_id, input, options \\ []) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/routes/#{AWS.Util.encode_uri(route_id)}"
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
  Updates a RouteResponse.
  """
  @spec update_route_response(
          map(),
          String.t(),
          String.t(),
          String.t(),
          update_route_response_request(),
          list()
        ) ::
          {:ok, update_route_response_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  Updates a Stage.
  """
  @spec update_stage(map(), String.t(), String.t(), update_stage_request(), list()) ::
          {:ok, update_stage_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_stage_errors()}
  def update_stage(%Client{} = client, api_id, stage_name, input, options \\ []) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/stages/#{AWS.Util.encode_uri(stage_name)}"
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
  Updates a VPC link.
  """
  @spec update_vpc_link(map(), String.t(), update_vpc_link_request(), list()) ::
          {:ok, update_vpc_link_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_vpc_link_errors()}
  def update_vpc_link(%Client{} = client, vpc_link_id, input, options \\ []) do
    url_path = "/v2/vpclinks/#{AWS.Util.encode_uri(vpc_link_id)}"
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
