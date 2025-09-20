# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.BedrockAgentCoreControl do
  @moduledoc """
  is in preview release and is subject to change.

  Welcome to the Amazon Bedrock AgentCore Control plane API reference. Control
  plane actions configure, create, modify, and monitor Amazon Web Services
  resources.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      update_gateway_request() :: %{
        optional("description") => String.t() | atom(),
        optional("exceptionLevel") => list(any()),
        optional("kmsKeyArn") => String.t() | atom(),
        optional("protocolConfiguration") => list(),
        required("authorizerConfiguration") => list(),
        required("authorizerType") => list(any()),
        required("name") => String.t() | atom(),
        required("protocolType") => list(any()),
        required("roleArn") => String.t() | atom()
      }

  """
  @type update_gateway_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      modify_strategy_configuration() :: %{
        "consolidation" => list(),
        "extraction" => list()
      }

  """
  @type modify_strategy_configuration() :: %{(String.t() | atom()) => any()}

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

      create_oauth2_credential_provider_response() :: %{
        "clientSecretArn" => secret(),
        "credentialProviderArn" => String.t() | atom(),
        "name" => String.t() | atom()
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
        "kmsKeyArn" => String.t() | atom(),
        "name" => String.t() | atom(),
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

      salesforce_oauth2_provider_config_input() :: %{
        "clientId" => String.t() | atom(),
        "clientSecret" => String.t() | atom()
      }

  """
  @type salesforce_oauth2_provider_config_input() :: %{(String.t() | atom()) => any()}

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

      get_oauth2_credential_provider_request() :: %{
        required("name") => String.t() | atom()
      }

  """
  @type get_oauth2_credential_provider_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_workload_identity_request() :: %{
        required("name") => String.t() | atom()
      }

  """
  @type get_workload_identity_request() :: %{(String.t() | atom()) => any()}

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

      encryption_failure() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type encryption_failure() :: %{(String.t() | atom()) => any()}

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

      get_agent_runtime_request() :: %{
        optional("agentRuntimeVersion") => String.t() | atom()
      }

  """
  @type get_agent_runtime_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_memory_input() :: %{}

  """
  @type get_memory_input() :: %{}

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

      user_preference_override_configuration_input() :: %{
        "consolidation" => user_preference_override_consolidation_configuration_input(),
        "extraction" => user_preference_override_extraction_configuration_input()
      }

  """
  @type user_preference_override_configuration_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_gateway_target_response() :: %{
        "createdAt" => non_neg_integer(),
        "credentialProviderConfigurations" => list(credential_provider_configuration()),
        "description" => String.t() | atom(),
        "gatewayArn" => String.t() | atom(),
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

      semantic_override_consolidation_configuration_input() :: %{
        "appendToPrompt" => String.t() | atom(),
        "modelId" => [String.t() | atom()]
      }

  """
  @type semantic_override_consolidation_configuration_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_agent_runtime_endpoint_response() :: %{
        "agentRuntimeArn" => String.t() | atom(),
        "agentRuntimeEndpointArn" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "status" => list(any()),
        "targetVersion" => String.t() | atom()
      }

  """
  @type create_agent_runtime_endpoint_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_api_key_credential_provider_request() :: %{
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

      create_gateway_target_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        required("credentialProviderConfigurations") => list(credential_provider_configuration()),
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

      oauth2_authorization_server_metadata() :: %{
        "authorizationEndpoint" => String.t() | atom(),
        "issuer" => String.t() | atom(),
        "responseTypes" => list(String.t() | atom()),
        "tokenEndpoint" => String.t() | atom()
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
        "oauthDiscovery" => list()
      }

  """
  @type github_oauth2_provider_config_output() :: %{(String.t() | atom()) => any()}

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

      create_browser_request() :: %{
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

      create_workload_identity_request() :: %{
        optional("allowedResourceOauth2ReturnUrls") => list(String.t() | atom()),
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
        "kmsKeyArn" => String.t() | atom(),
        "name" => String.t() | atom(),
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

      create_memory_output() :: %{
        "memory" => memory()
      }

  """
  @type create_memory_output() :: %{(String.t() | atom()) => any()}

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

      secret() :: %{
        "secretArn" => String.t() | atom()
      }

  """
  @type secret() :: %{(String.t() | atom()) => any()}

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

      user_preference_extraction_override() :: %{
        "appendToPrompt" => String.t() | atom(),
        "modelId" => [String.t() | atom()]
      }

  """
  @type user_preference_extraction_override() :: %{(String.t() | atom()) => any()}

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

      s3_location() :: %{
        "bucket" => [String.t() | atom()],
        "prefix" => [String.t() | atom()]
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
        "kmsKeyArn" => String.t() | atom(),
        "name" => String.t() | atom(),
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

      salesforce_oauth2_provider_config_output() :: %{
        "oauthDiscovery" => list()
      }

  """
  @type salesforce_oauth2_provider_config_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_oauth2_credential_provider_response() :: %{
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
        "oauthDiscovery" => list()
      }

  """
  @type microsoft_oauth2_provider_config_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      o_auth_credential_provider() :: %{
        "customParameters" => map(),
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
        "clientSecret" => String.t() | atom()
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

      delete_browser_request() :: %{
        optional("clientToken") => String.t() | atom()
      }

  """
  @type delete_browser_request() :: %{(String.t() | atom()) => any()}

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
        optional("clientToken") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("exceptionLevel") => list(any()),
        optional("kmsKeyArn") => String.t() | atom(),
        optional("protocolConfiguration") => list(),
        required("authorizerConfiguration") => list(),
        required("authorizerType") => list(any()),
        required("name") => String.t() | atom(),
        required("protocolType") => list(any()),
        required("roleArn") => String.t() | atom()
      }

  """
  @type create_gateway_request() :: %{(String.t() | atom()) => any()}

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
        "lastUpdatedAt" => non_neg_integer(),
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

      slack_oauth2_provider_config_output() :: %{
        "oauthDiscovery" => list()
      }

  """
  @type slack_oauth2_provider_config_output() :: %{(String.t() | atom()) => any()}

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
        "status" => list(any())
      }

  """
  @type delete_agent_runtime_endpoint_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_oauth2_credential_provider_response() :: %{
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

      get_token_vault_response() :: %{
        "kmsConfiguration" => kms_configuration(),
        "lastModifiedDate" => [non_neg_integer()],
        "tokenVaultId" => String.t() | atom()
      }

  """
  @type get_token_vault_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      summary_override_configuration_input() :: %{
        "consolidation" => summary_override_consolidation_configuration_input()
      }

  """
  @type summary_override_configuration_input() :: %{(String.t() | atom()) => any()}

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

      semantic_override_extraction_configuration_input() :: %{
        "appendToPrompt" => String.t() | atom(),
        "modelId" => [String.t() | atom()]
      }

  """
  @type semantic_override_extraction_configuration_input() :: %{(String.t() | atom()) => any()}

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
        "discoveryUrl" => String.t() | atom()
      }

  """
  @type custom_j_w_t_authorizer_configuration() :: %{(String.t() | atom()) => any()}

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

      delete_agent_runtime_response() :: %{
        "status" => list(any())
      }

  """
  @type delete_agent_runtime_response() :: %{(String.t() | atom()) => any()}

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

      throttling_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

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

      protocol_configuration() :: %{
        "serverProtocol" => list(any())
      }

  """
  @type protocol_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      google_oauth2_provider_config_output() :: %{
        "oauthDiscovery" => list()
      }

  """
  @type google_oauth2_provider_config_output() :: %{(String.t() | atom()) => any()}

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
        optional("description") => String.t() | atom(),
        required("credentialProviderConfigurations") => list(credential_provider_configuration()),
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

      google_oauth2_provider_config_input() :: %{
        "clientId" => String.t() | atom(),
        "clientSecret" => String.t() | atom()
      }

  """
  @type google_oauth2_provider_config_input() :: %{(String.t() | atom()) => any()}

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

      get_gateway_request() :: %{}

  """
  @type get_gateway_request() :: %{}

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

  @type set_token_vault_cm_k_errors() ::
          throttling_exception()
          | validation_exception()
          | concurrent_modification_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

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
      201
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
      200
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
      200
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
  @spec get_memory(map(), String.t() | atom(), list()) ::
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
  Lists the tags associated with the specified resource.
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
  Associates the specified tags to a resource with the specified resourceArn.

  If existing tags on a resource are not specified in the request parameters, they
  are not changed. When a resource is deleted, the tags associated with that
  resource are also deleted.
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
      201
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
