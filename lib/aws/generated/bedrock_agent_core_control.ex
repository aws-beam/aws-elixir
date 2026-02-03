# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.BedrockAgentCoreControl do
  @moduledoc """
  Welcome to the Amazon Bedrock AgentCore Control plane API reference.

  Control plane actions configure, create, modify, and monitor Amazon Web Services
  resources.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      custom_claim_validation_type() :: %{
        "authorizingClaimMatchValue" => authorizing_claim_match_value_type(),
        "inboundTokenClaimName" => String.t() | atom(),
        "inboundTokenClaimValueType" => list(any())
      }

  """
  @type custom_claim_validation_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_gateway_request() :: %{
        optional("authorizerConfiguration") => list(),
        optional("description") => String.t() | atom(),
        optional("exceptionLevel") => list(any()),
        optional("interceptorConfigurations") => list(gateway_interceptor_configuration()),
        optional("kmsKeyArn") => String.t() | atom(),
        optional("policyEngineConfiguration") => gateway_policy_engine_configuration(),
        optional("protocolConfiguration") => list(),
        required("authorizerType") => list(any()),
        required("name") => String.t() | atom(),
        required("protocolType") => list(any()),
        required("roleArn") => String.t() | atom()
      }

  """
  @type update_gateway_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      lambda_interceptor_configuration() :: %{
        "arn" => String.t() | atom()
      }

  """
  @type lambda_interceptor_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      modify_strategy_configuration() :: %{
        "consolidation" => list(),
        "extraction" => list(),
        "reflection" => list(),
        "selfManagedConfiguration" => modify_self_managed_configuration()
      }

  """
  @type modify_strategy_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      api_gateway_tool_configuration() :: %{
        "toolFilters" => list(api_gateway_tool_filter()),
        "toolOverrides" => list(api_gateway_tool_override())
      }

  """
  @type api_gateway_tool_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_gateway_targets_response() :: %{
        "items" => list(target_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_gateway_targets_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_agent_runtime_endpoint_request() :: %{
        optional("agentRuntimeVersion") => String.t() | atom(),
        optional("clientToken") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("tags") => map(),
        required("name") => String.t() | atom()
      }

  """
  @type create_agent_runtime_endpoint_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_gateway_target_request() :: %{}

  """
  @type delete_gateway_target_request() :: %{}

  @typedoc """

  ## Example:

      time_based_trigger_input() :: %{
        "idleSessionTimeout" => [integer()]
      }

  """
  @type time_based_trigger_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_oauth2_credential_provider_response() :: %{
        "callbackUrl" => [String.t() | atom()],
        "clientSecretArn" => secret(),
        "credentialProviderArn" => String.t() | atom(),
        "name" => String.t() | atom(),
        "oauth2ProviderConfigOutput" => list()
      }

  """
  @type create_oauth2_credential_provider_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      memory_strategy() :: %{
        "configuration" => strategy_configuration(),
        "createdAt" => [non_neg_integer()],
        "description" => String.t() | atom(),
        "name" => String.t() | atom(),
        "namespaces" => list(String.t() | atom()),
        "status" => list(any()),
        "strategyId" => String.t() | atom(),
        "type" => list(any()),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type memory_strategy() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_api_key_credential_provider_response() :: %{
        "apiKeySecretArn" => secret(),
        "createdTime" => [non_neg_integer()],
        "credentialProviderArn" => String.t() | atom(),
        "lastUpdatedTime" => [non_neg_integer()],
        "name" => String.t() | atom()
      }

  """
  @type get_api_key_credential_provider_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      included_oauth2_provider_config_input() :: %{
        "authorizationEndpoint" => String.t() | atom(),
        "clientId" => String.t() | atom(),
        "clientSecret" => String.t() | atom(),
        "issuer" => String.t() | atom(),
        "tokenEndpoint" => String.t() | atom()
      }

  """
  @type included_oauth2_provider_config_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_resource_policy_response() :: %{}

  """
  @type delete_resource_policy_response() :: %{}

  @typedoc """

  ## Example:

      browser_summary() :: %{
        "browserArn" => String.t() | atom(),
        "browserId" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "lastUpdatedAt" => non_neg_integer(),
        "name" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type browser_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      summary_override_consolidation_configuration_input() :: %{
        "appendToPrompt" => String.t() | atom(),
        "modelId" => [String.t() | atom()]
      }

  """
  @type summary_override_consolidation_configuration_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      memory_summary() :: %{
        "arn" => String.t() | atom(),
        "createdAt" => [non_neg_integer()],
        "id" => String.t() | atom(),
        "status" => list(any()),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type memory_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      code_configuration() :: %{
        "code" => list(),
        "entryPoint" => list(String.t() | atom()),
        "runtime" => list(any())
      }

  """
  @type code_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      numerical_scale_definition() :: %{
        "definition" => [String.t() | atom()],
        "label" => [String.t() | atom()],
        "value" => [float()]
      }

  """
  @type numerical_scale_definition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_policy_engine_response() :: %{
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "name" => String.t() | atom(),
        "policyEngineArn" => String.t() | atom(),
        "policyEngineId" => String.t() | atom(),
        "status" => list(any()),
        "statusReasons" => list(String.t() | atom()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type update_policy_engine_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      unauthorized_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type unauthorized_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_code_interpreters_response() :: %{
        "codeInterpreterSummaries" => list(code_interpreter_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_code_interpreters_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_memory_input() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("encryptionKeyArn") => String.t() | atom(),
        optional("memoryExecutionRoleArn") => String.t() | atom(),
        optional("memoryStrategies") => list(list()),
        optional("tags") => map(),
        required("eventExpiryDuration") => [integer()],
        required("name") => String.t() | atom()
      }

  """
  @type create_memory_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      summary_memory_strategy_input() :: %{
        "description" => String.t() | atom(),
        "name" => String.t() | atom(),
        "namespaces" => list(String.t() | atom())
      }

  """
  @type summary_memory_strategy_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      kms_configuration() :: %{
        "keyType" => list(any()),
        "kmsKeyArn" => String.t() | atom()
      }

  """
  @type kms_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_evaluator_request() :: %{}

  """
  @type get_evaluator_request() :: %{}

  @typedoc """

  ## Example:

      list_policies_response() :: %{
        "nextToken" => String.t() | atom(),
        "policies" => list(policy())
      }

  """
  @type list_policies_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      schema_definition() :: %{
        "description" => [String.t() | atom()],
        "items" => schema_definition(),
        "properties" => map(),
        "required" => list([String.t() | atom()]()),
        "type" => list(any())
      }

  """
  @type schema_definition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      list_agent_runtime_versions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_agent_runtime_versions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_gateway_response() :: %{
        "authorizerConfiguration" => list(),
        "authorizerType" => list(any()),
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "exceptionLevel" => list(any()),
        "gatewayArn" => String.t() | atom(),
        "gatewayId" => String.t() | atom(),
        "gatewayUrl" => String.t() | atom(),
        "interceptorConfigurations" => list(gateway_interceptor_configuration()),
        "kmsKeyArn" => String.t() | atom(),
        "name" => String.t() | atom(),
        "policyEngineConfiguration" => gateway_policy_engine_configuration(),
        "protocolConfiguration" => list(),
        "protocolType" => list(any()),
        "roleArn" => String.t() | atom(),
        "status" => list(any()),
        "statusReasons" => list(String.t() | atom()),
        "updatedAt" => non_neg_integer(),
        "workloadIdentityDetails" => workload_identity_details()
      }

  """
  @type create_gateway_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      api_gateway_tool_override() :: %{
        "description" => [String.t() | atom()],
        "method" => list(any()),
        "name" => [String.t() | atom()],
        "path" => [String.t() | atom()]
      }

  """
  @type api_gateway_tool_override() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      salesforce_oauth2_provider_config_input() :: %{
        "clientId" => String.t() | atom(),
        "clientSecret" => String.t() | atom()
      }

  """
  @type salesforce_oauth2_provider_config_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      inference_configuration() :: %{
        "maxTokens" => [integer()],
        "stopSequences" => list(String.t() | atom()),
        "temperature" => [float()],
        "topP" => [float()]
      }

  """
  @type inference_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_gateways_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_gateways_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cloud_watch_output_config() :: %{
        "logGroupName" => String.t() | atom()
      }

  """
  @type cloud_watch_output_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_oauth2_credential_provider_request() :: %{
        required("name") => String.t() | atom()
      }

  """
  @type get_oauth2_credential_provider_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_online_evaluation_config_response() :: %{
        "executionStatus" => list(any()),
        "failureReason" => [String.t() | atom()],
        "onlineEvaluationConfigArn" => String.t() | atom(),
        "onlineEvaluationConfigId" => String.t() | atom(),
        "status" => list(any()),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type update_online_evaluation_config_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_evaluators_response() :: %{
        "evaluators" => list(evaluator_summary()),
        "nextToken" => [String.t() | atom()]
      }

  """
  @type list_evaluators_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_workload_identity_request() :: %{
        required("name") => String.t() | atom()
      }

  """
  @type get_workload_identity_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_evaluator_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("evaluatorConfig") => list(),
        optional("level") => list(any())
      }

  """
  @type update_evaluator_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_policies_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("targetResourceScope") => String.t() | atom()
      }

  """
  @type list_policies_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      message_based_trigger_input() :: %{
        "messageCount" => [integer()]
      }

  """
  @type message_based_trigger_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_policy_request() :: %{}

  """
  @type get_policy_request() :: %{}

  @typedoc """

  ## Example:

      api_gateway_target_configuration() :: %{
        "apiGatewayToolConfiguration" => api_gateway_tool_configuration(),
        "restApiId" => [String.t() | atom()],
        "stage" => [String.t() | atom()]
      }

  """
  @type api_gateway_target_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_policy_generation_assets_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_policy_generation_assets_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_gateway_target_response() :: %{
        "gatewayArn" => String.t() | atom(),
        "status" => list(any()),
        "statusReasons" => list(String.t() | atom()),
        "targetId" => String.t() | atom()
      }

  """
  @type delete_gateway_target_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      api_gateway_tool_filter() :: %{
        "filterPath" => [String.t() | atom()],
        "methods" => list(list(any())())
      }

  """
  @type api_gateway_tool_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      lifecycle_configuration() :: %{
        "idleRuntimeSessionTimeout" => [integer()],
        "maxLifetime" => [integer()]
      }

  """
  @type lifecycle_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tool_definition() :: %{
        "description" => [String.t() | atom()],
        "inputSchema" => schema_definition(),
        "name" => [String.t() | atom()],
        "outputSchema" => schema_definition()
      }

  """
  @type tool_definition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      decryption_failure() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type decryption_failure() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      code_interpreter_summary() :: %{
        "codeInterpreterArn" => String.t() | atom(),
        "codeInterpreterId" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "lastUpdatedAt" => non_neg_integer(),
        "name" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type code_interpreter_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_policy_engine_response() :: %{
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "name" => String.t() | atom(),
        "policyEngineArn" => String.t() | atom(),
        "policyEngineId" => String.t() | atom(),
        "status" => list(any()),
        "statusReasons" => list(String.t() | atom()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type get_policy_engine_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_browser_response() :: %{
        "browserArn" => String.t() | atom(),
        "browserId" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "status" => list(any())
      }

  """
  @type create_browser_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      modify_self_managed_configuration() :: %{
        "historicalContextWindowSize" => [integer()],
        "invocationConfiguration" => modify_invocation_configuration_input(),
        "triggerConditions" => list(list())
      }

  """
  @type modify_self_managed_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      encryption_failure() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type encryption_failure() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      policy_generation_asset() :: %{
        "definition" => list(),
        "findings" => list(finding()),
        "policyGenerationAssetId" => String.t() | atom(),
        "rawTextFragment" => String.t() | atom()
      }

  """
  @type policy_generation_asset() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_browser_response() :: %{
        "browserId" => String.t() | atom(),
        "lastUpdatedAt" => non_neg_integer(),
        "status" => list(any())
      }

  """
  @type delete_browser_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_online_evaluation_config_request() :: %{}

  """
  @type get_online_evaluation_config_request() :: %{}

  @typedoc """

  ## Example:

      create_policy_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("validationMode") => list(any()),
        required("definition") => list(),
        required("name") => String.t() | atom()
      }

  """
  @type create_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_agent_runtime_request() :: %{
        optional("agentRuntimeVersion") => String.t() | atom()
      }

  """
  @type get_agent_runtime_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_memory_input() :: %{
        optional("view") => list(any())
      }

  """
  @type get_memory_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      semantic_memory_strategy_input() :: %{
        "description" => String.t() | atom(),
        "name" => String.t() | atom(),
        "namespaces" => list(String.t() | atom())
      }

  """
  @type semantic_memory_strategy_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_memory_input() :: %{
        optional("clientToken") => String.t() | atom()
      }

  """
  @type delete_memory_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_gateway_response() :: %{
        "gatewayId" => String.t() | atom(),
        "status" => list(any()),
        "statusReasons" => list(String.t() | atom())
      }

  """
  @type delete_gateway_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      summary_consolidation_override() :: %{
        "appendToPrompt" => String.t() | atom(),
        "modelId" => [String.t() | atom()]
      }

  """
  @type summary_consolidation_override() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_api_key_credential_provider_response() :: %{
        "apiKeySecretArn" => secret(),
        "credentialProviderArn" => String.t() | atom(),
        "name" => String.t() | atom()
      }

  """
  @type create_api_key_credential_provider_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      custom_memory_strategy_input() :: %{
        "configuration" => list(),
        "description" => String.t() | atom(),
        "name" => String.t() | atom(),
        "namespaces" => list(String.t() | atom())
      }

  """
  @type custom_memory_strategy_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      episodic_override_reflection_configuration_input() :: %{
        "appendToPrompt" => String.t() | atom(),
        "modelId" => [String.t() | atom()],
        "namespaces" => list(String.t() | atom())
      }

  """
  @type episodic_override_reflection_configuration_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_resource_policy_response() :: %{
        "policy" => String.t() | atom()
      }

  """
  @type get_resource_policy_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      user_preference_override_configuration_input() :: %{
        "consolidation" => user_preference_override_consolidation_configuration_input(),
        "extraction" => user_preference_override_extraction_configuration_input()
      }

  """
  @type user_preference_override_configuration_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      episodic_reflection_configuration() :: %{
        "namespaces" => list(String.t() | atom())
      }

  """
  @type episodic_reflection_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_gateway_target_response() :: %{
        "createdAt" => non_neg_integer(),
        "credentialProviderConfigurations" => list(credential_provider_configuration()),
        "description" => String.t() | atom(),
        "gatewayArn" => String.t() | atom(),
        "lastSynchronizedAt" => non_neg_integer(),
        "metadataConfiguration" => metadata_configuration(),
        "name" => String.t() | atom(),
        "status" => list(any()),
        "statusReasons" => list(String.t() | atom()),
        "targetConfiguration" => list(),
        "targetId" => String.t() | atom(),
        "updatedAt" => non_neg_integer()
      }

  """
  @type get_gateway_target_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      episodic_override_configuration_input() :: %{
        "consolidation" => episodic_override_consolidation_configuration_input(),
        "extraction" => episodic_override_extraction_configuration_input(),
        "reflection" => episodic_override_reflection_configuration_input()
      }

  """
  @type episodic_override_configuration_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_online_evaluation_config_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("dataSourceConfig") => list(),
        optional("description") => String.t() | atom(),
        optional("evaluationExecutionRoleArn") => String.t() | atom(),
        optional("evaluators") => list(list()),
        optional("executionStatus") => list(any()),
        optional("rule") => rule()
      }

  """
  @type update_online_evaluation_config_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_evaluator_response() :: %{
        "evaluatorArn" => String.t() | atom(),
        "evaluatorId" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type delete_evaluator_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      online_evaluation_config_summary() :: %{
        "createdAt" => [non_neg_integer()],
        "description" => String.t() | atom(),
        "executionStatus" => list(any()),
        "failureReason" => [String.t() | atom()],
        "onlineEvaluationConfigArn" => String.t() | atom(),
        "onlineEvaluationConfigId" => String.t() | atom(),
        "onlineEvaluationConfigName" => String.t() | atom(),
        "status" => list(any()),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type online_evaluation_config_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_workload_identity_response() :: %{}

  """
  @type delete_workload_identity_response() :: %{}

  @typedoc """

  ## Example:

      semantic_extraction_override() :: %{
        "appendToPrompt" => String.t() | atom(),
        "modelId" => [String.t() | atom()]
      }

  """
  @type semantic_extraction_override() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      linkedin_oauth2_provider_config_output() :: %{
        "clientId" => String.t() | atom(),
        "oauthDiscovery" => list()
      }

  """
  @type linkedin_oauth2_provider_config_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      gateway_policy_engine_configuration() :: %{
        "arn" => String.t() | atom(),
        "mode" => list(any())
      }

  """
  @type gateway_policy_engine_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      semantic_override_consolidation_configuration_input() :: %{
        "appendToPrompt" => String.t() | atom(),
        "modelId" => [String.t() | atom()]
      }

  """
  @type semantic_override_consolidation_configuration_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_policy_response() :: %{
        "createdAt" => non_neg_integer(),
        "definition" => list(),
        "description" => String.t() | atom(),
        "name" => String.t() | atom(),
        "policyArn" => String.t() | atom(),
        "policyEngineId" => String.t() | atom(),
        "policyId" => String.t() | atom(),
        "status" => list(any()),
        "statusReasons" => list(String.t() | atom()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type delete_policy_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_agent_runtime_endpoint_response() :: %{
        "agentRuntimeArn" => String.t() | atom(),
        "agentRuntimeEndpointArn" => String.t() | atom(),
        "agentRuntimeId" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "endpointName" => String.t() | atom(),
        "status" => list(any()),
        "targetVersion" => String.t() | atom()
      }

  """
  @type create_agent_runtime_endpoint_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      self_managed_configuration_input() :: %{
        "historicalContextWindowSize" => [integer()],
        "invocationConfiguration" => invocation_configuration_input(),
        "triggerConditions" => list(list())
      }

  """
  @type self_managed_configuration_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_policy_response() :: %{
        "createdAt" => non_neg_integer(),
        "definition" => list(),
        "description" => String.t() | atom(),
        "name" => String.t() | atom(),
        "policyArn" => String.t() | atom(),
        "policyEngineId" => String.t() | atom(),
        "policyId" => String.t() | atom(),
        "status" => list(any()),
        "statusReasons" => list(String.t() | atom()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type update_policy_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_api_key_credential_provider_request() :: %{
        optional("tags") => map(),
        required("apiKey") => String.t() | atom(),
        required("name") => String.t() | atom()
      }

  """
  @type create_api_key_credential_provider_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_browser_response() :: %{
        "browserArn" => String.t() | atom(),
        "browserId" => String.t() | atom(),
        "browserSigning" => browser_signing_config_output(),
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "executionRoleArn" => String.t() | atom(),
        "failureReason" => [String.t() | atom()],
        "lastUpdatedAt" => non_neg_integer(),
        "name" => String.t() | atom(),
        "networkConfiguration" => browser_network_configuration(),
        "recording" => recording_config(),
        "status" => list(any())
      }

  """
  @type get_browser_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      workload_identity_details() :: %{
        "workloadIdentityArn" => String.t() | atom()
      }

  """
  @type workload_identity_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t() | atom())
      }

  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      synchronize_gateway_targets_request() :: %{
        required("targetIdList") => list(String.t() | atom())
      }

  """
  @type synchronize_gateway_targets_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_gateway_target_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("credentialProviderConfigurations") => list(credential_provider_configuration()),
        optional("description") => String.t() | atom(),
        optional("metadataConfiguration") => metadata_configuration(),
        required("name") => String.t() | atom(),
        required("targetConfiguration") => list()
      }

  """
  @type create_gateway_target_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      semantic_consolidation_override() :: %{
        "appendToPrompt" => String.t() | atom(),
        "modelId" => [String.t() | atom()]
      }

  """
  @type semantic_consolidation_override() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_memory_input() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("eventExpiryDuration") => [integer()],
        optional("memoryExecutionRoleArn") => String.t() | atom(),
        optional("memoryStrategies") => modify_memory_strategies()
      }

  """
  @type update_memory_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_oauth2_credential_provider_request() :: %{
        required("name") => String.t() | atom()
      }

  """
  @type delete_oauth2_credential_provider_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_gateway_target_response() :: %{
        "createdAt" => non_neg_integer(),
        "credentialProviderConfigurations" => list(credential_provider_configuration()),
        "description" => String.t() | atom(),
        "gatewayArn" => String.t() | atom(),
        "lastSynchronizedAt" => non_neg_integer(),
        "metadataConfiguration" => metadata_configuration(),
        "name" => String.t() | atom(),
        "status" => list(any()),
        "statusReasons" => list(String.t() | atom()),
        "targetConfiguration" => list(),
        "targetId" => String.t() | atom(),
        "updatedAt" => non_neg_integer()
      }

  """
  @type create_gateway_target_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      github_oauth2_provider_config_input() :: %{
        "clientId" => String.t() | atom(),
        "clientSecret" => String.t() | atom()
      }

  """
  @type github_oauth2_provider_config_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_policy_engines_response() :: %{
        "nextToken" => String.t() | atom(),
        "policyEngines" => list(policy_engine())
      }

  """
  @type list_policy_engines_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_policy_engine_request() :: %{}

  """
  @type get_policy_engine_request() :: %{}

  @typedoc """

  ## Example:

      list_online_evaluation_configs_response() :: %{
        "nextToken" => [String.t() | atom()],
        "onlineEvaluationConfigs" => list(online_evaluation_config_summary())
      }

  """
  @type list_online_evaluation_configs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      oauth2_authorization_server_metadata() :: %{
        "authorizationEndpoint" => String.t() | atom(),
        "issuer" => String.t() | atom(),
        "responseTypes" => list(String.t() | atom()),
        "tokenEndpoint" => String.t() | atom(),
        "tokenEndpointAuthMethods" => list(String.t() | atom())
      }

  """
  @type oauth2_authorization_server_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_gateway_target_request() :: %{}

  """
  @type get_gateway_target_request() :: %{}

  @typedoc """

  ## Example:

      github_oauth2_provider_config_output() :: %{
        "clientId" => String.t() | atom(),
        "oauthDiscovery" => list()
      }

  """
  @type github_oauth2_provider_config_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_evaluator_request() :: %{}

  """
  @type delete_evaluator_request() :: %{}

  @typedoc """

  ## Example:

      get_api_key_credential_provider_request() :: %{
        required("name") => String.t() | atom()
      }

  """
  @type get_api_key_credential_provider_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_agent_runtime_request() :: %{
        optional("authorizerConfiguration") => list(),
        optional("clientToken") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("environmentVariables") => map(),
        optional("lifecycleConfiguration") => lifecycle_configuration(),
        optional("protocolConfiguration") => protocol_configuration(),
        optional("requestHeaderConfiguration") => list(),
        optional("tags") => map(),
        required("agentRuntimeArtifact") => list(),
        required("agentRuntimeName") => String.t() | atom(),
        required("networkConfiguration") => network_configuration(),
        required("roleArn") => String.t() | atom()
      }

  """
  @type create_agent_runtime_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      gateway_summary() :: %{
        "authorizerType" => list(any()),
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "gatewayId" => String.t() | atom(),
        "name" => String.t() | atom(),
        "protocolType" => list(any()),
        "status" => list(any()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type gateway_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      episodic_memory_strategy_input() :: %{
        "description" => String.t() | atom(),
        "name" => String.t() | atom(),
        "namespaces" => list(String.t() | atom()),
        "reflectionConfiguration" => episodic_reflection_configuration_input()
      }

  """
  @type episodic_memory_strategy_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_agent_runtime_endpoint_request() :: %{
        optional("clientToken") => String.t() | atom()
      }

  """
  @type delete_agent_runtime_endpoint_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_agent_runtime_endpoint_response() :: %{
        "agentRuntimeArn" => String.t() | atom(),
        "agentRuntimeEndpointArn" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "failureReason" => [String.t() | atom()],
        "id" => String.t() | atom(),
        "lastUpdatedAt" => non_neg_integer(),
        "liveVersion" => String.t() | atom(),
        "name" => String.t() | atom(),
        "status" => list(any()),
        "targetVersion" => String.t() | atom()
      }

  """
  @type get_agent_runtime_endpoint_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_agent_runtime_request() :: %{
        optional("authorizerConfiguration") => list(),
        optional("clientToken") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("environmentVariables") => map(),
        optional("lifecycleConfiguration") => lifecycle_configuration(),
        optional("protocolConfiguration") => protocol_configuration(),
        optional("requestHeaderConfiguration") => list(),
        required("agentRuntimeArtifact") => list(),
        required("networkConfiguration") => network_configuration(),
        required("roleArn") => String.t() | atom()
      }

  """
  @type update_agent_runtime_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_agent_runtime_response() :: %{
        "agentRuntimeArn" => String.t() | atom(),
        "agentRuntimeId" => String.t() | atom(),
        "agentRuntimeVersion" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "lastUpdatedAt" => non_neg_integer(),
        "status" => list(any()),
        "workloadIdentityDetails" => workload_identity_details()
      }

  """
  @type update_agent_runtime_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_api_key_credential_provider_request() :: %{
        required("name") => String.t() | atom()
      }

  """
  @type delete_api_key_credential_provider_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      throttled_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type throttled_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_online_evaluation_config_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("tags") => map(),
        required("dataSourceConfig") => list(),
        required("enableOnCreate") => [boolean()],
        required("evaluationExecutionRoleArn") => String.t() | atom(),
        required("evaluators") => list(list()),
        required("onlineEvaluationConfigName") => String.t() | atom(),
        required("rule") => rule()
      }

  """
  @type create_online_evaluation_config_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_browser_request() :: %{
        optional("browserSigning") => browser_signing_config_input(),
        optional("clientToken") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("executionRoleArn") => String.t() | atom(),
        optional("recording") => recording_config(),
        optional("tags") => map(),
        required("name") => String.t() | atom(),
        required("networkConfiguration") => browser_network_configuration()
      }

  """
  @type create_browser_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_workload_identity_request() :: %{
        optional("allowedResourceOauth2ReturnUrls") => list(String.t() | atom()),
        required("name") => String.t() | atom()
      }

  """
  @type update_workload_identity_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_gateway_target_response() :: %{
        "createdAt" => non_neg_integer(),
        "credentialProviderConfigurations" => list(credential_provider_configuration()),
        "description" => String.t() | atom(),
        "gatewayArn" => String.t() | atom(),
        "lastSynchronizedAt" => non_neg_integer(),
        "metadataConfiguration" => metadata_configuration(),
        "name" => String.t() | atom(),
        "status" => list(any()),
        "statusReasons" => list(String.t() | atom()),
        "targetConfiguration" => list(),
        "targetId" => String.t() | atom(),
        "updatedAt" => non_neg_integer()
      }

  """
  @type update_gateway_target_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_online_evaluation_config_response() :: %{
        "createdAt" => [non_neg_integer()],
        "executionStatus" => list(any()),
        "failureReason" => [String.t() | atom()],
        "onlineEvaluationConfigArn" => String.t() | atom(),
        "onlineEvaluationConfigId" => String.t() | atom(),
        "outputConfig" => output_config(),
        "status" => list(any())
      }

  """
  @type create_online_evaluation_config_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_workload_identity_request() :: %{
        optional("allowedResourceOauth2ReturnUrls") => list(String.t() | atom()),
        optional("tags") => map(),
        required("name") => String.t() | atom()
      }

  """
  @type create_workload_identity_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_gateway_response() :: %{
        "authorizerConfiguration" => list(),
        "authorizerType" => list(any()),
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "exceptionLevel" => list(any()),
        "gatewayArn" => String.t() | atom(),
        "gatewayId" => String.t() | atom(),
        "gatewayUrl" => String.t() | atom(),
        "interceptorConfigurations" => list(gateway_interceptor_configuration()),
        "kmsKeyArn" => String.t() | atom(),
        "name" => String.t() | atom(),
        "policyEngineConfiguration" => gateway_policy_engine_configuration(),
        "protocolConfiguration" => list(),
        "protocolType" => list(any()),
        "roleArn" => String.t() | atom(),
        "status" => list(any()),
        "statusReasons" => list(String.t() | atom()),
        "updatedAt" => non_neg_integer(),
        "workloadIdentityDetails" => workload_identity_details()
      }

  """
  @type get_gateway_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      episodic_reflection_configuration_input() :: %{
        "namespaces" => list(String.t() | atom())
      }

  """
  @type episodic_reflection_configuration_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      included_oauth2_provider_config_output() :: %{
        "clientId" => String.t() | atom(),
        "oauthDiscovery" => list()
      }

  """
  @type included_oauth2_provider_config_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      llm_as_a_judge_evaluator_config() :: %{
        "instructions" => String.t() | atom(),
        "modelConfig" => list(),
        "ratingScale" => list()
      }

  """
  @type llm_as_a_judge_evaluator_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_memory_output() :: %{
        "memory" => memory()
      }

  """
  @type create_memory_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      authorizing_claim_match_value_type() :: %{
        "claimMatchOperator" => list(any()),
        "claimMatchValue" => list()
      }

  """
  @type authorizing_claim_match_value_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      episodic_reflection_override() :: %{
        "appendToPrompt" => String.t() | atom(),
        "modelId" => [String.t() | atom()],
        "namespaces" => list(String.t() | atom())
      }

  """
  @type episodic_reflection_override() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      episodic_override_consolidation_configuration_input() :: %{
        "appendToPrompt" => String.t() | atom(),
        "modelId" => [String.t() | atom()]
      }

  """
  @type episodic_override_consolidation_configuration_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_code_interpreter_request() :: %{
        optional("clientToken") => String.t() | atom()
      }

  """
  @type delete_code_interpreter_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      target_summary() :: %{
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "name" => String.t() | atom(),
        "status" => list(any()),
        "targetId" => String.t() | atom(),
        "updatedAt" => non_neg_integer()
      }

  """
  @type target_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      set_token_vault_cm_k_response() :: %{
        "kmsConfiguration" => kms_configuration(),
        "lastModifiedDate" => [non_neg_integer()],
        "tokenVaultId" => String.t() | atom()
      }

  """
  @type set_token_vault_cm_k_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      bedrock_evaluator_model_config() :: %{
        "additionalModelRequestFields" => any(),
        "inferenceConfig" => inference_configuration(),
        "modelId" => String.t() | atom()
      }

  """
  @type bedrock_evaluator_model_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      oauth2_credential_provider_item() :: %{
        "createdTime" => [non_neg_integer()],
        "credentialProviderArn" => String.t() | atom(),
        "credentialProviderVendor" => list(any()),
        "lastUpdatedTime" => [non_neg_integer()],
        "name" => String.t() | atom()
      }

  """
  @type oauth2_credential_provider_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_limit_exceeded_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type resource_limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      workload_identity_type() :: %{
        "name" => String.t() | atom(),
        "workloadIdentityArn" => String.t() | atom()
      }

  """
  @type workload_identity_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      custom_oauth2_provider_config_input() :: %{
        "clientId" => String.t() | atom(),
        "clientSecret" => String.t() | atom(),
        "oauthDiscovery" => list()
      }

  """
  @type custom_oauth2_provider_config_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_oauth2_credential_provider_request() :: %{
        optional("tags") => map(),
        required("credentialProviderVendor") => list(any()),
        required("name") => String.t() | atom(),
        required("oauth2ProviderConfigInput") => list()
      }

  """
  @type create_oauth2_credential_provider_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      gateway_api_key_credential_provider() :: %{
        "credentialLocation" => list(any()),
        "credentialParameterName" => String.t() | atom(),
        "credentialPrefix" => String.t() | atom(),
        "providerArn" => String.t() | atom()
      }

  """
  @type gateway_api_key_credential_provider() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_workload_identity_response() :: %{
        "allowedResourceOauth2ReturnUrls" => list(String.t() | atom()),
        "createdTime" => [non_neg_integer()],
        "lastUpdatedTime" => [non_neg_integer()],
        "name" => String.t() | atom(),
        "workloadIdentityArn" => String.t() | atom()
      }

  """
  @type get_workload_identity_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_agent_runtime_endpoint_request() :: %{}

  """
  @type get_agent_runtime_endpoint_request() :: %{}

  @typedoc """

  ## Example:

      custom_oauth2_provider_config_output() :: %{
        "clientId" => String.t() | atom(),
        "oauthDiscovery" => list()
      }

  """
  @type custom_oauth2_provider_config_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_code_interpreter_response() :: %{
        "codeInterpreterArn" => String.t() | atom(),
        "codeInterpreterId" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "executionRoleArn" => String.t() | atom(),
        "failureReason" => [String.t() | atom()],
        "lastUpdatedAt" => non_neg_integer(),
        "name" => String.t() | atom(),
        "networkConfiguration" => code_interpreter_network_configuration(),
        "status" => list(any())
      }

  """
  @type get_code_interpreter_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_online_evaluation_config_response() :: %{
        "createdAt" => [non_neg_integer()],
        "dataSourceConfig" => list(),
        "description" => String.t() | atom(),
        "evaluationExecutionRoleArn" => String.t() | atom(),
        "evaluators" => list(list()),
        "executionStatus" => list(any()),
        "failureReason" => [String.t() | atom()],
        "onlineEvaluationConfigArn" => String.t() | atom(),
        "onlineEvaluationConfigId" => String.t() | atom(),
        "onlineEvaluationConfigName" => String.t() | atom(),
        "outputConfig" => output_config(),
        "rule" => rule(),
        "status" => list(any()),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type get_online_evaluation_config_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      vpc_config() :: %{
        "securityGroups" => list(String.t() | atom()),
        "subnets" => list(String.t() | atom())
      }

  """
  @type vpc_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      modify_memory_strategies() :: %{
        "addMemoryStrategies" => list(list()),
        "deleteMemoryStrategies" => list(delete_memory_strategy_input()),
        "modifyMemoryStrategies" => list(modify_memory_strategy_input())
      }

  """
  @type modify_memory_strategies() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type service_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      finding() :: %{
        "description" => String.t() | atom(),
        "type" => list(any())
      }

  """
  @type finding() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      self_managed_configuration() :: %{
        "historicalContextWindowSize" => [integer()],
        "invocationConfiguration" => invocation_configuration(),
        "triggerConditions" => list(list())
      }

  """
  @type self_managed_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invocation_configuration_input() :: %{
        "payloadDeliveryBucketName" => [String.t() | atom()],
        "topicArn" => String.t() | atom()
      }

  """
  @type invocation_configuration_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      secret() :: %{
        "secretArn" => String.t() | atom()
      }

  """
  @type secret() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      episodic_override_extraction_configuration_input() :: %{
        "appendToPrompt" => String.t() | atom(),
        "modelId" => [String.t() | atom()]
      }

  """
  @type episodic_override_extraction_configuration_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_oauth2_credential_provider_request() :: %{
        required("credentialProviderVendor") => list(any()),
        required("name") => String.t() | atom(),
        required("oauth2ProviderConfigInput") => list()
      }

  """
  @type update_oauth2_credential_provider_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      session_config() :: %{
        "sessionTimeoutMinutes" => [integer()]
      }

  """
  @type session_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_agent_runtimes_response() :: %{
        "agentRuntimes" => list(agent_runtime()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_agent_runtimes_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_policy_request() :: %{
        optional("description") => String.t() | atom(),
        optional("validationMode") => list(any()),
        required("definition") => list()
      }

  """
  @type update_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_policy_generations_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_policy_generations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_workload_identities_response() :: %{
        "nextToken" => [String.t() | atom()],
        "workloadIdentities" => list(workload_identity_type())
      }

  """
  @type list_workload_identities_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_code_interpreter_request() :: %{}

  """
  @type get_code_interpreter_request() :: %{}

  @typedoc """

  ## Example:

      create_evaluator_response() :: %{
        "createdAt" => [non_neg_integer()],
        "evaluatorArn" => String.t() | atom(),
        "evaluatorId" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type create_evaluator_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      user_preference_extraction_override() :: %{
        "appendToPrompt" => String.t() | atom(),
        "modelId" => [String.t() | atom()]
      }

  """
  @type user_preference_extraction_override() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      token_based_trigger() :: %{
        "tokenCount" => [integer()]
      }

  """
  @type token_based_trigger() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception_field() :: %{
        "message" => [String.t() | atom()],
        "name" => [String.t() | atom()]
      }

  """
  @type validation_exception_field() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_online_evaluation_config_response() :: %{
        "onlineEvaluationConfigArn" => String.t() | atom(),
        "onlineEvaluationConfigId" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type delete_online_evaluation_config_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cedar_policy() :: %{
        "statement" => String.t() | atom()
      }

  """
  @type cedar_policy() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_policy_generation_assets_response() :: %{
        "nextToken" => String.t() | atom(),
        "policyGenerationAssets" => list(policy_generation_asset())
      }

  """
  @type list_policy_generation_assets_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      policy_generation() :: %{
        "createdAt" => non_neg_integer(),
        "findings" => String.t() | atom(),
        "name" => String.t() | atom(),
        "policyEngineId" => String.t() | atom(),
        "policyGenerationArn" => String.t() | atom(),
        "policyGenerationId" => String.t() | atom(),
        "resource" => list(),
        "status" => list(any()),
        "statusReasons" => list(String.t() | atom()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type policy_generation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      s3_location() :: %{
        "bucket" => [String.t() | atom()],
        "prefix" => [String.t() | atom()],
        "versionId" => [String.t() | atom()]
      }

  """
  @type s3_location() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      container_configuration() :: %{
        "containerUri" => String.t() | atom()
      }

  """
  @type container_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_policy_generations_response() :: %{
        "nextToken" => String.t() | atom(),
        "policyGenerations" => list(policy_generation())
      }

  """
  @type list_policy_generations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_memory_strategy_input() :: %{
        "memoryStrategyId" => [String.t() | atom()]
      }

  """
  @type delete_memory_strategy_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_gateway_response() :: %{
        "authorizerConfiguration" => list(),
        "authorizerType" => list(any()),
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "exceptionLevel" => list(any()),
        "gatewayArn" => String.t() | atom(),
        "gatewayId" => String.t() | atom(),
        "gatewayUrl" => String.t() | atom(),
        "interceptorConfigurations" => list(gateway_interceptor_configuration()),
        "kmsKeyArn" => String.t() | atom(),
        "name" => String.t() | atom(),
        "policyEngineConfiguration" => gateway_policy_engine_configuration(),
        "protocolConfiguration" => list(),
        "protocolType" => list(any()),
        "roleArn" => String.t() | atom(),
        "status" => list(any()),
        "statusReasons" => list(String.t() | atom()),
        "updatedAt" => non_neg_integer(),
        "workloadIdentityDetails" => workload_identity_details()
      }

  """
  @type update_gateway_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_workload_identity_request() :: %{
        required("name") => String.t() | atom()
      }

  """
  @type delete_workload_identity_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_resource_policy_request() :: %{}

  """
  @type get_resource_policy_request() :: %{}

  @typedoc """

  ## Example:

      salesforce_oauth2_provider_config_output() :: %{
        "clientId" => String.t() | atom(),
        "oauthDiscovery" => list()
      }

  """
  @type salesforce_oauth2_provider_config_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_oauth2_credential_provider_response() :: %{
        "callbackUrl" => [String.t() | atom()],
        "clientSecretArn" => secret(),
        "createdTime" => [non_neg_integer()],
        "credentialProviderArn" => String.t() | atom(),
        "credentialProviderVendor" => list(any()),
        "lastUpdatedTime" => [non_neg_integer()],
        "name" => String.t() | atom(),
        "oauth2ProviderConfigOutput" => list()
      }

  """
  @type update_oauth2_credential_provider_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_policy_generation_response() :: %{
        "createdAt" => non_neg_integer(),
        "findings" => String.t() | atom(),
        "name" => String.t() | atom(),
        "policyEngineId" => String.t() | atom(),
        "policyGenerationArn" => String.t() | atom(),
        "policyGenerationId" => String.t() | atom(),
        "resource" => list(),
        "status" => list(any()),
        "statusReasons" => list(String.t() | atom()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type get_policy_generation_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      filter() :: %{
        "key" => [String.t() | atom()],
        "operator" => list(any()),
        "value" => list()
      }

  """
  @type filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      rule() :: %{
        "filters" => list(filter()),
        "samplingConfig" => sampling_config(),
        "sessionConfig" => session_config()
      }

  """
  @type rule() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_policy_response() :: %{
        "createdAt" => non_neg_integer(),
        "definition" => list(),
        "description" => String.t() | atom(),
        "name" => String.t() | atom(),
        "policyArn" => String.t() | atom(),
        "policyEngineId" => String.t() | atom(),
        "policyId" => String.t() | atom(),
        "status" => list(any()),
        "statusReasons" => list(String.t() | atom()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type create_policy_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cloud_watch_logs_input_config() :: %{
        "logGroupNames" => list(String.t() | atom()),
        "serviceNames" => list(String.t() | atom())
      }

  """
  @type cloud_watch_logs_input_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      user_preference_override_extraction_configuration_input() :: %{
        "appendToPrompt" => String.t() | atom(),
        "modelId" => [String.t() | atom()]
      }

  """
  @type user_preference_override_extraction_configuration_input() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      microsoft_oauth2_provider_config_output() :: %{
        "clientId" => String.t() | atom(),
        "oauthDiscovery" => list()
      }

  """
  @type microsoft_oauth2_provider_config_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      o_auth_credential_provider() :: %{
        "customParameters" => map(),
        "defaultReturnUrl" => String.t() | atom(),
        "grantType" => list(any()),
        "providerArn" => String.t() | atom(),
        "scopes" => list(String.t() | atom())
      }

  """
  @type o_auth_credential_provider() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      slack_oauth2_provider_config_input() :: %{
        "clientId" => String.t() | atom(),
        "clientSecret" => String.t() | atom()
      }

  """
  @type slack_oauth2_provider_config_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_memory_output() :: %{
        "memory" => memory()
      }

  """
  @type update_memory_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_code_interpreter_response() :: %{
        "codeInterpreterArn" => String.t() | atom(),
        "codeInterpreterId" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "status" => list(any())
      }

  """
  @type create_code_interpreter_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_agent_runtime_versions_response() :: %{
        "agentRuntimes" => list(agent_runtime()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_agent_runtime_versions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_policy_response() :: %{
        "createdAt" => non_neg_integer(),
        "definition" => list(),
        "description" => String.t() | atom(),
        "name" => String.t() | atom(),
        "policyArn" => String.t() | atom(),
        "policyEngineId" => String.t() | atom(),
        "policyId" => String.t() | atom(),
        "status" => list(any()),
        "statusReasons" => list(String.t() | atom()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type get_policy_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_memory_output() :: %{
        "memory" => memory()
      }

  """
  @type get_memory_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_memory_output() :: %{
        "memoryId" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type delete_memory_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_online_evaluation_config_request() :: %{}

  """
  @type delete_online_evaluation_config_request() :: %{}

  @typedoc """

  ## Example:

      list_api_key_credential_providers_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => [String.t() | atom()]
      }

  """
  @type list_api_key_credential_providers_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      user_preference_memory_strategy_input() :: %{
        "description" => String.t() | atom(),
        "name" => String.t() | atom(),
        "namespaces" => list(String.t() | atom())
      }

  """
  @type user_preference_memory_strategy_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      microsoft_oauth2_provider_config_input() :: %{
        "clientId" => String.t() | atom(),
        "clientSecret" => String.t() | atom(),
        "tenantId" => String.t() | atom()
      }

  """
  @type microsoft_oauth2_provider_config_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_browsers_response() :: %{
        "browserSummaries" => list(browser_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_browsers_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_policy_request() :: %{}

  """
  @type delete_policy_request() :: %{}

  @typedoc """

  ## Example:

      get_policy_generation_request() :: %{}

  """
  @type get_policy_generation_request() :: %{}

  @typedoc """

  ## Example:

      delete_browser_request() :: %{
        optional("clientToken") => String.t() | atom()
      }

  """
  @type delete_browser_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      sampling_config() :: %{
        "samplingPercentage" => float()
      }

  """
  @type sampling_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_code_interpreter_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("executionRoleArn") => String.t() | atom(),
        optional("tags") => map(),
        required("name") => String.t() | atom(),
        required("networkConfiguration") => code_interpreter_network_configuration()
      }

  """
  @type create_code_interpreter_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_memories_input() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()]
      }

  """
  @type list_memories_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      metadata_configuration() :: %{
        "allowedQueryParameters" => list(String.t() | atom()),
        "allowedRequestHeaders" => list(String.t() | atom()),
        "allowedResponseHeaders" => list(String.t() | atom())
      }

  """
  @type metadata_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      modify_memory_strategy_input() :: %{
        "configuration" => modify_strategy_configuration(),
        "description" => String.t() | atom(),
        "memoryStrategyId" => [String.t() | atom()],
        "namespaces" => list(String.t() | atom())
      }

  """
  @type modify_memory_strategy_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_gateway_request() :: %{
        optional("authorizerConfiguration") => list(),
        optional("clientToken") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("exceptionLevel") => list(any()),
        optional("interceptorConfigurations") => list(gateway_interceptor_configuration()),
        optional("kmsKeyArn") => String.t() | atom(),
        optional("policyEngineConfiguration") => gateway_policy_engine_configuration(),
        optional("protocolConfiguration") => list(),
        optional("tags") => map(),
        required("authorizerType") => list(any()),
        required("name") => String.t() | atom(),
        required("protocolType") => list(any()),
        required("roleArn") => String.t() | atom()
      }

  """
  @type create_gateway_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      atlassian_oauth2_provider_config_output() :: %{
        "clientId" => String.t() | atom(),
        "oauthDiscovery" => list()
      }

  """
  @type atlassian_oauth2_provider_config_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      gateway_target() :: %{
        "createdAt" => non_neg_integer(),
        "credentialProviderConfigurations" => list(credential_provider_configuration()),
        "description" => String.t() | atom(),
        "gatewayArn" => String.t() | atom(),
        "lastSynchronizedAt" => non_neg_integer(),
        "metadataConfiguration" => metadata_configuration(),
        "name" => String.t() | atom(),
        "status" => list(any()),
        "statusReasons" => list(String.t() | atom()),
        "targetConfiguration" => list(),
        "targetId" => String.t() | atom(),
        "updatedAt" => non_neg_integer()
      }

  """
  @type gateway_target() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_agent_runtime_response() :: %{
        "agentRuntimeArn" => String.t() | atom(),
        "agentRuntimeArtifact" => list(),
        "agentRuntimeId" => String.t() | atom(),
        "agentRuntimeName" => String.t() | atom(),
        "agentRuntimeVersion" => String.t() | atom(),
        "authorizerConfiguration" => list(),
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "environmentVariables" => map(),
        "failureReason" => [String.t() | atom()],
        "lastUpdatedAt" => non_neg_integer(),
        "lifecycleConfiguration" => lifecycle_configuration(),
        "networkConfiguration" => network_configuration(),
        "protocolConfiguration" => protocol_configuration(),
        "requestHeaderConfiguration" => list(),
        "roleArn" => String.t() | atom(),
        "status" => list(any()),
        "workloadIdentityDetails" => workload_identity_details()
      }

  """
  @type get_agent_runtime_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_api_key_credential_provider_request() :: %{
        required("apiKey") => String.t() | atom(),
        required("name") => String.t() | atom()
      }

  """
  @type update_api_key_credential_provider_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_workload_identities_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()]
      }

  """
  @type list_workload_identities_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      network_configuration() :: %{
        "networkMode" => list(any()),
        "networkModeConfig" => vpc_config()
      }

  """
  @type network_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      message_based_trigger() :: %{
        "messageCount" => [integer()]
      }

  """
  @type message_based_trigger() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      slack_oauth2_provider_config_output() :: %{
        "clientId" => String.t() | atom(),
        "oauthDiscovery" => list()
      }

  """
  @type slack_oauth2_provider_config_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      policy() :: %{
        "createdAt" => non_neg_integer(),
        "definition" => list(),
        "description" => String.t() | atom(),
        "name" => String.t() | atom(),
        "policyArn" => String.t() | atom(),
        "policyEngineId" => String.t() | atom(),
        "policyId" => String.t() | atom(),
        "status" => list(any()),
        "statusReasons" => list(String.t() | atom()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type policy() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      episodic_consolidation_override() :: %{
        "appendToPrompt" => String.t() | atom(),
        "modelId" => [String.t() | atom()]
      }

  """
  @type episodic_consolidation_override() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_resource_policy_request() :: %{
        required("policy") => String.t() | atom()
      }

  """
  @type put_resource_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_policy_generation_request() :: %{
        optional("clientToken") => String.t() | atom(),
        required("content") => list(),
        required("name") => String.t() | atom(),
        required("resource") => list()
      }

  """
  @type start_policy_generation_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      set_token_vault_cm_k_request() :: %{
        optional("tokenVaultId") => String.t() | atom(),
        required("kmsConfiguration") => kms_configuration()
      }

  """
  @type set_token_vault_cm_k_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_agent_runtime_endpoint_response() :: %{
        "agentRuntimeId" => String.t() | atom(),
        "endpointName" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type delete_agent_runtime_endpoint_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_oauth2_credential_provider_response() :: %{
        "callbackUrl" => [String.t() | atom()],
        "clientSecretArn" => secret(),
        "createdTime" => [non_neg_integer()],
        "credentialProviderArn" => String.t() | atom(),
        "credentialProviderVendor" => list(any()),
        "lastUpdatedTime" => [non_neg_integer()],
        "name" => String.t() | atom(),
        "oauth2ProviderConfigOutput" => list()
      }

  """
  @type get_oauth2_credential_provider_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_policy_engine_response() :: %{
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "name" => String.t() | atom(),
        "policyEngineArn" => String.t() | atom(),
        "policyEngineId" => String.t() | atom(),
        "status" => list(any()),
        "statusReasons" => list(String.t() | atom()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type create_policy_engine_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_token_vault_response() :: %{
        "kmsConfiguration" => kms_configuration(),
        "lastModifiedDate" => [non_neg_integer()],
        "tokenVaultId" => String.t() | atom()
      }

  """
  @type get_token_vault_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      categorical_scale_definition() :: %{
        "definition" => [String.t() | atom()],
        "label" => [String.t() | atom()]
      }

  """
  @type categorical_scale_definition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      summary_override_configuration_input() :: %{
        "consolidation" => summary_override_consolidation_configuration_input()
      }

  """
  @type summary_override_configuration_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_evaluator_response() :: %{
        "createdAt" => [non_neg_integer()],
        "description" => String.t() | atom(),
        "evaluatorArn" => String.t() | atom(),
        "evaluatorConfig" => list(),
        "evaluatorId" => String.t() | atom(),
        "evaluatorName" => String.t() | atom(),
        "level" => list(any()),
        "lockedForModification" => [boolean()],
        "status" => list(any()),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type get_evaluator_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_agent_runtime_request() :: %{
        optional("clientToken") => String.t() | atom()
      }

  """
  @type delete_agent_runtime_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      strategy_configuration() :: %{
        "consolidation" => list(),
        "extraction" => list(),
        "reflection" => list(),
        "selfManagedConfiguration" => self_managed_configuration(),
        "type" => list(any())
      }

  """
  @type strategy_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      browser_signing_config_output() :: %{
        "enabled" => [boolean()]
      }

  """
  @type browser_signing_config_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      semantic_override_extraction_configuration_input() :: %{
        "appendToPrompt" => String.t() | atom(),
        "modelId" => [String.t() | atom()]
      }

  """
  @type semantic_override_extraction_configuration_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_policy_engine_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        required("name") => String.t() | atom()
      }

  """
  @type create_policy_engine_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      custom_j_w_t_authorizer_configuration() :: %{
        "allowedAudience" => list(String.t() | atom()),
        "allowedClients" => list(String.t() | atom()),
        "allowedScopes" => list(String.t() | atom()),
        "customClaims" => list(custom_claim_validation_type()),
        "discoveryUrl" => String.t() | atom()
      }

  """
  @type custom_j_w_t_authorizer_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_policy_engines_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_policy_engines_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      browser_network_configuration() :: %{
        "networkMode" => list(any()),
        "vpcConfig" => vpc_config()
      }

  """
  @type browser_network_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_api_key_credential_provider_response() :: %{}

  """
  @type delete_api_key_credential_provider_response() :: %{}

  @typedoc """

  ## Example:

      list_agent_runtime_endpoints_response() :: %{
        "nextToken" => String.t() | atom(),
        "runtimeEndpoints" => list(agent_runtime_endpoint())
      }

  """
  @type list_agent_runtime_endpoints_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      output_config() :: %{
        "cloudWatchConfig" => cloud_watch_output_config()
      }

  """
  @type output_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      agent_runtime_endpoint() :: %{
        "agentRuntimeArn" => String.t() | atom(),
        "agentRuntimeEndpointArn" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "id" => String.t() | atom(),
        "lastUpdatedAt" => non_neg_integer(),
        "liveVersion" => String.t() | atom(),
        "name" => String.t() | atom(),
        "status" => list(any()),
        "targetVersion" => String.t() | atom()
      }

  """
  @type agent_runtime_endpoint() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_gateway_request() :: %{}

  """
  @type delete_gateway_request() :: %{}

  @typedoc """

  ## Example:

      concurrent_modification_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type concurrent_modification_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_code_interpreter_response() :: %{
        "codeInterpreterId" => String.t() | atom(),
        "lastUpdatedAt" => non_neg_integer(),
        "status" => list(any())
      }

  """
  @type delete_code_interpreter_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_online_evaluation_configs_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()]
      }

  """
  @type list_online_evaluation_configs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_evaluator_response() :: %{
        "evaluatorArn" => String.t() | atom(),
        "evaluatorId" => String.t() | atom(),
        "status" => list(any()),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type update_evaluator_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_agent_runtime_response() :: %{
        "agentRuntimeId" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type delete_agent_runtime_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_evaluators_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()]
      }

  """
  @type list_evaluators_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      time_based_trigger() :: %{
        "idleSessionTimeout" => [integer()]
      }

  """
  @type time_based_trigger() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_policy_engine_response() :: %{
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "name" => String.t() | atom(),
        "policyEngineArn" => String.t() | atom(),
        "policyEngineId" => String.t() | atom(),
        "status" => list(any()),
        "statusReasons" => list(String.t() | atom()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type delete_policy_engine_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_oauth2_credential_provider_response() :: %{}

  """
  @type delete_oauth2_credential_provider_response() :: %{}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "fieldList" => list(validation_exception_field()),
        "message" => [String.t() | atom()],
        "reason" => list(any())
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

      episodic_extraction_override() :: %{
        "appendToPrompt" => String.t() | atom(),
        "modelId" => [String.t() | atom()]
      }

  """
  @type episodic_extraction_override() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      atlassian_oauth2_provider_config_input() :: %{
        "clientId" => String.t() | atom(),
        "clientSecret" => String.t() | atom()
      }

  """
  @type atlassian_oauth2_provider_config_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      m_c_p_gateway_configuration() :: %{
        "instructions" => String.t() | atom(),
        "searchType" => list(any()),
        "supportedVersions" => list(String.t() | atom())
      }

  """
  @type m_c_p_gateway_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_workload_identity_response() :: %{
        "allowedResourceOauth2ReturnUrls" => list(String.t() | atom()),
        "createdTime" => [non_neg_integer()],
        "lastUpdatedTime" => [non_neg_integer()],
        "name" => String.t() | atom(),
        "workloadIdentityArn" => String.t() | atom()
      }

  """
  @type update_workload_identity_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      api_key_credential_provider_item() :: %{
        "createdTime" => [non_neg_integer()],
        "credentialProviderArn" => String.t() | atom(),
        "lastUpdatedTime" => [non_neg_integer()],
        "name" => String.t() | atom()
      }

  """
  @type api_key_credential_provider_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_oauth2_credential_providers_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()]
      }

  """
  @type list_oauth2_credential_providers_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      interceptor_input_configuration() :: %{
        "passRequestHeaders" => [boolean()]
      }

  """
  @type interceptor_input_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      s3_configuration() :: %{
        "bucketOwnerAccountId" => String.t() | atom(),
        "uri" => String.t() | atom()
      }

  """
  @type s3_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_code_interpreters_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("type") => list(any())
      }

  """
  @type list_code_interpreters_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_resource_policy_response() :: %{
        "policy" => String.t() | atom()
      }

  """
  @type put_resource_policy_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      agent_runtime() :: %{
        "agentRuntimeArn" => String.t() | atom(),
        "agentRuntimeId" => String.t() | atom(),
        "agentRuntimeName" => String.t() | atom(),
        "agentRuntimeVersion" => String.t() | atom(),
        "description" => String.t() | atom(),
        "lastUpdatedAt" => non_neg_integer(),
        "status" => list(any())
      }

  """
  @type agent_runtime() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invocation_configuration() :: %{
        "payloadDeliveryBucketName" => [String.t() | atom()],
        "topicArn" => String.t() | atom()
      }

  """
  @type invocation_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      protocol_configuration() :: %{
        "serverProtocol" => list(any())
      }

  """
  @type protocol_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      mcp_server_target_configuration() :: %{
        "endpoint" => [String.t() | atom()]
      }

  """
  @type mcp_server_target_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      google_oauth2_provider_config_output() :: %{
        "clientId" => String.t() | atom(),
        "oauthDiscovery" => list()
      }

  """
  @type google_oauth2_provider_config_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_resource_policy_request() :: %{}

  """
  @type delete_resource_policy_request() :: %{}

  @typedoc """

  ## Example:

      semantic_override_configuration_input() :: %{
        "consolidation" => semantic_override_consolidation_configuration_input(),
        "extraction" => semantic_override_extraction_configuration_input()
      }

  """
  @type semantic_override_configuration_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      user_preference_consolidation_override() :: %{
        "appendToPrompt" => String.t() | atom(),
        "modelId" => [String.t() | atom()]
      }

  """
  @type user_preference_consolidation_override() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      synchronize_gateway_targets_response() :: %{
        "targets" => list(gateway_target())
      }

  """
  @type synchronize_gateway_targets_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      code_interpreter_network_configuration() :: %{
        "networkMode" => list(any()),
        "vpcConfig" => vpc_config()
      }

  """
  @type code_interpreter_network_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_browser_request() :: %{}

  """
  @type get_browser_request() :: %{}

  @typedoc """

  ## Example:

      browser_signing_config_input() :: %{
        "enabled" => [boolean()]
      }

  """
  @type browser_signing_config_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      policy_engine() :: %{
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "name" => String.t() | atom(),
        "policyEngineArn" => String.t() | atom(),
        "policyEngineId" => String.t() | atom(),
        "status" => list(any()),
        "statusReasons" => list(String.t() | atom()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type policy_engine() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      mcp_lambda_target_configuration() :: %{
        "lambdaArn" => String.t() | atom(),
        "toolSchema" => list()
      }

  """
  @type mcp_lambda_target_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      memory() :: %{
        "arn" => String.t() | atom(),
        "createdAt" => [non_neg_integer()],
        "description" => String.t() | atom(),
        "encryptionKeyArn" => String.t() | atom(),
        "eventExpiryDuration" => [integer()],
        "failureReason" => [String.t() | atom()],
        "id" => String.t() | atom(),
        "memoryExecutionRoleArn" => String.t() | atom(),
        "name" => String.t() | atom(),
        "status" => list(any()),
        "strategies" => list(memory_strategy()),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type memory() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_agent_runtime_response() :: %{
        "agentRuntimeArn" => String.t() | atom(),
        "agentRuntimeId" => String.t() | atom(),
        "agentRuntimeVersion" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "status" => list(any()),
        "workloadIdentityDetails" => workload_identity_details()
      }

  """
  @type create_agent_runtime_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      credential_provider_configuration() :: %{
        "credentialProvider" => list(),
        "credentialProviderType" => list(any())
      }

  """
  @type credential_provider_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_agent_runtime_endpoint_response() :: %{
        "agentRuntimeArn" => String.t() | atom(),
        "agentRuntimeEndpointArn" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "lastUpdatedAt" => non_neg_integer(),
        "liveVersion" => String.t() | atom(),
        "status" => list(any()),
        "targetVersion" => String.t() | atom()
      }

  """
  @type update_agent_runtime_endpoint_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_agent_runtime_endpoints_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_agent_runtime_endpoints_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_agent_runtimes_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_agent_runtimes_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_token_vault_request() :: %{
        optional("tokenVaultId") => String.t() | atom()
      }

  """
  @type get_token_vault_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_evaluator_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("tags") => map(),
        required("evaluatorConfig") => list(),
        required("evaluatorName") => String.t() | atom(),
        required("level") => list(any())
      }

  """
  @type create_evaluator_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_agent_runtime_endpoint_request() :: %{
        optional("agentRuntimeVersion") => String.t() | atom(),
        optional("clientToken") => String.t() | atom(),
        optional("description") => String.t() | atom()
      }

  """
  @type update_agent_runtime_endpoint_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_gateway_target_request() :: %{
        optional("credentialProviderConfigurations") => list(credential_provider_configuration()),
        optional("description") => String.t() | atom(),
        optional("metadataConfiguration") => metadata_configuration(),
        required("name") => String.t() | atom(),
        required("targetConfiguration") => list()
      }

  """
  @type update_gateway_target_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_workload_identity_response() :: %{
        "allowedResourceOauth2ReturnUrls" => list(String.t() | atom()),
        "name" => String.t() | atom(),
        "workloadIdentityArn" => String.t() | atom()
      }

  """
  @type create_workload_identity_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_policy_generation_response() :: %{
        "createdAt" => non_neg_integer(),
        "findings" => String.t() | atom(),
        "name" => String.t() | atom(),
        "policyEngineId" => String.t() | atom(),
        "policyGenerationArn" => String.t() | atom(),
        "policyGenerationId" => String.t() | atom(),
        "resource" => list(),
        "status" => list(any()),
        "statusReasons" => list(String.t() | atom()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type start_policy_generation_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_oauth2_credential_providers_response() :: %{
        "credentialProviders" => list(oauth2_credential_provider_item()),
        "nextToken" => [String.t() | atom()]
      }

  """
  @type list_oauth2_credential_providers_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_gateways_response() :: %{
        "items" => list(gateway_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_gateways_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      recording_config() :: %{
        "enabled" => [boolean()],
        "s3Location" => s3_location()
      }

  """
  @type recording_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_api_key_credential_provider_response() :: %{
        "apiKeySecretArn" => secret(),
        "createdTime" => [non_neg_integer()],
        "credentialProviderArn" => String.t() | atom(),
        "lastUpdatedTime" => [non_neg_integer()],
        "name" => String.t() | atom()
      }

  """
  @type update_api_key_credential_provider_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      evaluator_summary() :: %{
        "createdAt" => [non_neg_integer()],
        "description" => String.t() | atom(),
        "evaluatorArn" => String.t() | atom(),
        "evaluatorId" => String.t() | atom(),
        "evaluatorName" => String.t() | atom(),
        "evaluatorType" => list(any()),
        "level" => list(any()),
        "lockedForModification" => [boolean()],
        "status" => list(any()),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type evaluator_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      user_preference_override_consolidation_configuration_input() :: %{
        "appendToPrompt" => String.t() | atom(),
        "modelId" => [String.t() | atom()]
      }

  """
  @type user_preference_override_consolidation_configuration_input() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      list_api_key_credential_providers_response() :: %{
        "credentialProviders" => list(api_key_credential_provider_item()),
        "nextToken" => [String.t() | atom()]
      }

  """
  @type list_api_key_credential_providers_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      token_based_trigger_input() :: %{
        "tokenCount" => [integer()]
      }

  """
  @type token_based_trigger_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      google_oauth2_provider_config_input() :: %{
        "clientId" => String.t() | atom(),
        "clientSecret" => String.t() | atom()
      }

  """
  @type google_oauth2_provider_config_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_policy_engine_request() :: %{}

  """
  @type delete_policy_engine_request() :: %{}

  @typedoc """

  ## Example:

      list_gateway_targets_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_gateway_targets_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      modify_invocation_configuration_input() :: %{
        "payloadDeliveryBucketName" => [String.t() | atom()],
        "topicArn" => String.t() | atom()
      }

  """
  @type modify_invocation_configuration_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      linkedin_oauth2_provider_config_input() :: %{
        "clientId" => String.t() | atom(),
        "clientSecret" => String.t() | atom()
      }

  """
  @type linkedin_oauth2_provider_config_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_policy_engine_request() :: %{
        optional("description") => String.t() | atom()
      }

  """
  @type update_policy_engine_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_gateway_request() :: %{}

  """
  @type get_gateway_request() :: %{}

  @typedoc """

  ## Example:

      gateway_interceptor_configuration() :: %{
        "inputConfiguration" => interceptor_input_configuration(),
        "interceptionPoints" => list(list(any())()),
        "interceptor" => list()
      }

  """
  @type gateway_interceptor_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_memories_output() :: %{
        "memories" => list(memory_summary()),
        "nextToken" => [String.t() | atom()]
      }

  """
  @type list_memories_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_browsers_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("type") => list(any())
      }

  """
  @type list_browsers_request() :: %{(String.t() | atom()) => any()}

  @type create_agent_runtime_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_agent_runtime_endpoint_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_api_key_credential_provider_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_limit_exceeded_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | encryption_failure()
          | decryption_failure()
          | unauthorized_exception()

  @type create_browser_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_code_interpreter_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_evaluator_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_gateway_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_gateway_target_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_memory_errors() ::
          validation_exception()
          | access_denied_exception()
          | service_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | throttled_exception()

  @type create_oauth2_credential_provider_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_limit_exceeded_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | encryption_failure()
          | decryption_failure()
          | unauthorized_exception()

  @type create_online_evaluation_config_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_policy_engine_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_workload_identity_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type delete_agent_runtime_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_agent_runtime_endpoint_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_api_key_credential_provider_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type delete_browser_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_code_interpreter_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_evaluator_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_gateway_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_gateway_target_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_memory_errors() ::
          validation_exception()
          | access_denied_exception()
          | service_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | throttled_exception()

  @type delete_oauth2_credential_provider_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type delete_online_evaluation_config_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_policy_engine_errors() ::
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
          | resource_not_found_exception()

  @type delete_workload_identity_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type get_agent_runtime_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_agent_runtime_endpoint_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_api_key_credential_provider_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | decryption_failure()
          | unauthorized_exception()

  @type get_browser_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type get_code_interpreter_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type get_evaluator_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_gateway_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_gateway_target_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_memory_errors() ::
          validation_exception()
          | access_denied_exception()
          | service_exception()
          | resource_not_found_exception()
          | throttled_exception()

  @type get_oauth2_credential_provider_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | decryption_failure()
          | unauthorized_exception()

  @type get_online_evaluation_config_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_policy_engine_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_policy_generation_errors() ::
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
          | resource_not_found_exception()

  @type get_token_vault_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type get_workload_identity_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type list_agent_runtime_endpoints_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_agent_runtime_versions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_agent_runtimes_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_api_key_credential_providers_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type list_browsers_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_code_interpreters_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_evaluators_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_gateway_targets_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_gateways_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_memories_errors() ::
          validation_exception()
          | access_denied_exception()
          | service_exception()
          | resource_not_found_exception()
          | throttled_exception()

  @type list_oauth2_credential_providers_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type list_online_evaluation_configs_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_policies_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_policy_engines_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_policy_generation_assets_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_policy_generations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_workload_identities_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type put_resource_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type set_token_vault_cm_k_errors() ::
          throttling_exception()
          | validation_exception()
          | concurrent_modification_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type start_policy_generation_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type synchronize_gateway_targets_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_agent_runtime_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_agent_runtime_endpoint_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_api_key_credential_provider_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | encryption_failure()
          | decryption_failure()
          | unauthorized_exception()

  @type update_evaluator_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_gateway_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_gateway_target_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_memory_errors() ::
          validation_exception()
          | access_denied_exception()
          | service_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | throttled_exception()

  @type update_oauth2_credential_provider_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | encryption_failure()
          | decryption_failure()
          | unauthorized_exception()

  @type update_online_evaluation_config_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_policy_engine_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_workload_identity_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  def metadata do
    %{
      api_version: "2023-06-05",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "bedrock-agentcore-control",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Bedrock AgentCore Control",
      signature_version: "v4",
      signing_name: "bedrock-agentcore",
      target_prefix: nil
    }
  end

  @doc """
  Creates an Amazon Bedrock AgentCore Runtime.
  """
  @spec create_agent_runtime(map(), create_agent_runtime_request(), list()) ::
          {:ok, create_agent_runtime_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_agent_runtime_errors()}
  def create_agent_runtime(%Client{} = client, input, options \\ []) do
    url_path = "/runtimes/"
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
      202
    )
  end

  @doc """
  Creates an AgentCore Runtime endpoint.
  """
  @spec create_agent_runtime_endpoint(
          map(),
          String.t() | atom(),
          create_agent_runtime_endpoint_request(),
          list()
        ) ::
          {:ok, create_agent_runtime_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_agent_runtime_endpoint_errors()}
  def create_agent_runtime_endpoint(%Client{} = client, agent_runtime_id, input, options \\ []) do
    url_path = "/runtimes/#{AWS.Util.encode_uri(agent_runtime_id)}/runtime-endpoints/"
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
      202
    )
  end

  @doc """
  Creates a new API key credential provider.
  """
  @spec create_api_key_credential_provider(
          map(),
          create_api_key_credential_provider_request(),
          list()
        ) ::
          {:ok, create_api_key_credential_provider_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_api_key_credential_provider_errors()}
  def create_api_key_credential_provider(%Client{} = client, input, options \\ []) do
    url_path = "/identities/CreateApiKeyCredentialProvider"
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
  Creates a custom browser.
  """
  @spec create_browser(map(), create_browser_request(), list()) ::
          {:ok, create_browser_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_browser_errors()}
  def create_browser(%Client{} = client, input, options \\ []) do
    url_path = "/browsers"
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
      202
    )
  end

  @doc """
  Creates a custom code interpreter.
  """
  @spec create_code_interpreter(map(), create_code_interpreter_request(), list()) ::
          {:ok, create_code_interpreter_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_code_interpreter_errors()}
  def create_code_interpreter(%Client{} = client, input, options \\ []) do
    url_path = "/code-interpreters"
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
      202
    )
  end

  @doc """
  Creates a custom evaluator for agent quality assessment.

  Custom evaluators use LLM-as-a-Judge configurations with user-defined prompts,
  rating scales, and model settings to evaluate agent performance at tool call,
  trace, or session levels.
  """
  @spec create_evaluator(map(), create_evaluator_request(), list()) ::
          {:ok, create_evaluator_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_evaluator_errors()}
  def create_evaluator(%Client{} = client, input, options \\ []) do
    url_path = "/evaluators/create"
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
  Creates a gateway for Amazon Bedrock Agent.

  A gateway serves as an integration point between your agent and external
  services.

  If you specify `CUSTOM_JWT` as the `authorizerType`, you must provide an
  `authorizerConfiguration`.
  """
  @spec create_gateway(map(), create_gateway_request(), list()) ::
          {:ok, create_gateway_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_gateway_errors()}
  def create_gateway(%Client{} = client, input, options \\ []) do
    url_path = "/gateways/"
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
  Creates a target for a gateway.

  A target defines an endpoint that the gateway can connect to.
  """
  @spec create_gateway_target(map(), String.t() | atom(), create_gateway_target_request(), list()) ::
          {:ok, create_gateway_target_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_gateway_target_errors()}
  def create_gateway_target(%Client{} = client, gateway_identifier, input, options \\ []) do
    url_path = "/gateways/#{AWS.Util.encode_uri(gateway_identifier)}/targets/"
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
  Creates a new Amazon Bedrock AgentCore Memory resource.
  """
  @spec create_memory(map(), create_memory_input(), list()) ::
          {:ok, create_memory_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_memory_errors()}
  def create_memory(%Client{} = client, input, options \\ []) do
    url_path = "/memories/create"
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
  Creates a new OAuth2 credential provider.
  """
  @spec create_oauth2_credential_provider(
          map(),
          create_oauth2_credential_provider_request(),
          list()
        ) ::
          {:ok, create_oauth2_credential_provider_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_oauth2_credential_provider_errors()}
  def create_oauth2_credential_provider(%Client{} = client, input, options \\ []) do
    url_path = "/identities/CreateOauth2CredentialProvider"
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
  Creates an online evaluation configuration for continuous monitoring of agent
  performance.

  Online evaluation automatically samples live traffic from CloudWatch logs at
  specified rates and applies evaluators to assess agent quality in production.
  """
  @spec create_online_evaluation_config(map(), create_online_evaluation_config_request(), list()) ::
          {:ok, create_online_evaluation_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_online_evaluation_config_errors()}
  def create_online_evaluation_config(%Client{} = client, input, options \\ []) do
    url_path = "/online-evaluation-configs/create"
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
  Creates a policy within the AgentCore Policy system.

  Policies provide real-time, deterministic control over agentic interactions with
  AgentCore Gateway. Using the Cedar policy language, you can define fine-grained
  policies that specify which interactions with Gateway tools are permitted based
  on input parameters and OAuth claims, ensuring agents operate within defined
  boundaries and business rules. The policy is validated during creation against
  the Cedar schema generated from the Gateway's tools' input schemas, which
  defines the available tools, their parameters, and expected data types. This is
  an asynchronous operation. Use the
  [GetPolicy](https://docs.aws.amazon.com/bedrock-agentcore-control/latest/APIReference/API_GetPolicy.html)
  operation to poll the `status` field to track completion.
  """
  @spec create_policy(map(), String.t() | atom(), create_policy_request(), list()) ::
          {:ok, create_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_policy_errors()}
  def create_policy(%Client{} = client, policy_engine_id, input, options \\ []) do
    url_path = "/policy-engines/#{AWS.Util.encode_uri(policy_engine_id)}/policies"
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
  Creates a new policy engine within the AgentCore Policy system.

  A policy engine is a collection of policies that evaluates and authorizes agent
  tool calls. When associated with Gateways (each Gateway can be associated with
  at most one policy engine, but multiple Gateways can be associated with the same
  engine), the policy engine intercepts all agent requests and determines whether
  to allow or deny each action based on the defined policies. This is an
  asynchronous operation. Use the
  [GetPolicyEngine](https://docs.aws.amazon.com/bedrock-agentcore-control/latest/APIReference/API_GetPolicyEngine.html)
  operation to poll the `status` field to track completion.
  """
  @spec create_policy_engine(map(), create_policy_engine_request(), list()) ::
          {:ok, create_policy_engine_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_policy_engine_errors()}
  def create_policy_engine(%Client{} = client, input, options \\ []) do
    url_path = "/policy-engines"
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
  Creates a new workload identity.
  """
  @spec create_workload_identity(map(), create_workload_identity_request(), list()) ::
          {:ok, create_workload_identity_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_workload_identity_errors()}
  def create_workload_identity(%Client{} = client, input, options \\ []) do
    url_path = "/identities/CreateWorkloadIdentity"
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
  Deletes an Amazon Bedrock AgentCore Runtime.
  """
  @spec delete_agent_runtime(map(), String.t() | atom(), delete_agent_runtime_request(), list()) ::
          {:ok, delete_agent_runtime_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_agent_runtime_errors()}
  def delete_agent_runtime(%Client{} = client, agent_runtime_id, input, options \\ []) do
    url_path = "/runtimes/#{AWS.Util.encode_uri(agent_runtime_id)}/"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
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
  Deletes an AAgentCore Runtime endpoint.
  """
  @spec delete_agent_runtime_endpoint(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_agent_runtime_endpoint_request(),
          list()
        ) ::
          {:ok, delete_agent_runtime_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_agent_runtime_endpoint_errors()}
  def delete_agent_runtime_endpoint(
        %Client{} = client,
        agent_runtime_id,
        endpoint_name,
        input,
        options \\ []
      ) do
    url_path =
      "/runtimes/#{AWS.Util.encode_uri(agent_runtime_id)}/runtime-endpoints/#{AWS.Util.encode_uri(endpoint_name)}/"

    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
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
  Deletes an API key credential provider.
  """
  @spec delete_api_key_credential_provider(
          map(),
          delete_api_key_credential_provider_request(),
          list()
        ) ::
          {:ok, delete_api_key_credential_provider_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_api_key_credential_provider_errors()}
  def delete_api_key_credential_provider(%Client{} = client, input, options \\ []) do
    url_path = "/identities/DeleteApiKeyCredentialProvider"
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
  Deletes a custom browser.
  """
  @spec delete_browser(map(), String.t() | atom(), delete_browser_request(), list()) ::
          {:ok, delete_browser_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_browser_errors()}
  def delete_browser(%Client{} = client, browser_id, input, options \\ []) do
    url_path = "/browsers/#{AWS.Util.encode_uri(browser_id)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
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
  Deletes a custom code interpreter.
  """
  @spec delete_code_interpreter(
          map(),
          String.t() | atom(),
          delete_code_interpreter_request(),
          list()
        ) ::
          {:ok, delete_code_interpreter_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_code_interpreter_errors()}
  def delete_code_interpreter(%Client{} = client, code_interpreter_id, input, options \\ []) do
    url_path = "/code-interpreters/#{AWS.Util.encode_uri(code_interpreter_id)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
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
  Deletes a custom evaluator.

  Builtin evaluators cannot be deleted. The evaluator must not be referenced by
  any active online evaluation configurations.
  """
  @spec delete_evaluator(map(), String.t() | atom(), delete_evaluator_request(), list()) ::
          {:ok, delete_evaluator_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_evaluator_errors()}
  def delete_evaluator(%Client{} = client, evaluator_id, input, options \\ []) do
    url_path = "/evaluators/#{AWS.Util.encode_uri(evaluator_id)}"
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
  Deletes a gateway.
  """
  @spec delete_gateway(map(), String.t() | atom(), delete_gateway_request(), list()) ::
          {:ok, delete_gateway_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_gateway_errors()}
  def delete_gateway(%Client{} = client, gateway_identifier, input, options \\ []) do
    url_path = "/gateways/#{AWS.Util.encode_uri(gateway_identifier)}/"
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
  Deletes a gateway target.
  """
  @spec delete_gateway_target(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_gateway_target_request(),
          list()
        ) ::
          {:ok, delete_gateway_target_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_gateway_target_errors()}
  def delete_gateway_target(
        %Client{} = client,
        gateway_identifier,
        target_id,
        input,
        options \\ []
      ) do
    url_path =
      "/gateways/#{AWS.Util.encode_uri(gateway_identifier)}/targets/#{AWS.Util.encode_uri(target_id)}/"

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
  Deletes an Amazon Bedrock AgentCore Memory resource.
  """
  @spec delete_memory(map(), String.t() | atom(), delete_memory_input(), list()) ::
          {:ok, delete_memory_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_memory_errors()}
  def delete_memory(%Client{} = client, memory_id, input, options \\ []) do
    url_path = "/memories/#{AWS.Util.encode_uri(memory_id)}/delete"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
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
  Deletes an OAuth2 credential provider.
  """
  @spec delete_oauth2_credential_provider(
          map(),
          delete_oauth2_credential_provider_request(),
          list()
        ) ::
          {:ok, delete_oauth2_credential_provider_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_oauth2_credential_provider_errors()}
  def delete_oauth2_credential_provider(%Client{} = client, input, options \\ []) do
    url_path = "/identities/DeleteOauth2CredentialProvider"
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
  Deletes an online evaluation configuration and stops any ongoing evaluation
  processes associated with it.
  """
  @spec delete_online_evaluation_config(
          map(),
          String.t() | atom(),
          delete_online_evaluation_config_request(),
          list()
        ) ::
          {:ok, delete_online_evaluation_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_online_evaluation_config_errors()}
  def delete_online_evaluation_config(
        %Client{} = client,
        online_evaluation_config_id,
        input,
        options \\ []
      ) do
    url_path = "/online-evaluation-configs/#{AWS.Util.encode_uri(online_evaluation_config_id)}"
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
  Deletes an existing policy from the AgentCore Policy system.

  Once deleted, the policy can no longer be used for agent behavior control and
  all references to it become invalid. This is an asynchronous operation. Use the
  `GetPolicy` operation to poll the `status` field to track completion.
  """
  @spec delete_policy(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_policy_request(),
          list()
        ) ::
          {:ok, delete_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_policy_errors()}
  def delete_policy(%Client{} = client, policy_engine_id, policy_id, input, options \\ []) do
    url_path =
      "/policy-engines/#{AWS.Util.encode_uri(policy_engine_id)}/policies/#{AWS.Util.encode_uri(policy_id)}"

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
  Deletes an existing policy engine from the AgentCore Policy system.

  The policy engine must not have any associated policies before deletion. Once
  deleted, the policy engine and all its configurations become unavailable for
  policy management and evaluation. This is an asynchronous operation. Use the
  `GetPolicyEngine` operation to poll the `status` field to track completion.
  """
  @spec delete_policy_engine(map(), String.t() | atom(), delete_policy_engine_request(), list()) ::
          {:ok, delete_policy_engine_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_policy_engine_errors()}
  def delete_policy_engine(%Client{} = client, policy_engine_id, input, options \\ []) do
    url_path = "/policy-engines/#{AWS.Util.encode_uri(policy_engine_id)}"
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
  Deletes the resource-based policy for a specified resource.

  This feature is currently available only for AgentCore Runtime and Gateway.
  """
  @spec delete_resource_policy(
          map(),
          String.t() | atom(),
          delete_resource_policy_request(),
          list()
        ) ::
          {:ok, delete_resource_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_resource_policy_errors()}
  def delete_resource_policy(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/resourcepolicy/#{AWS.Util.encode_uri(resource_arn)}"
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
  Deletes a workload identity.
  """
  @spec delete_workload_identity(map(), delete_workload_identity_request(), list()) ::
          {:ok, delete_workload_identity_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_workload_identity_errors()}
  def delete_workload_identity(%Client{} = client, input, options \\ []) do
    url_path = "/identities/DeleteWorkloadIdentity"
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
  Gets an Amazon Bedrock AgentCore Runtime.
  """
  @spec get_agent_runtime(map(), String.t() | atom(), String.t() | atom() | nil, list()) ::
          {:ok, get_agent_runtime_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_agent_runtime_errors()}
  def get_agent_runtime(
        %Client{} = client,
        agent_runtime_id,
        agent_runtime_version \\ nil,
        options \\ []
      ) do
    url_path = "/runtimes/#{AWS.Util.encode_uri(agent_runtime_id)}/"
    headers = []
    query_params = []

    query_params =
      if !is_nil(agent_runtime_version) do
        [{"version", agent_runtime_version} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about an Amazon Secure AgentEndpoint.
  """
  @spec get_agent_runtime_endpoint(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_agent_runtime_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_agent_runtime_endpoint_errors()}
  def get_agent_runtime_endpoint(
        %Client{} = client,
        agent_runtime_id,
        endpoint_name,
        options \\ []
      ) do
    url_path =
      "/runtimes/#{AWS.Util.encode_uri(agent_runtime_id)}/runtime-endpoints/#{AWS.Util.encode_uri(endpoint_name)}/"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about an API key credential provider.
  """
  @spec get_api_key_credential_provider(map(), get_api_key_credential_provider_request(), list()) ::
          {:ok, get_api_key_credential_provider_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_api_key_credential_provider_errors()}
  def get_api_key_credential_provider(%Client{} = client, input, options \\ []) do
    url_path = "/identities/GetApiKeyCredentialProvider"
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
  Gets information about a custom browser.
  """
  @spec get_browser(map(), String.t() | atom(), list()) ::
          {:ok, get_browser_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_browser_errors()}
  def get_browser(%Client{} = client, browser_id, options \\ []) do
    url_path = "/browsers/#{AWS.Util.encode_uri(browser_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a custom code interpreter.
  """
  @spec get_code_interpreter(map(), String.t() | atom(), list()) ::
          {:ok, get_code_interpreter_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_code_interpreter_errors()}
  def get_code_interpreter(%Client{} = client, code_interpreter_id, options \\ []) do
    url_path = "/code-interpreters/#{AWS.Util.encode_uri(code_interpreter_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves detailed information about an evaluator, including its configuration,
  status, and metadata.

  Works with both built-in and custom evaluators.
  """
  @spec get_evaluator(map(), String.t() | atom(), list()) ::
          {:ok, get_evaluator_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_evaluator_errors()}
  def get_evaluator(%Client{} = client, evaluator_id, options \\ []) do
    url_path = "/evaluators/#{AWS.Util.encode_uri(evaluator_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a specific Gateway.
  """
  @spec get_gateway(map(), String.t() | atom(), list()) ::
          {:ok, get_gateway_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_gateway_errors()}
  def get_gateway(%Client{} = client, gateway_identifier, options \\ []) do
    url_path = "/gateways/#{AWS.Util.encode_uri(gateway_identifier)}/"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a specific gateway target.
  """
  @spec get_gateway_target(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_gateway_target_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_gateway_target_errors()}
  def get_gateway_target(%Client{} = client, gateway_identifier, target_id, options \\ []) do
    url_path =
      "/gateways/#{AWS.Util.encode_uri(gateway_identifier)}/targets/#{AWS.Util.encode_uri(target_id)}/"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieve an existing Amazon Bedrock AgentCore Memory resource.
  """
  @spec get_memory(map(), String.t() | atom(), String.t() | atom() | nil, list()) ::
          {:ok, get_memory_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_memory_errors()}
  def get_memory(%Client{} = client, memory_id, view \\ nil, options \\ []) do
    url_path = "/memories/#{AWS.Util.encode_uri(memory_id)}/details"
    headers = []
    query_params = []

    query_params =
      if !is_nil(view) do
        [{"view", view} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about an OAuth2 credential provider.
  """
  @spec get_oauth2_credential_provider(map(), get_oauth2_credential_provider_request(), list()) ::
          {:ok, get_oauth2_credential_provider_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_oauth2_credential_provider_errors()}
  def get_oauth2_credential_provider(%Client{} = client, input, options \\ []) do
    url_path = "/identities/GetOauth2CredentialProvider"
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
  Retrieves detailed information about an online evaluation configuration,
  including its rules, data sources, evaluators, and execution status.
  """
  @spec get_online_evaluation_config(map(), String.t() | atom(), list()) ::
          {:ok, get_online_evaluation_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_online_evaluation_config_errors()}
  def get_online_evaluation_config(%Client{} = client, online_evaluation_config_id, options \\ []) do
    url_path = "/online-evaluation-configs/#{AWS.Util.encode_uri(online_evaluation_config_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves detailed information about a specific policy within the AgentCore
  Policy system.

  This operation returns the complete policy definition, metadata, and current
  status, allowing administrators to review and manage policy configurations.
  """
  @spec get_policy(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_policy_errors()}
  def get_policy(%Client{} = client, policy_engine_id, policy_id, options \\ []) do
    url_path =
      "/policy-engines/#{AWS.Util.encode_uri(policy_engine_id)}/policies/#{AWS.Util.encode_uri(policy_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves detailed information about a specific policy engine within the
  AgentCore Policy system.

  This operation returns the complete policy engine configuration, metadata, and
  current status, allowing administrators to review and manage policy engine
  settings.
  """
  @spec get_policy_engine(map(), String.t() | atom(), list()) ::
          {:ok, get_policy_engine_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_policy_engine_errors()}
  def get_policy_engine(%Client{} = client, policy_engine_id, options \\ []) do
    url_path = "/policy-engines/#{AWS.Util.encode_uri(policy_engine_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a policy generation request within the AgentCore
  Policy system.

  Policy generation converts natural language descriptions into Cedar policy
  statements using AI-powered translation, enabling non-technical users to create
  policies.
  """
  @spec get_policy_generation(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_policy_generation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_policy_generation_errors()}
  def get_policy_generation(
        %Client{} = client,
        policy_engine_id,
        policy_generation_id,
        options \\ []
      ) do
    url_path =
      "/policy-engines/#{AWS.Util.encode_uri(policy_engine_id)}/policy-generations/#{AWS.Util.encode_uri(policy_generation_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the resource-based policy for a specified resource.

  This feature is currently available only for AgentCore Runtime and Gateway.
  """
  @spec get_resource_policy(map(), String.t() | atom(), list()) ::
          {:ok, get_resource_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_resource_policy_errors()}
  def get_resource_policy(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/resourcepolicy/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a token vault.
  """
  @spec get_token_vault(map(), get_token_vault_request(), list()) ::
          {:ok, get_token_vault_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_token_vault_errors()}
  def get_token_vault(%Client{} = client, input, options \\ []) do
    url_path = "/identities/get-token-vault"
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
  Retrieves information about a workload identity.
  """
  @spec get_workload_identity(map(), get_workload_identity_request(), list()) ::
          {:ok, get_workload_identity_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_workload_identity_errors()}
  def get_workload_identity(%Client{} = client, input, options \\ []) do
    url_path = "/identities/GetWorkloadIdentity"
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
  Lists all endpoints for a specific Amazon Secure Agent.
  """
  @spec list_agent_runtime_endpoints(
          map(),
          String.t() | atom(),
          list_agent_runtime_endpoints_request(),
          list()
        ) ::
          {:ok, list_agent_runtime_endpoints_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_agent_runtime_endpoints_errors()}
  def list_agent_runtime_endpoints(%Client{} = client, agent_runtime_id, input, options \\ []) do
    url_path = "/runtimes/#{AWS.Util.encode_uri(agent_runtime_id)}/runtime-endpoints/"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"maxResults", "maxResults"},
        {"nextToken", "nextToken"}
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
      200
    )
  end

  @doc """
  Lists all versions of a specific Amazon Secure Agent.
  """
  @spec list_agent_runtime_versions(
          map(),
          String.t() | atom(),
          list_agent_runtime_versions_request(),
          list()
        ) ::
          {:ok, list_agent_runtime_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_agent_runtime_versions_errors()}
  def list_agent_runtime_versions(%Client{} = client, agent_runtime_id, input, options \\ []) do
    url_path = "/runtimes/#{AWS.Util.encode_uri(agent_runtime_id)}/versions/"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"maxResults", "maxResults"},
        {"nextToken", "nextToken"}
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
      200
    )
  end

  @doc """
  Lists all Amazon Secure Agents in your account.
  """
  @spec list_agent_runtimes(map(), list_agent_runtimes_request(), list()) ::
          {:ok, list_agent_runtimes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_agent_runtimes_errors()}
  def list_agent_runtimes(%Client{} = client, input, options \\ []) do
    url_path = "/runtimes/"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"maxResults", "maxResults"},
        {"nextToken", "nextToken"}
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
      200
    )
  end

  @doc """
  Lists all API key credential providers in your account.
  """
  @spec list_api_key_credential_providers(
          map(),
          list_api_key_credential_providers_request(),
          list()
        ) ::
          {:ok, list_api_key_credential_providers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_api_key_credential_providers_errors()}
  def list_api_key_credential_providers(%Client{} = client, input, options \\ []) do
    url_path = "/identities/ListApiKeyCredentialProviders"
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
  Lists all custom browsers in your account.
  """
  @spec list_browsers(map(), list_browsers_request(), list()) ::
          {:ok, list_browsers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_browsers_errors()}
  def list_browsers(%Client{} = client, input, options \\ []) do
    url_path = "/browsers"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"maxResults", "maxResults"},
        {"nextToken", "nextToken"},
        {"type", "type"}
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
      200
    )
  end

  @doc """
  Lists all custom code interpreters in your account.
  """
  @spec list_code_interpreters(map(), list_code_interpreters_request(), list()) ::
          {:ok, list_code_interpreters_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_code_interpreters_errors()}
  def list_code_interpreters(%Client{} = client, input, options \\ []) do
    url_path = "/code-interpreters"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"maxResults", "maxResults"},
        {"nextToken", "nextToken"},
        {"type", "type"}
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
      200
    )
  end

  @doc """
  Lists all available evaluators, including both builtin evaluators provided by
  the service and custom evaluators created by the user.
  """
  @spec list_evaluators(map(), list_evaluators_request(), list()) ::
          {:ok, list_evaluators_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_evaluators_errors()}
  def list_evaluators(%Client{} = client, input, options \\ []) do
    url_path = "/evaluators"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"maxResults", "maxResults"},
        {"nextToken", "nextToken"}
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
      200
    )
  end

  @doc """
  Lists all targets for a specific gateway.
  """
  @spec list_gateway_targets(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_gateway_targets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_gateway_targets_errors()}
  def list_gateway_targets(
        %Client{} = client,
        gateway_identifier,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/gateways/#{AWS.Util.encode_uri(gateway_identifier)}/targets/"
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
  Lists all gateways in the account.
  """
  @spec list_gateways(map(), String.t() | atom() | nil, String.t() | atom() | nil, list()) ::
          {:ok, list_gateways_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_gateways_errors()}
  def list_gateways(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/gateways/"
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
  Lists the available Amazon Bedrock AgentCore Memory resources in the current
  Amazon Web Services Region.
  """
  @spec list_memories(map(), list_memories_input(), list()) ::
          {:ok, list_memories_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_memories_errors()}
  def list_memories(%Client{} = client, input, options \\ []) do
    url_path = "/memories/"
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
  Lists all OAuth2 credential providers in your account.
  """
  @spec list_oauth2_credential_providers(
          map(),
          list_oauth2_credential_providers_request(),
          list()
        ) ::
          {:ok, list_oauth2_credential_providers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_oauth2_credential_providers_errors()}
  def list_oauth2_credential_providers(%Client{} = client, input, options \\ []) do
    url_path = "/identities/ListOauth2CredentialProviders"
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
  Lists all online evaluation configurations in the account, providing summary
  information about each configuration's status and settings.
  """
  @spec list_online_evaluation_configs(map(), list_online_evaluation_configs_request(), list()) ::
          {:ok, list_online_evaluation_configs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_online_evaluation_configs_errors()}
  def list_online_evaluation_configs(%Client{} = client, input, options \\ []) do
    url_path = "/online-evaluation-configs"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"maxResults", "maxResults"},
        {"nextToken", "nextToken"}
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
      200
    )
  end

  @doc """
  Retrieves a list of policies within the AgentCore Policy engine.

  This operation supports pagination and filtering to help administrators manage
  and discover policies across policy engines. Results can be filtered by policy
  engine or resource associations.
  """
  @spec list_policies(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_policies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_policies_errors()}
  def list_policies(
        %Client{} = client,
        policy_engine_id,
        max_results \\ nil,
        next_token \\ nil,
        target_resource_scope \\ nil,
        options \\ []
      ) do
    url_path = "/policy-engines/#{AWS.Util.encode_uri(policy_engine_id)}/policies"
    headers = []
    query_params = []

    query_params =
      if !is_nil(target_resource_scope) do
        [{"targetResourceScope", target_resource_scope} | query_params]
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
  Retrieves a list of policy engines within the AgentCore Policy system.

  This operation supports pagination to help administrators discover and manage
  policy engines across their account. Each policy engine serves as a container
  for related policies.
  """
  @spec list_policy_engines(map(), String.t() | atom() | nil, String.t() | atom() | nil, list()) ::
          {:ok, list_policy_engines_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_policy_engines_errors()}
  def list_policy_engines(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/policy-engines"
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
  Retrieves a list of generated policy assets from a policy generation request
  within the AgentCore Policy system.

  This operation returns the actual Cedar policies and related artifacts produced
  by the AI-powered policy generation process, allowing users to review and select
  from multiple generated policy options.
  """
  @spec list_policy_generation_assets(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_policy_generation_assets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_policy_generation_assets_errors()}
  def list_policy_generation_assets(
        %Client{} = client,
        policy_engine_id,
        policy_generation_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/policy-engines/#{AWS.Util.encode_uri(policy_engine_id)}/policy-generations/#{AWS.Util.encode_uri(policy_generation_id)}/assets"

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
  Retrieves a list of policy generation requests within the AgentCore Policy
  system.

  This operation supports pagination and filtering to help track and manage
  AI-powered policy generation operations.
  """
  @spec list_policy_generations(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_policy_generations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_policy_generations_errors()}
  def list_policy_generations(
        %Client{} = client,
        policy_engine_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/policy-engines/#{AWS.Util.encode_uri(policy_engine_id)}/policy-generations"
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
  Lists the tags associated with the specified resource.

  This feature is currently available only for AgentCore Runtime, Browser, Code
  Interpreter tool, and Gateway.
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
  Lists all workload identities in your account.
  """
  @spec list_workload_identities(map(), list_workload_identities_request(), list()) ::
          {:ok, list_workload_identities_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_workload_identities_errors()}
  def list_workload_identities(%Client{} = client, input, options \\ []) do
    url_path = "/identities/ListWorkloadIdentities"
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
  Creates or updates a resource-based policy for a resource with the specified
  resourceArn.

  This feature is currently available only for AgentCore Runtime and Gateway.
  """
  @spec put_resource_policy(map(), String.t() | atom(), put_resource_policy_request(), list()) ::
          {:ok, put_resource_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_resource_policy_errors()}
  def put_resource_policy(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/resourcepolicy/#{AWS.Util.encode_uri(resource_arn)}"
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
  Sets the customer master key (CMK) for a token vault.
  """
  @spec set_token_vault_cm_k(map(), set_token_vault_cm_k_request(), list()) ::
          {:ok, set_token_vault_cm_k_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, set_token_vault_cm_k_errors()}
  def set_token_vault_cm_k(%Client{} = client, input, options \\ []) do
    url_path = "/identities/set-token-vault-cmk"
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
  Initiates the AI-powered generation of Cedar policies from natural language
  descriptions within the AgentCore Policy system.

  This feature enables both technical and non-technical users to create policies
  by describing their authorization requirements in plain English, which is then
  automatically translated into formal Cedar policy statements. The generation
  process analyzes the natural language input along with the Gateway's tool
  context to produce validated policy options. Generated policy assets are
  automatically deleted after 7 days, so you should review and create policies
  from the generated assets within this timeframe. Once created, policies are
  permanent and not subject to this expiration. Generated policies should be
  reviewed and tested in log-only mode before deploying to production. Use this
  when you want to describe policy intent naturally rather than learning Cedar
  syntax, though generated policies may require refinement for complex scenarios.
  """
  @spec start_policy_generation(
          map(),
          String.t() | atom(),
          start_policy_generation_request(),
          list()
        ) ::
          {:ok, start_policy_generation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_policy_generation_errors()}
  def start_policy_generation(%Client{} = client, policy_engine_id, input, options \\ []) do
    url_path = "/policy-engines/#{AWS.Util.encode_uri(policy_engine_id)}/policy-generations"
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
  The gateway targets.
  """
  @spec synchronize_gateway_targets(
          map(),
          String.t() | atom(),
          synchronize_gateway_targets_request(),
          list()
        ) ::
          {:ok, synchronize_gateway_targets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, synchronize_gateway_targets_errors()}
  def synchronize_gateway_targets(%Client{} = client, gateway_identifier, input, options \\ []) do
    url_path = "/gateways/#{AWS.Util.encode_uri(gateway_identifier)}/synchronizeTargets"
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
      202
    )
  end

  @doc """
  Associates the specified tags to a resource with the specified resourceArn.

  If existing tags on a resource are not specified in the request parameters, they
  are not changed. When a resource is deleted, the tags associated with that
  resource are also deleted.

  This feature is currently available only for AgentCore Runtime, Browser, Code
  Interpreter tool, and Gateway.
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
  Removes the specified tags from the specified resource.

  This feature is currently available only for AgentCore Runtime, Browser, Code
  Interpreter tool, and Gateway.
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
  Updates an existing Amazon Secure Agent.
  """
  @spec update_agent_runtime(map(), String.t() | atom(), update_agent_runtime_request(), list()) ::
          {:ok, update_agent_runtime_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_agent_runtime_errors()}
  def update_agent_runtime(%Client{} = client, agent_runtime_id, input, options \\ []) do
    url_path = "/runtimes/#{AWS.Util.encode_uri(agent_runtime_id)}/"
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
      202
    )
  end

  @doc """
  Updates an existing Amazon Bedrock AgentCore Runtime endpoint.
  """
  @spec update_agent_runtime_endpoint(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_agent_runtime_endpoint_request(),
          list()
        ) ::
          {:ok, update_agent_runtime_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_agent_runtime_endpoint_errors()}
  def update_agent_runtime_endpoint(
        %Client{} = client,
        agent_runtime_id,
        endpoint_name,
        input,
        options \\ []
      ) do
    url_path =
      "/runtimes/#{AWS.Util.encode_uri(agent_runtime_id)}/runtime-endpoints/#{AWS.Util.encode_uri(endpoint_name)}/"

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
      202
    )
  end

  @doc """
  Updates an existing API key credential provider.
  """
  @spec update_api_key_credential_provider(
          map(),
          update_api_key_credential_provider_request(),
          list()
        ) ::
          {:ok, update_api_key_credential_provider_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_api_key_credential_provider_errors()}
  def update_api_key_credential_provider(%Client{} = client, input, options \\ []) do
    url_path = "/identities/UpdateApiKeyCredentialProvider"
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
  Updates a custom evaluator's configuration, description, or evaluation level.

  Built-in evaluators cannot be updated. The evaluator must not be locked for
  modification.
  """
  @spec update_evaluator(map(), String.t() | atom(), update_evaluator_request(), list()) ::
          {:ok, update_evaluator_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_evaluator_errors()}
  def update_evaluator(%Client{} = client, evaluator_id, input, options \\ []) do
    url_path = "/evaluators/#{AWS.Util.encode_uri(evaluator_id)}"
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
      202
    )
  end

  @doc """
  Updates an existing gateway.
  """
  @spec update_gateway(map(), String.t() | atom(), update_gateway_request(), list()) ::
          {:ok, update_gateway_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_gateway_errors()}
  def update_gateway(%Client{} = client, gateway_identifier, input, options \\ []) do
    url_path = "/gateways/#{AWS.Util.encode_uri(gateway_identifier)}/"
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
      202
    )
  end

  @doc """
  Updates an existing gateway target.
  """
  @spec update_gateway_target(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_gateway_target_request(),
          list()
        ) ::
          {:ok, update_gateway_target_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_gateway_target_errors()}
  def update_gateway_target(
        %Client{} = client,
        gateway_identifier,
        target_id,
        input,
        options \\ []
      ) do
    url_path =
      "/gateways/#{AWS.Util.encode_uri(gateway_identifier)}/targets/#{AWS.Util.encode_uri(target_id)}/"

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
      202
    )
  end

  @doc """
  Update an Amazon Bedrock AgentCore Memory resource memory.
  """
  @spec update_memory(map(), String.t() | atom(), update_memory_input(), list()) ::
          {:ok, update_memory_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_memory_errors()}
  def update_memory(%Client{} = client, memory_id, input, options \\ []) do
    url_path = "/memories/#{AWS.Util.encode_uri(memory_id)}/update"
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
      202
    )
  end

  @doc """
  Updates an existing OAuth2 credential provider.
  """
  @spec update_oauth2_credential_provider(
          map(),
          update_oauth2_credential_provider_request(),
          list()
        ) ::
          {:ok, update_oauth2_credential_provider_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_oauth2_credential_provider_errors()}
  def update_oauth2_credential_provider(%Client{} = client, input, options \\ []) do
    url_path = "/identities/UpdateOauth2CredentialProvider"
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
  Updates an online evaluation configuration's settings, including rules, data
  sources, evaluators, and execution status.

  Changes take effect immediately for ongoing evaluations.
  """
  @spec update_online_evaluation_config(
          map(),
          String.t() | atom(),
          update_online_evaluation_config_request(),
          list()
        ) ::
          {:ok, update_online_evaluation_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_online_evaluation_config_errors()}
  def update_online_evaluation_config(
        %Client{} = client,
        online_evaluation_config_id,
        input,
        options \\ []
      ) do
    url_path = "/online-evaluation-configs/#{AWS.Util.encode_uri(online_evaluation_config_id)}"
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
      202
    )
  end

  @doc """
  Updates an existing policy within the AgentCore Policy system.

  This operation allows modification of the policy description and definition
  while maintaining the policy's identity. The updated policy is validated against
  the Cedar schema before being applied. This is an asynchronous operation. Use
  the `GetPolicy` operation to poll the `status` field to track completion.
  """
  @spec update_policy(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_policy_request(),
          list()
        ) ::
          {:ok, update_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_policy_errors()}
  def update_policy(%Client{} = client, policy_engine_id, policy_id, input, options \\ []) do
    url_path =
      "/policy-engines/#{AWS.Util.encode_uri(policy_engine_id)}/policies/#{AWS.Util.encode_uri(policy_id)}"

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
      202
    )
  end

  @doc """
  Updates an existing policy engine within the AgentCore Policy system.

  This operation allows modification of the policy engine description while
  maintaining its identity. This is an asynchronous operation. Use the
  `GetPolicyEngine` operation to poll the `status` field to track completion.
  """
  @spec update_policy_engine(map(), String.t() | atom(), update_policy_engine_request(), list()) ::
          {:ok, update_policy_engine_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_policy_engine_errors()}
  def update_policy_engine(%Client{} = client, policy_engine_id, input, options \\ []) do
    url_path = "/policy-engines/#{AWS.Util.encode_uri(policy_engine_id)}"
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
      202
    )
  end

  @doc """
  Updates an existing workload identity.
  """
  @spec update_workload_identity(map(), update_workload_identity_request(), list()) ::
          {:ok, update_workload_identity_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_workload_identity_errors()}
  def update_workload_identity(%Client{} = client, input, options \\ []) do
    url_path = "/identities/UpdateWorkloadIdentity"
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
