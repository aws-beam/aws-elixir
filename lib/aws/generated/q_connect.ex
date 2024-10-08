# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.QConnect do
  @moduledoc """

    *

  [Amazon Q actions](https://docs.aws.amazon.com/connect/latest/APIReference/API_Operations_Amazon_Q_Connect.html)

    *

  [Amazon Q data types](https://docs.aws.amazon.com/connect/latest/APIReference/API_Types_Amazon_Q_Connect.html)

  **Powered by Amazon Bedrock**: Amazon Web Services implements [automated abuse detection](https://docs.aws.amazon.com/bedrock/latest/userguide/abuse-detection.html).

  Because Amazon Q in Connect is built on Amazon Bedrock, users can take full
  advantage of
  the controls implemented in Amazon Bedrock to enforce safety, security, and the
  responsible use of
  artificial intelligence (AI).

  Amazon Q in Connect is a generative AI customer service assistant. It is an
  LLM-enhanced
  evolution of Amazon Connect Wisdom that delivers real-time recommendations to
  help contact
  center agents resolve customer issues quickly and accurately.

  Amazon Q in Connect automatically detects customer intent during calls and chats
  using conversational
  analytics and natural language understanding (NLU). It then provides agents with
  immediate,
  real-time generative responses and suggested actions, and links to relevant
  documents and
  articles. Agents can also query Amazon Q in Connect directly using natural
  language or keywords to answer
  customer requests.

  Use the Amazon Q in Connect APIs to create an assistant and a knowledge base,
  for example, or
  manage content by uploading custom files.

  For more information, see [Use Amazon Q in Connect for generative AI powered agent assistance in
  real-time](https://docs.aws.amazon.com/connect/latest/adminguide/amazon-q-connect.html)
  in the *Amazon Connect
  Administrator Guide*.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      start_content_upload_response() :: %{
        required("headersToInclude") => map(),
        required("uploadId") => String.t(),
        required("url") => String.t(),
        required("urlExpiry") => [non_neg_integer()]
      }

  """
  @type start_content_upload_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_knowledge_base_template_uri_request() :: %{
        required("templateUri") => String.t()
      }

  """
  @type update_knowledge_base_template_uri_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_feedback_request() :: %{
        required("contentFeedback") => list(),
        required("targetId") => String.t(),
        required("targetType") => String.t()
      }

  """
  @type put_feedback_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_a_i_agent_version_response() :: %{}

  """
  @type delete_a_i_agent_version_response() :: %{}

  @typedoc """

  ## Example:

      query_assistant_response() :: %{
        optional("nextToken") => String.t(),
        required("results") => list(result_data()())
      }

  """
  @type query_assistant_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_a_i_agents_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("origin") => String.t()
      }

  """
  @type list_a_i_agents_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      session_summary() :: %{
        "assistantArn" => String.t(),
        "assistantId" => String.t(),
        "sessionArn" => String.t(),
        "sessionId" => String.t()
      }

  """
  @type session_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_quick_response_response() :: %{
        "quickResponse" => quick_response_data()
      }

  """
  @type create_quick_response_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      a_i_agent_version_summary() :: %{
        "aiAgentSummary" => a_i_agent_summary(),
        "versionNumber" => float()
      }

  """
  @type a_i_agent_version_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_session_response() :: %{
        optional("session") => session_data()
      }

  """
  @type get_session_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_a_i_agent_versions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("origin") => String.t()
      }

  """
  @type list_a_i_agent_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      remove_assistant_a_i_agent_request() :: %{
        required("aiAgentType") => String.t()
      }

  """
  @type remove_assistant_a_i_agent_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_summary() :: %{
        "details" => list(),
        "reference" => list()
      }

  """
  @type data_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_quick_responses_request() :: %{
        optional("attributes") => map(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("searchExpression") => quick_response_search_expression()
      }

  """
  @type search_quick_responses_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      quick_response_search_expression() :: %{
        "filters" => list(quick_response_filter_field()()),
        "orderOnField" => quick_response_order_field(),
        "queries" => list(quick_response_query_field()())
      }

  """
  @type quick_response_search_expression() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_content_association_request() :: %{}

  """
  @type get_content_association_request() :: %{}

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

      highlight() :: %{
        "beginOffsetInclusive" => integer(),
        "endOffsetExclusive" => integer()
      }

  """
  @type highlight() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      app_integrations_configuration() :: %{
        "appIntegrationArn" => String.t(),
        "objectFields" => list(String.t()())
      }

  """
  @type app_integrations_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_a_i_agent_request() :: %{
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        optional("tags") => map(),
        required("configuration") => list(),
        required("name") => String.t(),
        required("type") => String.t(),
        required("visibilityStatus") => String.t()
      }

  """
  @type create_a_i_agent_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_a_i_agent_versions_response() :: %{
        "aiAgentVersionSummaries" => list(a_i_agent_version_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_a_i_agent_versions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_a_i_agent_response() :: %{
        "aiAgent" => a_i_agent_data()
      }

  """
  @type create_a_i_agent_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_a_iprompt_version_request() :: %{
        optional("clientToken") => String.t(),
        optional("modifiedTime") => [non_neg_integer()]
      }

  """
  @type create_a_iprompt_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_a_i_agent_response() :: %{
        "aiAgent" => a_i_agent_data(),
        "versionNumber" => float()
      }

  """
  @type get_a_i_agent_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_contents_response() :: %{
        optional("nextToken") => String.t(),
        required("contentSummaries") => list(content_summary()())
      }

  """
  @type list_contents_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      query_text_input_data() :: %{
        "text" => String.t()
      }

  """
  @type query_text_input_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      quick_response_filter_field() :: %{
        "includeNoExistence" => [boolean()],
        "name" => String.t(),
        "operator" => String.t(),
        "values" => list(String.t()())
      }

  """
  @type quick_response_filter_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_condition() :: %{
        "key" => String.t(),
        "value" => String.t()
      }

  """
  @type tag_condition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      content_association_data() :: %{
        "associationData" => list(),
        "associationType" => String.t(),
        "contentArn" => String.t(),
        "contentAssociationArn" => String.t(),
        "contentAssociationId" => String.t(),
        "contentId" => String.t(),
        "knowledgeBaseArn" => String.t(),
        "knowledgeBaseId" => String.t(),
        "tags" => map()
      }

  """
  @type content_association_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      external_source_configuration() :: %{
        "configuration" => list(),
        "source" => String.t()
      }

  """
  @type external_source_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_content_association_response() :: %{
        "contentAssociation" => content_association_data()
      }

  """
  @type create_content_association_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      a_iprompt_version_summary() :: %{
        "aiPromptSummary" => a_iprompt_summary(),
        "versionNumber" => float()
      }

  """
  @type a_iprompt_version_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      recommendation_data() :: %{
        "data" => data_summary(),
        "document" => document(),
        "recommendationId" => String.t(),
        "relevanceLevel" => String.t(),
        "relevanceScore" => float(),
        "type" => String.t()
      }

  """
  @type recommendation_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_contents_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_contents_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      remove_knowledge_base_template_uri_response() :: %{}

  """
  @type remove_knowledge_base_template_uri_response() :: %{}

  @typedoc """

  ## Example:

      delete_a_i_agent_version_request() :: %{}

  """
  @type delete_a_i_agent_version_request() :: %{}

  @typedoc """

  ## Example:

      delete_assistant_association_request() :: %{}

  """
  @type delete_assistant_association_request() :: %{}

  @typedoc """

  ## Example:

      get_content_summary_response() :: %{
        optional("contentSummary") => content_summary()
      }

  """
  @type get_content_summary_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      assistant_integration_configuration() :: %{
        "topicIntegrationArn" => String.t()
      }

  """
  @type assistant_integration_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      intent_detected_data_details() :: %{
        "intent" => String.t(),
        "intentId" => String.t()
      }

  """
  @type intent_detected_data_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      text_data() :: %{
        "excerpt" => document_text(),
        "title" => document_text()
      }

  """
  @type text_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_knowledge_base_response() :: %{}

  """
  @type delete_knowledge_base_response() :: %{}

  @typedoc """

  ## Example:

      create_content_response() :: %{
        optional("content") => content_data()
      }

  """
  @type create_content_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_a_iprompts_response() :: %{
        "aiPromptSummaries" => list(a_iprompt_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_a_iprompts_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_assistant_response() :: %{
        optional("assistant") => assistant_data()
      }

  """
  @type get_assistant_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_recommendations_response() :: %{
        optional("triggers") => list(recommendation_trigger()()),
        required("recommendations") => list(recommendation_data()())
      }

  """
  @type get_recommendations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      request_timeout_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type request_timeout_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_a_iprompts_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("origin") => String.t()
      }

  """
  @type list_a_iprompts_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_a_iprompt_request() :: %{
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        optional("templateConfiguration") => list(),
        required("visibilityStatus") => String.t()
      }

  """
  @type update_a_iprompt_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_feedback_response() :: %{
        "assistantArn" => String.t(),
        "assistantId" => String.t(),
        "contentFeedback" => list(),
        "targetId" => String.t(),
        "targetType" => String.t()
      }

  """
  @type put_feedback_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_import_job_request() :: %{
        optional("clientToken") => String.t(),
        optional("externalSourceConfiguration") => external_source_configuration(),
        optional("metadata") => map(),
        required("importJobType") => String.t(),
        required("uploadId") => String.t()
      }

  """
  @type start_import_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_knowledge_base_response() :: %{
        optional("knowledgeBase") => knowledge_base_data()
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
        "bedrockFoundationModelConfiguration" => bedrock_foundation_model_configuration_for_parsing(),
        "parsingStrategy" => String.t()
      }

  """
  @type parsing_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_assistant_association_response() :: %{
        optional("assistantAssociation") => assistant_association_data()
      }

  """
  @type get_assistant_association_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_quick_response_request() :: %{
        optional("channels") => list(String.t()()),
        optional("clientToken") => String.t(),
        optional("contentType") => String.t(),
        optional("description") => String.t(),
        optional("groupingConfiguration") => grouping_configuration(),
        optional("isActive") => [boolean()],
        optional("language") => String.t(),
        optional("shortcutKey") => String.t(),
        optional("tags") => map(),
        required("content") => list(),
        required("name") => String.t()
      }

  """
  @type create_quick_response_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_a_i_agent_version_response() :: %{
        "aiAgent" => a_i_agent_data(),
        "versionNumber" => float()
      }

  """
  @type create_a_i_agent_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      content_association_summary() :: %{
        "associationData" => list(),
        "associationType" => String.t(),
        "contentArn" => String.t(),
        "contentAssociationArn" => String.t(),
        "contentAssociationId" => String.t(),
        "contentId" => String.t(),
        "knowledgeBaseArn" => String.t(),
        "knowledgeBaseId" => String.t(),
        "tags" => map()
      }

  """
  @type content_association_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      connect_configuration() :: %{
        "instanceId" => String.t()
      }

  """
  @type connect_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_a_iprompt_response() :: %{}

  """
  @type delete_a_iprompt_response() :: %{}

  @typedoc """

  ## Example:

      search_content_response() :: %{
        optional("nextToken") => String.t(),
        required("contentSummaries") => list(content_summary()())
      }

  """
  @type search_content_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_session_request() :: %{}

  """
  @type get_session_request() :: %{}

  @typedoc """

  ## Example:

      delete_a_i_agent_request() :: %{}

  """
  @type delete_a_i_agent_request() :: %{}

  @typedoc """

  ## Example:

      assistant_capability_configuration() :: %{
        "type" => String.t()
      }

  """
  @type assistant_capability_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      a_i_agent_configuration_data() :: %{
        "aiAgentId" => String.t()
      }

  """
  @type a_i_agent_configuration_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_a_i_agents_response() :: %{
        "aiAgentSummaries" => list(a_i_agent_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_a_i_agents_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_quick_responses_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_quick_responses_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      generative_reference() :: %{
        "generationId" => String.t(),
        "modelId" => String.t()
      }

  """
  @type generative_reference() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_content_upload_request() :: %{
        optional("presignedUrlTimeToLive") => integer(),
        required("contentType") => String.t()
      }

  """
  @type start_content_upload_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_assistant_request() :: %{}

  """
  @type delete_assistant_request() :: %{}

  @typedoc """

  ## Example:

      list_a_iprompt_versions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("origin") => String.t()
      }

  """
  @type list_a_iprompt_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_content_associations_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_content_associations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      association_configuration() :: %{
        "associationConfigurationData" => list(),
        "associationId" => String.t(),
        "associationType" => String.t()
      }

  """
  @type association_configuration() :: %{String.t() => any()}

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

      create_session_request() :: %{
        optional("aiAgentConfiguration") => map(),
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        optional("tagFilter") => list(),
        optional("tags") => map(),
        required("name") => String.t()
      }

  """
  @type create_session_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_knowledge_base_template_uri_response() :: %{
        optional("knowledgeBase") => knowledge_base_data()
      }

  """
  @type update_knowledge_base_template_uri_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      a_iprompt_data() :: %{
        "aiPromptArn" => String.t(),
        "aiPromptId" => String.t(),
        "apiFormat" => String.t(),
        "assistantArn" => String.t(),
        "assistantId" => String.t(),
        "description" => String.t(),
        "modelId" => String.t(),
        "modifiedTime" => [non_neg_integer()],
        "name" => String.t(),
        "origin" => String.t(),
        "status" => String.t(),
        "tags" => map(),
        "templateConfiguration" => list(),
        "templateType" => String.t(),
        "type" => String.t(),
        "visibilityStatus" => String.t()
      }

  """
  @type a_iprompt_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_a_iprompt_version_response() :: %{}

  """
  @type delete_a_iprompt_version_response() :: %{}

  @typedoc """

  ## Example:

      get_a_i_agent_request() :: %{}

  """
  @type get_a_i_agent_request() :: %{}

  @typedoc """

  ## Example:

      create_knowledge_base_request() :: %{
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        optional("renderingConfiguration") => rendering_configuration(),
        optional("serverSideEncryptionConfiguration") => server_side_encryption_configuration(),
        optional("sourceConfiguration") => list(),
        optional("tags") => map(),
        optional("vectorIngestionConfiguration") => vector_ingestion_configuration(),
        required("knowledgeBaseType") => String.t(),
        required("name") => String.t()
      }

  """
  @type create_knowledge_base_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_import_jobs_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_import_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      knowledge_base_summary() :: %{
        "description" => String.t(),
        "knowledgeBaseArn" => String.t(),
        "knowledgeBaseId" => String.t(),
        "knowledgeBaseType" => String.t(),
        "name" => String.t(),
        "renderingConfiguration" => rendering_configuration(),
        "serverSideEncryptionConfiguration" => server_side_encryption_configuration(),
        "sourceConfiguration" => list(),
        "status" => String.t(),
        "tags" => map(),
        "vectorIngestionConfiguration" => vector_ingestion_configuration()
      }

  """
  @type knowledge_base_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_a_iprompt_response() :: %{
        "aiPrompt" => a_iprompt_data()
      }

  """
  @type create_a_iprompt_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_quick_responses_response() :: %{
        "nextToken" => String.t(),
        "quickResponseSummaries" => list(quick_response_summary()())
      }

  """
  @type list_quick_responses_response() :: %{String.t() => any()}

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

      create_content_association_request() :: %{
        optional("clientToken") => String.t(),
        optional("tags") => map(),
        required("association") => list(),
        required("associationType") => String.t()
      }

  """
  @type create_content_association_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => [String.t()],
        "resourceName" => [String.t()]
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      remove_assistant_a_i_agent_response() :: %{}

  """
  @type remove_assistant_a_i_agent_response() :: %{}

  @typedoc """

  ## Example:

      import_job_data() :: %{
        "createdTime" => [non_neg_integer()],
        "externalSourceConfiguration" => external_source_configuration(),
        "failedRecordReport" => String.t(),
        "importJobId" => String.t(),
        "importJobType" => String.t(),
        "knowledgeBaseArn" => String.t(),
        "knowledgeBaseId" => String.t(),
        "lastModifiedTime" => [non_neg_integer()],
        "metadata" => map(),
        "status" => String.t(),
        "uploadId" => String.t(),
        "url" => String.t(),
        "urlExpiry" => [non_neg_integer()]
      }

  """
  @type import_job_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      knowledge_base_data() :: %{
        "description" => String.t(),
        "ingestionFailureReasons" => list(String.t()()),
        "ingestionStatus" => String.t(),
        "knowledgeBaseArn" => String.t(),
        "knowledgeBaseId" => String.t(),
        "knowledgeBaseType" => String.t(),
        "lastContentModificationTime" => [non_neg_integer()],
        "name" => String.t(),
        "renderingConfiguration" => rendering_configuration(),
        "serverSideEncryptionConfiguration" => server_side_encryption_configuration(),
        "sourceConfiguration" => list(),
        "status" => String.t(),
        "tags" => map(),
        "vectorIngestionConfiguration" => vector_ingestion_configuration()
      }

  """
  @type knowledge_base_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      assistant_association_data() :: %{
        "assistantArn" => String.t(),
        "assistantAssociationArn" => String.t(),
        "assistantAssociationId" => String.t(),
        "assistantId" => String.t(),
        "associationData" => list(),
        "associationType" => String.t(),
        "tags" => map()
      }

  """
  @type assistant_association_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      document_text() :: %{
        "highlights" => list(highlight()()),
        "text" => String.t()
      }

  """
  @type document_text() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_assistant_request() :: %{}

  """
  @type get_assistant_request() :: %{}

  @typedoc """

  ## Example:

      delete_assistant_response() :: %{}

  """
  @type delete_assistant_response() :: %{}

  @typedoc """

  ## Example:

      quick_response_contents() :: %{
        "markdown" => list(),
        "plainText" => list()
      }

  """
  @type quick_response_contents() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      seed_url() :: %{
        "url" => String.t()
      }

  """
  @type seed_url() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      amazon_connect_guide_association_data() :: %{
        "flowId" => String.t()
      }

  """
  @type amazon_connect_guide_association_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_import_job_request() :: %{}

  """
  @type delete_import_job_request() :: %{}

  @typedoc """

  ## Example:

      url_configuration() :: %{
        "seedUrls" => list(seed_url()())
      }

  """
  @type url_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      assistant_data() :: %{
        "aiAgentConfiguration" => map(),
        "assistantArn" => String.t(),
        "assistantId" => String.t(),
        "capabilityConfiguration" => assistant_capability_configuration(),
        "description" => String.t(),
        "integrationConfiguration" => assistant_integration_configuration(),
        "name" => String.t(),
        "serverSideEncryptionConfiguration" => server_side_encryption_configuration(),
        "status" => String.t(),
        "tags" => map(),
        "type" => String.t()
      }

  """
  @type assistant_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      web_crawler_limits() :: %{
        "rateLimit" => [integer()]
      }

  """
  @type web_crawler_limits() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_assistant_response() :: %{
        optional("assistant") => assistant_data()
      }

  """
  @type create_assistant_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      quick_response_summary() :: %{
        "channels" => list(String.t()()),
        "contentType" => String.t(),
        "createdTime" => [non_neg_integer()],
        "description" => String.t(),
        "isActive" => [boolean()],
        "knowledgeBaseArn" => String.t(),
        "knowledgeBaseId" => String.t(),
        "lastModifiedBy" => String.t(),
        "lastModifiedTime" => [non_neg_integer()],
        "name" => String.t(),
        "quickResponseArn" => String.t(),
        "quickResponseId" => String.t(),
        "status" => String.t(),
        "tags" => map()
      }

  """
  @type quick_response_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_quick_response_response() :: %{
        "quickResponse" => quick_response_data()
      }

  """
  @type get_quick_response_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_import_job_request() :: %{}

  """
  @type get_import_job_request() :: %{}

  @typedoc """

  ## Example:

      create_assistant_request() :: %{
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        optional("serverSideEncryptionConfiguration") => server_side_encryption_configuration(),
        optional("tags") => map(),
        required("name") => String.t(),
        required("type") => String.t()
      }

  """
  @type create_assistant_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_recommendations_request() :: %{
        optional("maxResults") => integer(),
        optional("waitTimeSeconds") => integer()
      }

  """
  @type get_recommendations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      query_recommendation_trigger_data() :: %{
        "text" => String.t()
      }

  """
  @type query_recommendation_trigger_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      a_i_agent_summary() :: %{
        "aiAgentArn" => String.t(),
        "aiAgentId" => String.t(),
        "assistantArn" => String.t(),
        "assistantId" => String.t(),
        "configuration" => list(),
        "description" => String.t(),
        "modifiedTime" => [non_neg_integer()],
        "name" => String.t(),
        "origin" => String.t(),
        "status" => String.t(),
        "tags" => map(),
        "type" => String.t(),
        "visibilityStatus" => String.t()
      }

  """
  @type a_i_agent_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_session_request() :: %{
        optional("aiAgentConfiguration") => map(),
        optional("description") => String.t(),
        optional("tagFilter") => list()
      }

  """
  @type update_session_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_sessions_response() :: %{
        optional("nextToken") => String.t(),
        required("sessionSummaries") => list(session_summary()())
      }

  """
  @type search_sessions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      chunking_configuration() :: %{
        "chunkingStrategy" => String.t(),
        "fixedSizeChunkingConfiguration" => fixed_size_chunking_configuration(),
        "hierarchicalChunkingConfiguration" => hierarchical_chunking_configuration(),
        "semanticChunkingConfiguration" => semantic_chunking_configuration()
      }

  """
  @type chunking_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_a_iprompt_version_request() :: %{}

  """
  @type delete_a_iprompt_version_request() :: %{}

  @typedoc """

  ## Example:

      notify_recommendations_received_response() :: %{
        optional("errors") => list(notify_recommendations_received_error()()),
        optional("recommendationIds") => list(String.t()())
      }

  """
  @type notify_recommendations_received_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_quick_response_request() :: %{
        optional("channels") => list(String.t()()),
        optional("content") => list(),
        optional("contentType") => String.t(),
        optional("description") => String.t(),
        optional("groupingConfiguration") => grouping_configuration(),
        optional("isActive") => [boolean()],
        optional("language") => String.t(),
        optional("name") => String.t(),
        optional("removeDescription") => [boolean()],
        optional("removeGroupingConfiguration") => [boolean()],
        optional("removeShortcutKey") => [boolean()],
        optional("shortcutKey") => String.t()
      }

  """
  @type update_quick_response_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      quick_response_data() :: %{
        "channels" => list(String.t()()),
        "contentType" => String.t(),
        "contents" => quick_response_contents(),
        "createdTime" => [non_neg_integer()],
        "description" => String.t(),
        "groupingConfiguration" => grouping_configuration(),
        "isActive" => [boolean()],
        "knowledgeBaseArn" => String.t(),
        "knowledgeBaseId" => String.t(),
        "language" => String.t(),
        "lastModifiedBy" => String.t(),
        "lastModifiedTime" => [non_neg_integer()],
        "name" => String.t(),
        "quickResponseArn" => String.t(),
        "quickResponseId" => String.t(),
        "shortcutKey" => String.t(),
        "status" => String.t(),
        "tags" => map()
      }

  """
  @type quick_response_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      intent_input_data() :: %{
        "intentId" => String.t()
      }

  """
  @type intent_input_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      knowledge_base_association_data() :: %{
        "knowledgeBaseArn" => String.t(),
        "knowledgeBaseId" => String.t()
      }

  """
  @type knowledge_base_association_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        optional("tags") => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      query_condition_item() :: %{
        "comparator" => String.t(),
        "field" => String.t(),
        "value" => String.t()
      }

  """
  @type query_condition_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_a_i_agent_response() :: %{
        "aiAgent" => a_i_agent_data()
      }

  """
  @type update_a_i_agent_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      parsing_prompt() :: %{
        "parsingPromptText" => String.t()
      }

  """
  @type parsing_prompt() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_assistant_associations_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_assistant_associations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_knowledge_base_request() :: %{}

  """
  @type delete_knowledge_base_request() :: %{}

  @typedoc """

  ## Example:

      update_quick_response_response() :: %{
        "quickResponse" => quick_response_data()
      }

  """
  @type update_quick_response_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      assistant_summary() :: %{
        "aiAgentConfiguration" => map(),
        "assistantArn" => String.t(),
        "assistantId" => String.t(),
        "capabilityConfiguration" => assistant_capability_configuration(),
        "description" => String.t(),
        "integrationConfiguration" => assistant_integration_configuration(),
        "name" => String.t(),
        "serverSideEncryptionConfiguration" => server_side_encryption_configuration(),
        "status" => String.t(),
        "tags" => map(),
        "type" => String.t()
      }

  """
  @type assistant_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      generative_content_feedback_data() :: %{
        "relevance" => String.t()
      }

  """
  @type generative_content_feedback_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_expression() :: %{
        "filters" => list(filter()())
      }

  """
  @type search_expression() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      filter() :: %{
        "field" => String.t(),
        "operator" => String.t(),
        "value" => String.t()
      }

  """
  @type filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      a_i_agent_data() :: %{
        "aiAgentArn" => String.t(),
        "aiAgentId" => String.t(),
        "assistantArn" => String.t(),
        "assistantId" => String.t(),
        "configuration" => list(),
        "description" => String.t(),
        "modifiedTime" => [non_neg_integer()],
        "name" => String.t(),
        "origin" => String.t(),
        "status" => String.t(),
        "tags" => map(),
        "type" => String.t(),
        "visibilityStatus" => String.t()
      }

  """
  @type a_i_agent_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      source_content_data_details() :: %{
        "citationSpan" => citation_span(),
        "id" => String.t(),
        "rankingData" => ranking_data(),
        "textData" => text_data(),
        "type" => String.t()
      }

  """
  @type source_content_data_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      server_side_encryption_configuration() :: %{
        "kmsKeyId" => String.t()
      }

  """
  @type server_side_encryption_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      session_data() :: %{
        "aiAgentConfiguration" => map(),
        "description" => String.t(),
        "integrationConfiguration" => session_integration_configuration(),
        "name" => String.t(),
        "sessionArn" => String.t(),
        "sessionId" => String.t(),
        "tagFilter" => list(),
        "tags" => map()
      }

  """
  @type session_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_sessions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("searchExpression") => search_expression()
      }

  """
  @type search_sessions_request() :: %{String.t() => any()}

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

      web_crawler_configuration() :: %{
        "crawlerLimits" => web_crawler_limits(),
        "exclusionFilters" => list(String.t()()),
        "inclusionFilters" => list(String.t()()),
        "scope" => String.t(),
        "urlConfiguration" => url_configuration()
      }

  """
  @type web_crawler_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_import_jobs_response() :: %{
        "importJobSummaries" => list(import_job_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_import_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      bedrock_foundation_model_configuration_for_parsing() :: %{
        "modelArn" => String.t(),
        "parsingPrompt" => parsing_prompt()
      }

  """
  @type bedrock_foundation_model_configuration_for_parsing() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_content_association_response() :: %{}

  """
  @type delete_content_association_response() :: %{}

  @typedoc """

  ## Example:

      a_iprompt_summary() :: %{
        "aiPromptArn" => String.t(),
        "aiPromptId" => String.t(),
        "apiFormat" => String.t(),
        "assistantArn" => String.t(),
        "assistantId" => String.t(),
        "description" => String.t(),
        "modelId" => String.t(),
        "modifiedTime" => [non_neg_integer()],
        "name" => String.t(),
        "origin" => String.t(),
        "status" => String.t(),
        "tags" => map(),
        "templateType" => String.t(),
        "type" => String.t(),
        "visibilityStatus" => String.t()
      }

  """
  @type a_iprompt_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      remove_knowledge_base_template_uri_request() :: %{}

  """
  @type remove_knowledge_base_template_uri_request() :: %{}

  @typedoc """

  ## Example:

      generative_data_details() :: %{
        "completion" => String.t(),
        "rankingData" => ranking_data(),
        "references" => list(data_summary()())
      }

  """
  @type generative_data_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_quick_responses_response() :: %{
        "nextToken" => String.t(),
        "results" => list(quick_response_search_result_data()())
      }

  """
  @type search_quick_responses_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_a_iprompt_request() :: %{}

  """
  @type get_a_iprompt_request() :: %{}

  @typedoc """

  ## Example:

      get_a_iprompt_response() :: %{
        "aiPrompt" => a_iprompt_data(),
        "versionNumber" => float()
      }

  """
  @type get_a_iprompt_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_a_iprompt_request() :: %{
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        optional("tags") => map(),
        required("apiFormat") => String.t(),
        required("modelId") => String.t(),
        required("name") => String.t(),
        required("templateConfiguration") => list(),
        required("templateType") => String.t(),
        required("type") => String.t(),
        required("visibilityStatus") => String.t()
      }

  """
  @type create_a_iprompt_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      notify_recommendations_received_error() :: %{
        "message" => String.t(),
        "recommendationId" => String.t()
      }

  """
  @type notify_recommendations_received_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_import_job_response() :: %{
        "importJob" => import_job_data()
      }

  """
  @type get_import_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      manual_search_a_i_agent_configuration() :: %{
        "answerGenerationAIPromptId" => String.t(),
        "associationConfigurations" => list(association_configuration()())
      }

  """
  @type manual_search_a_i_agent_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_content_response() :: %{
        optional("content") => content_data()
      }

  """
  @type update_content_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_quick_response_request() :: %{}

  """
  @type get_quick_response_request() :: %{}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_assistant_association_response() :: %{
        optional("assistantAssociation") => assistant_association_data()
      }

  """
  @type create_assistant_association_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_content_request() :: %{
        optional("clientToken") => String.t(),
        optional("metadata") => map(),
        optional("overrideLinkOutUri") => String.t(),
        optional("tags") => map(),
        optional("title") => String.t(),
        required("name") => String.t(),
        required("uploadId") => String.t()
      }

  """
  @type create_content_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      import_job_summary() :: %{
        "createdTime" => [non_neg_integer()],
        "externalSourceConfiguration" => external_source_configuration(),
        "importJobId" => String.t(),
        "importJobType" => String.t(),
        "knowledgeBaseArn" => String.t(),
        "knowledgeBaseId" => String.t(),
        "lastModifiedTime" => [non_neg_integer()],
        "metadata" => map(),
        "status" => String.t(),
        "uploadId" => String.t()
      }

  """
  @type import_job_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      query_assistant_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("overrideKnowledgeBaseSearchType") => String.t(),
        optional("queryCondition") => list(list()()),
        optional("queryInputData") => list(),
        optional("queryText") => String.t(),
        optional("sessionId") => String.t()
      }

  """
  @type query_assistant_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      quick_response_search_result_data() :: %{
        "attributesInterpolated" => list(String.t()()),
        "attributesNotInterpolated" => list(String.t()()),
        "channels" => list(String.t()()),
        "contentType" => String.t(),
        "contents" => quick_response_contents(),
        "createdTime" => [non_neg_integer()],
        "description" => String.t(),
        "groupingConfiguration" => grouping_configuration(),
        "isActive" => [boolean()],
        "knowledgeBaseArn" => String.t(),
        "knowledgeBaseId" => String.t(),
        "language" => String.t(),
        "lastModifiedBy" => String.t(),
        "lastModifiedTime" => [non_neg_integer()],
        "name" => String.t(),
        "quickResponseArn" => String.t(),
        "quickResponseId" => String.t(),
        "shortcutKey" => String.t(),
        "status" => String.t(),
        "tags" => map()
      }

  """
  @type quick_response_search_result_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      rendering_configuration() :: %{
        "templateUri" => String.t()
      }

  """
  @type rendering_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_content_association_response() :: %{
        "contentAssociation" => content_association_data()
      }

  """
  @type get_content_association_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_content_request() :: %{}

  """
  @type delete_content_request() :: %{}

  @typedoc """

  ## Example:

      get_content_request() :: %{}

  """
  @type get_content_request() :: %{}

  @typedoc """

  ## Example:

      delete_quick_response_request() :: %{}

  """
  @type delete_quick_response_request() :: %{}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => [String.t()]
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

      runtime_session_data() :: %{
        "key" => String.t(),
        "value" => list()
      }

  """
  @type runtime_session_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      content_reference() :: %{
        "contentArn" => String.t(),
        "contentId" => String.t(),
        "knowledgeBaseArn" => String.t(),
        "knowledgeBaseId" => String.t(),
        "referenceType" => String.t(),
        "sourceURL" => [String.t()]
      }

  """
  @type content_reference() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      citation_span() :: %{
        "beginOffsetInclusive" => integer(),
        "endOffsetExclusive" => integer()
      }

  """
  @type citation_span() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      content_data() :: %{
        "contentArn" => String.t(),
        "contentId" => String.t(),
        "contentType" => String.t(),
        "knowledgeBaseArn" => String.t(),
        "knowledgeBaseId" => String.t(),
        "linkOutUri" => String.t(),
        "metadata" => map(),
        "name" => String.t(),
        "revisionId" => String.t(),
        "status" => String.t(),
        "tags" => map(),
        "title" => String.t(),
        "url" => String.t(),
        "urlExpiry" => [non_neg_integer()]
      }

  """
  @type content_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      content_summary() :: %{
        "contentArn" => String.t(),
        "contentId" => String.t(),
        "contentType" => String.t(),
        "knowledgeBaseArn" => String.t(),
        "knowledgeBaseId" => String.t(),
        "metadata" => map(),
        "name" => String.t(),
        "revisionId" => String.t(),
        "status" => String.t(),
        "tags" => map(),
        "title" => String.t()
      }

  """
  @type content_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_session_data_response() :: %{
        "data" => list(runtime_session_data()()),
        "namespace" => String.t(),
        "sessionArn" => String.t(),
        "sessionId" => String.t()
      }

  """
  @type update_session_data_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      knowledge_base_association_configuration_data() :: %{
        "contentTagFilter" => list(),
        "maxResults" => integer(),
        "overrideKnowledgeBaseSearchType" => String.t()
      }

  """
  @type knowledge_base_association_configuration_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      hierarchical_chunking_level_configuration() :: %{
        "maxTokens" => [integer()]
      }

  """
  @type hierarchical_chunking_level_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_content_response() :: %{
        optional("content") => content_data()
      }

  """
  @type get_content_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_a_iprompt_request() :: %{}

  """
  @type delete_a_iprompt_request() :: %{}

  @typedoc """

  ## Example:

      content_data_details() :: %{
        "rankingData" => ranking_data(),
        "textData" => text_data()
      }

  """
  @type content_data_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      recommendation_trigger() :: %{
        "data" => list(),
        "id" => String.t(),
        "recommendationIds" => list(String.t()()),
        "source" => String.t(),
        "type" => String.t()
      }

  """
  @type recommendation_trigger() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_session_response() :: %{
        "session" => session_data()
      }

  """
  @type update_session_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      notify_recommendations_received_request() :: %{
        required("recommendationIds") => list(String.t()())
      }

  """
  @type notify_recommendations_received_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_a_i_agent_response() :: %{}

  """
  @type delete_a_i_agent_response() :: %{}

  @typedoc """

  ## Example:

      list_knowledge_bases_response() :: %{
        optional("nextToken") => String.t(),
        required("knowledgeBaseSummaries") => list(knowledge_base_summary()())
      }

  """
  @type list_knowledge_bases_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_knowledge_base_response() :: %{
        optional("knowledgeBase") => knowledge_base_data()
      }

  """
  @type get_knowledge_base_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_assistant_associations_response() :: %{
        optional("nextToken") => String.t(),
        required("assistantAssociationSummaries") => list(assistant_association_summary()())
      }

  """
  @type list_assistant_associations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      result_data() :: %{
        "data" => data_summary(),
        "document" => document(),
        "relevanceScore" => float(),
        "resultId" => String.t(),
        "type" => String.t()
      }

  """
  @type result_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_a_i_agent_request() :: %{
        optional("clientToken") => String.t(),
        optional("configuration") => list(),
        optional("description") => String.t(),
        required("visibilityStatus") => String.t()
      }

  """
  @type update_a_i_agent_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_import_job_response() :: %{
        "importJob" => import_job_data()
      }

  """
  @type start_import_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_content_request() :: %{
        optional("metadata") => map(),
        optional("overrideLinkOutUri") => String.t(),
        optional("removeOverrideLinkOutUri") => [boolean()],
        optional("revisionId") => String.t(),
        optional("title") => String.t(),
        optional("uploadId") => String.t()
      }

  """
  @type update_content_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      assistant_association_summary() :: %{
        "assistantArn" => String.t(),
        "assistantAssociationArn" => String.t(),
        "assistantAssociationId" => String.t(),
        "assistantId" => String.t(),
        "associationData" => list(),
        "associationType" => String.t(),
        "tags" => map()
      }

  """
  @type assistant_association_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_content_summary_request() :: %{}

  """
  @type get_content_summary_request() :: %{}

  @typedoc """

  ## Example:

      quick_response_query_field() :: %{
        "allowFuzziness" => [boolean()],
        "name" => String.t(),
        "operator" => String.t(),
        "priority" => String.t(),
        "values" => list(String.t()())
      }

  """
  @type quick_response_query_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      text_full_a_iprompt_edit_template_configuration() :: %{
        "text" => String.t()
      }

  """
  @type text_full_a_iprompt_edit_template_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_assistant_association_request() :: %{}

  """
  @type get_assistant_association_request() :: %{}

  @typedoc """

  ## Example:

      delete_content_response() :: %{}

  """
  @type delete_content_response() :: %{}

  @typedoc """

  ## Example:

      get_knowledge_base_request() :: %{}

  """
  @type get_knowledge_base_request() :: %{}

  @typedoc """

  ## Example:

      list_a_iprompt_versions_response() :: %{
        "aiPromptVersionSummaries" => list(a_iprompt_version_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_a_iprompt_versions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      quick_response_order_field() :: %{
        "name" => String.t(),
        "order" => String.t()
      }

  """
  @type quick_response_order_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_assistants_response() :: %{
        optional("nextToken") => String.t(),
        required("assistantSummaries") => list(assistant_summary()())
      }

  """
  @type list_assistants_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_assistant_a_i_agent_request() :: %{
        required("aiAgentType") => String.t(),
        required("configuration") => a_i_agent_configuration_data()
      }

  """
  @type update_assistant_a_i_agent_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_quick_response_response() :: %{}

  """
  @type delete_quick_response_response() :: %{}

  @typedoc """

  ## Example:

      search_content_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("searchExpression") => search_expression()
      }

  """
  @type search_content_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ranking_data() :: %{
        "relevanceLevel" => String.t(),
        "relevanceScore" => float()
      }

  """
  @type ranking_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      vector_ingestion_configuration() :: %{
        "chunkingConfiguration" => chunking_configuration(),
        "parsingConfiguration" => parsing_configuration()
      }

  """
  @type vector_ingestion_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      grouping_configuration() :: %{
        "criteria" => String.t(),
        "values" => list(String.t()())
      }

  """
  @type grouping_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_assistant_association_request() :: %{
        optional("clientToken") => String.t(),
        optional("tags") => map(),
        required("association") => list(),
        required("associationType") => String.t()
      }

  """
  @type create_assistant_association_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      answer_recommendation_a_i_agent_configuration() :: %{
        "answerGenerationAIPromptId" => String.t(),
        "associationConfigurations" => list(association_configuration()()),
        "intentLabelingGenerationAIPromptId" => String.t(),
        "queryReformulationAIPromptId" => String.t()
      }

  """
  @type answer_recommendation_a_i_agent_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_session_response() :: %{
        optional("session") => session_data()
      }

  """
  @type create_session_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      precondition_failed_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type precondition_failed_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_a_iprompt_response() :: %{
        "aiPrompt" => a_iprompt_data()
      }

  """
  @type update_a_iprompt_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_content_associations_response() :: %{
        "contentAssociationSummaries" => list(content_association_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_content_associations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_a_i_agent_version_request() :: %{
        optional("clientToken") => String.t(),
        optional("modifiedTime") => [non_neg_integer()]
      }

  """
  @type create_a_i_agent_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_assistant_association_response() :: %{}

  """
  @type delete_assistant_association_response() :: %{}

  @typedoc """

  ## Example:

      document() :: %{
        "contentReference" => content_reference(),
        "excerpt" => document_text(),
        "title" => document_text()
      }

  """
  @type document() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_assistants_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_assistants_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_session_data_request() :: %{
        optional("namespace") => String.t(),
        required("data") => list(runtime_session_data()())
      }

  """
  @type update_session_data_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_content_association_request() :: %{}

  """
  @type delete_content_association_request() :: %{}

  @typedoc """

  ## Example:

      session_integration_configuration() :: %{
        "topicIntegrationArn" => String.t()
      }

  """
  @type session_integration_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_assistant_a_i_agent_response() :: %{
        "assistant" => assistant_data()
      }

  """
  @type update_assistant_a_i_agent_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_import_job_response() :: %{}

  """
  @type delete_import_job_response() :: %{}

  @typedoc """

  ## Example:

      too_many_tags_exception() :: %{
        "message" => [String.t()],
        "resourceName" => [String.t()]
      }

  """
  @type too_many_tags_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_a_iprompt_version_response() :: %{
        "aiPrompt" => a_iprompt_data(),
        "versionNumber" => float()
      }

  """
  @type create_a_iprompt_version_response() :: %{String.t() => any()}

  @type create_a_i_agent_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_a_i_agent_version_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_a_iprompt_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_a_iprompt_version_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_assistant_errors() ::
          validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_assistant_association_errors() ::
          validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_content_errors() ::
          validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_content_association_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_knowledge_base_errors() ::
          validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_quick_response_errors() ::
          validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_session_errors() ::
          validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_a_i_agent_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type delete_a_i_agent_version_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_a_iprompt_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type delete_a_iprompt_version_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_assistant_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type delete_assistant_association_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type delete_content_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type delete_content_association_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type delete_import_job_errors() ::
          validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_knowledge_base_errors() ::
          validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_quick_response_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type get_a_i_agent_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type get_a_iprompt_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type get_assistant_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type get_assistant_association_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type get_content_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type get_content_association_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type get_content_summary_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type get_import_job_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type get_knowledge_base_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type get_quick_response_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type get_recommendations_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type get_session_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type list_a_i_agent_versions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_a_i_agents_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_a_iprompt_versions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_a_iprompts_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_assistant_associations_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type list_assistants_errors() :: validation_exception() | access_denied_exception()

  @type list_content_associations_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type list_contents_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type list_import_jobs_errors() :: validation_exception() | access_denied_exception()

  @type list_knowledge_bases_errors() :: validation_exception() | access_denied_exception()

  @type list_quick_responses_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type list_tags_for_resource_errors() :: resource_not_found_exception()

  @type notify_recommendations_received_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type put_feedback_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type query_assistant_errors() ::
          validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | request_timeout_exception()

  @type remove_assistant_a_i_agent_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type remove_knowledge_base_template_uri_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type search_content_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type search_quick_responses_errors() ::
          validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | request_timeout_exception()

  @type search_sessions_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type start_content_upload_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type start_import_job_errors() ::
          validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type tag_resource_errors() :: too_many_tags_exception() | resource_not_found_exception()

  @type untag_resource_errors() :: resource_not_found_exception()

  @type update_a_i_agent_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_a_iprompt_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_assistant_a_i_agent_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type update_content_errors() ::
          precondition_failed_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type update_knowledge_base_template_uri_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type update_quick_response_errors() ::
          precondition_failed_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_session_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type update_session_data_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2020-10-19",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "wisdom",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "QConnect",
      signature_version: "v4",
      signing_name: "wisdom",
      target_prefix: nil
    }
  end

  @doc """
  Creates an Amazon Q in Connect AI Agent.
  """
  @spec create_a_i_agent(map(), String.t(), create_a_i_agent_request(), list()) ::
          {:ok, create_a_i_agent_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_a_i_agent_errors()}
  def create_a_i_agent(%Client{} = client, assistant_id, input, options \\ []) do
    url_path = "/assistants/#{AWS.Util.encode_uri(assistant_id)}/aiagents"
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
  Creates and Amazon Q in Connect AI Agent version.
  """
  @spec create_a_i_agent_version(
          map(),
          String.t(),
          String.t(),
          create_a_i_agent_version_request(),
          list()
        ) ::
          {:ok, create_a_i_agent_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_a_i_agent_version_errors()}
  def create_a_i_agent_version(
        %Client{} = client,
        ai_agent_id,
        assistant_id,
        input,
        options \\ []
      ) do
    url_path =
      "/assistants/#{AWS.Util.encode_uri(assistant_id)}/aiagents/#{AWS.Util.encode_uri(ai_agent_id)}/versions"

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
  Creates an Amazon Q in Connect AI Prompt.
  """
  @spec create_a_iprompt(map(), String.t(), create_a_iprompt_request(), list()) ::
          {:ok, create_a_iprompt_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_a_iprompt_errors()}
  def create_a_iprompt(%Client{} = client, assistant_id, input, options \\ []) do
    url_path = "/assistants/#{AWS.Util.encode_uri(assistant_id)}/aiprompts"
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
  Creates an Amazon Q in Connect AI Prompt version.
  """
  @spec create_a_iprompt_version(
          map(),
          String.t(),
          String.t(),
          create_a_iprompt_version_request(),
          list()
        ) ::
          {:ok, create_a_iprompt_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_a_iprompt_version_errors()}
  def create_a_iprompt_version(
        %Client{} = client,
        ai_prompt_id,
        assistant_id,
        input,
        options \\ []
      ) do
    url_path =
      "/assistants/#{AWS.Util.encode_uri(assistant_id)}/aiprompts/#{AWS.Util.encode_uri(ai_prompt_id)}/versions"

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
  Creates an Amazon Q in Connect assistant.
  """
  @spec create_assistant(map(), create_assistant_request(), list()) ::
          {:ok, create_assistant_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_assistant_errors()}
  def create_assistant(%Client{} = client, input, options \\ []) do
    url_path = "/assistants"
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
  Creates an association between an Amazon Q in Connect assistant and another
  resource.

  Currently, the
  only supported association is with a knowledge base. An assistant can have only
  a single
  association.
  """
  @spec create_assistant_association(
          map(),
          String.t(),
          create_assistant_association_request(),
          list()
        ) ::
          {:ok, create_assistant_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_assistant_association_errors()}
  def create_assistant_association(%Client{} = client, assistant_id, input, options \\ []) do
    url_path = "/assistants/#{AWS.Util.encode_uri(assistant_id)}/associations"
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
  Creates Amazon Q in Connect content.

  Before to calling this API, use
  [StartContentUpload](https://docs.aws.amazon.com/amazon-q-connect/latest/APIReference/API_StartContentUpload.html)
  to upload an asset.
  """
  @spec create_content(map(), String.t(), create_content_request(), list()) ::
          {:ok, create_content_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_content_errors()}
  def create_content(%Client{} = client, knowledge_base_id, input, options \\ []) do
    url_path = "/knowledgeBases/#{AWS.Util.encode_uri(knowledge_base_id)}/contents"
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
  Creates an association between a content resource in a knowledge base and
  [step-by-step guides](https://docs.aws.amazon.com/connect/latest/adminguide/step-by-step-guided-experiences.html).

  Step-by-step guides offer instructions to agents for resolving
  common customer issues. You create a content association to integrate Amazon Q
  in Connect and
  step-by-step guides.

  After you integrate Amazon Q and step-by-step guides, when Amazon Q provides a
  recommendation to an agent based on the intent that it's detected, it also
  provides them with
  the option to start the step-by-step guide that you have associated with the
  content.

  Note the following limitations:

    *
  You can create only one content association for each content resource in a
  knowledge
  base.

    *
  You can associate a step-by-step guide with multiple content resources.

  For more information, see [Integrate Amazon Q in Connect with step-by-step
  guides](https://docs.aws.amazon.com/connect/latest/adminguide/integrate-q-with-guides.html)
  in the *Amazon Connect Administrator
  Guide*.
  """
  @spec create_content_association(
          map(),
          String.t(),
          String.t(),
          create_content_association_request(),
          list()
        ) ::
          {:ok, create_content_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_content_association_errors()}
  def create_content_association(
        %Client{} = client,
        content_id,
        knowledge_base_id,
        input,
        options \\ []
      ) do
    url_path =
      "/knowledgeBases/#{AWS.Util.encode_uri(knowledge_base_id)}/contents/#{AWS.Util.encode_uri(content_id)}/associations"

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
  Creates a knowledge base.

  When using this API, you cannot reuse [Amazon AppIntegrations](https://docs.aws.amazon.com/appintegrations/latest/APIReference/Welcome.html)
  DataIntegrations with external knowledge bases such as Salesforce and
  ServiceNow. If you do,
  you'll get an `InvalidRequestException` error.

  For example, you're programmatically managing your external knowledge base, and
  you want
  to add or remove one of the fields that is being ingested from Salesforce. Do
  the
  following:

    
  Call
  [DeleteKnowledgeBase](https://docs.aws.amazon.com/amazon-q-connect/latest/APIReference/API_DeleteKnowledgeBase.html). 
    
  Call
  [DeleteDataIntegration](https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_DeleteDataIntegration.html).

    
  Call
  [CreateDataIntegration](https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html)
  to recreate the DataIntegration or a create different
  one.

    
  Call CreateKnowledgeBase.
  """
  @spec create_knowledge_base(map(), create_knowledge_base_request(), list()) ::
          {:ok, create_knowledge_base_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_knowledge_base_errors()}
  def create_knowledge_base(%Client{} = client, input, options \\ []) do
    url_path = "/knowledgeBases"
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
  Creates an Amazon Q in Connect quick response.
  """
  @spec create_quick_response(map(), String.t(), create_quick_response_request(), list()) ::
          {:ok, create_quick_response_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_quick_response_errors()}
  def create_quick_response(%Client{} = client, knowledge_base_id, input, options \\ []) do
    url_path = "/knowledgeBases/#{AWS.Util.encode_uri(knowledge_base_id)}/quickResponses"
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
  Creates a session.

  A session is a contextual container used for generating
  recommendations. Amazon Connect creates a new Amazon Q in Connect session for
  each contact on which
  Amazon Q in Connect is enabled.
  """
  @spec create_session(map(), String.t(), create_session_request(), list()) ::
          {:ok, create_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_session_errors()}
  def create_session(%Client{} = client, assistant_id, input, options \\ []) do
    url_path = "/assistants/#{AWS.Util.encode_uri(assistant_id)}/sessions"
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
  Deletes an Amazon Q in Connect AI Agent.
  """
  @spec delete_a_i_agent(map(), String.t(), String.t(), delete_a_i_agent_request(), list()) ::
          {:ok, delete_a_i_agent_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_a_i_agent_errors()}
  def delete_a_i_agent(%Client{} = client, ai_agent_id, assistant_id, input, options \\ []) do
    url_path =
      "/assistants/#{AWS.Util.encode_uri(assistant_id)}/aiagents/#{AWS.Util.encode_uri(ai_agent_id)}"

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
  Deletes an Amazon Q in Connect AI Agent Version.
  """
  @spec delete_a_i_agent_version(
          map(),
          String.t(),
          String.t(),
          String.t(),
          delete_a_i_agent_version_request(),
          list()
        ) ::
          {:ok, delete_a_i_agent_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_a_i_agent_version_errors()}
  def delete_a_i_agent_version(
        %Client{} = client,
        ai_agent_id,
        assistant_id,
        version_number,
        input,
        options \\ []
      ) do
    url_path =
      "/assistants/#{AWS.Util.encode_uri(assistant_id)}/aiagents/#{AWS.Util.encode_uri(ai_agent_id)}/versions/#{AWS.Util.encode_uri(version_number)}"

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
  Deletes an Amazon Q in Connect AI Prompt.
  """
  @spec delete_a_iprompt(map(), String.t(), String.t(), delete_a_iprompt_request(), list()) ::
          {:ok, delete_a_iprompt_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_a_iprompt_errors()}
  def delete_a_iprompt(%Client{} = client, ai_prompt_id, assistant_id, input, options \\ []) do
    url_path =
      "/assistants/#{AWS.Util.encode_uri(assistant_id)}/aiprompts/#{AWS.Util.encode_uri(ai_prompt_id)}"

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
  Delete and Amazon Q in Connect AI Prompt version.
  """
  @spec delete_a_iprompt_version(
          map(),
          String.t(),
          String.t(),
          String.t(),
          delete_a_iprompt_version_request(),
          list()
        ) ::
          {:ok, delete_a_iprompt_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_a_iprompt_version_errors()}
  def delete_a_iprompt_version(
        %Client{} = client,
        ai_prompt_id,
        assistant_id,
        version_number,
        input,
        options \\ []
      ) do
    url_path =
      "/assistants/#{AWS.Util.encode_uri(assistant_id)}/aiprompts/#{AWS.Util.encode_uri(ai_prompt_id)}/versions/#{AWS.Util.encode_uri(version_number)}"

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
  Deletes an assistant.
  """
  @spec delete_assistant(map(), String.t(), delete_assistant_request(), list()) ::
          {:ok, delete_assistant_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_assistant_errors()}
  def delete_assistant(%Client{} = client, assistant_id, input, options \\ []) do
    url_path = "/assistants/#{AWS.Util.encode_uri(assistant_id)}"
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
  Deletes an assistant association.
  """
  @spec delete_assistant_association(
          map(),
          String.t(),
          String.t(),
          delete_assistant_association_request(),
          list()
        ) ::
          {:ok, delete_assistant_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_assistant_association_errors()}
  def delete_assistant_association(
        %Client{} = client,
        assistant_association_id,
        assistant_id,
        input,
        options \\ []
      ) do
    url_path =
      "/assistants/#{AWS.Util.encode_uri(assistant_id)}/associations/#{AWS.Util.encode_uri(assistant_association_id)}"

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
  Deletes the content.
  """
  @spec delete_content(map(), String.t(), String.t(), delete_content_request(), list()) ::
          {:ok, delete_content_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_content_errors()}
  def delete_content(%Client{} = client, content_id, knowledge_base_id, input, options \\ []) do
    url_path =
      "/knowledgeBases/#{AWS.Util.encode_uri(knowledge_base_id)}/contents/#{AWS.Util.encode_uri(content_id)}"

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
  Deletes the content association.

  For more information about content associations--what they are and when they are
  used--see
  [Integrate Amazon Q in Connect with step-by-step guides](https://docs.aws.amazon.com/connect/latest/adminguide/integrate-q-with-guides.html)
  in the *Amazon Connect
  Administrator Guide*.
  """
  @spec delete_content_association(
          map(),
          String.t(),
          String.t(),
          String.t(),
          delete_content_association_request(),
          list()
        ) ::
          {:ok, delete_content_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_content_association_errors()}
  def delete_content_association(
        %Client{} = client,
        content_association_id,
        content_id,
        knowledge_base_id,
        input,
        options \\ []
      ) do
    url_path =
      "/knowledgeBases/#{AWS.Util.encode_uri(knowledge_base_id)}/contents/#{AWS.Util.encode_uri(content_id)}/associations/#{AWS.Util.encode_uri(content_association_id)}"

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
  Deletes the quick response import job.
  """
  @spec delete_import_job(map(), String.t(), String.t(), delete_import_job_request(), list()) ::
          {:ok, delete_import_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_import_job_errors()}
  def delete_import_job(
        %Client{} = client,
        import_job_id,
        knowledge_base_id,
        input,
        options \\ []
      ) do
    url_path =
      "/knowledgeBases/#{AWS.Util.encode_uri(knowledge_base_id)}/importJobs/#{AWS.Util.encode_uri(import_job_id)}"

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
  Deletes the knowledge base.

  When you use this API to delete an external knowledge base such as Salesforce or
  ServiceNow, you must also delete the [Amazon AppIntegrations](https://docs.aws.amazon.com/appintegrations/latest/APIReference/Welcome.html)
  DataIntegration. This is because you can't reuse the DataIntegration after it's
  been
  associated with an external knowledge base. However, you can delete and recreate
  it. See
  [DeleteDataIntegration](https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_DeleteDataIntegration.html) and
  [CreateDataIntegration](https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html)
  in the *Amazon AppIntegrations API
  Reference*.
  """
  @spec delete_knowledge_base(map(), String.t(), delete_knowledge_base_request(), list()) ::
          {:ok, delete_knowledge_base_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_knowledge_base_errors()}
  def delete_knowledge_base(%Client{} = client, knowledge_base_id, input, options \\ []) do
    url_path = "/knowledgeBases/#{AWS.Util.encode_uri(knowledge_base_id)}"
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
  Deletes a quick response.
  """
  @spec delete_quick_response(
          map(),
          String.t(),
          String.t(),
          delete_quick_response_request(),
          list()
        ) ::
          {:ok, delete_quick_response_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_quick_response_errors()}
  def delete_quick_response(
        %Client{} = client,
        knowledge_base_id,
        quick_response_id,
        input,
        options \\ []
      ) do
    url_path =
      "/knowledgeBases/#{AWS.Util.encode_uri(knowledge_base_id)}/quickResponses/#{AWS.Util.encode_uri(quick_response_id)}"

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
  Gets an Amazon Q in Connect AI Agent.
  """
  @spec get_a_i_agent(map(), String.t(), String.t(), list()) ::
          {:ok, get_a_i_agent_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_a_i_agent_errors()}
  def get_a_i_agent(%Client{} = client, ai_agent_id, assistant_id, options \\ []) do
    url_path =
      "/assistants/#{AWS.Util.encode_uri(assistant_id)}/aiagents/#{AWS.Util.encode_uri(ai_agent_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets and Amazon Q in Connect AI Prompt.
  """
  @spec get_a_iprompt(map(), String.t(), String.t(), list()) ::
          {:ok, get_a_iprompt_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_a_iprompt_errors()}
  def get_a_iprompt(%Client{} = client, ai_prompt_id, assistant_id, options \\ []) do
    url_path =
      "/assistants/#{AWS.Util.encode_uri(assistant_id)}/aiprompts/#{AWS.Util.encode_uri(ai_prompt_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about an assistant.
  """
  @spec get_assistant(map(), String.t(), list()) ::
          {:ok, get_assistant_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_assistant_errors()}
  def get_assistant(%Client{} = client, assistant_id, options \\ []) do
    url_path = "/assistants/#{AWS.Util.encode_uri(assistant_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about an assistant association.
  """
  @spec get_assistant_association(map(), String.t(), String.t(), list()) ::
          {:ok, get_assistant_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_assistant_association_errors()}
  def get_assistant_association(
        %Client{} = client,
        assistant_association_id,
        assistant_id,
        options \\ []
      ) do
    url_path =
      "/assistants/#{AWS.Util.encode_uri(assistant_id)}/associations/#{AWS.Util.encode_uri(assistant_association_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves content, including a pre-signed URL to download the content.
  """
  @spec get_content(map(), String.t(), String.t(), list()) ::
          {:ok, get_content_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_content_errors()}
  def get_content(%Client{} = client, content_id, knowledge_base_id, options \\ []) do
    url_path =
      "/knowledgeBases/#{AWS.Util.encode_uri(knowledge_base_id)}/contents/#{AWS.Util.encode_uri(content_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the content association.

  For more information about content associations--what they are and when they are
  used--see
  [Integrate Amazon Q in Connect with step-by-step guides](https://docs.aws.amazon.com/connect/latest/adminguide/integrate-q-with-guides.html)
  in the *Amazon Connect
  Administrator Guide*.
  """
  @spec get_content_association(map(), String.t(), String.t(), String.t(), list()) ::
          {:ok, get_content_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_content_association_errors()}
  def get_content_association(
        %Client{} = client,
        content_association_id,
        content_id,
        knowledge_base_id,
        options \\ []
      ) do
    url_path =
      "/knowledgeBases/#{AWS.Util.encode_uri(knowledge_base_id)}/contents/#{AWS.Util.encode_uri(content_id)}/associations/#{AWS.Util.encode_uri(content_association_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves summary information about the content.
  """
  @spec get_content_summary(map(), String.t(), String.t(), list()) ::
          {:ok, get_content_summary_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_content_summary_errors()}
  def get_content_summary(%Client{} = client, content_id, knowledge_base_id, options \\ []) do
    url_path =
      "/knowledgeBases/#{AWS.Util.encode_uri(knowledge_base_id)}/contents/#{AWS.Util.encode_uri(content_id)}/summary"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the started import job.
  """
  @spec get_import_job(map(), String.t(), String.t(), list()) ::
          {:ok, get_import_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_import_job_errors()}
  def get_import_job(%Client{} = client, import_job_id, knowledge_base_id, options \\ []) do
    url_path =
      "/knowledgeBases/#{AWS.Util.encode_uri(knowledge_base_id)}/importJobs/#{AWS.Util.encode_uri(import_job_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the knowledge base.
  """
  @spec get_knowledge_base(map(), String.t(), list()) ::
          {:ok, get_knowledge_base_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_knowledge_base_errors()}
  def get_knowledge_base(%Client{} = client, knowledge_base_id, options \\ []) do
    url_path = "/knowledgeBases/#{AWS.Util.encode_uri(knowledge_base_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the quick response.
  """
  @spec get_quick_response(map(), String.t(), String.t(), list()) ::
          {:ok, get_quick_response_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_quick_response_errors()}
  def get_quick_response(%Client{} = client, knowledge_base_id, quick_response_id, options \\ []) do
    url_path =
      "/knowledgeBases/#{AWS.Util.encode_uri(knowledge_base_id)}/quickResponses/#{AWS.Util.encode_uri(quick_response_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  This API will be discontinued starting June 1, 2024.

  To receive generative responses
  after March 1, 2024, you will need to create a new Assistant in the Amazon
  Connect
  console and integrate the Amazon Q in Connect JavaScript library
  (amazon-q-connectjs) into
  your applications.

  Retrieves recommendations for the specified session. To avoid retrieving the
  same
  recommendations in subsequent calls, use
  [NotifyRecommendationsReceived](https://docs.aws.amazon.com/amazon-q-connect/latest/APIReference/API_NotifyRecommendationsReceived.html). This API supports long-polling behavior with the
  `waitTimeSeconds` parameter. Short poll is the default behavior and only returns
  recommendations already available. To perform a manual query against an
  assistant, use
  [QueryAssistant](https://docs.aws.amazon.com/amazon-q-connect/latest/APIReference/API_QueryAssistant.html).
  """
  @spec get_recommendations(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, get_recommendations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_recommendations_errors()}
  def get_recommendations(
        %Client{} = client,
        assistant_id,
        session_id,
        max_results \\ nil,
        wait_time_seconds \\ nil,
        options \\ []
      ) do
    url_path =
      "/assistants/#{AWS.Util.encode_uri(assistant_id)}/sessions/#{AWS.Util.encode_uri(session_id)}/recommendations"

    headers = []
    query_params = []

    query_params =
      if !is_nil(wait_time_seconds) do
        [{"waitTimeSeconds", wait_time_seconds} | query_params]
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
  Retrieves information for a specified session.
  """
  @spec get_session(map(), String.t(), String.t(), list()) ::
          {:ok, get_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_session_errors()}
  def get_session(%Client{} = client, assistant_id, session_id, options \\ []) do
    url_path =
      "/assistants/#{AWS.Util.encode_uri(assistant_id)}/sessions/#{AWS.Util.encode_uri(session_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List AI Agent versions.
  """
  @spec list_a_i_agent_versions(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_a_i_agent_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_a_i_agent_versions_errors()}
  def list_a_i_agent_versions(
        %Client{} = client,
        ai_agent_id,
        assistant_id,
        max_results \\ nil,
        next_token \\ nil,
        origin \\ nil,
        options \\ []
      ) do
    url_path =
      "/assistants/#{AWS.Util.encode_uri(assistant_id)}/aiagents/#{AWS.Util.encode_uri(ai_agent_id)}/versions"

    headers = []
    query_params = []

    query_params =
      if !is_nil(origin) do
        [{"origin", origin} | query_params]
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
  Lists AI Agents.
  """
  @spec list_a_i_agents(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_a_i_agents_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_a_i_agents_errors()}
  def list_a_i_agents(
        %Client{} = client,
        assistant_id,
        max_results \\ nil,
        next_token \\ nil,
        origin \\ nil,
        options \\ []
      ) do
    url_path = "/assistants/#{AWS.Util.encode_uri(assistant_id)}/aiagents"
    headers = []
    query_params = []

    query_params =
      if !is_nil(origin) do
        [{"origin", origin} | query_params]
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
  Lists AI Prompt versions.
  """
  @spec list_a_iprompt_versions(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_a_iprompt_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_a_iprompt_versions_errors()}
  def list_a_iprompt_versions(
        %Client{} = client,
        ai_prompt_id,
        assistant_id,
        max_results \\ nil,
        next_token \\ nil,
        origin \\ nil,
        options \\ []
      ) do
    url_path =
      "/assistants/#{AWS.Util.encode_uri(assistant_id)}/aiprompts/#{AWS.Util.encode_uri(ai_prompt_id)}/versions"

    headers = []
    query_params = []

    query_params =
      if !is_nil(origin) do
        [{"origin", origin} | query_params]
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
  Lists the AI Prompts available on the Amazon Q in Connect assistant.
  """
  @spec list_a_iprompts(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_a_iprompts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_a_iprompts_errors()}
  def list_a_iprompts(
        %Client{} = client,
        assistant_id,
        max_results \\ nil,
        next_token \\ nil,
        origin \\ nil,
        options \\ []
      ) do
    url_path = "/assistants/#{AWS.Util.encode_uri(assistant_id)}/aiprompts"
    headers = []
    query_params = []

    query_params =
      if !is_nil(origin) do
        [{"origin", origin} | query_params]
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
  Lists information about assistant associations.
  """
  @spec list_assistant_associations(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_assistant_associations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_assistant_associations_errors()}
  def list_assistant_associations(
        %Client{} = client,
        assistant_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/assistants/#{AWS.Util.encode_uri(assistant_id)}/associations"
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
  Lists information about assistants.
  """
  @spec list_assistants(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_assistants_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_assistants_errors()}
  def list_assistants(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/assistants"
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
  Lists the content associations.

  For more information about content associations--what they are and when they are
  used--see
  [Integrate Amazon Q in Connect with step-by-step guides](https://docs.aws.amazon.com/connect/latest/adminguide/integrate-q-with-guides.html)
  in the *Amazon Connect
  Administrator Guide*.
  """
  @spec list_content_associations(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_content_associations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_content_associations_errors()}
  def list_content_associations(
        %Client{} = client,
        content_id,
        knowledge_base_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/knowledgeBases/#{AWS.Util.encode_uri(knowledge_base_id)}/contents/#{AWS.Util.encode_uri(content_id)}/associations"

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
  Lists the content.
  """
  @spec list_contents(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_contents_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_contents_errors()}
  def list_contents(
        %Client{} = client,
        knowledge_base_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/knowledgeBases/#{AWS.Util.encode_uri(knowledge_base_id)}/contents"
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
  Lists information about import jobs.
  """
  @spec list_import_jobs(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_import_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_import_jobs_errors()}
  def list_import_jobs(
        %Client{} = client,
        knowledge_base_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/knowledgeBases/#{AWS.Util.encode_uri(knowledge_base_id)}/importJobs"
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
  Lists the knowledge bases.
  """
  @spec list_knowledge_bases(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_knowledge_bases_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_knowledge_bases_errors()}
  def list_knowledge_bases(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/knowledgeBases"
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
  Lists information about quick response.
  """
  @spec list_quick_responses(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_quick_responses_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_quick_responses_errors()}
  def list_quick_responses(
        %Client{} = client,
        knowledge_base_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/knowledgeBases/#{AWS.Util.encode_uri(knowledge_base_id)}/quickResponses"
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
  Lists the tags for the specified resource.
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
  Removes the specified recommendations from the specified assistant's queue of
  newly
  available recommendations.

  You can use this API in conjunction with
  [GetRecommendations](https://docs.aws.amazon.com/amazon-q-connect/latest/APIReference/API_GetRecommendations.html)
  and a `waitTimeSeconds` input for long-polling
  behavior and avoiding duplicate recommendations.
  """
  @spec notify_recommendations_received(
          map(),
          String.t(),
          String.t(),
          notify_recommendations_received_request(),
          list()
        ) ::
          {:ok, notify_recommendations_received_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, notify_recommendations_received_errors()}
  def notify_recommendations_received(
        %Client{} = client,
        assistant_id,
        session_id,
        input,
        options \\ []
      ) do
    url_path =
      "/assistants/#{AWS.Util.encode_uri(assistant_id)}/sessions/#{AWS.Util.encode_uri(session_id)}/recommendations/notify"

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
  Provides feedback against the specified assistant for the specified target.

  This API only
  supports generative targets.
  """
  @spec put_feedback(map(), String.t(), put_feedback_request(), list()) ::
          {:ok, put_feedback_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_feedback_errors()}
  def put_feedback(%Client{} = client, assistant_id, input, options \\ []) do
    url_path = "/assistants/#{AWS.Util.encode_uri(assistant_id)}/feedback"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """

  This API will be discontinued starting June 1, 2024.

  To receive generative responses
  after March 1, 2024, you will need to create a new Assistant in the Amazon
  Connect
  console and integrate the Amazon Q in Connect JavaScript library
  (amazon-q-connectjs) into
  your applications.

  Performs a manual search against the specified assistant. To retrieve
  recommendations for
  an assistant, use
  [GetRecommendations](https://docs.aws.amazon.com/amazon-q-connect/latest/APIReference/API_GetRecommendations.html).
  """
  @spec query_assistant(map(), String.t(), query_assistant_request(), list()) ::
          {:ok, query_assistant_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, query_assistant_errors()}
  def query_assistant(%Client{} = client, assistant_id, input, options \\ []) do
    url_path = "/assistants/#{AWS.Util.encode_uri(assistant_id)}/query"
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
  Removes the AI Agent that is set for use by defafult on an Amazon Q in Connect
  Assistant.
  """
  @spec remove_assistant_a_i_agent(
          map(),
          String.t(),
          remove_assistant_a_i_agent_request(),
          list()
        ) ::
          {:ok, remove_assistant_a_i_agent_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, remove_assistant_a_i_agent_errors()}
  def remove_assistant_a_i_agent(%Client{} = client, assistant_id, input, options \\ []) do
    url_path = "/assistants/#{AWS.Util.encode_uri(assistant_id)}/aiagentConfiguration"
    headers = []

    {query_params, input} =
      [
        {"aiAgentType", "aiAgentType"}
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
  Removes a URI template from a knowledge base.
  """
  @spec remove_knowledge_base_template_uri(
          map(),
          String.t(),
          remove_knowledge_base_template_uri_request(),
          list()
        ) ::
          {:ok, remove_knowledge_base_template_uri_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, remove_knowledge_base_template_uri_errors()}
  def remove_knowledge_base_template_uri(
        %Client{} = client,
        knowledge_base_id,
        input,
        options \\ []
      ) do
    url_path = "/knowledgeBases/#{AWS.Util.encode_uri(knowledge_base_id)}/templateUri"
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
  Searches for content in a specified knowledge base.

  Can be used to get a specific content
  resource by its name.
  """
  @spec search_content(map(), String.t(), search_content_request(), list()) ::
          {:ok, search_content_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_content_errors()}
  def search_content(%Client{} = client, knowledge_base_id, input, options \\ []) do
    url_path = "/knowledgeBases/#{AWS.Util.encode_uri(knowledge_base_id)}/search"
    headers = []

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
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Searches existing Amazon Q in Connect quick responses in an Amazon Q in Connect
  knowledge base.
  """
  @spec search_quick_responses(map(), String.t(), search_quick_responses_request(), list()) ::
          {:ok, search_quick_responses_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_quick_responses_errors()}
  def search_quick_responses(%Client{} = client, knowledge_base_id, input, options \\ []) do
    url_path = "/knowledgeBases/#{AWS.Util.encode_uri(knowledge_base_id)}/search/quickResponses"
    headers = []

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
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Searches for sessions.
  """
  @spec search_sessions(map(), String.t(), search_sessions_request(), list()) ::
          {:ok, search_sessions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_sessions_errors()}
  def search_sessions(%Client{} = client, assistant_id, input, options \\ []) do
    url_path = "/assistants/#{AWS.Util.encode_uri(assistant_id)}/searchSessions"
    headers = []

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
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Get a URL to upload content to a knowledge base.

  To upload content, first make a PUT
  request to the returned URL with your file, making sure to include the required
  headers. Then
  use
  [CreateContent](https://docs.aws.amazon.com/amazon-q-connect/latest/APIReference/API_CreateContent.html) to
  finalize the content creation process or
  [UpdateContent](https://docs.aws.amazon.com/amazon-q-connect/latest/APIReference/API_UpdateContent.html)
  to
  modify an existing resource. You can only upload content to a knowledge base of
  type
  CUSTOM.
  """
  @spec start_content_upload(map(), String.t(), start_content_upload_request(), list()) ::
          {:ok, start_content_upload_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_content_upload_errors()}
  def start_content_upload(%Client{} = client, knowledge_base_id, input, options \\ []) do
    url_path = "/knowledgeBases/#{AWS.Util.encode_uri(knowledge_base_id)}/upload"
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
  Start an asynchronous job to import Amazon Q in Connect resources from an
  uploaded source file.

  Before calling this API, use
  [StartContentUpload](https://docs.aws.amazon.com/wisdom/latest/APIReference/API_StartContentUpload.html) to
  upload an asset that contains the resource data.

    *
  For importing Amazon Q in Connect quick responses, you need to upload a csv file
  including the
  quick responses. For information about how to format the csv file for importing
  quick
  responses, see [Import quick
  responses](https://docs.aws.amazon.com/console/connect/quick-responses/add-data).
  """
  @spec start_import_job(map(), String.t(), start_import_job_request(), list()) ::
          {:ok, start_import_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_import_job_errors()}
  def start_import_job(%Client{} = client, knowledge_base_id, input, options \\ []) do
    url_path = "/knowledgeBases/#{AWS.Util.encode_uri(knowledge_base_id)}/importJobs"
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
  Adds the specified tags to the specified resource.
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
  Removes the specified tags from the specified resource.
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
  Updates an AI Agent.
  """
  @spec update_a_i_agent(map(), String.t(), String.t(), update_a_i_agent_request(), list()) ::
          {:ok, update_a_i_agent_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_a_i_agent_errors()}
  def update_a_i_agent(%Client{} = client, ai_agent_id, assistant_id, input, options \\ []) do
    url_path =
      "/assistants/#{AWS.Util.encode_uri(assistant_id)}/aiagents/#{AWS.Util.encode_uri(ai_agent_id)}"

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
  Updates an AI Prompt.
  """
  @spec update_a_iprompt(map(), String.t(), String.t(), update_a_iprompt_request(), list()) ::
          {:ok, update_a_iprompt_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_a_iprompt_errors()}
  def update_a_iprompt(%Client{} = client, ai_prompt_id, assistant_id, input, options \\ []) do
    url_path =
      "/assistants/#{AWS.Util.encode_uri(assistant_id)}/aiprompts/#{AWS.Util.encode_uri(ai_prompt_id)}"

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
  Updates the AI Agent that is set for use by defafult on an Amazon Q in Connect
  Assistant.
  """
  @spec update_assistant_a_i_agent(
          map(),
          String.t(),
          update_assistant_a_i_agent_request(),
          list()
        ) ::
          {:ok, update_assistant_a_i_agent_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_assistant_a_i_agent_errors()}
  def update_assistant_a_i_agent(%Client{} = client, assistant_id, input, options \\ []) do
    url_path = "/assistants/#{AWS.Util.encode_uri(assistant_id)}/aiagentConfiguration"
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
  Updates information about the content.
  """
  @spec update_content(map(), String.t(), String.t(), update_content_request(), list()) ::
          {:ok, update_content_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_content_errors()}
  def update_content(%Client{} = client, content_id, knowledge_base_id, input, options \\ []) do
    url_path =
      "/knowledgeBases/#{AWS.Util.encode_uri(knowledge_base_id)}/contents/#{AWS.Util.encode_uri(content_id)}"

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
  Updates the template URI of a knowledge base.

  This is only supported for knowledge bases
  of type EXTERNAL. Include a single variable in `${variable}` format; this
  interpolated by Amazon Q in Connect using ingested content. For example, if you
  ingest a Salesforce
  article, it has an `Id` value, and you can set the template URI to
  `https://myInstanceName.lightning.force.com/lightning/r/Knowledge__kav/*${Id}*/view`.
  """
  @spec update_knowledge_base_template_uri(
          map(),
          String.t(),
          update_knowledge_base_template_uri_request(),
          list()
        ) ::
          {:ok, update_knowledge_base_template_uri_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_knowledge_base_template_uri_errors()}
  def update_knowledge_base_template_uri(
        %Client{} = client,
        knowledge_base_id,
        input,
        options \\ []
      ) do
    url_path = "/knowledgeBases/#{AWS.Util.encode_uri(knowledge_base_id)}/templateUri"
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
  Updates an existing Amazon Q in Connect quick response.
  """
  @spec update_quick_response(
          map(),
          String.t(),
          String.t(),
          update_quick_response_request(),
          list()
        ) ::
          {:ok, update_quick_response_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_quick_response_errors()}
  def update_quick_response(
        %Client{} = client,
        knowledge_base_id,
        quick_response_id,
        input,
        options \\ []
      ) do
    url_path =
      "/knowledgeBases/#{AWS.Util.encode_uri(knowledge_base_id)}/quickResponses/#{AWS.Util.encode_uri(quick_response_id)}"

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
  Updates a session.

  A session is a contextual container used for generating
  recommendations. Amazon Connect updates the existing Amazon Q in Connect session
  for each contact on
  which Amazon Q in Connect is enabled.
  """
  @spec update_session(map(), String.t(), String.t(), update_session_request(), list()) ::
          {:ok, update_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_session_errors()}
  def update_session(%Client{} = client, assistant_id, session_id, input, options \\ []) do
    url_path =
      "/assistants/#{AWS.Util.encode_uri(assistant_id)}/sessions/#{AWS.Util.encode_uri(session_id)}"

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
  Updates the data stored on an Amazon Q in Connect Session.
  """
  @spec update_session_data(map(), String.t(), String.t(), update_session_data_request(), list()) ::
          {:ok, update_session_data_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_session_data_errors()}
  def update_session_data(%Client{} = client, assistant_id, session_id, input, options \\ []) do
    url_path =
      "/assistants/#{AWS.Util.encode_uri(assistant_id)}/sessions/#{AWS.Util.encode_uri(session_id)}/data"

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
