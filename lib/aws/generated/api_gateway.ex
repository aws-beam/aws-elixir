# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.APIGateway do
  @moduledoc """
  Amazon API Gateway

  Amazon API Gateway helps developers deliver robust, secure, and scalable mobile
  and web application back ends.

  API Gateway allows developers to securely connect mobile and web applications to
  APIs that run on Lambda, Amazon EC2, or other publicly addressable web services
  that are hosted outside of AWS.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      update_stage_request() :: %{
        optional("patchOperations") => list(patch_operation())
      }

  """
  @type update_stage_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      api_key_ids() :: %{
        "ids" => list(String.t() | atom()),
        "warnings" => list(String.t() | atom())
      }

  """
  @type api_key_ids() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      endpoint_configuration() :: %{
        "ipAddressType" => list(any()),
        "types" => list(list(any())()),
        "vpcEndpointIds" => list(String.t() | atom())
      }

  """
  @type endpoint_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      import_api_keys_request() :: %{
        optional("failOnWarnings") => boolean(),
        required("body") => binary(),
        required("format") => list(any())
      }

  """
  @type import_api_keys_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_stages_request() :: %{
        optional("deploymentId") => String.t() | atom()
      }

  """
  @type get_stages_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_sdk_types_request() :: %{
        optional("limit") => integer(),
        optional("position") => String.t() | atom()
      }

  """
  @type get_sdk_types_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      canary_settings() :: %{
        "deploymentId" => String.t() | atom(),
        "percentTraffic" => float(),
        "stageVariableOverrides" => map(),
        "useStageCache" => boolean()
      }

  """
  @type canary_settings() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      method_setting() :: %{
        "cacheDataEncrypted" => boolean(),
        "cacheTtlInSeconds" => integer(),
        "cachingEnabled" => boolean(),
        "dataTraceEnabled" => boolean(),
        "loggingLevel" => String.t() | atom(),
        "metricsEnabled" => boolean(),
        "requireAuthorizationForCacheControl" => boolean(),
        "throttlingBurstLimit" => integer(),
        "throttlingRateLimit" => float(),
        "unauthorizedCacheControlHeaderStrategy" => list(any())
      }

  """
  @type method_setting() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      stage() :: %{
        "accessLogSettings" => access_log_settings(),
        "cacheClusterEnabled" => boolean(),
        "cacheClusterSize" => list(any()),
        "cacheClusterStatus" => list(any()),
        "canarySettings" => canary_settings(),
        "clientCertificateId" => String.t() | atom(),
        "createdDate" => non_neg_integer(),
        "deploymentId" => String.t() | atom(),
        "description" => String.t() | atom(),
        "documentationVersion" => String.t() | atom(),
        "lastUpdatedDate" => non_neg_integer(),
        "methodSettings" => map(),
        "stageName" => String.t() | atom(),
        "tags" => map(),
        "tracingEnabled" => boolean(),
        "variables" => map(),
        "webAclArn" => String.t() | atom()
      }

  """
  @type stage() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_deployments_request() :: %{
        optional("limit") => integer(),
        optional("position") => String.t() | atom()
      }

  """
  @type get_deployments_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      authorizer() :: %{
        "authType" => String.t() | atom(),
        "authorizerCredentials" => String.t() | atom(),
        "authorizerResultTtlInSeconds" => integer(),
        "authorizerUri" => String.t() | atom(),
        "id" => String.t() | atom(),
        "identitySource" => String.t() | atom(),
        "identityValidationExpression" => String.t() | atom(),
        "name" => String.t() | atom(),
        "providerARNs" => list(String.t() | atom()),
        "type" => list(any())
      }

  """
  @type authorizer() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_usage_request() :: %{
        optional("keyId") => String.t() | atom(),
        optional("limit") => integer(),
        optional("position") => String.t() | atom(),
        required("endDate") => String.t() | atom(),
        required("startDate") => String.t() | atom()
      }

  """
  @type get_usage_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      sdk_response() :: %{
        "body" => binary(),
        "contentDisposition" => String.t() | atom(),
        "contentType" => String.t() | atom()
      }

  """
  @type sdk_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      unauthorized_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type unauthorized_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      export_response() :: %{
        "body" => binary(),
        "contentDisposition" => String.t() | atom(),
        "contentType" => String.t() | atom()
      }

  """
  @type export_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_tags_request() :: %{
        optional("limit") => integer(),
        optional("position") => String.t() | atom()
      }

  """
  @type get_tags_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      throttle_settings() :: %{
        "burstLimit" => integer(),
        "rateLimit" => float()
      }

  """
  @type throttle_settings() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_resource_request() :: %{}

  """
  @type delete_resource_request() :: %{}

  @typedoc """

  ## Example:

      update_resource_request() :: %{
        optional("patchOperations") => list(patch_operation())
      }

  """
  @type update_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      deployment() :: %{
        "apiSummary" => map(),
        "createdDate" => non_neg_integer(),
        "description" => String.t() | atom(),
        "id" => String.t() | atom()
      }

  """
  @type deployment() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      integration() :: %{
        "cacheKeyParameters" => list(String.t() | atom()),
        "cacheNamespace" => String.t() | atom(),
        "connectionId" => String.t() | atom(),
        "connectionType" => list(any()),
        "contentHandling" => list(any()),
        "credentials" => String.t() | atom(),
        "httpMethod" => String.t() | atom(),
        "integrationResponses" => map(),
        "passthroughBehavior" => String.t() | atom(),
        "requestParameters" => map(),
        "requestTemplates" => map(),
        "timeoutInMillis" => integer(),
        "tlsConfig" => tls_config(),
        "type" => list(any()),
        "uri" => String.t() | atom()
      }

  """
  @type integration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_client_certificate_request() :: %{}

  """
  @type delete_client_certificate_request() :: %{}

  @typedoc """

  ## Example:

      get_usage_plan_key_request() :: %{}

  """
  @type get_usage_plan_key_request() :: %{}

  @typedoc """

  ## Example:

      delete_documentation_part_request() :: %{}

  """
  @type delete_documentation_part_request() :: %{}

  @typedoc """

  ## Example:

      get_documentation_parts_request() :: %{
        optional("limit") => integer(),
        optional("locationStatus") => list(any()),
        optional("nameQuery") => String.t() | atom(),
        optional("path") => String.t() | atom(),
        optional("position") => String.t() | atom(),
        optional("type") => list(any())
      }

  """
  @type get_documentation_parts_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_method_response_request() :: %{}

  """
  @type get_method_response_request() :: %{}

  @typedoc """

  ## Example:

      test_invoke_authorizer_request() :: %{
        optional("additionalContext") => map(),
        optional("body") => String.t() | atom(),
        optional("headers") => map(),
        optional("multiValueHeaders") => map(),
        optional("pathWithQueryString") => String.t() | atom(),
        optional("stageVariables") => map()
      }

  """
  @type test_invoke_authorizer_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_client_certificate_request() :: %{
        optional("patchOperations") => list(patch_operation())
      }

  """
  @type update_client_certificate_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_integration_response_request() :: %{}

  """
  @type delete_integration_response_request() :: %{}

  @typedoc """

  ## Example:

      patch_operation() :: %{
        "from" => String.t() | atom(),
        "op" => list(any()),
        "path" => String.t() | atom(),
        "value" => String.t() | atom()
      }

  """
  @type patch_operation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      mutual_tls_authentication() :: %{
        "truststoreUri" => String.t() | atom(),
        "truststoreVersion" => String.t() | atom(),
        "truststoreWarnings" => list(String.t() | atom())
      }

  """
  @type mutual_tls_authentication() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      base_path_mapping() :: %{
        "basePath" => String.t() | atom(),
        "restApiId" => String.t() | atom(),
        "stage" => String.t() | atom()
      }

  """
  @type base_path_mapping() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_documentation_version_request() :: %{
        optional("description") => String.t() | atom(),
        optional("stageName") => String.t() | atom(),
        required("documentationVersion") => String.t() | atom()
      }

  """
  @type create_documentation_version_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      gateway_response() :: %{
        "defaultResponse" => boolean(),
        "responseParameters" => map(),
        "responseTemplates" => map(),
        "responseType" => list(any()),
        "statusCode" => String.t() | atom()
      }

  """
  @type gateway_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      import_rest_api_request() :: %{
        optional("failOnWarnings") => boolean(),
        optional("parameters") => map(),
        required("body") => binary()
      }

  """
  @type import_rest_api_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      documentation_versions() :: %{
        "items" => list(documentation_version()),
        "position" => String.t() | atom()
      }

  """
  @type documentation_versions() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_api_key_request() :: %{
        optional("patchOperations") => list(patch_operation())
      }

  """
  @type update_api_key_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      vpc_links() :: %{
        "items" => list(vpc_link()),
        "position" => String.t() | atom()
      }

  """
  @type vpc_links() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_usage_plan_request() :: %{}

  """
  @type get_usage_plan_request() :: %{}

  @typedoc """

  ## Example:

      usage_plans() :: %{
        "items" => list(usage_plan()),
        "position" => String.t() | atom()
      }

  """
  @type usage_plans() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_deployment_request() :: %{
        optional("cacheClusterEnabled") => boolean(),
        optional("cacheClusterSize") => list(any()),
        optional("canarySettings") => deployment_canary_settings(),
        optional("description") => String.t() | atom(),
        optional("stageDescription") => String.t() | atom(),
        optional("stageName") => String.t() | atom(),
        optional("tracingEnabled") => boolean(),
        optional("variables") => map()
      }

  """
  @type create_deployment_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_base_path_mapping_request() :: %{
        optional("domainNameId") => String.t() | atom()
      }

  """
  @type get_base_path_mapping_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_model_request() :: %{
        optional("description") => String.t() | atom(),
        optional("schema") => String.t() | atom(),
        required("contentType") => String.t() | atom(),
        required("name") => String.t() | atom()
      }

  """
  @type create_model_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_domain_name_access_association_request() :: %{}

  """
  @type delete_domain_name_access_association_request() :: %{}

  @typedoc """

  ## Example:

      put_integration_request() :: %{
        optional("cacheKeyParameters") => list(String.t() | atom()),
        optional("cacheNamespace") => String.t() | atom(),
        optional("connectionId") => String.t() | atom(),
        optional("connectionType") => list(any()),
        optional("contentHandling") => list(any()),
        optional("credentials") => String.t() | atom(),
        optional("integrationHttpMethod") => String.t() | atom(),
        optional("passthroughBehavior") => String.t() | atom(),
        optional("requestParameters") => map(),
        optional("requestTemplates") => map(),
        optional("timeoutInMillis") => integer(),
        optional("tlsConfig") => tls_config(),
        optional("uri") => String.t() | atom(),
        required("type") => list(any())
      }

  """
  @type put_integration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_gateway_response_request() :: %{}

  """
  @type get_gateway_response_request() :: %{}

  @typedoc """

  ## Example:

      update_request_validator_request() :: %{
        optional("patchOperations") => list(patch_operation())
      }

  """
  @type update_request_validator_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_model_request() :: %{
        optional("patchOperations") => list(patch_operation())
      }

  """
  @type update_model_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_domain_name_request() :: %{
        optional("certificateArn") => String.t() | atom(),
        optional("certificateBody") => String.t() | atom(),
        optional("certificateChain") => String.t() | atom(),
        optional("certificateName") => String.t() | atom(),
        optional("certificatePrivateKey") => String.t() | atom(),
        optional("endpointConfiguration") => endpoint_configuration(),
        optional("mutualTlsAuthentication") => mutual_tls_authentication_input(),
        optional("ownershipVerificationCertificateArn") => String.t() | atom(),
        optional("policy") => String.t() | atom(),
        optional("regionalCertificateArn") => String.t() | atom(),
        optional("regionalCertificateName") => String.t() | atom(),
        optional("routingMode") => list(any()),
        optional("securityPolicy") => list(any()),
        optional("tags") => map(),
        required("domainName") => String.t() | atom()
      }

  """
  @type create_domain_name_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_base_path_mapping_request() :: %{
        optional("domainNameId") => String.t() | atom(),
        optional("patchOperations") => list(patch_operation())
      }

  """
  @type update_base_path_mapping_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      usage_plan_keys() :: %{
        "items" => list(usage_plan_key()),
        "position" => String.t() | atom()
      }

  """
  @type usage_plan_keys() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      sdk_type() :: %{
        "configurationProperties" => list(sdk_configuration_property()),
        "description" => String.t() | atom(),
        "friendlyName" => String.t() | atom(),
        "id" => String.t() | atom()
      }

  """
  @type sdk_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      vpc_link() :: %{
        "description" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "status" => list(any()),
        "statusMessage" => String.t() | atom(),
        "tags" => map(),
        "targetArns" => list(String.t() | atom())
      }

  """
  @type vpc_link() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t() | atom())
      }

  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_documentation_part_request() :: %{
        optional("patchOperations") => list(patch_operation())
      }

  """
  @type update_documentation_part_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      domain_name_access_association() :: %{
        "accessAssociationSource" => String.t() | atom(),
        "accessAssociationSourceType" => list(any()),
        "domainNameAccessAssociationArn" => String.t() | atom(),
        "domainNameArn" => String.t() | atom(),
        "tags" => map()
      }

  """
  @type domain_name_access_association() :: %{(String.t() | atom()) => any()}

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
        "message" => String.t() | atom(),
        "retryAfterSeconds" => String.t() | atom()
      }

  """
  @type too_many_requests_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_request_validator_request() :: %{}

  """
  @type delete_request_validator_request() :: %{}

  @typedoc """

  ## Example:

      create_authorizer_request() :: %{
        optional("authType") => String.t() | atom(),
        optional("authorizerCredentials") => String.t() | atom(),
        optional("authorizerResultTtlInSeconds") => integer(),
        optional("authorizerUri") => String.t() | atom(),
        optional("identitySource") => String.t() | atom(),
        optional("identityValidationExpression") => String.t() | atom(),
        optional("providerARNs") => list(String.t() | atom()),
        required("name") => String.t() | atom(),
        required("type") => list(any())
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

      stages() :: %{
        "item" => list(stage())
      }

  """
  @type stages() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_usage_plan_keys_request() :: %{
        optional("limit") => integer(),
        optional("nameQuery") => String.t() | atom(),
        optional("position") => String.t() | atom()
      }

  """
  @type get_usage_plan_keys_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_gateway_response_request() :: %{
        optional("patchOperations") => list(patch_operation())
      }

  """
  @type update_gateway_response_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      usage() :: %{
        "endDate" => String.t() | atom(),
        "items" => map(),
        "position" => String.t() | atom(),
        "startDate" => String.t() | atom(),
        "usagePlanId" => String.t() | atom()
      }

  """
  @type usage() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      gateway_responses() :: %{
        "items" => list(gateway_response()),
        "position" => String.t() | atom()
      }

  """
  @type gateway_responses() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      stage_key() :: %{
        "restApiId" => String.t() | atom(),
        "stageName" => String.t() | atom()
      }

  """
  @type stage_key() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_method_request() :: %{
        optional("patchOperations") => list(patch_operation())
      }

  """
  @type update_method_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      client_certificates() :: %{
        "items" => list(client_certificate()),
        "position" => String.t() | atom()
      }

  """
  @type client_certificates() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_usage_plan_key_request() :: %{}

  """
  @type delete_usage_plan_key_request() :: %{}

  @typedoc """

  ## Example:

      domain_names() :: %{
        "items" => list(domain_name()),
        "position" => String.t() | atom()
      }

  """
  @type domain_names() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resources() :: %{
        "items" => list(resource()),
        "position" => String.t() | atom()
      }

  """
  @type resources() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_stage_request() :: %{}

  """
  @type delete_stage_request() :: %{}

  @typedoc """

  ## Example:

      get_authorizers_request() :: %{
        optional("limit") => integer(),
        optional("position") => String.t() | atom()
      }

  """
  @type get_authorizers_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_rest_api_request() :: %{}

  """
  @type delete_rest_api_request() :: %{}

  @typedoc """

  ## Example:

      delete_documentation_version_request() :: %{}

  """
  @type delete_documentation_version_request() :: %{}

  @typedoc """

  ## Example:

      create_documentation_part_request() :: %{
        required("location") => documentation_part_location(),
        required("properties") => String.t() | atom()
      }

  """
  @type create_documentation_part_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      request_validator() :: %{
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "validateRequestBody" => boolean(),
        "validateRequestParameters" => boolean()
      }

  """
  @type request_validator() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_method_request() :: %{}

  """
  @type get_method_request() :: %{}

  @typedoc """

  ## Example:

      rest_api() :: %{
        "apiKeySource" => list(any()),
        "binaryMediaTypes" => list(String.t() | atom()),
        "createdDate" => non_neg_integer(),
        "description" => String.t() | atom(),
        "disableExecuteApiEndpoint" => boolean(),
        "endpointConfiguration" => endpoint_configuration(),
        "id" => String.t() | atom(),
        "minimumCompressionSize" => integer(),
        "name" => String.t() | atom(),
        "policy" => String.t() | atom(),
        "rootResourceId" => String.t() | atom(),
        "tags" => map(),
        "version" => String.t() | atom(),
        "warnings" => list(String.t() | atom())
      }

  """
  @type rest_api() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_client_certificates_request() :: %{
        optional("limit") => integer(),
        optional("position") => String.t() | atom()
      }

  """
  @type get_client_certificates_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_resources_request() :: %{
        optional("embed") => list(String.t() | atom()),
        optional("limit") => integer(),
        optional("position") => String.t() | atom()
      }

  """
  @type get_resources_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_gateway_responses_request() :: %{
        optional("limit") => integer(),
        optional("position") => String.t() | atom()
      }

  """
  @type get_gateway_responses_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_integration_request() :: %{}

  """
  @type delete_integration_request() :: %{}

  @typedoc """

  ## Example:

      get_sdk_request() :: %{
        optional("parameters") => map()
      }

  """
  @type get_sdk_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      import_documentation_parts_request() :: %{
        optional("failOnWarnings") => boolean(),
        optional("mode") => list(any()),
        required("body") => binary()
      }

  """
  @type import_documentation_parts_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_request_validator_request() :: %{
        optional("name") => String.t() | atom(),
        optional("validateRequestBody") => boolean(),
        optional("validateRequestParameters") => boolean()
      }

  """
  @type create_request_validator_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      sdk_configuration_property() :: %{
        "defaultValue" => String.t() | atom(),
        "description" => String.t() | atom(),
        "friendlyName" => String.t() | atom(),
        "name" => String.t() | atom(),
        "required" => boolean()
      }

  """
  @type sdk_configuration_property() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      base_path_mappings() :: %{
        "items" => list(base_path_mapping()),
        "position" => String.t() | atom()
      }

  """
  @type base_path_mappings() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_deployment_request() :: %{
        optional("embed") => list(String.t() | atom())
      }

  """
  @type get_deployment_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_vpc_link_request() :: %{
        optional("description") => String.t() | atom(),
        optional("tags") => map(),
        required("name") => String.t() | atom(),
        required("targetArns") => list(String.t() | atom())
      }

  """
  @type create_vpc_link_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_request_validators_request() :: %{
        optional("limit") => integer(),
        optional("position") => String.t() | atom()
      }

  """
  @type get_request_validators_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      not_found_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      generate_client_certificate_request() :: %{
        optional("description") => String.t() | atom(),
        optional("tags") => map()
      }

  """
  @type generate_client_certificate_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      account() :: %{
        "apiKeyVersion" => String.t() | atom(),
        "cloudwatchRoleArn" => String.t() | atom(),
        "features" => list(String.t() | atom()),
        "throttleSettings" => throttle_settings()
      }

  """
  @type account() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      flush_stage_authorizers_cache_request() :: %{}

  """
  @type flush_stage_authorizers_cache_request() :: %{}

  @typedoc """

  ## Example:

      tags() :: %{
        "tags" => map()
      }

  """
  @type tags() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      reject_domain_name_access_association_request() :: %{
        required("domainNameAccessAssociationArn") => String.t() | atom(),
        required("domainNameArn") => String.t() | atom()
      }

  """
  @type reject_domain_name_access_association_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_domain_names_request() :: %{
        optional("limit") => integer(),
        optional("position") => String.t() | atom(),
        optional("resourceOwner") => list(any())
      }

  """
  @type get_domain_names_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_usage_request() :: %{
        optional("patchOperations") => list(patch_operation())
      }

  """
  @type update_usage_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_integration_request() :: %{}

  """
  @type get_integration_request() :: %{}

  @typedoc """

  ## Example:

      service_unavailable_exception() :: %{
        "message" => String.t() | atom(),
        "retryAfterSeconds" => String.t() | atom()
      }

  """
  @type service_unavailable_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_integration_response_request() :: %{
        optional("patchOperations") => list(patch_operation())
      }

  """
  @type update_integration_response_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      documentation_part_location() :: %{
        "method" => String.t() | atom(),
        "name" => String.t() | atom(),
        "path" => String.t() | atom(),
        "statusCode" => String.t() | atom(),
        "type" => list(any())
      }

  """
  @type documentation_part_location() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_rest_api_request() :: %{
        optional("patchOperations") => list(patch_operation())
      }

  """
  @type update_rest_api_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_integration_request() :: %{
        optional("patchOperations") => list(patch_operation())
      }

  """
  @type update_integration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_method_request() :: %{
        optional("apiKeyRequired") => boolean(),
        optional("authorizationScopes") => list(String.t() | atom()),
        optional("authorizerId") => String.t() | atom(),
        optional("operationName") => String.t() | atom(),
        optional("requestModels") => map(),
        optional("requestParameters") => map(),
        optional("requestValidatorId") => String.t() | atom(),
        required("authorizationType") => String.t() | atom()
      }

  """
  @type put_method_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_resource_request() :: %{
        required("pathPart") => String.t() | atom()
      }

  """
  @type create_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_domain_name_request() :: %{
        optional("domainNameId") => String.t() | atom(),
        optional("patchOperations") => list(patch_operation())
      }

  """
  @type update_domain_name_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      rest_apis() :: %{
        "items" => list(rest_api()),
        "position" => String.t() | atom()
      }

  """
  @type rest_apis() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_api_key_request() :: %{
        optional("customerId") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("enabled") => boolean(),
        optional("generateDistinctId") => boolean(),
        optional("name") => String.t() | atom(),
        optional("stageKeys") => list(stage_key()),
        optional("tags") => map(),
        optional("value") => String.t() | atom()
      }

  """
  @type create_api_key_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_account_request() :: %{
        optional("patchOperations") => list(patch_operation())
      }

  """
  @type update_account_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      domain_name_access_associations() :: %{
        optional("items") => list(domain_name_access_association()),
        optional("position") => String.t() | atom()
      }

  """
  @type domain_name_access_associations() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      domain_name() :: %{
        "certificateArn" => String.t() | atom(),
        "certificateName" => String.t() | atom(),
        "certificateUploadDate" => non_neg_integer(),
        "distributionDomainName" => String.t() | atom(),
        "distributionHostedZoneId" => String.t() | atom(),
        "domainName" => String.t() | atom(),
        "domainNameArn" => String.t() | atom(),
        "domainNameId" => String.t() | atom(),
        "domainNameStatus" => list(any()),
        "domainNameStatusMessage" => String.t() | atom(),
        "endpointConfiguration" => endpoint_configuration(),
        "managementPolicy" => String.t() | atom(),
        "mutualTlsAuthentication" => mutual_tls_authentication(),
        "ownershipVerificationCertificateArn" => String.t() | atom(),
        "policy" => String.t() | atom(),
        "regionalCertificateArn" => String.t() | atom(),
        "regionalCertificateName" => String.t() | atom(),
        "regionalDomainName" => String.t() | atom(),
        "regionalHostedZoneId" => String.t() | atom(),
        "routingMode" => list(any()),
        "securityPolicy" => list(any()),
        "tags" => map()
      }

  """
  @type domain_name() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_stage_request() :: %{
        optional("cacheClusterEnabled") => boolean(),
        optional("cacheClusterSize") => list(any()),
        optional("canarySettings") => canary_settings(),
        optional("description") => String.t() | atom(),
        optional("documentationVersion") => String.t() | atom(),
        optional("tags") => map(),
        optional("tracingEnabled") => boolean(),
        optional("variables") => map(),
        required("deploymentId") => String.t() | atom(),
        required("stageName") => String.t() | atom()
      }

  """
  @type create_stage_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_method_response_request() :: %{
        optional("patchOperations") => list(patch_operation())
      }

  """
  @type update_method_response_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_deployment_request() :: %{}

  """
  @type delete_deployment_request() :: %{}

  @typedoc """

  ## Example:

      delete_method_response_request() :: %{}

  """
  @type delete_method_response_request() :: %{}

  @typedoc """

  ## Example:

      client_certificate() :: %{
        "clientCertificateId" => String.t() | atom(),
        "createdDate" => non_neg_integer(),
        "description" => String.t() | atom(),
        "expirationDate" => non_neg_integer(),
        "pemEncodedCertificate" => String.t() | atom(),
        "tags" => map()
      }

  """
  @type client_certificate() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_api_keys_request() :: %{
        optional("customerId") => String.t() | atom(),
        optional("includeValues") => boolean(),
        optional("limit") => integer(),
        optional("nameQuery") => String.t() | atom(),
        optional("position") => String.t() | atom()
      }

  """
  @type get_api_keys_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      mutual_tls_authentication_input() :: %{
        "truststoreUri" => String.t() | atom(),
        "truststoreVersion" => String.t() | atom()
      }

  """
  @type mutual_tls_authentication_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_resource_request() :: %{
        optional("embed") => list(String.t() | atom())
      }

  """
  @type get_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      deployment_canary_settings() :: %{
        "percentTraffic" => float(),
        "stageVariableOverrides" => map(),
        "useStageCache" => boolean()
      }

  """
  @type deployment_canary_settings() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_method_request() :: %{}

  """
  @type delete_method_request() :: %{}

  @typedoc """

  ## Example:

      api_stage() :: %{
        "apiId" => String.t() | atom(),
        "stage" => String.t() | atom(),
        "throttle" => map()
      }

  """
  @type api_stage() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_export_request() :: %{
        optional("accepts") => String.t() | atom(),
        optional("parameters") => map()
      }

  """
  @type get_export_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_domain_name_access_associations_request() :: %{
        optional("limit") => integer(),
        optional("position") => String.t() | atom(),
        optional("resourceOwner") => list(any())
      }

  """
  @type get_domain_name_access_associations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_model_request() :: %{}

  """
  @type delete_model_request() :: %{}

  @typedoc """

  ## Example:

      tls_config() :: %{
        "insecureSkipVerification" => boolean()
      }

  """
  @type tls_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_documentation_part_request() :: %{}

  """
  @type get_documentation_part_request() :: %{}

  @typedoc """

  ## Example:

      access_log_settings() :: %{
        "destinationArn" => String.t() | atom(),
        "format" => String.t() | atom()
      }

  """
  @type access_log_settings() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      documentation_version() :: %{
        "createdDate" => non_neg_integer(),
        "description" => String.t() | atom(),
        "version" => String.t() | atom()
      }

  """
  @type documentation_version() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_integration_response_request() :: %{}

  """
  @type get_integration_response_request() :: %{}

  @typedoc """

  ## Example:

      get_rest_api_request() :: %{}

  """
  @type get_rest_api_request() :: %{}

  @typedoc """

  ## Example:

      api_keys() :: %{
        "items" => list(api_key()),
        "position" => String.t() | atom(),
        "warnings" => list(String.t() | atom())
      }

  """
  @type api_keys() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_models_request() :: %{
        optional("limit") => integer(),
        optional("position") => String.t() | atom()
      }

  """
  @type get_models_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_base_path_mapping_request() :: %{
        optional("basePath") => String.t() | atom(),
        optional("domainNameId") => String.t() | atom(),
        optional("stage") => String.t() | atom(),
        required("restApiId") => String.t() | atom()
      }

  """
  @type create_base_path_mapping_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      method_response() :: %{
        "responseModels" => map(),
        "responseParameters" => map(),
        "statusCode" => String.t() | atom()
      }

  """
  @type method_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_vpc_link_request() :: %{
        optional("patchOperations") => list(patch_operation())
      }

  """
  @type update_vpc_link_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_sdk_type_request() :: %{}

  """
  @type get_sdk_type_request() :: %{}

  @typedoc """

  ## Example:

      usage_plan() :: %{
        "apiStages" => list(api_stage()),
        "description" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "productCode" => String.t() | atom(),
        "quota" => quota_settings(),
        "tags" => map(),
        "throttle" => throttle_settings()
      }

  """
  @type usage_plan() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_domain_name_request() :: %{
        optional("domainNameId") => String.t() | atom()
      }

  """
  @type get_domain_name_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_usage_plan_request() :: %{
        optional("patchOperations") => list(patch_operation())
      }

  """
  @type update_usage_plan_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      sdk_types() :: %{
        "items" => list(sdk_type())
      }

  """
  @type sdk_types() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_usage_plan_key_request() :: %{
        required("keyId") => String.t() | atom(),
        required("keyType") => String.t() | atom()
      }

  """
  @type create_usage_plan_key_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_api_key_request() :: %{}

  """
  @type delete_api_key_request() :: %{}

  @typedoc """

  ## Example:

      get_model_request() :: %{
        optional("flatten") => boolean()
      }

  """
  @type get_model_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_documentation_version_request() :: %{}

  """
  @type get_documentation_version_request() :: %{}

  @typedoc """

  ## Example:

      get_usage_plans_request() :: %{
        optional("keyId") => String.t() | atom(),
        optional("limit") => integer(),
        optional("position") => String.t() | atom()
      }

  """
  @type get_usage_plans_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_usage_plan_request() :: %{
        optional("apiStages") => list(api_stage()),
        optional("description") => String.t() | atom(),
        optional("quota") => quota_settings(),
        optional("tags") => map(),
        optional("throttle") => throttle_settings(),
        required("name") => String.t() | atom()
      }

  """
  @type create_usage_plan_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_rest_apis_request() :: %{
        optional("limit") => integer(),
        optional("position") => String.t() | atom()
      }

  """
  @type get_rest_apis_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_client_certificate_request() :: %{}

  """
  @type get_client_certificate_request() :: %{}

  @typedoc """

  ## Example:

      documentation_part() :: %{
        "id" => String.t() | atom(),
        "location" => documentation_part_location(),
        "properties" => String.t() | atom()
      }

  """
  @type documentation_part() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      method_snapshot() :: %{
        "apiKeyRequired" => boolean(),
        "authorizationType" => String.t() | atom()
      }

  """
  @type method_snapshot() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_method_response_request() :: %{
        optional("responseModels") => map(),
        optional("responseParameters") => map()
      }

  """
  @type put_method_response_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      request_validators() :: %{
        "items" => list(request_validator()),
        "position" => String.t() | atom()
      }

  """
  @type request_validators() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      limit_exceeded_exception() :: %{
        "message" => String.t() | atom(),
        "retryAfterSeconds" => String.t() | atom()
      }

  """
  @type limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      models() :: %{
        "items" => list(model()),
        "position" => String.t() | atom()
      }

  """
  @type models() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_base_path_mapping_request() :: %{
        optional("domainNameId") => String.t() | atom()
      }

  """
  @type delete_base_path_mapping_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_domain_name_request() :: %{
        optional("domainNameId") => String.t() | atom()
      }

  """
  @type delete_domain_name_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      documentation_parts() :: %{
        "items" => list(documentation_part()),
        "position" => String.t() | atom()
      }

  """
  @type documentation_parts() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_vpc_link_request() :: %{}

  """
  @type get_vpc_link_request() :: %{}

  @typedoc """

  ## Example:

      test_invoke_authorizer_response() :: %{
        "authorization" => map(),
        "claims" => map(),
        "clientStatus" => integer(),
        "latency" => float(),
        "log" => String.t() | atom(),
        "policy" => String.t() | atom(),
        "principalId" => String.t() | atom()
      }

  """
  @type test_invoke_authorizer_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      bad_request_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type bad_request_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      documentation_part_ids() :: %{
        "ids" => list(String.t() | atom()),
        "warnings" => list(String.t() | atom())
      }

  """
  @type documentation_part_ids() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_usage_plan_request() :: %{}

  """
  @type delete_usage_plan_request() :: %{}

  @typedoc """

  ## Example:

      method() :: %{
        "apiKeyRequired" => boolean(),
        "authorizationScopes" => list(String.t() | atom()),
        "authorizationType" => String.t() | atom(),
        "authorizerId" => String.t() | atom(),
        "httpMethod" => String.t() | atom(),
        "methodIntegration" => integration(),
        "methodResponses" => map(),
        "operationName" => String.t() | atom(),
        "requestModels" => map(),
        "requestParameters" => map(),
        "requestValidatorId" => String.t() | atom()
      }

  """
  @type method() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      template() :: %{
        "value" => String.t() | atom()
      }

  """
  @type template() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      test_invoke_method_request() :: %{
        optional("body") => String.t() | atom(),
        optional("clientCertificateId") => String.t() | atom(),
        optional("headers") => map(),
        optional("multiValueHeaders") => map(),
        optional("pathWithQueryString") => String.t() | atom(),
        optional("stageVariables") => map()
      }

  """
  @type test_invoke_method_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_api_key_request() :: %{
        optional("includeValue") => boolean()
      }

  """
  @type get_api_key_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_vpc_links_request() :: %{
        optional("limit") => integer(),
        optional("position") => String.t() | atom()
      }

  """
  @type get_vpc_links_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      authorizers() :: %{
        "items" => list(authorizer()),
        "position" => String.t() | atom()
      }

  """
  @type authorizers() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_base_path_mappings_request() :: %{
        optional("domainNameId") => String.t() | atom(),
        optional("limit") => integer(),
        optional("position") => String.t() | atom()
      }

  """
  @type get_base_path_mappings_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_request_validator_request() :: %{}

  """
  @type get_request_validator_request() :: %{}

  @typedoc """

  ## Example:

      api_key() :: %{
        "createdDate" => non_neg_integer(),
        "customerId" => String.t() | atom(),
        "description" => String.t() | atom(),
        "enabled" => boolean(),
        "id" => String.t() | atom(),
        "lastUpdatedDate" => non_neg_integer(),
        "name" => String.t() | atom(),
        "stageKeys" => list(String.t() | atom()),
        "tags" => map(),
        "value" => String.t() | atom()
      }

  """
  @type api_key() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_integration_response_request() :: %{
        optional("contentHandling") => list(any()),
        optional("responseParameters") => map(),
        optional("responseTemplates") => map(),
        optional("selectionPattern") => String.t() | atom()
      }

  """
  @type put_integration_response_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_account_request() :: %{}

  """
  @type get_account_request() :: %{}

  @typedoc """

  ## Example:

      integration_response() :: %{
        "contentHandling" => list(any()),
        "responseParameters" => map(),
        "responseTemplates" => map(),
        "selectionPattern" => String.t() | atom(),
        "statusCode" => String.t() | atom()
      }

  """
  @type integration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      test_invoke_method_response() :: %{
        "body" => String.t() | atom(),
        "headers" => map(),
        "latency" => float(),
        "log" => String.t() | atom(),
        "multiValueHeaders" => map(),
        "status" => integer()
      }

  """
  @type test_invoke_method_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      flush_stage_cache_request() :: %{}

  """
  @type flush_stage_cache_request() :: %{}

  @typedoc """

  ## Example:

      model() :: %{
        "contentType" => String.t() | atom(),
        "description" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "schema" => String.t() | atom()
      }

  """
  @type model() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      deployments() :: %{
        "items" => list(deployment()),
        "position" => String.t() | atom()
      }

  """
  @type deployments() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_documentation_version_request() :: %{
        optional("patchOperations") => list(patch_operation())
      }

  """
  @type update_documentation_version_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_deployment_request() :: %{
        optional("patchOperations") => list(patch_operation())
      }

  """
  @type update_deployment_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_rest_api_request() :: %{
        optional("failOnWarnings") => boolean(),
        optional("mode") => list(any()),
        optional("parameters") => map(),
        required("body") => binary()
      }

  """
  @type put_rest_api_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      quota_settings() :: %{
        "limit" => integer(),
        "offset" => integer(),
        "period" => list(any())
      }

  """
  @type quota_settings() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_gateway_response_request() :: %{}

  """
  @type delete_gateway_response_request() :: %{}

  @typedoc """

  ## Example:

      get_documentation_versions_request() :: %{
        optional("limit") => integer(),
        optional("position") => String.t() | atom()
      }

  """
  @type get_documentation_versions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_domain_name_access_association_request() :: %{
        optional("tags") => map(),
        required("accessAssociationSource") => String.t() | atom(),
        required("accessAssociationSourceType") => list(any()),
        required("domainNameArn") => String.t() | atom()
      }

  """
  @type create_domain_name_access_association_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      usage_plan_key() :: %{
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "type" => String.t() | atom(),
        "value" => String.t() | atom()
      }

  """
  @type usage_plan_key() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_vpc_link_request() :: %{}

  """
  @type delete_vpc_link_request() :: %{}

  @typedoc """

  ## Example:

      update_authorizer_request() :: %{
        optional("patchOperations") => list(patch_operation())
      }

  """
  @type update_authorizer_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_gateway_response_request() :: %{
        optional("responseParameters") => map(),
        optional("responseTemplates") => map(),
        optional("statusCode") => String.t() | atom()
      }

  """
  @type put_gateway_response_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_rest_api_request() :: %{
        optional("apiKeySource") => list(any()),
        optional("binaryMediaTypes") => list(String.t() | atom()),
        optional("cloneFrom") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("disableExecuteApiEndpoint") => boolean(),
        optional("endpointConfiguration") => endpoint_configuration(),
        optional("minimumCompressionSize") => integer(),
        optional("policy") => String.t() | atom(),
        optional("tags") => map(),
        optional("version") => String.t() | atom(),
        required("name") => String.t() | atom()
      }

  """
  @type create_rest_api_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource() :: %{
        "id" => String.t() | atom(),
        "parentId" => String.t() | atom(),
        "path" => String.t() | atom(),
        "pathPart" => String.t() | atom(),
        "resourceMethods" => map()
      }

  """
  @type resource() :: %{(String.t() | atom()) => any()}

  @type create_api_key_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type create_authorizer_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type create_base_path_mapping_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type create_deployment_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type create_documentation_part_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type create_documentation_version_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type create_domain_name_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type create_domain_name_access_association_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type create_model_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type create_request_validator_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type create_resource_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type create_rest_api_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type create_stage_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type create_usage_plan_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type create_usage_plan_key_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type create_vpc_link_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type delete_api_key_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type delete_authorizer_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type delete_base_path_mapping_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type delete_client_certificate_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type delete_deployment_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type delete_documentation_part_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type delete_documentation_version_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type delete_domain_name_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type delete_domain_name_access_association_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type delete_gateway_response_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type delete_integration_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type delete_integration_response_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type delete_method_errors() ::
          not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type delete_method_response_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type delete_model_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type delete_request_validator_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type delete_resource_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type delete_rest_api_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type delete_stage_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type delete_usage_plan_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type delete_usage_plan_key_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type delete_vpc_link_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type flush_stage_authorizers_cache_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type flush_stage_cache_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type generate_client_certificate_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_account_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_api_key_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_api_keys_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_authorizer_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_authorizers_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_base_path_mapping_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_base_path_mappings_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_client_certificate_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_client_certificates_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_deployment_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_deployments_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_documentation_part_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_documentation_parts_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_documentation_version_errors() ::
          not_found_exception() | too_many_requests_exception() | unauthorized_exception()

  @type get_documentation_versions_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_domain_name_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_domain_name_access_associations_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_domain_names_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_export_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_gateway_response_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_gateway_responses_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_integration_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_integration_response_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_method_errors() ::
          not_found_exception() | too_many_requests_exception() | unauthorized_exception()

  @type get_method_response_errors() ::
          not_found_exception() | too_many_requests_exception() | unauthorized_exception()

  @type get_model_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_model_template_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_models_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_request_validator_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_request_validators_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_resource_errors() ::
          not_found_exception() | too_many_requests_exception() | unauthorized_exception()

  @type get_resources_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_rest_api_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_rest_apis_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_sdk_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_sdk_type_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_sdk_types_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_stage_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_stages_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_tags_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_usage_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_usage_plan_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_usage_plan_key_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_usage_plan_keys_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_usage_plans_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_vpc_link_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type get_vpc_links_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type import_api_keys_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type import_documentation_parts_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type import_rest_api_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type put_gateway_response_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type put_integration_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type put_integration_response_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type put_method_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type put_method_response_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type put_rest_api_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type reject_domain_name_access_association_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type tag_resource_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type test_invoke_authorizer_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type test_invoke_method_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type untag_resource_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type update_account_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type update_api_key_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type update_authorizer_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type update_base_path_mapping_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type update_client_certificate_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type update_deployment_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type update_documentation_part_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type update_documentation_version_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type update_domain_name_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type update_gateway_response_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type update_integration_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type update_integration_response_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type update_method_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type update_method_response_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type update_model_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type update_request_validator_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type update_resource_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type update_rest_api_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type update_stage_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type update_usage_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type update_usage_plan_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type update_vpc_link_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  def metadata do
    %{
      api_version: "2015-07-09",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "apigateway",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "API Gateway",
      signature_version: "v4",
      signing_name: "apigateway",
      target_prefix: nil
    }
  end

  @doc """
  Create an ApiKey resource.
  """
  @spec create_api_key(map(), create_api_key_request(), list()) ::
          {:ok, api_key(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_api_key_errors()}
  def create_api_key(%Client{} = client, input, options \\ []) do
    url_path = "/apikeys"
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
  Adds a new Authorizer resource to an existing RestApi resource.
  """
  @spec create_authorizer(map(), String.t() | atom(), create_authorizer_request(), list()) ::
          {:ok, authorizer(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_authorizer_errors()}
  def create_authorizer(%Client{} = client, rest_api_id, input, options \\ []) do
    url_path = "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/authorizers"
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
  Creates a new BasePathMapping resource.
  """
  @spec create_base_path_mapping(
          map(),
          String.t() | atom(),
          create_base_path_mapping_request(),
          list()
        ) ::
          {:ok, base_path_mapping(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_base_path_mapping_errors()}
  def create_base_path_mapping(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domainnames/#{AWS.Util.encode_uri(domain_name)}/basepathmappings"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"domainNameId", "domainNameId"}
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
  Creates a Deployment resource, which makes a specified RestApi callable over the
  internet.
  """
  @spec create_deployment(map(), String.t() | atom(), create_deployment_request(), list()) ::
          {:ok, deployment(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_deployment_errors()}
  def create_deployment(%Client{} = client, rest_api_id, input, options \\ []) do
    url_path = "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/deployments"
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
  Creates a documentation part.
  """
  @spec create_documentation_part(
          map(),
          String.t() | atom(),
          create_documentation_part_request(),
          list()
        ) ::
          {:ok, documentation_part(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_documentation_part_errors()}
  def create_documentation_part(%Client{} = client, rest_api_id, input, options \\ []) do
    url_path = "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/documentation/parts"
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
  Creates a documentation version
  """
  @spec create_documentation_version(
          map(),
          String.t() | atom(),
          create_documentation_version_request(),
          list()
        ) ::
          {:ok, documentation_version(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_documentation_version_errors()}
  def create_documentation_version(%Client{} = client, rest_api_id, input, options \\ []) do
    url_path = "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/documentation/versions"
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
  Creates a new domain name.
  """
  @spec create_domain_name(map(), create_domain_name_request(), list()) ::
          {:ok, domain_name(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_domain_name_errors()}
  def create_domain_name(%Client{} = client, input, options \\ []) do
    url_path = "/domainnames"
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
  Creates a domain name access association resource between an access association
  source and a private custom
  domain name.
  """
  @spec create_domain_name_access_association(
          map(),
          create_domain_name_access_association_request(),
          list()
        ) ::
          {:ok, domain_name_access_association(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_domain_name_access_association_errors()}
  def create_domain_name_access_association(%Client{} = client, input, options \\ []) do
    url_path = "/domainnameaccessassociations"
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
  Adds a new Model resource to an existing RestApi resource.
  """
  @spec create_model(map(), String.t() | atom(), create_model_request(), list()) ::
          {:ok, model(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_model_errors()}
  def create_model(%Client{} = client, rest_api_id, input, options \\ []) do
    url_path = "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/models"
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
  Creates a RequestValidator of a given RestApi.
  """
  @spec create_request_validator(
          map(),
          String.t() | atom(),
          create_request_validator_request(),
          list()
        ) ::
          {:ok, request_validator(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_request_validator_errors()}
  def create_request_validator(%Client{} = client, rest_api_id, input, options \\ []) do
    url_path = "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/requestvalidators"
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
  Creates a Resource resource.
  """
  @spec create_resource(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          create_resource_request(),
          list()
        ) ::
          {:ok, resource(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_resource_errors()}
  def create_resource(%Client{} = client, parent_id, rest_api_id, input, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/resources/#{AWS.Util.encode_uri(parent_id)}"

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
  Creates a new RestApi resource.
  """
  @spec create_rest_api(map(), create_rest_api_request(), list()) ::
          {:ok, rest_api(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_rest_api_errors()}
  def create_rest_api(%Client{} = client, input, options \\ []) do
    url_path = "/restapis"
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
  Creates a new Stage resource that references a pre-existing Deployment for the
  API.
  """
  @spec create_stage(map(), String.t() | atom(), create_stage_request(), list()) ::
          {:ok, stage(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_stage_errors()}
  def create_stage(%Client{} = client, rest_api_id, input, options \\ []) do
    url_path = "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/stages"
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
  Creates a usage plan with the throttle and quota limits, as well as the
  associated API stages, specified in the payload.
  """
  @spec create_usage_plan(map(), create_usage_plan_request(), list()) ::
          {:ok, usage_plan(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_usage_plan_errors()}
  def create_usage_plan(%Client{} = client, input, options \\ []) do
    url_path = "/usageplans"
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
  Creates a usage plan key for adding an existing API key to a usage plan.
  """
  @spec create_usage_plan_key(map(), String.t() | atom(), create_usage_plan_key_request(), list()) ::
          {:ok, usage_plan_key(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_usage_plan_key_errors()}
  def create_usage_plan_key(%Client{} = client, usage_plan_id, input, options \\ []) do
    url_path = "/usageplans/#{AWS.Util.encode_uri(usage_plan_id)}/keys"
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
  Creates a VPC link, under the caller's account in a selected region, in an
  asynchronous operation that typically takes 2-4 minutes to complete and become
  operational.

  The caller must have permissions to create and update VPC Endpoint services.
  """
  @spec create_vpc_link(map(), create_vpc_link_request(), list()) ::
          {:ok, vpc_link(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_vpc_link_errors()}
  def create_vpc_link(%Client{} = client, input, options \\ []) do
    url_path = "/vpclinks"
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
      202
    )
  end

  @doc """
  Deletes the ApiKey resource.
  """
  @spec delete_api_key(map(), String.t() | atom(), delete_api_key_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_api_key_errors()}
  def delete_api_key(%Client{} = client, api_key, input, options \\ []) do
    url_path = "/apikeys/#{AWS.Util.encode_uri(api_key)}"
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

  @doc """
  Deletes an existing Authorizer resource.
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
  def delete_authorizer(%Client{} = client, authorizer_id, rest_api_id, input, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/authorizers/#{AWS.Util.encode_uri(authorizer_id)}"

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

  @doc """
  Deletes the BasePathMapping resource.
  """
  @spec delete_base_path_mapping(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_base_path_mapping_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_base_path_mapping_errors()}
  def delete_base_path_mapping(%Client{} = client, base_path, domain_name, input, options \\ []) do
    url_path =
      "/domainnames/#{AWS.Util.encode_uri(domain_name)}/basepathmappings/#{AWS.Util.encode_uri(base_path)}"

    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"domainNameId", "domainNameId"}
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
      202
    )
  end

  @doc """
  Deletes the ClientCertificate resource.
  """
  @spec delete_client_certificate(
          map(),
          String.t() | atom(),
          delete_client_certificate_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_client_certificate_errors()}
  def delete_client_certificate(%Client{} = client, client_certificate_id, input, options \\ []) do
    url_path = "/clientcertificates/#{AWS.Util.encode_uri(client_certificate_id)}"
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

  @doc """
  Deletes a Deployment resource.

  Deleting a deployment will only succeed if there are no Stage resources
  associated with it.
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
  def delete_deployment(%Client{} = client, deployment_id, rest_api_id, input, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/deployments/#{AWS.Util.encode_uri(deployment_id)}"

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

  @doc """
  Deletes a documentation part
  """
  @spec delete_documentation_part(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_documentation_part_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_documentation_part_errors()}
  def delete_documentation_part(
        %Client{} = client,
        documentation_part_id,
        rest_api_id,
        input,
        options \\ []
      ) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/documentation/parts/#{AWS.Util.encode_uri(documentation_part_id)}"

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

  @doc """
  Deletes a documentation version.
  """
  @spec delete_documentation_version(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_documentation_version_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_documentation_version_errors()}
  def delete_documentation_version(
        %Client{} = client,
        documentation_version,
        rest_api_id,
        input,
        options \\ []
      ) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/documentation/versions/#{AWS.Util.encode_uri(documentation_version)}"

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

  @doc """
  Deletes the DomainName resource.
  """
  @spec delete_domain_name(map(), String.t() | atom(), delete_domain_name_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_domain_name_errors()}
  def delete_domain_name(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domainnames/#{AWS.Util.encode_uri(domain_name)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"domainNameId", "domainNameId"}
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
      202
    )
  end

  @doc """
  Deletes the DomainNameAccessAssociation resource.

  Only the AWS account that created the DomainNameAccessAssociation resource can
  delete it. To stop an access association source in another AWS account from
  accessing your private custom domain name, use the
  RejectDomainNameAccessAssociation operation.
  """
  @spec delete_domain_name_access_association(
          map(),
          String.t() | atom(),
          delete_domain_name_access_association_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_domain_name_access_association_errors()}
  def delete_domain_name_access_association(
        %Client{} = client,
        domain_name_access_association_arn,
        input,
        options \\ []
      ) do
    url_path =
      "/domainnameaccessassociations/#{AWS.Util.encode_uri(domain_name_access_association_arn)}"

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

  @doc """
  Clears any customization of a GatewayResponse of a specified response type on
  the given RestApi and resets it with the default settings.
  """
  @spec delete_gateway_response(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_gateway_response_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_gateway_response_errors()}
  def delete_gateway_response(
        %Client{} = client,
        response_type,
        rest_api_id,
        input,
        options \\ []
      ) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/gatewayresponses/#{AWS.Util.encode_uri(response_type)}"

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

  @doc """
  Represents a delete integration.
  """
  @spec delete_integration(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          delete_integration_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_integration_errors()}
  def delete_integration(
        %Client{} = client,
        http_method,
        resource_id,
        rest_api_id,
        input,
        options \\ []
      ) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/resources/#{AWS.Util.encode_uri(resource_id)}/methods/#{AWS.Util.encode_uri(http_method)}/integration"

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
  Represents a delete integration response.
  """
  @spec delete_integration_response(
          map(),
          String.t() | atom(),
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
        http_method,
        resource_id,
        rest_api_id,
        status_code,
        input,
        options \\ []
      ) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/resources/#{AWS.Util.encode_uri(resource_id)}/methods/#{AWS.Util.encode_uri(http_method)}/integration/responses/#{AWS.Util.encode_uri(status_code)}"

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
  Deletes an existing Method resource.
  """
  @spec delete_method(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          delete_method_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_method_errors()}
  def delete_method(
        %Client{} = client,
        http_method,
        resource_id,
        rest_api_id,
        input,
        options \\ []
      ) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/resources/#{AWS.Util.encode_uri(resource_id)}/methods/#{AWS.Util.encode_uri(http_method)}"

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
  Deletes an existing MethodResponse resource.
  """
  @spec delete_method_response(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          delete_method_response_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_method_response_errors()}
  def delete_method_response(
        %Client{} = client,
        http_method,
        resource_id,
        rest_api_id,
        status_code,
        input,
        options \\ []
      ) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/resources/#{AWS.Util.encode_uri(resource_id)}/methods/#{AWS.Util.encode_uri(http_method)}/responses/#{AWS.Util.encode_uri(status_code)}"

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
  Deletes a model.
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
  def delete_model(%Client{} = client, model_name, rest_api_id, input, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/models/#{AWS.Util.encode_uri(model_name)}"

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

  @doc """
  Deletes a RequestValidator of a given RestApi.
  """
  @spec delete_request_validator(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_request_validator_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_request_validator_errors()}
  def delete_request_validator(
        %Client{} = client,
        request_validator_id,
        rest_api_id,
        input,
        options \\ []
      ) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/requestvalidators/#{AWS.Util.encode_uri(request_validator_id)}"

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

  @doc """
  Deletes a Resource resource.
  """
  @spec delete_resource(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_resource_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_resource_errors()}
  def delete_resource(%Client{} = client, resource_id, rest_api_id, input, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/resources/#{AWS.Util.encode_uri(resource_id)}"

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

  @doc """
  Deletes the specified API.
  """
  @spec delete_rest_api(map(), String.t() | atom(), delete_rest_api_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_rest_api_errors()}
  def delete_rest_api(%Client{} = client, rest_api_id, input, options \\ []) do
    url_path = "/restapis/#{AWS.Util.encode_uri(rest_api_id)}"
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

  @doc """
  Deletes a Stage resource.
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
  def delete_stage(%Client{} = client, rest_api_id, stage_name, input, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/stages/#{AWS.Util.encode_uri(stage_name)}"

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

  @doc """
  Deletes a usage plan of a given plan Id.
  """
  @spec delete_usage_plan(map(), String.t() | atom(), delete_usage_plan_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_usage_plan_errors()}
  def delete_usage_plan(%Client{} = client, usage_plan_id, input, options \\ []) do
    url_path = "/usageplans/#{AWS.Util.encode_uri(usage_plan_id)}"
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

  @doc """
  Deletes a usage plan key and remove the underlying API key from the associated
  usage plan.
  """
  @spec delete_usage_plan_key(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_usage_plan_key_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_usage_plan_key_errors()}
  def delete_usage_plan_key(%Client{} = client, key_id, usage_plan_id, input, options \\ []) do
    url_path =
      "/usageplans/#{AWS.Util.encode_uri(usage_plan_id)}/keys/#{AWS.Util.encode_uri(key_id)}"

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

  @doc """
  Deletes an existing VpcLink of a specified identifier.
  """
  @spec delete_vpc_link(map(), String.t() | atom(), delete_vpc_link_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_vpc_link_errors()}
  def delete_vpc_link(%Client{} = client, vpc_link_id, input, options \\ []) do
    url_path = "/vpclinks/#{AWS.Util.encode_uri(vpc_link_id)}"
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

  @doc """
  Flushes all authorizer cache entries on a stage.
  """
  @spec flush_stage_authorizers_cache(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          flush_stage_authorizers_cache_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, flush_stage_authorizers_cache_errors()}
  def flush_stage_authorizers_cache(
        %Client{} = client,
        rest_api_id,
        stage_name,
        input,
        options \\ []
      ) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/stages/#{AWS.Util.encode_uri(stage_name)}/cache/authorizers"

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

  @doc """
  Flushes a stage's cache.
  """
  @spec flush_stage_cache(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          flush_stage_cache_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, flush_stage_cache_errors()}
  def flush_stage_cache(%Client{} = client, rest_api_id, stage_name, input, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/stages/#{AWS.Util.encode_uri(stage_name)}/cache/data"

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

  @doc """
  Generates a ClientCertificate resource.
  """
  @spec generate_client_certificate(map(), generate_client_certificate_request(), list()) ::
          {:ok, client_certificate(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, generate_client_certificate_errors()}
  def generate_client_certificate(%Client{} = client, input, options \\ []) do
    url_path = "/clientcertificates"
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
  Gets information about the current Account resource.
  """
  @spec get_account(map(), list()) ::
          {:ok, account(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_account_errors()}
  def get_account(%Client{} = client, options \\ []) do
    url_path = "/account"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about the current ApiKey resource.
  """
  @spec get_api_key(map(), String.t() | atom(), String.t() | atom() | nil, list()) ::
          {:ok, api_key(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_api_key_errors()}
  def get_api_key(%Client{} = client, api_key, include_value \\ nil, options \\ []) do
    url_path = "/apikeys/#{AWS.Util.encode_uri(api_key)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(include_value) do
        [{"includeValue", include_value} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about the current ApiKeys resource.
  """
  @spec get_api_keys(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, api_keys(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_api_keys_errors()}
  def get_api_keys(
        %Client{} = client,
        customer_id \\ nil,
        include_values \\ nil,
        limit \\ nil,
        name_query \\ nil,
        position \\ nil,
        options \\ []
      ) do
    url_path = "/apikeys"
    headers = []
    query_params = []

    query_params =
      if !is_nil(position) do
        [{"position", position} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(name_query) do
        [{"name", name_query} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(limit) do
        [{"limit", limit} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(include_values) do
        [{"includeValues", include_values} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(customer_id) do
        [{"customerId", customer_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describe an existing Authorizer resource.
  """
  @spec get_authorizer(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, authorizer(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_authorizer_errors()}
  def get_authorizer(%Client{} = client, authorizer_id, rest_api_id, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/authorizers/#{AWS.Util.encode_uri(authorizer_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describe an existing Authorizers resource.
  """
  @spec get_authorizers(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, authorizers(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_authorizers_errors()}
  def get_authorizers(
        %Client{} = client,
        rest_api_id,
        limit \\ nil,
        position \\ nil,
        options \\ []
      ) do
    url_path = "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/authorizers"
    headers = []
    query_params = []

    query_params =
      if !is_nil(position) do
        [{"position", position} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(limit) do
        [{"limit", limit} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describe a BasePathMapping resource.
  """
  @spec get_base_path_mapping(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, base_path_mapping(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_base_path_mapping_errors()}
  def get_base_path_mapping(
        %Client{} = client,
        base_path,
        domain_name,
        domain_name_id \\ nil,
        options \\ []
      ) do
    url_path =
      "/domainnames/#{AWS.Util.encode_uri(domain_name)}/basepathmappings/#{AWS.Util.encode_uri(base_path)}"

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
  Represents a collection of BasePathMapping resources.
  """
  @spec get_base_path_mappings(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, base_path_mappings(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_base_path_mappings_errors()}
  def get_base_path_mappings(
        %Client{} = client,
        domain_name,
        domain_name_id \\ nil,
        limit \\ nil,
        position \\ nil,
        options \\ []
      ) do
    url_path = "/domainnames/#{AWS.Util.encode_uri(domain_name)}/basepathmappings"
    headers = []
    query_params = []

    query_params =
      if !is_nil(position) do
        [{"position", position} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(limit) do
        [{"limit", limit} | query_params]
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
  Gets information about the current ClientCertificate resource.
  """
  @spec get_client_certificate(map(), String.t() | atom(), list()) ::
          {:ok, client_certificate(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_client_certificate_errors()}
  def get_client_certificate(%Client{} = client, client_certificate_id, options \\ []) do
    url_path = "/clientcertificates/#{AWS.Util.encode_uri(client_certificate_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a collection of ClientCertificate resources.
  """
  @spec get_client_certificates(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, client_certificates(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_client_certificates_errors()}
  def get_client_certificates(%Client{} = client, limit \\ nil, position \\ nil, options \\ []) do
    url_path = "/clientcertificates"
    headers = []
    query_params = []

    query_params =
      if !is_nil(position) do
        [{"position", position} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(limit) do
        [{"limit", limit} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a Deployment resource.
  """
  @spec get_deployment(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, deployment(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_deployment_errors()}
  def get_deployment(%Client{} = client, deployment_id, rest_api_id, embed \\ nil, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/deployments/#{AWS.Util.encode_uri(deployment_id)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(embed) do
        [{"embed", embed} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a Deployments collection.
  """
  @spec get_deployments(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, deployments(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_deployments_errors()}
  def get_deployments(
        %Client{} = client,
        rest_api_id,
        limit \\ nil,
        position \\ nil,
        options \\ []
      ) do
    url_path = "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/deployments"
    headers = []
    query_params = []

    query_params =
      if !is_nil(position) do
        [{"position", position} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(limit) do
        [{"limit", limit} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a documentation part.
  """
  @spec get_documentation_part(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, documentation_part(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_documentation_part_errors()}
  def get_documentation_part(
        %Client{} = client,
        documentation_part_id,
        rest_api_id,
        options \\ []
      ) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/documentation/parts/#{AWS.Util.encode_uri(documentation_part_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets documentation parts.
  """
  @spec get_documentation_parts(
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
          {:ok, documentation_parts(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_documentation_parts_errors()}
  def get_documentation_parts(
        %Client{} = client,
        rest_api_id,
        limit \\ nil,
        location_status \\ nil,
        name_query \\ nil,
        path \\ nil,
        position \\ nil,
        type \\ nil,
        options \\ []
      ) do
    url_path = "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/documentation/parts"
    headers = []
    query_params = []

    query_params =
      if !is_nil(type) do
        [{"type", type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(position) do
        [{"position", position} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(path) do
        [{"path", path} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(name_query) do
        [{"name", name_query} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(location_status) do
        [{"locationStatus", location_status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(limit) do
        [{"limit", limit} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a documentation version.
  """
  @spec get_documentation_version(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, documentation_version(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_documentation_version_errors()}
  def get_documentation_version(
        %Client{} = client,
        documentation_version,
        rest_api_id,
        options \\ []
      ) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/documentation/versions/#{AWS.Util.encode_uri(documentation_version)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets documentation versions.
  """
  @spec get_documentation_versions(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, documentation_versions(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_documentation_versions_errors()}
  def get_documentation_versions(
        %Client{} = client,
        rest_api_id,
        limit \\ nil,
        position \\ nil,
        options \\ []
      ) do
    url_path = "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/documentation/versions"
    headers = []
    query_params = []

    query_params =
      if !is_nil(position) do
        [{"position", position} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(limit) do
        [{"limit", limit} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Represents a domain name that is contained in a simpler, more intuitive URL that
  can be called.
  """
  @spec get_domain_name(map(), String.t() | atom(), String.t() | atom() | nil, list()) ::
          {:ok, domain_name(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_domain_name_errors()}
  def get_domain_name(%Client{} = client, domain_name, domain_name_id \\ nil, options \\ []) do
    url_path = "/domainnames/#{AWS.Util.encode_uri(domain_name)}"
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
  Represents a collection on DomainNameAccessAssociations resources.
  """
  @spec get_domain_name_access_associations(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, domain_name_access_associations(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_domain_name_access_associations_errors()}
  def get_domain_name_access_associations(
        %Client{} = client,
        limit \\ nil,
        position \\ nil,
        resource_owner \\ nil,
        options \\ []
      ) do
    url_path = "/domainnameaccessassociations"
    headers = []
    query_params = []

    query_params =
      if !is_nil(resource_owner) do
        [{"resourceOwner", resource_owner} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(position) do
        [{"position", position} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(limit) do
        [{"limit", limit} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Represents a collection of DomainName resources.
  """
  @spec get_domain_names(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, domain_names(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_domain_names_errors()}
  def get_domain_names(
        %Client{} = client,
        limit \\ nil,
        position \\ nil,
        resource_owner \\ nil,
        options \\ []
      ) do
    url_path = "/domainnames"
    headers = []
    query_params = []

    query_params =
      if !is_nil(resource_owner) do
        [{"resourceOwner", resource_owner} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(position) do
        [{"position", position} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(limit) do
        [{"limit", limit} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Exports a deployed version of a RestApi in a specified format.
  """
  @spec get_export(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, export_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_export_errors()}
  def get_export(
        %Client{} = client,
        export_type,
        rest_api_id,
        stage_name,
        parameters \\ nil,
        accepts \\ nil,
        options \\ []
      ) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/stages/#{AWS.Util.encode_uri(stage_name)}/exports/#{AWS.Util.encode_uri(export_type)}"

    headers = []

    headers =
      if !is_nil(accepts) do
        [{"Accept", accepts} | headers]
      else
        headers
      end

    query_params = []

    query_params =
      if !is_nil(parameters) do
        [{"parameters", parameters} | query_params]
      else
        query_params
      end

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"Content-Disposition", "contentDisposition"}, {"Content-Type", "contentType"}]
      )

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a GatewayResponse of a specified response type on the given RestApi.
  """
  @spec get_gateway_response(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, gateway_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_gateway_response_errors()}
  def get_gateway_response(%Client{} = client, response_type, rest_api_id, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/gatewayresponses/#{AWS.Util.encode_uri(response_type)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the GatewayResponses collection on the given RestApi.

  If an API developer has not added any definitions for gateway responses, the
  result will be the API Gateway-generated default GatewayResponses collection for
  the supported response types.
  """
  @spec get_gateway_responses(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, gateway_responses(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_gateway_responses_errors()}
  def get_gateway_responses(
        %Client{} = client,
        rest_api_id,
        limit \\ nil,
        position \\ nil,
        options \\ []
      ) do
    url_path = "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/gatewayresponses"
    headers = []
    query_params = []

    query_params =
      if !is_nil(position) do
        [{"position", position} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(limit) do
        [{"limit", limit} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get the integration settings.
  """
  @spec get_integration(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          list()
        ) ::
          {:ok, integration(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_integration_errors()}
  def get_integration(%Client{} = client, http_method, resource_id, rest_api_id, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/resources/#{AWS.Util.encode_uri(resource_id)}/methods/#{AWS.Util.encode_uri(http_method)}/integration"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Represents a get integration response.
  """
  @spec get_integration_response(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          list()
        ) ::
          {:ok, integration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_integration_response_errors()}
  def get_integration_response(
        %Client{} = client,
        http_method,
        resource_id,
        rest_api_id,
        status_code,
        options \\ []
      ) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/resources/#{AWS.Util.encode_uri(resource_id)}/methods/#{AWS.Util.encode_uri(http_method)}/integration/responses/#{AWS.Util.encode_uri(status_code)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describe an existing Method resource.
  """
  @spec get_method(map(), String.t() | atom(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, method(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_method_errors()}
  def get_method(%Client{} = client, http_method, resource_id, rest_api_id, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/resources/#{AWS.Util.encode_uri(resource_id)}/methods/#{AWS.Util.encode_uri(http_method)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes a MethodResponse resource.
  """
  @spec get_method_response(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          list()
        ) ::
          {:ok, method_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_method_response_errors()}
  def get_method_response(
        %Client{} = client,
        http_method,
        resource_id,
        rest_api_id,
        status_code,
        options \\ []
      ) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/resources/#{AWS.Util.encode_uri(resource_id)}/methods/#{AWS.Util.encode_uri(http_method)}/responses/#{AWS.Util.encode_uri(status_code)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes an existing model defined for a RestApi resource.
  """
  @spec get_model(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, model(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_model_errors()}
  def get_model(%Client{} = client, model_name, rest_api_id, flatten \\ nil, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/models/#{AWS.Util.encode_uri(model_name)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(flatten) do
        [{"flatten", flatten} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Generates a sample mapping template that can be used to transform a payload into
  the structure of a model.
  """
  @spec get_model_template(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, template(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_model_template_errors()}
  def get_model_template(%Client{} = client, model_name, rest_api_id, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/models/#{AWS.Util.encode_uri(model_name)}/default_template"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes existing Models defined for a RestApi resource.
  """
  @spec get_models(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, models(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_models_errors()}
  def get_models(%Client{} = client, rest_api_id, limit \\ nil, position \\ nil, options \\ []) do
    url_path = "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/models"
    headers = []
    query_params = []

    query_params =
      if !is_nil(position) do
        [{"position", position} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(limit) do
        [{"limit", limit} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a RequestValidator of a given RestApi.
  """
  @spec get_request_validator(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, request_validator(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_request_validator_errors()}
  def get_request_validator(%Client{} = client, request_validator_id, rest_api_id, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/requestvalidators/#{AWS.Util.encode_uri(request_validator_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the RequestValidators collection of a given RestApi.
  """
  @spec get_request_validators(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, request_validators(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_request_validators_errors()}
  def get_request_validators(
        %Client{} = client,
        rest_api_id,
        limit \\ nil,
        position \\ nil,
        options \\ []
      ) do
    url_path = "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/requestvalidators"
    headers = []
    query_params = []

    query_params =
      if !is_nil(position) do
        [{"position", position} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(limit) do
        [{"limit", limit} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists information about a resource.
  """
  @spec get_resource(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, resource(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_resource_errors()}
  def get_resource(%Client{} = client, resource_id, rest_api_id, embed \\ nil, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/resources/#{AWS.Util.encode_uri(resource_id)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(embed) do
        [{"embed", embed} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists information about a collection of Resource resources.
  """
  @spec get_resources(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, resources(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_resources_errors()}
  def get_resources(
        %Client{} = client,
        rest_api_id,
        embed \\ nil,
        limit \\ nil,
        position \\ nil,
        options \\ []
      ) do
    url_path = "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/resources"
    headers = []
    query_params = []

    query_params =
      if !is_nil(position) do
        [{"position", position} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(limit) do
        [{"limit", limit} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(embed) do
        [{"embed", embed} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the RestApi resource in the collection.
  """
  @spec get_rest_api(map(), String.t() | atom(), list()) ::
          {:ok, rest_api(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_rest_api_errors()}
  def get_rest_api(%Client{} = client, rest_api_id, options \\ []) do
    url_path = "/restapis/#{AWS.Util.encode_uri(rest_api_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the RestApis resources for your collection.
  """
  @spec get_rest_apis(map(), String.t() | atom() | nil, String.t() | atom() | nil, list()) ::
          {:ok, rest_apis(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_rest_apis_errors()}
  def get_rest_apis(%Client{} = client, limit \\ nil, position \\ nil, options \\ []) do
    url_path = "/restapis"
    headers = []
    query_params = []

    query_params =
      if !is_nil(position) do
        [{"position", position} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(limit) do
        [{"limit", limit} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Generates a client SDK for a RestApi and Stage.
  """
  @spec get_sdk(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, sdk_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_sdk_errors()}
  def get_sdk(
        %Client{} = client,
        rest_api_id,
        sdk_type,
        stage_name,
        parameters \\ nil,
        options \\ []
      ) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/stages/#{AWS.Util.encode_uri(stage_name)}/sdks/#{AWS.Util.encode_uri(sdk_type)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(parameters) do
        [{"parameters", parameters} | query_params]
      else
        query_params
      end

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"Content-Disposition", "contentDisposition"}, {"Content-Type", "contentType"}]
      )

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets an SDK type.
  """
  @spec get_sdk_type(map(), String.t() | atom(), list()) ::
          {:ok, sdk_type(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_sdk_type_errors()}
  def get_sdk_type(%Client{} = client, id, options \\ []) do
    url_path = "/sdktypes/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets SDK types
  """
  @spec get_sdk_types(map(), String.t() | atom() | nil, String.t() | atom() | nil, list()) ::
          {:ok, sdk_types(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_sdk_types_errors()}
  def get_sdk_types(%Client{} = client, limit \\ nil, position \\ nil, options \\ []) do
    url_path = "/sdktypes"
    headers = []
    query_params = []

    query_params =
      if !is_nil(position) do
        [{"position", position} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(limit) do
        [{"limit", limit} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a Stage resource.
  """
  @spec get_stage(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, stage(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_stage_errors()}
  def get_stage(%Client{} = client, rest_api_id, stage_name, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/stages/#{AWS.Util.encode_uri(stage_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about one or more Stage resources.
  """
  @spec get_stages(map(), String.t() | atom(), String.t() | atom() | nil, list()) ::
          {:ok, stages(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_stages_errors()}
  def get_stages(%Client{} = client, rest_api_id, deployment_id \\ nil, options \\ []) do
    url_path = "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/stages"
    headers = []
    query_params = []

    query_params =
      if !is_nil(deployment_id) do
        [{"deploymentId", deployment_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the Tags collection for a given resource.
  """
  @spec get_tags(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, tags(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_tags_errors()}
  def get_tags(%Client{} = client, resource_arn, limit \\ nil, position \\ nil, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(position) do
        [{"position", position} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(limit) do
        [{"limit", limit} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the usage data of a usage plan in a specified time interval.
  """
  @spec get_usage(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom(),
          list()
        ) ::
          {:ok, usage(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_usage_errors()}
  def get_usage(
        %Client{} = client,
        usage_plan_id,
        end_date,
        key_id \\ nil,
        limit \\ nil,
        position \\ nil,
        start_date,
        options \\ []
      ) do
    url_path = "/usageplans/#{AWS.Util.encode_uri(usage_plan_id)}/usage"
    headers = []
    query_params = []

    query_params =
      if !is_nil(start_date) do
        [{"startDate", start_date} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(position) do
        [{"position", position} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(limit) do
        [{"limit", limit} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(key_id) do
        [{"keyId", key_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(end_date) do
        [{"endDate", end_date} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a usage plan of a given plan identifier.
  """
  @spec get_usage_plan(map(), String.t() | atom(), list()) ::
          {:ok, usage_plan(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_usage_plan_errors()}
  def get_usage_plan(%Client{} = client, usage_plan_id, options \\ []) do
    url_path = "/usageplans/#{AWS.Util.encode_uri(usage_plan_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a usage plan key of a given key identifier.
  """
  @spec get_usage_plan_key(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, usage_plan_key(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_usage_plan_key_errors()}
  def get_usage_plan_key(%Client{} = client, key_id, usage_plan_id, options \\ []) do
    url_path =
      "/usageplans/#{AWS.Util.encode_uri(usage_plan_id)}/keys/#{AWS.Util.encode_uri(key_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets all the usage plan keys representing the API keys added to a specified
  usage plan.
  """
  @spec get_usage_plan_keys(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, usage_plan_keys(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_usage_plan_keys_errors()}
  def get_usage_plan_keys(
        %Client{} = client,
        usage_plan_id,
        limit \\ nil,
        name_query \\ nil,
        position \\ nil,
        options \\ []
      ) do
    url_path = "/usageplans/#{AWS.Util.encode_uri(usage_plan_id)}/keys"
    headers = []
    query_params = []

    query_params =
      if !is_nil(position) do
        [{"position", position} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(name_query) do
        [{"name", name_query} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(limit) do
        [{"limit", limit} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets all the usage plans of the caller's account.
  """
  @spec get_usage_plans(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, usage_plans(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_usage_plans_errors()}
  def get_usage_plans(
        %Client{} = client,
        key_id \\ nil,
        limit \\ nil,
        position \\ nil,
        options \\ []
      ) do
    url_path = "/usageplans"
    headers = []
    query_params = []

    query_params =
      if !is_nil(position) do
        [{"position", position} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(limit) do
        [{"limit", limit} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(key_id) do
        [{"keyId", key_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a specified VPC link under the caller's account in a region.
  """
  @spec get_vpc_link(map(), String.t() | atom(), list()) ::
          {:ok, vpc_link(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_vpc_link_errors()}
  def get_vpc_link(%Client{} = client, vpc_link_id, options \\ []) do
    url_path = "/vpclinks/#{AWS.Util.encode_uri(vpc_link_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the VpcLinks collection under the caller's account in a selected region.
  """
  @spec get_vpc_links(map(), String.t() | atom() | nil, String.t() | atom() | nil, list()) ::
          {:ok, vpc_links(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_vpc_links_errors()}
  def get_vpc_links(%Client{} = client, limit \\ nil, position \\ nil, options \\ []) do
    url_path = "/vpclinks"
    headers = []
    query_params = []

    query_params =
      if !is_nil(position) do
        [{"position", position} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(limit) do
        [{"limit", limit} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Import API keys from an external source, such as a CSV-formatted file.
  """
  @spec import_api_keys(map(), import_api_keys_request(), list()) ::
          {:ok, api_key_ids(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, import_api_keys_errors()}
  def import_api_keys(%Client{} = client, input, options \\ []) do
    url_path = "/apikeys?mode=import"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"failOnWarnings", "failonwarnings"},
        {"format", "format"}
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
  Imports documentation parts
  """
  @spec import_documentation_parts(
          map(),
          String.t() | atom(),
          import_documentation_parts_request(),
          list()
        ) ::
          {:ok, documentation_part_ids(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, import_documentation_parts_errors()}
  def import_documentation_parts(%Client{} = client, rest_api_id, input, options \\ []) do
    url_path = "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/documentation/parts"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"failOnWarnings", "failonwarnings"},
        {"mode", "mode"}
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
  A feature of the API Gateway control service for creating a new API from an
  external API definition file.
  """
  @spec import_rest_api(map(), import_rest_api_request(), list()) ::
          {:ok, rest_api(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, import_rest_api_errors()}
  def import_rest_api(%Client{} = client, input, options \\ []) do
    url_path = "/restapis?mode=import"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"parameters", "parameters"},
        {"failOnWarnings", "failonwarnings"}
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
  Creates a customization of a GatewayResponse of a specified response type and
  status code on the given RestApi.
  """
  @spec put_gateway_response(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          put_gateway_response_request(),
          list()
        ) ::
          {:ok, gateway_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_gateway_response_errors()}
  def put_gateway_response(%Client{} = client, response_type, rest_api_id, input, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/gatewayresponses/#{AWS.Util.encode_uri(response_type)}"

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
      201
    )
  end

  @doc """
  Sets up a method's integration.
  """
  @spec put_integration(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          put_integration_request(),
          list()
        ) ::
          {:ok, integration(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_integration_errors()}
  def put_integration(
        %Client{} = client,
        http_method,
        resource_id,
        rest_api_id,
        input,
        options \\ []
      ) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/resources/#{AWS.Util.encode_uri(resource_id)}/methods/#{AWS.Util.encode_uri(http_method)}/integration"

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
      201
    )
  end

  @doc """
  Represents a put integration.
  """
  @spec put_integration_response(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          put_integration_response_request(),
          list()
        ) ::
          {:ok, integration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_integration_response_errors()}
  def put_integration_response(
        %Client{} = client,
        http_method,
        resource_id,
        rest_api_id,
        status_code,
        input,
        options \\ []
      ) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/resources/#{AWS.Util.encode_uri(resource_id)}/methods/#{AWS.Util.encode_uri(http_method)}/integration/responses/#{AWS.Util.encode_uri(status_code)}"

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
      201
    )
  end

  @doc """
  Add a method to an existing Resource resource.
  """
  @spec put_method(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          put_method_request(),
          list()
        ) ::
          {:ok, method(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_method_errors()}
  def put_method(%Client{} = client, http_method, resource_id, rest_api_id, input, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/resources/#{AWS.Util.encode_uri(resource_id)}/methods/#{AWS.Util.encode_uri(http_method)}"

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
      201
    )
  end

  @doc """
  Adds a MethodResponse to an existing Method resource.
  """
  @spec put_method_response(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          put_method_response_request(),
          list()
        ) ::
          {:ok, method_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_method_response_errors()}
  def put_method_response(
        %Client{} = client,
        http_method,
        resource_id,
        rest_api_id,
        status_code,
        input,
        options \\ []
      ) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/resources/#{AWS.Util.encode_uri(resource_id)}/methods/#{AWS.Util.encode_uri(http_method)}/responses/#{AWS.Util.encode_uri(status_code)}"

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
      201
    )
  end

  @doc """
  A feature of the API Gateway control service for updating an existing API with
  an input of external API definitions.

  The update can take the form of merging the supplied definition into the
  existing API or overwriting the existing API.
  """
  @spec put_rest_api(map(), String.t() | atom(), put_rest_api_request(), list()) ::
          {:ok, rest_api(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_rest_api_errors()}
  def put_rest_api(%Client{} = client, rest_api_id, input, options \\ []) do
    url_path = "/restapis/#{AWS.Util.encode_uri(rest_api_id)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"parameters", "parameters"},
        {"failOnWarnings", "failonwarnings"},
        {"mode", "mode"}
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
  Rejects a domain name access association with a private custom domain name.

  To reject a domain name access association with an access association source in
  another AWS account, use this operation. To remove a domain name access
  association with an access association source in your own account, use the
  DeleteDomainNameAccessAssociation operation.
  """
  @spec reject_domain_name_access_association(
          map(),
          reject_domain_name_access_association_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, reject_domain_name_access_association_errors()}
  def reject_domain_name_access_association(%Client{} = client, input, options \\ []) do
    url_path = "/rejectdomainnameaccessassociations"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"domainNameAccessAssociationArn", "domainNameAccessAssociationArn"},
        {"domainNameArn", "domainNameArn"}
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
      202
    )
  end

  @doc """
  Adds or updates a tag on a given resource.
  """
  @spec tag_resource(map(), String.t() | atom(), tag_resource_request(), list()) ::
          {:ok, nil, any()}
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
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Simulate the execution of an Authorizer in your RestApi with headers,
  parameters, and an incoming request body.
  """
  @spec test_invoke_authorizer(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          test_invoke_authorizer_request(),
          list()
        ) ::
          {:ok, test_invoke_authorizer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, test_invoke_authorizer_errors()}
  def test_invoke_authorizer(%Client{} = client, authorizer_id, rest_api_id, input, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/authorizers/#{AWS.Util.encode_uri(authorizer_id)}"

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
  Simulate the invocation of a Method in your RestApi with headers, parameters,
  and an incoming request body.
  """
  @spec test_invoke_method(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          test_invoke_method_request(),
          list()
        ) ::
          {:ok, test_invoke_method_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, test_invoke_method_errors()}
  def test_invoke_method(
        %Client{} = client,
        http_method,
        resource_id,
        rest_api_id,
        input,
        options \\ []
      ) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/resources/#{AWS.Util.encode_uri(resource_id)}/methods/#{AWS.Util.encode_uri(http_method)}"

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
  Removes a tag from a given resource.
  """
  @spec untag_resource(map(), String.t() | atom(), untag_resource_request(), list()) ::
          {:ok, nil, any()}
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
  Changes information about the current Account resource.
  """
  @spec update_account(map(), update_account_request(), list()) ::
          {:ok, account(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_account_errors()}
  def update_account(%Client{} = client, input, options \\ []) do
    url_path = "/account"
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
  Changes information about an ApiKey resource.
  """
  @spec update_api_key(map(), String.t() | atom(), update_api_key_request(), list()) ::
          {:ok, api_key(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_api_key_errors()}
  def update_api_key(%Client{} = client, api_key, input, options \\ []) do
    url_path = "/apikeys/#{AWS.Util.encode_uri(api_key)}"
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
  Updates an existing Authorizer resource.
  """
  @spec update_authorizer(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_authorizer_request(),
          list()
        ) ::
          {:ok, authorizer(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_authorizer_errors()}
  def update_authorizer(%Client{} = client, authorizer_id, rest_api_id, input, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/authorizers/#{AWS.Util.encode_uri(authorizer_id)}"

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
  Changes information about the BasePathMapping resource.
  """
  @spec update_base_path_mapping(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_base_path_mapping_request(),
          list()
        ) ::
          {:ok, base_path_mapping(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_base_path_mapping_errors()}
  def update_base_path_mapping(%Client{} = client, base_path, domain_name, input, options \\ []) do
    url_path =
      "/domainnames/#{AWS.Util.encode_uri(domain_name)}/basepathmappings/#{AWS.Util.encode_uri(base_path)}"

    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"domainNameId", "domainNameId"}
      ]
      |> Request.build_params(input)

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
  Changes information about an ClientCertificate resource.
  """
  @spec update_client_certificate(
          map(),
          String.t() | atom(),
          update_client_certificate_request(),
          list()
        ) ::
          {:ok, client_certificate(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_client_certificate_errors()}
  def update_client_certificate(%Client{} = client, client_certificate_id, input, options \\ []) do
    url_path = "/clientcertificates/#{AWS.Util.encode_uri(client_certificate_id)}"
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
  Changes information about a Deployment resource.
  """
  @spec update_deployment(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_deployment_request(),
          list()
        ) ::
          {:ok, deployment(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_deployment_errors()}
  def update_deployment(%Client{} = client, deployment_id, rest_api_id, input, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/deployments/#{AWS.Util.encode_uri(deployment_id)}"

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
  Updates a documentation part.
  """
  @spec update_documentation_part(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_documentation_part_request(),
          list()
        ) ::
          {:ok, documentation_part(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_documentation_part_errors()}
  def update_documentation_part(
        %Client{} = client,
        documentation_part_id,
        rest_api_id,
        input,
        options \\ []
      ) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/documentation/parts/#{AWS.Util.encode_uri(documentation_part_id)}"

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
  Updates a documentation version.
  """
  @spec update_documentation_version(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_documentation_version_request(),
          list()
        ) ::
          {:ok, documentation_version(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_documentation_version_errors()}
  def update_documentation_version(
        %Client{} = client,
        documentation_version,
        rest_api_id,
        input,
        options \\ []
      ) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/documentation/versions/#{AWS.Util.encode_uri(documentation_version)}"

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
  Changes information about the DomainName resource.
  """
  @spec update_domain_name(map(), String.t() | atom(), update_domain_name_request(), list()) ::
          {:ok, domain_name(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_domain_name_errors()}
  def update_domain_name(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domainnames/#{AWS.Util.encode_uri(domain_name)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"domainNameId", "domainNameId"}
      ]
      |> Request.build_params(input)

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
  Updates a GatewayResponse of a specified response type on the given RestApi.
  """
  @spec update_gateway_response(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_gateway_response_request(),
          list()
        ) ::
          {:ok, gateway_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_gateway_response_errors()}
  def update_gateway_response(
        %Client{} = client,
        response_type,
        rest_api_id,
        input,
        options \\ []
      ) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/gatewayresponses/#{AWS.Util.encode_uri(response_type)}"

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
  Represents an update integration.
  """
  @spec update_integration(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          update_integration_request(),
          list()
        ) ::
          {:ok, integration(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_integration_errors()}
  def update_integration(
        %Client{} = client,
        http_method,
        resource_id,
        rest_api_id,
        input,
        options \\ []
      ) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/resources/#{AWS.Util.encode_uri(resource_id)}/methods/#{AWS.Util.encode_uri(http_method)}/integration"

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
  Represents an update integration response.
  """
  @spec update_integration_response(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          update_integration_response_request(),
          list()
        ) ::
          {:ok, integration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_integration_response_errors()}
  def update_integration_response(
        %Client{} = client,
        http_method,
        resource_id,
        rest_api_id,
        status_code,
        input,
        options \\ []
      ) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/resources/#{AWS.Util.encode_uri(resource_id)}/methods/#{AWS.Util.encode_uri(http_method)}/integration/responses/#{AWS.Util.encode_uri(status_code)}"

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
  Updates an existing Method resource.
  """
  @spec update_method(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          update_method_request(),
          list()
        ) ::
          {:ok, method(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_method_errors()}
  def update_method(
        %Client{} = client,
        http_method,
        resource_id,
        rest_api_id,
        input,
        options \\ []
      ) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/resources/#{AWS.Util.encode_uri(resource_id)}/methods/#{AWS.Util.encode_uri(http_method)}"

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
  Updates an existing MethodResponse resource.
  """
  @spec update_method_response(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          update_method_response_request(),
          list()
        ) ::
          {:ok, method_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_method_response_errors()}
  def update_method_response(
        %Client{} = client,
        http_method,
        resource_id,
        rest_api_id,
        status_code,
        input,
        options \\ []
      ) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/resources/#{AWS.Util.encode_uri(resource_id)}/methods/#{AWS.Util.encode_uri(http_method)}/responses/#{AWS.Util.encode_uri(status_code)}"

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
      201
    )
  end

  @doc """
  Changes information about a model.

  The maximum size of the model is 400 KB.
  """
  @spec update_model(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_model_request(),
          list()
        ) ::
          {:ok, model(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_model_errors()}
  def update_model(%Client{} = client, model_name, rest_api_id, input, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/models/#{AWS.Util.encode_uri(model_name)}"

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
  Updates a RequestValidator of a given RestApi.
  """
  @spec update_request_validator(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_request_validator_request(),
          list()
        ) ::
          {:ok, request_validator(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_request_validator_errors()}
  def update_request_validator(
        %Client{} = client,
        request_validator_id,
        rest_api_id,
        input,
        options \\ []
      ) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/requestvalidators/#{AWS.Util.encode_uri(request_validator_id)}"

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
  Changes information about a Resource resource.
  """
  @spec update_resource(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_resource_request(),
          list()
        ) ::
          {:ok, resource(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_resource_errors()}
  def update_resource(%Client{} = client, resource_id, rest_api_id, input, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/resources/#{AWS.Util.encode_uri(resource_id)}"

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
  Changes information about the specified API.
  """
  @spec update_rest_api(map(), String.t() | atom(), update_rest_api_request(), list()) ::
          {:ok, rest_api(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_rest_api_errors()}
  def update_rest_api(%Client{} = client, rest_api_id, input, options \\ []) do
    url_path = "/restapis/#{AWS.Util.encode_uri(rest_api_id)}"
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
  Changes information about a Stage resource.
  """
  @spec update_stage(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_stage_request(),
          list()
        ) ::
          {:ok, stage(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_stage_errors()}
  def update_stage(%Client{} = client, rest_api_id, stage_name, input, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/stages/#{AWS.Util.encode_uri(stage_name)}"

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
  Grants a temporary extension to the remaining quota of a usage plan associated
  with a specified API key.
  """
  @spec update_usage(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_usage_request(),
          list()
        ) ::
          {:ok, usage(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_usage_errors()}
  def update_usage(%Client{} = client, key_id, usage_plan_id, input, options \\ []) do
    url_path =
      "/usageplans/#{AWS.Util.encode_uri(usage_plan_id)}/keys/#{AWS.Util.encode_uri(key_id)}/usage"

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
  Updates a usage plan of a given plan Id.
  """
  @spec update_usage_plan(map(), String.t() | atom(), update_usage_plan_request(), list()) ::
          {:ok, usage_plan(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_usage_plan_errors()}
  def update_usage_plan(%Client{} = client, usage_plan_id, input, options \\ []) do
    url_path = "/usageplans/#{AWS.Util.encode_uri(usage_plan_id)}"
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
  Updates an existing VpcLink of a specified identifier.
  """
  @spec update_vpc_link(map(), String.t() | atom(), update_vpc_link_request(), list()) ::
          {:ok, vpc_link(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_vpc_link_errors()}
  def update_vpc_link(%Client{} = client, vpc_link_id, input, options \\ []) do
    url_path = "/vpclinks/#{AWS.Util.encode_uri(vpc_link_id)}"
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
