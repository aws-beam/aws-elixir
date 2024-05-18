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
        "function" => [String.t()],
        "parameters" => list(function_parameter()())
      }

  """
  @type function_invocation_input() :: %{String.t() => any()}

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

      failure_trace() :: %{
        "failureReason" => String.t(),
        "traceId" => String.t()
      }

  """
  @type failure_trace() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      action_group_invocation_input() :: %{
        "actionGroupName" => String.t(),
        "apiPath" => String.t(),
        "function" => String.t(),
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
        "s3Location" => retrieval_result_s3_location(),
        "type" => list(any())
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

      retrieval_result_content() :: %{
        "text" => [String.t()]
      }

  """
  @type retrieval_result_content() :: %{String.t() => any()}

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
        "retrievalConfiguration" => knowledge_base_retrieval_configuration()
      }

  """
  @type knowledge_base_retrieve_and_generate_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      observation() :: %{
        "actionGroupInvocationOutput" => action_group_invocation_output(),
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

      span() :: %{
        "end" => [integer()],
        "start" => [integer()]
      }

  """
  @type span() :: %{String.t() => any()}

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

      post_processing_parsed_response() :: %{
        "text" => String.t()
      }

  """
  @type post_processing_parsed_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      knowledge_base_retrieval_configuration() :: %{
        "vectorSearchConfiguration" => knowledge_base_vector_search_configuration()
      }

  """
  @type knowledge_base_retrieval_configuration() :: %{String.t() => any()}

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
        "sessionId" => String.t()
      }

  """
  @type invoke_agent_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      session_state() :: %{
        "invocationId" => [String.t()],
        "promptSessionAttributes" => map(),
        "returnControlInvocationResults" => list(list()()),
        "sessionAttributes" => map()
      }

  """
  @type session_state() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      pre_processing_model_invocation_output() :: %{
        "parsedResponse" => pre_processing_parsed_response(),
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

      internal_server_exception() :: %{
        "message" => String.t()
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

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

      generated_response_part() :: %{
        "textResponsePart" => text_response_part()
      }

  """
  @type generated_response_part() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => String.t()
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

      retrieve_and_generate_output() :: %{
        "text" => [String.t()]
      }

  """
  @type retrieve_and_generate_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      action_group_invocation_output() :: %{
        "text" => String.t()
      }

  """
  @type action_group_invocation_output() :: %{String.t() => any()}

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

      knowledge_base_lookup_output() :: %{
        "retrievedReferences" => list(retrieved_reference()())
      }

  """
  @type knowledge_base_lookup_output() :: %{String.t() => any()}

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
        optional("sessionState") => session_state()
      }

  """
  @type invoke_agent_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invocation_input() :: %{
        "actionGroupInvocationInput" => action_group_invocation_input(),
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

      post_processing_model_invocation_output() :: %{
        "parsedResponse" => post_processing_parsed_response(),
        "traceId" => String.t()
      }

  """
  @type post_processing_model_invocation_output() :: %{String.t() => any()}

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

      knowledge_base_retrieval_result() :: %{
        "content" => retrieval_result_content(),
        "location" => retrieval_result_location(),
        "metadata" => map(),
        "score" => [float()]
      }

  """
  @type knowledge_base_retrieval_result() :: %{String.t() => any()}

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

  The CLI doesn't support `InvokeAgent`.

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
      headers,
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
  Queries a knowledge base and generates responses based on the retrieved results.

  The response only cites sources that are relevant to the query.
  """
  @spec retrieve_and_generate(map(), retrieve_and_generate_request(), list()) ::
          {:ok, retrieve_and_generate_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, retrieve_and_generate_errors()}
  def retrieve_and_generate(%Client{} = client, input, options \\ []) do
    url_path = "/retrieveAndGenerate"
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
end
