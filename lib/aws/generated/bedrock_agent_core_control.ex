# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.BedrockAgentCoreControl do
  @moduledoc """
  Amazon Bedrock AgentCore is in preview release and is subject to change.

  Amazon Bedrock Agent Core Control is a service that enables you to manage memory
  resources for your Amazon Bedrock agents.

  Use this API to create, retrieve, update, and delete memory resources and their
  associated memory strategies. Memory resources enable your agents to store and
  retrieve information from conversations and interactions.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      update_gateway_request() :: %{
        optional("description") => String.t(),
        optional("exceptionLevel") => list(any()),
        optional("kmsKeyArn") => String.t(),
        optional("protocolConfiguration") => list(),
        required("authorizerConfiguration") => list(),
        required("authorizerType") => list(any()),
        required("name") => String.t(),
        required("protocolType") => list(any()),
        required("roleArn") => String.t()
      }

  """
  @type update_gateway_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      modify_strategy_configuration() :: %{
        "consolidation" => list(),
        "extraction" => list()
      }

  """
  @type modify_strategy_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_gateway_targets_response() :: %{
        "items" => list(target_summary()),
        "nextToken" => String.t()
      }

  """
  @type list_gateway_targets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_agent_runtime_endpoint_request() :: %{
        optional("agentRuntimeVersion") => String.t(),
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        required("name") => String.t()
      }

  """
  @type create_agent_runtime_endpoint_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_gateway_target_request() :: %{}

  """
  @type delete_gateway_target_request() :: %{}

  @typedoc """

  ## Example:

      create_oauth2_credential_provider_response() :: %{
        "clientSecretArn" => secret(),
        "credentialProviderArn" => String.t(),
        "name" => String.t()
      }

  """
  @type create_oauth2_credential_provider_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      memory_strategy() :: %{
        "configuration" => strategy_configuration(),
        "createdAt" => [non_neg_integer()],
        "description" => String.t(),
        "name" => String.t(),
        "namespaces" => list(String.t()),
        "status" => list(any()),
        "strategyId" => String.t(),
        "type" => list(any()),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type memory_strategy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_api_key_credential_provider_response() :: %{
        "apiKeySecretArn" => secret(),
        "createdTime" => [non_neg_integer()],
        "credentialProviderArn" => String.t(),
        "lastUpdatedTime" => [non_neg_integer()],
        "name" => String.t()
      }

  """
  @type get_api_key_credential_provider_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      browser_summary() :: %{
        "browserArn" => String.t(),
        "browserId" => String.t(),
        "createdAt" => non_neg_integer(),
        "description" => String.t(),
        "lastUpdatedAt" => non_neg_integer(),
        "name" => String.t(),
        "status" => list(any())
      }

  """
  @type browser_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      summary_override_consolidation_configuration_input() :: %{
        "appendToPrompt" => String.t(),
        "modelId" => [String.t()]
      }

  """
  @type summary_override_consolidation_configuration_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      memory_summary() :: %{
        "arn" => String.t(),
        "createdAt" => [non_neg_integer()],
        "id" => String.t(),
        "status" => list(any()),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type memory_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      unauthorized_exception() :: %{
        "message" => String.t()
      }

  """
  @type unauthorized_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_code_interpreters_response() :: %{
        "codeInterpreterSummaries" => list(code_interpreter_summary()),
        "nextToken" => String.t()
      }

  """
  @type list_code_interpreters_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_memory_input() :: %{
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        optional("encryptionKeyArn") => String.t(),
        optional("memoryExecutionRoleArn") => String.t(),
        optional("memoryStrategies") => list(list()),
        required("eventExpiryDuration") => [integer()],
        required("name") => String.t()
      }

  """
  @type create_memory_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      summary_memory_strategy_input() :: %{
        "description" => String.t(),
        "name" => String.t(),
        "namespaces" => list(String.t())
      }

  """
  @type summary_memory_strategy_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      kms_configuration() :: %{
        "keyType" => list(any()),
        "kmsKeyArn" => String.t()
      }

  """
  @type kms_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      schema_definition() :: %{
        "description" => [String.t()],
        "items" => schema_definition(),
        "properties" => map(),
        "required" => list([String.t()]()),
        "type" => list(any())
      }

  """
  @type schema_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_agent_runtime_versions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_agent_runtime_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_gateway_response() :: %{
        "authorizerConfiguration" => list(),
        "authorizerType" => list(any()),
        "createdAt" => non_neg_integer(),
        "description" => String.t(),
        "exceptionLevel" => list(any()),
        "gatewayArn" => String.t(),
        "gatewayId" => String.t(),
        "gatewayUrl" => String.t(),
        "kmsKeyArn" => String.t(),
        "name" => String.t(),
        "protocolConfiguration" => list(),
        "protocolType" => list(any()),
        "roleArn" => String.t(),
        "status" => list(any()),
        "statusReasons" => list(String.t()),
        "updatedAt" => non_neg_integer(),
        "workloadIdentityDetails" => workload_identity_details()
      }

  """
  @type create_gateway_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      salesforce_oauth2_provider_config_input() :: %{
        "clientId" => String.t(),
        "clientSecret" => String.t()
      }

  """
  @type salesforce_oauth2_provider_config_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_gateways_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_gateways_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_oauth2_credential_provider_request() :: %{
        required("name") => String.t()
      }

  """
  @type get_oauth2_credential_provider_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_workload_identity_request() :: %{
        required("name") => String.t()
      }

  """
  @type get_workload_identity_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_gateway_target_response() :: %{
        "gatewayArn" => String.t(),
        "status" => list(any()),
        "statusReasons" => list(String.t()),
        "targetId" => String.t()
      }

  """
  @type delete_gateway_target_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tool_definition() :: %{
        "description" => [String.t()],
        "inputSchema" => schema_definition(),
        "name" => [String.t()],
        "outputSchema" => schema_definition()
      }

  """
  @type tool_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      decryption_failure() :: %{
        "message" => [String.t()]
      }

  """
  @type decryption_failure() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      code_interpreter_summary() :: %{
        "codeInterpreterArn" => String.t(),
        "codeInterpreterId" => String.t(),
        "createdAt" => non_neg_integer(),
        "description" => String.t(),
        "lastUpdatedAt" => non_neg_integer(),
        "name" => String.t(),
        "status" => list(any())
      }

  """
  @type code_interpreter_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_browser_response() :: %{
        "browserArn" => String.t(),
        "browserId" => String.t(),
        "createdAt" => non_neg_integer(),
        "status" => list(any())
      }

  """
  @type create_browser_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      encryption_failure() :: %{
        "message" => [String.t()]
      }

  """
  @type encryption_failure() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_browser_response() :: %{
        "browserId" => String.t(),
        "lastUpdatedAt" => non_neg_integer(),
        "status" => list(any())
      }

  """
  @type delete_browser_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_agent_runtime_request() :: %{
        optional("agentRuntimeVersion") => String.t()
      }

  """
  @type get_agent_runtime_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_memory_input() :: %{}

  """
  @type get_memory_input() :: %{}

  @typedoc """

  ## Example:

      semantic_memory_strategy_input() :: %{
        "description" => String.t(),
        "name" => String.t(),
        "namespaces" => list(String.t())
      }

  """
  @type semantic_memory_strategy_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_memory_input() :: %{
        optional("clientToken") => String.t()
      }

  """
  @type delete_memory_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_gateway_response() :: %{
        "gatewayId" => String.t(),
        "status" => list(any()),
        "statusReasons" => list(String.t())
      }

  """
  @type delete_gateway_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      summary_consolidation_override() :: %{
        "appendToPrompt" => String.t(),
        "modelId" => [String.t()]
      }

  """
  @type summary_consolidation_override() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_api_key_credential_provider_response() :: %{
        "apiKeySecretArn" => secret(),
        "credentialProviderArn" => String.t(),
        "name" => String.t()
      }

  """
  @type create_api_key_credential_provider_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      custom_memory_strategy_input() :: %{
        "configuration" => list(),
        "description" => String.t(),
        "name" => String.t(),
        "namespaces" => list(String.t())
      }

  """
  @type custom_memory_strategy_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      user_preference_override_configuration_input() :: %{
        "consolidation" => user_preference_override_consolidation_configuration_input(),
        "extraction" => user_preference_override_extraction_configuration_input()
      }

  """
  @type user_preference_override_configuration_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_gateway_target_response() :: %{
        "createdAt" => non_neg_integer(),
        "credentialProviderConfigurations" => list(credential_provider_configuration()),
        "description" => String.t(),
        "gatewayArn" => String.t(),
        "name" => String.t(),
        "status" => list(any()),
        "statusReasons" => list(String.t()),
        "targetConfiguration" => list(),
        "targetId" => String.t(),
        "updatedAt" => non_neg_integer()
      }

  """
  @type get_gateway_target_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_workload_identity_response() :: %{}

  """
  @type delete_workload_identity_response() :: %{}

  @typedoc """

  ## Example:

      semantic_extraction_override() :: %{
        "appendToPrompt" => String.t(),
        "modelId" => [String.t()]
      }

  """
  @type semantic_extraction_override() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      semantic_override_consolidation_configuration_input() :: %{
        "appendToPrompt" => String.t(),
        "modelId" => [String.t()]
      }

  """
  @type semantic_override_consolidation_configuration_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_agent_runtime_endpoint_response() :: %{
        "agentRuntimeArn" => String.t(),
        "agentRuntimeEndpointArn" => String.t(),
        "createdAt" => non_neg_integer(),
        "status" => list(any()),
        "targetVersion" => String.t()
      }

  """
  @type create_agent_runtime_endpoint_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_api_key_credential_provider_request() :: %{
        required("apiKey") => String.t(),
        required("name") => String.t()
      }

  """
  @type create_api_key_credential_provider_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_browser_response() :: %{
        "browserArn" => String.t(),
        "browserId" => String.t(),
        "createdAt" => non_neg_integer(),
        "description" => String.t(),
        "executionRoleArn" => String.t(),
        "lastUpdatedAt" => non_neg_integer(),
        "name" => String.t(),
        "networkConfiguration" => browser_network_configuration(),
        "recording" => recording_config(),
        "status" => list(any())
      }

  """
  @type get_browser_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      workload_identity_details() :: %{
        "workloadIdentityArn" => String.t()
      }

  """
  @type workload_identity_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_gateway_target_request() :: %{
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        required("credentialProviderConfigurations") => list(credential_provider_configuration()),
        required("name") => String.t(),
        required("targetConfiguration") => list()
      }

  """
  @type create_gateway_target_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      semantic_consolidation_override() :: %{
        "appendToPrompt" => String.t(),
        "modelId" => [String.t()]
      }

  """
  @type semantic_consolidation_override() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_memory_input() :: %{
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        optional("eventExpiryDuration") => [integer()],
        optional("memoryExecutionRoleArn") => String.t(),
        optional("memoryStrategies") => modify_memory_strategies()
      }

  """
  @type update_memory_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_oauth2_credential_provider_request() :: %{
        required("name") => String.t()
      }

  """
  @type delete_oauth2_credential_provider_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_gateway_target_response() :: %{
        "createdAt" => non_neg_integer(),
        "credentialProviderConfigurations" => list(credential_provider_configuration()),
        "description" => String.t(),
        "gatewayArn" => String.t(),
        "name" => String.t(),
        "status" => list(any()),
        "statusReasons" => list(String.t()),
        "targetConfiguration" => list(),
        "targetId" => String.t(),
        "updatedAt" => non_neg_integer()
      }

  """
  @type create_gateway_target_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      github_oauth2_provider_config_input() :: %{
        "clientId" => String.t(),
        "clientSecret" => String.t()
      }

  """
  @type github_oauth2_provider_config_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      oauth2_authorization_server_metadata() :: %{
        "authorizationEndpoint" => String.t(),
        "issuer" => String.t(),
        "responseTypes" => list(String.t()),
        "tokenEndpoint" => String.t()
      }

  """
  @type oauth2_authorization_server_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_gateway_target_request() :: %{}

  """
  @type get_gateway_target_request() :: %{}

  @typedoc """

  ## Example:

      github_oauth2_provider_config_output() :: %{
        "oauthDiscovery" => list()
      }

  """
  @type github_oauth2_provider_config_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_api_key_credential_provider_request() :: %{
        required("name") => String.t()
      }

  """
  @type get_api_key_credential_provider_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_agent_runtime_request() :: %{
        optional("authorizerConfiguration") => list(),
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        optional("environmentVariables") => map(),
        optional("protocolConfiguration") => protocol_configuration(),
        required("agentRuntimeArtifact") => list(),
        required("agentRuntimeName") => String.t(),
        required("networkConfiguration") => network_configuration(),
        required("roleArn") => String.t()
      }

  """
  @type create_agent_runtime_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      gateway_summary() :: %{
        "authorizerType" => list(any()),
        "createdAt" => non_neg_integer(),
        "description" => String.t(),
        "gatewayId" => String.t(),
        "name" => String.t(),
        "protocolType" => list(any()),
        "status" => list(any()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type gateway_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_agent_runtime_endpoint_request() :: %{
        optional("clientToken") => String.t()
      }

  """
  @type delete_agent_runtime_endpoint_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_agent_runtime_endpoint_response() :: %{
        "agentRuntimeArn" => String.t(),
        "agentRuntimeEndpointArn" => String.t(),
        "createdAt" => non_neg_integer(),
        "description" => String.t(),
        "failureReason" => [String.t()],
        "id" => String.t(),
        "lastUpdatedAt" => non_neg_integer(),
        "liveVersion" => String.t(),
        "name" => String.t(),
        "status" => list(any()),
        "targetVersion" => String.t()
      }

  """
  @type get_agent_runtime_endpoint_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_agent_runtime_request() :: %{
        optional("authorizerConfiguration") => list(),
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        optional("environmentVariables") => map(),
        optional("protocolConfiguration") => protocol_configuration(),
        required("agentRuntimeArtifact") => list(),
        required("networkConfiguration") => network_configuration(),
        required("roleArn") => String.t()
      }

  """
  @type update_agent_runtime_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_agent_runtime_response() :: %{
        "agentRuntimeArn" => String.t(),
        "agentRuntimeId" => String.t(),
        "agentRuntimeVersion" => String.t(),
        "createdAt" => non_neg_integer(),
        "lastUpdatedAt" => non_neg_integer(),
        "status" => list(any()),
        "workloadIdentityDetails" => workload_identity_details()
      }

  """
  @type update_agent_runtime_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_api_key_credential_provider_request() :: %{
        required("name") => String.t()
      }

  """
  @type delete_api_key_credential_provider_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttled_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type throttled_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_browser_request() :: %{
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        optional("executionRoleArn") => String.t(),
        optional("recording") => recording_config(),
        required("name") => String.t(),
        required("networkConfiguration") => browser_network_configuration()
      }

  """
  @type create_browser_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_workload_identity_request() :: %{
        optional("allowedResourceOauth2ReturnUrls") => list(String.t()),
        required("name") => String.t()
      }

  """
  @type update_workload_identity_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_gateway_target_response() :: %{
        "createdAt" => non_neg_integer(),
        "credentialProviderConfigurations" => list(credential_provider_configuration()),
        "description" => String.t(),
        "gatewayArn" => String.t(),
        "name" => String.t(),
        "status" => list(any()),
        "statusReasons" => list(String.t()),
        "targetConfiguration" => list(),
        "targetId" => String.t(),
        "updatedAt" => non_neg_integer()
      }

  """
  @type update_gateway_target_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => String.t()
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_workload_identity_request() :: %{
        optional("allowedResourceOauth2ReturnUrls") => list(String.t()),
        required("name") => String.t()
      }

  """
  @type create_workload_identity_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_gateway_response() :: %{
        "authorizerConfiguration" => list(),
        "authorizerType" => list(any()),
        "createdAt" => non_neg_integer(),
        "description" => String.t(),
        "exceptionLevel" => list(any()),
        "gatewayArn" => String.t(),
        "gatewayId" => String.t(),
        "gatewayUrl" => String.t(),
        "kmsKeyArn" => String.t(),
        "name" => String.t(),
        "protocolConfiguration" => list(),
        "protocolType" => list(any()),
        "roleArn" => String.t(),
        "status" => list(any()),
        "statusReasons" => list(String.t()),
        "updatedAt" => non_neg_integer(),
        "workloadIdentityDetails" => workload_identity_details()
      }

  """
  @type get_gateway_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_memory_output() :: %{
        "memory" => memory()
      }

  """
  @type create_memory_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_code_interpreter_request() :: %{
        optional("clientToken") => String.t()
      }

  """
  @type delete_code_interpreter_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => String.t()
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      target_summary() :: %{
        "createdAt" => non_neg_integer(),
        "description" => String.t(),
        "name" => String.t(),
        "status" => list(any()),
        "targetId" => String.t(),
        "updatedAt" => non_neg_integer()
      }

  """
  @type target_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      set_token_vault_cm_k_response() :: %{
        "kmsConfiguration" => kms_configuration(),
        "lastModifiedDate" => [non_neg_integer()],
        "tokenVaultId" => String.t()
      }

  """
  @type set_token_vault_cm_k_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      oauth2_credential_provider_item() :: %{
        "createdTime" => [non_neg_integer()],
        "credentialProviderArn" => String.t(),
        "credentialProviderVendor" => list(any()),
        "lastUpdatedTime" => [non_neg_integer()],
        "name" => String.t()
      }

  """
  @type oauth2_credential_provider_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_limit_exceeded_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type resource_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      workload_identity_type() :: %{
        "name" => String.t(),
        "workloadIdentityArn" => String.t()
      }

  """
  @type workload_identity_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      custom_oauth2_provider_config_input() :: %{
        "clientId" => String.t(),
        "clientSecret" => String.t(),
        "oauthDiscovery" => list()
      }

  """
  @type custom_oauth2_provider_config_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_oauth2_credential_provider_request() :: %{
        required("credentialProviderVendor") => list(any()),
        required("name") => String.t(),
        required("oauth2ProviderConfigInput") => list()
      }

  """
  @type create_oauth2_credential_provider_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      gateway_api_key_credential_provider() :: %{
        "credentialLocation" => list(any()),
        "credentialParameterName" => String.t(),
        "credentialPrefix" => String.t(),
        "providerArn" => String.t()
      }

  """
  @type gateway_api_key_credential_provider() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_workload_identity_response() :: %{
        "allowedResourceOauth2ReturnUrls" => list(String.t()),
        "createdTime" => [non_neg_integer()],
        "lastUpdatedTime" => [non_neg_integer()],
        "name" => String.t(),
        "workloadIdentityArn" => String.t()
      }

  """
  @type get_workload_identity_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_agent_runtime_endpoint_request() :: %{}

  """
  @type get_agent_runtime_endpoint_request() :: %{}

  @typedoc """

  ## Example:

      custom_oauth2_provider_config_output() :: %{
        "oauthDiscovery" => list()
      }

  """
  @type custom_oauth2_provider_config_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_code_interpreter_response() :: %{
        "codeInterpreterArn" => String.t(),
        "codeInterpreterId" => String.t(),
        "createdAt" => non_neg_integer(),
        "description" => String.t(),
        "executionRoleArn" => String.t(),
        "lastUpdatedAt" => non_neg_integer(),
        "name" => String.t(),
        "networkConfiguration" => code_interpreter_network_configuration(),
        "status" => list(any())
      }

  """
  @type get_code_interpreter_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      modify_memory_strategies() :: %{
        "addMemoryStrategies" => list(list()),
        "deleteMemoryStrategies" => list(delete_memory_strategy_input()),
        "modifyMemoryStrategies" => list(modify_memory_strategy_input())
      }

  """
  @type modify_memory_strategies() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      agent() :: %{
        "agentRuntimeArn" => String.t(),
        "agentRuntimeId" => String.t(),
        "agentRuntimeName" => String.t(),
        "agentRuntimeVersion" => String.t(),
        "description" => String.t(),
        "lastUpdatedAt" => non_neg_integer(),
        "status" => list(any())
      }

  """
  @type agent() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type service_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      secret() :: %{
        "secretArn" => String.t()
      }

  """
  @type secret() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_oauth2_credential_provider_request() :: %{
        required("credentialProviderVendor") => list(any()),
        required("name") => String.t(),
        required("oauth2ProviderConfigInput") => list()
      }

  """
  @type update_oauth2_credential_provider_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_agent_runtimes_response() :: %{
        "agentRuntimes" => list(agent()),
        "nextToken" => String.t()
      }

  """
  @type list_agent_runtimes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_workload_identities_response() :: %{
        "nextToken" => [String.t()],
        "workloadIdentities" => list(workload_identity_type())
      }

  """
  @type list_workload_identities_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_code_interpreter_request() :: %{}

  """
  @type get_code_interpreter_request() :: %{}

  @typedoc """

  ## Example:

      user_preference_extraction_override() :: %{
        "appendToPrompt" => String.t(),
        "modelId" => [String.t()]
      }

  """
  @type user_preference_extraction_override() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception_field() :: %{
        "message" => [String.t()],
        "name" => [String.t()]
      }

  """
  @type validation_exception_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_location() :: %{
        "bucket" => [String.t()],
        "prefix" => [String.t()]
      }

  """
  @type s3_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      container_configuration() :: %{
        "containerUri" => String.t()
      }

  """
  @type container_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_memory_strategy_input() :: %{
        "memoryStrategyId" => [String.t()]
      }

  """
  @type delete_memory_strategy_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_gateway_response() :: %{
        "authorizerConfiguration" => list(),
        "authorizerType" => list(any()),
        "createdAt" => non_neg_integer(),
        "description" => String.t(),
        "exceptionLevel" => list(any()),
        "gatewayArn" => String.t(),
        "gatewayId" => String.t(),
        "gatewayUrl" => String.t(),
        "kmsKeyArn" => String.t(),
        "name" => String.t(),
        "protocolConfiguration" => list(),
        "protocolType" => list(any()),
        "roleArn" => String.t(),
        "status" => list(any()),
        "statusReasons" => list(String.t()),
        "updatedAt" => non_neg_integer(),
        "workloadIdentityDetails" => workload_identity_details()
      }

  """
  @type update_gateway_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_workload_identity_request() :: %{
        required("name") => String.t()
      }

  """
  @type delete_workload_identity_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      salesforce_oauth2_provider_config_output() :: %{
        "oauthDiscovery" => list()
      }

  """
  @type salesforce_oauth2_provider_config_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_oauth2_credential_provider_response() :: %{
        "clientSecretArn" => secret(),
        "createdTime" => [non_neg_integer()],
        "credentialProviderArn" => String.t(),
        "credentialProviderVendor" => list(any()),
        "lastUpdatedTime" => [non_neg_integer()],
        "name" => String.t(),
        "oauth2ProviderConfigOutput" => list()
      }

  """
  @type update_oauth2_credential_provider_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      user_preference_override_extraction_configuration_input() :: %{
        "appendToPrompt" => String.t(),
        "modelId" => [String.t()]
      }

  """
  @type user_preference_override_extraction_configuration_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      microsoft_oauth2_provider_config_output() :: %{
        "oauthDiscovery" => list()
      }

  """
  @type microsoft_oauth2_provider_config_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      o_auth_credential_provider() :: %{
        "customParameters" => map(),
        "providerArn" => String.t(),
        "scopes" => list(String.t())
      }

  """
  @type o_auth_credential_provider() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      slack_oauth2_provider_config_input() :: %{
        "clientId" => String.t(),
        "clientSecret" => String.t()
      }

  """
  @type slack_oauth2_provider_config_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_memory_output() :: %{
        "memory" => memory()
      }

  """
  @type update_memory_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_code_interpreter_response() :: %{
        "codeInterpreterArn" => String.t(),
        "codeInterpreterId" => String.t(),
        "createdAt" => non_neg_integer(),
        "status" => list(any())
      }

  """
  @type create_code_interpreter_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_agent_runtime_versions_response() :: %{
        "agentRuntimes" => list(agent()),
        "nextToken" => String.t()
      }

  """
  @type list_agent_runtime_versions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_memory_output() :: %{
        "memory" => memory()
      }

  """
  @type get_memory_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_memory_output() :: %{
        "memoryId" => String.t(),
        "status" => list(any())
      }

  """
  @type delete_memory_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_api_key_credential_providers_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => [String.t()]
      }

  """
  @type list_api_key_credential_providers_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      user_preference_memory_strategy_input() :: %{
        "description" => String.t(),
        "name" => String.t(),
        "namespaces" => list(String.t())
      }

  """
  @type user_preference_memory_strategy_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => String.t()
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      microsoft_oauth2_provider_config_input() :: %{
        "clientId" => String.t(),
        "clientSecret" => String.t()
      }

  """
  @type microsoft_oauth2_provider_config_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_browsers_response() :: %{
        "browserSummaries" => list(browser_summary()),
        "nextToken" => String.t()
      }

  """
  @type list_browsers_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_browser_request() :: %{
        optional("clientToken") => String.t()
      }

  """
  @type delete_browser_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_code_interpreter_request() :: %{
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        optional("executionRoleArn") => String.t(),
        required("name") => String.t(),
        required("networkConfiguration") => code_interpreter_network_configuration()
      }

  """
  @type create_code_interpreter_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_memories_input() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t()]
      }

  """
  @type list_memories_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      modify_memory_strategy_input() :: %{
        "configuration" => modify_strategy_configuration(),
        "description" => String.t(),
        "memoryStrategyId" => [String.t()],
        "namespaces" => list(String.t())
      }

  """
  @type modify_memory_strategy_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_gateway_request() :: %{
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        optional("exceptionLevel") => list(any()),
        optional("kmsKeyArn") => String.t(),
        optional("protocolConfiguration") => list(),
        required("authorizerConfiguration") => list(),
        required("authorizerType") => list(any()),
        required("name") => String.t(),
        required("protocolType") => list(any()),
        required("roleArn") => String.t()
      }

  """
  @type create_gateway_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_agent_runtime_response() :: %{
        "agentRuntimeArn" => String.t(),
        "agentRuntimeArtifact" => list(),
        "agentRuntimeId" => String.t(),
        "agentRuntimeName" => String.t(),
        "agentRuntimeVersion" => String.t(),
        "authorizerConfiguration" => list(),
        "createdAt" => non_neg_integer(),
        "description" => String.t(),
        "environmentVariables" => map(),
        "lastUpdatedAt" => non_neg_integer(),
        "networkConfiguration" => network_configuration(),
        "protocolConfiguration" => protocol_configuration(),
        "roleArn" => String.t(),
        "status" => list(any()),
        "workloadIdentityDetails" => workload_identity_details()
      }

  """
  @type get_agent_runtime_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      agent_endpoint() :: %{
        "agentRuntimeArn" => String.t(),
        "agentRuntimeEndpointArn" => String.t(),
        "createdAt" => non_neg_integer(),
        "description" => String.t(),
        "id" => String.t(),
        "lastUpdatedAt" => non_neg_integer(),
        "liveVersion" => String.t(),
        "name" => String.t(),
        "status" => list(any()),
        "targetVersion" => String.t()
      }

  """
  @type agent_endpoint() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_api_key_credential_provider_request() :: %{
        required("apiKey") => String.t(),
        required("name") => String.t()
      }

  """
  @type update_api_key_credential_provider_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_workload_identities_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t()]
      }

  """
  @type list_workload_identities_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      network_configuration() :: %{
        "networkMode" => list(any())
      }

  """
  @type network_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      slack_oauth2_provider_config_output() :: %{
        "oauthDiscovery" => list()
      }

  """
  @type slack_oauth2_provider_config_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      set_token_vault_cm_k_request() :: %{
        optional("tokenVaultId") => String.t(),
        required("kmsConfiguration") => kms_configuration()
      }

  """
  @type set_token_vault_cm_k_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_agent_runtime_endpoint_response() :: %{
        "status" => list(any())
      }

  """
  @type delete_agent_runtime_endpoint_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_oauth2_credential_provider_response() :: %{
        "clientSecretArn" => secret(),
        "createdTime" => [non_neg_integer()],
        "credentialProviderArn" => String.t(),
        "credentialProviderVendor" => list(any()),
        "lastUpdatedTime" => [non_neg_integer()],
        "name" => String.t(),
        "oauth2ProviderConfigOutput" => list()
      }

  """
  @type get_oauth2_credential_provider_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_token_vault_response() :: %{
        "kmsConfiguration" => kms_configuration(),
        "lastModifiedDate" => [non_neg_integer()],
        "tokenVaultId" => String.t()
      }

  """
  @type get_token_vault_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      summary_override_configuration_input() :: %{
        "consolidation" => summary_override_consolidation_configuration_input()
      }

  """
  @type summary_override_configuration_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_agent_runtime_request() :: %{}

  """
  @type delete_agent_runtime_request() :: %{}

  @typedoc """

  ## Example:

      strategy_configuration() :: %{
        "consolidation" => list(),
        "extraction" => list(),
        "type" => list(any())
      }

  """
  @type strategy_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => String.t()
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      semantic_override_extraction_configuration_input() :: %{
        "appendToPrompt" => String.t(),
        "modelId" => [String.t()]
      }

  """
  @type semantic_override_extraction_configuration_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      custom_j_w_t_authorizer_configuration() :: %{
        "allowedAudience" => list(String.t()),
        "allowedClients" => list(String.t()),
        "discoveryUrl" => String.t()
      }

  """
  @type custom_j_w_t_authorizer_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      browser_network_configuration() :: %{
        "networkMode" => list(any())
      }

  """
  @type browser_network_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_api_key_credential_provider_response() :: %{}

  """
  @type delete_api_key_credential_provider_response() :: %{}

  @typedoc """

  ## Example:

      list_agent_runtime_endpoints_response() :: %{
        "nextToken" => String.t(),
        "runtimeEndpoints" => list(agent_endpoint())
      }

  """
  @type list_agent_runtime_endpoints_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_gateway_request() :: %{}

  """
  @type delete_gateway_request() :: %{}

  @typedoc """

  ## Example:

      concurrent_modification_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type concurrent_modification_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_code_interpreter_response() :: %{
        "codeInterpreterId" => String.t(),
        "lastUpdatedAt" => non_neg_integer(),
        "status" => list(any())
      }

  """
  @type delete_code_interpreter_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_agent_runtime_response() :: %{
        "status" => list(any())
      }

  """
  @type delete_agent_runtime_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_oauth2_credential_provider_response() :: %{}

  """
  @type delete_oauth2_credential_provider_response() :: %{}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "fieldList" => list(validation_exception_field()),
        "message" => [String.t()],
        "reason" => list(any())
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => String.t()
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      m_c_p_gateway_configuration() :: %{
        "instructions" => String.t(),
        "searchType" => list(any()),
        "supportedVersions" => list(String.t())
      }

  """
  @type m_c_p_gateway_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_workload_identity_response() :: %{
        "allowedResourceOauth2ReturnUrls" => list(String.t()),
        "createdTime" => [non_neg_integer()],
        "lastUpdatedTime" => [non_neg_integer()],
        "name" => String.t(),
        "workloadIdentityArn" => String.t()
      }

  """
  @type update_workload_identity_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      api_key_credential_provider_item() :: %{
        "createdTime" => [non_neg_integer()],
        "credentialProviderArn" => String.t(),
        "lastUpdatedTime" => [non_neg_integer()],
        "name" => String.t()
      }

  """
  @type api_key_credential_provider_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_oauth2_credential_providers_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t()]
      }

  """
  @type list_oauth2_credential_providers_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_configuration() :: %{
        "bucketOwnerAccountId" => String.t(),
        "uri" => String.t()
      }

  """
  @type s3_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_code_interpreters_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("type") => list(any())
      }

  """
  @type list_code_interpreters_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      protocol_configuration() :: %{
        "serverProtocol" => list(any())
      }

  """
  @type protocol_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      google_oauth2_provider_config_output() :: %{
        "oauthDiscovery" => list()
      }

  """
  @type google_oauth2_provider_config_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      semantic_override_configuration_input() :: %{
        "consolidation" => semantic_override_consolidation_configuration_input(),
        "extraction" => semantic_override_extraction_configuration_input()
      }

  """
  @type semantic_override_configuration_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      user_preference_consolidation_override() :: %{
        "appendToPrompt" => String.t(),
        "modelId" => [String.t()]
      }

  """
  @type user_preference_consolidation_override() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      code_interpreter_network_configuration() :: %{
        "networkMode" => list(any())
      }

  """
  @type code_interpreter_network_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_browser_request() :: %{}

  """
  @type get_browser_request() :: %{}

  @typedoc """

  ## Example:

      mcp_lambda_target_configuration() :: %{
        "lambdaArn" => String.t(),
        "toolSchema" => list()
      }

  """
  @type mcp_lambda_target_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      memory() :: %{
        "arn" => String.t(),
        "createdAt" => [non_neg_integer()],
        "description" => String.t(),
        "encryptionKeyArn" => String.t(),
        "eventExpiryDuration" => [integer()],
        "failureReason" => [String.t()],
        "id" => String.t(),
        "memoryExecutionRoleArn" => String.t(),
        "name" => String.t(),
        "status" => list(any()),
        "strategies" => list(memory_strategy()),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type memory() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_agent_runtime_response() :: %{
        "agentRuntimeArn" => String.t(),
        "agentRuntimeId" => String.t(),
        "agentRuntimeVersion" => String.t(),
        "createdAt" => non_neg_integer(),
        "status" => list(any()),
        "workloadIdentityDetails" => workload_identity_details()
      }

  """
  @type create_agent_runtime_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      credential_provider_configuration() :: %{
        "credentialProvider" => list(),
        "credentialProviderType" => list(any())
      }

  """
  @type credential_provider_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_agent_runtime_endpoint_response() :: %{
        "agentRuntimeArn" => String.t(),
        "agentRuntimeEndpointArn" => String.t(),
        "createdAt" => non_neg_integer(),
        "lastUpdatedAt" => non_neg_integer(),
        "liveVersion" => String.t(),
        "status" => list(any()),
        "targetVersion" => String.t()
      }

  """
  @type update_agent_runtime_endpoint_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_agent_runtime_endpoints_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_agent_runtime_endpoints_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_agent_runtimes_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_agent_runtimes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_token_vault_request() :: %{
        optional("tokenVaultId") => String.t()
      }

  """
  @type get_token_vault_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_agent_runtime_endpoint_request() :: %{
        optional("agentRuntimeVersion") => String.t(),
        optional("clientToken") => String.t(),
        optional("description") => String.t()
      }

  """
  @type update_agent_runtime_endpoint_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_gateway_target_request() :: %{
        optional("description") => String.t(),
        required("credentialProviderConfigurations") => list(credential_provider_configuration()),
        required("name") => String.t(),
        required("targetConfiguration") => list()
      }

  """
  @type update_gateway_target_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_workload_identity_response() :: %{
        "allowedResourceOauth2ReturnUrls" => list(String.t()),
        "name" => String.t(),
        "workloadIdentityArn" => String.t()
      }

  """
  @type create_workload_identity_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_oauth2_credential_providers_response() :: %{
        "credentialProviders" => list(oauth2_credential_provider_item()),
        "nextToken" => [String.t()]
      }

  """
  @type list_oauth2_credential_providers_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_gateways_response() :: %{
        "items" => list(gateway_summary()),
        "nextToken" => String.t()
      }

  """
  @type list_gateways_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      recording_config() :: %{
        "enabled" => [boolean()],
        "s3Location" => s3_location()
      }

  """
  @type recording_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_api_key_credential_provider_response() :: %{
        "apiKeySecretArn" => secret(),
        "createdTime" => [non_neg_integer()],
        "credentialProviderArn" => String.t(),
        "lastUpdatedTime" => [non_neg_integer()],
        "name" => String.t()
      }

  """
  @type update_api_key_credential_provider_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      user_preference_override_consolidation_configuration_input() :: %{
        "appendToPrompt" => String.t(),
        "modelId" => [String.t()]
      }

  """
  @type user_preference_override_consolidation_configuration_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_api_key_credential_providers_response() :: %{
        "credentialProviders" => list(api_key_credential_provider_item()),
        "nextToken" => [String.t()]
      }

  """
  @type list_api_key_credential_providers_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      google_oauth2_provider_config_input() :: %{
        "clientId" => String.t(),
        "clientSecret" => String.t()
      }

  """
  @type google_oauth2_provider_config_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_gateway_targets_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_gateway_targets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_gateway_request() :: %{}

  """
  @type get_gateway_request() :: %{}

  @typedoc """

  ## Example:

      list_memories_output() :: %{
        "memories" => list(memory_summary()),
        "nextToken" => [String.t()]
      }

  """
  @type list_memories_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_browsers_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("type") => list(any())
      }

  """
  @type list_browsers_request() :: %{String.t() => any()}

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
          | throttled_exception()

  @type delete_oauth2_credential_provider_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

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

  @type list_workload_identities_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type set_token_vault_cm_k_errors() ::
          throttling_exception()
          | validation_exception()
          | concurrent_modification_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

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
  Creates an Amazon Secure Agent.
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
      201
    )
  end

  @doc """
  Creates an Amazon Secure AgentEndpoint.
  """
  @spec create_agent_runtime_endpoint(
          map(),
          String.t(),
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
      200
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
      200
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
      201
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
      201
    )
  end

  @doc """
  Creates a gateway for Amazon Bedrock Agent.

  A gateway serves as an integration point between your agent and external
  services.

  To create a gateway, you must specify a name, protocol type, and IAM role. The
  role grants the gateway permission to access Amazon Web Services services and
  resources.
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

  To create a target, you must specify the gateway identifier and target
  configuration.
  """
  @spec create_gateway_target(map(), String.t(), create_gateway_target_request(), list()) ::
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
  Creates a new memory.
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
      200
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
      200
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
      200
    )
  end

  @doc """
  Deletes an Amazon Secure Agent.
  """
  @spec delete_agent_runtime(map(), String.t(), delete_agent_runtime_request(), list()) ::
          {:ok, delete_agent_runtime_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_agent_runtime_errors()}
  def delete_agent_runtime(%Client{} = client, agent_runtime_id, input, options \\ []) do
    url_path = "/runtimes/#{AWS.Util.encode_uri(agent_runtime_id)}/"
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
  Deletes an Amazon Secure AgentEndpoint.
  """
  @spec delete_agent_runtime_endpoint(
          map(),
          String.t(),
          String.t(),
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
      200
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
      200
    )
  end

  @doc """
  Deletes a custom browser.
  """
  @spec delete_browser(map(), String.t(), delete_browser_request(), list()) ::
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
      200
    )
  end

  @doc """
  Deletes a custom code interpreter.
  """
  @spec delete_code_interpreter(map(), String.t(), delete_code_interpreter_request(), list()) ::
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
      200
    )
  end

  @doc """
  Deletes a Gateway.
  """
  @spec delete_gateway(map(), String.t(), delete_gateway_request(), list()) ::
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
  Deletes a Gateway Target.
  """
  @spec delete_gateway_target(
          map(),
          String.t(),
          String.t(),
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
  Deletes a memory.
  """
  @spec delete_memory(map(), String.t(), delete_memory_input(), list()) ::
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
      200
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
      200
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
      200
    )
  end

  @doc """
  Gets an Amazon Secure Agent.
  """
  @spec get_agent_runtime(map(), String.t(), String.t() | nil, list()) ::
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
  @spec get_agent_runtime_endpoint(map(), String.t(), String.t(), list()) ::
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
  @spec get_browser(map(), String.t(), list()) ::
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
  @spec get_code_interpreter(map(), String.t(), list()) ::
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
  Retrieves information about a specific Gateway.
  """
  @spec get_gateway(map(), String.t(), list()) ::
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
  Retrieves information about a specific Gateway Target.
  """
  @spec get_gateway_target(map(), String.t(), String.t(), list()) ::
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
  Retrieve an existing memory.
  """
  @spec get_memory(map(), String.t(), list()) ::
          {:ok, get_memory_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_memory_errors()}
  def get_memory(%Client{} = client, memory_id, options \\ []) do
    url_path = "/memories/#{AWS.Util.encode_uri(memory_id)}/details"
    headers = []
    query_params = []

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
          String.t(),
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
          String.t(),
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
  Lists all targets for a specific Gateway.
  """
  @spec list_gateway_targets(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
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
  Lists all Gateways in the account.
  """
  @spec list_gateways(map(), String.t() | nil, String.t() | nil, list()) ::
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
  Lists the memory present.
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
  Updates an existing Amazon Secure Agent.
  """
  @spec update_agent_runtime(map(), String.t(), update_agent_runtime_request(), list()) ::
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
      201
    )
  end

  @doc """
  Updates an existing Amazon Secure AgentEndpoint.
  """
  @spec update_agent_runtime_endpoint(
          map(),
          String.t(),
          String.t(),
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
      200
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
  Updates an existing Gateway.
  """
  @spec update_gateway(map(), String.t(), update_gateway_request(), list()) ::
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
  Updates an existing Gateway Target.
  """
  @spec update_gateway_target(
          map(),
          String.t(),
          String.t(),
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
  Update memory.
  """
  @spec update_memory(map(), String.t(), update_memory_input(), list()) ::
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
      200
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
