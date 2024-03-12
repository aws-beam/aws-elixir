# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.BedrockAgent do
  @moduledoc """
  An example service, deployed with the Octane Service creator,
  which will echo the string
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
  knowledge_base_configuration() :: %{
    "type" => list(any()),
    "vectorKnowledgeBaseConfiguration" => vector_knowledge_base_configuration()
  }
  """
  @type knowledge_base_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  prepare_agent_request() :: %{

  }
  """
  @type prepare_agent_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  ingestion_job_statistics() :: %{
    "numberOfDocumentsDeleted" => [float()],
    "numberOfDocumentsFailed" => [float()],
    "numberOfDocumentsScanned" => [float()],
    "numberOfModifiedDocumentsIndexed" => [float()],
    "numberOfNewDocumentsIndexed" => [float()]
  }
  """
  @type ingestion_job_statistics() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_agent_action_group_request() :: %{
    optional("actionGroupExecutor") => list(),
    optional("actionGroupState") => list(any()),
    optional("apiSchema") => list(),
    optional("description") => String.t(),
    optional("parentActionGroupSignature") => list(any()),
    required("actionGroupName") => String.t()
  }
  """
  @type update_agent_action_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  tag_resource_request() :: %{
    required("tags") => map()
  }
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_agent_alias_response() :: %{
    "agentAlias" => agent_alias()
  }
  """
  @type get_agent_alias_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_agents_request() :: %{
    optional("maxResults") => integer(),
    optional("nextToken") => String.t()
  }
  """
  @type list_agents_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_agent_action_groups_request() :: %{
    optional("maxResults") => integer(),
    optional("nextToken") => String.t()
  }
  """
  @type list_agent_action_groups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_data_source_request() :: %{
    optional("clientToken") => String.t(),
    optional("description") => String.t(),
    optional("serverSideEncryptionConfiguration") => server_side_encryption_configuration(),
    optional("vectorIngestionConfiguration") => vector_ingestion_configuration(),
    required("dataSourceConfiguration") => data_source_configuration(),
    required("name") => String.t()
  }
  """
  @type create_data_source_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  data_source_configuration() :: %{
    "s3Configuration" => s3_data_source_configuration(),
    "type" => list(any())
  }
  """
  @type data_source_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  untag_resource_response() :: %{

  }
  """
  @type untag_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  start_ingestion_job_request() :: %{
    optional("clientToken") => String.t(),
    optional("description") => String.t()
  }
  """
  @type start_ingestion_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  inference_configuration() :: %{
    "maximumLength" => integer(),
    "stopSequences" => list([String.t()]()),
    "temperature" => float(),
    "topK" => integer(),
    "topP" => float()
  }
  """
  @type inference_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  fixed_size_chunking_configuration() :: %{
    "maxTokens" => [integer()],
    "overlapPercentage" => [integer()]
  }
  """
  @type fixed_size_chunking_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_agents_response() :: %{
    "agentSummaries" => list(agent_summary()()),
    "nextToken" => String.t()
  }
  """
  @type list_agents_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_agent_request() :: %{
    optional("clientToken") => String.t(),
    optional("customerEncryptionKeyArn") => String.t(),
    optional("description") => String.t(),
    optional("foundationModel") => String.t(),
    optional("idleSessionTTLInSeconds") => integer(),
    optional("instruction") => String.t(),
    optional("promptOverrideConfiguration") => prompt_override_configuration(),
    optional("tags") => map(),
    required("agentName") => String.t(),
    required("agentResourceRoleArn") => String.t()
  }
  """
  @type create_agent_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  open_search_serverless_field_mapping() :: %{
    "metadataField" => String.t(),
    "textField" => String.t(),
    "vectorField" => String.t()
  }
  """
  @type open_search_serverless_field_mapping() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_agent_alias_request() :: %{
    optional("description") => String.t(),
    optional("routingConfiguration") => list(agent_alias_routing_configuration_list_item()()),
    required("agentAliasName") => String.t()
  }
  """
  @type update_agent_alias_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  prompt_override_configuration() :: %{
    "overrideLambda" => String.t(),
    "promptConfigurations" => list(prompt_configuration()())
  }
  """
  @type prompt_override_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_agent_knowledge_base_response() :: %{
    "agentKnowledgeBase" => agent_knowledge_base()
  }
  """
  @type update_agent_knowledge_base_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_knowledge_base_request() :: %{
    optional("description") => String.t(),
    required("knowledgeBaseConfiguration") => knowledge_base_configuration(),
    required("name") => String.t(),
    required("roleArn") => String.t(),
    required("storageConfiguration") => storage_configuration()
  }
  """
  @type update_knowledge_base_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_knowledge_base_response() :: %{
    "knowledgeBaseId" => String.t(),
    "status" => list(any())
  }
  """
  @type delete_knowledge_base_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  open_search_serverless_configuration() :: %{
    "collectionArn" => String.t(),
    "fieldMapping" => open_search_serverless_field_mapping(),
    "vectorIndexName" => String.t()
  }
  """
  @type open_search_serverless_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  prepare_agent_response() :: %{
    "agentId" => String.t(),
    "agentStatus" => list(any()),
    "agentVersion" => String.t(),
    "preparedAt" => non_neg_integer()
  }
  """
  @type prepare_agent_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_data_source_response() :: %{
    "dataSource" => data_source()
  }
  """
  @type update_data_source_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  rds_configuration() :: %{
    "credentialsSecretArn" => String.t(),
    "databaseName" => String.t(),
    "fieldMapping" => rds_field_mapping(),
    "resourceArn" => String.t(),
    "tableName" => String.t()
  }
  """
  @type rds_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_knowledge_base_response() :: %{
    "knowledgeBase" => knowledge_base()
  }
  """
  @type create_knowledge_base_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  untag_resource_request() :: %{
    required("tagKeys") => list(String.t()())
  }
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_agent_knowledge_base_request() :: %{

  }
  """
  @type get_agent_knowledge_base_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  agent_version_summary() :: %{
    "agentName" => String.t(),
    "agentStatus" => list(any()),
    "agentVersion" => String.t(),
    "createdAt" => non_neg_integer(),
    "description" => String.t(),
    "updatedAt" => non_neg_integer()
  }
  """
  @type agent_version_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  action_group_summary() :: %{
    "actionGroupId" => String.t(),
    "actionGroupName" => String.t(),
    "actionGroupState" => list(any()),
    "description" => String.t(),
    "updatedAt" => non_neg_integer()
  }
  """
  @type action_group_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_agent_version_request() :: %{
    optional("skipResourceInUseCheck") => [boolean()]
  }
  """
  @type delete_agent_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_agent_versions_request() :: %{
    optional("maxResults") => integer(),
    optional("nextToken") => String.t()
  }
  """
  @type list_agent_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  ingestion_job() :: %{
    "dataSourceId" => String.t(),
    "description" => String.t(),
    "failureReasons" => list(String.t()()),
    "ingestionJobId" => String.t(),
    "knowledgeBaseId" => String.t(),
    "startedAt" => non_neg_integer(),
    "statistics" => ingestion_job_statistics(),
    "status" => list(any()),
    "updatedAt" => non_neg_integer()
  }
  """
  @type ingestion_job() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_agent_action_group_response() :: %{
    "agentActionGroup" => agent_action_group()
  }
  """
  @type get_agent_action_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_agent_action_group_response() :: %{

  }
  """
  @type delete_agent_action_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_agent_action_group_response() :: %{
    "agentActionGroup" => agent_action_group()
  }
  """
  @type create_agent_action_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_agent_alias_response() :: %{
    "agentAliasId" => String.t(),
    "agentAliasStatus" => list(any()),
    "agentId" => String.t()
  }
  """
  @type delete_agent_alias_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_agent_version_request() :: %{

  }
  """
  @type get_agent_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_agent_response() :: %{
    "agent" => agent()
  }
  """
  @type create_agent_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_data_sources_request() :: %{
    optional("maxResults") => integer(),
    optional("nextToken") => String.t()
  }
  """
  @type list_data_sources_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_data_source_response() :: %{
    "dataSourceId" => String.t(),
    "knowledgeBaseId" => String.t(),
    "status" => list(any())
  }
  """
  @type delete_data_source_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_agent_aliases_response() :: %{
    "agentAliasSummaries" => list(agent_alias_summary()()),
    "nextToken" => String.t()
  }
  """
  @type list_agent_aliases_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_knowledge_base_request() :: %{
    optional("clientToken") => String.t(),
    optional("description") => String.t(),
    optional("tags") => map(),
    required("knowledgeBaseConfiguration") => knowledge_base_configuration(),
    required("name") => String.t(),
    required("roleArn") => String.t(),
    required("storageConfiguration") => storage_configuration()
  }
  """
  @type create_knowledge_base_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  knowledge_base() :: %{
    "createdAt" => non_neg_integer(),
    "description" => String.t(),
    "failureReasons" => list(String.t()()),
    "knowledgeBaseArn" => String.t(),
    "knowledgeBaseConfiguration" => knowledge_base_configuration(),
    "knowledgeBaseId" => String.t(),
    "name" => String.t(),
    "roleArn" => String.t(),
    "status" => list(any()),
    "storageConfiguration" => storage_configuration(),
    "updatedAt" => non_neg_integer()
  }
  """
  @type knowledge_base() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_ingestion_job_request() :: %{

  }
  """
  @type get_ingestion_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  knowledge_base_summary() :: %{
    "description" => String.t(),
    "knowledgeBaseId" => String.t(),
    "name" => String.t(),
    "status" => list(any()),
    "updatedAt" => non_neg_integer()
  }
  """
  @type knowledge_base_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_agent_response() :: %{
    "agent" => agent()
  }
  """
  @type update_agent_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_knowledge_bases_request() :: %{
    optional("maxResults") => integer(),
    optional("nextToken") => String.t()
  }
  """
  @type list_knowledge_bases_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  conflict_exception() :: %{
    "message" => String.t()
  }
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  agent_knowledge_base_summary() :: %{
    "description" => String.t(),
    "knowledgeBaseId" => String.t(),
    "knowledgeBaseState" => list(any()),
    "updatedAt" => non_neg_integer()
  }
  """
  @type agent_knowledge_base_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  resource_not_found_exception() :: %{
    "message" => String.t()
  }
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  ingestion_job_summary() :: %{
    "dataSourceId" => String.t(),
    "description" => String.t(),
    "ingestionJobId" => String.t(),
    "knowledgeBaseId" => String.t(),
    "startedAt" => non_neg_integer(),
    "statistics" => ingestion_job_statistics(),
    "status" => list(any()),
    "updatedAt" => non_neg_integer()
  }
  """
  @type ingestion_job_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_ingestion_job_response() :: %{
    "ingestionJob" => ingestion_job()
  }
  """
  @type get_ingestion_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_data_source_request() :: %{

  }
  """
  @type get_data_source_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  service_quota_exceeded_exception() :: %{
    "message" => String.t()
  }
  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_agent_alias_response() :: %{
    "agentAlias" => agent_alias()
  }
  """
  @type update_agent_alias_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  redis_enterprise_cloud_configuration() :: %{
    "credentialsSecretArn" => String.t(),
    "endpoint" => String.t(),
    "fieldMapping" => redis_enterprise_cloud_field_mapping(),
    "vectorIndexName" => String.t()
  }
  """
  @type redis_enterprise_cloud_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  storage_configuration() :: %{
    "opensearchServerlessConfiguration" => open_search_serverless_configuration(),
    "pineconeConfiguration" => pinecone_configuration(),
    "rdsConfiguration" => rds_configuration(),
    "redisEnterpriseCloudConfiguration" => redis_enterprise_cloud_configuration(),
    "type" => list(any())
  }
  """
  @type storage_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_agent_knowledge_bases_response() :: %{
    "agentKnowledgeBaseSummaries" => list(agent_knowledge_base_summary()()),
    "nextToken" => String.t()
  }
  """
  @type list_agent_knowledge_bases_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_data_sources_response() :: %{
    "dataSourceSummaries" => list(data_source_summary()()),
    "nextToken" => String.t()
  }
  """
  @type list_data_sources_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_data_source_request() :: %{

  }
  """
  @type delete_data_source_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  chunking_configuration() :: %{
    "chunkingStrategy" => list(any()),
    "fixedSizeChunkingConfiguration" => fixed_size_chunking_configuration()
  }
  """
  @type chunking_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  agent() :: %{
    "agentArn" => String.t(),
    "agentId" => String.t(),
    "agentName" => String.t(),
    "agentResourceRoleArn" => String.t(),
    "agentStatus" => list(any()),
    "agentVersion" => String.t(),
    "clientToken" => String.t(),
    "createdAt" => non_neg_integer(),
    "customerEncryptionKeyArn" => String.t(),
    "description" => String.t(),
    "failureReasons" => list(String.t()()),
    "foundationModel" => String.t(),
    "idleSessionTTLInSeconds" => integer(),
    "instruction" => String.t(),
    "preparedAt" => non_neg_integer(),
    "promptOverrideConfiguration" => prompt_override_configuration(),
    "recommendedActions" => list(String.t()()),
    "updatedAt" => non_neg_integer()
  }
  """
  @type agent() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_agent_action_group_request() :: %{
    optional("skipResourceInUseCheck") => [boolean()]
  }
  """
  @type delete_agent_action_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_ingestion_jobs_response() :: %{
    "ingestionJobSummaries" => list(ingestion_job_summary()()),
    "nextToken" => String.t()
  }
  """
  @type list_ingestion_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_tags_for_resource_response() :: %{
    "tags" => map()
  }
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_ingestion_jobs_request() :: %{
    optional("filters") => list(ingestion_job_filter()()),
    optional("maxResults") => integer(),
    optional("nextToken") => String.t(),
    optional("sortBy") => ingestion_job_sort_by()
  }
  """
  @type list_ingestion_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  agent_alias_summary() :: %{
    "agentAliasId" => String.t(),
    "agentAliasName" => String.t(),
    "agentAliasStatus" => list(any()),
    "createdAt" => non_neg_integer(),
    "description" => String.t(),
    "routingConfiguration" => list(agent_alias_routing_configuration_list_item()()),
    "updatedAt" => non_neg_integer()
  }
  """
  @type agent_alias_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_knowledge_base_request() :: %{

  }
  """
  @type delete_knowledge_base_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  validation_exception_field() :: %{
    "message" => String.t(),
    "name" => String.t()
  }
  """
  @type validation_exception_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_agent_action_group_request() :: %{

  }
  """
  @type get_agent_action_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_agent_response() :: %{
    "agentId" => String.t(),
    "agentStatus" => list(any())
  }
  """
  @type delete_agent_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_agent_aliases_request() :: %{
    optional("maxResults") => integer(),
    optional("nextToken") => String.t()
  }
  """
  @type list_agent_aliases_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_agent_action_group_response() :: %{
    "agentActionGroup" => agent_action_group()
  }
  """
  @type update_agent_action_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  disassociate_agent_knowledge_base_request() :: %{

  }
  """
  @type disassociate_agent_knowledge_base_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  server_side_encryption_configuration() :: %{
    "kmsKeyArn" => String.t()
  }
  """
  @type server_side_encryption_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  agent_version() :: %{
    "agentArn" => String.t(),
    "agentId" => String.t(),
    "agentName" => String.t(),
    "agentResourceRoleArn" => String.t(),
    "agentStatus" => list(any()),
    "createdAt" => non_neg_integer(),
    "customerEncryptionKeyArn" => String.t(),
    "description" => String.t(),
    "failureReasons" => list(String.t()()),
    "foundationModel" => String.t(),
    "idleSessionTTLInSeconds" => integer(),
    "instruction" => String.t(),
    "promptOverrideConfiguration" => prompt_override_configuration(),
    "recommendedActions" => list(String.t()()),
    "updatedAt" => non_neg_integer(),
    "version" => String.t()
  }
  """
  @type agent_version() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  agent_alias_routing_configuration_list_item() :: %{
    "agentVersion" => String.t()
  }
  """
  @type agent_alias_routing_configuration_list_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  pinecone_configuration() :: %{
    "connectionString" => String.t(),
    "credentialsSecretArn" => String.t(),
    "fieldMapping" => pinecone_field_mapping(),
    "namespace" => String.t()
  }
  """
  @type pinecone_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  agent_alias() :: %{
    "agentAliasArn" => String.t(),
    "agentAliasHistoryEvents" => list(agent_alias_history_event()()),
    "agentAliasId" => String.t(),
    "agentAliasName" => String.t(),
    "agentAliasStatus" => list(any()),
    "agentId" => String.t(),
    "clientToken" => String.t(),
    "createdAt" => non_neg_integer(),
    "description" => String.t(),
    "routingConfiguration" => list(agent_alias_routing_configuration_list_item()()),
    "updatedAt" => non_neg_integer()
  }
  """
  @type agent_alias() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  s3_identifier() :: %{
    "s3BucketName" => String.t(),
    "s3ObjectKey" => String.t()
  }
  """
  @type s3_identifier() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  internal_server_exception() :: %{
    "message" => String.t()
  }
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_agent_action_group_request() :: %{
    optional("actionGroupExecutor") => list(),
    optional("actionGroupState") => list(any()),
    optional("apiSchema") => list(),
    optional("clientToken") => String.t(),
    optional("description") => String.t(),
    optional("parentActionGroupSignature") => list(any()),
    required("actionGroupName") => String.t()
  }
  """
  @type create_agent_action_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_agent_action_groups_response() :: %{
    "actionGroupSummaries" => list(action_group_summary()()),
    "nextToken" => String.t()
  }
  """
  @type list_agent_action_groups_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_data_source_response() :: %{
    "dataSource" => data_source()
  }
  """
  @type create_data_source_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  ingestion_job_filter() :: %{
    "attribute" => list(any()),
    "operator" => list(any()),
    "values" => list(String.t()())
  }
  """
  @type ingestion_job_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_agent_alias_response() :: %{
    "agentAlias" => agent_alias()
  }
  """
  @type create_agent_alias_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  data_source_summary() :: %{
    "dataSourceId" => String.t(),
    "description" => String.t(),
    "knowledgeBaseId" => String.t(),
    "name" => String.t(),
    "status" => list(any()),
    "updatedAt" => non_neg_integer()
  }
  """
  @type data_source_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  agent_action_group() :: %{
    "actionGroupExecutor" => list(),
    "actionGroupId" => String.t(),
    "actionGroupName" => String.t(),
    "actionGroupState" => list(any()),
    "agentId" => String.t(),
    "agentVersion" => String.t(),
    "apiSchema" => list(),
    "clientToken" => String.t(),
    "createdAt" => non_neg_integer(),
    "description" => String.t(),
    "parentActionSignature" => list(any()),
    "updatedAt" => non_neg_integer()
  }
  """
  @type agent_action_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  access_denied_exception() :: %{
    "message" => String.t()
  }
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_agent_knowledge_base_response() :: %{
    "agentKnowledgeBase" => agent_knowledge_base()
  }
  """
  @type get_agent_knowledge_base_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_agent_alias_request() :: %{
    optional("clientToken") => String.t(),
    optional("description") => String.t(),
    optional("routingConfiguration") => list(agent_alias_routing_configuration_list_item()()),
    optional("tags") => map(),
    required("agentAliasName") => String.t()
  }
  """
  @type create_agent_alias_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  tag_resource_response() :: %{

  }
  """
  @type tag_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_agent_request() :: %{
    optional("customerEncryptionKeyArn") => String.t(),
    optional("description") => String.t(),
    optional("foundationModel") => String.t(),
    optional("idleSessionTTLInSeconds") => integer(),
    optional("instruction") => String.t(),
    optional("promptOverrideConfiguration") => prompt_override_configuration(),
    required("agentName") => String.t(),
    required("agentResourceRoleArn") => String.t()
  }
  """
  @type update_agent_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_agent_request() :: %{
    optional("skipResourceInUseCheck") => [boolean()]
  }
  """
  @type delete_agent_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_agent_alias_request() :: %{

  }
  """
  @type delete_agent_alias_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  validation_exception() :: %{
    "fieldList" => list(validation_exception_field()()),
    "message" => String.t()
  }
  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_tags_for_resource_request() :: %{

  }
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_knowledge_base_response() :: %{
    "knowledgeBase" => knowledge_base()
  }
  """
  @type update_knowledge_base_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  agent_alias_history_event() :: %{
    "endDate" => non_neg_integer(),
    "routingConfiguration" => list(agent_alias_routing_configuration_list_item()()),
    "startDate" => non_neg_integer()
  }
  """
  @type agent_alias_history_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_data_source_request() :: %{
    optional("description") => String.t(),
    optional("serverSideEncryptionConfiguration") => server_side_encryption_configuration(),
    optional("vectorIngestionConfiguration") => vector_ingestion_configuration(),
    required("dataSourceConfiguration") => data_source_configuration(),
    required("name") => String.t()
  }
  """
  @type update_data_source_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_agent_knowledge_base_request() :: %{
    optional("description") => String.t(),
    optional("knowledgeBaseState") => list(any())
  }
  """
  @type update_agent_knowledge_base_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  redis_enterprise_cloud_field_mapping() :: %{
    "metadataField" => String.t(),
    "textField" => String.t(),
    "vectorField" => String.t()
  }
  """
  @type redis_enterprise_cloud_field_mapping() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  ingestion_job_sort_by() :: %{
    "attribute" => list(any()),
    "order" => list(any())
  }
  """
  @type ingestion_job_sort_by() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  throttling_exception() :: %{
    "message" => String.t()
  }
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_agent_response() :: %{
    "agent" => agent()
  }
  """
  @type get_agent_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  agent_knowledge_base() :: %{
    "agentId" => String.t(),
    "agentVersion" => String.t(),
    "createdAt" => non_neg_integer(),
    "description" => String.t(),
    "knowledgeBaseId" => String.t(),
    "knowledgeBaseState" => list(any()),
    "updatedAt" => non_neg_integer()
  }
  """
  @type agent_knowledge_base() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  agent_summary() :: %{
    "agentId" => String.t(),
    "agentName" => String.t(),
    "agentStatus" => list(any()),
    "description" => String.t(),
    "latestAgentVersion" => String.t(),
    "updatedAt" => non_neg_integer()
  }
  """
  @type agent_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_knowledge_bases_response() :: %{
    "knowledgeBaseSummaries" => list(knowledge_base_summary()()),
    "nextToken" => String.t()
  }
  """
  @type list_knowledge_bases_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_knowledge_base_response() :: %{
    "knowledgeBase" => knowledge_base()
  }
  """
  @type get_knowledge_base_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  disassociate_agent_knowledge_base_response() :: %{

  }
  """
  @type disassociate_agent_knowledge_base_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_agent_versions_response() :: %{
    "agentVersionSummaries" => list(agent_version_summary()()),
    "nextToken" => String.t()
  }
  """
  @type list_agent_versions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_agent_version_response() :: %{
    "agentVersion" => agent_version()
  }
  """
  @type get_agent_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  start_ingestion_job_response() :: %{
    "ingestionJob" => ingestion_job()
  }
  """
  @type start_ingestion_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_agent_request() :: %{

  }
  """
  @type get_agent_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_agent_knowledge_bases_request() :: %{
    optional("maxResults") => integer(),
    optional("nextToken") => String.t()
  }
  """
  @type list_agent_knowledge_bases_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  data_source() :: %{
    "createdAt" => non_neg_integer(),
    "dataSourceConfiguration" => data_source_configuration(),
    "dataSourceId" => String.t(),
    "description" => String.t(),
    "knowledgeBaseId" => String.t(),
    "name" => String.t(),
    "serverSideEncryptionConfiguration" => server_side_encryption_configuration(),
    "status" => list(any()),
    "updatedAt" => non_neg_integer(),
    "vectorIngestionConfiguration" => vector_ingestion_configuration()
  }
  """
  @type data_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_knowledge_base_request() :: %{

  }
  """
  @type get_knowledge_base_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  associate_agent_knowledge_base_request() :: %{
    optional("knowledgeBaseState") => list(any()),
    required("description") => String.t(),
    required("knowledgeBaseId") => String.t()
  }
  """
  @type associate_agent_knowledge_base_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  associate_agent_knowledge_base_response() :: %{
    "agentKnowledgeBase" => agent_knowledge_base()
  }
  """
  @type associate_agent_knowledge_base_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  pinecone_field_mapping() :: %{
    "metadataField" => String.t(),
    "textField" => String.t()
  }
  """
  @type pinecone_field_mapping() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  vector_ingestion_configuration() :: %{
    "chunkingConfiguration" => chunking_configuration()
  }
  """
  @type vector_ingestion_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  vector_knowledge_base_configuration() :: %{
    "embeddingModelArn" => String.t()
  }
  """
  @type vector_knowledge_base_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_data_source_response() :: %{
    "dataSource" => data_source()
  }
  """
  @type get_data_source_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_agent_version_response() :: %{
    "agentId" => String.t(),
    "agentStatus" => list(any()),
    "agentVersion" => String.t()
  }
  """
  @type delete_agent_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_agent_alias_request() :: %{

  }
  """
  @type get_agent_alias_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  s3_data_source_configuration() :: %{
    "bucketArn" => String.t(),
    "inclusionPrefixes" => list(String.t()())
  }
  """
  @type s3_data_source_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  rds_field_mapping() :: %{
    "metadataField" => String.t(),
    "primaryKeyField" => String.t(),
    "textField" => String.t(),
    "vectorField" => String.t()
  }
  """
  @type rds_field_mapping() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  prompt_configuration() :: %{
    "basePromptTemplate" => String.t(),
    "inferenceConfiguration" => inference_configuration(),
    "parserMode" => list(any()),
    "promptCreationMode" => list(any()),
    "promptState" => list(any()),
    "promptType" => list(any())
  }
  """
  @type prompt_configuration() :: %{String.t() => any()}

  def metadata do
    %{
      api_version: "2023-06-05",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "bedrock-agent",
      global?: false,
      protocol: "rest-json",
      service_id: "Bedrock Agent",
      signature_version: "v4",
      signing_name: "bedrock",
      target_prefix: nil
    }
  end

  @doc """
  Associate a Knowledge Base to an existing Amazon Bedrock Agent
  """
  @spec associate_agent_knowledge_base(
          map(),
          String.t(),
          String.t(),
          associate_agent_knowledge_base_request(),
          list()
        ) ::
          {:ok, associate_agent_knowledge_base_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_quota_exceeded_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def associate_agent_knowledge_base(
        %Client{} = client,
        agent_id,
        agent_version,
        input,
        options \\ []
      ) do
    url_path =
      "/agents/#{AWS.Util.encode_uri(agent_id)}/agentversions/#{AWS.Util.encode_uri(agent_version)}/knowledgebases/"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Creates an Amazon Bedrock Agent
  """
  @spec create_agent(map(), create_agent_request(), list()) ::
          {:ok, create_agent_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, service_quota_exceeded_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def create_agent(%Client{} = client, input, options \\ []) do
    url_path = "/agents/"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
  end

  @doc """
  Creates an Action Group for existing Amazon Bedrock Agent
  """
  @spec create_agent_action_group(
          map(),
          String.t(),
          String.t(),
          create_agent_action_group_request(),
          list()
        ) ::
          {:ok, create_agent_action_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_quota_exceeded_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def create_agent_action_group(%Client{} = client, agent_id, agent_version, input, options \\ []) do
    url_path =
      "/agents/#{AWS.Util.encode_uri(agent_id)}/agentversions/#{AWS.Util.encode_uri(agent_version)}/actiongroups/"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Creates an Alias for an existing Amazon Bedrock Agent
  """
  @spec create_agent_alias(map(), String.t(), create_agent_alias_request(), list()) ::
          {:ok, create_agent_alias_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_quota_exceeded_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def create_agent_alias(%Client{} = client, agent_id, input, options \\ []) do
    url_path = "/agents/#{AWS.Util.encode_uri(agent_id)}/agentaliases/"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
  end

  @doc """
  Create a new data source
  """
  @spec create_data_source(map(), String.t(), create_data_source_request(), list()) ::
          {:ok, create_data_source_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_quota_exceeded_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def create_data_source(%Client{} = client, knowledge_base_id, input, options \\ []) do
    url_path = "/knowledgebases/#{AWS.Util.encode_uri(knowledge_base_id)}/datasources/"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Create a new knowledge base
  """
  @spec create_knowledge_base(map(), create_knowledge_base_request(), list()) ::
          {:ok, create_knowledge_base_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, service_quota_exceeded_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def create_knowledge_base(%Client{} = client, input, options \\ []) do
    url_path = "/knowledgebases/"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
  end

  @doc """
  Deletes an Agent for existing Amazon Bedrock Agent
  """
  @spec delete_agent(map(), String.t(), delete_agent_request(), list()) ::
          {:ok, delete_agent_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def delete_agent(%Client{} = client, agent_id, input, options \\ []) do
    url_path = "/agents/#{AWS.Util.encode_uri(agent_id)}/"
    headers = []

    {query_params, input} =
      [
        {"skipResourceInUseCheck", "skipResourceInUseCheck"}
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
      202
    )
  end

  @doc """
  Deletes an Action Group for existing Amazon Bedrock Agent.
  """
  @spec delete_agent_action_group(
          map(),
          String.t(),
          String.t(),
          String.t(),
          delete_agent_action_group_request(),
          list()
        ) ::
          {:ok, delete_agent_action_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def delete_agent_action_group(
        %Client{} = client,
        action_group_id,
        agent_id,
        agent_version,
        input,
        options \\ []
      ) do
    url_path =
      "/agents/#{AWS.Util.encode_uri(agent_id)}/agentversions/#{AWS.Util.encode_uri(agent_version)}/actiongroups/#{AWS.Util.encode_uri(action_group_id)}/"

    headers = []

    {query_params, input} =
      [
        {"skipResourceInUseCheck", "skipResourceInUseCheck"}
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
  Deletes an Alias for a Amazon Bedrock Agent
  """
  @spec delete_agent_alias(map(), String.t(), String.t(), delete_agent_alias_request(), list()) ::
          {:ok, delete_agent_alias_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def delete_agent_alias(%Client{} = client, agent_alias_id, agent_id, input, options \\ []) do
    url_path =
      "/agents/#{AWS.Util.encode_uri(agent_id)}/agentaliases/#{AWS.Util.encode_uri(agent_alias_id)}/"

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

  @doc """
  Deletes an Agent version for existing Amazon Bedrock Agent
  """
  @spec delete_agent_version(
          map(),
          String.t(),
          String.t(),
          delete_agent_version_request(),
          list()
        ) ::
          {:ok, delete_agent_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def delete_agent_version(%Client{} = client, agent_id, agent_version, input, options \\ []) do
    url_path =
      "/agents/#{AWS.Util.encode_uri(agent_id)}/agentversions/#{AWS.Util.encode_uri(agent_version)}/"

    headers = []

    {query_params, input} =
      [
        {"skipResourceInUseCheck", "skipResourceInUseCheck"}
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
      202
    )
  end

  @doc """
  Delete an existing data source
  """
  @spec delete_data_source(map(), String.t(), String.t(), delete_data_source_request(), list()) ::
          {:ok, delete_data_source_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def delete_data_source(
        %Client{} = client,
        data_source_id,
        knowledge_base_id,
        input,
        options \\ []
      ) do
    url_path =
      "/knowledgebases/#{AWS.Util.encode_uri(knowledge_base_id)}/datasources/#{AWS.Util.encode_uri(data_source_id)}"

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

  @doc """
  Delete an existing knowledge base
  """
  @spec delete_knowledge_base(map(), String.t(), delete_knowledge_base_request(), list()) ::
          {:ok, delete_knowledge_base_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def delete_knowledge_base(%Client{} = client, knowledge_base_id, input, options \\ []) do
    url_path = "/knowledgebases/#{AWS.Util.encode_uri(knowledge_base_id)}"
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

  @doc """
  Disassociate an existing Knowledge Base from an Amazon Bedrock Agent
  """
  @spec disassociate_agent_knowledge_base(
          map(),
          String.t(),
          String.t(),
          String.t(),
          disassociate_agent_knowledge_base_request(),
          list()
        ) ::
          {:ok, disassociate_agent_knowledge_base_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def disassociate_agent_knowledge_base(
        %Client{} = client,
        agent_id,
        agent_version,
        knowledge_base_id,
        input,
        options \\ []
      ) do
    url_path =
      "/agents/#{AWS.Util.encode_uri(agent_id)}/agentversions/#{AWS.Util.encode_uri(agent_version)}/knowledgebases/#{AWS.Util.encode_uri(knowledge_base_id)}/"

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
  Gets an Agent for existing Amazon Bedrock Agent
  """
  @spec get_agent(map(), String.t(), list()) ::
          {:ok, get_agent_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def get_agent(%Client{} = client, agent_id, options \\ []) do
    url_path = "/agents/#{AWS.Util.encode_uri(agent_id)}/"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets an Action Group for existing Amazon Bedrock Agent Version
  """
  @spec get_agent_action_group(map(), String.t(), String.t(), String.t(), list()) ::
          {:ok, get_agent_action_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def get_agent_action_group(
        %Client{} = client,
        action_group_id,
        agent_id,
        agent_version,
        options \\ []
      ) do
    url_path =
      "/agents/#{AWS.Util.encode_uri(agent_id)}/agentversions/#{AWS.Util.encode_uri(agent_version)}/actiongroups/#{AWS.Util.encode_uri(action_group_id)}/"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes an Alias for a Amazon Bedrock Agent
  """
  @spec get_agent_alias(map(), String.t(), String.t(), list()) ::
          {:ok, get_agent_alias_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def get_agent_alias(%Client{} = client, agent_alias_id, agent_id, options \\ []) do
    url_path =
      "/agents/#{AWS.Util.encode_uri(agent_id)}/agentaliases/#{AWS.Util.encode_uri(agent_alias_id)}/"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a knowledge base associated to an existing Amazon Bedrock Agent Version
  """
  @spec get_agent_knowledge_base(map(), String.t(), String.t(), String.t(), list()) ::
          {:ok, get_agent_knowledge_base_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def get_agent_knowledge_base(
        %Client{} = client,
        agent_id,
        agent_version,
        knowledge_base_id,
        options \\ []
      ) do
    url_path =
      "/agents/#{AWS.Util.encode_uri(agent_id)}/agentversions/#{AWS.Util.encode_uri(agent_version)}/knowledgebases/#{AWS.Util.encode_uri(knowledge_base_id)}/"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets an Agent version for existing Amazon Bedrock Agent
  """
  @spec get_agent_version(map(), String.t(), String.t(), list()) ::
          {:ok, get_agent_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def get_agent_version(%Client{} = client, agent_id, agent_version, options \\ []) do
    url_path =
      "/agents/#{AWS.Util.encode_uri(agent_id)}/agentversions/#{AWS.Util.encode_uri(agent_version)}/"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get an existing data source
  """
  @spec get_data_source(map(), String.t(), String.t(), list()) ::
          {:ok, get_data_source_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def get_data_source(%Client{} = client, data_source_id, knowledge_base_id, options \\ []) do
    url_path =
      "/knowledgebases/#{AWS.Util.encode_uri(knowledge_base_id)}/datasources/#{AWS.Util.encode_uri(data_source_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get an ingestion job
  """
  @spec get_ingestion_job(map(), String.t(), String.t(), String.t(), list()) ::
          {:ok, get_ingestion_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def get_ingestion_job(
        %Client{} = client,
        data_source_id,
        ingestion_job_id,
        knowledge_base_id,
        options \\ []
      ) do
    url_path =
      "/knowledgebases/#{AWS.Util.encode_uri(knowledge_base_id)}/datasources/#{AWS.Util.encode_uri(data_source_id)}/ingestionjobs/#{AWS.Util.encode_uri(ingestion_job_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get an existing knowledge base
  """
  @spec get_knowledge_base(map(), String.t(), list()) ::
          {:ok, get_knowledge_base_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def get_knowledge_base(%Client{} = client, knowledge_base_id, options \\ []) do
    url_path = "/knowledgebases/#{AWS.Util.encode_uri(knowledge_base_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists an Action Group for existing Amazon Bedrock Agent Version
  """
  @spec list_agent_action_groups(
          map(),
          String.t(),
          String.t(),
          list_agent_action_groups_request(),
          list()
        ) ::
          {:ok, list_agent_action_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def list_agent_action_groups(%Client{} = client, agent_id, agent_version, input, options \\ []) do
    url_path =
      "/agents/#{AWS.Util.encode_uri(agent_id)}/agentversions/#{AWS.Util.encode_uri(agent_version)}/actiongroups/"

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
      200
    )
  end

  @doc """
  Lists all the Aliases for an Amazon Bedrock Agent
  """
  @spec list_agent_aliases(map(), String.t(), list_agent_aliases_request(), list()) ::
          {:ok, list_agent_aliases_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def list_agent_aliases(%Client{} = client, agent_id, input, options \\ []) do
    url_path = "/agents/#{AWS.Util.encode_uri(agent_id)}/agentaliases/"
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
      200
    )
  end

  @doc """
  List of Knowledge Bases associated to an existing Amazon Bedrock Agent Version
  """
  @spec list_agent_knowledge_bases(
          map(),
          String.t(),
          String.t(),
          list_agent_knowledge_bases_request(),
          list()
        ) ::
          {:ok, list_agent_knowledge_bases_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def list_agent_knowledge_bases(
        %Client{} = client,
        agent_id,
        agent_version,
        input,
        options \\ []
      ) do
    url_path =
      "/agents/#{AWS.Util.encode_uri(agent_id)}/agentversions/#{AWS.Util.encode_uri(agent_version)}/knowledgebases/"

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
      200
    )
  end

  @doc """
  Lists Agent Versions
  """
  @spec list_agent_versions(map(), String.t(), list_agent_versions_request(), list()) ::
          {:ok, list_agent_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def list_agent_versions(%Client{} = client, agent_id, input, options \\ []) do
    url_path = "/agents/#{AWS.Util.encode_uri(agent_id)}/agentversions/"
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
      200
    )
  end

  @doc """
  Lists Agents
  """
  @spec list_agents(map(), list_agents_request(), list()) ::
          {:ok, list_agents_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def list_agents(%Client{} = client, input, options \\ []) do
    url_path = "/agents/"
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
      200
    )
  end

  @doc """
  List data sources
  """
  @spec list_data_sources(map(), String.t(), list_data_sources_request(), list()) ::
          {:ok, list_data_sources_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def list_data_sources(%Client{} = client, knowledge_base_id, input, options \\ []) do
    url_path = "/knowledgebases/#{AWS.Util.encode_uri(knowledge_base_id)}/datasources/"
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
      200
    )
  end

  @doc """
  List ingestion jobs
  """
  @spec list_ingestion_jobs(map(), String.t(), String.t(), list_ingestion_jobs_request(), list()) ::
          {:ok, list_ingestion_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def list_ingestion_jobs(
        %Client{} = client,
        data_source_id,
        knowledge_base_id,
        input,
        options \\ []
      ) do
    url_path =
      "/knowledgebases/#{AWS.Util.encode_uri(knowledge_base_id)}/datasources/#{AWS.Util.encode_uri(data_source_id)}/ingestionjobs/"

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
      200
    )
  end

  @doc """
  List Knowledge Bases
  """
  @spec list_knowledge_bases(map(), list_knowledge_bases_request(), list()) ::
          {:ok, list_knowledge_bases_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def list_knowledge_bases(%Client{} = client, input, options \\ []) do
    url_path = "/knowledgebases/"
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
      200
    )
  end

  @doc """
  List tags for a resource
  """
  @spec list_tags_for_resource(map(), String.t(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Prepares an existing Amazon Bedrock Agent to receive runtime requests
  """
  @spec prepare_agent(map(), String.t(), prepare_agent_request(), list()) ::
          {:ok, prepare_agent_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_quota_exceeded_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def prepare_agent(%Client{} = client, agent_id, input, options \\ []) do
    url_path = "/agents/#{AWS.Util.encode_uri(agent_id)}/"
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
      202
    )
  end

  @doc """
  Start a new ingestion job
  """
  @spec start_ingestion_job(map(), String.t(), String.t(), start_ingestion_job_request(), list()) ::
          {:ok, start_ingestion_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_quota_exceeded_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def start_ingestion_job(
        %Client{} = client,
        data_source_id,
        knowledge_base_id,
        input,
        options \\ []
      ) do
    url_path =
      "/knowledgebases/#{AWS.Util.encode_uri(knowledge_base_id)}/datasources/#{AWS.Util.encode_uri(data_source_id)}/ingestionjobs/"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
  end

  @doc """
  Tag a resource
  """
  @spec tag_resource(map(), String.t(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_quota_exceeded_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
      200
    )
  end

  @doc """
  Untag a resource
  """
  @spec untag_resource(map(), String.t(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

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
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates an existing Amazon Bedrock Agent
  """
  @spec update_agent(map(), String.t(), update_agent_request(), list()) ::
          {:ok, update_agent_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_quota_exceeded_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def update_agent(%Client{} = client, agent_id, input, options \\ []) do
    url_path = "/agents/#{AWS.Util.encode_uri(agent_id)}/"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
  end

  @doc """
  Updates an existing Action Group for Amazon Bedrock Agent
  """
  @spec update_agent_action_group(
          map(),
          String.t(),
          String.t(),
          String.t(),
          update_agent_action_group_request(),
          list()
        ) ::
          {:ok, update_agent_action_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_quota_exceeded_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def update_agent_action_group(
        %Client{} = client,
        action_group_id,
        agent_id,
        agent_version,
        input,
        options \\ []
      ) do
    url_path =
      "/agents/#{AWS.Util.encode_uri(agent_id)}/agentversions/#{AWS.Util.encode_uri(agent_version)}/actiongroups/#{AWS.Util.encode_uri(action_group_id)}/"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates an existing Alias for an Amazon Bedrock Agent
  """
  @spec update_agent_alias(map(), String.t(), String.t(), update_agent_alias_request(), list()) ::
          {:ok, update_agent_alias_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_quota_exceeded_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def update_agent_alias(%Client{} = client, agent_alias_id, agent_id, input, options \\ []) do
    url_path =
      "/agents/#{AWS.Util.encode_uri(agent_id)}/agentaliases/#{AWS.Util.encode_uri(agent_alias_id)}/"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
  end

  @doc """
  Updates an existing Knowledge Base associated to an Amazon Bedrock Agent
  """
  @spec update_agent_knowledge_base(
          map(),
          String.t(),
          String.t(),
          String.t(),
          update_agent_knowledge_base_request(),
          list()
        ) ::
          {:ok, update_agent_knowledge_base_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def update_agent_knowledge_base(
        %Client{} = client,
        agent_id,
        agent_version,
        knowledge_base_id,
        input,
        options \\ []
      ) do
    url_path =
      "/agents/#{AWS.Util.encode_uri(agent_id)}/agentversions/#{AWS.Util.encode_uri(agent_version)}/knowledgebases/#{AWS.Util.encode_uri(knowledge_base_id)}/"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Update an existing data source
  """
  @spec update_data_source(map(), String.t(), String.t(), update_data_source_request(), list()) ::
          {:ok, update_data_source_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def update_data_source(
        %Client{} = client,
        data_source_id,
        knowledge_base_id,
        input,
        options \\ []
      ) do
    url_path =
      "/knowledgebases/#{AWS.Util.encode_uri(knowledge_base_id)}/datasources/#{AWS.Util.encode_uri(data_source_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Update an existing knowledge base
  """
  @spec update_knowledge_base(map(), String.t(), update_knowledge_base_request(), list()) ::
          {:ok, update_knowledge_base_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def update_knowledge_base(%Client{} = client, knowledge_base_id, input, options \\ []) do
    url_path = "/knowledgebases/#{AWS.Util.encode_uri(knowledge_base_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
  end
end
