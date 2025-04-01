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

      list_async_invokes_response() :: %{
        "asyncInvokeSummaries" => list(async_invoke_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_async_invokes_response() :: %{String.t() => any()}

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

      document_block() :: %{
        "format" => list(any()),
        "name" => [String.t()],
        "source" => list()
      }

  """
  @type document_block() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      apply_guardrail_response() :: %{
        "action" => list(any()),
        "assessments" => list(guardrail_assessment()()),
        "guardrailCoverage" => guardrail_coverage(),
        "outputs" => list(guardrail_output_content()()),
        "usage" => guardrail_usage()
      }

  """
  @type apply_guardrail_response() :: %{String.t() => any()}

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

      get_async_invoke_request() :: %{}

  """
  @type get_async_invoke_request() :: %{}

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

      apply_guardrail_request() :: %{
        required("content") => list(list()()),
        required("source") => list(any())
      }

  """
  @type apply_guardrail_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      converse_request() :: %{
        optional("additionalModelRequestFields") => [any()],
        optional("additionalModelResponseFieldPaths") => list([String.t()]()),
        optional("guardrailConfig") => guardrail_configuration(),
        optional("inferenceConfig") => inference_configuration(),
        optional("messages") => list(message()()),
        optional("performanceConfig") => performance_configuration(),
        optional("promptVariables") => map(),
        optional("requestMetadata") => map(),
        optional("system") => list(list()()),
        optional("toolConfig") => tool_configuration()
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
        "contentType" => String.t(),
        "performanceConfigLatency" => list(any())
      }

  """
  @type invoke_model_with_response_stream_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      guardrail_text_block() :: %{
        "qualifiers" => list(list(any())()),
        "text" => [String.t()]
      }

  """
  @type guardrail_text_block() :: %{String.t() => any()}

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

      guardrail_converse_image_block() :: %{
        "format" => list(any()),
        "source" => list()
      }

  """
  @type guardrail_converse_image_block() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      async_invoke_s3_output_data_config() :: %{
        "bucketOwner" => String.t(),
        "kmsKeyId" => String.t(),
        "s3Uri" => String.t()
      }

  """
  @type async_invoke_s3_output_data_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      guardrail_text_characters_coverage() :: %{
        "guarded" => integer(),
        "total" => integer()
      }

  """
  @type guardrail_text_characters_coverage() :: %{String.t() => any()}

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

      prompt_router_trace() :: %{
        "invokedModelId" => String.t()
      }

  """
  @type prompt_router_trace() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      guardrail_image_coverage() :: %{
        "guarded" => integer(),
        "total" => integer()
      }

  """
  @type guardrail_image_coverage() :: %{String.t() => any()}

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

      start_async_invoke_request() :: %{
        optional("clientRequestToken") => String.t(),
        optional("tags") => list(tag()()),
        required("modelId") => String.t(),
        required("modelInput") => any(),
        required("outputDataConfig") => list()
      }

  """
  @type start_async_invoke_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_async_invokes_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("sortBy") => list(any()),
        optional("sortOrder") => list(any()),
        optional("statusEquals") => list(any()),
        optional("submitTimeAfter") => non_neg_integer(),
        optional("submitTimeBefore") => non_neg_integer()
      }

  """
  @type list_async_invokes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      guardrail_coverage() :: %{
        "images" => guardrail_image_coverage(),
        "textCharacters" => guardrail_text_characters_coverage()
      }

  """
  @type guardrail_coverage() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invoke_model_request() :: %{
        optional("accept") => String.t(),
        optional("body") => binary(),
        optional("contentType") => String.t(),
        optional("guardrailIdentifier") => String.t(),
        optional("guardrailVersion") => String.t(),
        optional("performanceConfigLatency") => list(any()),
        optional("trace") => list(any())
      }

  """
  @type invoke_model_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      reasoning_text_block() :: %{
        "signature" => [String.t()],
        "text" => [String.t()]
      }

  """
  @type reasoning_text_block() :: %{String.t() => any()}

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

      invoke_model_with_response_stream_request() :: %{
        optional("accept") => String.t(),
        optional("body") => binary(),
        optional("contentType") => String.t(),
        optional("guardrailIdentifier") => String.t(),
        optional("guardrailVersion") => String.t(),
        optional("performanceConfigLatency") => list(any()),
        optional("trace") => list(any())
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

      tag() :: %{
        "key" => String.t(),
        "value" => String.t()
      }

  """
  @type tag() :: %{String.t() => any()}

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
        "contentType" => String.t(),
        "performanceConfigLatency" => list(any())
      }

  """
  @type invoke_model_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      guardrail_content_filter() :: %{
        "action" => list(any()),
        "confidence" => list(any()),
        "filterStrength" => list(any()),
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
        "guardrail" => guardrail_trace_assessment(),
        "promptRouter" => prompt_router_trace()
      }

  """
  @type converse_trace() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      guardrail_contextual_grounding_filter() :: %{
        "action" => list(any()),
        "score" => [float()],
        "threshold" => [float()],
        "type" => list(any())
      }

  """
  @type guardrail_contextual_grounding_filter() :: %{String.t() => any()}

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

      guardrail_image_block() :: %{
        "format" => list(any()),
        "source" => list()
      }

  """
  @type guardrail_image_block() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      converse_stream_response() :: %{
        "stream" => list()
      }

  """
  @type converse_stream_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cache_point_block() :: %{
        "type" => list(any())
      }

  """
  @type cache_point_block() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_unavailable_exception() :: %{
        "message" => String.t()
      }

  """
  @type service_unavailable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_async_invoke_response() :: %{
        "clientRequestToken" => String.t(),
        "endTime" => non_neg_integer(),
        "failureMessage" => String.t(),
        "invocationArn" => String.t(),
        "lastModifiedTime" => non_neg_integer(),
        "modelArn" => String.t(),
        "outputDataConfig" => list(),
        "status" => list(any()),
        "submitTime" => non_neg_integer()
      }

  """
  @type get_async_invoke_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      guardrail_contextual_grounding_policy_assessment() :: %{
        "filters" => list(guardrail_contextual_grounding_filter()())
      }

  """
  @type guardrail_contextual_grounding_policy_assessment() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_location() :: %{
        "bucketOwner" => String.t(),
        "uri" => String.t()
      }

  """
  @type s3_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      converse_stream_metadata_event() :: %{
        "metrics" => converse_stream_metrics(),
        "performanceConfig" => performance_configuration(),
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
        "contextualGroundingPolicy" => guardrail_contextual_grounding_policy_assessment(),
        "invocationMetrics" => guardrail_invocation_metrics(),
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

      guardrail_invocation_metrics() :: %{
        "guardrailCoverage" => guardrail_coverage(),
        "guardrailProcessingLatency" => float(),
        "usage" => guardrail_usage()
      }

  """
  @type guardrail_invocation_metrics() :: %{String.t() => any()}

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
        optional("messages") => list(message()()),
        optional("performanceConfig") => performance_configuration(),
        optional("promptVariables") => map(),
        optional("requestMetadata") => map(),
        optional("system") => list(list()()),
        optional("toolConfig") => tool_configuration()
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
        "cacheReadInputTokens" => [integer()],
        "cacheWriteInputTokens" => [integer()],
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

      guardrail_usage() :: %{
        "contentPolicyImageUnits" => integer(),
        "contentPolicyUnits" => integer(),
        "contextualGroundingPolicyUnits" => integer(),
        "sensitiveInformationPolicyFreeUnits" => integer(),
        "sensitiveInformationPolicyUnits" => integer(),
        "topicPolicyUnits" => integer(),
        "wordPolicyUnits" => integer()
      }

  """
  @type guardrail_usage() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      async_invoke_summary() :: %{
        "clientRequestToken" => String.t(),
        "endTime" => non_neg_integer(),
        "failureMessage" => String.t(),
        "invocationArn" => String.t(),
        "lastModifiedTime" => non_neg_integer(),
        "modelArn" => String.t(),
        "outputDataConfig" => list(),
        "status" => list(any()),
        "submitTime" => non_neg_integer()
      }

  """
  @type async_invoke_summary() :: %{String.t() => any()}

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

      video_block() :: %{
        "format" => list(any()),
        "source" => list()
      }

  """
  @type video_block() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      guardrail_output_content() :: %{
        "text" => String.t()
      }

  """
  @type guardrail_output_content() :: %{String.t() => any()}

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
        "qualifiers" => list(list(any())()),
        "text" => [String.t()]
      }

  """
  @type guardrail_converse_text_block() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      converse_stream_trace() :: %{
        "guardrail" => guardrail_trace_assessment(),
        "promptRouter" => prompt_router_trace()
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

      start_async_invoke_response() :: %{
        "invocationArn" => String.t()
      }

  """
  @type start_async_invoke_response() :: %{String.t() => any()}

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

      performance_configuration() :: %{
        "latency" => list(any())
      }

  """
  @type performance_configuration() :: %{String.t() => any()}

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
        "performanceConfig" => performance_configuration(),
        "stopReason" => list(any()),
        "trace" => converse_trace(),
        "usage" => token_usage()
      }

  """
  @type converse_response() :: %{String.t() => any()}

  @type apply_guardrail_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type converse_errors() ::
          throttling_exception()
          | validation_exception()
          | model_timeout_exception()
          | access_denied_exception()
          | model_error_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | model_not_ready_exception()

  @type converse_stream_errors() ::
          throttling_exception()
          | validation_exception()
          | model_timeout_exception()
          | access_denied_exception()
          | model_error_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | model_not_ready_exception()

  @type get_async_invoke_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type invoke_model_errors() ::
          throttling_exception()
          | validation_exception()
          | model_timeout_exception()
          | access_denied_exception()
          | model_error_exception()
          | internal_server_exception()
          | service_unavailable_exception()
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
          | service_unavailable_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | model_not_ready_exception()

  @type list_async_invokes_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type start_async_invoke_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

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
  The action to apply a guardrail.

  For troubleshooting some of the common errors you might encounter when using the
  `ApplyGuardrail` API,
  see [Troubleshooting Amazon Bedrock API Error Codes](https://docs.aws.amazon.com/bedrock/latest/userguide/troubleshooting-api-error-codes.html)
  in the Amazon Bedrock User Guide
  """
  @spec apply_guardrail(map(), String.t(), String.t(), apply_guardrail_request(), list()) ::
          {:ok, apply_guardrail_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, apply_guardrail_errors()}
  def apply_guardrail(
        %Client{} = client,
        guardrail_identifier,
        guardrail_version,
        input,
        options \\ []
      ) do
    url_path =
      "/guardrail/#{AWS.Util.encode_uri(guardrail_identifier)}/version/#{AWS.Util.encode_uri(guardrail_version)}/apply"

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
  Sends messages to the specified Amazon Bedrock model.

  `Converse` provides
  a consistent interface that works with all models that
  support messages. This allows you to write code once and use it with different
  models.
  If a model has unique inference parameters, you can also pass those unique
  parameters
  to the model.

  Amazon Bedrock doesn't store any text, images, or documents that you provide as
  content. The data is only used to generate the response.

  You can submit a prompt by including it in the `messages` field, specifying the
  `modelId` of a foundation model or inference profile to run inference on it, and
  including any other fields that are relevant to your use case.

  You can also submit a prompt from Prompt management by specifying the ARN of the
  prompt version and including a map of variables to values in the
  `promptVariables` field. You can append more messages to the prompt by using the
  `messages` field. If you use a prompt from Prompt management, you can't include
  the following fields in the request: `additionalModelRequestFields`,
  `inferenceConfig`, `system`, or `toolConfig`. Instead, these fields must be
  defined through Prompt management. For more information, see [Use a prompt from Prompt
  management](https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management-use.html).

  For information about the Converse API, see *Use the Converse API* in the
  *Amazon Bedrock User Guide*.
  To use a guardrail, see *Use a guardrail with the Converse API* in the *Amazon
  Bedrock User Guide*.
  To use a tool with a model, see *Tool use (Function calling)* in the *Amazon
  Bedrock User Guide*

  For example code, see *Converse API examples* in the *Amazon Bedrock User
  Guide*.

  This operation requires permission for the `bedrock:InvokeModel` action.

  To deny all inference access to resources that you specify in the modelId field,
  you
  need to deny access to the `bedrock:InvokeModel` and
  `bedrock:InvokeModelWithResponseStream` actions. Doing this also denies
  access to the resource through the base inference actions
  ([InvokeModel](https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_InvokeModel.html) and
  [InvokeModelWithResponseStream](https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_InvokeModelWithResponseStream.html)).
  For more information see [Deny access for inference on specific models](https://docs.aws.amazon.com/bedrock/latest/userguide/security_iam_id-based-policy-examples.html#security_iam_id-based-policy-examples-deny-inference).

  For troubleshooting some of the common errors you might encounter when using the
  `Converse` API,
  see [Troubleshooting Amazon Bedrock API Error Codes](https://docs.aws.amazon.com/bedrock/latest/userguide/troubleshooting-api-error-codes.html)
  in the Amazon Bedrock User Guide
  """
  @spec converse(map(), String.t(), converse_request(), list()) ::
          {:ok, converse_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, converse_errors()}
  def converse(%Client{} = client, model_id, input, options \\ []) do
    url_path = "/model/#{AWS.Util.encode_uri(model_id)}/converse"
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
  Sends messages to the specified Amazon Bedrock model and returns
  the response in a stream.

  `ConverseStream` provides a consistent API
  that works with all Amazon Bedrock models that support messages.
  This allows you to write code once and use it with different models. Should a
  model have unique inference parameters, you can also pass those unique
  parameters to the
  model.

  To find out if a model supports streaming, call
  [GetFoundationModel](https://docs.aws.amazon.com/bedrock/latest/APIReference/API_GetFoundationModel.html) and check the `responseStreamingSupported` field in the response.

  The CLI doesn't support streaming operations in Amazon Bedrock, including
  `ConverseStream`.

  Amazon Bedrock doesn't store any text, images, or documents that you provide as
  content. The data is only used to generate the response.

  You can submit a prompt by including it in the `messages` field, specifying the
  `modelId` of a foundation model or inference profile to run inference on it, and
  including any other fields that are relevant to your use case.

  You can also submit a prompt from Prompt management by specifying the ARN of the
  prompt version and including a map of variables to values in the
  `promptVariables` field. You can append more messages to the prompt by using the
  `messages` field. If you use a prompt from Prompt management, you can't include
  the following fields in the request: `additionalModelRequestFields`,
  `inferenceConfig`, `system`, or `toolConfig`. Instead, these fields must be
  defined through Prompt management. For more information, see [Use a prompt from
  Prompt
  management](https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management-use.html).

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

  To deny all inference access to resources that you specify in the modelId field,
  you
  need to deny access to the `bedrock:InvokeModel` and
  `bedrock:InvokeModelWithResponseStream` actions. Doing this also denies
  access to the resource through the base inference actions
  ([InvokeModel](https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_InvokeModel.html) and
  [InvokeModelWithResponseStream](https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_InvokeModelWithResponseStream.html)).
  For more information see [Deny access for inference on specific models](https://docs.aws.amazon.com/bedrock/latest/userguide/security_iam_id-based-policy-examples.html#security_iam_id-based-policy-examples-deny-inference).

  For troubleshooting some of the common errors you might encounter when using the
  `ConverseStream` API,
  see [Troubleshooting Amazon Bedrock API Error Codes](https://docs.aws.amazon.com/bedrock/latest/userguide/troubleshooting-api-error-codes.html)
  in the Amazon Bedrock User Guide
  """
  @spec converse_stream(map(), String.t(), converse_stream_request(), list()) ::
          {:ok, converse_stream_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, converse_stream_errors()}
  def converse_stream(%Client{} = client, model_id, input, options \\ []) do
    url_path = "/model/#{AWS.Util.encode_uri(model_id)}/converse-stream"
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
  Retrieve information about an asynchronous invocation.
  """
  @spec get_async_invoke(map(), String.t(), list()) ::
          {:ok, get_async_invoke_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_async_invoke_errors()}
  def get_async_invoke(%Client{} = client, invocation_arn, options \\ []) do
    url_path = "/async-invoke/#{AWS.Util.encode_uri(invocation_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Invokes the specified Amazon Bedrock model to run inference using the prompt and
  inference parameters provided in the request body.

  You use model inference to generate text, images, and embeddings.

  For example code, see *Invoke model code examples* in the *Amazon Bedrock User
  Guide*.

  This operation requires permission for the `bedrock:InvokeModel` action.

  To deny all inference access to resources that you specify in the modelId field,
  you
  need to deny access to the `bedrock:InvokeModel` and
  `bedrock:InvokeModelWithResponseStream` actions. Doing this also denies
  access to the resource through the Converse API actions
  ([Converse](https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_Converse.html) and
  [ConverseStream](https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_ConverseStream.html)).
  For more information see [Deny access for inference on specific models](https://docs.aws.amazon.com/bedrock/latest/userguide/security_iam_id-based-policy-examples.html#security_iam_id-based-policy-examples-deny-inference).

  For troubleshooting some of the common errors you might encounter when using the
  `InvokeModel` API,
  see [Troubleshooting Amazon Bedrock API Error Codes](https://docs.aws.amazon.com/bedrock/latest/userguide/troubleshooting-api-error-codes.html)
  in the Amazon Bedrock User Guide
  """
  @spec invoke_model(map(), String.t(), invoke_model_request(), list()) ::
          {:ok, invoke_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, invoke_model_errors()}
  def invoke_model(%Client{} = client, model_id, input, options \\ []) do
    url_path = "/model/#{AWS.Util.encode_uri(model_id)}/invoke"

    {headers, input} =
      [
        {"accept", "Accept"},
        {"contentType", "Content-Type"},
        {"guardrailIdentifier", "X-Amzn-Bedrock-GuardrailIdentifier"},
        {"guardrailVersion", "X-Amzn-Bedrock-GuardrailVersion"},
        {"performanceConfigLatency", "X-Amzn-Bedrock-PerformanceConfig-Latency"},
        {"trace", "X-Amzn-Bedrock-Trace"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"Content-Type", "contentType"},
          {"X-Amzn-Bedrock-PerformanceConfig-Latency", "performanceConfigLatency"}
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
  Invoke the specified Amazon Bedrock model to run inference using the prompt and
  inference parameters provided in the request body.

  The response is returned in a stream.

  To see if a model supports streaming, call
  [GetFoundationModel](https://docs.aws.amazon.com/bedrock/latest/APIReference/API_GetFoundationModel.html) and check the `responseStreamingSupported` field in the response.

  The CLI doesn't support streaming operations in Amazon Bedrock, including
  `InvokeModelWithResponseStream`.

  For example code, see *Invoke model with streaming code
  example* in the *Amazon Bedrock User Guide*.

  This operation requires permissions to perform the
  `bedrock:InvokeModelWithResponseStream` action.

  To deny all inference access to resources that you specify in the modelId field,
  you
  need to deny access to the `bedrock:InvokeModel` and
  `bedrock:InvokeModelWithResponseStream` actions. Doing this also denies
  access to the resource through the Converse API actions
  ([Converse](https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_Converse.html)
  and
  [ConverseStream](https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_ConverseStream.html)). For more information see [Deny access for inference on specific
  models](https://docs.aws.amazon.com/bedrock/latest/userguide/security_iam_id-based-policy-examples.html#security_iam_id-based-policy-examples-deny-inference).

  For troubleshooting some of the common errors you might encounter when using the
  `InvokeModelWithResponseStream` API,
  see [Troubleshooting Amazon Bedrock API Error Codes](https://docs.aws.amazon.com/bedrock/latest/userguide/troubleshooting-api-error-codes.html)
  in the Amazon Bedrock User Guide
  """
  @spec invoke_model_with_response_stream(
          map(),
          String.t(),
          invoke_model_with_response_stream_request(),
          list()
        ) ::
          {:ok, invoke_model_with_response_stream_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, invoke_model_with_response_stream_errors()}
  def invoke_model_with_response_stream(%Client{} = client, model_id, input, options \\ []) do
    url_path = "/model/#{AWS.Util.encode_uri(model_id)}/invoke-with-response-stream"

    {headers, input} =
      [
        {"accept", "X-Amzn-Bedrock-Accept"},
        {"contentType", "Content-Type"},
        {"guardrailIdentifier", "X-Amzn-Bedrock-GuardrailIdentifier"},
        {"guardrailVersion", "X-Amzn-Bedrock-GuardrailVersion"},
        {"performanceConfigLatency", "X-Amzn-Bedrock-PerformanceConfig-Latency"},
        {"trace", "X-Amzn-Bedrock-Trace"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"X-Amzn-Bedrock-Content-Type", "contentType"},
          {"X-Amzn-Bedrock-PerformanceConfig-Latency", "performanceConfigLatency"}
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
  Lists asynchronous invocations.
  """
  @spec list_async_invokes(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_async_invokes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_async_invokes_errors()}
  def list_async_invokes(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        sort_by \\ nil,
        sort_order \\ nil,
        status_equals \\ nil,
        submit_time_after \\ nil,
        submit_time_before \\ nil,
        options \\ []
      ) do
    url_path = "/async-invoke"
    headers = []
    query_params = []

    query_params =
      if !is_nil(submit_time_before) do
        [{"submitTimeBefore", submit_time_before} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(submit_time_after) do
        [{"submitTimeAfter", submit_time_after} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(status_equals) do
        [{"statusEquals", status_equals} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(sort_order) do
        [{"sortOrder", sort_order} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(sort_by) do
        [{"sortBy", sort_by} | query_params]
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
  Starts an asynchronous invocation.

  This operation requires permission for the `bedrock:InvokeModel` action.

  To deny all inference access to resources that you specify in the modelId field,
  you
  need to deny access to the `bedrock:InvokeModel` and
  `bedrock:InvokeModelWithResponseStream` actions. Doing this also denies
  access to the resource through the Converse API actions
  ([Converse](https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_Converse.html) and
  [ConverseStream](https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_ConverseStream.html)).
  For more information see [Deny access for inference on specific models](https://docs.aws.amazon.com/bedrock/latest/userguide/security_iam_id-based-policy-examples.html#security_iam_id-based-policy-examples-deny-inference).
  """
  @spec start_async_invoke(map(), start_async_invoke_request(), list()) ::
          {:ok, start_async_invoke_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_async_invoke_errors()}
  def start_async_invoke(%Client{} = client, input, options \\ []) do
    url_path = "/async-invoke"
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
