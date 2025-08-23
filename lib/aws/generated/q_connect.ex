# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.QConnect do
  @moduledoc """
    * [Amazon Q actions](https://docs.aws.amazon.com/connect/latest/APIReference/API_Operations_Amazon_Q_Connect.html)

    * [Amazon Q data types](https://docs.aws.amazon.com/connect/latest/APIReference/API_Types_Amazon_Q_Connect.html)

  **Powered by Amazon Bedrock**: Amazon Web Services implements [automated abuse detection](https://docs.aws.amazon.com/bedrock/latest/userguide/abuse-detection.html).

  Because Amazon Q in Connect is built on Amazon Bedrock, users can take full
  advantage of the controls implemented in Amazon Bedrock to enforce safety,
  security, and the responsible use of artificial intelligence (AI).

  Amazon Q in Connect is a generative AI customer service assistant. It is an
  LLM-enhanced evolution of Amazon Connect Wisdom that delivers real-time
  recommendations to help contact center agents resolve customer issues quickly
  and accurately.

  Amazon Q in Connect automatically detects customer intent during calls and chats
  using conversational analytics and natural language understanding (NLU). It then
  provides agents with immediate, real-time generative responses and suggested
  actions, and links to relevant documents and articles. Agents can also query
  Amazon Q in Connect directly using natural language or keywords to answer
  customer requests.

  Use the Amazon Q in Connect APIs to create an assistant and a knowledge base,
  for example, or manage content by uploading custom files.

  For more information, see [Use Amazon Q in Connect for generative AI powered agent assistance in
  real-time](https://docs.aws.amazon.com/connect/latest/adminguide/amazon-q-connect.html)
  in the *Amazon Connect Administrator Guide*.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      start_content_upload_response() :: %{
        required("headersToInclude") => map(),
        required("uploadId") => String.t() | atom(),
        required("url") => String.t() | atom(),
        required("urlExpiry") => [non_neg_integer()]
      }

  """
  @type start_content_upload_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_message_template_versions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_message_template_versions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_a_i_guardrail_request() :: %{}

  """
  @type get_a_i_guardrail_request() :: %{}

  @typedoc """

  ## Example:

      update_knowledge_base_template_uri_request() :: %{
        required("templateUri") => String.t() | atom()
      }

  """
  @type update_knowledge_base_template_uri_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_feedback_request() :: %{
        required("contentFeedback") => list(),
        required("targetId") => String.t() | atom(),
        required("targetType") => String.t() | atom()
      }

  """
  @type put_feedback_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_a_i_agent_version_response() :: %{}

  """
  @type delete_a_i_agent_version_response() :: %{}

  @typedoc """

  ## Example:

      query_assistant_response() :: %{
        optional("nextToken") => String.t() | atom(),
        required("results") => list(result_data())
      }

  """
  @type query_assistant_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      message_configuration() :: %{
        "generateFillerMessage" => [boolean()]
      }

  """
  @type message_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_a_i_agents_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("origin") => String.t() | atom()
      }

  """
  @type list_a_i_agents_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      message_template_order_field() :: %{
        "name" => String.t() | atom(),
        "order" => String.t() | atom()
      }

  """
  @type message_template_order_field() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_message_template_attachment_response() :: %{}

  """
  @type delete_message_template_attachment_response() :: %{}

  @typedoc """

  ## Example:

      session_summary() :: %{
        "assistantArn" => String.t() | atom(),
        "assistantId" => String.t() | atom(),
        "sessionArn" => String.t() | atom(),
        "sessionId" => String.t() | atom()
      }

  """
  @type session_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_quick_response_response() :: %{
        "quickResponse" => quick_response_data()
      }

  """
  @type create_quick_response_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      a_i_agent_version_summary() :: %{
        "aiAgentSummary" => a_i_agent_summary(),
        "versionNumber" => float()
      }

  """
  @type a_i_agent_version_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_session_response() :: %{
        optional("session") => session_data()
      }

  """
  @type get_session_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_a_i_agent_versions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("origin") => String.t() | atom()
      }

  """
  @type list_a_i_agent_versions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      unauthorized_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type unauthorized_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_a_i_guardrail_version_response() :: %{}

  """
  @type delete_a_i_guardrail_version_response() :: %{}

  @typedoc """

  ## Example:

      remove_assistant_a_i_agent_request() :: %{
        required("aiAgentType") => String.t() | atom()
      }

  """
  @type remove_assistant_a_i_agent_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      data_summary() :: %{
        "details" => list(),
        "reference" => list()
      }

  """
  @type data_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_quick_responses_request() :: %{
        optional("attributes") => map(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        required("searchExpression") => quick_response_search_expression()
      }

  """
  @type search_quick_responses_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      quick_response_search_expression() :: %{
        "filters" => list(quick_response_filter_field()),
        "orderOnField" => quick_response_order_field(),
        "queries" => list(quick_response_query_field())
      }

  """
  @type quick_response_search_expression() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_content_association_request() :: %{}

  """
  @type get_content_association_request() :: %{}

  @typedoc """

  ## Example:

      deactivate_message_template_response() :: %{
        "messageTemplateArn" => String.t() | atom(),
        "messageTemplateId" => String.t() | atom(),
        "versionNumber" => float()
      }

  """
  @type deactivate_message_template_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      fixed_size_chunking_configuration() :: %{
        "maxTokens" => [integer()],
        "overlapPercentage" => [integer()]
      }

  """
  @type fixed_size_chunking_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      highlight() :: %{
        "beginOffsetInclusive" => integer(),
        "endOffsetExclusive" => integer()
      }

  """
  @type highlight() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      guardrail_topic_config() :: %{
        "definition" => String.t() | atom(),
        "examples" => list(String.t() | atom()),
        "name" => String.t() | atom(),
        "type" => String.t() | atom()
      }

  """
  @type guardrail_topic_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      app_integrations_configuration() :: %{
        "appIntegrationArn" => String.t() | atom(),
        "objectFields" => list(String.t() | atom())
      }

  """
  @type app_integrations_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_a_i_agent_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("tags") => map(),
        required("configuration") => list(),
        required("name") => String.t() | atom(),
        required("type") => String.t() | atom(),
        required("visibilityStatus") => String.t() | atom()
      }

  """
  @type create_a_i_agent_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_a_i_agent_versions_response() :: %{
        "aiAgentVersionSummaries" => list(a_i_agent_version_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_a_i_agent_versions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_a_i_agent_response() :: %{
        "aiAgent" => a_i_agent_data()
      }

  """
  @type create_a_i_agent_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_a_iprompt_version_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("modifiedTime") => [non_neg_integer()]
      }

  """
  @type create_a_iprompt_version_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_a_i_agent_response() :: %{
        "aiAgent" => a_i_agent_data(),
        "versionNumber" => float()
      }

  """
  @type get_a_i_agent_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_contents_response() :: %{
        optional("nextToken") => String.t() | atom(),
        required("contentSummaries") => list(content_summary())
      }

  """
  @type list_contents_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      query_text_input_data() :: %{
        "text" => String.t() | atom()
      }

  """
  @type query_text_input_data() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      quick_response_filter_field() :: %{
        "includeNoExistence" => [boolean()],
        "name" => String.t() | atom(),
        "operator" => String.t() | atom(),
        "values" => list(String.t() | atom())
      }

  """
  @type quick_response_filter_field() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_messages_response() :: %{
        "messages" => list(message_output()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_messages_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      guardrail_contextual_grounding_filter_config() :: %{
        "threshold" => float(),
        "type" => String.t() | atom()
      }

  """
  @type guardrail_contextual_grounding_filter_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_condition() :: %{
        "key" => String.t() | atom(),
        "value" => String.t() | atom()
      }

  """
  @type tag_condition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_next_message_response() :: %{
        "conversationSessionData" => list(runtime_session_data()),
        "conversationState" => conversation_state(),
        "nextMessageToken" => String.t() | atom(),
        "requestMessageId" => String.t() | atom(),
        "response" => message_output(),
        "type" => String.t() | atom()
      }

  """
  @type get_next_message_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      content_association_data() :: %{
        "associationData" => list(),
        "associationType" => String.t() | atom(),
        "contentArn" => String.t() | atom(),
        "contentAssociationArn" => String.t() | atom(),
        "contentAssociationId" => String.t() | atom(),
        "contentId" => String.t() | atom(),
        "knowledgeBaseArn" => String.t() | atom(),
        "knowledgeBaseId" => String.t() | atom(),
        "tags" => map()
      }

  """
  @type content_association_data() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_a_i_guardrail_versions_response() :: %{
        "aiGuardrailVersionSummaries" => list(a_i_guardrail_version_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_a_i_guardrail_versions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      activate_message_template_request() :: %{
        required("versionNumber") => float()
      }

  """
  @type activate_message_template_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      external_source_configuration() :: %{
        "configuration" => list(),
        "source" => String.t() | atom()
      }

  """
  @type external_source_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      agent_attributes() :: %{
        "firstName" => String.t() | atom(),
        "lastName" => String.t() | atom()
      }

  """
  @type agent_attributes() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_content_association_response() :: %{
        "contentAssociation" => content_association_data()
      }

  """
  @type create_content_association_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      a_iprompt_version_summary() :: %{
        "aiPromptSummary" => a_iprompt_summary(),
        "versionNumber" => float()
      }

  """
  @type a_iprompt_version_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      recommendation_data() :: %{
        "data" => data_summary(),
        "document" => document(),
        "recommendationId" => String.t() | atom(),
        "relevanceLevel" => String.t() | atom(),
        "relevanceScore" => float(),
        "type" => String.t() | atom()
      }

  """
  @type recommendation_data() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_contents_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_contents_request() :: %{(String.t() | atom()) => any()}

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

      conversation_state() :: %{
        "reason" => String.t() | atom(),
        "status" => String.t() | atom()
      }

  """
  @type conversation_state() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_content_summary_response() :: %{
        optional("contentSummary") => content_summary()
      }

  """
  @type get_content_summary_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      assistant_integration_configuration() :: %{
        "topicIntegrationArn" => String.t() | atom()
      }

  """
  @type assistant_integration_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      intent_detected_data_details() :: %{
        "intent" => String.t() | atom(),
        "intentId" => String.t() | atom()
      }

  """
  @type intent_detected_data_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      text_data() :: %{
        "excerpt" => document_text(),
        "title" => document_text()
      }

  """
  @type text_data() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_knowledge_base_response() :: %{}

  """
  @type delete_knowledge_base_response() :: %{}

  @typedoc """

  ## Example:

      generative_chunk_data_details() :: %{
        "completion" => String.t() | atom(),
        "nextChunkToken" => String.t() | atom(),
        "references" => list(data_summary())
      }

  """
  @type generative_chunk_data_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_content_response() :: %{
        optional("content") => content_data()
      }

  """
  @type create_content_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_a_iprompts_response() :: %{
        "aiPromptSummaries" => list(a_iprompt_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_a_iprompts_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_assistant_response() :: %{
        optional("assistant") => assistant_data()
      }

  """
  @type get_assistant_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_recommendations_response() :: %{
        optional("triggers") => list(recommendation_trigger()),
        required("recommendations") => list(recommendation_data())
      }

  """
  @type get_recommendations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      request_timeout_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type request_timeout_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_a_i_guardrail_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("contentPolicyConfig") => a_i_guardrail_content_policy_config(),
        optional("contextualGroundingPolicyConfig") => a_i_guardrail_contextual_grounding_policy_config(),
        optional("description") => String.t() | atom(),
        optional("sensitiveInformationPolicyConfig") => a_i_guardrail_sensitive_information_policy_config(),
        optional("topicPolicyConfig") => a_i_guardrail_topic_policy_config(),
        optional("wordPolicyConfig") => a_i_guardrail_word_policy_config(),
        required("blockedInputMessaging") => String.t() | atom(),
        required("blockedOutputsMessaging") => String.t() | atom(),
        required("visibilityStatus") => String.t() | atom()
      }

  """
  @type update_a_i_guardrail_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_a_iprompts_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("origin") => String.t() | atom()
      }

  """
  @type list_a_iprompts_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_a_iprompt_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("modelId") => String.t() | atom(),
        optional("templateConfiguration") => list(),
        required("visibilityStatus") => String.t() | atom()
      }

  """
  @type update_a_iprompt_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      message_template_attributes() :: %{
        "agentAttributes" => agent_attributes(),
        "customAttributes" => map(),
        "customerProfileAttributes" => customer_profile_attributes(),
        "systemAttributes" => system_attributes()
      }

  """
  @type message_template_attributes() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_feedback_response() :: %{
        "assistantArn" => String.t() | atom(),
        "assistantId" => String.t() | atom(),
        "contentFeedback" => list(),
        "targetId" => String.t() | atom(),
        "targetType" => String.t() | atom()
      }

  """
  @type put_feedback_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_import_job_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("externalSourceConfiguration") => external_source_configuration(),
        optional("metadata") => map(),
        required("importJobType") => String.t() | atom(),
        required("uploadId") => String.t() | atom()
      }

  """
  @type start_import_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_knowledge_base_response() :: %{
        optional("knowledgeBase") => knowledge_base_data()
      }

  """
  @type create_knowledge_base_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t() | atom())
      }

  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      parsing_configuration() :: %{
        "bedrockFoundationModelConfiguration" => bedrock_foundation_model_configuration_for_parsing(),
        "parsingStrategy" => String.t() | atom()
      }

  """
  @type parsing_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_assistant_association_response() :: %{
        optional("assistantAssociation") => assistant_association_data()
      }

  """
  @type get_assistant_association_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_quick_response_request() :: %{
        optional("channels") => list(String.t() | atom()),
        optional("clientToken") => String.t() | atom(),
        optional("contentType") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("groupingConfiguration") => grouping_configuration(),
        optional("isActive") => [boolean()],
        optional("language") => String.t() | atom(),
        optional("shortcutKey") => String.t() | atom(),
        optional("tags") => map(),
        required("content") => list(),
        required("name") => String.t() | atom()
      }

  """
  @type create_quick_response_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_a_i_guardrail_response() :: %{}

  """
  @type delete_a_i_guardrail_response() :: %{}

  @typedoc """

  ## Example:

      delete_a_i_guardrail_request() :: %{}

  """
  @type delete_a_i_guardrail_request() :: %{}

  @typedoc """

  ## Example:

      create_a_i_agent_version_response() :: %{
        "aiAgent" => a_i_agent_data(),
        "versionNumber" => float()
      }

  """
  @type create_a_i_agent_version_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      content_association_summary() :: %{
        "associationData" => list(),
        "associationType" => String.t() | atom(),
        "contentArn" => String.t() | atom(),
        "contentAssociationArn" => String.t() | atom(),
        "contentAssociationId" => String.t() | atom(),
        "contentId" => String.t() | atom(),
        "knowledgeBaseArn" => String.t() | atom(),
        "knowledgeBaseId" => String.t() | atom(),
        "tags" => map()
      }

  """
  @type content_association_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      connect_configuration() :: %{
        "instanceId" => String.t() | atom()
      }

  """
  @type connect_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_a_iprompt_response() :: %{}

  """
  @type delete_a_iprompt_response() :: %{}

  @typedoc """

  ## Example:

      search_content_response() :: %{
        optional("nextToken") => String.t() | atom(),
        required("contentSummaries") => list(content_summary())
      }

  """
  @type search_content_response() :: %{(String.t() | atom()) => any()}

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

      message_template_filter_field() :: %{
        "includeNoExistence" => [boolean()],
        "name" => String.t() | atom(),
        "operator" => String.t() | atom(),
        "values" => list(String.t() | atom())
      }

  """
  @type message_template_filter_field() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_message_template_attachment_request() :: %{
        optional("clientToken") => String.t() | atom(),
        required("body") => String.t() | atom(),
        required("contentDisposition") => String.t() | atom(),
        required("name") => String.t() | atom()
      }

  """
  @type create_message_template_attachment_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      assistant_capability_configuration() :: %{
        "type" => String.t() | atom()
      }

  """
  @type assistant_capability_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      a_i_agent_configuration_data() :: %{
        "aiAgentId" => String.t() | atom()
      }

  """
  @type a_i_agent_configuration_data() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_a_i_guardrail_response() :: %{
        "aiGuardrail" => a_i_guardrail_data(),
        "versionNumber" => float()
      }

  """
  @type get_a_i_guardrail_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_a_i_agents_response() :: %{
        "aiAgentSummaries" => list(a_i_agent_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_a_i_agents_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      message_template_search_expression() :: %{
        "filters" => list(message_template_filter_field()),
        "orderOnField" => message_template_order_field(),
        "queries" => list(message_template_query_field())
      }

  """
  @type message_template_search_expression() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_quick_responses_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_quick_responses_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      system_endpoint_attributes() :: %{
        "address" => String.t() | atom()
      }

  """
  @type system_endpoint_attributes() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      generative_reference() :: %{
        "generationId" => String.t() | atom(),
        "modelId" => String.t() | atom()
      }

  """
  @type generative_reference() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_content_upload_request() :: %{
        optional("presignedUrlTimeToLive") => integer(),
        required("contentType") => String.t() | atom()
      }

  """
  @type start_content_upload_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      guardrail_managed_words_config() :: %{
        "type" => String.t() | atom()
      }

  """
  @type guardrail_managed_words_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_message_template_response() :: %{}

  """
  @type delete_message_template_response() :: %{}

  @typedoc """

  ## Example:

      create_message_template_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("defaultAttributes") => message_template_attributes(),
        optional("description") => String.t() | atom(),
        optional("groupingConfiguration") => grouping_configuration(),
        optional("language") => String.t() | atom(),
        optional("tags") => map(),
        required("channelSubtype") => String.t() | atom(),
        required("content") => list(),
        required("name") => String.t() | atom()
      }

  """
  @type create_message_template_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_assistant_request() :: %{}

  """
  @type delete_assistant_request() :: %{}

  @typedoc """

  ## Example:

      list_a_iprompt_versions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("origin") => String.t() | atom()
      }

  """
  @type list_a_iprompt_versions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      self_service_a_i_agent_configuration() :: %{
        "associationConfigurations" => list(association_configuration()),
        "selfServiceAIGuardrailId" => String.t() | atom(),
        "selfServiceAnswerGenerationAIPromptId" => String.t() | atom(),
        "selfServicePreProcessingAIPromptId" => String.t() | atom()
      }

  """
  @type self_service_a_i_agent_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_content_associations_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_content_associations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      association_configuration() :: %{
        "associationConfigurationData" => list(),
        "associationId" => String.t() | atom(),
        "associationType" => String.t() | atom()
      }

  """
  @type association_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      hierarchical_chunking_configuration() :: %{
        "levelConfigurations" => list(hierarchical_chunking_level_configuration()),
        "overlapTokens" => [integer()]
      }

  """
  @type hierarchical_chunking_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_session_request() :: %{
        optional("aiAgentConfiguration") => map(),
        optional("clientToken") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("tagFilter") => list(),
        optional("tags") => map(),
        required("name") => String.t() | atom()
      }

  """
  @type create_session_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      customer_profile_attributes() :: %{
        "billingAddress2" => String.t() | atom(),
        "billingProvince" => String.t() | atom(),
        "postalCode" => String.t() | atom(),
        "businessName" => String.t() | atom(),
        "firstName" => String.t() | atom(),
        "mailingCity" => String.t() | atom(),
        "billingCountry" => String.t() | atom(),
        "partyType" => String.t() | atom(),
        "address3" => String.t() | atom(),
        "mailingCounty" => String.t() | atom(),
        "businessPhoneNumber" => String.t() | atom(),
        "billingPostalCode" => String.t() | atom(),
        "shippingAddress3" => String.t() | atom(),
        "homePhoneNumber" => String.t() | atom(),
        "mailingAddress2" => String.t() | atom(),
        "mailingCountry" => String.t() | atom(),
        "billingCity" => String.t() | atom(),
        "billingAddress1" => String.t() | atom(),
        "businessEmailAddress" => String.t() | atom(),
        "billingAddress4" => String.t() | atom(),
        "state" => String.t() | atom(),
        "address2" => String.t() | atom(),
        "shippingAddress2" => String.t() | atom(),
        "custom" => map(),
        "mailingAddress1" => String.t() | atom(),
        "shippingCounty" => String.t() | atom(),
        "mailingPostalCode" => String.t() | atom(),
        "shippingAddress4" => String.t() | atom(),
        "country" => String.t() | atom(),
        "city" => String.t() | atom(),
        "county" => String.t() | atom(),
        "phoneNumber" => String.t() | atom(),
        "middleName" => String.t() | atom(),
        "shippingCity" => String.t() | atom(),
        "mailingAddress4" => String.t() | atom(),
        "province" => String.t() | atom(),
        "address4" => String.t() | atom(),
        "shippingProvince" => String.t() | atom(),
        "shippingAddress1" => String.t() | atom(),
        "lastName" => String.t() | atom(),
        "gender" => String.t() | atom(),
        "billingState" => String.t() | atom(),
        "shippingCountry" => String.t() | atom(),
        "mobilePhoneNumber" => String.t() | atom(),
        "shippingState" => String.t() | atom(),
        "mailingAddress3" => String.t() | atom(),
        "mailingProvince" => String.t() | atom(),
        "accountNumber" => String.t() | atom(),
        "mailingState" => String.t() | atom(),
        "shippingPostalCode" => String.t() | atom(),
        "emailAddress" => String.t() | atom(),
        "birthDate" => String.t() | atom(),
        "profileId" => String.t() | atom(),
        "additionalInformation" => String.t() | atom(),
        "profileARN" => String.t() | atom(),
        "address1" => String.t() | atom(),
        "billingAddress3" => String.t() | atom(),
        "billingCounty" => String.t() | atom()
      }

  """
  @type customer_profile_attributes() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_knowledge_base_template_uri_response() :: %{
        optional("knowledgeBase") => knowledge_base_data()
      }

  """
  @type update_knowledge_base_template_uri_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_a_i_guardrail_version_request() :: %{}

  """
  @type delete_a_i_guardrail_version_request() :: %{}

  @typedoc """

  ## Example:

      a_iprompt_data() :: %{
        "aiPromptArn" => String.t() | atom(),
        "aiPromptId" => String.t() | atom(),
        "apiFormat" => String.t() | atom(),
        "assistantArn" => String.t() | atom(),
        "assistantId" => String.t() | atom(),
        "description" => String.t() | atom(),
        "modelId" => String.t() | atom(),
        "modifiedTime" => [non_neg_integer()],
        "name" => String.t() | atom(),
        "origin" => String.t() | atom(),
        "status" => String.t() | atom(),
        "tags" => map(),
        "templateConfiguration" => list(),
        "templateType" => String.t() | atom(),
        "type" => String.t() | atom(),
        "visibilityStatus" => String.t() | atom()
      }

  """
  @type a_iprompt_data() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_a_i_guardrail_response() :: %{
        "aiGuardrail" => a_i_guardrail_data()
      }

  """
  @type update_a_i_guardrail_response() :: %{(String.t() | atom()) => any()}

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

      create_message_template_attachment_response() :: %{
        "attachment" => message_template_attachment()
      }

  """
  @type create_message_template_attachment_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_knowledge_base_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("renderingConfiguration") => rendering_configuration(),
        optional("serverSideEncryptionConfiguration") => server_side_encryption_configuration(),
        optional("sourceConfiguration") => list(),
        optional("tags") => map(),
        optional("vectorIngestionConfiguration") => vector_ingestion_configuration(),
        required("knowledgeBaseType") => String.t() | atom(),
        required("name") => String.t() | atom()
      }

  """
  @type create_knowledge_base_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      message_input() :: %{
        "value" => list()
      }

  """
  @type message_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_import_jobs_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_import_jobs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_message_template_versions_response() :: %{
        "messageTemplateVersionSummaries" => list(message_template_version_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_message_template_versions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      knowledge_base_summary() :: %{
        "description" => String.t() | atom(),
        "knowledgeBaseArn" => String.t() | atom(),
        "knowledgeBaseId" => String.t() | atom(),
        "knowledgeBaseType" => String.t() | atom(),
        "name" => String.t() | atom(),
        "renderingConfiguration" => rendering_configuration(),
        "serverSideEncryptionConfiguration" => server_side_encryption_configuration(),
        "sourceConfiguration" => list(),
        "status" => String.t() | atom(),
        "tags" => map(),
        "vectorIngestionConfiguration" => vector_ingestion_configuration()
      }

  """
  @type knowledge_base_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_a_iprompt_response() :: %{
        "aiPrompt" => a_iprompt_data()
      }

  """
  @type create_a_iprompt_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_quick_responses_response() :: %{
        "nextToken" => String.t() | atom(),
        "quickResponseSummaries" => list(quick_response_summary())
      }

  """
  @type list_quick_responses_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_knowledge_bases_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_knowledge_bases_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_content_association_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("tags") => map(),
        required("association") => list(),
        required("associationType") => String.t() | atom()
      }

  """
  @type create_content_association_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => [String.t() | atom()],
        "resourceName" => [String.t() | atom()]
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

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
        "failedRecordReport" => String.t() | atom(),
        "importJobId" => String.t() | atom(),
        "importJobType" => String.t() | atom(),
        "knowledgeBaseArn" => String.t() | atom(),
        "knowledgeBaseId" => String.t() | atom(),
        "lastModifiedTime" => [non_neg_integer()],
        "metadata" => map(),
        "status" => String.t() | atom(),
        "uploadId" => String.t() | atom(),
        "url" => String.t() | atom(),
        "urlExpiry" => [non_neg_integer()]
      }

  """
  @type import_job_data() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      knowledge_base_data() :: %{
        "description" => String.t() | atom(),
        "ingestionFailureReasons" => list(String.t() | atom()),
        "ingestionStatus" => String.t() | atom(),
        "knowledgeBaseArn" => String.t() | atom(),
        "knowledgeBaseId" => String.t() | atom(),
        "knowledgeBaseType" => String.t() | atom(),
        "lastContentModificationTime" => [non_neg_integer()],
        "name" => String.t() | atom(),
        "renderingConfiguration" => rendering_configuration(),
        "serverSideEncryptionConfiguration" => server_side_encryption_configuration(),
        "sourceConfiguration" => list(),
        "status" => String.t() | atom(),
        "tags" => map(),
        "vectorIngestionConfiguration" => vector_ingestion_configuration()
      }

  """
  @type knowledge_base_data() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      assistant_association_data() :: %{
        "assistantArn" => String.t() | atom(),
        "assistantAssociationArn" => String.t() | atom(),
        "assistantAssociationId" => String.t() | atom(),
        "assistantId" => String.t() | atom(),
        "associationData" => list(),
        "associationType" => String.t() | atom(),
        "tags" => map()
      }

  """
  @type assistant_association_data() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      guardrail_content_filter_config() :: %{
        "inputStrength" => String.t() | atom(),
        "outputStrength" => String.t() | atom(),
        "type" => String.t() | atom()
      }

  """
  @type guardrail_content_filter_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      document_text() :: %{
        "highlights" => list(highlight()),
        "text" => String.t() | atom()
      }

  """
  @type document_text() :: %{(String.t() | atom()) => any()}

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

      message_template_query_field() :: %{
        "allowFuzziness" => [boolean()],
        "name" => String.t() | atom(),
        "operator" => String.t() | atom(),
        "priority" => String.t() | atom(),
        "values" => list(String.t() | atom())
      }

  """
  @type message_template_query_field() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      deactivate_message_template_request() :: %{
        required("versionNumber") => float()
      }

  """
  @type deactivate_message_template_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      a_i_guardrail_data() :: %{
        "aiGuardrailArn" => String.t() | atom(),
        "aiGuardrailId" => String.t() | atom(),
        "assistantArn" => String.t() | atom(),
        "assistantId" => String.t() | atom(),
        "blockedInputMessaging" => String.t() | atom(),
        "blockedOutputsMessaging" => String.t() | atom(),
        "contentPolicyConfig" => a_i_guardrail_content_policy_config(),
        "contextualGroundingPolicyConfig" => a_i_guardrail_contextual_grounding_policy_config(),
        "description" => String.t() | atom(),
        "modifiedTime" => [non_neg_integer()],
        "name" => String.t() | atom(),
        "sensitiveInformationPolicyConfig" => a_i_guardrail_sensitive_information_policy_config(),
        "status" => String.t() | atom(),
        "tags" => map(),
        "topicPolicyConfig" => a_i_guardrail_topic_policy_config(),
        "visibilityStatus" => String.t() | atom(),
        "wordPolicyConfig" => a_i_guardrail_word_policy_config()
      }

  """
  @type a_i_guardrail_data() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_message_template_request() :: %{
        optional("content") => list(),
        optional("defaultAttributes") => message_template_attributes(),
        optional("language") => String.t() | atom()
      }

  """
  @type update_message_template_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      extended_message_template_data() :: %{
        "attachments" => list(message_template_attachment()),
        "attributeTypes" => list(String.t() | atom()),
        "channelSubtype" => String.t() | atom(),
        "content" => list(),
        "createdTime" => [non_neg_integer()],
        "defaultAttributes" => message_template_attributes(),
        "description" => String.t() | atom(),
        "groupingConfiguration" => grouping_configuration(),
        "isActive" => [boolean()],
        "knowledgeBaseArn" => String.t() | atom(),
        "knowledgeBaseId" => String.t() | atom(),
        "language" => String.t() | atom(),
        "lastModifiedBy" => String.t() | atom(),
        "lastModifiedTime" => [non_neg_integer()],
        "messageTemplateArn" => String.t() | atom(),
        "messageTemplateContentSha256" => String.t() | atom(),
        "messageTemplateId" => String.t() | atom(),
        "name" => String.t() | atom(),
        "tags" => map(),
        "versionNumber" => float()
      }

  """
  @type extended_message_template_data() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_message_template_metadata_request() :: %{
        optional("description") => String.t() | atom(),
        optional("groupingConfiguration") => grouping_configuration(),
        optional("name") => String.t() | atom()
      }

  """
  @type update_message_template_metadata_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      quick_response_contents() :: %{
        "markdown" => list(),
        "plainText" => list()
      }

  """
  @type quick_response_contents() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      text_message() :: %{
        "value" => String.t() | atom()
      }

  """
  @type text_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      seed_url() :: %{
        "url" => String.t() | atom()
      }

  """
  @type seed_url() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      amazon_connect_guide_association_data() :: %{
        "flowId" => String.t() | atom()
      }

  """
  @type amazon_connect_guide_association_data() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_message_template_response() :: %{
        "messageTemplate" => message_template_data()
      }

  """
  @type create_message_template_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_a_i_guardrail_version_response() :: %{
        "aiGuardrail" => a_i_guardrail_data(),
        "versionNumber" => float()
      }

  """
  @type create_a_i_guardrail_version_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_a_i_guardrail_response() :: %{
        "aiGuardrail" => a_i_guardrail_data()
      }

  """
  @type create_a_i_guardrail_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_import_job_request() :: %{}

  """
  @type delete_import_job_request() :: %{}

  @typedoc """

  ## Example:

      url_configuration() :: %{
        "seedUrls" => list(seed_url())
      }

  """
  @type url_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      assistant_data() :: %{
        "aiAgentConfiguration" => map(),
        "assistantArn" => String.t() | atom(),
        "assistantId" => String.t() | atom(),
        "capabilityConfiguration" => assistant_capability_configuration(),
        "description" => String.t() | atom(),
        "integrationConfiguration" => assistant_integration_configuration(),
        "name" => String.t() | atom(),
        "serverSideEncryptionConfiguration" => server_side_encryption_configuration(),
        "status" => String.t() | atom(),
        "tags" => map(),
        "type" => String.t() | atom()
      }

  """
  @type assistant_data() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conversation_context() :: %{
        "selfServiceConversationHistory" => list(self_service_conversation_history())
      }

  """
  @type conversation_context() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      web_crawler_limits() :: %{
        "rateLimit" => [integer()]
      }

  """
  @type web_crawler_limits() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_assistant_response() :: %{
        optional("assistant") => assistant_data()
      }

  """
  @type create_assistant_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      quick_response_summary() :: %{
        "channels" => list(String.t() | atom()),
        "contentType" => String.t() | atom(),
        "createdTime" => [non_neg_integer()],
        "description" => String.t() | atom(),
        "isActive" => [boolean()],
        "knowledgeBaseArn" => String.t() | atom(),
        "knowledgeBaseId" => String.t() | atom(),
        "lastModifiedBy" => String.t() | atom(),
        "lastModifiedTime" => [non_neg_integer()],
        "name" => String.t() | atom(),
        "quickResponseArn" => String.t() | atom(),
        "quickResponseId" => String.t() | atom(),
        "status" => String.t() | atom(),
        "tags" => map()
      }

  """
  @type quick_response_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_quick_response_response() :: %{
        "quickResponse" => quick_response_data()
      }

  """
  @type get_quick_response_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_import_job_request() :: %{}

  """
  @type get_import_job_request() :: %{}

  @typedoc """

  ## Example:

      create_assistant_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("serverSideEncryptionConfiguration") => server_side_encryption_configuration(),
        optional("tags") => map(),
        required("name") => String.t() | atom(),
        required("type") => String.t() | atom()
      }

  """
  @type create_assistant_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_recommendations_request() :: %{
        optional("maxResults") => integer(),
        optional("nextChunkToken") => String.t() | atom(),
        optional("waitTimeSeconds") => integer()
      }

  """
  @type get_recommendations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      query_recommendation_trigger_data() :: %{
        "text" => String.t() | atom()
      }

  """
  @type query_recommendation_trigger_data() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      sms_message_template_content_body() :: %{
        "plainText" => list()
      }

  """
  @type sms_message_template_content_body() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      message_output() :: %{
        "messageId" => String.t() | atom(),
        "participant" => String.t() | atom(),
        "timestamp" => [non_neg_integer()],
        "value" => list()
      }

  """
  @type message_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_message_templates_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        required("searchExpression") => message_template_search_expression()
      }

  """
  @type search_message_templates_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      a_i_agent_summary() :: %{
        "aiAgentArn" => String.t() | atom(),
        "aiAgentId" => String.t() | atom(),
        "assistantArn" => String.t() | atom(),
        "assistantId" => String.t() | atom(),
        "configuration" => list(),
        "description" => String.t() | atom(),
        "modifiedTime" => [non_neg_integer()],
        "name" => String.t() | atom(),
        "origin" => String.t() | atom(),
        "status" => String.t() | atom(),
        "tags" => map(),
        "type" => String.t() | atom(),
        "visibilityStatus" => String.t() | atom()
      }

  """
  @type a_i_agent_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_session_request() :: %{
        optional("aiAgentConfiguration") => map(),
        optional("description") => String.t() | atom(),
        optional("tagFilter") => list()
      }

  """
  @type update_session_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_sessions_response() :: %{
        optional("nextToken") => String.t() | atom(),
        required("sessionSummaries") => list(session_summary())
      }

  """
  @type search_sessions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      chunking_configuration() :: %{
        "chunkingStrategy" => String.t() | atom(),
        "fixedSizeChunkingConfiguration" => fixed_size_chunking_configuration(),
        "hierarchicalChunkingConfiguration" => hierarchical_chunking_configuration(),
        "semanticChunkingConfiguration" => semantic_chunking_configuration()
      }

  """
  @type chunking_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_a_iprompt_version_request() :: %{}

  """
  @type delete_a_iprompt_version_request() :: %{}

  @typedoc """

  ## Example:

      notify_recommendations_received_response() :: %{
        optional("errors") => list(notify_recommendations_received_error()),
        optional("recommendationIds") => list(String.t() | atom())
      }

  """
  @type notify_recommendations_received_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_quick_response_request() :: %{
        optional("channels") => list(String.t() | atom()),
        optional("content") => list(),
        optional("contentType") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("groupingConfiguration") => grouping_configuration(),
        optional("isActive") => [boolean()],
        optional("language") => String.t() | atom(),
        optional("name") => String.t() | atom(),
        optional("removeDescription") => [boolean()],
        optional("removeGroupingConfiguration") => [boolean()],
        optional("removeShortcutKey") => [boolean()],
        optional("shortcutKey") => String.t() | atom()
      }

  """
  @type update_quick_response_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      quick_response_data() :: %{
        "channels" => list(String.t() | atom()),
        "contentType" => String.t() | atom(),
        "contents" => quick_response_contents(),
        "createdTime" => [non_neg_integer()],
        "description" => String.t() | atom(),
        "groupingConfiguration" => grouping_configuration(),
        "isActive" => [boolean()],
        "knowledgeBaseArn" => String.t() | atom(),
        "knowledgeBaseId" => String.t() | atom(),
        "language" => String.t() | atom(),
        "lastModifiedBy" => String.t() | atom(),
        "lastModifiedTime" => [non_neg_integer()],
        "name" => String.t() | atom(),
        "quickResponseArn" => String.t() | atom(),
        "quickResponseId" => String.t() | atom(),
        "shortcutKey" => String.t() | atom(),
        "status" => String.t() | atom(),
        "tags" => map()
      }

  """
  @type quick_response_data() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      intent_input_data() :: %{
        "intentId" => String.t() | atom()
      }

  """
  @type intent_input_data() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      knowledge_base_association_data() :: %{
        "knowledgeBaseArn" => String.t() | atom(),
        "knowledgeBaseId" => String.t() | atom()
      }

  """
  @type knowledge_base_association_data() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        optional("tags") => map()
      }

  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      query_condition_item() :: %{
        "comparator" => String.t() | atom(),
        "field" => String.t() | atom(),
        "value" => String.t() | atom()
      }

  """
  @type query_condition_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_a_i_agent_response() :: %{
        "aiAgent" => a_i_agent_data()
      }

  """
  @type update_a_i_agent_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      parsing_prompt() :: %{
        "parsingPromptText" => String.t() | atom()
      }

  """
  @type parsing_prompt() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_assistant_associations_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_assistant_associations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      a_i_guardrail_summary() :: %{
        "aiGuardrailArn" => String.t() | atom(),
        "aiGuardrailId" => String.t() | atom(),
        "assistantArn" => String.t() | atom(),
        "assistantId" => String.t() | atom(),
        "description" => String.t() | atom(),
        "modifiedTime" => [non_neg_integer()],
        "name" => String.t() | atom(),
        "status" => String.t() | atom(),
        "tags" => map(),
        "visibilityStatus" => String.t() | atom()
      }

  """
  @type a_i_guardrail_summary() :: %{(String.t() | atom()) => any()}

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
  @type update_quick_response_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      assistant_summary() :: %{
        "aiAgentConfiguration" => map(),
        "assistantArn" => String.t() | atom(),
        "assistantId" => String.t() | atom(),
        "capabilityConfiguration" => assistant_capability_configuration(),
        "description" => String.t() | atom(),
        "integrationConfiguration" => assistant_integration_configuration(),
        "name" => String.t() | atom(),
        "serverSideEncryptionConfiguration" => server_side_encryption_configuration(),
        "status" => String.t() | atom(),
        "tags" => map(),
        "type" => String.t() | atom()
      }

  """
  @type assistant_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      a_i_guardrail_topic_policy_config() :: %{
        "topicsConfig" => list(guardrail_topic_config())
      }

  """
  @type a_i_guardrail_topic_policy_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      generative_content_feedback_data() :: %{
        "relevance" => String.t() | atom()
      }

  """
  @type generative_content_feedback_data() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_expression() :: %{
        "filters" => list(filter())
      }

  """
  @type search_expression() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      filter() :: %{
        "field" => String.t() | atom(),
        "operator" => String.t() | atom(),
        "value" => String.t() | atom()
      }

  """
  @type filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      a_i_agent_data() :: %{
        "aiAgentArn" => String.t() | atom(),
        "aiAgentId" => String.t() | atom(),
        "assistantArn" => String.t() | atom(),
        "assistantId" => String.t() | atom(),
        "configuration" => list(),
        "description" => String.t() | atom(),
        "modifiedTime" => [non_neg_integer()],
        "name" => String.t() | atom(),
        "origin" => String.t() | atom(),
        "status" => String.t() | atom(),
        "tags" => map(),
        "type" => String.t() | atom(),
        "visibilityStatus" => String.t() | atom()
      }

  """
  @type a_i_agent_data() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      source_content_data_details() :: %{
        "citationSpan" => citation_span(),
        "id" => String.t() | atom(),
        "rankingData" => ranking_data(),
        "textData" => text_data(),
        "type" => String.t() | atom()
      }

  """
  @type source_content_data_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      server_side_encryption_configuration() :: %{
        "kmsKeyId" => String.t() | atom()
      }

  """
  @type server_side_encryption_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      guardrail_word_config() :: %{
        "text" => String.t() | atom()
      }

  """
  @type guardrail_word_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      session_data() :: %{
        "aiAgentConfiguration" => map(),
        "description" => String.t() | atom(),
        "integrationConfiguration" => session_integration_configuration(),
        "name" => String.t() | atom(),
        "origin" => String.t() | atom(),
        "sessionArn" => String.t() | atom(),
        "sessionId" => String.t() | atom(),
        "tagFilter" => list(),
        "tags" => map()
      }

  """
  @type session_data() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_sessions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        required("searchExpression") => search_expression()
      }

  """
  @type search_sessions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      semantic_chunking_configuration() :: %{
        "breakpointPercentileThreshold" => [integer()],
        "bufferSize" => [integer()],
        "maxTokens" => [integer()]
      }

  """
  @type semantic_chunking_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_message_template_version_response() :: %{
        "messageTemplate" => extended_message_template_data()
      }

  """
  @type create_message_template_version_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      message_template_search_result_data() :: %{
        "channelSubtype" => String.t() | atom(),
        "createdTime" => [non_neg_integer()],
        "description" => String.t() | atom(),
        "groupingConfiguration" => grouping_configuration(),
        "isActive" => [boolean()],
        "knowledgeBaseArn" => String.t() | atom(),
        "knowledgeBaseId" => String.t() | atom(),
        "language" => String.t() | atom(),
        "lastModifiedBy" => String.t() | atom(),
        "lastModifiedTime" => [non_neg_integer()],
        "messageTemplateArn" => String.t() | atom(),
        "messageTemplateId" => String.t() | atom(),
        "name" => String.t() | atom(),
        "tags" => map(),
        "versionNumber" => float()
      }

  """
  @type message_template_search_result_data() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      email_header() :: %{
        "name" => String.t() | atom(),
        "value" => String.t() | atom()
      }

  """
  @type email_header() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      web_crawler_configuration() :: %{
        "crawlerLimits" => web_crawler_limits(),
        "exclusionFilters" => list(String.t() | atom()),
        "inclusionFilters" => list(String.t() | atom()),
        "scope" => String.t() | atom(),
        "urlConfiguration" => url_configuration()
      }

  """
  @type web_crawler_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_import_jobs_response() :: %{
        "importJobSummaries" => list(import_job_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_import_jobs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_a_i_guardrail_version_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("modifiedTime") => [non_neg_integer()]
      }

  """
  @type create_a_i_guardrail_version_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_message_template_request() :: %{}

  """
  @type delete_message_template_request() :: %{}

  @typedoc """

  ## Example:

      bedrock_foundation_model_configuration_for_parsing() :: %{
        "modelArn" => String.t() | atom(),
        "parsingPrompt" => parsing_prompt()
      }

  """
  @type bedrock_foundation_model_configuration_for_parsing() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_content_association_response() :: %{}

  """
  @type delete_content_association_response() :: %{}

  @typedoc """

  ## Example:

      a_iprompt_summary() :: %{
        "aiPromptArn" => String.t() | atom(),
        "aiPromptId" => String.t() | atom(),
        "apiFormat" => String.t() | atom(),
        "assistantArn" => String.t() | atom(),
        "assistantId" => String.t() | atom(),
        "description" => String.t() | atom(),
        "modelId" => String.t() | atom(),
        "modifiedTime" => [non_neg_integer()],
        "name" => String.t() | atom(),
        "origin" => String.t() | atom(),
        "status" => String.t() | atom(),
        "tags" => map(),
        "templateType" => String.t() | atom(),
        "type" => String.t() | atom(),
        "visibilityStatus" => String.t() | atom()
      }

  """
  @type a_iprompt_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      a_i_guardrail_word_policy_config() :: %{
        "managedWordListsConfig" => list(guardrail_managed_words_config()),
        "wordsConfig" => list(guardrail_word_config())
      }

  """
  @type a_i_guardrail_word_policy_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      remove_knowledge_base_template_uri_request() :: %{}

  """
  @type remove_knowledge_base_template_uri_request() :: %{}

  @typedoc """

  ## Example:

      generative_data_details() :: %{
        "completion" => String.t() | atom(),
        "rankingData" => ranking_data(),
        "references" => list(data_summary())
      }

  """
  @type generative_data_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_quick_responses_response() :: %{
        "nextToken" => String.t() | atom(),
        "results" => list(quick_response_search_result_data())
      }

  """
  @type search_quick_responses_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_a_iprompt_request() :: %{}

  """
  @type get_a_iprompt_request() :: %{}

  @typedoc """

  ## Example:

      list_a_i_guardrail_versions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_a_i_guardrail_versions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      a_i_guardrail_version_summary() :: %{
        "aiGuardrailSummary" => a_i_guardrail_summary(),
        "versionNumber" => float()
      }

  """
  @type a_i_guardrail_version_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      guardrail_regex_config() :: %{
        "action" => String.t() | atom(),
        "description" => String.t() | atom(),
        "name" => String.t() | atom(),
        "pattern" => String.t() | atom()
      }

  """
  @type guardrail_regex_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_message_templates_response() :: %{
        "messageTemplateSummaries" => list(message_template_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_message_templates_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_a_iprompt_response() :: %{
        "aiPrompt" => a_iprompt_data(),
        "versionNumber" => float()
      }

  """
  @type get_a_iprompt_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_a_iprompt_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("tags") => map(),
        required("apiFormat") => String.t() | atom(),
        required("modelId") => String.t() | atom(),
        required("name") => String.t() | atom(),
        required("templateConfiguration") => list(),
        required("templateType") => String.t() | atom(),
        required("type") => String.t() | atom(),
        required("visibilityStatus") => String.t() | atom()
      }

  """
  @type create_a_iprompt_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      a_i_guardrail_contextual_grounding_policy_config() :: %{
        "filtersConfig" => list(guardrail_contextual_grounding_filter_config())
      }

  """
  @type a_i_guardrail_contextual_grounding_policy_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      notify_recommendations_received_error() :: %{
        "message" => String.t() | atom(),
        "recommendationId" => String.t() | atom()
      }

  """
  @type notify_recommendations_received_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_import_job_response() :: %{
        "importJob" => import_job_data()
      }

  """
  @type get_import_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      manual_search_a_i_agent_configuration() :: %{
        "answerGenerationAIGuardrailId" => String.t() | atom(),
        "answerGenerationAIPromptId" => String.t() | atom(),
        "associationConfigurations" => list(association_configuration()),
        "locale" => String.t() | atom()
      }

  """
  @type manual_search_a_i_agent_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_content_response() :: %{
        optional("content") => content_data()
      }

  """
  @type update_content_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_message_template_attachment_request() :: %{}

  """
  @type delete_message_template_attachment_request() :: %{}

  @typedoc """

  ## Example:

      get_message_template_response() :: %{
        "messageTemplate" => extended_message_template_data()
      }

  """
  @type get_message_template_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_quick_response_request() :: %{}

  """
  @type get_quick_response_request() :: %{}

  @typedoc """

  ## Example:

      a_i_guardrail_sensitive_information_policy_config() :: %{
        "piiEntitiesConfig" => list(guardrail_pii_entity_config()),
        "regexesConfig" => list(guardrail_regex_config())
      }

  """
  @type a_i_guardrail_sensitive_information_policy_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_assistant_association_response() :: %{
        optional("assistantAssociation") => assistant_association_data()
      }

  """
  @type create_assistant_association_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_content_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("metadata") => map(),
        optional("overrideLinkOutUri") => String.t() | atom(),
        optional("tags") => map(),
        optional("title") => String.t() | atom(),
        required("name") => String.t() | atom(),
        required("uploadId") => String.t() | atom()
      }

  """
  @type create_content_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      message_template_summary() :: %{
        "activeVersionNumber" => float(),
        "channelSubtype" => String.t() | atom(),
        "createdTime" => [non_neg_integer()],
        "description" => String.t() | atom(),
        "knowledgeBaseArn" => String.t() | atom(),
        "knowledgeBaseId" => String.t() | atom(),
        "lastModifiedBy" => String.t() | atom(),
        "lastModifiedTime" => [non_neg_integer()],
        "messageTemplateArn" => String.t() | atom(),
        "messageTemplateId" => String.t() | atom(),
        "name" => String.t() | atom(),
        "tags" => map()
      }

  """
  @type message_template_summary() :: %{(String.t() | atom()) => any()}

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
        "importJobId" => String.t() | atom(),
        "importJobType" => String.t() | atom(),
        "knowledgeBaseArn" => String.t() | atom(),
        "knowledgeBaseId" => String.t() | atom(),
        "lastModifiedTime" => [non_neg_integer()],
        "metadata" => map(),
        "status" => String.t() | atom(),
        "uploadId" => String.t() | atom()
      }

  """
  @type import_job_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      query_assistant_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("overrideKnowledgeBaseSearchType") => String.t() | atom(),
        optional("queryCondition") => list(list()),
        optional("queryInputData") => list(),
        optional("queryText") => String.t() | atom(),
        optional("sessionId") => String.t() | atom()
      }

  """
  @type query_assistant_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_message_template_request() :: %{}

  """
  @type get_message_template_request() :: %{}

  @typedoc """

  ## Example:

      quick_response_search_result_data() :: %{
        "attributesInterpolated" => list(String.t() | atom()),
        "attributesNotInterpolated" => list(String.t() | atom()),
        "channels" => list(String.t() | atom()),
        "contentType" => String.t() | atom(),
        "contents" => quick_response_contents(),
        "createdTime" => [non_neg_integer()],
        "description" => String.t() | atom(),
        "groupingConfiguration" => grouping_configuration(),
        "isActive" => [boolean()],
        "knowledgeBaseArn" => String.t() | atom(),
        "knowledgeBaseId" => String.t() | atom(),
        "language" => String.t() | atom(),
        "lastModifiedBy" => String.t() | atom(),
        "lastModifiedTime" => [non_neg_integer()],
        "name" => String.t() | atom(),
        "quickResponseArn" => String.t() | atom(),
        "quickResponseId" => String.t() | atom(),
        "shortcutKey" => String.t() | atom(),
        "status" => String.t() | atom(),
        "tags" => map()
      }

  """
  @type quick_response_search_result_data() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      rendering_configuration() :: %{
        "templateUri" => String.t() | atom()
      }

  """
  @type rendering_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_content_association_response() :: %{
        "contentAssociation" => content_association_data()
      }

  """
  @type get_content_association_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      system_attributes() :: %{
        "customerEndpoint" => system_endpoint_attributes(),
        "name" => String.t() | atom(),
        "systemEndpoint" => system_endpoint_attributes()
      }

  """
  @type system_attributes() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_content_request() :: %{}

  """
  @type delete_content_request() :: %{}

  @typedoc """

  ## Example:

      list_a_i_guardrails_response() :: %{
        "aiGuardrailSummaries" => list(a_i_guardrail_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_a_i_guardrails_response() :: %{(String.t() | atom()) => any()}

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

      create_message_template_version_request() :: %{
        optional("messageTemplateContentSha256") => String.t() | atom()
      }

  """
  @type create_message_template_version_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => [String.t() | atom()]
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

      runtime_session_data() :: %{
        "key" => String.t() | atom(),
        "value" => list()
      }

  """
  @type runtime_session_data() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      content_reference() :: %{
        "contentArn" => String.t() | atom(),
        "contentId" => String.t() | atom(),
        "knowledgeBaseArn" => String.t() | atom(),
        "knowledgeBaseId" => String.t() | atom(),
        "referenceType" => String.t() | atom(),
        "sourceURL" => [String.t() | atom()]
      }

  """
  @type content_reference() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      guardrail_pii_entity_config() :: %{
        "action" => String.t() | atom(),
        "type" => String.t() | atom()
      }

  """
  @type guardrail_pii_entity_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_message_templates_response() :: %{
        "nextToken" => String.t() | atom(),
        "results" => list(message_template_search_result_data())
      }

  """
  @type search_message_templates_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      citation_span() :: %{
        "beginOffsetInclusive" => integer(),
        "endOffsetExclusive" => integer()
      }

  """
  @type citation_span() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      content_data() :: %{
        "contentArn" => String.t() | atom(),
        "contentId" => String.t() | atom(),
        "contentType" => String.t() | atom(),
        "knowledgeBaseArn" => String.t() | atom(),
        "knowledgeBaseId" => String.t() | atom(),
        "linkOutUri" => String.t() | atom(),
        "metadata" => map(),
        "name" => String.t() | atom(),
        "revisionId" => String.t() | atom(),
        "status" => String.t() | atom(),
        "tags" => map(),
        "title" => String.t() | atom(),
        "url" => String.t() | atom(),
        "urlExpiry" => [non_neg_integer()]
      }

  """
  @type content_data() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      content_summary() :: %{
        "contentArn" => String.t() | atom(),
        "contentId" => String.t() | atom(),
        "contentType" => String.t() | atom(),
        "knowledgeBaseArn" => String.t() | atom(),
        "knowledgeBaseId" => String.t() | atom(),
        "metadata" => map(),
        "name" => String.t() | atom(),
        "revisionId" => String.t() | atom(),
        "status" => String.t() | atom(),
        "tags" => map(),
        "title" => String.t() | atom()
      }

  """
  @type content_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_session_data_response() :: %{
        "data" => list(runtime_session_data()),
        "namespace" => String.t() | atom(),
        "sessionArn" => String.t() | atom(),
        "sessionId" => String.t() | atom()
      }

  """
  @type update_session_data_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      self_service_conversation_history() :: %{
        "botResponse" => String.t() | atom(),
        "inputTranscript" => String.t() | atom(),
        "turnNumber" => [integer()]
      }

  """
  @type self_service_conversation_history() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      knowledge_base_association_configuration_data() :: %{
        "contentTagFilter" => list(),
        "maxResults" => integer(),
        "overrideKnowledgeBaseSearchType" => String.t() | atom()
      }

  """
  @type knowledge_base_association_configuration_data() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      hierarchical_chunking_level_configuration() :: %{
        "maxTokens" => [integer()]
      }

  """
  @type hierarchical_chunking_level_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      a_i_guardrail_content_policy_config() :: %{
        "filtersConfig" => list(guardrail_content_filter_config())
      }

  """
  @type a_i_guardrail_content_policy_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_content_response() :: %{
        optional("content") => content_data()
      }

  """
  @type get_content_response() :: %{(String.t() | atom()) => any()}

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
  @type content_data_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      recommendation_trigger() :: %{
        "data" => list(),
        "id" => String.t() | atom(),
        "recommendationIds" => list(String.t() | atom()),
        "source" => String.t() | atom(),
        "type" => String.t() | atom()
      }

  """
  @type recommendation_trigger() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_session_response() :: %{
        "session" => session_data()
      }

  """
  @type update_session_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      notify_recommendations_received_request() :: %{
        required("recommendationIds") => list(String.t() | atom())
      }

  """
  @type notify_recommendations_received_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      send_message_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("configuration") => message_configuration(),
        optional("conversationContext") => conversation_context(),
        required("message") => message_input(),
        required("type") => String.t() | atom()
      }

  """
  @type send_message_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_a_i_agent_response() :: %{}

  """
  @type delete_a_i_agent_response() :: %{}

  @typedoc """

  ## Example:

      message_template_data() :: %{
        "attributeTypes" => list(String.t() | atom()),
        "channelSubtype" => String.t() | atom(),
        "content" => list(),
        "createdTime" => [non_neg_integer()],
        "defaultAttributes" => message_template_attributes(),
        "description" => String.t() | atom(),
        "groupingConfiguration" => grouping_configuration(),
        "knowledgeBaseArn" => String.t() | atom(),
        "knowledgeBaseId" => String.t() | atom(),
        "language" => String.t() | atom(),
        "lastModifiedBy" => String.t() | atom(),
        "lastModifiedTime" => [non_neg_integer()],
        "messageTemplateArn" => String.t() | atom(),
        "messageTemplateContentSha256" => String.t() | atom(),
        "messageTemplateId" => String.t() | atom(),
        "name" => String.t() | atom(),
        "tags" => map()
      }

  """
  @type message_template_data() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_knowledge_bases_response() :: %{
        optional("nextToken") => String.t() | atom(),
        required("knowledgeBaseSummaries") => list(knowledge_base_summary())
      }

  """
  @type list_knowledge_bases_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_knowledge_base_response() :: %{
        optional("knowledgeBase") => knowledge_base_data()
      }

  """
  @type get_knowledge_base_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      sms_message_template_content() :: %{
        "body" => sms_message_template_content_body()
      }

  """
  @type sms_message_template_content() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_assistant_associations_response() :: %{
        optional("nextToken") => String.t() | atom(),
        required("assistantAssociationSummaries") => list(assistant_association_summary())
      }

  """
  @type list_assistant_associations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      result_data() :: %{
        "data" => data_summary(),
        "document" => document(),
        "relevanceScore" => float(),
        "resultId" => String.t() | atom(),
        "type" => String.t() | atom()
      }

  """
  @type result_data() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_message_template_metadata_response() :: %{
        "messageTemplate" => message_template_data()
      }

  """
  @type update_message_template_metadata_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_next_message_request() :: %{
        required("nextMessageToken") => String.t() | atom()
      }

  """
  @type get_next_message_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      render_message_template_response() :: %{
        "attachments" => list(message_template_attachment()),
        "attributesNotInterpolated" => list(String.t() | atom()),
        "content" => list()
      }

  """
  @type render_message_template_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      email_message_template_content_body() :: %{
        "html" => list(),
        "plainText" => list()
      }

  """
  @type email_message_template_content_body() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_a_i_guardrails_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_a_i_guardrails_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      message_template_version_summary() :: %{
        "channelSubtype" => String.t() | atom(),
        "isActive" => [boolean()],
        "knowledgeBaseArn" => String.t() | atom(),
        "knowledgeBaseId" => String.t() | atom(),
        "messageTemplateArn" => String.t() | atom(),
        "messageTemplateId" => String.t() | atom(),
        "name" => String.t() | atom(),
        "versionNumber" => float()
      }

  """
  @type message_template_version_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_message_templates_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_message_templates_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_a_i_agent_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("configuration") => list(),
        optional("description") => String.t() | atom(),
        required("visibilityStatus") => String.t() | atom()
      }

  """
  @type update_a_i_agent_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_import_job_response() :: %{
        "importJob" => import_job_data()
      }

  """
  @type start_import_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_content_request() :: %{
        optional("metadata") => map(),
        optional("overrideLinkOutUri") => String.t() | atom(),
        optional("removeOverrideLinkOutUri") => [boolean()],
        optional("revisionId") => String.t() | atom(),
        optional("title") => String.t() | atom(),
        optional("uploadId") => String.t() | atom()
      }

  """
  @type update_content_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      assistant_association_summary() :: %{
        "assistantArn" => String.t() | atom(),
        "assistantAssociationArn" => String.t() | atom(),
        "assistantAssociationId" => String.t() | atom(),
        "assistantId" => String.t() | atom(),
        "associationData" => list(),
        "associationType" => String.t() | atom(),
        "tags" => map()
      }

  """
  @type assistant_association_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_content_summary_request() :: %{}

  """
  @type get_content_summary_request() :: %{}

  @typedoc """

  ## Example:

      quick_response_query_field() :: %{
        "allowFuzziness" => [boolean()],
        "name" => String.t() | atom(),
        "operator" => String.t() | atom(),
        "priority" => String.t() | atom(),
        "values" => list(String.t() | atom())
      }

  """
  @type quick_response_query_field() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      text_full_a_iprompt_edit_template_configuration() :: %{
        "text" => String.t() | atom()
      }

  """
  @type text_full_a_iprompt_edit_template_configuration() :: %{(String.t() | atom()) => any()}

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
        "aiPromptVersionSummaries" => list(a_iprompt_version_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_a_iprompt_versions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      quick_response_order_field() :: %{
        "name" => String.t() | atom(),
        "order" => String.t() | atom()
      }

  """
  @type quick_response_order_field() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      send_message_response() :: %{
        "configuration" => message_configuration(),
        "nextMessageToken" => String.t() | atom(),
        "requestMessageId" => String.t() | atom()
      }

  """
  @type send_message_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_assistants_response() :: %{
        optional("nextToken") => String.t() | atom(),
        required("assistantSummaries") => list(assistant_summary())
      }

  """
  @type list_assistants_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_assistant_a_i_agent_request() :: %{
        required("aiAgentType") => String.t() | atom(),
        required("configuration") => a_i_agent_configuration_data()
      }

  """
  @type update_assistant_a_i_agent_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_quick_response_response() :: %{}

  """
  @type delete_quick_response_response() :: %{}

  @typedoc """

  ## Example:

      message_template_attachment() :: %{
        "attachmentId" => String.t() | atom(),
        "contentDisposition" => String.t() | atom(),
        "name" => String.t() | atom(),
        "uploadedTime" => [non_neg_integer()],
        "url" => String.t() | atom(),
        "urlExpiry" => [non_neg_integer()]
      }

  """
  @type message_template_attachment() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_content_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        required("searchExpression") => search_expression()
      }

  """
  @type search_content_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      ranking_data() :: %{
        "relevanceLevel" => String.t() | atom(),
        "relevanceScore" => float()
      }

  """
  @type ranking_data() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      vector_ingestion_configuration() :: %{
        "chunkingConfiguration" => chunking_configuration(),
        "parsingConfiguration" => parsing_configuration()
      }

  """
  @type vector_ingestion_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      grouping_configuration() :: %{
        "criteria" => String.t() | atom(),
        "values" => list(String.t() | atom())
      }

  """
  @type grouping_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_assistant_association_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("tags") => map(),
        required("association") => list(),
        required("associationType") => String.t() | atom()
      }

  """
  @type create_assistant_association_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_a_i_guardrail_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("contentPolicyConfig") => a_i_guardrail_content_policy_config(),
        optional("contextualGroundingPolicyConfig") => a_i_guardrail_contextual_grounding_policy_config(),
        optional("description") => String.t() | atom(),
        optional("sensitiveInformationPolicyConfig") => a_i_guardrail_sensitive_information_policy_config(),
        optional("tags") => map(),
        optional("topicPolicyConfig") => a_i_guardrail_topic_policy_config(),
        optional("wordPolicyConfig") => a_i_guardrail_word_policy_config(),
        required("blockedInputMessaging") => String.t() | atom(),
        required("blockedOutputsMessaging") => String.t() | atom(),
        required("name") => String.t() | atom(),
        required("visibilityStatus") => String.t() | atom()
      }

  """
  @type create_a_i_guardrail_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      answer_recommendation_a_i_agent_configuration() :: %{
        "answerGenerationAIGuardrailId" => String.t() | atom(),
        "answerGenerationAIPromptId" => String.t() | atom(),
        "associationConfigurations" => list(association_configuration()),
        "intentLabelingGenerationAIPromptId" => String.t() | atom(),
        "locale" => String.t() | atom(),
        "queryReformulationAIPromptId" => String.t() | atom()
      }

  """
  @type answer_recommendation_a_i_agent_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      email_message_template_content() :: %{
        "body" => email_message_template_content_body(),
        "headers" => list(email_header()),
        "subject" => String.t() | atom()
      }

  """
  @type email_message_template_content() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_session_response() :: %{
        optional("session") => session_data()
      }

  """
  @type create_session_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      precondition_failed_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type precondition_failed_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_a_iprompt_response() :: %{
        "aiPrompt" => a_iprompt_data()
      }

  """
  @type update_a_iprompt_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_content_associations_response() :: %{
        "contentAssociationSummaries" => list(content_association_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_content_associations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_a_i_agent_version_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("modifiedTime") => [non_neg_integer()]
      }

  """
  @type create_a_i_agent_version_request() :: %{(String.t() | atom()) => any()}

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
  @type document() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      render_message_template_request() :: %{
        required("attributes") => message_template_attributes()
      }

  """
  @type render_message_template_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_assistants_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_assistants_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_session_data_request() :: %{
        optional("namespace") => String.t() | atom(),
        required("data") => list(runtime_session_data())
      }

  """
  @type update_session_data_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_content_association_request() :: %{}

  """
  @type delete_content_association_request() :: %{}

  @typedoc """

  ## Example:

      update_message_template_response() :: %{
        "messageTemplate" => message_template_data()
      }

  """
  @type update_message_template_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      session_integration_configuration() :: %{
        "topicIntegrationArn" => String.t() | atom()
      }

  """
  @type session_integration_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_assistant_a_i_agent_response() :: %{
        "assistant" => assistant_data()
      }

  """
  @type update_assistant_a_i_agent_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_import_job_response() :: %{}

  """
  @type delete_import_job_response() :: %{}

  @typedoc """

  ## Example:

      too_many_tags_exception() :: %{
        "message" => [String.t() | atom()],
        "resourceName" => [String.t() | atom()]
      }

  """
  @type too_many_tags_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_messages_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_messages_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_a_iprompt_version_response() :: %{
        "aiPrompt" => a_iprompt_data(),
        "versionNumber" => float()
      }

  """
  @type create_a_iprompt_version_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      activate_message_template_response() :: %{
        "messageTemplateArn" => String.t() | atom(),
        "messageTemplateId" => String.t() | atom(),
        "versionNumber" => float()
      }

  """
  @type activate_message_template_response() :: %{(String.t() | atom()) => any()}

  @type activate_message_template_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_a_i_agent_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unauthorized_exception()

  @type create_a_i_agent_version_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unauthorized_exception()

  @type create_a_i_guardrail_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unauthorized_exception()

  @type create_a_i_guardrail_version_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unauthorized_exception()

  @type create_a_iprompt_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unauthorized_exception()

  @type create_a_iprompt_version_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unauthorized_exception()

  @type create_assistant_errors() ::
          validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()
          | unauthorized_exception()

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
          | unauthorized_exception()

  @type create_content_association_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unauthorized_exception()

  @type create_knowledge_base_errors() ::
          validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()
          | unauthorized_exception()

  @type create_message_template_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_message_template_attachment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unauthorized_exception()

  @type create_message_template_version_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_quick_response_errors() ::
          validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unauthorized_exception()

  @type create_session_errors() ::
          validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unauthorized_exception()

  @type deactivate_message_template_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_a_i_agent_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type delete_a_i_agent_version_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unauthorized_exception()

  @type delete_a_i_guardrail_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unauthorized_exception()

  @type delete_a_i_guardrail_version_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unauthorized_exception()

  @type delete_a_iprompt_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type delete_a_iprompt_version_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unauthorized_exception()

  @type delete_assistant_errors() ::
          validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type delete_assistant_association_errors() ::
          validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type delete_content_errors() ::
          validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unauthorized_exception()

  @type delete_content_association_errors() ::
          validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type delete_import_job_errors() ::
          validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unauthorized_exception()

  @type delete_knowledge_base_errors() ::
          validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unauthorized_exception()

  @type delete_message_template_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_message_template_attachment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_quick_response_errors() ::
          validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type get_a_i_agent_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type get_a_i_guardrail_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type get_a_iprompt_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type get_assistant_errors() ::
          validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type get_assistant_association_errors() ::
          validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type get_content_errors() ::
          validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type get_content_association_errors() ::
          validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type get_content_summary_errors() ::
          validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type get_import_job_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type get_knowledge_base_errors() ::
          validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type get_message_template_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type get_next_message_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type get_quick_response_errors() ::
          validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type get_recommendations_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type get_session_errors() ::
          validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type list_a_i_agent_versions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type list_a_i_agents_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type list_a_i_guardrail_versions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type list_a_i_guardrails_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type list_a_iprompt_versions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type list_a_iprompts_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type list_assistant_associations_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type list_assistants_errors() ::
          validation_exception() | access_denied_exception() | unauthorized_exception()

  @type list_content_associations_errors() ::
          validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type list_contents_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type list_import_jobs_errors() :: validation_exception() | access_denied_exception()

  @type list_knowledge_bases_errors() :: validation_exception() | access_denied_exception()

  @type list_message_template_versions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_message_templates_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_messages_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

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

  @type render_message_template_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type search_content_errors() ::
          validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type search_message_templates_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type search_quick_responses_errors() ::
          validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | request_timeout_exception()
          | unauthorized_exception()

  @type search_sessions_errors() ::
          validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type send_message_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | request_timeout_exception()

  @type start_content_upload_errors() ::
          validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type start_import_job_errors() ::
          validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unauthorized_exception()

  @type tag_resource_errors() :: too_many_tags_exception() | resource_not_found_exception()

  @type untag_resource_errors() :: resource_not_found_exception()

  @type update_a_i_agent_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unauthorized_exception()

  @type update_a_i_guardrail_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unauthorized_exception()

  @type update_a_iprompt_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unauthorized_exception()

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
          | unauthorized_exception()

  @type update_knowledge_base_template_uri_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type update_message_template_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_message_template_metadata_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_quick_response_errors() ::
          precondition_failed_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unauthorized_exception()

  @type update_session_errors() ::
          validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type update_session_data_errors() ::
          validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

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
  Activates a specific version of the Amazon Q in Connect message template.

  After the version is activated, the previous active version will be deactivated
  automatically. You can use the `$ACTIVE_VERSION` qualifier later to reference
  the version that is in active status.
  """
  @spec activate_message_template(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          activate_message_template_request(),
          list()
        ) ::
          {:ok, activate_message_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, activate_message_template_errors()}
  def activate_message_template(
        %Client{} = client,
        knowledge_base_id,
        message_template_id,
        input,
        options \\ []
      ) do
    url_path =
      "/knowledgeBases/#{AWS.Util.encode_uri(knowledge_base_id)}/messageTemplates/#{AWS.Util.encode_uri(message_template_id)}/activate"

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
  Creates an Amazon Q in Connect AI Agent.
  """
  @spec create_a_i_agent(map(), String.t() | atom(), create_a_i_agent_request(), list()) ::
          {:ok, create_a_i_agent_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_a_i_agent_errors()}
  def create_a_i_agent(%Client{} = client, assistant_id, input, options \\ []) do
    url_path = "/assistants/#{AWS.Util.encode_uri(assistant_id)}/aiagents"
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
  Creates and Amazon Q in Connect AI Agent version.
  """
  @spec create_a_i_agent_version(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          create_a_i_agent_version_request(),
          list()
        ) ::
          {:ok, create_a_i_agent_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Creates an Amazon Q in Connect AI Guardrail.
  """
  @spec create_a_i_guardrail(map(), String.t() | atom(), create_a_i_guardrail_request(), list()) ::
          {:ok, create_a_i_guardrail_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_a_i_guardrail_errors()}
  def create_a_i_guardrail(%Client{} = client, assistant_id, input, options \\ []) do
    url_path = "/assistants/#{AWS.Util.encode_uri(assistant_id)}/aiguardrails"
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
  Creates an Amazon Q in Connect AI Guardrail version.
  """
  @spec create_a_i_guardrail_version(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          create_a_i_guardrail_version_request(),
          list()
        ) ::
          {:ok, create_a_i_guardrail_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_a_i_guardrail_version_errors()}
  def create_a_i_guardrail_version(
        %Client{} = client,
        ai_guardrail_id,
        assistant_id,
        input,
        options \\ []
      ) do
    url_path =
      "/assistants/#{AWS.Util.encode_uri(assistant_id)}/aiguardrails/#{AWS.Util.encode_uri(ai_guardrail_id)}/versions"

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
  Creates an Amazon Q in Connect AI Prompt.

  For more information on supported models, see [Supported models for system and custom
  prompts](https://docs.aws.amazon.com/connect/latest/adminguide/create-ai-prompts.html#cli-create-aiprompt).
  """
  @spec create_a_iprompt(map(), String.t() | atom(), create_a_iprompt_request(), list()) ::
          {:ok, create_a_iprompt_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_a_iprompt_errors()}
  def create_a_iprompt(%Client{} = client, assistant_id, input, options \\ []) do
    url_path = "/assistants/#{AWS.Util.encode_uri(assistant_id)}/aiprompts"
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
  Creates an Amazon Q in Connect AI Prompt version.
  """
  @spec create_a_iprompt_version(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          create_a_iprompt_version_request(),
          list()
        ) ::
          {:ok, create_a_iprompt_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Creates an Amazon Q in Connect assistant.
  """
  @spec create_assistant(map(), create_assistant_request(), list()) ::
          {:ok, create_assistant_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_assistant_errors()}
  def create_assistant(%Client{} = client, input, options \\ []) do
    url_path = "/assistants"
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
  Creates an association between an Amazon Q in Connect assistant and another
  resource.

  Currently, the only supported association is with a knowledge base. An assistant
  can have only a single association.
  """
  @spec create_assistant_association(
          map(),
          String.t() | atom(),
          create_assistant_association_request(),
          list()
        ) ::
          {:ok, create_assistant_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_assistant_association_errors()}
  def create_assistant_association(%Client{} = client, assistant_id, input, options \\ []) do
    url_path = "/assistants/#{AWS.Util.encode_uri(assistant_id)}/associations"
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
  Creates Amazon Q in Connect content.

  Before to calling this API, use
  [StartContentUpload](https://docs.aws.amazon.com/amazon-q-connect/latest/APIReference/API_StartContentUpload.html)
  to upload an asset.
  """
  @spec create_content(map(), String.t() | atom(), create_content_request(), list()) ::
          {:ok, create_content_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_content_errors()}
  def create_content(%Client{} = client, knowledge_base_id, input, options \\ []) do
    url_path = "/knowledgeBases/#{AWS.Util.encode_uri(knowledge_base_id)}/contents"
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
  Creates an association between a content resource in a knowledge base and
  [step-by-step guides](https://docs.aws.amazon.com/connect/latest/adminguide/step-by-step-guided-experiences.html).

  Step-by-step guides offer instructions to agents for resolving common customer
  issues. You create a content association to integrate Amazon Q in Connect and
  step-by-step guides.

  After you integrate Amazon Q and step-by-step guides, when Amazon Q provides a
  recommendation to an agent based on the intent that it's detected, it also
  provides them with the option to start the step-by-step guide that you have
  associated with the content.

  Note the following limitations:

    * You can create only one content association for each content
  resource in a knowledge base.

    * You can associate a step-by-step guide with multiple content
  resources.

  For more information, see [Integrate Amazon Q in Connect with step-by-step guides](https://docs.aws.amazon.com/connect/latest/adminguide/integrate-q-with-guides.html)
  in the *Amazon Connect Administrator Guide*.
  """
  @spec create_content_association(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          create_content_association_request(),
          list()
        ) ::
          {:ok, create_content_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Creates a knowledge base.

  When using this API, you cannot reuse [Amazon AppIntegrations](https://docs.aws.amazon.com/appintegrations/latest/APIReference/Welcome.html)
  DataIntegrations with external knowledge bases such as Salesforce and
  ServiceNow. If you do, you'll get an `InvalidRequestException` error.

  For example, you're programmatically managing your external knowledge base, and
  you want to add or remove one of the fields that is being ingested from
  Salesforce. Do the following:

     Call
  [DeleteKnowledgeBase](https://docs.aws.amazon.com/amazon-q-connect/latest/APIReference/API_DeleteKnowledgeBase.html).     Call
  [DeleteDataIntegration](https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_DeleteDataIntegration.html).

     Call
  [CreateDataIntegration](https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html)
  to recreate the DataIntegration or a create different one.

     Call CreateKnowledgeBase.
  """
  @spec create_knowledge_base(map(), create_knowledge_base_request(), list()) ::
          {:ok, create_knowledge_base_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_knowledge_base_errors()}
  def create_knowledge_base(%Client{} = client, input, options \\ []) do
    url_path = "/knowledgeBases"
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
  Creates an Amazon Q in Connect message template.

  The name of the message template has to be unique for each knowledge base. The
  channel subtype of the message template is immutable and cannot be modified
  after creation. After the message template is created, you can use the `$LATEST`
  qualifier to reference the created message template.
  """
  @spec create_message_template(
          map(),
          String.t() | atom(),
          create_message_template_request(),
          list()
        ) ::
          {:ok, create_message_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_message_template_errors()}
  def create_message_template(%Client{} = client, knowledge_base_id, input, options \\ []) do
    url_path = "/knowledgeBases/#{AWS.Util.encode_uri(knowledge_base_id)}/messageTemplates"
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
  Uploads an attachment file to the specified Amazon Q in Connect message
  template.

  The name of the message template attachment has to be unique for each message
  template referenced by the `$LATEST` qualifier. The body of the attachment file
  should be encoded using base64 encoding. After the file is uploaded, you can use
  the pre-signed Amazon S3 URL returned in response to download the uploaded file.
  """
  @spec create_message_template_attachment(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          create_message_template_attachment_request(),
          list()
        ) ::
          {:ok, create_message_template_attachment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_message_template_attachment_errors()}
  def create_message_template_attachment(
        %Client{} = client,
        knowledge_base_id,
        message_template_id,
        input,
        options \\ []
      ) do
    url_path =
      "/knowledgeBases/#{AWS.Util.encode_uri(knowledge_base_id)}/messageTemplates/#{AWS.Util.encode_uri(message_template_id)}/attachments"

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
  Creates a new Amazon Q in Connect message template version from the current
  content and configuration of a message template.

  Versions are immutable and monotonically increasing. Once a version is created,
  you can reference a specific version of the message template by passing in
  `<message-template-id>:<versionNumber>` as the message template identifier. An
  error is displayed if the supplied `messageTemplateContentSha256` is different
  from the `messageTemplateContentSha256` of the message template with `$LATEST`
  qualifier. If multiple `CreateMessageTemplateVersion` requests are made while
  the message template remains the same, only the first invocation creates a new
  version and the succeeding requests will return the same response as the first
  invocation.
  """
  @spec create_message_template_version(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          create_message_template_version_request(),
          list()
        ) ::
          {:ok, create_message_template_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_message_template_version_errors()}
  def create_message_template_version(
        %Client{} = client,
        knowledge_base_id,
        message_template_id,
        input,
        options \\ []
      ) do
    url_path =
      "/knowledgeBases/#{AWS.Util.encode_uri(knowledge_base_id)}/messageTemplates/#{AWS.Util.encode_uri(message_template_id)}/versions"

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
  Creates an Amazon Q in Connect quick response.
  """
  @spec create_quick_response(map(), String.t() | atom(), create_quick_response_request(), list()) ::
          {:ok, create_quick_response_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_quick_response_errors()}
  def create_quick_response(%Client{} = client, knowledge_base_id, input, options \\ []) do
    url_path = "/knowledgeBases/#{AWS.Util.encode_uri(knowledge_base_id)}/quickResponses"
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
  Creates a session.

  A session is a contextual container used for generating recommendations. Amazon
  Connect creates a new Amazon Q in Connect session for each contact on which
  Amazon Q in Connect is enabled.
  """
  @spec create_session(map(), String.t() | atom(), create_session_request(), list()) ::
          {:ok, create_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_session_errors()}
  def create_session(%Client{} = client, assistant_id, input, options \\ []) do
    url_path = "/assistants/#{AWS.Util.encode_uri(assistant_id)}/sessions"
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
  Deactivates a specific version of the Amazon Q in Connect message template .

  After the version is deactivated, you can no longer use the `$ACTIVE_VERSION`
  qualifier to reference the version in active status.
  """
  @spec deactivate_message_template(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          deactivate_message_template_request(),
          list()
        ) ::
          {:ok, deactivate_message_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, deactivate_message_template_errors()}
  def deactivate_message_template(
        %Client{} = client,
        knowledge_base_id,
        message_template_id,
        input,
        options \\ []
      ) do
    url_path =
      "/knowledgeBases/#{AWS.Util.encode_uri(knowledge_base_id)}/messageTemplates/#{AWS.Util.encode_uri(message_template_id)}/deactivate"

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
  Deletes an Amazon Q in Connect AI Agent.
  """
  @spec delete_a_i_agent(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_a_i_agent_request(),
          list()
        ) ::
          {:ok, delete_a_i_agent_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_a_i_agent_errors()}
  def delete_a_i_agent(%Client{} = client, ai_agent_id, assistant_id, input, options \\ []) do
    url_path =
      "/assistants/#{AWS.Util.encode_uri(assistant_id)}/aiagents/#{AWS.Util.encode_uri(ai_agent_id)}"

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
  Deletes an Amazon Q in Connect AI Agent Version.
  """
  @spec delete_a_i_agent_version(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          delete_a_i_agent_version_request(),
          list()
        ) ::
          {:ok, delete_a_i_agent_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Deletes an Amazon Q in Connect AI Guardrail.
  """
  @spec delete_a_i_guardrail(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_a_i_guardrail_request(),
          list()
        ) ::
          {:ok, delete_a_i_guardrail_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_a_i_guardrail_errors()}
  def delete_a_i_guardrail(
        %Client{} = client,
        ai_guardrail_id,
        assistant_id,
        input,
        options \\ []
      ) do
    url_path =
      "/assistants/#{AWS.Util.encode_uri(assistant_id)}/aiguardrails/#{AWS.Util.encode_uri(ai_guardrail_id)}"

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
  Delete and Amazon Q in Connect AI Guardrail version.
  """
  @spec delete_a_i_guardrail_version(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          delete_a_i_guardrail_version_request(),
          list()
        ) ::
          {:ok, delete_a_i_guardrail_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_a_i_guardrail_version_errors()}
  def delete_a_i_guardrail_version(
        %Client{} = client,
        ai_guardrail_id,
        assistant_id,
        version_number,
        input,
        options \\ []
      ) do
    url_path =
      "/assistants/#{AWS.Util.encode_uri(assistant_id)}/aiguardrails/#{AWS.Util.encode_uri(ai_guardrail_id)}/versions/#{AWS.Util.encode_uri(version_number)}"

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
  Deletes an Amazon Q in Connect AI Prompt.
  """
  @spec delete_a_iprompt(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_a_iprompt_request(),
          list()
        ) ::
          {:ok, delete_a_iprompt_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_a_iprompt_errors()}
  def delete_a_iprompt(%Client{} = client, ai_prompt_id, assistant_id, input, options \\ []) do
    url_path =
      "/assistants/#{AWS.Util.encode_uri(assistant_id)}/aiprompts/#{AWS.Util.encode_uri(ai_prompt_id)}"

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
  Delete and Amazon Q in Connect AI Prompt version.
  """
  @spec delete_a_iprompt_version(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          delete_a_iprompt_version_request(),
          list()
        ) ::
          {:ok, delete_a_iprompt_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Deletes an assistant.
  """
  @spec delete_assistant(map(), String.t() | atom(), delete_assistant_request(), list()) ::
          {:ok, delete_assistant_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_assistant_errors()}
  def delete_assistant(%Client{} = client, assistant_id, input, options \\ []) do
    url_path = "/assistants/#{AWS.Util.encode_uri(assistant_id)}"
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
  Deletes an assistant association.
  """
  @spec delete_assistant_association(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_assistant_association_request(),
          list()
        ) ::
          {:ok, delete_assistant_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Deletes the content.
  """
  @spec delete_content(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_content_request(),
          list()
        ) ::
          {:ok, delete_content_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_content_errors()}
  def delete_content(%Client{} = client, content_id, knowledge_base_id, input, options \\ []) do
    url_path =
      "/knowledgeBases/#{AWS.Util.encode_uri(knowledge_base_id)}/contents/#{AWS.Util.encode_uri(content_id)}"

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
  Deletes the content association.

  For more information about content associations--what they are and when they are
  used--see [Integrate Amazon Q in Connect with step-by-step guides](https://docs.aws.amazon.com/connect/latest/adminguide/integrate-q-with-guides.html)
  in the *Amazon Connect Administrator Guide*.
  """
  @spec delete_content_association(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          delete_content_association_request(),
          list()
        ) ::
          {:ok, delete_content_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Deletes the quick response import job.
  """
  @spec delete_import_job(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_import_job_request(),
          list()
        ) ::
          {:ok, delete_import_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Deletes the knowledge base.

  When you use this API to delete an external knowledge base such as Salesforce or
  ServiceNow, you must also delete the [Amazon AppIntegrations](https://docs.aws.amazon.com/appintegrations/latest/APIReference/Welcome.html)
  DataIntegration. This is because you can't reuse the DataIntegration after it's
  been associated with an external knowledge base. However, you can delete and
  recreate it. See
  [DeleteDataIntegration](https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_DeleteDataIntegration.html) and
  [CreateDataIntegration](https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html)
  in the *Amazon AppIntegrations API Reference*.
  """
  @spec delete_knowledge_base(map(), String.t() | atom(), delete_knowledge_base_request(), list()) ::
          {:ok, delete_knowledge_base_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_knowledge_base_errors()}
  def delete_knowledge_base(%Client{} = client, knowledge_base_id, input, options \\ []) do
    url_path = "/knowledgeBases/#{AWS.Util.encode_uri(knowledge_base_id)}"
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
  Deletes an Amazon Q in Connect message template entirely or a specific version
  of the message template if version is supplied in the request.

  You can provide the message template identifier as
  `<message-template-id>:<versionNumber>` to delete a specific version of the
  message template. If it is not supplied, the message template and all available
  versions will be deleted.
  """
  @spec delete_message_template(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_message_template_request(),
          list()
        ) ::
          {:ok, delete_message_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_message_template_errors()}
  def delete_message_template(
        %Client{} = client,
        knowledge_base_id,
        message_template_id,
        input,
        options \\ []
      ) do
    url_path =
      "/knowledgeBases/#{AWS.Util.encode_uri(knowledge_base_id)}/messageTemplates/#{AWS.Util.encode_uri(message_template_id)}"

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
  Deletes the attachment file from the Amazon Q in Connect message template that
  is referenced by `$LATEST` qualifier.

  Attachments on available message template versions will remain unchanged.
  """
  @spec delete_message_template_attachment(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          delete_message_template_attachment_request(),
          list()
        ) ::
          {:ok, delete_message_template_attachment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_message_template_attachment_errors()}
  def delete_message_template_attachment(
        %Client{} = client,
        attachment_id,
        knowledge_base_id,
        message_template_id,
        input,
        options \\ []
      ) do
    url_path =
      "/knowledgeBases/#{AWS.Util.encode_uri(knowledge_base_id)}/messageTemplates/#{AWS.Util.encode_uri(message_template_id)}/attachments/#{AWS.Util.encode_uri(attachment_id)}"

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
  Deletes a quick response.
  """
  @spec delete_quick_response(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_quick_response_request(),
          list()
        ) ::
          {:ok, delete_quick_response_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Gets an Amazon Q in Connect AI Agent.
  """
  @spec get_a_i_agent(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_a_i_agent_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Gets the Amazon Q in Connect AI Guardrail.
  """
  @spec get_a_i_guardrail(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_a_i_guardrail_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_a_i_guardrail_errors()}
  def get_a_i_guardrail(%Client{} = client, ai_guardrail_id, assistant_id, options \\ []) do
    url_path =
      "/assistants/#{AWS.Util.encode_uri(assistant_id)}/aiguardrails/#{AWS.Util.encode_uri(ai_guardrail_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets and Amazon Q in Connect AI Prompt.
  """
  @spec get_a_iprompt(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_a_iprompt_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  @spec get_assistant(map(), String.t() | atom(), list()) ::
          {:ok, get_assistant_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  @spec get_assistant_association(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_assistant_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  @spec get_content(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_content_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  used--see [Integrate Amazon Q in Connect with step-by-step guides](https://docs.aws.amazon.com/connect/latest/adminguide/integrate-q-with-guides.html)
  in the *Amazon Connect Administrator Guide*.
  """
  @spec get_content_association(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          list()
        ) ::
          {:ok, get_content_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  @spec get_content_summary(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_content_summary_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  @spec get_import_job(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_import_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  @spec get_knowledge_base(map(), String.t() | atom(), list()) ::
          {:ok, get_knowledge_base_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_knowledge_base_errors()}
  def get_knowledge_base(%Client{} = client, knowledge_base_id, options \\ []) do
    url_path = "/knowledgeBases/#{AWS.Util.encode_uri(knowledge_base_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the Amazon Q in Connect message template.

  The message template identifier can contain an optional qualifier, for example,
  `<message-template-id>:<qualifier>`, which is either an actual version number or
  an Amazon Q Connect managed qualifier `$ACTIVE_VERSION` | `$LATEST`. If it is
  not supplied, then `$LATEST` is assumed implicitly.
  """
  @spec get_message_template(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_message_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_message_template_errors()}
  def get_message_template(
        %Client{} = client,
        knowledge_base_id,
        message_template_id,
        options \\ []
      ) do
    url_path =
      "/knowledgeBases/#{AWS.Util.encode_uri(knowledge_base_id)}/messageTemplates/#{AWS.Util.encode_uri(message_template_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves next message on an Amazon Q in Connect session.
  """
  @spec get_next_message(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          list()
        ) ::
          {:ok, get_next_message_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_next_message_errors()}
  def get_next_message(
        %Client{} = client,
        assistant_id,
        session_id,
        next_message_token,
        options \\ []
      ) do
    url_path =
      "/assistants/#{AWS.Util.encode_uri(assistant_id)}/sessions/#{AWS.Util.encode_uri(session_id)}/messages/next"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_message_token) do
        [{"nextMessageToken", next_message_token} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the quick response.
  """
  @spec get_quick_response(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_quick_response_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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

  To receive generative responses after March 1, 2024, you will need to create a
  new Assistant in the Amazon Connect console and integrate the Amazon Q in
  Connect JavaScript library (amazon-q-connectjs) into your applications.

  Retrieves recommendations for the specified session. To avoid retrieving the
  same recommendations in subsequent calls, use
  [NotifyRecommendationsReceived](https://docs.aws.amazon.com/amazon-q-connect/latest/APIReference/API_NotifyRecommendationsReceived.html). This API supports long-polling behavior with the `waitTimeSeconds` parameter.
  Short poll is the default behavior and only returns recommendations already
  available. To perform a manual query against an assistant, use
  [QueryAssistant](https://docs.aws.amazon.com/amazon-q-connect/latest/APIReference/API_QueryAssistant.html).
  """
  @spec get_recommendations(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_recommendations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_recommendations_errors()}
  def get_recommendations(
        %Client{} = client,
        assistant_id,
        session_id,
        max_results \\ nil,
        next_chunk_token \\ nil,
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
      if !is_nil(next_chunk_token) do
        [{"nextChunkToken", next_chunk_token} | query_params]
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
  @spec get_session(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_a_i_agent_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_a_i_agents_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Lists AI Guardrail versions.
  """
  @spec list_a_i_guardrail_versions(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_a_i_guardrail_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_a_i_guardrail_versions_errors()}
  def list_a_i_guardrail_versions(
        %Client{} = client,
        ai_guardrail_id,
        assistant_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/assistants/#{AWS.Util.encode_uri(assistant_id)}/aiguardrails/#{AWS.Util.encode_uri(ai_guardrail_id)}/versions"

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
  Lists the AI Guardrails available on the Amazon Q in Connect assistant.
  """
  @spec list_a_i_guardrails(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_a_i_guardrails_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_a_i_guardrails_errors()}
  def list_a_i_guardrails(
        %Client{} = client,
        assistant_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/assistants/#{AWS.Util.encode_uri(assistant_id)}/aiguardrails"
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
  Lists AI Prompt versions.
  """
  @spec list_a_iprompt_versions(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_a_iprompt_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_a_iprompts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  @spec list_assistant_associations(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_assistant_associations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  @spec list_assistants(map(), String.t() | atom() | nil, String.t() | atom() | nil, list()) ::
          {:ok, list_assistants_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  used--see [Integrate Amazon Q in Connect with step-by-step guides](https://docs.aws.amazon.com/connect/latest/adminguide/integrate-q-with-guides.html)
  in the *Amazon Connect Administrator Guide*.
  """
  @spec list_content_associations(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_content_associations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  @spec list_contents(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_contents_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  @spec list_import_jobs(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_import_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  @spec list_knowledge_bases(map(), String.t() | atom() | nil, String.t() | atom() | nil, list()) ::
          {:ok, list_knowledge_bases_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Lists all the available versions for the specified Amazon Q in Connect message
  template.
  """
  @spec list_message_template_versions(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_message_template_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_message_template_versions_errors()}
  def list_message_template_versions(
        %Client{} = client,
        knowledge_base_id,
        message_template_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/knowledgeBases/#{AWS.Util.encode_uri(knowledge_base_id)}/messageTemplates/#{AWS.Util.encode_uri(message_template_id)}/versions"

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
  Lists all the available Amazon Q in Connect message templates for the specified
  knowledge base.
  """
  @spec list_message_templates(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_message_templates_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_message_templates_errors()}
  def list_message_templates(
        %Client{} = client,
        knowledge_base_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/knowledgeBases/#{AWS.Util.encode_uri(knowledge_base_id)}/messageTemplates"
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
  Lists messages on an Amazon Q in Connect session.
  """
  @spec list_messages(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_messages_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_messages_errors()}
  def list_messages(
        %Client{} = client,
        assistant_id,
        session_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/assistants/#{AWS.Util.encode_uri(assistant_id)}/sessions/#{AWS.Util.encode_uri(session_id)}/messages"

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
  @spec list_quick_responses(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_quick_responses_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Removes the specified recommendations from the specified assistant's queue of
  newly available recommendations.

  You can use this API in conjunction with
  [GetRecommendations](https://docs.aws.amazon.com/amazon-q-connect/latest/APIReference/API_GetRecommendations.html)
  and a `waitTimeSeconds` input for long-polling behavior and avoiding duplicate
  recommendations.
  """
  @spec notify_recommendations_received(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          notify_recommendations_received_request(),
          list()
        ) ::
          {:ok, notify_recommendations_received_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Provides feedback against the specified assistant for the specified target.

  This API only supports generative targets.
  """
  @spec put_feedback(map(), String.t() | atom(), put_feedback_request(), list()) ::
          {:ok, put_feedback_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_feedback_errors()}
  def put_feedback(%Client{} = client, assistant_id, input, options \\ []) do
    url_path = "/assistants/#{AWS.Util.encode_uri(assistant_id)}/feedback"
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
  This API will be discontinued starting June 1, 2024.

  To receive generative responses after March 1, 2024, you will need to create a
  new Assistant in the Amazon Connect console and integrate the Amazon Q in
  Connect JavaScript library (amazon-q-connectjs) into your applications.

  Performs a manual search against the specified assistant. To retrieve
  recommendations for an assistant, use
  [GetRecommendations](https://docs.aws.amazon.com/amazon-q-connect/latest/APIReference/API_GetRecommendations.html).
  """
  @spec query_assistant(map(), String.t() | atom(), query_assistant_request(), list()) ::
          {:ok, query_assistant_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, query_assistant_errors()}
  def query_assistant(%Client{} = client, assistant_id, input, options \\ []) do
    url_path = "/assistants/#{AWS.Util.encode_uri(assistant_id)}/query"
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
  Removes the AI Agent that is set for use by default on an Amazon Q in Connect
  Assistant.
  """
  @spec remove_assistant_a_i_agent(
          map(),
          String.t() | atom(),
          remove_assistant_a_i_agent_request(),
          list()
        ) ::
          {:ok, remove_assistant_a_i_agent_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, remove_assistant_a_i_agent_errors()}
  def remove_assistant_a_i_agent(%Client{} = client, assistant_id, input, options \\ []) do
    url_path = "/assistants/#{AWS.Util.encode_uri(assistant_id)}/aiagentConfiguration"
    headers = []
    custom_headers = []

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
      custom_headers ++ headers,
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
          String.t() | atom(),
          remove_knowledge_base_template_uri_request(),
          list()
        ) ::
          {:ok, remove_knowledge_base_template_uri_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, remove_knowledge_base_template_uri_errors()}
  def remove_knowledge_base_template_uri(
        %Client{} = client,
        knowledge_base_id,
        input,
        options \\ []
      ) do
    url_path = "/knowledgeBases/#{AWS.Util.encode_uri(knowledge_base_id)}/templateUri"
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
  Renders the Amazon Q in Connect message template based on the attribute values
  provided and generates the message content.

  For any variable present in the message template, if the attribute value is
  neither provided in the attribute request parameter nor the default attribute of
  the message template, the rendered message content will keep the variable
  placeholder as it is and return the attribute keys that are missing.
  """
  @spec render_message_template(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          render_message_template_request(),
          list()
        ) ::
          {:ok, render_message_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, render_message_template_errors()}
  def render_message_template(
        %Client{} = client,
        knowledge_base_id,
        message_template_id,
        input,
        options \\ []
      ) do
    url_path =
      "/knowledgeBases/#{AWS.Util.encode_uri(knowledge_base_id)}/messageTemplates/#{AWS.Util.encode_uri(message_template_id)}/render"

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
  Searches for content in a specified knowledge base.

  Can be used to get a specific content resource by its name.
  """
  @spec search_content(map(), String.t() | atom(), search_content_request(), list()) ::
          {:ok, search_content_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, search_content_errors()}
  def search_content(%Client{} = client, knowledge_base_id, input, options \\ []) do
    url_path = "/knowledgeBases/#{AWS.Util.encode_uri(knowledge_base_id)}/search"
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
  Searches for Amazon Q in Connect message templates in the specified knowledge
  base.
  """
  @spec search_message_templates(
          map(),
          String.t() | atom(),
          search_message_templates_request(),
          list()
        ) ::
          {:ok, search_message_templates_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, search_message_templates_errors()}
  def search_message_templates(%Client{} = client, knowledge_base_id, input, options \\ []) do
    url_path = "/knowledgeBases/#{AWS.Util.encode_uri(knowledge_base_id)}/search/messageTemplates"
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
  Searches existing Amazon Q in Connect quick responses in an Amazon Q in Connect
  knowledge base.
  """
  @spec search_quick_responses(
          map(),
          String.t() | atom(),
          search_quick_responses_request(),
          list()
        ) ::
          {:ok, search_quick_responses_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, search_quick_responses_errors()}
  def search_quick_responses(%Client{} = client, knowledge_base_id, input, options \\ []) do
    url_path = "/knowledgeBases/#{AWS.Util.encode_uri(knowledge_base_id)}/search/quickResponses"
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
  Searches for sessions.
  """
  @spec search_sessions(map(), String.t() | atom(), search_sessions_request(), list()) ::
          {:ok, search_sessions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, search_sessions_errors()}
  def search_sessions(%Client{} = client, assistant_id, input, options \\ []) do
    url_path = "/assistants/#{AWS.Util.encode_uri(assistant_id)}/searchSessions"
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
  Submits a message to the Amazon Q in Connect session.
  """
  @spec send_message(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          send_message_request(),
          list()
        ) ::
          {:ok, send_message_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, send_message_errors()}
  def send_message(%Client{} = client, assistant_id, session_id, input, options \\ []) do
    url_path =
      "/assistants/#{AWS.Util.encode_uri(assistant_id)}/sessions/#{AWS.Util.encode_uri(session_id)}/message"

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
  Get a URL to upload content to a knowledge base.

  To upload content, first make a PUT request to the returned URL with your file,
  making sure to include the required headers. Then use
  [CreateContent](https://docs.aws.amazon.com/amazon-q-connect/latest/APIReference/API_CreateContent.html) to finalize the content creation process or
  [UpdateContent](https://docs.aws.amazon.com/amazon-q-connect/latest/APIReference/API_UpdateContent.html)
  to modify an existing resource. You can only upload content to a knowledge base
  of type CUSTOM.
  """
  @spec start_content_upload(map(), String.t() | atom(), start_content_upload_request(), list()) ::
          {:ok, start_content_upload_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_content_upload_errors()}
  def start_content_upload(%Client{} = client, knowledge_base_id, input, options \\ []) do
    url_path = "/knowledgeBases/#{AWS.Util.encode_uri(knowledge_base_id)}/upload"
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
  Start an asynchronous job to import Amazon Q in Connect resources from an
  uploaded source file.

  Before calling this API, use
  [StartContentUpload](https://docs.aws.amazon.com/wisdom/latest/APIReference/API_StartContentUpload.html) to upload an asset that contains the resource data.

    * For importing Amazon Q in Connect quick responses, you need to
  upload a csv file including the quick responses. For information about how to
  format the csv file for importing quick responses, see [Import quick
  responses](https://docs.aws.amazon.com/console/connect/quick-responses/add-data).
  """
  @spec start_import_job(map(), String.t() | atom(), start_import_job_request(), list()) ::
          {:ok, start_import_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_import_job_errors()}
  def start_import_job(%Client{} = client, knowledge_base_id, input, options \\ []) do
    url_path = "/knowledgeBases/#{AWS.Util.encode_uri(knowledge_base_id)}/importJobs"
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
  Adds the specified tags to the specified resource.
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
      200
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
      200
    )
  end

  @doc """
  Updates an AI Agent.
  """
  @spec update_a_i_agent(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_a_i_agent_request(),
          list()
        ) ::
          {:ok, update_a_i_agent_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_a_i_agent_errors()}
  def update_a_i_agent(%Client{} = client, ai_agent_id, assistant_id, input, options \\ []) do
    url_path =
      "/assistants/#{AWS.Util.encode_uri(assistant_id)}/aiagents/#{AWS.Util.encode_uri(ai_agent_id)}"

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
  Updates an AI Guardrail.
  """
  @spec update_a_i_guardrail(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_a_i_guardrail_request(),
          list()
        ) ::
          {:ok, update_a_i_guardrail_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_a_i_guardrail_errors()}
  def update_a_i_guardrail(
        %Client{} = client,
        ai_guardrail_id,
        assistant_id,
        input,
        options \\ []
      ) do
    url_path =
      "/assistants/#{AWS.Util.encode_uri(assistant_id)}/aiguardrails/#{AWS.Util.encode_uri(ai_guardrail_id)}"

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
  Updates an AI Prompt.
  """
  @spec update_a_iprompt(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_a_iprompt_request(),
          list()
        ) ::
          {:ok, update_a_iprompt_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_a_iprompt_errors()}
  def update_a_iprompt(%Client{} = client, ai_prompt_id, assistant_id, input, options \\ []) do
    url_path =
      "/assistants/#{AWS.Util.encode_uri(assistant_id)}/aiprompts/#{AWS.Util.encode_uri(ai_prompt_id)}"

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
  Updates the AI Agent that is set for use by default on an Amazon Q in Connect
  Assistant.
  """
  @spec update_assistant_a_i_agent(
          map(),
          String.t() | atom(),
          update_assistant_a_i_agent_request(),
          list()
        ) ::
          {:ok, update_assistant_a_i_agent_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_assistant_a_i_agent_errors()}
  def update_assistant_a_i_agent(%Client{} = client, assistant_id, input, options \\ []) do
    url_path = "/assistants/#{AWS.Util.encode_uri(assistant_id)}/aiagentConfiguration"
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
  Updates information about the content.
  """
  @spec update_content(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_content_request(),
          list()
        ) ::
          {:ok, update_content_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_content_errors()}
  def update_content(%Client{} = client, content_id, knowledge_base_id, input, options \\ []) do
    url_path =
      "/knowledgeBases/#{AWS.Util.encode_uri(knowledge_base_id)}/contents/#{AWS.Util.encode_uri(content_id)}"

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
  Updates the template URI of a knowledge base.

  This is only supported for knowledge bases of type EXTERNAL. Include a single
  variable in `${variable}` format; this interpolated by Amazon Q in Connect using
  ingested content. For example, if you ingest a Salesforce article, it has an
  `Id` value, and you can set the template URI to
  `https://myInstanceName.lightning.force.com/lightning/r/Knowledge__kav/*${Id}*/view`.
  """
  @spec update_knowledge_base_template_uri(
          map(),
          String.t() | atom(),
          update_knowledge_base_template_uri_request(),
          list()
        ) ::
          {:ok, update_knowledge_base_template_uri_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_knowledge_base_template_uri_errors()}
  def update_knowledge_base_template_uri(
        %Client{} = client,
        knowledge_base_id,
        input,
        options \\ []
      ) do
    url_path = "/knowledgeBases/#{AWS.Util.encode_uri(knowledge_base_id)}/templateUri"
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
  Updates the Amazon Q in Connect message template.

  Partial update is supported. If any field is not supplied, it will remain
  unchanged for the message template that is referenced by the `$LATEST`
  qualifier. Any modification will only apply to the message template that is
  referenced by the `$LATEST` qualifier. The fields for all available versions
  will remain unchanged.
  """
  @spec update_message_template(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_message_template_request(),
          list()
        ) ::
          {:ok, update_message_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_message_template_errors()}
  def update_message_template(
        %Client{} = client,
        knowledge_base_id,
        message_template_id,
        input,
        options \\ []
      ) do
    url_path =
      "/knowledgeBases/#{AWS.Util.encode_uri(knowledge_base_id)}/messageTemplates/#{AWS.Util.encode_uri(message_template_id)}"

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
  Updates the Amazon Q in Connect message template metadata.

  Note that any modification to the message template’s name, description and
  grouping configuration will applied to the message template pointed by the
  `$LATEST` qualifier and all available versions. Partial update is supported. If
  any field is not supplied, it will remain unchanged for the message template.
  """
  @spec update_message_template_metadata(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_message_template_metadata_request(),
          list()
        ) ::
          {:ok, update_message_template_metadata_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_message_template_metadata_errors()}
  def update_message_template_metadata(
        %Client{} = client,
        knowledge_base_id,
        message_template_id,
        input,
        options \\ []
      ) do
    url_path =
      "/knowledgeBases/#{AWS.Util.encode_uri(knowledge_base_id)}/messageTemplates/#{AWS.Util.encode_uri(message_template_id)}/metadata"

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
  Updates an existing Amazon Q in Connect quick response.
  """
  @spec update_quick_response(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_quick_response_request(),
          list()
        ) ::
          {:ok, update_quick_response_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Updates a session.

  A session is a contextual container used for generating recommendations. Amazon
  Connect updates the existing Amazon Q in Connect session for each contact on
  which Amazon Q in Connect is enabled.
  """
  @spec update_session(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_session_request(),
          list()
        ) ::
          {:ok, update_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_session_errors()}
  def update_session(%Client{} = client, assistant_id, session_id, input, options \\ []) do
    url_path =
      "/assistants/#{AWS.Util.encode_uri(assistant_id)}/sessions/#{AWS.Util.encode_uri(session_id)}"

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
  Updates the data stored on an Amazon Q in Connect Session.
  """
  @spec update_session_data(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_session_data_request(),
          list()
        ) ::
          {:ok, update_session_data_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_session_data_errors()}
  def update_session_data(%Client{} = client, assistant_id, session_id, input, options \\ []) do
    url_path =
      "/assistants/#{AWS.Util.encode_uri(assistant_id)}/sessions/#{AWS.Util.encode_uri(session_id)}/data"

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
