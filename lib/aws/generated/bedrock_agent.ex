# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.BedrockAgent do
  @moduledoc """
  Describes the API operations for creating and managing Amazon Bedrock agents.
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

      prepare_agent_request() :: %{}

  """
  @type prepare_agent_request() :: %{}

  @typedoc """

  ## Example:

      update_flow_request() :: %{
        optional("customerEncryptionKeyArn") => String.t(),
        optional("definition") => flow_definition(),
        optional("description") => String.t(),
        required("executionRoleArn") => String.t(),
        required("name") => String.t()
      }

  """
  @type update_flow_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      storage_flow_node_s3_configuration() :: %{
        "bucketName" => String.t()
      }

  """
  @type storage_flow_node_s3_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ingestion_job_statistics() :: %{
        "numberOfDocumentsDeleted" => [float()],
        "numberOfDocumentsFailed" => [float()],
        "numberOfDocumentsScanned" => [float()],
        "numberOfMetadataDocumentsModified" => [float()],
        "numberOfMetadataDocumentsScanned" => [float()],
        "numberOfModifiedDocumentsIndexed" => [float()],
        "numberOfNewDocumentsIndexed" => [float()]
      }

  """
  @type ingestion_job_statistics() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_flow_alias_request() :: %{
        optional("description") => String.t(),
        required("name") => String.t(),
        required("routingConfiguration") => list(flow_alias_routing_configuration_list_item()())
      }

  """
  @type update_flow_alias_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_agent_action_group_request() :: %{
        optional("actionGroupExecutor") => list(),
        optional("actionGroupState") => list(any()),
        optional("apiSchema") => list(),
        optional("description") => String.t(),
        optional("functionSchema") => list(),
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

      share_point_data_source_configuration() :: %{
        "crawlerConfiguration" => share_point_crawler_configuration(),
        "sourceConfiguration" => share_point_source_configuration()
      }

  """
  @type share_point_data_source_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      text_prompt_template_configuration() :: %{
        "inputVariables" => list(prompt_input_variable()()),
        "text" => String.t()
      }

  """
  @type text_prompt_template_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_flow_alias_response() :: %{
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "description" => String.t(),
        "flowId" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "routingConfiguration" => list(flow_alias_routing_configuration_list_item()()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type update_flow_alias_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      memory_configuration() :: %{
        "enabledMemoryTypes" => list(list(any())()),
        "storageDays" => integer()
      }

  """
  @type memory_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_agent_alias_response() :: %{
        "agentAlias" => agent_alias()
      }

  """
  @type get_agent_alias_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_prompt_version_response() :: %{
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "customerEncryptionKeyArn" => String.t(),
        "defaultVariant" => String.t(),
        "description" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "updatedAt" => non_neg_integer(),
        "variants" => list(prompt_variant()()),
        "version" => String.t()
      }

  """
  @type create_prompt_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      flow_condition() :: %{
        "expression" => String.t(),
        "name" => String.t()
      }

  """
  @type flow_condition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      prompt_flow_node_inline_configuration() :: %{
        "inferenceConfiguration" => list(),
        "modelId" => String.t(),
        "templateConfiguration" => list(),
        "templateType" => list(any())
      }

  """
  @type prompt_flow_node_inline_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      prompt_summary() :: %{
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "description" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "updatedAt" => non_neg_integer(),
        "version" => String.t()
      }

  """
  @type prompt_summary() :: %{String.t() => any()}

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

      storage_flow_node_configuration() :: %{
        "serviceConfiguration" => list()
      }

  """
  @type storage_flow_node_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_flow_request() :: %{
        optional("clientToken") => String.t(),
        optional("customerEncryptionKeyArn") => String.t(),
        optional("definition") => flow_definition(),
        optional("description") => String.t(),
        optional("tags") => map(),
        required("executionRoleArn") => String.t(),
        required("name") => String.t()
      }

  """
  @type create_flow_request() :: %{String.t() => any()}

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
        optional("dataDeletionPolicy") => list(any()),
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
        "confluenceConfiguration" => confluence_data_source_configuration(),
        "s3Configuration" => s3_data_source_configuration(),
        "salesforceConfiguration" => salesforce_data_source_configuration(),
        "sharePointConfiguration" => share_point_data_source_configuration(),
        "type" => list(any()),
        "webConfiguration" => web_data_source_configuration()
      }

  """
  @type data_source_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      pattern_object_filter_configuration() :: %{
        "filters" => list(pattern_object_filter()())
      }

  """
  @type pattern_object_filter_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      web_source_configuration() :: %{
        "urlConfiguration" => url_configuration()
      }

  """
  @type web_source_configuration() :: %{String.t() => any()}

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

      transformation() :: %{
        "stepToApply" => list(any()),
        "transformationFunction" => transformation_function()
      }

  """
  @type transformation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      custom_transformation_configuration() :: %{
        "intermediateStorage" => intermediate_storage(),
        "transformations" => list(transformation()())
      }

  """
  @type custom_transformation_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_agent_request() :: %{
        optional("agentResourceRoleArn") => String.t(),
        optional("clientToken") => String.t(),
        optional("customerEncryptionKeyArn") => String.t(),
        optional("description") => String.t(),
        optional("foundationModel") => String.t(),
        optional("guardrailConfiguration") => guardrail_configuration(),
        optional("idleSessionTTLInSeconds") => integer(),
        optional("instruction") => String.t(),
        optional("memoryConfiguration") => memory_configuration(),
        optional("promptOverrideConfiguration") => prompt_override_configuration(),
        optional("tags") => map(),
        required("agentName") => String.t()
      }

  """
  @type create_agent_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_flow_response() :: %{
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "customerEncryptionKeyArn" => String.t(),
        "definition" => flow_definition(),
        "description" => String.t(),
        "executionRoleArn" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "status" => list(any()),
        "updatedAt" => non_neg_integer(),
        "validations" => list(flow_validation()()),
        "version" => String.t()
      }

  """
  @type get_flow_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      flow_data_connection_configuration() :: %{
        "sourceOutput" => String.t(),
        "targetInput" => String.t()
      }

  """
  @type flow_data_connection_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      salesforce_data_source_configuration() :: %{
        "crawlerConfiguration" => salesforce_crawler_configuration(),
        "sourceConfiguration" => salesforce_source_configuration()
      }

  """
  @type salesforce_data_source_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_prompts_response() :: %{
        "nextToken" => String.t(),
        "promptSummaries" => list(prompt_summary()())
      }

  """
  @type list_prompts_response() :: %{String.t() => any()}

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

      mongo_db_atlas_field_mapping() :: %{
        "metadataField" => String.t(),
        "textField" => String.t(),
        "vectorField" => String.t()
      }

  """
  @type mongo_db_atlas_field_mapping() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_agent_knowledge_base_response() :: %{
        "agentKnowledgeBase" => agent_knowledge_base()
      }

  """
  @type update_agent_knowledge_base_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      flow_node() :: %{
        "configuration" => list(),
        "inputs" => list(flow_node_input()()),
        "name" => String.t(),
        "outputs" => list(flow_node_output()()),
        "type" => list(any())
      }

  """
  @type flow_node() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_flow_request() :: %{
        optional("skipResourceInUseCheck") => [boolean()]
      }

  """
  @type delete_flow_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stop_ingestion_job_request() :: %{}

  """
  @type stop_ingestion_job_request() :: %{}

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

      flow_validation() :: %{
        "message" => String.t(),
        "severity" => list(any())
      }

  """
  @type flow_validation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      parameter_detail() :: %{
        "description" => String.t(),
        "required" => [boolean()],
        "type" => list(any())
      }

  """
  @type parameter_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      flow_definition() :: %{
        "connections" => list(flow_connection()()),
        "nodes" => list(flow_node()())
      }

  """
  @type flow_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_flow_version_response() :: %{
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "customerEncryptionKeyArn" => String.t(),
        "definition" => flow_definition(),
        "description" => String.t(),
        "executionRoleArn" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "status" => list(any()),
        "version" => String.t()
      }

  """
  @type get_flow_version_response() :: %{String.t() => any()}

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

      list_flow_versions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_flow_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_prompt_response() :: %{
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "customerEncryptionKeyArn" => String.t(),
        "defaultVariant" => String.t(),
        "description" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "updatedAt" => non_neg_integer(),
        "variants" => list(prompt_variant()()),
        "version" => String.t()
      }

  """
  @type update_prompt_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      flow_node_input() :: %{
        "expression" => String.t(),
        "name" => String.t(),
        "type" => list(any())
      }

  """
  @type flow_node_input() :: %{String.t() => any()}

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

      iterator_flow_node_configuration() :: %{}

  """
  @type iterator_flow_node_configuration() :: %{}

  @typedoc """

  ## Example:

      prompt_metadata_entry() :: %{
        "key" => String.t(),
        "value" => String.t()
      }

  """
  @type prompt_metadata_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      prompt_input_variable() :: %{
        "name" => String.t()
      }

  """
  @type prompt_input_variable() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_data_source_response() :: %{
        "dataSource" => data_source()
      }

  """
  @type update_data_source_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_flow_response() :: %{
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "customerEncryptionKeyArn" => String.t(),
        "definition" => flow_definition(),
        "description" => String.t(),
        "executionRoleArn" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "status" => list(any()),
        "updatedAt" => non_neg_integer(),
        "version" => String.t()
      }

  """
  @type create_flow_response() :: %{String.t() => any()}

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

      delete_flow_response() :: %{
        "id" => String.t()
      }

  """
  @type delete_flow_response() :: %{String.t() => any()}

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

      parsing_configuration() :: %{
        "bedrockFoundationModelConfiguration" => bedrock_foundation_model_configuration(),
        "parsingStrategy" => list(any())
      }

  """
  @type parsing_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_flow_aliases_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_flow_aliases_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_agent_knowledge_base_request() :: %{}

  """
  @type get_agent_knowledge_base_request() :: %{}

  @typedoc """

  ## Example:

      agent_version_summary() :: %{
        "agentName" => String.t(),
        "agentStatus" => list(any()),
        "agentVersion" => String.t(),
        "createdAt" => non_neg_integer(),
        "description" => String.t(),
        "guardrailConfiguration" => guardrail_configuration(),
        "updatedAt" => non_neg_integer()
      }

  """
  @type agent_version_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      share_point_crawler_configuration() :: %{
        "filterConfiguration" => crawl_filter_configuration()
      }

  """
  @type share_point_crawler_configuration() :: %{String.t() => any()}

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

      knowledge_base_flow_node_configuration() :: %{
        "knowledgeBaseId" => String.t(),
        "modelId" => String.t()
      }

  """
  @type knowledge_base_flow_node_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_flow_alias_response() :: %{
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "description" => String.t(),
        "flowId" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "routingConfiguration" => list(flow_alias_routing_configuration_list_item()()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type create_flow_alias_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_agent_version_request() :: %{
        optional("skipResourceInUseCheck") => [boolean()]
      }

  """
  @type delete_agent_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_prompt_response() :: %{
        "id" => String.t(),
        "version" => String.t()
      }

  """
  @type delete_prompt_response() :: %{String.t() => any()}

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

      salesforce_source_configuration() :: %{
        "authType" => list(any()),
        "credentialsSecretArn" => String.t(),
        "hostUrl" => String.t()
      }

  """
  @type salesforce_source_configuration() :: %{String.t() => any()}

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

      delete_prompt_request() :: %{
        optional("promptVersion") => String.t()
      }

  """
  @type delete_prompt_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      hierarchical_chunking_configuration() :: %{
        "levelConfigurations" => list(hierarchical_chunking_level_configuration()()),
        "overlapTokens" => [integer()]
      }

  """
  @type hierarchical_chunking_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      flow_connection() :: %{
        "configuration" => list(),
        "name" => String.t(),
        "source" => String.t(),
        "target" => String.t(),
        "type" => list(any())
      }

  """
  @type flow_connection() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_prompt_response() :: %{
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "customerEncryptionKeyArn" => String.t(),
        "defaultVariant" => String.t(),
        "description" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "updatedAt" => non_neg_integer(),
        "variants" => list(prompt_variant()()),
        "version" => String.t()
      }

  """
  @type get_prompt_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_agent_action_group_response() :: %{
        "agentActionGroup" => agent_action_group()
      }

  """
  @type get_agent_action_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      transformation_function() :: %{
        "transformationLambdaConfiguration" => transformation_lambda_configuration()
      }

  """
  @type transformation_function() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_agent_action_group_response() :: %{}

  """
  @type delete_agent_action_group_response() :: %{}

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

      list_flows_response() :: %{
        "flowSummaries" => list(flow_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_flows_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_agent_version_request() :: %{}

  """
  @type get_agent_version_request() :: %{}

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

      retrieval_flow_node_configuration() :: %{
        "serviceConfiguration" => list()
      }

  """
  @type retrieval_flow_node_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_flow_version_response() :: %{
        "id" => String.t(),
        "version" => String.t()
      }

  """
  @type delete_flow_version_response() :: %{String.t() => any()}

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

      list_flow_versions_response() :: %{
        "flowVersionSummaries" => list(flow_version_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_flow_versions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      bedrockagent_function() :: %{
        "description" => String.t(),
        "name" => String.t(),
        "parameters" => map(),
        "requireConfirmation" => list(any())
      }

  """
  @type bedrockagent_function() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_flow_alias_request() :: %{
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        optional("tags") => map(),
        required("name") => String.t(),
        required("routingConfiguration") => list(flow_alias_routing_configuration_list_item()())
      }

  """
  @type create_flow_alias_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_ingestion_job_request() :: %{}

  """
  @type get_ingestion_job_request() :: %{}

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

      create_prompt_request() :: %{
        optional("clientToken") => String.t(),
        optional("customerEncryptionKeyArn") => String.t(),
        optional("defaultVariant") => String.t(),
        optional("description") => String.t(),
        optional("tags") => map(),
        optional("variants") => list(prompt_variant()()),
        required("name") => String.t()
      }

  """
  @type create_prompt_request() :: %{String.t() => any()}

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

      pattern_object_filter() :: %{
        "exclusionFilters" => list(String.t()()),
        "inclusionFilters" => list(String.t()()),
        "objectType" => String.t()
      }

  """
  @type pattern_object_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      flow_node_output() :: %{
        "name" => String.t(),
        "type" => list(any())
      }

  """
  @type flow_node_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      embedding_model_configuration() :: %{
        "bedrockEmbeddingModelConfiguration" => bedrock_embedding_model_configuration()
      }

  """
  @type embedding_model_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_flow_version_request() :: %{}

  """
  @type get_flow_version_request() :: %{}

  @typedoc """

  ## Example:

      create_prompt_response() :: %{
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "customerEncryptionKeyArn" => String.t(),
        "defaultVariant" => String.t(),
        "description" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "updatedAt" => non_neg_integer(),
        "variants" => list(prompt_variant()()),
        "version" => String.t()
      }

  """
  @type create_prompt_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      seed_url() :: %{
        "url" => String.t()
      }

  """
  @type seed_url() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_ingestion_job_response() :: %{
        "ingestionJob" => ingestion_job()
      }

  """
  @type get_ingestion_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      flow_version_summary() :: %{
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "id" => String.t(),
        "status" => list(any()),
        "version" => String.t()
      }

  """
  @type flow_version_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      transformation_lambda_configuration() :: %{
        "lambdaArn" => String.t()
      }

  """
  @type transformation_lambda_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_data_source_request() :: %{}

  """
  @type get_data_source_request() :: %{}

  @typedoc """

  ## Example:

      url_configuration() :: %{
        "seedUrls" => list(seed_url()())
      }

  """
  @type url_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => String.t()
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      agent_flow_node_configuration() :: %{
        "agentAliasArn" => String.t()
      }

  """
  @type agent_flow_node_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      web_crawler_limits() :: %{
        "rateLimit" => [integer()]
      }

  """
  @type web_crawler_limits() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      input_flow_node_configuration() :: %{}

  """
  @type input_flow_node_configuration() :: %{}

  @typedoc """

  ## Example:

      intermediate_storage() :: %{
        "s3Location" => s3_location()
      }

  """
  @type intermediate_storage() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_flow_alias_response() :: %{
        "flowId" => String.t(),
        "id" => String.t()
      }

  """
  @type delete_flow_alias_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      bedrock_foundation_model_configuration() :: %{
        "modelArn" => String.t(),
        "parsingPrompt" => parsing_prompt()
      }

  """
  @type bedrock_foundation_model_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_agent_alias_response() :: %{
        "agentAlias" => agent_alias()
      }

  """
  @type update_agent_alias_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      prepare_flow_response() :: %{
        "id" => String.t(),
        "status" => list(any())
      }

  """
  @type prepare_flow_response() :: %{String.t() => any()}

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
        "mongoDbAtlasConfiguration" => mongo_db_atlas_configuration(),
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

      delete_data_source_request() :: %{}

  """
  @type delete_data_source_request() :: %{}

  @typedoc """

  ## Example:

      confluence_data_source_configuration() :: %{
        "crawlerConfiguration" => confluence_crawler_configuration(),
        "sourceConfiguration" => confluence_source_configuration()
      }

  """
  @type confluence_data_source_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      chunking_configuration() :: %{
        "chunkingStrategy" => list(any()),
        "fixedSizeChunkingConfiguration" => fixed_size_chunking_configuration(),
        "hierarchicalChunkingConfiguration" => hierarchical_chunking_configuration(),
        "semanticChunkingConfiguration" => semantic_chunking_configuration()
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
        "guardrailConfiguration" => guardrail_configuration(),
        "idleSessionTTLInSeconds" => integer(),
        "instruction" => String.t(),
        "memoryConfiguration" => memory_configuration(),
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

      get_flow_alias_response() :: %{
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "description" => String.t(),
        "flowId" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "routingConfiguration" => list(flow_alias_routing_configuration_list_item()()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type get_flow_alias_response() :: %{String.t() => any()}

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

      parsing_prompt() :: %{
        "parsingPromptText" => String.t()
      }

  """
  @type parsing_prompt() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_knowledge_base_request() :: %{}

  """
  @type delete_knowledge_base_request() :: %{}

  @typedoc """

  ## Example:

      create_flow_version_request() :: %{
        optional("clientToken") => String.t(),
        optional("description") => String.t()
      }

  """
  @type create_flow_version_request() :: %{String.t() => any()}

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

      delete_flow_alias_request() :: %{}

  """
  @type delete_flow_alias_request() :: %{}

  @typedoc """

  ## Example:

      get_agent_action_group_request() :: %{}

  """
  @type get_agent_action_group_request() :: %{}

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

      salesforce_crawler_configuration() :: %{
        "filterConfiguration" => crawl_filter_configuration()
      }

  """
  @type salesforce_crawler_configuration() :: %{String.t() => any()}

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

      flow_alias_summary() :: %{
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "description" => String.t(),
        "flowId" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "routingConfiguration" => list(flow_alias_routing_configuration_list_item()()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type flow_alias_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_location() :: %{
        "uri" => String.t()
      }

  """
  @type s3_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_flows_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_flows_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      confluence_source_configuration() :: %{
        "authType" => list(any()),
        "credentialsSecretArn" => String.t(),
        "hostType" => list(any()),
        "hostUrl" => String.t()
      }

  """
  @type confluence_source_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_agent_knowledge_base_request() :: %{}

  """
  @type disassociate_agent_knowledge_base_request() :: %{}

  @typedoc """

  ## Example:

      get_prompt_request() :: %{
        optional("promptVersion") => String.t()
      }

  """
  @type get_prompt_request() :: %{String.t() => any()}

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
        "guardrailConfiguration" => guardrail_configuration(),
        "idleSessionTTLInSeconds" => integer(),
        "instruction" => String.t(),
        "memoryConfiguration" => memory_configuration(),
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
        "agentVersion" => String.t(),
        "provisionedThroughput" => String.t()
      }

  """
  @type agent_alias_routing_configuration_list_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      semantic_chunking_configuration() :: %{
        "breakpointPercentileThreshold" => [integer()],
        "bufferSize" => [integer()],
        "maxTokens" => [integer()]
      }

  """
  @type semantic_chunking_configuration() :: %{String.t() => any()}

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
        "failureReasons" => list(String.t()()),
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

      list_prompts_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("promptIdentifier") => String.t()
      }

  """
  @type list_prompts_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      share_point_source_configuration() :: %{
        "authType" => list(any()),
        "credentialsSecretArn" => String.t(),
        "domain" => String.t(),
        "hostType" => list(any()),
        "siteUrls" => list(String.t()()),
        "tenantId" => String.t()
      }

  """
  @type share_point_source_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      web_crawler_configuration() :: %{
        "crawlerLimits" => web_crawler_limits(),
        "exclusionFilters" => list(String.t()()),
        "inclusionFilters" => list(String.t()()),
        "scope" => list(any())
      }

  """
  @type web_crawler_configuration() :: %{String.t() => any()}

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
        optional("functionSchema") => list(),
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

      crawl_filter_configuration() :: %{
        "patternObjectFilter" => pattern_object_filter_configuration(),
        "type" => list(any())
      }

  """
  @type crawl_filter_configuration() :: %{String.t() => any()}

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

      flow_summary() :: %{
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "description" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "status" => list(any()),
        "updatedAt" => non_neg_integer(),
        "version" => String.t()
      }

  """
  @type flow_summary() :: %{String.t() => any()}

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

      update_prompt_request() :: %{
        optional("customerEncryptionKeyArn") => String.t(),
        optional("defaultVariant") => String.t(),
        optional("description") => String.t(),
        optional("variants") => list(prompt_variant()()),
        required("name") => String.t()
      }

  """
  @type update_prompt_request() :: %{String.t() => any()}

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
        "functionSchema" => list(),
        "parentActionSignature" => list(any()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type agent_action_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      lex_flow_node_configuration() :: %{
        "botAliasArn" => String.t(),
        "localeId" => String.t()
      }

  """
  @type lex_flow_node_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      prompt_model_inference_configuration() :: %{
        "maxTokens" => integer(),
        "stopSequences" => list([String.t()]()),
        "temperature" => float(),
        "topK" => integer(),
        "topP" => float()
      }

  """
  @type prompt_model_inference_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_prompt_version_request() :: %{
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        optional("tags") => map()
      }

  """
  @type create_prompt_version_request() :: %{String.t() => any()}

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

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      get_flow_alias_request() :: %{}

  """
  @type get_flow_alias_request() :: %{}

  @typedoc """

  ## Example:

      update_agent_request() :: %{
        optional("customerEncryptionKeyArn") => String.t(),
        optional("description") => String.t(),
        optional("guardrailConfiguration") => guardrail_configuration(),
        optional("idleSessionTTLInSeconds") => integer(),
        optional("instruction") => String.t(),
        optional("memoryConfiguration") => memory_configuration(),
        optional("promptOverrideConfiguration") => prompt_override_configuration(),
        required("agentName") => String.t(),
        required("agentResourceRoleArn") => String.t(),
        required("foundationModel") => String.t()
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

      condition_flow_node_configuration() :: %{
        "conditions" => list(flow_condition()())
      }

  """
  @type condition_flow_node_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_flow_version_response() :: %{
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "customerEncryptionKeyArn" => String.t(),
        "definition" => flow_definition(),
        "description" => String.t(),
        "executionRoleArn" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "status" => list(any()),
        "version" => String.t()
      }

  """
  @type create_flow_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_agent_alias_request() :: %{}

  """
  @type delete_agent_alias_request() :: %{}

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

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

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
        optional("dataDeletionPolicy") => list(any()),
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

      output_flow_node_configuration() :: %{}

  """
  @type output_flow_node_configuration() :: %{}

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

      list_flow_aliases_response() :: %{
        "flowAliasSummaries" => list(flow_alias_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_flow_aliases_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stop_ingestion_job_response() :: %{
        "ingestionJob" => ingestion_job()
      }

  """
  @type stop_ingestion_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_agent_response() :: %{
        "agent" => agent()
      }

  """
  @type get_agent_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      hierarchical_chunking_level_configuration() :: %{
        "maxTokens" => [integer()]
      }

  """
  @type hierarchical_chunking_level_configuration() :: %{String.t() => any()}

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

      lambda_function_flow_node_configuration() :: %{
        "lambdaArn" => String.t()
      }

  """
  @type lambda_function_flow_node_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      collector_flow_node_configuration() :: %{}

  """
  @type collector_flow_node_configuration() :: %{}

  @typedoc """

  ## Example:

      agent_summary() :: %{
        "agentId" => String.t(),
        "agentName" => String.t(),
        "agentStatus" => list(any()),
        "description" => String.t(),
        "guardrailConfiguration" => guardrail_configuration(),
        "latestAgentVersion" => String.t(),
        "updatedAt" => non_neg_integer()
      }

  """
  @type agent_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      confluence_crawler_configuration() :: %{
        "filterConfiguration" => crawl_filter_configuration()
      }

  """
  @type confluence_crawler_configuration() :: %{String.t() => any()}

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

      prepare_flow_request() :: %{}

  """
  @type prepare_flow_request() :: %{}

  @typedoc """

  ## Example:

      flow_conditional_connection_configuration() :: %{
        "condition" => String.t()
      }

  """
  @type flow_conditional_connection_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_agent_knowledge_base_response() :: %{}

  """
  @type disassociate_agent_knowledge_base_response() :: %{}

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

      web_data_source_configuration() :: %{
        "crawlerConfiguration" => web_crawler_configuration(),
        "sourceConfiguration" => web_source_configuration()
      }

  """
  @type web_data_source_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_agent_version_response() :: %{
        "agentVersion" => agent_version()
      }

  """
  @type get_agent_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      guardrail_configuration() :: %{
        "guardrailIdentifier" => String.t(),
        "guardrailVersion" => String.t()
      }

  """
  @type guardrail_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_ingestion_job_response() :: %{
        "ingestionJob" => ingestion_job()
      }

  """
  @type start_ingestion_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_agent_request() :: %{}

  """
  @type get_agent_request() :: %{}

  @typedoc """

  ## Example:

      flow_alias_routing_configuration_list_item() :: %{
        "flowVersion" => String.t()
      }

  """
  @type flow_alias_routing_configuration_list_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_flow_response() :: %{
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "customerEncryptionKeyArn" => String.t(),
        "definition" => flow_definition(),
        "description" => String.t(),
        "executionRoleArn" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "status" => list(any()),
        "updatedAt" => non_neg_integer(),
        "version" => String.t()
      }

  """
  @type update_flow_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      prompt_flow_node_resource_configuration() :: %{
        "promptArn" => String.t()
      }

  """
  @type prompt_flow_node_resource_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_flow_request() :: %{}

  """
  @type get_flow_request() :: %{}

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
        "dataDeletionPolicy" => list(any()),
        "dataSourceConfiguration" => data_source_configuration(),
        "dataSourceId" => String.t(),
        "description" => String.t(),
        "failureReasons" => list(String.t()()),
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

      get_knowledge_base_request() :: %{}

  """
  @type get_knowledge_base_request() :: %{}

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
        "chunkingConfiguration" => chunking_configuration(),
        "customTransformationConfiguration" => custom_transformation_configuration(),
        "parsingConfiguration" => parsing_configuration()
      }

  """
  @type vector_ingestion_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      vector_knowledge_base_configuration() :: %{
        "embeddingModelArn" => String.t(),
        "embeddingModelConfiguration" => embedding_model_configuration()
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

      retrieval_flow_node_s3_configuration() :: %{
        "bucketName" => String.t()
      }

  """
  @type retrieval_flow_node_s3_configuration() :: %{String.t() => any()}

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

      mongo_db_atlas_configuration() :: %{
        "collectionName" => String.t(),
        "credentialsSecretArn" => String.t(),
        "databaseName" => String.t(),
        "endpoint" => String.t(),
        "endpointServiceName" => String.t(),
        "fieldMapping" => mongo_db_atlas_field_mapping(),
        "vectorIndexName" => String.t()
      }

  """
  @type mongo_db_atlas_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_agent_alias_request() :: %{}

  """
  @type get_agent_alias_request() :: %{}

  @typedoc """

  ## Example:

      bedrock_embedding_model_configuration() :: %{
        "dimensions" => integer()
      }

  """
  @type bedrock_embedding_model_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      prompt_flow_node_configuration() :: %{
        "sourceConfiguration" => list()
      }

  """
  @type prompt_flow_node_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_data_source_configuration() :: %{
        "bucketArn" => String.t(),
        "bucketOwnerAccountId" => String.t(),
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

      delete_flow_version_request() :: %{
        optional("skipResourceInUseCheck") => [boolean()]
      }

  """
  @type delete_flow_version_request() :: %{String.t() => any()}

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

  @typedoc """

  ## Example:

      prompt_variant() :: %{
        "inferenceConfiguration" => list(),
        "metadata" => list(prompt_metadata_entry()()),
        "modelId" => String.t(),
        "name" => String.t(),
        "templateConfiguration" => list(),
        "templateType" => list(any())
      }

  """
  @type prompt_variant() :: %{String.t() => any()}

  @type associate_agent_knowledge_base_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_agent_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_agent_action_group_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_agent_alias_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_data_source_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_flow_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_flow_alias_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_flow_version_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_knowledge_base_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_prompt_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_prompt_version_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_agent_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_agent_action_group_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_agent_alias_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_agent_version_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_data_source_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_flow_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_flow_alias_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_flow_version_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_knowledge_base_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_prompt_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type disassociate_agent_knowledge_base_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_agent_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_agent_action_group_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_agent_alias_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_agent_knowledge_base_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_agent_version_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_data_source_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_flow_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_flow_alias_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_flow_version_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_ingestion_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_knowledge_base_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_prompt_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_agent_action_groups_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_agent_aliases_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_agent_knowledge_bases_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_agent_versions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_agents_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_data_sources_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_flow_aliases_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_flow_versions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_flows_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_ingestion_jobs_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_knowledge_bases_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_prompts_errors() ::
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

  @type prepare_agent_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type prepare_flow_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type start_ingestion_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type stop_ingestion_job_errors() ::
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
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_agent_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_agent_action_group_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_agent_alias_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_agent_knowledge_base_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_data_source_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_flow_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_flow_alias_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_knowledge_base_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_prompt_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2023-06-05",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "bedrock-agent",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Bedrock Agent",
      signature_version: "v4",
      signing_name: "bedrock",
      target_prefix: nil
    }
  end

  @doc """
  Associates a knowledge base with an agent.

  If a knowledge base is associated and its `indexState` is set to `Enabled`, the
  agent queries the knowledge base for information to augment its response to the
  user.
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
          | {:error, associate_agent_knowledge_base_errors()}
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
  Creates an agent that orchestrates interactions between foundation models, data
  sources, software applications, user conversations, and APIs to carry out tasks
  to help customers.

    *
  Specify the following fields for security purposes.

      *

  `agentResourceRoleArn` – The Amazon Resource Name (ARN) of the role with
  permissions to invoke API operations on an agent.

      *
  (Optional) `customerEncryptionKeyArn` – The Amazon Resource Name (ARN) of a KMS
  key to encrypt the creation of the agent.

      *
  (Optional) `idleSessionTTLinSeconds` – Specify the number of seconds for which
  the agent should maintain session information. After this time expires, the
  subsequent `InvokeAgent` request begins a new session.

    *
  To enable your agent to retain conversational context across multiple sessions,
  include a `memoryConfiguration` object.
  For more information, see [Configure memory](https://docs.aws.amazon.com/bedrock/latest/userguide/agents-configure-memory.html).

    *
  To override the default prompt behavior for agent orchestration and to use
  advanced prompts, include a `promptOverrideConfiguration` object.
  For more information, see [Advanced prompts](https://docs.aws.amazon.com/bedrock/latest/userguide/advanced-prompts.html).

    *
  If your agent fails to be created, the response returns a list of
  `failureReasons` alongside a list of `recommendedActions` for you to
  troubleshoot.

    *
  The agent instructions will not be honored if your agent has only one knowledge
  base, uses default prompts, has no action group, and user input is disabled.
  """
  @spec create_agent(map(), create_agent_request(), list()) ::
          {:ok, create_agent_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_agent_errors()}
  def create_agent(%Client{} = client, input, options \\ []) do
    url_path = "/agents/"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
  end

  @doc """
  Creates an action group for an agent.

  An action group represents the actions that an agent can carry out for the
  customer by defining the APIs that an agent can call and the logic for calling
  them.

  To allow your agent to request the user for additional information when trying
  to complete a task,
  add an action group with the `parentActionGroupSignature` field set to
  `AMAZON.UserInput`.

  To allow your agent to generate, run, and troubleshoot code when trying to
  complete a task,
  add an action group with the `parentActionGroupSignature` field set to
  `AMAZON.CodeInterpreter`.

  You must leave the `description`, `apiSchema`, and `actionGroupExecutor` fields
  blank for this action group. During orchestration, if your agent determines that
  it needs to invoke an API in an action group, but doesn't have enough
  information to complete the API request, it will invoke this action group
  instead and return an
  [Observation](https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_Observation.html)
  reprompting the user for more information.
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
          | {:error, create_agent_action_group_errors()}
  def create_agent_action_group(%Client{} = client, agent_id, agent_version, input, options \\ []) do
    url_path =
      "/agents/#{AWS.Util.encode_uri(agent_id)}/agentversions/#{AWS.Util.encode_uri(agent_version)}/actiongroups/"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Creates an alias of an agent that can be used to deploy the agent.
  """
  @spec create_agent_alias(map(), String.t(), create_agent_alias_request(), list()) ::
          {:ok, create_agent_alias_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_agent_alias_errors()}
  def create_agent_alias(%Client{} = client, agent_id, input, options \\ []) do
    url_path = "/agents/#{AWS.Util.encode_uri(agent_id)}/agentaliases/"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
  end

  @doc """
  Creates a data source connector for a knowledge base.

  You can't change the `chunkingConfiguration` after you create the data source
  connector.
  """
  @spec create_data_source(map(), String.t(), create_data_source_request(), list()) ::
          {:ok, create_data_source_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_data_source_errors()}
  def create_data_source(%Client{} = client, knowledge_base_id, input, options \\ []) do
    url_path = "/knowledgebases/#{AWS.Util.encode_uri(knowledge_base_id)}/datasources/"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Creates a prompt flow that you can use to send an input through various steps to
  yield an output.

  Configure nodes, each of which corresponds to a step of the flow, and create
  connections between the nodes to create paths to different outputs. For more
  information, see [How it works](https://docs.aws.amazon.com/bedrock/latest/userguide/flows-how-it-works.html)
  and [Create a flow in Amazon Bedrock](https://docs.aws.amazon.com/bedrock/latest/userguide/flows-create.html)
  in the Amazon Bedrock User Guide.
  """
  @spec create_flow(map(), create_flow_request(), list()) ::
          {:ok, create_flow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_flow_errors()}
  def create_flow(%Client{} = client, input, options \\ []) do
    url_path = "/flows/"
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
  Creates an alias of a flow for deployment.

  For more information, see [Deploy a flow in Amazon Bedrock](https://docs.aws.amazon.com/bedrock/latest/userguide/flows-deploy.html)
  in the Amazon Bedrock User Guide.
  """
  @spec create_flow_alias(map(), String.t(), create_flow_alias_request(), list()) ::
          {:ok, create_flow_alias_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_flow_alias_errors()}
  def create_flow_alias(%Client{} = client, flow_identifier, input, options \\ []) do
    url_path = "/flows/#{AWS.Util.encode_uri(flow_identifier)}/aliases"
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
  Creates a version of the flow that you can deploy.

  For more information, see [Deploy a flow in Amazon Bedrock](https://docs.aws.amazon.com/bedrock/latest/userguide/flows-deploy.html)
  in the Amazon Bedrock User Guide.
  """
  @spec create_flow_version(map(), String.t(), create_flow_version_request(), list()) ::
          {:ok, create_flow_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_flow_version_errors()}
  def create_flow_version(%Client{} = client, flow_identifier, input, options \\ []) do
    url_path = "/flows/#{AWS.Util.encode_uri(flow_identifier)}/versions"
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
  Creates a knowledge base.

  A knowledge base contains your data sources so that Large Language Models (LLMs)
  can use your data. To create a knowledge base, you must first set up your data
  sources and configure a supported vector store. For more information, see [Set up a knowledge
  base](https://docs.aws.amazon.com/bedrock/latest/userguide/knowlege-base-prereq.html).

  If you prefer to let Amazon Bedrock create and manage a vector store for you in
  Amazon OpenSearch Service, use the console. For more information, see [Create a knowledge
  base](https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-create).

    *
  Provide the `name` and an optional `description`.

    *
  Provide the Amazon Resource Name (ARN) with permissions to create a knowledge
  base in the `roleArn` field.

    *
  Provide the embedding model to use in the `embeddingModelArn` field in the
  `knowledgeBaseConfiguration` object.

    *
  Provide the configuration for your vector store in the `storageConfiguration`
  object.

      *
  For an Amazon OpenSearch Service database, use the
  `opensearchServerlessConfiguration` object. For more information, see [Create a vector store in Amazon OpenSearch
  Service](https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-setup-oss.html).

      *
  For an Amazon Aurora database, use the `RdsConfiguration` object. For more
  information, see [Create a vector store in Amazon Aurora](https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-setup-rds.html).

      *
  For a Pinecone database, use the `pineconeConfiguration` object. For more
  information, see [Create a vector store in Pinecone](https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-setup-pinecone.html).

      *
  For a Redis Enterprise Cloud database, use the
  `redisEnterpriseCloudConfiguration` object. For more information, see [Create a vector store in Redis Enterprise
  Cloud](https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-setup-redis.html).
  """
  @spec create_knowledge_base(map(), create_knowledge_base_request(), list()) ::
          {:ok, create_knowledge_base_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_knowledge_base_errors()}
  def create_knowledge_base(%Client{} = client, input, options \\ []) do
    url_path = "/knowledgebases/"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
  end

  @doc """
  Creates a prompt in your prompt library that you can add to a flow.

  For more information, see [Prompt management in Amazon Bedrock](https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management.html),
  [Create a prompt using Prompt management](https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management-create.html)
  and [Prompt flows in Amazon Bedrock](https://docs.aws.amazon.com/bedrock/latest/userguide/flows.html) in the
  Amazon Bedrock User Guide.
  """
  @spec create_prompt(map(), create_prompt_request(), list()) ::
          {:ok, create_prompt_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_prompt_errors()}
  def create_prompt(%Client{} = client, input, options \\ []) do
    url_path = "/prompts/"
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
  Creates a static snapshot of your prompt that can be deployed to production.

  For more information, see [Deploy prompts using Prompt management by creating versions](https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management-deploy.html)
  in the Amazon Bedrock User Guide.
  """
  @spec create_prompt_version(map(), String.t(), create_prompt_version_request(), list()) ::
          {:ok, create_prompt_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_prompt_version_errors()}
  def create_prompt_version(%Client{} = client, prompt_identifier, input, options \\ []) do
    url_path = "/prompts/#{AWS.Util.encode_uri(prompt_identifier)}/versions"
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
  Deletes an agent.
  """
  @spec delete_agent(map(), String.t(), delete_agent_request(), list()) ::
          {:ok, delete_agent_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_agent_errors()}
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
  Deletes an action group in an agent.
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
          | {:error, delete_agent_action_group_errors()}
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
  Deletes an alias of an agent.
  """
  @spec delete_agent_alias(map(), String.t(), String.t(), delete_agent_alias_request(), list()) ::
          {:ok, delete_agent_alias_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_agent_alias_errors()}
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
  Deletes a version of an agent.
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
          | {:error, delete_agent_version_errors()}
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
  Deletes a data source from a knowledge base.
  """
  @spec delete_data_source(map(), String.t(), String.t(), delete_data_source_request(), list()) ::
          {:ok, delete_data_source_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_data_source_errors()}
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
  Deletes a flow.
  """
  @spec delete_flow(map(), String.t(), delete_flow_request(), list()) ::
          {:ok, delete_flow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_flow_errors()}
  def delete_flow(%Client{} = client, flow_identifier, input, options \\ []) do
    url_path = "/flows/#{AWS.Util.encode_uri(flow_identifier)}/"
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
      200
    )
  end

  @doc """
  Deletes an alias of a flow.
  """
  @spec delete_flow_alias(map(), String.t(), String.t(), delete_flow_alias_request(), list()) ::
          {:ok, delete_flow_alias_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_flow_alias_errors()}
  def delete_flow_alias(
        %Client{} = client,
        alias_identifier,
        flow_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/flows/#{AWS.Util.encode_uri(flow_identifier)}/aliases/#{AWS.Util.encode_uri(alias_identifier)}"

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
      200
    )
  end

  @doc """
  Deletes a version of a flow.
  """
  @spec delete_flow_version(map(), String.t(), String.t(), delete_flow_version_request(), list()) ::
          {:ok, delete_flow_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_flow_version_errors()}
  def delete_flow_version(%Client{} = client, flow_identifier, flow_version, input, options \\ []) do
    url_path =
      "/flows/#{AWS.Util.encode_uri(flow_identifier)}/versions/#{AWS.Util.encode_uri(flow_version)}/"

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
      200
    )
  end

  @doc """
  Deletes a knowledge base.

  Before deleting a knowledge base, you should disassociate the knowledge base
  from any agents that it is associated with by making a
  [DisassociateAgentKnowledgeBase](https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_DisassociateAgentKnowledgeBase.html)
  request.
  """
  @spec delete_knowledge_base(map(), String.t(), delete_knowledge_base_request(), list()) ::
          {:ok, delete_knowledge_base_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_knowledge_base_errors()}
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
  Deletes a prompt or a version of it, depending on whether you include the
  `promptVersion` field or not.

  For more information, see [Delete prompts from the Prompt management tool](https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management-manage.html#prompt-management-delete.html)
  and [Delete a version of a prompt from the Prompt management tool](https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management-deploy.html#prompt-management-versions-delete.html)
  in the Amazon Bedrock User Guide.
  """
  @spec delete_prompt(map(), String.t(), delete_prompt_request(), list()) ::
          {:ok, delete_prompt_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_prompt_errors()}
  def delete_prompt(%Client{} = client, prompt_identifier, input, options \\ []) do
    url_path = "/prompts/#{AWS.Util.encode_uri(prompt_identifier)}/"
    headers = []

    {query_params, input} =
      [
        {"promptVersion", "promptVersion"}
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
  Disassociates a knowledge base from an agent.
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
          | {:error, disassociate_agent_knowledge_base_errors()}
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
  Gets information about an agent.
  """
  @spec get_agent(map(), String.t(), list()) ::
          {:ok, get_agent_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_agent_errors()}
  def get_agent(%Client{} = client, agent_id, options \\ []) do
    url_path = "/agents/#{AWS.Util.encode_uri(agent_id)}/"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about an action group for an agent.
  """
  @spec get_agent_action_group(map(), String.t(), String.t(), String.t(), list()) ::
          {:ok, get_agent_action_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_agent_action_group_errors()}
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
  Gets information about an alias of an agent.
  """
  @spec get_agent_alias(map(), String.t(), String.t(), list()) ::
          {:ok, get_agent_alias_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_agent_alias_errors()}
  def get_agent_alias(%Client{} = client, agent_alias_id, agent_id, options \\ []) do
    url_path =
      "/agents/#{AWS.Util.encode_uri(agent_id)}/agentaliases/#{AWS.Util.encode_uri(agent_alias_id)}/"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a knowledge base associated with an agent.
  """
  @spec get_agent_knowledge_base(map(), String.t(), String.t(), String.t(), list()) ::
          {:ok, get_agent_knowledge_base_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_agent_knowledge_base_errors()}
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
  Gets details about a version of an agent.
  """
  @spec get_agent_version(map(), String.t(), String.t(), list()) ::
          {:ok, get_agent_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_agent_version_errors()}
  def get_agent_version(%Client{} = client, agent_id, agent_version, options \\ []) do
    url_path =
      "/agents/#{AWS.Util.encode_uri(agent_id)}/agentversions/#{AWS.Util.encode_uri(agent_version)}/"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a data source.
  """
  @spec get_data_source(map(), String.t(), String.t(), list()) ::
          {:ok, get_data_source_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_data_source_errors()}
  def get_data_source(%Client{} = client, data_source_id, knowledge_base_id, options \\ []) do
    url_path =
      "/knowledgebases/#{AWS.Util.encode_uri(knowledge_base_id)}/datasources/#{AWS.Util.encode_uri(data_source_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a flow.

  For more information, see [Manage a flow in Amazon Bedrock](https://docs.aws.amazon.com/bedrock/latest/userguide/flows-manage.html)
  in the Amazon Bedrock User Guide.
  """
  @spec get_flow(map(), String.t(), list()) ::
          {:ok, get_flow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_flow_errors()}
  def get_flow(%Client{} = client, flow_identifier, options \\ []) do
    url_path = "/flows/#{AWS.Util.encode_uri(flow_identifier)}/"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a flow.

  For more information, see [Deploy a flow in Amazon Bedrock](https://docs.aws.amazon.com/bedrock/latest/userguide/flows-deploy.html)
  in the Amazon Bedrock User Guide.
  """
  @spec get_flow_alias(map(), String.t(), String.t(), list()) ::
          {:ok, get_flow_alias_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_flow_alias_errors()}
  def get_flow_alias(%Client{} = client, alias_identifier, flow_identifier, options \\ []) do
    url_path =
      "/flows/#{AWS.Util.encode_uri(flow_identifier)}/aliases/#{AWS.Util.encode_uri(alias_identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a version of a flow.

  For more information, see [Deploy a flow in Amazon Bedrock](https://docs.aws.amazon.com/bedrock/latest/userguide/flows-deploy.html)
  in the Amazon Bedrock User Guide.
  """
  @spec get_flow_version(map(), String.t(), String.t(), list()) ::
          {:ok, get_flow_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_flow_version_errors()}
  def get_flow_version(%Client{} = client, flow_identifier, flow_version, options \\ []) do
    url_path =
      "/flows/#{AWS.Util.encode_uri(flow_identifier)}/versions/#{AWS.Util.encode_uri(flow_version)}/"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a data ingestion job.

  Data sources are ingested into your knowledge base so that Large Lanaguage
  Models (LLMs) can use your data.
  """
  @spec get_ingestion_job(map(), String.t(), String.t(), String.t(), list()) ::
          {:ok, get_ingestion_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_ingestion_job_errors()}
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
  Gets information about a knoweldge base.
  """
  @spec get_knowledge_base(map(), String.t(), list()) ::
          {:ok, get_knowledge_base_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_knowledge_base_errors()}
  def get_knowledge_base(%Client{} = client, knowledge_base_id, options \\ []) do
    url_path = "/knowledgebases/#{AWS.Util.encode_uri(knowledge_base_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the working draft (`DRAFT` version) of a prompt or a
  version of it, depending on whether you include the `promptVersion` field or
  not.

  For more information, see [View information about prompts using Prompt management](https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management-manage.html#prompt-management-view.html)
  and [View information about a version of your prompt](https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management-deploy.html#prompt-management-versions-view.html)
  in the Amazon Bedrock User Guide.
  """
  @spec get_prompt(map(), String.t(), String.t() | nil, list()) ::
          {:ok, get_prompt_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_prompt_errors()}
  def get_prompt(%Client{} = client, prompt_identifier, prompt_version \\ nil, options \\ []) do
    url_path = "/prompts/#{AWS.Util.encode_uri(prompt_identifier)}/"
    headers = []
    query_params = []

    query_params =
      if !is_nil(prompt_version) do
        [{"promptVersion", prompt_version} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the action groups for an agent and information about each one.
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
          | {:error, list_agent_action_groups_errors()}
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
  Lists the aliases of an agent and information about each one.
  """
  @spec list_agent_aliases(map(), String.t(), list_agent_aliases_request(), list()) ::
          {:ok, list_agent_aliases_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_agent_aliases_errors()}
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
  Lists knowledge bases associated with an agent and information about each one.
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
          | {:error, list_agent_knowledge_bases_errors()}
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
  Lists the versions of an agent and information about each version.
  """
  @spec list_agent_versions(map(), String.t(), list_agent_versions_request(), list()) ::
          {:ok, list_agent_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_agent_versions_errors()}
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
  Lists the agents belonging to an account and information about each agent.
  """
  @spec list_agents(map(), list_agents_request(), list()) ::
          {:ok, list_agents_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_agents_errors()}
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
  Lists the data sources in a knowledge base and information about each one.
  """
  @spec list_data_sources(map(), String.t(), list_data_sources_request(), list()) ::
          {:ok, list_data_sources_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_data_sources_errors()}
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
  Returns a list of aliases for a flow.
  """
  @spec list_flow_aliases(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_flow_aliases_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_flow_aliases_errors()}
  def list_flow_aliases(
        %Client{} = client,
        flow_identifier,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/flows/#{AWS.Util.encode_uri(flow_identifier)}/aliases"
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
  Returns a list of information about each flow.

  For more information, see [Deploy a flow in Amazon Bedrock](https://docs.aws.amazon.com/bedrock/latest/userguide/flows-deploy.html)
  in the Amazon Bedrock User Guide.
  """
  @spec list_flow_versions(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_flow_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_flow_versions_errors()}
  def list_flow_versions(
        %Client{} = client,
        flow_identifier,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/flows/#{AWS.Util.encode_uri(flow_identifier)}/versions"
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
  Returns a list of flows and information about each flow.

  For more information, see [Manage a flow in Amazon Bedrock](https://docs.aws.amazon.com/bedrock/latest/userguide/flows-manage.html)
  in the Amazon Bedrock User Guide.
  """
  @spec list_flows(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_flows_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_flows_errors()}
  def list_flows(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/flows/"
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
  Lists the data ingestion jobs for a data source.

  The list also includes information about each job.
  """
  @spec list_ingestion_jobs(map(), String.t(), String.t(), list_ingestion_jobs_request(), list()) ::
          {:ok, list_ingestion_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_ingestion_jobs_errors()}
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
  Lists the knowledge bases in an account.

  The list also includesinformation about each knowledge base.
  """
  @spec list_knowledge_bases(map(), list_knowledge_bases_request(), list()) ::
          {:ok, list_knowledge_bases_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_knowledge_bases_errors()}
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
  Returns either information about the working draft (`DRAFT` version) of each
  prompt in an account, or information about of all versions of a prompt,
  depending on whether you include the `promptIdentifier` field or not.

  For more information, see [View information about prompts using Prompt management](https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management-manage.html#prompt-management-view.html)
  in the Amazon Bedrock User Guide.
  """
  @spec list_prompts(map(), String.t() | nil, String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_prompts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_prompts_errors()}
  def list_prompts(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        prompt_identifier \\ nil,
        options \\ []
      ) do
    url_path = "/prompts/"
    headers = []
    query_params = []

    query_params =
      if !is_nil(prompt_identifier) do
        [{"promptIdentifier", prompt_identifier} | query_params]
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
  List all the tags for the resource you specify.
  """
  @spec list_tags_for_resource(map(), String.t(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Creates a `DRAFT` version of the agent that can be used for internal testing.
  """
  @spec prepare_agent(map(), String.t(), prepare_agent_request(), list()) ::
          {:ok, prepare_agent_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, prepare_agent_errors()}
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
  Prepares the `DRAFT` version of a flow so that it can be invoked.

  For more information, see [Test a flow in Amazon Bedrock](https://docs.aws.amazon.com/bedrock/latest/userguide/flows-test.html)
  in the Amazon Bedrock User Guide.
  """
  @spec prepare_flow(map(), String.t(), prepare_flow_request(), list()) ::
          {:ok, prepare_flow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, prepare_flow_errors()}
  def prepare_flow(%Client{} = client, flow_identifier, input, options \\ []) do
    url_path = "/flows/#{AWS.Util.encode_uri(flow_identifier)}/"
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
  Begins a data ingestion job.

  Data sources are ingested into your knowledge base so that Large Language Models
  (LLMs) can use your data.
  """
  @spec start_ingestion_job(map(), String.t(), String.t(), start_ingestion_job_request(), list()) ::
          {:ok, start_ingestion_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_ingestion_job_errors()}
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
  Stops a currently running data ingestion job.

  You can send a `StartIngestionJob` request again to ingest the rest of your data
  when you are ready.
  """
  @spec stop_ingestion_job(
          map(),
          String.t(),
          String.t(),
          String.t(),
          stop_ingestion_job_request(),
          list()
        ) ::
          {:ok, stop_ingestion_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_ingestion_job_errors()}
  def stop_ingestion_job(
        %Client{} = client,
        data_source_id,
        ingestion_job_id,
        knowledge_base_id,
        input,
        options \\ []
      ) do
    url_path =
      "/knowledgebases/#{AWS.Util.encode_uri(knowledge_base_id)}/datasources/#{AWS.Util.encode_uri(data_source_id)}/ingestionjobs/#{AWS.Util.encode_uri(ingestion_job_id)}/stop"

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
  Associate tags with a resource.

  For more information, see [Tagging resources](https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html)
  in the Amazon Bedrock User Guide.
  """
  @spec tag_resource(map(), String.t(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
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
  Remove tags from a resource.
  """
  @spec untag_resource(map(), String.t(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
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
  Updates the configuration of an agent.
  """
  @spec update_agent(map(), String.t(), update_agent_request(), list()) ::
          {:ok, update_agent_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_agent_errors()}
  def update_agent(%Client{} = client, agent_id, input, options \\ []) do
    url_path = "/agents/#{AWS.Util.encode_uri(agent_id)}/"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
  end

  @doc """
  Updates the configuration for an action group for an agent.
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
          | {:error, update_agent_action_group_errors()}
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
  Updates configurations for an alias of an agent.
  """
  @spec update_agent_alias(map(), String.t(), String.t(), update_agent_alias_request(), list()) ::
          {:ok, update_agent_alias_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_agent_alias_errors()}
  def update_agent_alias(%Client{} = client, agent_alias_id, agent_id, input, options \\ []) do
    url_path =
      "/agents/#{AWS.Util.encode_uri(agent_id)}/agentaliases/#{AWS.Util.encode_uri(agent_alias_id)}/"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
  end

  @doc """
  Updates the configuration for a knowledge base that has been associated with an
  agent.
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
          | {:error, update_agent_knowledge_base_errors()}
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
  Updates the configurations for a data source connector.

  You can't change the `chunkingConfiguration` after you create the data source
  connector. Specify the existing `chunkingConfiguration`.
  """
  @spec update_data_source(map(), String.t(), String.t(), update_data_source_request(), list()) ::
          {:ok, update_data_source_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_data_source_errors()}
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
  Modifies a flow.

  Include both fields that you want to keep and fields that you want to change.
  For more information, see [How it works](https://docs.aws.amazon.com/bedrock/latest/userguide/flows-how-it-works.html)
  and [Create a flow in Amazon Bedrock](https://docs.aws.amazon.com/bedrock/latest/userguide/flows-create.html)
  in the Amazon Bedrock User Guide.
  """
  @spec update_flow(map(), String.t(), update_flow_request(), list()) ::
          {:ok, update_flow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_flow_errors()}
  def update_flow(%Client{} = client, flow_identifier, input, options \\ []) do
    url_path = "/flows/#{AWS.Util.encode_uri(flow_identifier)}/"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Modifies the alias of a flow.

  Include both fields that you want to keep and ones that you want to change. For
  more information, see [Deploy a flow in Amazon Bedrock](https://docs.aws.amazon.com/bedrock/latest/userguide/flows-deploy.html)
  in the Amazon Bedrock User Guide.
  """
  @spec update_flow_alias(map(), String.t(), String.t(), update_flow_alias_request(), list()) ::
          {:ok, update_flow_alias_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_flow_alias_errors()}
  def update_flow_alias(
        %Client{} = client,
        alias_identifier,
        flow_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/flows/#{AWS.Util.encode_uri(flow_identifier)}/aliases/#{AWS.Util.encode_uri(alias_identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates the configuration of a knowledge base with the fields that you specify.

  Because all fields will be overwritten, you must include the same values for
  fields that you want to keep the same.

  You can change the following fields:

    *

  `name`

    *

  `description`

    *

  `roleArn`

  You can't change the `knowledgeBaseConfiguration` or `storageConfiguration`
  fields, so you must specify the same configurations as when you created the
  knowledge base. You can send a
  [GetKnowledgeBase](https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_GetKnowledgeBase.html)
  request and copy the same configurations.
  """
  @spec update_knowledge_base(map(), String.t(), update_knowledge_base_request(), list()) ::
          {:ok, update_knowledge_base_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_knowledge_base_errors()}
  def update_knowledge_base(%Client{} = client, knowledge_base_id, input, options \\ []) do
    url_path = "/knowledgebases/#{AWS.Util.encode_uri(knowledge_base_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
  end

  @doc """
  Modifies a prompt in your prompt library.

  Include both fields that you want to keep and fields that you want to replace.
  For more information, see [Prompt management in Amazon Bedrock](https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management.html)
  and [Edit prompts in your prompt library](https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management-manage.html#prompt-management-edit)
  in the Amazon Bedrock User Guide.
  """
  @spec update_prompt(map(), String.t(), update_prompt_request(), list()) ::
          {:ok, update_prompt_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_prompt_errors()}
  def update_prompt(%Client{} = client, prompt_identifier, input, options \\ []) do
    url_path = "/prompts/#{AWS.Util.encode_uri(prompt_identifier)}/"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end
end
