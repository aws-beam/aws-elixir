# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.BedrockRuntime do
  @moduledoc """
  Describes the API operations for running inference using Amazon Bedrock models.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      specific_tool_choice() :: %{
        "name" => String.t()
      }

  """
  @type specific_tool_choice() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      guardrail_content_policy_assessment() :: %{
        "filters" => list(guardrail_content_filter()())
      }

  """
  @type guardrail_content_policy_assessment() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      model_not_ready_exception() :: %{
        "message" => String.t()
      }

  """
  @type model_not_ready_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      content_block_stop_event() :: %{
        "contentBlockIndex" => integer()
      }

  """
  @type content_block_stop_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      any_tool_choice() :: %{}

  """
  @type any_tool_choice() :: %{}

  @typedoc """

  ## Example:

      inference_configuration() :: %{
        "maxTokens" => [integer()],
        "stopSequences" => list(String.t()()),
        "temperature" => [float()],
        "topP" => [float()]
      }

  """
  @type inference_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      auto_tool_choice() :: %{}

  """
  @type auto_tool_choice() :: %{}

  @typedoc """

  ## Example:

      converse_request() :: %{
        optional("additionalModelRequestFields") => [any()],
        optional("additionalModelResponseFieldPaths") => list([String.t()]()),
        optional("guardrailConfig") => guardrail_configuration(),
        optional("inferenceConfig") => inference_configuration(),
        optional("system") => list(list()()),
        optional("toolConfig") => tool_configuration(),
        required("messages") => list(message()())
      }

  """
  @type converse_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      guardrail_trace_assessment() :: %{
        "inputAssessment" => map(),
        "modelOutput" => list(String.t()()),
        "outputAssessments" => map()
      }

  """
  @type guardrail_trace_assessment() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      payload_part() :: %{
        "bytes" => binary()
      }

  """
  @type payload_part() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      message_stop_event() :: %{
        "additionalModelResponseFields" => [any()],
        "stopReason" => list(any())
      }

  """
  @type message_stop_event() :: %{String.t() => any()}

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

      invoke_model_with_response_stream_response() :: %{
        "body" => list(),
        "contentType" => String.t()
      }

  """
  @type invoke_model_with_response_stream_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      image_block() :: %{
        "format" => list(any()),
        "source" => list()
      }

  """
  @type image_block() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      content_block_start_event() :: %{
        "contentBlockIndex" => integer(),
        "start" => list()
      }

  """
  @type content_block_start_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      content_block_delta_event() :: %{
        "contentBlockIndex" => integer(),
        "delta" => list()
      }

  """
  @type content_block_delta_event() :: %{String.t() => any()}

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

      message_start_event() :: %{
        "role" => list(any())
      }

  """
  @type message_start_event() :: %{String.t() => any()}

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

      invoke_model_request() :: %{
        optional("accept") => String.t(),
        optional("contentType") => String.t(),
        optional("guardrailIdentifier") => String.t(),
        optional("guardrailVersion") => String.t(),
        optional("trace") => list(any()),
        required("body") => binary()
      }

  """
  @type invoke_model_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invoke_model_with_response_stream_request() :: %{
        optional("accept") => String.t(),
        optional("contentType") => String.t(),
        optional("guardrailIdentifier") => String.t(),
        optional("guardrailVersion") => String.t(),
        optional("trace") => list(any()),
        required("body") => binary()
      }

  """
  @type invoke_model_with_response_stream_request() :: %{String.t() => any()}

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

      converse_stream_metrics() :: %{
        "latencyMs" => [float()]
      }

  """
  @type converse_stream_metrics() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tool_use_block_start() :: %{
        "name" => String.t(),
        "toolUseId" => String.t()
      }

  """
  @type tool_use_block_start() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invoke_model_response() :: %{
        "body" => binary(),
        "contentType" => String.t()
      }

  """
  @type invoke_model_response() :: %{String.t() => any()}

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

      service_quota_exceeded_exception() :: %{
        "message" => String.t()
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      converse_trace() :: %{
        "guardrail" => guardrail_trace_assessment()
      }

  """
  @type converse_trace() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tool_specification() :: %{
        "description" => String.t(),
        "inputSchema" => list(),
        "name" => String.t()
      }

  """
  @type tool_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      converse_stream_response() :: %{
        "stream" => list()
      }

  """
  @type converse_stream_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      converse_stream_metadata_event() :: %{
        "metrics" => converse_stream_metrics(),
        "trace" => converse_stream_trace(),
        "usage" => token_usage()
      }

  """
  @type converse_stream_metadata_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      guardrail_stream_configuration() :: %{
        "guardrailIdentifier" => String.t(),
        "guardrailVersion" => String.t(),
        "streamProcessingMode" => list(any()),
        "trace" => list(any())
      }

  """
  @type guardrail_stream_configuration() :: %{String.t() => any()}

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

      converse_metrics() :: %{
        "latencyMs" => [float()]
      }

  """
  @type converse_metrics() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      model_error_exception() :: %{
        "message" => String.t(),
        "originalStatusCode" => integer(),
        "resourceName" => String.t()
      }

  """
  @type model_error_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tool_configuration() :: %{
        "toolChoice" => list(),
        "tools" => list(list()())
      }

  """
  @type tool_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      converse_stream_request() :: %{
        optional("additionalModelRequestFields") => [any()],
        optional("additionalModelResponseFieldPaths") => list([String.t()]()),
        optional("guardrailConfig") => guardrail_stream_configuration(),
        optional("inferenceConfig") => inference_configuration(),
        optional("system") => list(list()()),
        optional("toolConfig") => tool_configuration(),
        required("messages") => list(message()())
      }

  """
  @type converse_stream_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tool_result_block() :: %{
        "content" => list(list()()),
        "status" => list(any()),
        "toolUseId" => String.t()
      }

  """
  @type tool_result_block() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => String.t()
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tool_use_block() :: %{
        "input" => [any()],
        "name" => String.t(),
        "toolUseId" => String.t()
      }

  """
  @type tool_use_block() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      token_usage() :: %{
        "inputTokens" => [integer()],
        "outputTokens" => [integer()],
        "totalTokens" => [integer()]
      }

  """
  @type token_usage() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      guardrail_topic_policy_assessment() :: %{
        "topics" => list(guardrail_topic()())
      }

  """
  @type guardrail_topic_policy_assessment() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      model_stream_error_exception() :: %{
        "message" => String.t(),
        "originalMessage" => String.t(),
        "originalStatusCode" => integer()
      }

  """
  @type model_stream_error_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      model_timeout_exception() :: %{
        "message" => String.t()
      }

  """
  @type model_timeout_exception() :: %{String.t() => any()}

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

      guardrail_configuration() :: %{
        "guardrailIdentifier" => String.t(),
        "guardrailVersion" => String.t(),
        "trace" => list(any())
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

      guardrail_pii_entity_filter() :: %{
        "action" => list(any()),
        "match" => [String.t()],
        "type" => list(any())
      }

  """
  @type guardrail_pii_entity_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      guardrail_converse_text_block() :: %{
        "text" => [String.t()]
      }

  """
  @type guardrail_converse_text_block() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      converse_stream_trace() :: %{
        "guardrail" => guardrail_trace_assessment()
      }

  """
  @type converse_stream_trace() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tool_use_block_delta() :: %{
        "input" => [String.t()]
      }

  """
  @type tool_use_block_delta() :: %{String.t() => any()}

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

      message() :: %{
        "content" => list(list()()),
        "role" => list(any())
      }

  """
  @type message() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      converse_response() :: %{
        "additionalModelResponseFields" => [any()],
        "metrics" => converse_metrics(),
        "output" => list(),
        "stopReason" => list(any()),
        "trace" => converse_trace(),
        "usage" => token_usage()
      }

  """
  @type converse_response() :: %{String.t() => any()}

  @type converse_errors() ::
          throttling_exception()
          | validation_exception()
          | model_timeout_exception()
          | access_denied_exception()
          | model_error_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | model_not_ready_exception()

  @type converse_stream_errors() ::
          throttling_exception()
          | validation_exception()
          | model_timeout_exception()
          | access_denied_exception()
          | model_error_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | model_not_ready_exception()

  @type invoke_model_errors() ::
          throttling_exception()
          | validation_exception()
          | model_timeout_exception()
          | access_denied_exception()
          | model_error_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | model_not_ready_exception()

  @type invoke_model_with_response_stream_errors() ::
          throttling_exception()
          | validation_exception()
          | model_timeout_exception()
          | model_stream_error_exception()
          | access_denied_exception()
          | model_error_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | model_not_ready_exception()

  def metadata do
    %{
      api_version: "2023-09-30",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "bedrock-runtime",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Bedrock Runtime",
      signature_version: "v4",
      signing_name: "bedrock",
      target_prefix: nil
    }
  end

  @doc """
  Sends messages to the specified Amazon Bedrock model.

  `Converse` provides
  a consistent interface that works with all models that
  support messages. This allows you to write code once and use it with different
  models.
  Should a model have unique inference parameters, you can also pass those unique
  parameters
  to the model.

  For information about the Converse API, see *Use the Converse API* in the
  *Amazon Bedrock User Guide*.
  To use a guardrail, see *Use a guardrail with the Converse API* in the *Amazon
  Bedrock User Guide*.
  To use a tool with a model, see *Tool use (Function calling)* in the *Amazon
  Bedrock User Guide*

  For example code, see *Converse API examples* in the *Amazon Bedrock User
  Guide*.

  This operation requires permission for the `bedrock:InvokeModel` action.
  """
  @spec converse(map(), String.t(), converse_request(), list()) ::
          {:ok, converse_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, converse_errors()}
  def converse(%Client{} = client, model_id, input, options \\ []) do
    url_path = "/model/#{AWS.Util.encode_uri(model_id)}/converse"
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
  Sends messages to the specified Amazon Bedrock model and returns
  the response in a stream.

  `ConverseStream` provides a consistent API
  that works with all Amazon Bedrock models that support messages.
  This allows you to write code once and use it with different models. Should a
  model have unique inference parameters, you can also pass those unique
  parameters to the
  model.

  To find out if a model supports streaming, call
  [GetFoundationModel](https://docs.aws.amazon.com/bedrock/latest/APIReference/API_GetFoundationModel.html)
  and check the `responseStreamingSupported` field in the response.

  For information about the Converse API, see *Use the Converse API* in the
  *Amazon Bedrock User Guide*.
  To use a guardrail, see *Use a guardrail with the Converse API* in the *Amazon
  Bedrock User Guide*.
  To use a tool with a model, see *Tool use (Function calling)* in the *Amazon
  Bedrock User Guide*

  For example code, see *Conversation streaming example* in the *Amazon Bedrock
  User Guide*.

  This operation requires permission for the
  `bedrock:InvokeModelWithResponseStream` action.
  """
  @spec converse_stream(map(), String.t(), converse_stream_request(), list()) ::
          {:ok, converse_stream_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, converse_stream_errors()}
  def converse_stream(%Client{} = client, model_id, input, options \\ []) do
    url_path = "/model/#{AWS.Util.encode_uri(model_id)}/converse-stream"
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
  Invokes the specified Amazon Bedrock model to run inference using the prompt and
  inference parameters provided in the request body.

  You use model inference to generate text, images, and embeddings.

  For example code, see *Invoke model code examples* in the *Amazon Bedrock User
  Guide*.

  This operation requires permission for the `bedrock:InvokeModel` action.
  """
  @spec invoke_model(map(), String.t(), invoke_model_request(), list()) ::
          {:ok, invoke_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invoke_model_errors()}
  def invoke_model(%Client{} = client, model_id, input, options \\ []) do
    url_path = "/model/#{AWS.Util.encode_uri(model_id)}/invoke"

    {headers, input} =
      [
        {"accept", "Accept"},
        {"contentType", "Content-Type"},
        {"guardrailIdentifier", "X-Amzn-Bedrock-GuardrailIdentifier"},
        {"guardrailVersion", "X-Amzn-Bedrock-GuardrailVersion"},
        {"trace", "X-Amzn-Bedrock-Trace"}
      ]
      |> Request.build_params(input)

    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"Content-Type", "contentType"}]
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
  Invoke the specified Amazon Bedrock model to run inference using the prompt and
  inference parameters provided in the request body.

  The response is returned in a stream.

  To see if a model supports streaming, call
  [GetFoundationModel](https://docs.aws.amazon.com/bedrock/latest/APIReference/API_GetFoundationModel.html)
  and check the `responseStreamingSupported` field in the response.

  The CLI doesn't support `InvokeModelWithResponseStream`.

  For example code, see *Invoke model with streaming code
  example* in the *Amazon Bedrock User Guide*.

  This operation requires permissions to perform the
  `bedrock:InvokeModelWithResponseStream` action.
  """
  @spec invoke_model_with_response_stream(
          map(),
          String.t(),
          invoke_model_with_response_stream_request(),
          list()
        ) ::
          {:ok, invoke_model_with_response_stream_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invoke_model_with_response_stream_errors()}
  def invoke_model_with_response_stream(%Client{} = client, model_id, input, options \\ []) do
    url_path = "/model/#{AWS.Util.encode_uri(model_id)}/invoke-with-response-stream"

    {headers, input} =
      [
        {"accept", "X-Amzn-Bedrock-Accept"},
        {"contentType", "Content-Type"},
        {"guardrailIdentifier", "X-Amzn-Bedrock-GuardrailIdentifier"},
        {"guardrailVersion", "X-Amzn-Bedrock-GuardrailVersion"},
        {"trace", "X-Amzn-Bedrock-Trace"}
      ]
      |> Request.build_params(input)

    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"X-Amzn-Bedrock-Content-Type", "contentType"}]
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
end
