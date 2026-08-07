# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.AgentRegistryControl do
  @moduledoc """
  AWS Agent Registry is a managed catalog for publishing and discovering resources
  such as MCP servers, agents, and agent skills.

  Agent Registry Control is its control-plane API: use it to create and manage
  registries and the records they contain, configure discovery and authorization,
  govern record approval and curation workflows, and manage automatic detection of
  resources. Data-plane search and MCP invocation operations are provided by the
  companion Agent Registry API.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      a2a_agent_card_descriptor() :: %{
        "data" => String.t() | atom(),
        "dataSchemaVersion" => String.t() | atom(),
        "source" => descriptor_source()
      }

  """
  @type a2a_agent_card_descriptor() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      agent_skills_additional_data() :: %{
        "skillMd" => agent_skills_md_descriptor()
      }

  """
  @type agent_skills_additional_data() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      agent_skills_definition_descriptor() :: %{
        "additionalData" => agent_skills_additional_data(),
        "data" => String.t() | atom(),
        "dataSchemaVersion" => String.t() | atom()
      }

  """
  @type agent_skills_definition_descriptor() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      agent_skills_md_descriptor() :: %{
        "data" => String.t() | atom(),
        "dataSchemaVersion" => String.t() | atom(),
        "source" => descriptor_source()
      }

  """
  @type agent_skills_md_descriptor() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      approval_configuration() :: %{
        "autoApprovalRules" => list(list(any())())
      }

  """
  @type approval_configuration() :: %{(String.t() | atom()) => any()}

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

      conflict_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_registry_record_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("displayName") => String.t() | atom(),
        optional("recordVersion") => String.t() | atom(),
        optional("tags") => map(),
        required("descriptors") => descriptors(),
        required("name") => String.t() | atom(),
        required("recordType") => list(any())
      }

  """
  @type create_registry_record_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_registry_record_response() :: %{
        "recordArn" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type create_registry_record_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_registry_request() :: %{
        optional("approvalConfiguration") => approval_configuration(),
        optional("clientToken") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("discoveryConfiguration") => discovery_configuration(),
        optional("tags") => map(),
        required("name") => String.t() | atom()
      }

  """
  @type create_registry_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_registry_response() :: %{
        "registryArn" => String.t() | atom()
      }

  """
  @type create_registry_response() :: %{(String.t() | atom()) => any()}

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

      custom_descriptor() :: %{
        "data" => String.t() | atom()
      }

  """
  @type custom_descriptor() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      custom_j_w_t_authorizer_configuration() :: %{
        "allowedAudience" => list(String.t() | atom()),
        "allowedClients" => list(String.t() | atom()),
        "allowedScopes" => list(String.t() | atom()),
        "customClaims" => list(custom_claim_validation_type()),
        "discoveryUrl" => String.t() | atom(),
        "privateEndpoint" => list(),
        "privateEndpointOverrides" => list(private_endpoint_override())
      }

  """
  @type custom_j_w_t_authorizer_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_registry_record_request() :: %{}

  """
  @type delete_registry_record_request() :: %{}

  @typedoc """

  ## Example:

      delete_registry_record_response() :: %{}

  """
  @type delete_registry_record_response() :: %{}

  @typedoc """

  ## Example:

      delete_registry_request() :: %{}

  """
  @type delete_registry_request() :: %{}

  @typedoc """

  ## Example:

      delete_registry_response() :: %{
        "status" => list(any())
      }

  """
  @type delete_registry_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      descriptor_source() :: %{
        "fromUrl" => descriptor_source_from_url()
      }

  """
  @type descriptor_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      descriptor_source_from_url() :: %{
        "credentialProviderConfigurations" => list(registry_record_credential_provider_configuration()),
        "url" => String.t() | atom()
      }

  """
  @type descriptor_source_from_url() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      descriptors() :: %{
        "a2aAgentCard" => a2a_agent_card_descriptor(),
        "agentSkillsDefinition" => agent_skills_definition_descriptor(),
        "custom" => custom_descriptor(),
        "mcpServer" => mcp_server_descriptor()
      }

  """
  @type descriptors() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      discovery_configuration() :: %{
        "authorizerConfiguration" => list(),
        "authorizerType" => list(any())
      }

  """
  @type discovery_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_registry_record_request() :: %{}

  """
  @type get_registry_record_request() :: %{}

  @typedoc """

  ## Example:

      get_registry_record_response() :: %{
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "descriptors" => descriptors(),
        "displayName" => String.t() | atom(),
        "name" => String.t() | atom(),
        "recordArn" => String.t() | atom(),
        "recordId" => String.t() | atom(),
        "recordType" => list(any()),
        "recordVersion" => String.t() | atom(),
        "registryArn" => String.t() | atom(),
        "status" => list(any()),
        "statusReason" => [String.t() | atom()],
        "updatedAt" => non_neg_integer()
      }

  """
  @type get_registry_record_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_registry_request() :: %{}

  """
  @type get_registry_request() :: %{}

  @typedoc """

  ## Example:

      get_registry_response() :: %{
        "approvalConfiguration" => approval_configuration(),
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "discoveryConfiguration" => discovery_configuration(),
        "name" => String.t() | atom(),
        "registryArn" => String.t() | atom(),
        "registryId" => String.t() | atom(),
        "status" => list(any()),
        "statusReason" => [String.t() | atom()],
        "updatedAt" => non_neg_integer()
      }

  """
  @type get_registry_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_registries_request() :: %{
        optional("filters") => list(registry_filter()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_registries_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_registries_response() :: %{
        "nextToken" => String.t() | atom(),
        "registries" => list(registry_summary())
      }

  """
  @type list_registries_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_registry_records_request() :: %{
        optional("filters") => list(registry_record_filter()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_registry_records_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_registry_records_response() :: %{
        "nextToken" => String.t() | atom(),
        "registryRecords" => list(registry_record_summary())
      }

  """
  @type list_registry_records_response() :: %{(String.t() | atom()) => any()}

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

      managed_vpc_resource() :: %{
        "endpointIpAddressType" => list(any()),
        "routingDomain" => String.t() | atom(),
        "securityGroupIds" => list(String.t() | atom()),
        "subnetIds" => list(String.t() | atom()),
        "tags" => map(),
        "vpcIdentifier" => String.t() | atom()
      }

  """
  @type managed_vpc_resource() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      mcp_server_additional_data() :: %{
        "tools" => mcp_tools_descriptor()
      }

  """
  @type mcp_server_additional_data() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      mcp_server_descriptor() :: %{
        "additionalData" => mcp_server_additional_data(),
        "data" => String.t() | atom(),
        "dataSchemaVersion" => String.t() | atom(),
        "source" => descriptor_source()
      }

  """
  @type mcp_server_descriptor() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      mcp_tools_descriptor() :: %{
        "data" => String.t() | atom(),
        "dataSchemaVersion" => String.t() | atom()
      }

  """
  @type mcp_tools_descriptor() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      private_endpoint_override() :: %{
        "domain" => String.t() | atom(),
        "privateEndpoint" => list()
      }

  """
  @type private_endpoint_override() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      registry_filter() :: %{
        "name" => list(any()),
        "values" => list(String.t() | atom())
      }

  """
  @type registry_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      registry_record_credential_provider_configuration() :: %{
        "credentialProvider" => list(),
        "credentialProviderType" => list(any())
      }

  """
  @type registry_record_credential_provider_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      registry_record_filter() :: %{
        "name" => list(any()),
        "values" => list(String.t() | atom())
      }

  """
  @type registry_record_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      registry_record_iam_credential_provider() :: %{
        "region" => String.t() | atom(),
        "roleArn" => String.t() | atom(),
        "service" => String.t() | atom()
      }

  """
  @type registry_record_iam_credential_provider() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      registry_record_o_auth_credential_provider() :: %{
        "customParameters" => map(),
        "grantType" => list(any()),
        "providerArn" => String.t() | atom(),
        "scopes" => list([String.t() | atom()]())
      }

  """
  @type registry_record_o_auth_credential_provider() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      registry_record_summary() :: %{
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "displayName" => String.t() | atom(),
        "name" => String.t() | atom(),
        "recordArn" => String.t() | atom(),
        "recordId" => String.t() | atom(),
        "recordType" => list(any()),
        "recordVersion" => String.t() | atom(),
        "registryArn" => String.t() | atom(),
        "status" => list(any()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type registry_record_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      registry_summary() :: %{
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "discoveryConfiguration" => discovery_configuration(),
        "name" => String.t() | atom(),
        "registryArn" => String.t() | atom(),
        "registryId" => String.t() | atom(),
        "status" => list(any()),
        "statusReason" => [String.t() | atom()],
        "updatedAt" => non_neg_integer()
      }

  """
  @type registry_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      submit_registry_record_for_approval_request() :: %{}

  """
  @type submit_registry_record_for_approval_request() :: %{}

  @typedoc """

  ## Example:

      submit_registry_record_for_approval_response() :: %{
        "recordArn" => String.t() | atom(),
        "recordId" => String.t() | atom(),
        "registryArn" => String.t() | atom(),
        "status" => list(any()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type submit_registry_record_for_approval_response() :: %{(String.t() | atom()) => any()}

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
        "message" => String.t() | atom()
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

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

      update_registry_record_request() :: %{
        optional("description") => updated_description(),
        optional("descriptors") => updated_descriptors(),
        optional("displayName") => updated_display_name(),
        optional("name") => String.t() | atom(),
        optional("recordType") => list(any()),
        optional("recordVersion") => String.t() | atom(),
        optional("triggerSynchronization") => [boolean()]
      }

  """
  @type update_registry_record_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_registry_record_response() :: %{
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "descriptors" => descriptors(),
        "displayName" => String.t() | atom(),
        "name" => String.t() | atom(),
        "recordArn" => String.t() | atom(),
        "recordId" => String.t() | atom(),
        "recordType" => list(any()),
        "recordVersion" => String.t() | atom(),
        "registryArn" => String.t() | atom(),
        "status" => list(any()),
        "statusReason" => [String.t() | atom()],
        "updatedAt" => non_neg_integer()
      }

  """
  @type update_registry_record_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_registry_record_status_request() :: %{
        required("status") => list(any()),
        required("statusReason") => [String.t() | atom()]
      }

  """
  @type update_registry_record_status_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_registry_record_status_response() :: %{
        "recordArn" => String.t() | atom(),
        "recordId" => String.t() | atom(),
        "registryArn" => String.t() | atom(),
        "status" => list(any()),
        "statusReason" => [String.t() | atom()],
        "updatedAt" => non_neg_integer()
      }

  """
  @type update_registry_record_status_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_registry_request() :: %{
        optional("approvalConfiguration") => updated_approval_configuration(),
        optional("description") => updated_description(),
        optional("discoveryConfiguration") => updated_discovery_configuration(),
        optional("name") => String.t() | atom()
      }

  """
  @type update_registry_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_registry_response() :: %{
        "approvalConfiguration" => approval_configuration(),
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "discoveryConfiguration" => discovery_configuration(),
        "name" => String.t() | atom(),
        "registryArn" => String.t() | atom(),
        "registryId" => String.t() | atom(),
        "status" => list(any()),
        "statusReason" => [String.t() | atom()],
        "updatedAt" => non_neg_integer()
      }

  """
  @type update_registry_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      updated_a2a_agent_card_descriptor() :: %{
        "optionalValue" => updated_a2a_agent_card_descriptor_fields()
      }

  """
  @type updated_a2a_agent_card_descriptor() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      updated_a2a_agent_card_descriptor_fields() :: %{
        "data" => updated_descriptor_data(),
        "dataSchemaVersion" => updated_data_schema_version(),
        "source" => updated_descriptor_source()
      }

  """
  @type updated_a2a_agent_card_descriptor_fields() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      updated_agent_skills_additional_data() :: %{
        "optionalValue" => updated_agent_skills_additional_data_fields()
      }

  """
  @type updated_agent_skills_additional_data() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      updated_agent_skills_additional_data_fields() :: %{
        "skillMd" => updated_agent_skills_md_descriptor()
      }

  """
  @type updated_agent_skills_additional_data_fields() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      updated_agent_skills_definition_descriptor() :: %{
        "optionalValue" => updated_agent_skills_definition_descriptor_fields()
      }

  """
  @type updated_agent_skills_definition_descriptor() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      updated_agent_skills_definition_descriptor_fields() :: %{
        "additionalData" => updated_agent_skills_additional_data(),
        "data" => updated_descriptor_data(),
        "dataSchemaVersion" => updated_data_schema_version()
      }

  """
  @type updated_agent_skills_definition_descriptor_fields() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      updated_agent_skills_md_descriptor() :: %{
        "optionalValue" => updated_agent_skills_md_descriptor_fields()
      }

  """
  @type updated_agent_skills_md_descriptor() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      updated_agent_skills_md_descriptor_fields() :: %{
        "data" => updated_descriptor_data(),
        "dataSchemaVersion" => updated_data_schema_version(),
        "source" => updated_descriptor_source()
      }

  """
  @type updated_agent_skills_md_descriptor_fields() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      updated_approval_configuration() :: %{
        "optionalValue" => approval_configuration()
      }

  """
  @type updated_approval_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      updated_authorizer_configuration() :: %{
        "optionalValue" => list()
      }

  """
  @type updated_authorizer_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      updated_custom_descriptor() :: %{
        "optionalValue" => updated_custom_descriptor_fields()
      }

  """
  @type updated_custom_descriptor() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      updated_custom_descriptor_fields() :: %{
        "data" => updated_descriptor_data()
      }

  """
  @type updated_custom_descriptor_fields() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      updated_data_schema_version() :: %{
        "optionalValue" => String.t() | atom()
      }

  """
  @type updated_data_schema_version() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      updated_description() :: %{
        "optionalValue" => String.t() | atom()
      }

  """
  @type updated_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      updated_descriptor_data() :: %{
        "optionalValue" => String.t() | atom()
      }

  """
  @type updated_descriptor_data() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      updated_descriptor_source() :: %{
        "optionalValue" => descriptor_source()
      }

  """
  @type updated_descriptor_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      updated_descriptors() :: %{
        "optionalValue" => updated_descriptors_fields()
      }

  """
  @type updated_descriptors() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      updated_descriptors_fields() :: %{
        "a2aAgentCard" => updated_a2a_agent_card_descriptor(),
        "agentSkillsDefinition" => updated_agent_skills_definition_descriptor(),
        "custom" => updated_custom_descriptor(),
        "mcpServer" => updated_mcp_server_descriptor()
      }

  """
  @type updated_descriptors_fields() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      updated_discovery_configuration() :: %{
        "authorizerConfiguration" => updated_authorizer_configuration()
      }

  """
  @type updated_discovery_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      updated_display_name() :: %{
        "optionalValue" => String.t() | atom()
      }

  """
  @type updated_display_name() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      updated_mcp_server_additional_data() :: %{
        "optionalValue" => updated_mcp_server_additional_data_fields()
      }

  """
  @type updated_mcp_server_additional_data() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      updated_mcp_server_additional_data_fields() :: %{
        "tools" => updated_mcp_tools_descriptor()
      }

  """
  @type updated_mcp_server_additional_data_fields() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      updated_mcp_server_descriptor() :: %{
        "optionalValue" => updated_mcp_server_descriptor_fields()
      }

  """
  @type updated_mcp_server_descriptor() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      updated_mcp_server_descriptor_fields() :: %{
        "additionalData" => updated_mcp_server_additional_data(),
        "data" => updated_descriptor_data(),
        "dataSchemaVersion" => updated_data_schema_version(),
        "source" => updated_descriptor_source()
      }

  """
  @type updated_mcp_server_descriptor_fields() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      updated_mcp_tools_descriptor() :: %{
        "optionalValue" => updated_mcp_tools_descriptor_fields()
      }

  """
  @type updated_mcp_tools_descriptor() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      updated_mcp_tools_descriptor_fields() :: %{
        "data" => updated_descriptor_data(),
        "dataSchemaVersion" => updated_data_schema_version()
      }

  """
  @type updated_mcp_tools_descriptor_fields() :: %{(String.t() | atom()) => any()}

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

      validation_exception_field() :: %{
        "message" => [String.t() | atom()],
        "name" => [String.t() | atom()]
      }

  """
  @type validation_exception_field() :: %{(String.t() | atom()) => any()}

  @type create_registry_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type create_registry_record_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type delete_registry_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type delete_registry_record_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type get_registry_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type get_registry_record_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type list_registries_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_registry_records_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type submit_registry_record_for_approval_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type tag_resource_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type untag_resource_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type update_registry_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type update_registry_record_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type update_registry_record_status_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  def metadata do
    %{
      api_version: "2025-12-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "agent-registry-control",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Agent Registry Control",
      signature_version: "v4",
      signing_name: "agent-registry",
      target_prefix: nil
    }
  end

  @doc """
  Creates a new registry, a catalog that organizes registry records and defines
  their discovery authorization and record approval behavior.

  Creation is asynchronous: the registry begins in the CREATING status and becomes
  usable once it reaches READY.
  """
  @spec create_registry(map(), create_registry_request(), list()) ::
          {:ok, create_registry_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_registry_errors()}
  def create_registry(%Client{} = client, input, options \\ []) do
    url_path = "/registries"
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
  Creates a registry record within a registry.

  A registry record describes a discoverable resource, such as an MCP server, an
  agent, an agent skill, or a custom resource. Creation is asynchronous: the
  record is returned with the CREATING status while it is processed.
  """
  @spec create_registry_record(
          map(),
          String.t() | atom(),
          create_registry_record_request(),
          list()
        ) ::
          {:ok, create_registry_record_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_registry_record_errors()}
  def create_registry_record(%Client{} = client, registry_id, input, options \\ []) do
    url_path = "/registries/#{AWS.Util.encode_uri(registry_id)}/records"
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
  Deletes a registry.

  Deletion is asynchronous: the registry transitions to the DELETING status and is
  removed along with its registry records.
  """
  @spec delete_registry(map(), String.t() | atom(), delete_registry_request(), list()) ::
          {:ok, delete_registry_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_registry_errors()}
  def delete_registry(%Client{} = client, registry_id, input, options \\ []) do
    url_path = "/registries/#{AWS.Util.encode_uri(registry_id)}"
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
  Deletes a registry record
  """
  @spec delete_registry_record(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_registry_record_request(),
          list()
        ) ::
          {:ok, delete_registry_record_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_registry_record_errors()}
  def delete_registry_record(%Client{} = client, record_id, registry_id, input, options \\ []) do
    url_path =
      "/registries/#{AWS.Util.encode_uri(registry_id)}/records/#{AWS.Util.encode_uri(record_id)}"

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
  Gets a registry by identifier (ARN or ID)
  """
  @spec get_registry(map(), String.t() | atom(), list()) ::
          {:ok, get_registry_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_registry_errors()}
  def get_registry(%Client{} = client, registry_id, options \\ []) do
    url_path = "/registries/#{AWS.Util.encode_uri(registry_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the details of a registry record
  """
  @spec get_registry_record(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_registry_record_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_registry_record_errors()}
  def get_registry_record(%Client{} = client, record_id, registry_id, options \\ []) do
    url_path =
      "/registries/#{AWS.Util.encode_uri(registry_id)}/records/#{AWS.Util.encode_uri(record_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the registries in the caller's account and Region, with optional filtering
  by status and discovery authorizer type
  """
  @spec list_registries(map(), list_registries_request(), list()) ::
          {:ok, list_registries_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_registries_errors()}
  def list_registries(%Client{} = client, input, options \\ []) do
    url_path = "/registries-list"
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
  Lists the registry records within a registry, with optional filtering by name,
  status, and record type
  """
  @spec list_registry_records(map(), String.t() | atom(), list_registry_records_request(), list()) ::
          {:ok, list_registry_records_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_registry_records_errors()}
  def list_registry_records(%Client{} = client, registry_id, input, options \\ []) do
    url_path = "/registries/#{AWS.Util.encode_uri(registry_id)}/records-list"
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
  List the tags on a resource
  """
  @spec list_tags_for_resource(map(), String.t() | atom(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_multi_segment_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Submits a DRAFT registry record for approval, moving it into the registry's
  approval workflow.

  Depending on the registry's approval configuration, the record is either
  auto-approved or set to PENDING_APPROVAL for a curator to approve or reject.
  """
  @spec submit_registry_record_for_approval(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          submit_registry_record_for_approval_request(),
          list()
        ) ::
          {:ok, submit_registry_record_for_approval_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, submit_registry_record_for_approval_errors()}
  def submit_registry_record_for_approval(
        %Client{} = client,
        record_id,
        registry_id,
        input,
        options \\ []
      ) do
    url_path =
      "/registries/#{AWS.Util.encode_uri(registry_id)}/records/#{AWS.Util.encode_uri(record_id)}/submit-for-approval"

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
  Tag a resource with key-value pairs
  """
  @spec tag_resource(map(), String.t() | atom(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_multi_segment_uri(resource_arn)}"
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
  Remove tags from a resource by key
  """
  @spec untag_resource(map(), String.t() | atom(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_multi_segment_uri(resource_arn)}"
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
  Updates an existing registry.

  This operation uses PATCH semantics: specify only the fields you want to change,
  and omit the rest to leave them unchanged. Updates are applied asynchronously
  and the registry transitions to the UPDATING status while they are processed.
  """
  @spec update_registry(map(), String.t() | atom(), update_registry_request(), list()) ::
          {:ok, update_registry_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_registry_errors()}
  def update_registry(%Client{} = client, registry_id, input, options \\ []) do
    url_path = "/registries/#{AWS.Util.encode_uri(registry_id)}"
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
      202
    )
  end

  @doc """
  Updates a registry record.

  The update is asynchronous: the record is returned with the UPDATING status
  while it is processed. Fields that use update wrappers follow PATCH semantics:
  omit the field to leave it unchanged.
  """
  @spec update_registry_record(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_registry_record_request(),
          list()
        ) ::
          {:ok, update_registry_record_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_registry_record_errors()}
  def update_registry_record(%Client{} = client, record_id, registry_id, input, options \\ []) do
    url_path =
      "/registries/#{AWS.Util.encode_uri(registry_id)}/records/#{AWS.Util.encode_uri(record_id)}"

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
      202
    )
  end

  @doc """
  Updates the status of a registry record as part of the registry's curation
  workflow, for example to approve or reject a record that is pending approval, or
  to deprecate an approved record so that it is no longer discoverable
  """
  @spec update_registry_record_status(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_registry_record_status_request(),
          list()
        ) ::
          {:ok, update_registry_record_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_registry_record_status_errors()}
  def update_registry_record_status(
        %Client{} = client,
        record_id,
        registry_id,
        input,
        options \\ []
      ) do
    url_path =
      "/registries/#{AWS.Util.encode_uri(registry_id)}/records/#{AWS.Util.encode_uri(record_id)}/status"

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
      202
    )
  end
end
