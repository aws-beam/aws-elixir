# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.AgentRegistryControl do
  @moduledoc """
  Amazon Web Services Agent Registry is a managed catalog for publishing and
  discovering resources such as MCP servers, agents, and agent skills.

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

      ag_ui_descriptor() :: %{
        "source" => descriptor_source()
      }

  """
  @type ag_ui_descriptor() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      agent_core_gateway_source_details() :: %{
        "authorizerConfiguration" => list(),
        "authorizerType" => [String.t() | atom()],
        "protocolType" => list(any()),
        "workloadIdentityDetails" => workload_identity_details()
      }

  """
  @type agent_core_gateway_source_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      agent_core_runtime_protocol_configuration() :: %{
        "serverProtocol" => list(any())
      }

  """
  @type agent_core_runtime_protocol_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      agent_core_runtime_source_details() :: %{
        "authorizerConfiguration" => list(),
        "protocolConfiguration" => agent_core_runtime_protocol_configuration(),
        "workloadIdentityDetails" => workload_identity_details()
      }

  """
  @type agent_core_runtime_source_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      agent_skills_additional_data() :: %{
        "repositoryProvider" => list(any()),
        "skillMd" => agent_skills_md_descriptor(),
        "skillPackage" => agent_skills_package_descriptor(),
        "sourceConfiguration" => list()
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

      agent_skills_package_descriptor() :: %{
        "source" => descriptor_source()
      }

  """
  @type agent_skills_package_descriptor() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      approval_configuration() :: %{
        "autoApprovalRules" => list(list(any())())
      }

  """
  @type approval_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_publisher_request() :: %{
        optional("categories") => list(String.t() | atom()),
        optional("clientToken") => String.t() | atom(),
        optional("subdomain") => String.t() | atom(),
        required("publisherArn") => String.t() | atom(),
        required("recordArn") => String.t() | atom()
      }

  """
  @type associate_publisher_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_publisher_response() :: %{
        "publicIdentifier" => String.t() | atom(),
        "publisher" => String.t() | atom(),
        "recordArn" => String.t() | atom(),
        "status" => list(any()),
        "statusReason" => String.t() | atom()
      }

  """
  @type associate_publisher_response() :: %{(String.t() | atom()) => any()}

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

      auto_detection() :: %{
        "configuration" => auto_detection_configuration(),
        "status" => list(any()),
        "statusReason" => [String.t() | atom()]
      }

  """
  @type auto_detection() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      auto_detection_configuration() :: %{
        "enabled" => [boolean()],
        "scope" => list(any())
      }

  """
  @type auto_detection_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_publisher_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("tags") => map(),
        required("value") => list()
      }

  """
  @type create_publisher_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_publisher_response() :: %{
        "createdAt" => [non_neg_integer()],
        "domainChallenge" => domain_challenge(),
        "identifierType" => list(any()),
        "publisherArn" => String.t() | atom(),
        "status" => list(any()),
        "statusReason" => String.t() | atom(),
        "tags" => map(),
        "updatedAt" => [non_neg_integer()],
        "value" => list()
      }

  """
  @type create_publisher_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_registry_record_request() :: %{
        optional("artifact") => registry_record_artifact_upload(),
        optional("clientToken") => String.t() | atom(),
        optional("customMetadata") => any(),
        optional("description") => String.t() | atom(),
        optional("displayName") => String.t() | atom(),
        optional("provenance") => list(provenance()),
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
        "authorizationData" => list(),
        "recordArn" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type create_registry_record_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_registry_request() :: %{
        optional("approvalConfiguration") => approval_configuration(),
        optional("autoDetectionConfiguration") => auto_detection_configuration(),
        optional("clientToken") => String.t() | atom(),
        optional("customMetadataSchemaConfiguration") => custom_metadata_schema_configuration(),
        optional("description") => String.t() | atom(),
        optional("discoveryConfiguration") => discovery_configuration(),
        optional("encryptionConfiguration") => encryption_configuration(),
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

      custom_metadata_schema_configuration() :: %{
        "defaultSchema" => String.t() | atom(),
        "recordTypeSchemaOverrides" => list(record_type_schema_override())
      }

  """
  @type custom_metadata_schema_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_publisher_request() :: %{}

  """
  @type delete_publisher_request() :: %{}

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

      dependency_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type dependency_exception() :: %{(String.t() | atom()) => any()}

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
        "agui" => ag_ui_descriptor(),
        "custom" => custom_descriptor(),
        "http" => http_descriptor(),
        "mcpServer" => mcp_server_descriptor(),
        "signatureAgentCard" => signature_agent_card_descriptor()
      }

  """
  @type descriptors() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_publisher_request() :: %{}

  """
  @type disassociate_publisher_request() :: %{}

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

      domain_challenge() :: %{
        "recordName" => String.t() | atom(),
        "recordValue" => String.t() | atom()
      }

  """
  @type domain_challenge() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      encryption_configuration() :: %{
        "kmsKeyArn" => String.t() | atom()
      }

  """
  @type encryption_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_publisher_request() :: %{}

  """
  @type get_publisher_request() :: %{}

  @typedoc """

  ## Example:

      get_registry_record_request() :: %{}

  """
  @type get_registry_record_request() :: %{}

  @typedoc """

  ## Example:

      get_registry_record_response() :: %{
        "artifact" => registry_record_artifact_download(),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t() | atom(),
        "createdByAutoDetection" => [boolean()],
        "customMetadata" => any(),
        "customMetadataSchemaComplianceStatus" => list(any()),
        "description" => String.t() | atom(),
        "descriptors" => descriptors(),
        "displayName" => String.t() | atom(),
        "name" => String.t() | atom(),
        "provenance" => list(provenance()),
        "recordArn" => String.t() | atom(),
        "recordId" => String.t() | atom(),
        "recordType" => list(any()),
        "recordVersion" => String.t() | atom(),
        "registryArn" => String.t() | atom(),
        "status" => list(any()),
        "statusReason" => [String.t() | atom()],
        "synchronizedSource" => list(),
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
        "autoDetection" => auto_detection(),
        "createdAt" => non_neg_integer(),
        "customMetadataSchemaConfiguration" => custom_metadata_schema_configuration(),
        "description" => String.t() | atom(),
        "discoveryConfiguration" => discovery_configuration(),
        "encryptionConfiguration" => encryption_configuration(),
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

      git_hub_synchronized_source() :: %{
        "commitId" => String.t() | atom(),
        "synchronizedAt" => non_neg_integer(),
        "url" => String.t() | atom()
      }

  """
  @type git_hub_synchronized_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      http_descriptor() :: %{
        "source" => descriptor_source()
      }

  """
  @type http_descriptor() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_publisher_associations_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("publisherArn") => String.t() | atom()
      }

  """
  @type list_publisher_associations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_publisher_associations_response() :: %{
        "items" => list(publisher_association()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_publisher_associations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_publishers_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_publishers_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_publishers_response() :: %{
        "items" => list(publisher_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_publishers_response() :: %{(String.t() | atom()) => any()}

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

      o_auth2_authorization_data() :: %{
        "authorizationAttemptId" => String.t() | atom(),
        "authorizationUrl" => String.t() | atom(),
        "expiresAt" => non_neg_integer(),
        "userId" => String.t() | atom()
      }

  """
  @type o_auth2_authorization_data() :: %{(String.t() | atom()) => any()}

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

      provenance() :: %{
        "relation" => list(any()),
        "sourceDetails" => list(),
        "sourceId" => String.t() | atom(),
        "sourceType" => list(any())
      }

  """
  @type provenance() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      provenance_summary() :: %{
        "relation" => list(any()),
        "sourceId" => String.t() | atom(),
        "sourceType" => list(any())
      }

  """
  @type provenance_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      publisher() :: %{
        "createdAt" => [non_neg_integer()],
        "domainChallenge" => domain_challenge(),
        "identifierType" => list(any()),
        "publisherArn" => String.t() | atom(),
        "status" => list(any()),
        "statusReason" => String.t() | atom(),
        "tags" => map(),
        "updatedAt" => [non_neg_integer()],
        "value" => list()
      }

  """
  @type publisher() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      publisher_association() :: %{
        "publicIdentifier" => String.t() | atom(),
        "publisher" => String.t() | atom(),
        "recordArn" => String.t() | atom(),
        "status" => list(any()),
        "statusReason" => String.t() | atom()
      }

  """
  @type publisher_association() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      publisher_summary() :: %{
        "associationCount" => [integer()],
        "createdAt" => [non_neg_integer()],
        "identifierType" => list(any()),
        "pendingAssociationApprovalCount" => [integer()],
        "publisherArn" => String.t() | atom(),
        "status" => list(any()),
        "value" => list()
      }

  """
  @type publisher_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      record_type_schema_override() :: %{
        "recordType" => list(any()),
        "schema" => String.t() | atom()
      }

  """
  @type record_type_schema_override() :: %{(String.t() | atom()) => any()}

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

      registry_record_artifact_download() :: %{
        "downloadUrl" => String.t() | atom(),
        "sha256" => String.t() | atom()
      }

  """
  @type registry_record_artifact_download() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      registry_record_artifact_upload() :: %{
        "content" => binary(),
        "sha256" => String.t() | atom()
      }

  """
  @type registry_record_artifact_upload() :: %{(String.t() | atom()) => any()}

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
        "returnUrl" => String.t() | atom(),
        "scopes" => list([String.t() | atom()]())
      }

  """
  @type registry_record_o_auth_credential_provider() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      registry_record_summary() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t() | atom(),
        "createdByAutoDetection" => [boolean()],
        "customMetadataSchemaComplianceStatus" => list(any()),
        "description" => String.t() | atom(),
        "displayName" => String.t() | atom(),
        "name" => String.t() | atom(),
        "provenanceSummaryList" => list(provenance_summary()),
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
        "autoDetection" => auto_detection(),
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

      s3_source_configuration() :: %{
        "bucketOwnerAccountId" => String.t() | atom()
      }

  """
  @type s3_source_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      s3_synchronized_source() :: %{
        "eTag" => String.t() | atom(),
        "synchronizedAt" => non_neg_integer(),
        "url" => String.t() | atom(),
        "versionId" => String.t() | atom()
      }

  """
  @type s3_synchronized_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      signature_agent_card_additional_data() :: %{
        "category" => list(any())
      }

  """
  @type signature_agent_card_additional_data() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      signature_agent_card_descriptor() :: %{
        "additionalData" => signature_agent_card_additional_data(),
        "data" => String.t() | atom(),
        "dataSchemaVersion" => String.t() | atom(),
        "source" => descriptor_source()
      }

  """
  @type signature_agent_card_descriptor() :: %{(String.t() | atom()) => any()}

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

      update_publisher_association_approval_status_request() :: %{
        required("approvalStatus") => list(any()),
        required("approvalStatusReason") => String.t() | atom()
      }

  """
  @type update_publisher_association_approval_status_request() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      update_publisher_association_approval_status_response() :: %{}

  """
  @type update_publisher_association_approval_status_response() :: %{}

  @typedoc """

  ## Example:

      update_registry_record_request() :: %{
        optional("artifact") => updated_registry_record_artifact(),
        optional("customMetadata") => updated_custom_metadata_map(),
        optional("description") => updated_description(),
        optional("descriptors") => updated_descriptors(),
        optional("displayName") => updated_display_name(),
        optional("forceAuthentication") => [boolean()],
        optional("name") => String.t() | atom(),
        optional("provenance") => list(provenance()),
        optional("recordType") => list(any()),
        optional("recordVersion") => String.t() | atom(),
        optional("triggerSynchronization") => [boolean()]
      }

  """
  @type update_registry_record_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_registry_record_response() :: %{
        "authorizationData" => list(),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t() | atom(),
        "createdByAutoDetection" => [boolean()],
        "customMetadata" => any(),
        "customMetadataSchemaComplianceStatus" => list(any()),
        "description" => String.t() | atom(),
        "descriptors" => descriptors(),
        "displayName" => String.t() | atom(),
        "name" => String.t() | atom(),
        "provenance" => list(provenance()),
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
        optional("autoDetectionConfiguration") => updated_auto_detection_configuration(),
        optional("customMetadataSchemaConfiguration") => updated_custom_metadata_schema_configuration(),
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
        "autoDetection" => auto_detection(),
        "createdAt" => non_neg_integer(),
        "customMetadataSchemaConfiguration" => custom_metadata_schema_configuration(),
        "description" => String.t() | atom(),
        "discoveryConfiguration" => discovery_configuration(),
        "encryptionConfiguration" => encryption_configuration(),
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

      updated_ag_ui_descriptor() :: %{
        "optionalValue" => updated_ag_ui_descriptor_fields()
      }

  """
  @type updated_ag_ui_descriptor() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      updated_ag_ui_descriptor_fields() :: %{
        "source" => updated_descriptor_source()
      }

  """
  @type updated_ag_ui_descriptor_fields() :: %{(String.t() | atom()) => any()}

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
        "repositoryProvider" => updated_agent_skills_repository_provider(),
        "skillMd" => updated_agent_skills_md_descriptor(),
        "skillPackage" => updated_agent_skills_package_descriptor(),
        "sourceConfiguration" => updated_agent_skills_source_configuration()
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

      updated_agent_skills_package_descriptor() :: %{
        "optionalValue" => agent_skills_package_descriptor()
      }

  """
  @type updated_agent_skills_package_descriptor() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      updated_agent_skills_repository_provider() :: %{
        "optionalValue" => list(any())
      }

  """
  @type updated_agent_skills_repository_provider() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      updated_agent_skills_source_configuration() :: %{
        "optionalValue" => list()
      }

  """
  @type updated_agent_skills_source_configuration() :: %{(String.t() | atom()) => any()}

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

      updated_auto_detection_configuration() :: %{
        "optionalValue" => auto_detection_configuration()
      }

  """
  @type updated_auto_detection_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      updated_bot_category() :: %{
        "optionalValue" => list(any())
      }

  """
  @type updated_bot_category() :: %{(String.t() | atom()) => any()}

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

      updated_custom_metadata_map() :: %{
        "optionalValue" => any()
      }

  """
  @type updated_custom_metadata_map() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      updated_custom_metadata_schema_configuration() :: %{
        "optionalValue" => custom_metadata_schema_configuration()
      }

  """
  @type updated_custom_metadata_schema_configuration() :: %{(String.t() | atom()) => any()}

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
        "agui" => updated_ag_ui_descriptor(),
        "custom" => updated_custom_descriptor(),
        "http" => updated_http_descriptor(),
        "mcpServer" => updated_mcp_server_descriptor(),
        "signatureAgentCard" => updated_signature_agent_card_descriptor()
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

      updated_http_descriptor() :: %{
        "optionalValue" => updated_http_descriptor_fields()
      }

  """
  @type updated_http_descriptor() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      updated_http_descriptor_fields() :: %{
        "source" => updated_descriptor_source()
      }

  """
  @type updated_http_descriptor_fields() :: %{(String.t() | atom()) => any()}

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

      updated_registry_record_artifact() :: %{
        "optionalValue" => registry_record_artifact_upload()
      }

  """
  @type updated_registry_record_artifact() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      updated_signature_agent_card_additional_data() :: %{
        "optionalValue" => updated_signature_agent_card_additional_data_fields()
      }

  """
  @type updated_signature_agent_card_additional_data() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      updated_signature_agent_card_additional_data_fields() :: %{
        "category" => updated_bot_category()
      }

  """
  @type updated_signature_agent_card_additional_data_fields() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      updated_signature_agent_card_descriptor() :: %{
        "optionalValue" => updated_signature_agent_card_descriptor_fields()
      }

  """
  @type updated_signature_agent_card_descriptor() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      updated_signature_agent_card_descriptor_fields() :: %{
        "additionalData" => updated_signature_agent_card_additional_data(),
        "data" => updated_descriptor_data(),
        "dataSchemaVersion" => updated_data_schema_version(),
        "source" => updated_descriptor_source()
      }

  """
  @type updated_signature_agent_card_descriptor_fields() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validate_publisher_request() :: %{}

  """
  @type validate_publisher_request() :: %{}

  @typedoc """

  ## Example:

      validate_publisher_response() :: %{
        "createdAt" => [non_neg_integer()],
        "domainChallenge" => domain_challenge(),
        "identifierType" => list(any()),
        "publisherArn" => String.t() | atom(),
        "status" => list(any()),
        "statusReason" => String.t() | atom(),
        "tags" => map(),
        "updatedAt" => [non_neg_integer()],
        "value" => list()
      }

  """
  @type validate_publisher_response() :: %{(String.t() | atom()) => any()}

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

  @typedoc """

  ## Example:

      workload_identity_details() :: %{
        "workloadIdentityArn" => [String.t() | atom()]
      }

  """
  @type workload_identity_details() :: %{(String.t() | atom()) => any()}

  @type associate_publisher_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | internal_server_exception()
          | dependency_exception()
          | conflict_exception()
          | access_denied_exception()

  @type create_publisher_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

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

  @type delete_publisher_errors() ::
          validation_exception()
          | throttling_exception()
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

  @type disassociate_publisher_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type get_publisher_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
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

  @type list_publisher_associations_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_publishers_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
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

  @type update_publisher_association_approval_status_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | conflict_exception()
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

  @type validate_publisher_errors() ::
          validation_exception()
          | throttling_exception()
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
  Associate a registry record with a publisher and assign the record a public
  identifier under the
  publisher's domain.

  The registry record must be APPROVED and the publisher must be ACTIVE. A
  registry record can have only one publisher association. The new association
  starts in
  PENDING_APPROVAL until a curator approves or rejects it.
  A ConflictException (HTTP 409) means the publisher is not ACTIVE yet, the
  registry record already
  has an association, or another registry record already holds the public
  identifier. To retry
  safely, repeat the request with the same clientToken; a retry returns the
  original association.
  If the publisher has reached its association quota, the request fails with
  ServiceQuotaExceededException (HTTP 402). Remove an unused association or
  request a quota increase.
  """
  @spec associate_publisher(map(), associate_publisher_request(), list()) ::
          {:ok, associate_publisher_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_publisher_errors()}
  def associate_publisher(%Client{} = client, input, options \\ []) do
    url_path = "/associations"
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
  Create a publisher for a domain you control.

  The publisher starts in ACTION_REQUIRED, and the
  response includes a domainChallenge. To verify the domain, create a DNS TXT
  record with the
  challenge's recordName and recordValue. When the registry finds the record, the
  publisher becomes
  ACTIVE and you can associate registry records with it.
  Your account can have one publisher per domain. Creating a second publisher for
  the same domain
  fails with ConflictException unless the request repeats the original
  clientToken, which returns the
  existing publisher. The request also fails with ConflictException when another
  account has already
  verified the domain.
  If your account has reached its Publisher quota, the request fails with
  ServiceQuotaExceededException (HTTP 402). Delete an unused Publisher or request
  a quota increase.
  """
  @spec create_publisher(map(), create_publisher_request(), list()) ::
          {:ok, create_publisher_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_publisher_errors()}
  def create_publisher(%Client{} = client, input, options \\ []) do
    url_path = "/publishers"
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
  agent, an agent skill, or a custom resource. For an agent skill, you can upload
  a skill package in `artifact`, or synchronize the skill from an Amazon S3 or
  GitHub source. Creation is asynchronous: the operation returns the record with
  the `CREATING` status while the registry processes it. If a GitHub user must
  first authorize access to the source, the operation returns the record with the
  `CREATE_PENDING_AUTH` status instead.
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
  Delete a publisher.

  A successful call returns an empty response. You can't delete a publisher
  that has registry record associations; disassociate every registry record from
  it first. The
  request fails with ConflictException while the publisher has associations or
  another delete is in
  progress. Association removals can take a few seconds to be reflected, so a
  delete that follows a
  disassociation can briefly fail with ConflictException; retry after a short
  wait. If the publisher
  ARN names your account and the publisher doesn't exist, the request fails with
  ResourceNotFoundException.
  """
  @spec delete_publisher(map(), String.t() | atom(), delete_publisher_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_publisher_errors()}
  def delete_publisher(%Client{} = client, publisher_arn, input, options \\ []) do
    url_path = "/publishers/#{AWS.Util.encode_uri(publisher_arn)}"
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
  Remove a registry record's publisher association and release its public
  identifier.

  A successful
  call returns an empty response. Disassociating a registry record that has no
  association succeeds.
  If another account created the association, the request fails with
  AccessDeniedException.
  """
  @spec disassociate_publisher(
          map(),
          String.t() | atom(),
          disassociate_publisher_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_publisher_errors()}
  def disassociate_publisher(%Client{} = client, record_arn, input, options \\ []) do
    url_path = "/associations/#{AWS.Util.encode_multi_segment_uri(record_arn)}"
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
  Get a publisher, including its verification status and the DNS challenge for its
  domain.

  If the
  publisher ARN names your account and the publisher doesn't exist, the request
  fails with
  ResourceNotFoundException.
  """
  @spec get_publisher(map(), String.t() | atom(), list()) ::
          {:ok, publisher(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_publisher_errors()}
  def get_publisher(%Client{} = client, publisher_arn, options \\ []) do
    url_path = "/publishers/#{AWS.Util.encode_uri(publisher_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
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
  Retrieves the details of a registry record.

  The response describes the record's latest revision, including a revision that
  isn't approved yet. For a skill record, the operation also returns the skill
  package in `artifact` and the source that the registry last synchronized the
  skill from in `synchronizedSource`.
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
  List the registry record associations your account created.

  Pass publisherArn to list only the
  associations for that publisher; omit it to list associations across all
  publishers. Results are
  eventually consistent, so an association you just created or removed can take a
  few seconds to
  appear in or disappear from the list.
  """
  @spec list_publisher_associations(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_publisher_associations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_publisher_associations_errors()}
  def list_publisher_associations(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        publisher_arn \\ nil,
        options \\ []
      ) do
    url_path = "/associations"
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
      if !is_nil(publisher_arn) do
        [{"publisherArn", publisher_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List the publishers your account owns, followed by the ACTIVE publishers shared
  with your account.
  """
  @spec list_publishers(map(), String.t() | atom() | nil, String.t() | atom() | nil, list()) ::
          {:ok, list_publishers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_publishers_errors()}
  def list_publishers(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/publishers"
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
  Lists the tags associated with the specified Amazon Web Services Agent Registry
  resource.

  Returns the current tag key-value pairs on the resource.
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
  Adds or overwrites one or more tags for the specified Amazon Web Services Agent
  Registry resource.

  Tags are key-value pairs that you can use to categorize and manage Amazon Web
  Services resources. If a tag with the same key already exists on the resource,
  the service replaces its value with the value you specify.
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
  Removes one or more tags from the specified Amazon Web Services Agent Registry
  resource.

  The operation removes only the tags whose keys you supply; other tags on the
  resource remain unchanged.
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
  Record the curator's decision (APPROVED or REJECTED) on a registry record's
  publisher association.

  A successful call returns an empty response. Repeating the decision the
  association already holds
  changes nothing; the same approvalStatus with a different approvalStatusReason
  updates the reason.
  If the caller has no publisher association for the registry record, the request
  fails with
  AccessDeniedException. A ConflictException (HTTP 409) means the association is
  not in a state
  that accepts the decision (e.g. not PENDING_APPROVAL/APPROVED/REJECTED) or it
  changed while the
  request was being applied; read it again before deciding whether to resubmit.
  """
  @spec update_publisher_association_approval_status(
          map(),
          String.t() | atom(),
          update_publisher_association_approval_status_request(),
          list()
        ) ::
          {:ok, update_publisher_association_approval_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_publisher_association_approval_status_errors()}
  def update_publisher_association_approval_status(
        %Client{} = client,
        record_arn,
        input,
        options \\ []
      ) do
    url_path = "/associations/#{AWS.Util.encode_multi_segment_uri(record_arn)}"
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

  The update is asynchronous: the operation returns the record with the `UPDATING`
  status while the registry processes it. If a GitHub user must first authorize
  access to the record's skill source, the operation returns the record with the
  `UPDATE_PENDING_AUTH` status instead. Fields that use update wrappers follow
  PATCH semantics: omit the field to leave it unchanged.
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

  @doc """
  Restart domain verification for a publisher in FAILED or SUSPENDED.

  The publisher returns to
  ACTION_REQUIRED with a new domainChallenge, which the response includes. Update
  the DNS TXT record
  with the new recordValue; the previous value no longer verifies the domain. The
  request fails with
  ConflictException when the publisher is ACTIVE, verification is already in
  progress
  (ACTION_REQUIRED), or the publisher is being deleted.
  """
  @spec validate_publisher(map(), String.t() | atom(), validate_publisher_request(), list()) ::
          {:ok, validate_publisher_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, validate_publisher_errors()}
  def validate_publisher(%Client{} = client, publisher_arn, input, options \\ []) do
    url_path = "/publishers/#{AWS.Util.encode_uri(publisher_arn)}/verification"
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
