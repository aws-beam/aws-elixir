# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.BedrockAgentRuntime do
  @moduledoc """
  Contains APIs related to model invocation and querying of knowledge bases.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      function_invocation_input() :: %{
        "actionGroup" => [String.t()],
        "actionInvocationType" => list(any()),
        "function" => [String.t()],
        "parameters" => list(function_parameter()())
      }

  """
  @type function_invocation_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      file_part() :: %{
        "files" => list(output_file()())
      }

  """
  @type file_part() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      knowledge_base_configuration() :: %{
        "knowledgeBaseId" => String.t(),
        "retrievalConfiguration" => knowledge_base_retrieval_configuration()
      }

  """
  @type knowledge_base_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      rationale() :: %{
        "text" => String.t(),
        "traceId" => String.t()
      }

  """
  @type rationale() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      api_request_body() :: %{
        "content" => map()
      }

  """
  @type api_request_body() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      guardrail_content_policy_assessment() :: %{
        "filters" => list(guardrail_content_filter()())
      }

  """
  @type guardrail_content_policy_assessment() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      optimize_prompt_response() :: %{
        "optimizedPrompt" => list()
      }

  """
  @type optimize_prompt_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      text_inference_config() :: %{
        "maxTokens" => integer(),
        "stopSequences" => list([String.t()]()),
        "temperature" => float(),
        "topP" => float()
      }

  """
  @type text_inference_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      code_interpreter_invocation_output() :: %{
        "executionError" => [String.t()],
        "executionOutput" => [String.t()],
        "executionTimeout" => [boolean()],
        "files" => list([String.t()]())
      }

  """
  @type code_interpreter_invocation_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      external_source() :: %{
        "byteContent" => byte_content_doc(),
        "s3Location" => s3_object_doc(),
        "sourceType" => list(any())
      }

  """
  @type external_source() :: %{String.t() => any()}

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

      bad_gateway_exception() :: %{
        "message" => String.t(),
        "resourceName" => String.t()
      }

  """
  @type bad_gateway_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      inline_session_state() :: %{
        "files" => list(input_file()()),
        "invocationId" => [String.t()],
        "promptSessionAttributes" => map(),
        "returnControlInvocationResults" => list(list()()),
        "sessionAttributes" => map()
      }

  """
  @type inline_session_state() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      input_file() :: %{
        "name" => [String.t()],
        "source" => file_source(),
        "useCase" => list(any())
      }

  """
  @type input_file() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_object_doc() :: %{
        "uri" => String.t()
      }

  """
  @type s3_object_doc() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      function_parameter() :: %{
        "name" => [String.t()],
        "type" => [String.t()],
        "value" => [String.t()]
      }

  """
  @type function_parameter() :: %{String.t() => any()}

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

      optimized_prompt_event() :: %{
        "optimizedPrompt" => list()
      }

  """
  @type optimized_prompt_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dependency_failed_exception() :: %{
        "message" => String.t(),
        "resourceName" => String.t()
      }

  """
  @type dependency_failed_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      citation() :: %{
        "generatedResponsePart" => generated_response_part(),
        "retrievedReferences" => list(retrieved_reference()())
      }

  """
  @type citation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      inline_agent_file_part() :: %{
        "files" => list(output_file()())
      }

  """
  @type inline_agent_file_part() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      retrieve_and_generate_response() :: %{
        "citations" => list(citation()()),
        "guardrailAction" => list(any()),
        "output" => retrieve_and_generate_output(),
        "sessionId" => String.t()
      }

  """
  @type retrieve_and_generate_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_agent_memory_response() :: %{}

  """
  @type delete_agent_memory_response() :: %{}

  @typedoc """

  ## Example:

      metadata() :: %{
        "usage" => usage()
      }

  """
  @type metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      knowledge_base_query() :: %{
        "text" => [String.t()]
      }

  """
  @type knowledge_base_query() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      payload_part() :: %{
        "attribution" => attribution(),
        "bytes" => binary()
      }

  """
  @type payload_part() :: %{String.t() => any()}

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

      failure_trace() :: %{
        "failureReason" => String.t(),
        "traceId" => String.t()
      }

  """
  @type failure_trace() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      inline_agent_return_control_payload() :: %{
        "invocationId" => [String.t()],
        "invocationInputs" => list(list()())
      }

  """
  @type inline_agent_return_control_payload() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      guardrail_managed_word() :: %{
        "action" => list(any()),
        "match" => [String.t()],
        "type" => list(any())
      }

  """
  @type guardrail_managed_word() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      action_group_invocation_input() :: %{
        "actionGroupName" => String.t(),
        "apiPath" => String.t(),
        "executionType" => list(any()),
        "function" => String.t(),
        "invocationId" => [String.t()],
        "parameters" => list(parameter()()),
        "requestBody" => request_body(),
        "verb" => String.t()
      }

  """
  @type action_group_invocation_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      retrieved_reference() :: %{
        "content" => retrieval_result_content(),
        "location" => retrieval_result_location(),
        "metadata" => map()
      }

  """
  @type retrieved_reference() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      retrieval_result_location() :: %{
        "confluenceLocation" => retrieval_result_confluence_location(),
        "s3Location" => retrieval_result_s3_location(),
        "salesforceLocation" => retrieval_result_salesforce_location(),
        "sharePointLocation" => retrieval_result_share_point_location(),
        "type" => list(any()),
        "webLocation" => retrieval_result_web_location()
      }

  """
  @type retrieval_result_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      api_parameter() :: %{
        "name" => [String.t()],
        "type" => [String.t()],
        "value" => [String.t()]
      }

  """
  @type api_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      retrieve_and_generate_session_configuration() :: %{
        "kmsKeyArn" => String.t()
      }

  """
  @type retrieve_and_generate_session_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      retrieve_and_generate_request() :: %{
        optional("retrieveAndGenerateConfiguration") => retrieve_and_generate_configuration(),
        optional("sessionConfiguration") => retrieve_and_generate_session_configuration(),
        optional("sessionId") => String.t(),
        required("input") => retrieve_and_generate_input()
      }

  """
  @type retrieve_and_generate_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      retrieve_and_generate_configuration() :: %{
        "externalSourcesConfiguration" => external_sources_retrieve_and_generate_configuration(),
        "knowledgeBaseConfiguration" => knowledge_base_retrieve_and_generate_configuration(),
        "type" => list(any())
      }

  """
  @type retrieve_and_generate_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      retrieval_result_s3_location() :: %{
        "uri" => [String.t()]
      }

  """
  @type retrieval_result_s3_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invoke_flow_response() :: %{
        "responseStream" => list()
      }

  """
  @type invoke_flow_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      usage() :: %{
        "inputTokens" => [integer()],
        "outputTokens" => [integer()]
      }

  """
  @type usage() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      retrieval_result_content() :: %{
        "text" => [String.t()]
      }

  """
  @type retrieval_result_content() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      guardrail_configuration_with_arn() :: %{
        "guardrailIdentifier" => String.t(),
        "guardrailVersion" => String.t()
      }

  """
  @type guardrail_configuration_with_arn() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      flow_trace_node_input_field() :: %{
        "content" => list(),
        "nodeInputName" => String.t()
      }

  """
  @type flow_trace_node_input_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      guardrail_custom_word() :: %{
        "action" => list(any()),
        "match" => [String.t()]
      }

  """
  @type guardrail_custom_word() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      content_body() :: %{
        "body" => [String.t()]
      }

  """
  @type content_body() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      knowledge_base_retrieve_and_generate_configuration() :: %{
        "generationConfiguration" => generation_configuration(),
        "knowledgeBaseId" => String.t(),
        "modelArn" => String.t(),
        "orchestrationConfiguration" => orchestration_configuration(),
        "retrievalConfiguration" => knowledge_base_retrieval_configuration()
      }

  """
  @type knowledge_base_retrieve_and_generate_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      observation() :: %{
        "actionGroupInvocationOutput" => action_group_invocation_output(),
        "codeInterpreterInvocationOutput" => code_interpreter_invocation_output(),
        "finalResponse" => final_response(),
        "knowledgeBaseLookupOutput" => knowledge_base_lookup_output(),
        "repromptResponse" => reprompt_response(),
        "traceId" => String.t(),
        "type" => list(any())
      }

  """
  @type observation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      guardrail_word_policy_assessment() :: %{
        "customWords" => list(guardrail_custom_word()()),
        "managedWordLists" => list(guardrail_managed_word()())
      }

  """
  @type guardrail_word_policy_assessment() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      flow_trace_event() :: %{
        "trace" => list()
      }

  """
  @type flow_trace_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      span() :: %{
        "end" => [integer()],
        "start" => [integer()]
      }

  """
  @type span() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      flow_trace_node_input_event() :: %{
        "fields" => list(flow_trace_node_input_field()()),
        "nodeName" => String.t(),
        "timestamp" => non_neg_integer()
      }

  """
  @type flow_trace_node_input_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      knowledge_base() :: %{
        "description" => String.t(),
        "knowledgeBaseId" => String.t(),
        "retrievalConfiguration" => knowledge_base_retrieval_configuration()
      }

  """
  @type knowledge_base() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      pre_processing_parsed_response() :: %{
        "isValid" => [boolean()],
        "rationale" => String.t()
      }

  """
  @type pre_processing_parsed_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      function_result() :: %{
        "actionGroup" => [String.t()],
        "confirmationState" => list(any()),
        "function" => [String.t()],
        "responseBody" => map(),
        "responseState" => list(any())
      }

  """
  @type function_result() :: %{String.t() => any()}

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

      query_transformation_configuration() :: %{
        "type" => list(any())
      }

  """
  @type query_transformation_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      post_processing_parsed_response() :: %{
        "text" => String.t()
      }

  """
  @type post_processing_parsed_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      guardrail_sensitive_information_policy_assessment() :: %{
        "piiEntities" => list(guardrail_pii_entity_filter()()),
        "regexes" => list(guardrail_regex_filter()())
      }

  """
  @type guardrail_sensitive_information_policy_assessment() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      knowledge_base_retrieval_configuration() :: %{
        "vectorSearchConfiguration" => knowledge_base_vector_search_configuration()
      }

  """
  @type knowledge_base_retrieval_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      guardrail_content_filter() :: %{
        "action" => list(any()),
        "confidence" => list(any()),
        "type" => list(any())
      }

  """
  @type guardrail_content_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      flow_completion_event() :: %{
        "completionReason" => list(any())
      }

  """
  @type flow_completion_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => String.t()
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      return_control_payload() :: %{
        "invocationId" => [String.t()],
        "invocationInputs" => list(list()())
      }

  """
  @type return_control_payload() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      text_response_part() :: %{
        "span" => span(),
        "text" => [String.t()]
      }

  """
  @type text_response_part() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invoke_agent_response() :: %{
        "completion" => list(),
        "contentType" => String.t(),
        "memoryId" => String.t(),
        "sessionId" => String.t()
      }

  """
  @type invoke_agent_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      session_state() :: %{
        "files" => list(input_file()()),
        "invocationId" => [String.t()],
        "knowledgeBaseConfigurations" => list(knowledge_base_configuration()()),
        "promptSessionAttributes" => map(),
        "returnControlInvocationResults" => list(list()()),
        "sessionAttributes" => map()
      }

  """
  @type session_state() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invoke_inline_agent_response() :: %{
        "completion" => list(),
        "contentType" => String.t(),
        "sessionId" => String.t()
      }

  """
  @type invoke_inline_agent_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      pre_processing_model_invocation_output() :: %{
        "metadata" => metadata(),
        "parsedResponse" => pre_processing_parsed_response(),
        "rawResponse" => raw_response(),
        "traceId" => String.t()
      }

  """
  @type pre_processing_model_invocation_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      parameter() :: %{
        "name" => [String.t()],
        "type" => [String.t()],
        "value" => [String.t()]
      }

  """
  @type parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      external_sources_retrieve_and_generate_configuration() :: %{
        "generationConfiguration" => external_sources_generation_configuration(),
        "modelArn" => String.t(),
        "sources" => list(external_source()())
      }

  """
  @type external_sources_retrieve_and_generate_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      api_invocation_input() :: %{
        "actionGroup" => [String.t()],
        "actionInvocationType" => list(any()),
        "apiPath" => String.t(),
        "httpMethod" => [String.t()],
        "parameters" => list(api_parameter()()),
        "requestBody" => api_request_body()
      }

  """
  @type api_invocation_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      retrieve_and_generate_input() :: %{
        "text" => [String.t()]
      }

  """
  @type retrieve_and_generate_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      retrieval_result_confluence_location() :: %{
        "url" => [String.t()]
      }

  """
  @type retrieval_result_confluence_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      flow_trace_condition() :: %{
        "conditionName" => [String.t()]
      }

  """
  @type flow_trace_condition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      reprompt_response() :: %{
        "source" => list(any()),
        "text" => [String.t()]
      }

  """
  @type reprompt_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      final_response() :: %{
        "text" => String.t()
      }

  """
  @type final_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      api_result() :: %{
        "actionGroup" => [String.t()],
        "apiPath" => String.t(),
        "confirmationState" => list(any()),
        "httpMethod" => [String.t()],
        "httpStatusCode" => [integer()],
        "responseBody" => map(),
        "responseState" => list(any())
      }

  """
  @type api_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      byte_content_doc() :: %{
        "contentType" => String.t(),
        "data" => binary(),
        "identifier" => String.t()
      }

  """
  @type byte_content_doc() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      external_sources_generation_configuration() :: %{
        "additionalModelRequestFields" => map(),
        "guardrailConfiguration" => guardrail_configuration(),
        "inferenceConfig" => inference_config(),
        "promptTemplate" => prompt_template()
      }

  """
  @type external_sources_generation_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      guardrail_trace() :: %{
        "action" => list(any()),
        "inputAssessments" => list(guardrail_assessment()()),
        "outputAssessments" => list(guardrail_assessment()()),
        "traceId" => String.t()
      }

  """
  @type guardrail_trace() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      knowledge_base_vector_search_configuration() :: %{
        "filter" => list(),
        "numberOfResults" => [integer()],
        "overrideSearchType" => list(any())
      }

  """
  @type knowledge_base_vector_search_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      filter_attribute() :: %{
        "key" => String.t(),
        "value" => any()
      }

  """
  @type filter_attribute() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      flow_trace_node_output_field() :: %{
        "content" => list(),
        "nodeOutputName" => String.t()
      }

  """
  @type flow_trace_node_output_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      function_definition() :: %{
        "description" => String.t(),
        "name" => String.t(),
        "parameters" => map(),
        "requireConfirmation" => list(any())
      }

  """
  @type function_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      flow_trace_node_output_event() :: %{
        "fields" => list(flow_trace_node_output_field()()),
        "nodeName" => String.t(),
        "timestamp" => non_neg_integer()
      }

  """
  @type flow_trace_node_output_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      retrieval_result_salesforce_location() :: %{
        "url" => [String.t()]
      }

  """
  @type retrieval_result_salesforce_location() :: %{String.t() => any()}

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

      output_file() :: %{
        "bytes" => binary(),
        "name" => [String.t()],
        "type" => String.t()
      }

  """
  @type output_file() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => String.t()
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      guardrail_assessment() :: %{
        "contentPolicy" => guardrail_content_policy_assessment(),
        "sensitiveInformationPolicy" => guardrail_sensitive_information_policy_assessment(),
        "topicPolicy" => guardrail_topic_policy_assessment(),
        "wordPolicy" => guardrail_word_policy_assessment()
      }

  """
  @type guardrail_assessment() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      model_invocation_input() :: %{
        "inferenceConfiguration" => inference_configuration(),
        "overrideLambda" => String.t(),
        "parserMode" => list(any()),
        "promptCreationMode" => list(any()),
        "text" => String.t(),
        "traceId" => String.t(),
        "type" => list(any())
      }

  """
  @type model_invocation_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      inline_agent_payload_part() :: %{
        "attribution" => attribution(),
        "bytes" => binary()
      }

  """
  @type inline_agent_payload_part() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      attribution() :: %{
        "citations" => list(citation()())
      }

  """
  @type attribution() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      trace_part() :: %{
        "agentAliasId" => String.t(),
        "agentId" => String.t(),
        "agentVersion" => String.t(),
        "sessionId" => String.t(),
        "trace" => list()
      }

  """
  @type trace_part() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      agent_action_group() :: %{
        "actionGroupExecutor" => list(),
        "actionGroupName" => String.t(),
        "apiSchema" => list(),
        "description" => String.t(),
        "functionSchema" => list(),
        "parentActionGroupSignature" => list(any())
      }

  """
  @type agent_action_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      retrieval_result_share_point_location() :: %{
        "url" => [String.t()]
      }

  """
  @type retrieval_result_share_point_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      orchestration_configuration() :: %{
        "additionalModelRequestFields" => map(),
        "inferenceConfig" => inference_config(),
        "promptTemplate" => prompt_template(),
        "queryTransformationConfiguration" => query_transformation_configuration()
      }

  """
  @type orchestration_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      prompt_template() :: %{
        "textPromptTemplate" => String.t()
      }

  """
  @type prompt_template() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => String.t()
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      inference_config() :: %{
        "textInferenceConfig" => text_inference_config()
      }

  """
  @type inference_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      guardrail_topic_policy_assessment() :: %{
        "topics" => list(guardrail_topic()())
      }

  """
  @type guardrail_topic_policy_assessment() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      generation_configuration() :: %{
        "additionalModelRequestFields" => map(),
        "guardrailConfiguration" => guardrail_configuration(),
        "inferenceConfig" => inference_config(),
        "promptTemplate" => prompt_template()
      }

  """
  @type generation_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      property_parameters() :: %{
        "properties" => list(parameter()())
      }

  """
  @type property_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      flow_input() :: %{
        "content" => list(),
        "nodeName" => String.t(),
        "nodeOutputName" => String.t()
      }

  """
  @type flow_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      flow_trace_condition_node_result_event() :: %{
        "nodeName" => String.t(),
        "satisfiedConditions" => list(flow_trace_condition()()),
        "timestamp" => non_neg_integer()
      }

  """
  @type flow_trace_condition_node_result_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      generated_response_part() :: %{
        "textResponsePart" => text_response_part()
      }

  """
  @type generated_response_part() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      memory_session_summary() :: %{
        "memoryId" => String.t(),
        "sessionExpiryTime" => non_neg_integer(),
        "sessionId" => String.t(),
        "sessionStartTime" => non_neg_integer(),
        "summaryText" => String.t()
      }

  """
  @type memory_session_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => String.t()
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_agent_memory_response() :: %{
        "memoryContents" => list(list()()),
        "nextToken" => String.t()
      }

  """
  @type get_agent_memory_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      text_prompt() :: %{
        "text" => [String.t()]
      }

  """
  @type text_prompt() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => String.t()
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      retrieve_and_generate_output() :: %{
        "text" => [String.t()]
      }

  """
  @type retrieve_and_generate_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      flow_output_event() :: %{
        "content" => list(),
        "nodeName" => String.t(),
        "nodeType" => list(any())
      }

  """
  @type flow_output_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invoke_inline_agent_request() :: %{
        optional("actionGroups") => list(agent_action_group()()),
        optional("customerEncryptionKeyArn") => String.t(),
        optional("enableTrace") => [boolean()],
        optional("endSession") => [boolean()],
        optional("guardrailConfiguration") => guardrail_configuration_with_arn(),
        optional("idleSessionTTLInSeconds") => integer(),
        optional("inlineSessionState") => inline_session_state(),
        optional("inputText") => String.t(),
        optional("knowledgeBases") => list(knowledge_base()()),
        optional("promptOverrideConfiguration") => prompt_override_configuration(),
        required("foundationModel") => String.t(),
        required("instruction") => String.t()
      }

  """
  @type invoke_inline_agent_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      action_group_invocation_output() :: %{
        "text" => String.t()
      }

  """
  @type action_group_invocation_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      raw_response() :: %{
        "content" => [String.t()]
      }

  """
  @type raw_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      guardrail_configuration() :: %{
        "guardrailId" => [String.t()],
        "guardrailVersion" => [String.t()]
      }

  """
  @type guardrail_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      guardrail_regex_filter() :: %{
        "action" => list(any()),
        "match" => [String.t()],
        "name" => [String.t()],
        "regex" => [String.t()]
      }

  """
  @type guardrail_regex_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      retrieval_result_web_location() :: %{
        "url" => [String.t()]
      }

  """
  @type retrieval_result_web_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_agent_memory_request() :: %{
        optional("memoryId") => String.t()
      }

  """
  @type delete_agent_memory_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      knowledge_base_lookup_output() :: %{
        "retrievedReferences" => list(retrieved_reference()())
      }

  """
  @type knowledge_base_lookup_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      analyze_prompt_event() :: %{
        "message" => [String.t()]
      }

  """
  @type analyze_prompt_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      byte_content_file() :: %{
        "data" => binary(),
        "mediaType" => String.t()
      }

  """
  @type byte_content_file() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      optimize_prompt_request() :: %{
        required("input") => list(),
        required("targetModelId") => [String.t()]
      }

  """
  @type optimize_prompt_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      retrieve_request() :: %{
        optional("nextToken") => String.t(),
        optional("retrievalConfiguration") => knowledge_base_retrieval_configuration(),
        required("retrievalQuery") => knowledge_base_query()
      }

  """
  @type retrieve_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invoke_agent_request() :: %{
        optional("enableTrace") => [boolean()],
        optional("endSession") => [boolean()],
        optional("inputText") => String.t(),
        optional("memoryId") => String.t(),
        optional("sessionState") => session_state()
      }

  """
  @type invoke_agent_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invocation_input() :: %{
        "actionGroupInvocationInput" => action_group_invocation_input(),
        "codeInterpreterInvocationInput" => code_interpreter_invocation_input(),
        "invocationType" => list(any()),
        "knowledgeBaseLookupInput" => knowledge_base_lookup_input(),
        "traceId" => String.t()
      }

  """
  @type invocation_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      request_body() :: %{
        "content" => map()
      }

  """
  @type request_body() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_agent_memory_request() :: %{
        optional("maxItems") => integer(),
        optional("nextToken") => String.t(),
        required("memoryId") => String.t(),
        required("memoryType") => list(any())
      }

  """
  @type get_agent_memory_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_object_file() :: %{
        "uri" => String.t()
      }

  """
  @type s3_object_file() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      post_processing_model_invocation_output() :: %{
        "metadata" => metadata(),
        "parsedResponse" => post_processing_parsed_response(),
        "rawResponse" => raw_response(),
        "traceId" => String.t()
      }

  """
  @type post_processing_model_invocation_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      guardrail_pii_entity_filter() :: %{
        "action" => list(any()),
        "match" => [String.t()],
        "type" => list(any())
      }

  """
  @type guardrail_pii_entity_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      orchestration_model_invocation_output() :: %{
        "metadata" => metadata(),
        "rawResponse" => raw_response(),
        "traceId" => String.t()
      }

  """
  @type orchestration_model_invocation_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invoke_flow_request() :: %{
        optional("enableTrace") => [boolean()],
        required("inputs") => list(flow_input()())
      }

  """
  @type invoke_flow_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      file_source() :: %{
        "byteContent" => byte_content_file(),
        "s3Location" => s3_object_file(),
        "sourceType" => list(any())
      }

  """
  @type file_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      retrieve_response() :: %{
        "nextToken" => String.t(),
        "retrievalResults" => list(knowledge_base_retrieval_result()())
      }

  """
  @type retrieve_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      knowledge_base_lookup_input() :: %{
        "knowledgeBaseId" => String.t(),
        "text" => String.t()
      }

  """
  @type knowledge_base_lookup_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      code_interpreter_invocation_input() :: %{
        "code" => [String.t()],
        "files" => list([String.t()]())
      }

  """
  @type code_interpreter_invocation_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      knowledge_base_retrieval_result() :: %{
        "content" => retrieval_result_content(),
        "location" => retrieval_result_location(),
        "metadata" => map(),
        "score" => [float()]
      }

  """
  @type knowledge_base_retrieval_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      guardrail_topic() :: %{
        "action" => list(any()),
        "name" => [String.t()],
        "type" => list(any())
      }

  """
  @type guardrail_topic() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      inline_agent_trace_part() :: %{
        "sessionId" => String.t(),
        "trace" => list()
      }

  """
  @type inline_agent_trace_part() :: %{String.t() => any()}

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

  @type delete_agent_memory_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | dependency_failed_exception()
          | bad_gateway_exception()

  @type get_agent_memory_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | dependency_failed_exception()
          | bad_gateway_exception()

  @type invoke_agent_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | dependency_failed_exception()
          | bad_gateway_exception()

  @type invoke_flow_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | dependency_failed_exception()
          | bad_gateway_exception()

  @type invoke_inline_agent_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | dependency_failed_exception()
          | bad_gateway_exception()

  @type optimize_prompt_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | dependency_failed_exception()
          | bad_gateway_exception()

  @type retrieve_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | dependency_failed_exception()
          | bad_gateway_exception()

  @type retrieve_and_generate_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | dependency_failed_exception()
          | bad_gateway_exception()

  def metadata do
    %{
      api_version: "2023-07-26",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "bedrock-agent-runtime",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Bedrock Agent Runtime",
      signature_version: "v4",
      signing_name: "bedrock",
      target_prefix: nil
    }
  end

  @doc """
  Deletes memory from the specified memory identifier.
  """
  @spec delete_agent_memory(map(), String.t(), String.t(), delete_agent_memory_request(), list()) ::
          {:ok, delete_agent_memory_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_agent_memory_errors()}
  def delete_agent_memory(%Client{} = client, agent_alias_id, agent_id, input, options \\ []) do
    url_path =
      "/agents/#{AWS.Util.encode_uri(agent_id)}/agentAliases/#{AWS.Util.encode_uri(agent_alias_id)}/memories"

    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"memoryId", "memoryId"}
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
  Gets the sessions stored in the memory of the agent.
  """
  @spec get_agent_memory(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t(),
          String.t(),
          String.t() | nil,
          list()
        ) ::
          {:ok, get_agent_memory_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_agent_memory_errors()}
  def get_agent_memory(
        %Client{} = client,
        agent_alias_id,
        agent_id,
        max_items \\ nil,
        memory_id,
        memory_type,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/agents/#{AWS.Util.encode_uri(agent_id)}/agentAliases/#{AWS.Util.encode_uri(agent_alias_id)}/memories"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(memory_type) do
        [{"memoryType", memory_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(memory_id) do
        [{"memoryId", memory_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_items) do
        [{"maxItems", max_items} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  The CLI doesn't support streaming operations in Amazon Bedrock, including
  `InvokeAgent`.

  Sends a prompt for the agent to process and respond to. Note the following
  fields for the request:

    *
  To continue the same conversation with an agent, use the same `sessionId` value
  in the request.

    *
  To activate trace enablement, turn `enableTrace` to `true`. Trace enablement
  helps you follow the agent's reasoning process that led it to the information it
  processed, the actions it took, and the final result it yielded. For more
  information, see [Trace enablement](https://docs.aws.amazon.com/bedrock/latest/userguide/agents-test.html#trace-events).

    *
  End a conversation by setting `endSession` to `true`.

    *
  In the `sessionState` object, you can include attributes for the session or
  prompt or, if you configured an action group to return control, results from
  invocation of the action group.

  The response is returned in the `bytes` field of the `chunk` object.

    *
  The `attribution` object contains citations for parts of the response.

    *
  If you set `enableTrace` to `true` in the request, you can trace the agent's
  steps and reasoning process that led it to the response.

    *
  If the action predicted was configured to return control, the response returns
  parameters for the action, elicited from the user, in the `returnControl` field.

    *
  Errors are also surfaced in the response.
  """
  @spec invoke_agent(map(), String.t(), String.t(), String.t(), invoke_agent_request(), list()) ::
          {:ok, invoke_agent_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invoke_agent_errors()}
  def invoke_agent(%Client{} = client, agent_alias_id, agent_id, session_id, input, options \\ []) do
    url_path =
      "/agents/#{AWS.Util.encode_uri(agent_id)}/agentAliases/#{AWS.Util.encode_uri(agent_alias_id)}/sessions/#{AWS.Util.encode_uri(session_id)}/text"

    headers = []
    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"x-amzn-bedrock-agent-content-type", "contentType"},
          {"x-amz-bedrock-agent-memory-id", "memoryId"},
          {"x-amz-bedrock-agent-session-id", "sessionId"}
        ]
      )

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
  Invokes an alias of a flow to run the inputs that you specify and return the
  output of each node as a stream.

  If there's an error, the error is returned. For more information, see [Test a flow in Amazon
  Bedrock](https://docs.aws.amazon.com/bedrock/latest/userguide/flows-test.html)
  in the [Amazon Bedrock User Guide](https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html).

  The CLI doesn't support streaming operations in Amazon Bedrock, including
  `InvokeFlow`.
  """
  @spec invoke_flow(map(), String.t(), String.t(), invoke_flow_request(), list()) ::
          {:ok, invoke_flow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invoke_flow_errors()}
  def invoke_flow(
        %Client{} = client,
        flow_alias_identifier,
        flow_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/flows/#{AWS.Util.encode_uri(flow_identifier)}/aliases/#{AWS.Util.encode_uri(flow_alias_identifier)}"

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

  Invokes an inline Amazon Bedrock agent using the configurations you provide with
  the request.

    *
  Specify the following fields for security purposes.

      *
  (Optional) `customerEncryptionKeyArn` – The Amazon Resource Name (ARN) of a KMS
  key to encrypt the creation of the agent.

      *
  (Optional) `idleSessionTTLinSeconds` – Specify the number of seconds for which
  the agent should maintain session information. After this time expires, the
  subsequent `InvokeInlineAgent` request begins a new session.

    *
  To override the default prompt behavior for agent orchestration and to use
  advanced prompts, include a `promptOverrideConfiguration` object.
  For more information, see [Advanced prompts](https://docs.aws.amazon.com/bedrock/latest/userguide/advanced-prompts.html).

    *
  The agent instructions will not be honored if your agent has only one knowledge
  base, uses default prompts, has no action group, and user input is disabled.

  The CLI doesn't support streaming operations in Amazon Bedrock, including
  `InvokeInlineAgent`.
  """
  @spec invoke_inline_agent(map(), String.t(), invoke_inline_agent_request(), list()) ::
          {:ok, invoke_inline_agent_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invoke_inline_agent_errors()}
  def invoke_inline_agent(%Client{} = client, session_id, input, options \\ []) do
    url_path = "/agents/#{AWS.Util.encode_uri(session_id)}"
    headers = []
    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"x-amzn-bedrock-agent-content-type", "contentType"},
          {"x-amz-bedrock-agent-session-id", "sessionId"}
        ]
      )

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
  Optimizes a prompt for the task that you specify.

  For more information, see [Optimize a prompt](https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management-optimize.html)
  in the [Amazon Bedrock User Guide](https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html).
  """
  @spec optimize_prompt(map(), optimize_prompt_request(), list()) ::
          {:ok, optimize_prompt_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, optimize_prompt_errors()}
  def optimize_prompt(%Client{} = client, input, options \\ []) do
    url_path = "/optimize-prompt"
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
  Queries a knowledge base and retrieves information from it.
  """
  @spec retrieve(map(), String.t(), retrieve_request(), list()) ::
          {:ok, retrieve_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, retrieve_errors()}
  def retrieve(%Client{} = client, knowledge_base_id, input, options \\ []) do
    url_path = "/knowledgebases/#{AWS.Util.encode_uri(knowledge_base_id)}/retrieve"
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
  Queries a knowledge base and generates responses based on the retrieved results
  and using the specified foundation model or [inference profile](https://docs.aws.amazon.com/bedrock/latest/userguide/cross-region-inference.html).

  The response only cites sources that are relevant to the query.
  """
  @spec retrieve_and_generate(map(), retrieve_and_generate_request(), list()) ::
          {:ok, retrieve_and_generate_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, retrieve_and_generate_errors()}
  def retrieve_and_generate(%Client{} = client, input, options \\ []) do
    url_path = "/retrieveAndGenerate"
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
