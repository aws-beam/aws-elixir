# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.BedrockAgentCore do
  @moduledoc """
  Welcome to the Amazon Bedrock AgentCore Data Plane API reference.

  Data Plane actions process and handle data or workloads within Amazon Web
  Services services.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      cloud_watch_logs_source() :: %{
        "filterConfig" => cloud_watch_filter_config(),
        "logGroupNames" => list([String.t() | atom()]()),
        "serviceNames" => list([String.t() | atom()]())
      }

  """
  @type cloud_watch_logs_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_workload_access_token_request() :: %{
        required("workloadName") => String.t() | atom()
      }

  """
  @type get_workload_access_token_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      key_shortcut_result() :: %{
        "error" => [String.t() | atom()],
        "status" => list(any())
      }

  """
  @type key_shortcut_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_payment_instrument_response() :: %{
        "paymentInstrument" => payment_instrument()
      }

  """
  @type get_payment_instrument_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      evaluator_metric() :: %{
        "controlStats" => control_stats(),
        "evaluatorArn" => [String.t() | atom()],
        "variantResults" => list(variant_result())
      }

  """
  @type evaluator_metric() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      mouse_scroll_arguments() :: %{
        "deltaX" => [integer()],
        "deltaY" => [integer()],
        "x" => [integer()],
        "y" => [integer()]
      }

  """
  @type mouse_scroll_arguments() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      evaluator_statistics() :: %{
        "averageScore" => [float()]
      }

  """
  @type evaluator_statistics() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      inline_ground_truth() :: %{
        "assertions" => list(list()),
        "expectedTrajectory" => evaluation_expected_trajectory(),
        "turns" => list(ground_truth_turn())
      }

  """
  @type inline_ground_truth() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_event_output() :: %{
        "event" => event()
      }

  """
  @type get_event_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      proxy_configuration() :: %{
        "bypass" => proxy_bypass(),
        "proxies" => list(list())
      }

  """
  @type proxy_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      mouse_move_result() :: %{
        "error" => [String.t() | atom()],
        "status" => list(any())
      }

  """
  @type mouse_move_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      harness_stream_metrics() :: %{
        "latencyMs" => [float()]
      }

  """
  @type harness_stream_metrics() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_browser_stream_request() :: %{
        optional("clientToken") => String.t() | atom(),
        required("sessionId") => String.t() | atom(),
        required("streamUpdate") => list()
      }

  """
  @type update_browser_stream_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invoke_agent_runtime_command_response() :: %{
        "baggage" => [String.t() | atom()],
        "contentType" => [String.t() | atom()],
        "runtimeSessionId" => String.t() | atom(),
        "statusCode" => integer(),
        "stream" => list(),
        "traceId" => [String.t() | atom()],
        "traceParent" => [String.t() | atom()],
        "traceState" => [String.t() | atom()]
      }

  """
  @type invoke_agent_runtime_command_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      input_content_block() :: %{
        "blob" => binary(),
        "path" => String.t() | atom(),
        "text" => String.t() | atom()
      }

  """
  @type input_content_block() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      harness_bedrock_model_config() :: %{
        "additionalParams" => [any()],
        "apiFormat" => list(any()),
        "maxTokens" => integer(),
        "modelId" => String.t() | atom(),
        "temperature" => float(),
        "topP" => float()
      }

  """
  @type harness_bedrock_model_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      stripe_privy_token_response_output() :: %{
        "appId" => String.t() | atom(),
        "authorizationSignature" => String.t() | atom(),
        "basicAuthToken" => String.t() | atom(),
        "requestExpiry" => [float()]
      }

  """
  @type stripe_privy_token_response_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      code_interpreter_session_summary() :: %{
        "codeInterpreterIdentifier" => [String.t() | atom()],
        "createdAt" => non_neg_integer(),
        "lastUpdatedAt" => non_neg_integer(),
        "name" => String.t() | atom(),
        "sessionId" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type code_interpreter_session_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_create_memory_records_input() :: %{
        optional("clientToken") => [String.t() | atom()],
        required("records") => list(memory_record_create_input())
      }

  """
  @type batch_create_memory_records_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      memory_metadata_filter_expression() :: %{
        "left" => list(),
        "operator" => list(any()),
        "right" => list()
      }

  """
  @type memory_metadata_filter_expression() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      process_payment_response() :: %{
        "createdAt" => non_neg_integer(),
        "paymentInstrumentId" => String.t() | atom(),
        "paymentManagerArn" => String.t() | atom(),
        "paymentOutput" => list(),
        "paymentSessionId" => String.t() | atom(),
        "paymentType" => list(any()),
        "processPaymentId" => String.t() | atom(),
        "status" => list(any()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type process_payment_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      browser_session_summary() :: %{
        "browserIdentifier" => [String.t() | atom()],
        "createdAt" => non_neg_integer(),
        "lastUpdatedAt" => non_neg_integer(),
        "name" => String.t() | atom(),
        "sessionId" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type browser_session_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      memory_record() :: %{
        "content" => list(),
        "createdAt" => [non_neg_integer()],
        "memoryRecordId" => String.t() | atom(),
        "memoryStrategyId" => String.t() | atom(),
        "metadata" => map(),
        "namespaces" => list(String.t() | atom())
      }

  """
  @type memory_record() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      session_summary() :: %{
        "actorId" => String.t() | atom(),
        "createdAt" => [non_neg_integer()],
        "sessionId" => String.t() | atom()
      }

  """
  @type session_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invoke_agent_runtime_request() :: %{
        optional("accept") => String.t() | atom(),
        optional("accountId") => [String.t() | atom()],
        optional("baggage") => [String.t() | atom()],
        optional("contentType") => String.t() | atom(),
        optional("mcpProtocolVersion") => String.t() | atom(),
        optional("mcpSessionId") => String.t() | atom(),
        optional("qualifier") => [String.t() | atom()],
        optional("runtimeSessionId") => String.t() | atom(),
        optional("runtimeUserId") => String.t() | atom(),
        optional("traceId") => [String.t() | atom()],
        optional("traceParent") => [String.t() | atom()],
        optional("traceState") => [String.t() | atom()],
        required("payload") => binary()
      }

  """
  @type invoke_agent_runtime_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      content_block() :: %{
        "data" => [binary()],
        "description" => [String.t() | atom()],
        "mimeType" => [String.t() | atom()],
        "name" => [String.t() | atom()],
        "resource" => resource_content(),
        "size" => [float()],
        "text" => [String.t() | atom()],
        "type" => list(any()),
        "uri" => [String.t() | atom()]
      }

  """
  @type content_block() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_browser_session_response() :: %{
        "browserIdentifier" => [String.t() | atom()],
        "certificates" => list(certificate()),
        "createdAt" => non_neg_integer(),
        "enterprisePolicies" => list(browser_enterprise_policy()),
        "extensions" => list(browser_extension()),
        "lastUpdatedAt" => non_neg_integer(),
        "name" => String.t() | atom(),
        "profileConfiguration" => browser_profile_configuration(),
        "proxyConfiguration" => proxy_configuration(),
        "sessionId" => String.t() | atom(),
        "sessionReplayArtifact" => [String.t() | atom()],
        "sessionTimeoutSeconds" => integer(),
        "status" => list(any()),
        "streams" => browser_session_stream(),
        "viewPort" => view_port()
      }

  """
  @type get_browser_session_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      screenshot_arguments() :: %{
        "format" => list(any())
      }

  """
  @type screenshot_arguments() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      amount() :: %{
        "currency" => list(any()),
        "value" => [String.t() | atom()]
      }

  """
  @type amount() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      failure_category_cluster() :: %{
        "affectedSessionCount" => [integer()],
        "clusterId" => [integer()],
        "description" => [String.t() | atom()],
        "name" => [String.t() | atom()],
        "subCategories" => list(failure_sub_category_cluster())
      }

  """
  @type failure_category_cluster() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      configuration_bundle_tool_entry() :: %{
        "toolDescriptionJsonPath" => [String.t() | atom()],
        "toolName" => String.t() | atom()
      }

  """
  @type configuration_bundle_tool_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      view_port() :: %{
        "height" => integer(),
        "width" => integer()
      }

  """
  @type view_port() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      evaluation_job_results() :: %{
        "evaluatorSummaries" => list(evaluator_summary()),
        "numberOfSessionsCompleted" => [integer()],
        "numberOfSessionsFailed" => [integer()],
        "numberOfSessionsIgnored" => [integer()],
        "numberOfSessionsInProgress" => [integer()],
        "totalNumberOfSessions" => [integer()]
      }

  """
  @type evaluation_job_results() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      recommendation_evaluator_reference() :: %{
        "evaluatorArn" => String.t() | atom()
      }

  """
  @type recommendation_evaluator_reference() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      payment_instrument() :: %{
        "createdAt" => non_neg_integer(),
        "paymentConnectorId" => String.t() | atom(),
        "paymentInstrumentDetails" => list(),
        "paymentInstrumentId" => String.t() | atom(),
        "paymentInstrumentType" => list(any()),
        "paymentManagerArn" => String.t() | atom(),
        "status" => list(any()),
        "updatedAt" => non_neg_integer(),
        "userId" => String.t() | atom()
      }

  """
  @type payment_instrument() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_memory_extraction_job_output() :: %{
        "jobId" => [String.t() | atom()]
      }

  """
  @type start_memory_extraction_job_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_payment_instrument_request() :: %{
        optional("userId") => String.t() | atom(),
        required("paymentConnectorId") => String.t() | atom(),
        required("paymentInstrumentId") => String.t() | atom(),
        required("paymentManagerArn") => String.t() | atom()
      }

  """
  @type delete_payment_instrument_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      harness_message_start_event() :: %{
        "role" => list(any())
      }

  """
  @type harness_message_start_event() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_memory_extraction_jobs_output() :: %{
        "jobs" => list(extraction_job_metadata()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_memory_extraction_jobs_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      span_context() :: %{
        "sessionId" => [String.t() | atom()],
        "spanId" => [String.t() | atom()],
        "traceId" => [String.t() | atom()]
      }

  """
  @type span_context() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_workload_access_token_for_user_id_request() :: %{
        required("userId") => String.t() | atom(),
        required("workloadName") => String.t() | atom()
      }

  """
  @type get_workload_access_token_for_user_id_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      evaluate_response() :: %{
        "evaluationResults" => list(evaluation_result_content())
      }

  """
  @type evaluate_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      a_b_test_results() :: %{
        "analysisTimestamp" => [non_neg_integer()],
        "evaluatorMetrics" => list(evaluator_metric())
      }

  """
  @type a_b_test_results() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      payment_session() :: %{
        "availableLimits" => available_limits(),
        "createdAt" => non_neg_integer(),
        "expiryTimeInMinutes" => [integer()],
        "limits" => session_limits(),
        "paymentManagerArn" => String.t() | atom(),
        "paymentSessionId" => String.t() | atom(),
        "updatedAt" => non_neg_integer(),
        "userId" => String.t() | atom()
      }

  """
  @type payment_session() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      harness_skill_git_auth() :: %{
        "credentialArn" => String.t() | atom(),
        "username" => [String.t() | atom()]
      }

  """
  @type harness_skill_git_auth() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      browser_profile_configuration() :: %{
        "profileIdentifier" => String.t() | atom()
      }

  """
  @type browser_profile_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      insight() :: %{
        "insightId" => String.t() | atom()
      }

  """
  @type insight() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      memory_record_delete_input() :: %{
        "memoryRecordId" => String.t() | atom()
      }

  """
  @type memory_record_delete_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_recommendation_request() :: %{}

  """
  @type get_recommendation_request() :: %{}

  @typedoc """

  ## Example:

      descriptors() :: %{
        "a2a" => a2a_descriptor(),
        "agentSkills" => agent_skills_descriptor(),
        "custom" => custom_descriptor(),
        "mcp" => mcp_descriptor()
      }

  """
  @type descriptors() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      per_variant_online_evaluation_config() :: %{
        "name" => String.t() | atom(),
        "onlineEvaluationConfigArn" => String.t() | atom()
      }

  """
  @type per_variant_online_evaluation_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      online_evaluation_config_source() :: %{
        "onlineEvaluationConfigArn" => String.t() | atom(),
        "timeRange" => session_filter_config()
      }

  """
  @type online_evaluation_config_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tools_definition() :: %{
        "inlineContent" => String.t() | atom(),
        "protocolVersion" => String.t() | atom()
      }

  """
  @type tools_definition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_payment_session_response() :: %{
        "paymentSession" => payment_session()
      }

  """
  @type create_payment_session_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      content_stop_event() :: %{
        "exitCode" => [integer()],
        "status" => list(any())
      }

  """
  @type content_stop_event() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_payment_instrument_balance_response() :: %{
        "paymentInstrumentId" => String.t() | atom(),
        "tokenBalance" => token_balance()
      }

  """
  @type get_payment_instrument_balance_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_a_b_test_request() :: %{}

  """
  @type get_a_b_test_request() :: %{}

  @typedoc """

  ## Example:

      evaluator_summary() :: %{
        "evaluatorId" => [String.t() | atom()],
        "statistics" => evaluator_statistics(),
        "totalEvaluated" => [integer()],
        "totalFailed" => [integer()]
      }

  """
  @type evaluator_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      crypto_x402_payment_output() :: %{
        "payload" => any(),
        "version" => [String.t() | atom()]
      }

  """
  @type crypto_x402_payment_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      execution_summary_cluster() :: %{
        "affectedSessionCount" => [integer()],
        "affectedSessions" => list(execution_summary_affected_session()),
        "clusterId" => [integer()],
        "description" => [String.t() | atom()],
        "name" => [String.t() | atom()]
      }

  """
  @type execution_summary_cluster() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      harness_lite_llm_model_config() :: %{
        "additionalParams" => [any()],
        "apiBase" => String.t() | atom(),
        "apiKeyArn" => String.t() | atom(),
        "maxTokens" => integer(),
        "modelId" => String.t() | atom(),
        "temperature" => float(),
        "topP" => float()
      }

  """
  @type harness_lite_llm_model_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      memory_record_summary() :: %{
        "content" => list(),
        "createdAt" => [non_neg_integer()],
        "memoryRecordId" => String.t() | atom(),
        "memoryStrategyId" => String.t() | atom(),
        "metadata" => map(),
        "namespaces" => list(String.t() | atom()),
        "score" => [float()]
      }

  """
  @type memory_record_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_agent_card_response() :: %{
        "agentCard" => any(),
        "runtimeSessionId" => String.t() | atom(),
        "statusCode" => integer()
      }

  """
  @type get_agent_card_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      stop_code_interpreter_session_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("traceId") => [String.t() | atom()],
        optional("traceParent") => [String.t() | atom()],
        required("sessionId") => String.t() | atom()
      }

  """
  @type stop_code_interpreter_session_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_batch_evaluation_response() :: %{
        "batchEvaluationArn" => String.t() | atom(),
        "batchEvaluationId" => String.t() | atom(),
        "batchEvaluationName" => String.t() | atom(),
        "createdAt" => [non_neg_integer()],
        "dataSourceConfig" => list(),
        "description" => String.t() | atom(),
        "errorDetails" => list([String.t() | atom()]()),
        "evaluationResults" => evaluation_job_results(),
        "evaluators" => list(evaluator()),
        "executionSummaryResult" => execution_summary_clustering_result_content(),
        "failureAnalysisResult" => failure_analysis_result_content(),
        "insights" => list(insight()),
        "kmsKeyArn" => String.t() | atom(),
        "outputConfig" => list(),
        "status" => list(any()),
        "updatedAt" => [non_neg_integer()],
        "userIntentResult" => user_intent_clustering_result_content()
      }

  """
  @type get_batch_evaluation_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_create_memory_records_output() :: %{
        "failedRecords" => list(memory_record_output()),
        "successfulRecords" => list(memory_record_output())
      }

  """
  @type batch_create_memory_records_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      stop_runtime_session_response() :: %{
        "runtimeSessionId" => String.t() | atom(),
        "statusCode" => integer()
      }

  """
  @type stop_runtime_session_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_batch_evaluations_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()]
      }

  """
  @type list_batch_evaluations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_payment_instrument_response() :: %{
        "status" => list(any())
      }

  """
  @type delete_payment_instrument_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_event_output() :: %{
        "eventId" => String.t() | atom()
      }

  """
  @type delete_event_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_browser_sessions_response() :: %{
        "items" => list(browser_session_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_browser_sessions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_payment_instruments_response() :: %{
        "nextToken" => [String.t() | atom()],
        "paymentInstruments" => list(payment_instrument_summary())
      }

  """
  @type list_payment_instruments_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      skill_definition() :: %{
        "inlineContent" => String.t() | atom(),
        "schemaVersion" => String.t() | atom()
      }

  """
  @type skill_definition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      a2a_descriptor() :: %{
        "agentCard" => agent_card_definition()
      }

  """
  @type a2a_descriptor() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      memory_record_create_input() :: %{
        "content" => list(),
        "memoryStrategyId" => String.t() | atom(),
        "metadata" => map(),
        "namespaces" => list(String.t() | atom()),
        "requestIdentifier" => String.t() | atom(),
        "timestamp" => [non_neg_integer()]
      }

  """
  @type memory_record_create_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tool_description_recommendation_config() :: %{
        "agentTraces" => list(),
        "toolDescription" => list()
      }

  """
  @type tool_description_recommendation_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_a_b_tests_response() :: %{
        "abTests" => list(a_b_test_summary()),
        "nextToken" => [String.t() | atom()]
      }

  """
  @type list_a_b_tests_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_code_interpreter_session_response() :: %{
        "codeInterpreterIdentifier" => [String.t() | atom()],
        "createdAt" => non_neg_integer(),
        "sessionId" => String.t() | atom()
      }

  """
  @type start_code_interpreter_session_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      code_interpreter_result() :: %{
        "content" => list(content_block()),
        "isError" => [boolean()],
        "structuredContent" => tool_result_structured_content()
      }

  """
  @type code_interpreter_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cloud_watch_logs_filter() :: %{
        "key" => [String.t() | atom()],
        "operator" => list(any()),
        "value" => list()
      }

  """
  @type cloud_watch_logs_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invoke_code_interpreter_response() :: %{
        "sessionId" => String.t() | atom(),
        "stream" => list()
      }

  """
  @type invoke_code_interpreter_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      save_browser_session_profile_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("traceId") => [String.t() | atom()],
        optional("traceParent") => [String.t() | atom()],
        required("browserIdentifier") => [String.t() | atom()],
        required("sessionId") => String.t() | atom()
      }

  """
  @type save_browser_session_profile_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      runtime_client_error() :: %{
        "message" => String.t() | atom()
      }

  """
  @type runtime_client_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      harness_reasoning_text_block() :: %{
        "signature" => [String.t() | atom()],
        "text" => [String.t() | atom()]
      }

  """
  @type harness_reasoning_text_block() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_memory_record_input() :: %{}

  """
  @type get_memory_record_input() :: %{}

  @typedoc """

  ## Example:

      evaluator() :: %{
        "evaluatorId" => String.t() | atom()
      }

  """
  @type evaluator() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      automation_stream_update() :: %{
        "streamStatus" => list(any())
      }

  """
  @type automation_stream_update() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      session_limits() :: %{
        "maxSpendAmount" => amount()
      }

  """
  @type session_limits() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      embedded_crypto_wallet() :: %{
        "linkedAccounts" => list(list()),
        "network" => list(any()),
        "redirectUrl" => [String.t() | atom()],
        "walletAddress" => [String.t() | atom()]
      }

  """
  @type embedded_crypto_wallet() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      evaluate_request() :: %{
        optional("evaluationReferenceInputs") => list(evaluation_reference_input()),
        optional("evaluationTarget") => list(),
        required("evaluationInput") => list()
      }

  """
  @type evaluate_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      system_prompt_configuration_bundle() :: %{
        "bundleArn" => String.t() | atom(),
        "systemPromptJsonPath" => [String.t() | atom()],
        "versionId" => String.t() | atom()
      }

  """
  @type system_prompt_configuration_bundle() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      recommendation_summary() :: %{
        "createdAt" => [non_neg_integer()],
        "description" => String.t() | atom(),
        "name" => String.t() | atom(),
        "recommendationArn" => String.t() | atom(),
        "recommendationId" => String.t() | atom(),
        "status" => list(any()),
        "type" => list(any()),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type recommendation_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      retrieve_memory_records_input() :: %{
        optional("maxResults") => integer(),
        optional("namespace") => String.t() | atom(),
        optional("namespacePath") => String.t() | atom(),
        optional("nextToken") => String.t() | atom(),
        required("searchCriteria") => search_criteria()
      }

  """
  @type retrieve_memory_records_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_memory_extraction_jobs_input() :: %{
        optional("filter") => extraction_job_filter_input(),
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_memory_extraction_jobs_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      unauthorized_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type unauthorized_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      session_metadata_shape() :: %{
        "groundTruth" => list(),
        "metadata" => map(),
        "sessionId" => [String.t() | atom()],
        "testScenarioId" => [String.t() | atom()]
      }

  """
  @type session_metadata_shape() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      variant() :: %{
        "name" => String.t() | atom(),
        "variantConfiguration" => variant_configuration(),
        "weight" => [integer()]
      }

  """
  @type variant() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      harness_tool_result_block() :: %{
        "content" => list(list()),
        "status" => list(any()),
        "toolUseId" => String.t() | atom(),
        "type" => list(any())
      }

  """
  @type harness_tool_result_block() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      failure_span_detail() :: %{
        "signals" => list(insights_failure_signal()),
        "spanId" => [String.t() | atom()],
        "traceId" => [String.t() | atom()]
      }

  """
  @type failure_span_detail() :: %{(String.t() | atom()) => any()}

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

      list_payment_instruments_request() :: %{
        optional("agentName") => String.t() | atom(),
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom(),
        optional("paymentConnectorId") => String.t() | atom(),
        optional("userId") => String.t() | atom(),
        required("paymentManagerArn") => String.t() | atom()
      }

  """
  @type list_payment_instruments_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_a_b_test_request() :: %{}

  """
  @type delete_a_b_test_request() :: %{}

  @typedoc """

  ## Example:

      recommendation_evaluation_config() :: %{
        "evaluators" => list(recommendation_evaluator_reference())
      }

  """
  @type recommendation_evaluation_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      registry_record_summary() :: %{
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "descriptorType" => list(any()),
        "descriptors" => descriptors(),
        "name" => String.t() | atom(),
        "recordArn" => String.t() | atom(),
        "recordId" => String.t() | atom(),
        "registryArn" => String.t() | atom(),
        "status" => list(any()),
        "updatedAt" => non_neg_integer(),
        "version" => String.t() | atom()
      }

  """
  @type registry_record_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_recommendation_response() :: %{
        "recommendationId" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type delete_recommendation_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_registry_records_request() :: %{
        optional("filters") => any(),
        optional("maxResults") => [integer()],
        required("registryIds") => list(String.t() | atom()),
        required("searchQuery") => [String.t() | atom()]
      }

  """
  @type search_registry_records_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      agent_card_definition() :: %{
        "inlineContent" => String.t() | atom(),
        "schemaVersion" => String.t() | atom()
      }

  """
  @type agent_card_definition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invoke_agent_runtime_response() :: %{
        "baggage" => [String.t() | atom()],
        "contentType" => [String.t() | atom()],
        "mcpProtocolVersion" => [String.t() | atom()],
        "mcpSessionId" => String.t() | atom(),
        "response" => binary(),
        "runtimeSessionId" => String.t() | atom(),
        "statusCode" => integer(),
        "traceId" => [String.t() | atom()],
        "traceParent" => [String.t() | atom()],
        "traceState" => [String.t() | atom()]
      }

  """
  @type invoke_agent_runtime_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      evaluation_expected_trajectory() :: %{
        "toolNames" => list(String.t() | atom())
      }

  """
  @type evaluation_expected_trajectory() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      insights_failure_signal() :: %{
        "category" => list(any()),
        "confidence" => [float()],
        "evidence" => [String.t() | atom()]
      }

  """
  @type insights_failure_signal() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tool_result_structured_content() :: %{
        "executionTime" => [float()],
        "exitCode" => [integer()],
        "stderr" => [String.t() | atom()],
        "stdout" => [String.t() | atom()],
        "taskId" => [String.t() | atom()],
        "taskStatus" => list(any())
      }

  """
  @type tool_result_structured_content() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_memory_record_output() :: %{
        "memoryRecord" => memory_record()
      }

  """
  @type get_memory_record_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invoke_browser_response() :: %{
        "result" => list(),
        "sessionId" => String.t() | atom()
      }

  """
  @type invoke_browser_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      harness_agent_core_gateway_config() :: %{
        "gatewayArn" => String.t() | atom(),
        "outboundAuth" => list()
      }

  """
  @type harness_agent_core_gateway_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      harness_content_block_start_event() :: %{
        "contentBlockIndex" => [integer()],
        "start" => list()
      }

  """
  @type harness_content_block_start_event() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_resource_payment_token_request() :: %{
        required("paymentTokenRequest") => list(),
        required("resourceCredentialProviderName") => String.t() | atom(),
        required("workloadIdentityToken") => String.t() | atom()
      }

  """
  @type get_resource_payment_token_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      harness_tool() :: %{
        "config" => list(),
        "name" => String.t() | atom(),
        "type" => list(any())
      }

  """
  @type harness_tool() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_a_b_test_response() :: %{
        "abTestArn" => String.t() | atom(),
        "abTestId" => String.t() | atom(),
        "createdAt" => [non_neg_integer()],
        "currentRunId" => [String.t() | atom()],
        "description" => String.t() | atom(),
        "errorDetails" => list([String.t() | atom()]()),
        "evaluationConfig" => list(),
        "executionStatus" => list(any()),
        "gatewayArn" => String.t() | atom(),
        "gatewayFilter" => gateway_filter(),
        "maxDurationExpiresAt" => [non_neg_integer()],
        "name" => String.t() | atom(),
        "results" => a_b_test_results(),
        "roleArn" => String.t() | atom(),
        "startedAt" => [non_neg_integer()],
        "status" => list(any()),
        "stoppedAt" => [non_neg_integer()],
        "updatedAt" => [non_neg_integer()],
        "variants" => list(variant())
      }

  """
  @type get_a_b_test_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_payment_instrument_response() :: %{
        "paymentInstrument" => payment_instrument()
      }

  """
  @type create_payment_instrument_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_actors_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_actors_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      s3_location() :: %{
        "bucket" => [String.t() | atom()],
        "prefix" => [String.t() | atom()],
        "versionId" => [String.t() | atom()]
      }

  """
  @type s3_location() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      mcp_descriptor() :: %{
        "server" => server_definition(),
        "tools" => tools_definition()
      }

  """
  @type mcp_descriptor() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      user_intent_cluster() :: %{
        "affectedSessionCount" => [integer()],
        "affectedSessions" => list(user_intent_affected_session()),
        "clusterId" => [integer()],
        "description" => [String.t() | atom()],
        "name" => [String.t() | atom()]
      }

  """
  @type user_intent_cluster() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      harness_message() :: %{
        "content" => list(list()),
        "role" => list(any())
      }

  """
  @type harness_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      harness_skill_git_source() :: %{
        "auth" => harness_skill_git_auth(),
        "path" => [String.t() | atom()],
        "url" => String.t() | atom()
      }

  """
  @type harness_skill_git_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      key_press_result() :: %{
        "error" => [String.t() | atom()],
        "status" => list(any())
      }

  """
  @type key_press_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_resource_oauth2_token_request() :: %{
        optional("audiences") => list(String.t() | atom()),
        optional("customParameters") => map(),
        optional("customState") => String.t() | atom(),
        optional("forceAuthentication") => [boolean()],
        optional("resourceOauth2ReturnUrl") => String.t() | atom(),
        optional("resources") => list(String.t() | atom()),
        optional("sessionUri") => String.t() | atom(),
        required("oauth2Flow") => list(any()),
        required("resourceCredentialProviderName") => String.t() | atom(),
        required("scopes") => list(String.t() | atom()),
        required("workloadIdentityToken") => String.t() | atom()
      }

  """
  @type get_resource_oauth2_token_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      harness_gemini_model_config() :: %{
        "apiKeyArn" => String.t() | atom(),
        "maxTokens" => integer(),
        "modelId" => String.t() | atom(),
        "temperature" => float(),
        "topK" => integer(),
        "topP" => float()
      }

  """
  @type harness_gemini_model_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      o_auth_credential_provider() :: %{
        "customParameters" => map(),
        "defaultReturnUrl" => String.t() | atom(),
        "grantType" => list(any()),
        "providerArn" => String.t() | atom(),
        "scopes" => list(String.t() | atom())
      }

  """
  @type o_auth_credential_provider() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      key_type_result() :: %{
        "error" => [String.t() | atom()],
        "status" => list(any())
      }

  """
  @type key_type_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cloud_watch_logs_trace_config() :: %{
        "endTime" => [non_neg_integer()],
        "logGroupArns" => list([String.t() | atom()]()),
        "rule" => cloud_watch_logs_rule(),
        "serviceNames" => list(String.t() | atom()),
        "startTime" => [non_neg_integer()]
      }

  """
  @type cloud_watch_logs_trace_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      stop_browser_session_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("traceId") => [String.t() | atom()],
        optional("traceParent") => [String.t() | atom()],
        required("sessionId") => String.t() | atom()
      }

  """
  @type stop_browser_session_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tool_description_input() :: %{
        "toolDescription" => list(),
        "toolName" => String.t() | atom()
      }

  """
  @type tool_description_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_payment_session_request() :: %{
        optional("agentName") => String.t() | atom(),
        optional("clientToken") => String.t() | atom(),
        optional("limits") => session_limits(),
        optional("userId") => String.t() | atom(),
        required("expiryTimeInMinutes") => [integer()],
        required("paymentManagerArn") => String.t() | atom()
      }

  """
  @type create_payment_session_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      harness_remote_mcp_config() :: %{
        "headers" => map(),
        "url" => String.t() | atom()
      }

  """
  @type harness_remote_mcp_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      live_view_stream() :: %{
        "streamEndpoint" => String.t() | atom()
      }

  """
  @type live_view_stream() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_recommendation_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("kmsKeyArn") => String.t() | atom(),
        optional("tags") => map(),
        required("name") => String.t() | atom(),
        required("recommendationConfig") => list(),
        required("type") => list(any())
      }

  """
  @type start_recommendation_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      skill_md_definition() :: %{
        "inlineContent" => String.t() | atom()
      }

  """
  @type skill_md_definition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_payment_session_response() :: %{
        "status" => list(any())
      }

  """
  @type delete_payment_session_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      extraction_job_metadata() :: %{
        "actorId" => [String.t() | atom()],
        "failureReason" => [String.t() | atom()],
        "jobID" => [String.t() | atom()],
        "messages" => list(),
        "sessionId" => [String.t() | atom()],
        "status" => list(any()),
        "strategyId" => [String.t() | atom()]
      }

  """
  @type extraction_job_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      harness_content_block_delta_event() :: %{
        "contentBlockIndex" => [integer()],
        "delta" => list()
      }

  """
  @type harness_content_block_delta_event() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      a_b_test_summary() :: %{
        "abTestArn" => String.t() | atom(),
        "abTestId" => String.t() | atom(),
        "createdAt" => [non_neg_integer()],
        "description" => String.t() | atom(),
        "executionStatus" => list(any()),
        "gatewayArn" => String.t() | atom(),
        "name" => String.t() | atom(),
        "status" => list(any()),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type a_b_test_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      automation_stream() :: %{
        "streamEndpoint" => String.t() | atom(),
        "streamStatus" => list(any())
      }

  """
  @type automation_stream() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_payment_instrument_request() :: %{
        optional("agentName") => String.t() | atom(),
        optional("paymentConnectorId") => String.t() | atom(),
        optional("userId") => String.t() | atom(),
        required("paymentInstrumentId") => String.t() | atom(),
        required("paymentManagerArn") => String.t() | atom()
      }

  """
  @type get_payment_instrument_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      secrets_manager_location() :: %{
        "secretArn" => String.t() | atom()
      }

  """
  @type secrets_manager_location() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tool_arguments() :: %{
        "clearContext" => [boolean()],
        "code" => String.t() | atom(),
        "command" => String.t() | atom(),
        "content" => list(input_content_block()),
        "directoryPath" => String.t() | atom(),
        "language" => list(any()),
        "path" => String.t() | atom(),
        "paths" => list(String.t() | atom()),
        "runtime" => list(any()),
        "taskId" => String.t() | atom()
      }

  """
  @type tool_arguments() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_payment_instrument_balance_request() :: %{
        optional("agentName") => String.t() | atom(),
        optional("userId") => String.t() | atom(),
        required("chain") => list(any()),
        required("paymentConnectorId") => String.t() | atom(),
        required("paymentInstrumentId") => String.t() | atom(),
        required("paymentManagerArn") => String.t() | atom(),
        required("token") => list(any())
      }

  """
  @type get_payment_instrument_balance_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      stop_batch_evaluation_request() :: %{}

  """
  @type stop_batch_evaluation_request() :: %{}

  @typedoc """

  ## Example:

      event_metadata_filter_expression() :: %{
        "left" => list(),
        "operator" => list(any()),
        "right" => list()
      }

  """
  @type event_metadata_filter_expression() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      content_delta_event() :: %{
        "stderr" => [String.t() | atom()],
        "stdout" => [String.t() | atom()]
      }

  """
  @type content_delta_event() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      complete_resource_token_auth_response() :: %{}

  """
  @type complete_resource_token_auth_response() :: %{}

  @typedoc """

  ## Example:

      delete_batch_evaluation_request() :: %{}

  """
  @type delete_batch_evaluation_request() :: %{}

  @typedoc """

  ## Example:

      actor_summary() :: %{
        "actorId" => String.t() | atom()
      }

  """
  @type actor_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_browser_session_response() :: %{
        "browserIdentifier" => [String.t() | atom()],
        "createdAt" => non_neg_integer(),
        "sessionId" => String.t() | atom(),
        "streams" => browser_session_stream()
      }

  """
  @type start_browser_session_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      affected_session() :: %{
        "explanation" => [String.t() | atom()],
        "failureSpans" => list(failure_span_detail()),
        "fixType" => [String.t() | atom()],
        "recommendation" => [String.t() | atom()],
        "sessionId" => [String.t() | atom()]
      }

  """
  @type affected_session() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      duplicate_id_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type duplicate_id_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_registry_records_response() :: %{
        "registryRecords" => list(registry_record_summary())
      }

  """
  @type search_registry_records_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      stop_code_interpreter_session_response() :: %{
        "codeInterpreterIdentifier" => [String.t() | atom()],
        "lastUpdatedAt" => non_neg_integer(),
        "sessionId" => String.t() | atom()
      }

  """
  @type stop_code_interpreter_session_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      linked_account_developer_jwt() :: %{
        "kid" => String.t() | atom(),
        "sub" => [String.t() | atom()]
      }

  """
  @type linked_account_developer_jwt() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      available_limits() :: %{
        "availableSpendAmount" => amount(),
        "updatedAt" => non_neg_integer()
      }

  """
  @type available_limits() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_a_b_test_response() :: %{
        "abTestArn" => String.t() | atom(),
        "abTestId" => String.t() | atom(),
        "executionStatus" => list(any()),
        "status" => list(any()),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type update_a_b_test_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_payment_session_request() :: %{
        optional("userId") => String.t() | atom(),
        required("paymentManagerArn") => String.t() | atom(),
        required("paymentSessionId") => String.t() | atom()
      }

  """
  @type delete_payment_session_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      session_filter() :: %{
        "eventFilter" => list(any())
      }

  """
  @type session_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tool_description_text_input() :: %{
        "tools" => list(tool_description_input())
      }

  """
  @type tool_description_text_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      basic_auth() :: %{
        "secretArn" => String.t() | atom()
      }

  """
  @type basic_auth() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_batch_evaluations_response() :: %{
        "batchEvaluations" => list(batch_evaluation_summary()),
        "nextToken" => [String.t() | atom()]
      }

  """
  @type list_batch_evaluations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_events_input() :: %{
        optional("filter") => filter_input(),
        optional("includePayloads") => [boolean()],
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_events_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      save_browser_session_profile_response() :: %{
        "browserIdentifier" => [String.t() | atom()],
        "lastUpdatedAt" => non_neg_integer(),
        "profileIdentifier" => String.t() | atom(),
        "sessionId" => String.t() | atom()
      }

  """
  @type save_browser_session_profile_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      harness_tool_use_block() :: %{
        "input" => any(),
        "name" => String.t() | atom(),
        "serverName" => [String.t() | atom()],
        "toolUseId" => String.t() | atom(),
        "type" => list(any())
      }

  """
  @type harness_tool_use_block() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      custom_descriptor() :: %{
        "inlineContent" => String.t() | atom()
      }

  """
  @type custom_descriptor() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_agent_card_request() :: %{
        optional("qualifier") => [String.t() | atom()],
        optional("runtimeSessionId") => String.t() | atom()
      }

  """
  @type get_agent_card_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_update_memory_records_output() :: %{
        "failedRecords" => list(memory_record_output()),
        "successfulRecords" => list(memory_record_output())
      }

  """
  @type batch_update_memory_records_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      proxy_bypass() :: %{
        "domainPatterns" => list(String.t() | atom())
      }

  """
  @type proxy_bypass() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invoke_browser_request() :: %{
        required("action") => list(),
        required("sessionId") => String.t() | atom()
      }

  """
  @type invoke_browser_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_sessions_output() :: %{
        "nextToken" => String.t() | atom(),
        "sessionSummaries" => list(session_summary())
      }

  """
  @type list_sessions_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_payment_session_request() :: %{
        optional("agentName") => String.t() | atom(),
        optional("userId") => String.t() | atom(),
        required("paymentManagerArn") => String.t() | atom(),
        required("paymentSessionId") => String.t() | atom()
      }

  """
  @type get_payment_session_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      memory_record_output() :: %{
        "errorCode" => [integer()],
        "errorMessage" => [String.t() | atom()],
        "memoryRecordId" => String.t() | atom(),
        "requestIdentifier" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type memory_record_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cloud_watch_filter_config() :: %{
        "sessionIds" => list([String.t() | atom()]()),
        "timeRange" => session_filter_config()
      }

  """
  @type cloud_watch_filter_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_recommendations_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom(),
        optional("statusFilter") => list(any())
      }

  """
  @type list_recommendations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      browser_session_stream() :: %{
        "automationStream" => automation_stream(),
        "liveViewStream" => live_view_stream()
      }

  """
  @type browser_session_stream() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      screenshot_result() :: %{
        "data" => [binary()],
        "error" => [String.t() | atom()],
        "status" => list(any())
      }

  """
  @type screenshot_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      harness_skill_s3_source() :: %{
        "uri" => String.t() | atom()
      }

  """
  @type harness_skill_s3_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      mouse_drag_result() :: %{
        "error" => [String.t() | atom()],
        "status" => list(any())
      }

  """
  @type mouse_drag_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      harness_tool_use_block_delta() :: %{
        "input" => String.t() | atom()
      }

  """
  @type harness_tool_use_block_delta() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      configuration_bundle_ref() :: %{
        "bundleArn" => String.t() | atom(),
        "bundleVersion" => String.t() | atom()
      }

  """
  @type configuration_bundle_ref() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tool_description_configuration_bundle() :: %{
        "bundleArn" => String.t() | atom(),
        "tools" => list(configuration_bundle_tool_entry()),
        "versionId" => String.t() | atom()
      }

  """
  @type tool_description_configuration_bundle() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type service_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      payment_instrument_summary() :: %{
        "createdAt" => non_neg_integer(),
        "paymentConnectorId" => String.t() | atom(),
        "paymentInstrumentId" => String.t() | atom(),
        "paymentInstrumentType" => list(any()),
        "paymentManagerArn" => String.t() | atom(),
        "status" => list(any()),
        "updatedAt" => non_neg_integer(),
        "userId" => String.t() | atom()
      }

  """
  @type payment_instrument_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      mouse_scroll_result() :: %{
        "error" => [String.t() | atom()],
        "status" => list(any())
      }

  """
  @type mouse_scroll_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conversational() :: %{
        "content" => list(),
        "role" => list(any())
      }

  """
  @type conversational() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      confidence_interval() :: %{
        "lower" => [float()],
        "upper" => [float()]
      }

  """
  @type confidence_interval() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_a_b_test_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("evaluationConfig") => list(),
        optional("executionStatus") => list(any()),
        optional("gatewayFilter") => gateway_filter(),
        optional("name") => String.t() | atom(),
        optional("roleArn") => String.t() | atom(),
        optional("variants") => list(variant())
      }

  """
  @type update_a_b_test_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      content_start_event() :: %{}

  """
  @type content_start_event() :: %{}

  @typedoc """

  ## Example:

      harness_metadata_event() :: %{
        "metrics" => harness_stream_metrics(),
        "usage" => harness_token_usage()
      }

  """
  @type harness_metadata_event() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      key_type_arguments() :: %{
        "text" => [String.t() | atom()]
      }

  """
  @type key_type_arguments() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_batch_evaluation_response() :: %{
        "batchEvaluationArn" => String.t() | atom(),
        "batchEvaluationId" => String.t() | atom(),
        "batchEvaluationName" => String.t() | atom(),
        "createdAt" => [non_neg_integer()],
        "description" => String.t() | atom(),
        "evaluators" => list(evaluator()),
        "insights" => list(insight()),
        "kmsKeyArn" => String.t() | atom(),
        "outputConfig" => list(),
        "status" => list(any()),
        "tags" => map()
      }

  """
  @type start_batch_evaluation_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_memory_records_output() :: %{
        "memoryRecordSummaries" => list(memory_record_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_memory_records_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      extraction_job() :: %{
        "jobId" => [String.t() | atom()]
      }

  """
  @type extraction_job() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      coinbase_cdp_token_request_input() :: %{
        "includeWalletAuthToken" => [boolean()],
        "requestBody" => String.t() | atom(),
        "requestHost" => String.t() | atom(),
        "requestMethod" => list(any()),
        "requestPath" => String.t() | atom()
      }

  """
  @type coinbase_cdp_token_request_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_recommendations_response() :: %{
        "nextToken" => String.t() | atom(),
        "recommendationSummaries" => list(recommendation_summary())
      }

  """
  @type list_recommendations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_code_interpreter_session_request() :: %{
        required("sessionId") => String.t() | atom()
      }

  """
  @type get_code_interpreter_session_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      ground_truth_turn() :: %{
        "expectedResponse" => list(),
        "input" => list()
      }

  """
  @type ground_truth_turn() :: %{(String.t() | atom()) => any()}

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

      agent_skills_descriptor() :: %{
        "skillDefinition" => skill_definition(),
        "skillMd" => skill_md_definition()
      }

  """
  @type agent_skills_descriptor() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      harness_open_ai_model_config() :: %{
        "additionalParams" => [any()],
        "apiFormat" => list(any()),
        "apiKeyArn" => String.t() | atom(),
        "maxTokens" => integer(),
        "modelId" => String.t() | atom(),
        "temperature" => float(),
        "topP" => float()
      }

  """
  @type harness_open_ai_model_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      filter_input() :: %{
        "branch" => branch_filter(),
        "eventMetadata" => list(event_metadata_filter_expression())
      }

  """
  @type filter_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      mouse_click_arguments() :: %{
        "button" => list(any()),
        "clickCount" => [integer()],
        "x" => [integer()],
        "y" => [integer()]
      }

  """
  @type mouse_click_arguments() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_a_b_test_response() :: %{
        "abTestArn" => String.t() | atom(),
        "abTestId" => String.t() | atom(),
        "createdAt" => [non_neg_integer()],
        "executionStatus" => list(any()),
        "name" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type create_a_b_test_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      user_intent_clustering_result_content() :: %{
        "userIntents" => list(user_intent_cluster())
      }

  """
  @type user_intent_clustering_result_content() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      variant_configuration() :: %{
        "configurationBundle" => configuration_bundle_ref(),
        "target" => target_ref()
      }

  """
  @type variant_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_workload_access_token_for_j_w_t_response() :: %{
        "workloadAccessToken" => String.t() | atom()
      }

  """
  @type get_workload_access_token_for_j_w_t_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_code_interpreter_session_response() :: %{
        "certificates" => list(certificate()),
        "codeInterpreterIdentifier" => [String.t() | atom()],
        "createdAt" => non_neg_integer(),
        "name" => String.t() | atom(),
        "sessionId" => String.t() | atom(),
        "sessionTimeoutSeconds" => integer(),
        "status" => list(any())
      }

  """
  @type get_code_interpreter_session_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      retryable_conflict_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type retryable_conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      stop_browser_session_response() :: %{
        "browserIdentifier" => [String.t() | atom()],
        "lastUpdatedAt" => non_neg_integer(),
        "sessionId" => String.t() | atom()
      }

  """
  @type stop_browser_session_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      retrieve_memory_records_output() :: %{
        "memoryRecordSummaries" => list(memory_record_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type retrieve_memory_records_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_content() :: %{
        "blob" => [binary()],
        "mimeType" => [String.t() | atom()],
        "text" => [String.t() | atom()],
        "type" => list(any()),
        "uri" => [String.t() | atom()]
      }

  """
  @type resource_content() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      o_auth2_authentication() :: %{
        "emailAddress" => String.t() | atom(),
        "name" => [String.t() | atom()],
        "sub" => [String.t() | atom()],
        "username" => [String.t() | atom()]
      }

  """
  @type o_auth2_authentication() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_batch_evaluation_request() :: %{}

  """
  @type get_batch_evaluation_request() :: %{}

  @typedoc """

  ## Example:

      crypto_x402_payment_input() :: %{
        "payload" => any(),
        "version" => [String.t() | atom()]
      }

  """
  @type crypto_x402_payment_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      harness_content_block_stop_event() :: %{
        "contentBlockIndex" => [integer()]
      }

  """
  @type harness_content_block_stop_event() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_browser_session_request() :: %{
        required("sessionId") => String.t() | atom()
      }

  """
  @type get_browser_session_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_event_output() :: %{
        "event" => event()
      }

  """
  @type create_event_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      payment_session_summary() :: %{
        "createdAt" => non_neg_integer(),
        "expiryTimeInMinutes" => [integer()],
        "paymentManagerArn" => String.t() | atom(),
        "paymentSessionId" => String.t() | atom(),
        "updatedAt" => non_neg_integer(),
        "userId" => String.t() | atom()
      }

  """
  @type payment_session_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      root_cause_cluster() :: %{
        "affectedSessionCount" => [integer()],
        "affectedSessions" => list(affected_session()),
        "clusterId" => [integer()],
        "name" => [String.t() | atom()],
        "recommendation" => [String.t() | atom()],
        "rootCause" => [String.t() | atom()]
      }

  """
  @type root_cause_cluster() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      stop_batch_evaluation_response() :: %{
        "batchEvaluationArn" => String.t() | atom(),
        "batchEvaluationId" => String.t() | atom(),
        "description" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type stop_batch_evaluation_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_sessions_input() :: %{
        optional("filter") => session_filter(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_sessions_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      harness_tool_result_block_start() :: %{
        "status" => list(any()),
        "toolUseId" => String.t() | atom()
      }

  """
  @type harness_tool_result_block_start() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_resource_api_key_request() :: %{
        required("resourceCredentialProviderName") => String.t() | atom(),
        required("workloadIdentityToken") => String.t() | atom()
      }

  """
  @type get_resource_api_key_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_browser_session_request() :: %{
        optional("certificates") => list(certificate()),
        optional("clientToken") => String.t() | atom(),
        optional("enterprisePolicies") => list(browser_enterprise_policy()),
        optional("extensions") => list(browser_extension()),
        optional("name") => String.t() | atom(),
        optional("profileConfiguration") => browser_profile_configuration(),
        optional("proxyConfiguration") => proxy_configuration(),
        optional("sessionTimeoutSeconds") => integer(),
        optional("traceId") => [String.t() | atom()],
        optional("traceParent") => [String.t() | atom()],
        optional("viewPort") => view_port()
      }

  """
  @type start_browser_session_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_batch_evaluation_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("evaluationMetadata") => list(),
        optional("evaluators") => list(evaluator()),
        optional("insights") => list(insight()),
        optional("kmsKeyArn") => String.t() | atom(),
        optional("tags") => map(),
        required("batchEvaluationName") => String.t() | atom(),
        required("dataSourceConfig") => list()
      }

  """
  @type start_batch_evaluation_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_actors_output() :: %{
        "actorSummaries" => list(actor_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_actors_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_update_memory_records_input() :: %{
        required("records") => list(memory_record_update_input())
      }

  """
  @type batch_update_memory_records_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_recommendation_response() :: %{
        "createdAt" => [non_neg_integer()],
        "description" => String.t() | atom(),
        "name" => String.t() | atom(),
        "recommendationArn" => String.t() | atom(),
        "recommendationConfig" => list(),
        "recommendationId" => String.t() | atom(),
        "status" => list(any()),
        "type" => list(any()),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type start_recommendation_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_payment_sessions_response() :: %{
        "nextToken" => String.t() | atom(),
        "paymentSessions" => list(payment_session_summary())
      }

  """
  @type list_payment_sessions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      message_metadata() :: %{
        "eventId" => [String.t() | atom()],
        "messageIndex" => [integer()]
      }

  """
  @type message_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_memory_record_input() :: %{}

  """
  @type delete_memory_record_input() :: %{}

  @typedoc """

  ## Example:

      list_memory_records_input() :: %{
        optional("maxResults") => integer(),
        optional("memoryStrategyId") => String.t() | atom(),
        optional("metadataFilters") => list(memory_metadata_filter_expression()),
        optional("namespace") => String.t() | atom(),
        optional("namespacePath") => String.t() | atom(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_memory_records_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_events_output() :: %{
        "events" => list(event()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_events_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_code_interpreter_sessions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("status") => list(any())
      }

  """
  @type list_code_interpreter_sessions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      server_definition() :: %{
        "inlineContent" => String.t() | atom(),
        "schemaVersion" => String.t() | atom()
      }

  """
  @type server_definition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_code_interpreter_session_request() :: %{
        optional("certificates") => list(certificate()),
        optional("clientToken") => String.t() | atom(),
        optional("name") => String.t() | atom(),
        optional("sessionTimeoutSeconds") => integer(),
        optional("traceId") => [String.t() | atom()],
        optional("traceParent") => [String.t() | atom()]
      }

  """
  @type start_code_interpreter_session_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_a_b_test_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("enableOnCreate") => [boolean()],
        optional("gatewayFilter") => gateway_filter(),
        optional("tags") => map(),
        required("evaluationConfig") => list(),
        required("gatewayArn") => String.t() | atom(),
        required("name") => String.t() | atom(),
        required("roleArn") => String.t() | atom(),
        required("variants") => list(variant())
      }

  """
  @type create_a_b_test_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      token_balance() :: %{
        "amount" => [String.t() | atom()],
        "chain" => list(any()),
        "decimals" => [integer()],
        "network" => list(any()),
        "token" => list(any())
      }

  """
  @type token_balance() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_workload_access_token_response() :: %{
        "workloadAccessToken" => String.t() | atom()
      }

  """
  @type get_workload_access_token_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      key_shortcut_arguments() :: %{
        "keys" => list([String.t() | atom()]())
      }

  """
  @type key_shortcut_arguments() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      gateway_filter() :: %{
        "targetPaths" => list(String.t() | atom())
      }

  """
  @type gateway_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invoke_harness_request() :: %{
        optional("actorId") => [String.t() | atom()],
        optional("allowedTools") => list(String.t() | atom()),
        optional("maxIterations") => [integer()],
        optional("maxTokens") => [integer()],
        optional("model") => list(),
        optional("qualifier") => String.t() | atom(),
        optional("runtimeUserId") => [String.t() | atom()],
        optional("skills") => list(list()),
        optional("systemPrompt") => list(list()),
        optional("timeoutSeconds") => [integer()],
        optional("tools") => list(harness_tool()),
        required("harnessArn") => String.t() | atom(),
        required("messages") => list(harness_message()),
        required("runtimeSessionId") => String.t() | atom()
      }

  """
  @type invoke_harness_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invalid_input_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type invalid_input_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      mouse_click_result() :: %{
        "error" => [String.t() | atom()],
        "status" => list(any())
      }

  """
  @type mouse_click_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cloud_watch_output_config() :: %{
        "logGroupName" => [String.t() | atom()],
        "logStreamName" => [String.t() | atom()]
      }

  """
  @type cloud_watch_output_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invoke_harness_response() :: %{
        "stream" => list()
      }

  """
  @type invoke_harness_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      evaluation_result_content() :: %{
        "context" => list(),
        "errorCode" => String.t() | atom(),
        "errorMessage" => String.t() | atom(),
        "evaluatorArn" => String.t() | atom(),
        "evaluatorId" => String.t() | atom(),
        "evaluatorName" => String.t() | atom(),
        "explanation" => String.t() | atom(),
        "ignoredReferenceInputFields" => list(String.t() | atom()),
        "label" => [String.t() | atom()],
        "tokenUsage" => token_usage(),
        "value" => [float()]
      }

  """
  @type evaluation_result_content() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      certificate() :: %{
        "location" => list()
      }

  """
  @type certificate() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_payment_session_response() :: %{
        "paymentSession" => payment_session()
      }

  """
  @type get_payment_session_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      browser_extension() :: %{
        "location" => list()
      }

  """
  @type browser_extension() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      system_prompt_recommendation_config() :: %{
        "agentTraces" => list(),
        "evaluationConfig" => recommendation_evaluation_config(),
        "systemPrompt" => list()
      }

  """
  @type system_prompt_recommendation_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_evaluation_summary() :: %{
        "batchEvaluationArn" => String.t() | atom(),
        "batchEvaluationId" => String.t() | atom(),
        "batchEvaluationName" => String.t() | atom(),
        "createdAt" => [non_neg_integer()],
        "description" => String.t() | atom(),
        "errorDetails" => list([String.t() | atom()]()),
        "evaluationResults" => evaluation_job_results(),
        "evaluators" => list(evaluator()),
        "insights" => list(insight()),
        "kmsKeyArn" => String.t() | atom(),
        "status" => list(any()),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type batch_evaluation_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      key_press_arguments() :: %{
        "key" => [String.t() | atom()],
        "presses" => [integer()]
      }

  """
  @type key_press_arguments() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_memory_extraction_job_input() :: %{
        optional("clientToken") => [String.t() | atom()],
        required("extractionJob") => extraction_job()
      }

  """
  @type start_memory_extraction_job_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      harness_token_usage() :: %{
        "cacheReadInputTokens" => [integer()],
        "cacheWriteInputTokens" => [integer()],
        "inputTokens" => [integer()],
        "outputTokens" => [integer()],
        "totalTokens" => [integer()]
      }

  """
  @type harness_token_usage() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_a_b_test_response() :: %{
        "abTestArn" => String.t() | atom(),
        "abTestId" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type delete_a_b_test_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      harness_message_stop_event() :: %{
        "stopReason" => list(any())
      }

  """
  @type harness_message_stop_event() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_workload_access_token_for_j_w_t_request() :: %{
        required("userToken") => String.t() | atom(),
        required("workloadName") => String.t() | atom()
      }

  """
  @type get_workload_access_token_for_j_w_t_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      failure_analysis_result_content() :: %{
        "failures" => list(failure_category_cluster())
      }

  """
  @type failure_analysis_result_content() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_resource_api_key_response() :: %{
        "apiKey" => String.t() | atom()
      }

  """
  @type get_resource_api_key_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      variant_result() :: %{
        "absoluteChange" => [float()],
        "confidenceInterval" => confidence_interval(),
        "isSignificant" => [boolean()],
        "mean" => [float()],
        "pValue" => [float()],
        "percentChange" => [float()],
        "sampleSize" => [integer()],
        "variantName" => [String.t() | atom()]
      }

  """
  @type variant_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cloud_watch_logs_rule() :: %{
        "filters" => list(cloud_watch_logs_filter())
      }

  """
  @type cloud_watch_logs_rule() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_evaluation_trace_config() :: %{
        "batchEvaluationArn" => String.t() | atom()
      }

  """
  @type batch_evaluation_trace_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      token_usage() :: %{
        "inputTokens" => [integer()],
        "outputTokens" => [integer()],
        "totalTokens" => [integer()]
      }

  """
  @type token_usage() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      throttled_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type throttled_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      response_chunk() :: %{
        "contentDelta" => content_delta_event(),
        "contentStart" => content_start_event(),
        "contentStop" => content_stop_event()
      }

  """
  @type response_chunk() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_delete_memory_records_input() :: %{
        required("records") => list(memory_record_delete_input())
      }

  """
  @type batch_delete_memory_records_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_criteria() :: %{
        "memoryStrategyId" => String.t() | atom(),
        "metadataFilters" => list(memory_metadata_filter_expression()),
        "searchQuery" => String.t() | atom(),
        "topK" => [integer()]
      }

  """
  @type search_criteria() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      evaluation_reference_input() :: %{
        "assertions" => list(list()),
        "context" => list(),
        "expectedResponse" => list(),
        "expectedTrajectory" => evaluation_expected_trajectory()
      }

  """
  @type evaluation_reference_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_event_input() :: %{}

  """
  @type delete_event_input() :: %{}

  @typedoc """

  ## Example:

      harness_tool_use_block_start() :: %{
        "name" => String.t() | atom(),
        "serverName" => [String.t() | atom()],
        "toolUseId" => String.t() | atom(),
        "type" => list(any())
      }

  """
  @type harness_tool_use_block_start() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      extraction_job_filter_input() :: %{
        "actorId" => [String.t() | atom()],
        "sessionId" => [String.t() | atom()],
        "status" => list(any()),
        "strategyId" => [String.t() | atom()]
      }

  """
  @type extraction_job_filter_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      control_stats() :: %{
        "mean" => [float()],
        "sampleSize" => [integer()],
        "variantName" => [String.t() | atom()]
      }

  """
  @type control_stats() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tool_description_recommendation_result() :: %{
        "configurationBundle" => recommendation_result_configuration_bundle(),
        "errorCode" => String.t() | atom(),
        "errorMessage" => String.t() | atom(),
        "tools" => list(tool_description_output())
      }

  """
  @type tool_description_recommendation_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      linked_account_email() :: %{
        "emailAddress" => String.t() | atom()
      }

  """
  @type linked_account_email() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      recommendation_result_configuration_bundle() :: %{
        "bundleArn" => String.t() | atom(),
        "versionId" => String.t() | atom()
      }

  """
  @type recommendation_result_configuration_bundle() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      user_intent_affected_session() :: %{
        "sessionId" => [String.t() | atom()],
        "userMessages" => list([String.t() | atom()]())
      }

  """
  @type user_intent_affected_session() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_event_input() :: %{}

  """
  @type get_event_input() :: %{}

  @typedoc """

  ## Example:

      get_resource_payment_token_response() :: %{
        "paymentTokenResponse" => list()
      }

  """
  @type get_resource_payment_token_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_recommendation_response() :: %{
        "createdAt" => [non_neg_integer()],
        "description" => String.t() | atom(),
        "kmsKeyArn" => String.t() | atom(),
        "name" => String.t() | atom(),
        "recommendationArn" => String.t() | atom(),
        "recommendationConfig" => list(),
        "recommendationId" => String.t() | atom(),
        "recommendationResult" => list(),
        "status" => list(any()),
        "type" => list(any()),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type get_recommendation_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      memory_record_update_input() :: %{
        "content" => list(),
        "memoryRecordId" => String.t() | atom(),
        "memoryStrategyId" => String.t() | atom(),
        "metadata" => map(),
        "namespaces" => list(String.t() | atom()),
        "timestamp" => [non_neg_integer()]
      }

  """
  @type memory_record_update_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      execution_summary_affected_session() :: %{
        "approachTaken" => [String.t() | atom()],
        "finalOutcome" => [String.t() | atom()],
        "sessionId" => [String.t() | atom()]
      }

  """
  @type execution_summary_affected_session() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      event() :: %{
        "actorId" => String.t() | atom(),
        "branch" => branch(),
        "eventId" => String.t() | atom(),
        "eventTimestamp" => [non_neg_integer()],
        "memoryId" => String.t() | atom(),
        "metadata" => map(),
        "payload" => list(list()),
        "sessionId" => String.t() | atom()
      }

  """
  @type event() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_workload_access_token_for_user_id_response() :: %{
        "workloadAccessToken" => String.t() | atom()
      }

  """
  @type get_workload_access_token_for_user_id_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      coinbase_cdp_token_response_output() :: %{
        "bearerToken" => String.t() | atom(),
        "walletAuthToken" => String.t() | atom()
      }

  """
  @type coinbase_cdp_token_response_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_event_input() :: %{
        optional("branch") => branch(),
        optional("clientToken") => [String.t() | atom()],
        optional("metadata") => map(),
        optional("sessionId") => String.t() | atom(),
        required("actorId") => String.t() | atom(),
        required("eventTimestamp") => [non_neg_integer()],
        required("payload") => list(list())
      }

  """
  @type create_event_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tool_description_output() :: %{
        "explanation" => String.t() | atom(),
        "recommendedToolDescription" => String.t() | atom(),
        "toolName" => String.t() | atom()
      }

  """
  @type tool_description_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      linked_account_sms() :: %{
        "phoneNumber" => String.t() | atom()
      }

  """
  @type linked_account_sms() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_payment_sessions_request() :: %{
        optional("agentName") => String.t() | atom(),
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom(),
        optional("userId") => String.t() | atom(),
        required("paymentManagerArn") => String.t() | atom()
      }

  """
  @type list_payment_sessions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_payment_instrument_request() :: %{
        optional("agentName") => String.t() | atom(),
        optional("clientToken") => String.t() | atom(),
        optional("userId") => String.t() | atom(),
        required("paymentConnectorId") => String.t() | atom(),
        required("paymentInstrumentDetails") => list(),
        required("paymentInstrumentType") => list(any()),
        required("paymentManagerArn") => String.t() | atom()
      }

  """
  @type create_payment_instrument_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_code_interpreter_sessions_response() :: %{
        "items" => list(code_interpreter_session_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_code_interpreter_sessions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      stripe_privy_token_request_input() :: %{
        "includeAuthorizationSignature" => [boolean()],
        "requestBody" => String.t() | atom(),
        "requestHost" => String.t() | atom(),
        "requestPath" => String.t() | atom()
      }

  """
  @type stripe_privy_token_request_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      external_proxy() :: %{
        "credentials" => list(),
        "domainPatterns" => list(String.t() | atom()),
        "port" => [integer()],
        "server" => String.t() | atom()
      }

  """
  @type external_proxy() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      process_payment_request() :: %{
        optional("agentName") => String.t() | atom(),
        optional("clientToken") => String.t() | atom(),
        optional("userId") => String.t() | atom(),
        required("paymentInput") => list(),
        required("paymentInstrumentId") => String.t() | atom(),
        required("paymentManagerArn") => String.t() | atom(),
        required("paymentSessionId") => String.t() | atom(),
        required("paymentType") => list(any())
      }

  """
  @type process_payment_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invoke_code_interpreter_request() :: %{
        optional("arguments") => tool_arguments(),
        optional("sessionId") => String.t() | atom(),
        optional("traceId") => [String.t() | atom()],
        optional("traceParent") => [String.t() | atom()],
        required("name") => list(any())
      }

  """
  @type invoke_code_interpreter_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      mouse_drag_arguments() :: %{
        "button" => list(any()),
        "endX" => [integer()],
        "endY" => [integer()],
        "startX" => [integer()],
        "startY" => [integer()]
      }

  """
  @type mouse_drag_arguments() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      mouse_move_arguments() :: %{
        "x" => [integer()],
        "y" => [integer()]
      }

  """
  @type mouse_move_arguments() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invoke_agent_runtime_command_request() :: %{
        optional("accept") => String.t() | atom(),
        optional("accountId") => [String.t() | atom()],
        optional("baggage") => [String.t() | atom()],
        optional("contentType") => String.t() | atom(),
        optional("qualifier") => [String.t() | atom()],
        optional("runtimeSessionId") => String.t() | atom(),
        optional("traceId") => [String.t() | atom()],
        optional("traceParent") => [String.t() | atom()],
        optional("traceState") => [String.t() | atom()],
        required("body") => invoke_agent_runtime_command_request_body()
      }

  """
  @type invoke_agent_runtime_command_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_resource_oauth2_token_response() :: %{
        "accessToken" => String.t() | atom(),
        "authorizationUrl" => String.t() | atom(),
        "sessionStatus" => list(any()),
        "sessionUri" => String.t() | atom()
      }

  """
  @type get_resource_oauth2_token_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_a_b_tests_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()]
      }

  """
  @type list_a_b_tests_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      harness_agent_core_code_interpreter_config() :: %{
        "codeInterpreterArn" => String.t() | atom()
      }

  """
  @type harness_agent_core_code_interpreter_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      harness_agent_core_browser_config() :: %{
        "browserArn" => String.t() | atom()
      }

  """
  @type harness_agent_core_browser_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invoke_agent_runtime_command_request_body() :: %{
        "command" => [String.t() | atom()],
        "timeout" => [integer()]
      }

  """
  @type invoke_agent_runtime_command_request_body() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      target_ref() :: %{
        "name" => String.t() | atom()
      }

  """
  @type target_ref() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_memory_record_output() :: %{
        "memoryRecordId" => String.t() | atom()
      }

  """
  @type delete_memory_record_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      system_prompt_recommendation_result() :: %{
        "configurationBundle" => recommendation_result_configuration_bundle(),
        "errorCode" => String.t() | atom(),
        "errorMessage" => String.t() | atom(),
        "explanation" => String.t() | atom(),
        "recommendedSystemPrompt" => String.t() | atom()
      }

  """
  @type system_prompt_recommendation_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      complete_resource_token_auth_request() :: %{
        required("sessionUri") => String.t() | atom(),
        required("userIdentifier") => list()
      }

  """
  @type complete_resource_token_auth_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      browser_enterprise_policy() :: %{
        "location" => list(),
        "type" => list(any())
      }

  """
  @type browser_enterprise_policy() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      stop_runtime_session_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("qualifier") => [String.t() | atom()],
        required("runtimeSessionId") => String.t() | atom()
      }

  """
  @type stop_runtime_session_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      branch() :: %{
        "name" => String.t() | atom(),
        "rootEventId" => String.t() | atom()
      }

  """
  @type branch() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      failure_sub_category_cluster() :: %{
        "affectedSessionCount" => [integer()],
        "clusterId" => [integer()],
        "description" => [String.t() | atom()],
        "name" => [String.t() | atom()],
        "rootCauses" => list(root_cause_cluster())
      }

  """
  @type failure_sub_category_cluster() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_batch_evaluation_response() :: %{
        "batchEvaluationArn" => String.t() | atom(),
        "batchEvaluationId" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type delete_batch_evaluation_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      harness_skill_aws_skills_source() :: %{
        "paths" => list(String.t() | atom())
      }

  """
  @type harness_skill_aws_skills_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      session_filter_config() :: %{
        "endTime" => [non_neg_integer()],
        "startTime" => [non_neg_integer()]
      }

  """
  @type session_filter_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_delete_memory_records_output() :: %{
        "failedRecords" => list(memory_record_output()),
        "successfulRecords" => list(memory_record_output())
      }

  """
  @type batch_delete_memory_records_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_recommendation_request() :: %{}

  """
  @type delete_recommendation_request() :: %{}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      branch_filter() :: %{
        "includeParentBranches" => [boolean()],
        "name" => String.t() | atom()
      }

  """
  @type branch_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_browser_stream_response() :: %{
        "browserIdentifier" => [String.t() | atom()],
        "sessionId" => String.t() | atom(),
        "streams" => browser_session_stream(),
        "updatedAt" => non_neg_integer()
      }

  """
  @type update_browser_stream_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      execution_summary_clustering_result_content() :: %{
        "executionSummaries" => list(execution_summary_cluster())
      }

  """
  @type execution_summary_clustering_result_content() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      harness_inline_function_config() :: %{
        "description" => String.t() | atom(),
        "inputSchema" => any()
      }

  """
  @type harness_inline_function_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_browser_sessions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("status") => list(any())
      }

  """
  @type list_browser_sessions_request() :: %{(String.t() | atom()) => any()}

  @type batch_create_memory_records_errors() ::
          service_quota_exceeded_exception()
          | throttled_exception()
          | service_exception()
          | resource_not_found_exception()
          | validation_exception()
          | access_denied_exception()

  @type batch_delete_memory_records_errors() ::
          service_quota_exceeded_exception()
          | throttled_exception()
          | service_exception()
          | resource_not_found_exception()
          | validation_exception()
          | access_denied_exception()

  @type batch_update_memory_records_errors() ::
          service_quota_exceeded_exception()
          | throttled_exception()
          | service_exception()
          | resource_not_found_exception()
          | validation_exception()
          | access_denied_exception()

  @type complete_resource_token_auth_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | unauthorized_exception()
          | access_denied_exception()
          | throttling_exception()

  @type create_a_b_test_errors() ::
          service_quota_exceeded_exception()
          | conflict_exception()
          | internal_server_exception()
          | validation_exception()
          | unauthorized_exception()
          | access_denied_exception()
          | throttling_exception()

  @type create_event_errors() ::
          service_quota_exceeded_exception()
          | throttled_exception()
          | invalid_input_exception()
          | retryable_conflict_exception()
          | service_exception()
          | resource_not_found_exception()
          | validation_exception()
          | access_denied_exception()

  @type create_payment_instrument_errors() ::
          service_quota_exceeded_exception()
          | conflict_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type create_payment_session_errors() ::
          service_quota_exceeded_exception()
          | conflict_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type delete_a_b_test_errors() ::
          conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | unauthorized_exception()
          | access_denied_exception()
          | throttling_exception()

  @type delete_batch_evaluation_errors() ::
          conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | unauthorized_exception()
          | access_denied_exception()
          | throttling_exception()

  @type delete_event_errors() ::
          service_quota_exceeded_exception()
          | throttled_exception()
          | invalid_input_exception()
          | service_exception()
          | resource_not_found_exception()
          | validation_exception()
          | access_denied_exception()

  @type delete_memory_record_errors() ::
          service_quota_exceeded_exception()
          | throttled_exception()
          | invalid_input_exception()
          | service_exception()
          | resource_not_found_exception()
          | validation_exception()
          | access_denied_exception()

  @type delete_payment_instrument_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type delete_payment_session_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type delete_recommendation_errors() ::
          conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type evaluate_errors() ::
          service_quota_exceeded_exception()
          | conflict_exception()
          | duplicate_id_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | unauthorized_exception()
          | access_denied_exception()
          | throttling_exception()

  @type get_a_b_test_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | unauthorized_exception()
          | access_denied_exception()
          | throttling_exception()

  @type get_agent_card_errors() ::
          service_quota_exceeded_exception()
          | retryable_conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | runtime_client_error()
          | access_denied_exception()
          | throttling_exception()

  @type get_batch_evaluation_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | unauthorized_exception()
          | access_denied_exception()
          | throttling_exception()

  @type get_browser_session_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type get_code_interpreter_session_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type get_event_errors() ::
          service_quota_exceeded_exception()
          | throttled_exception()
          | invalid_input_exception()
          | service_exception()
          | resource_not_found_exception()
          | validation_exception()
          | access_denied_exception()

  @type get_memory_record_errors() ::
          service_quota_exceeded_exception()
          | throttled_exception()
          | invalid_input_exception()
          | service_exception()
          | resource_not_found_exception()
          | validation_exception()
          | access_denied_exception()

  @type get_payment_instrument_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type get_payment_instrument_balance_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type get_payment_session_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type get_recommendation_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type get_resource_api_key_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | unauthorized_exception()
          | access_denied_exception()
          | throttling_exception()

  @type get_resource_oauth2_token_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | unauthorized_exception()
          | access_denied_exception()
          | throttling_exception()

  @type get_resource_payment_token_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | unauthorized_exception()
          | access_denied_exception()
          | throttling_exception()

  @type get_workload_access_token_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | unauthorized_exception()
          | access_denied_exception()
          | throttling_exception()

  @type get_workload_access_token_for_j_w_t_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | unauthorized_exception()
          | access_denied_exception()
          | throttling_exception()

  @type get_workload_access_token_for_user_id_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | unauthorized_exception()
          | access_denied_exception()
          | throttling_exception()

  @type invoke_agent_runtime_errors() ::
          service_quota_exceeded_exception()
          | retryable_conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | runtime_client_error()
          | access_denied_exception()
          | throttling_exception()

  @type invoke_agent_runtime_command_errors() ::
          service_quota_exceeded_exception()
          | retryable_conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | runtime_client_error()
          | access_denied_exception()
          | throttling_exception()

  @type invoke_browser_errors() ::
          service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type invoke_code_interpreter_errors() ::
          service_quota_exceeded_exception()
          | conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type invoke_harness_errors() ::
          service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | runtime_client_error()
          | access_denied_exception()
          | throttling_exception()

  @type list_a_b_tests_errors() ::
          internal_server_exception()
          | validation_exception()
          | unauthorized_exception()
          | access_denied_exception()
          | throttling_exception()

  @type list_actors_errors() ::
          service_quota_exceeded_exception()
          | throttled_exception()
          | invalid_input_exception()
          | service_exception()
          | resource_not_found_exception()
          | validation_exception()
          | access_denied_exception()

  @type list_batch_evaluations_errors() ::
          internal_server_exception()
          | validation_exception()
          | unauthorized_exception()
          | access_denied_exception()
          | throttling_exception()

  @type list_browser_sessions_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type list_code_interpreter_sessions_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type list_events_errors() ::
          service_quota_exceeded_exception()
          | throttled_exception()
          | invalid_input_exception()
          | service_exception()
          | resource_not_found_exception()
          | validation_exception()
          | access_denied_exception()

  @type list_memory_extraction_jobs_errors() ::
          service_quota_exceeded_exception()
          | throttled_exception()
          | service_exception()
          | resource_not_found_exception()
          | validation_exception()
          | access_denied_exception()

  @type list_memory_records_errors() ::
          service_quota_exceeded_exception()
          | throttled_exception()
          | invalid_input_exception()
          | service_exception()
          | resource_not_found_exception()
          | validation_exception()
          | access_denied_exception()

  @type list_payment_instruments_errors() ::
          internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type list_payment_sessions_errors() ::
          internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type list_recommendations_errors() ::
          internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type list_sessions_errors() ::
          service_quota_exceeded_exception()
          | throttled_exception()
          | invalid_input_exception()
          | service_exception()
          | resource_not_found_exception()
          | validation_exception()
          | access_denied_exception()

  @type process_payment_errors() ::
          service_quota_exceeded_exception()
          | conflict_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type retrieve_memory_records_errors() ::
          service_quota_exceeded_exception()
          | throttled_exception()
          | invalid_input_exception()
          | service_exception()
          | resource_not_found_exception()
          | validation_exception()
          | access_denied_exception()

  @type save_browser_session_profile_errors() ::
          conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type search_registry_records_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | unauthorized_exception()
          | access_denied_exception()
          | throttling_exception()

  @type start_batch_evaluation_errors() ::
          service_quota_exceeded_exception()
          | conflict_exception()
          | internal_server_exception()
          | validation_exception()
          | unauthorized_exception()
          | access_denied_exception()
          | throttling_exception()

  @type start_browser_session_errors() ::
          service_quota_exceeded_exception()
          | conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type start_code_interpreter_session_errors() ::
          service_quota_exceeded_exception()
          | conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type start_memory_extraction_job_errors() ::
          service_quota_exceeded_exception()
          | throttled_exception()
          | service_exception()
          | resource_not_found_exception()
          | validation_exception()
          | access_denied_exception()

  @type start_recommendation_errors() ::
          service_quota_exceeded_exception()
          | conflict_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type stop_batch_evaluation_errors() ::
          conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | unauthorized_exception()
          | access_denied_exception()
          | throttling_exception()

  @type stop_browser_session_errors() ::
          service_quota_exceeded_exception()
          | conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type stop_code_interpreter_session_errors() ::
          service_quota_exceeded_exception()
          | conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type stop_runtime_session_errors() ::
          service_quota_exceeded_exception()
          | retryable_conflict_exception()
          | conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | unauthorized_exception()
          | runtime_client_error()
          | access_denied_exception()
          | throttling_exception()

  @type update_a_b_test_errors() ::
          service_quota_exceeded_exception()
          | conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | unauthorized_exception()
          | access_denied_exception()
          | throttling_exception()

  @type update_browser_stream_errors() ::
          service_quota_exceeded_exception()
          | conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  def metadata do
    %{
      api_version: "2024-02-28",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "bedrock-agentcore",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Bedrock AgentCore",
      signature_version: "v4",
      signing_name: "bedrock-agentcore",
      target_prefix: nil
    }
  end

  @doc """
  Creates multiple memory records in a single batch operation for the specified
  memory with custom content.
  """
  @spec batch_create_memory_records(
          map(),
          String.t() | atom(),
          batch_create_memory_records_input(),
          list()
        ) ::
          {:ok, batch_create_memory_records_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_create_memory_records_errors()}
  def batch_create_memory_records(%Client{} = client, memory_id, input, options \\ []) do
    url_path = "/memories/#{AWS.Util.encode_uri(memory_id)}/memoryRecords/batchCreate"
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
  Deletes multiple memory records in a single batch operation from the specified
  memory.
  """
  @spec batch_delete_memory_records(
          map(),
          String.t() | atom(),
          batch_delete_memory_records_input(),
          list()
        ) ::
          {:ok, batch_delete_memory_records_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_delete_memory_records_errors()}
  def batch_delete_memory_records(%Client{} = client, memory_id, input, options \\ []) do
    url_path = "/memories/#{AWS.Util.encode_uri(memory_id)}/memoryRecords/batchDelete"
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
  Updates multiple memory records with custom content in a single batch operation
  within the specified memory.
  """
  @spec batch_update_memory_records(
          map(),
          String.t() | atom(),
          batch_update_memory_records_input(),
          list()
        ) ::
          {:ok, batch_update_memory_records_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_update_memory_records_errors()}
  def batch_update_memory_records(%Client{} = client, memory_id, input, options \\ []) do
    url_path = "/memories/#{AWS.Util.encode_uri(memory_id)}/memoryRecords/batchUpdate"
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
  Confirms the user authentication session for obtaining OAuth2.0 tokens for a
  resource.
  """
  @spec complete_resource_token_auth(map(), complete_resource_token_auth_request(), list()) ::
          {:ok, complete_resource_token_auth_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, complete_resource_token_auth_errors()}
  def complete_resource_token_auth(%Client{} = client, input, options \\ []) do
    url_path = "/identities/CompleteResourceTokenAuth"
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
  Creates an A/B test for comparing agent configurations.

  A/B tests split traffic between a control variant and a treatment variant
  through a gateway, then evaluate performance using online evaluation
  configurations to determine which variant performs better.
  """
  @spec create_a_b_test(map(), create_a_b_test_request(), list()) ::
          {:ok, create_a_b_test_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_a_b_test_errors()}
  def create_a_b_test(%Client{} = client, input, options \\ []) do
    url_path = "/ab-tests"
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
  Creates an event in an AgentCore Memory resource.

  Events represent interactions or activities that occur within a session and are
  associated with specific actors.

  To use this operation, you must have the `bedrock-agentcore:CreateEvent`
  permission.

  This operation is subject to request rate limiting.
  """
  @spec create_event(map(), String.t() | atom(), create_event_input(), list()) ::
          {:ok, create_event_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_event_errors()}
  def create_event(%Client{} = client, memory_id, input, options \\ []) do
    url_path = "/memories/#{AWS.Util.encode_uri(memory_id)}/events"
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
  Create a new payment instrument for a connector.
  """
  @spec create_payment_instrument(map(), create_payment_instrument_request(), list()) ::
          {:ok, create_payment_instrument_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_payment_instrument_errors()}
  def create_payment_instrument(%Client{} = client, input, options \\ []) do
    url_path = "/payments/createPaymentInstrument"

    {headers, input} =
      [
        {"agentName", "X-Amzn-Bedrock-AgentCore-Payments-Agent-Name"},
        {"userId", "X-Amzn-Bedrock-AgentCore-Payments-User-Id"}
      ]
      |> Request.build_params(input)

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
  Create a new payment session.
  """
  @spec create_payment_session(map(), create_payment_session_request(), list()) ::
          {:ok, create_payment_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_payment_session_errors()}
  def create_payment_session(%Client{} = client, input, options \\ []) do
    url_path = "/payments/createPaymentSession"

    {headers, input} =
      [
        {"agentName", "X-Amzn-Bedrock-AgentCore-Payments-Agent-Name"},
        {"userId", "X-Amzn-Bedrock-AgentCore-Payments-User-Id"}
      ]
      |> Request.build_params(input)

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
  Deletes an A/B test and its associated gateway rules.
  """
  @spec delete_a_b_test(map(), String.t() | atom(), delete_a_b_test_request(), list()) ::
          {:ok, delete_a_b_test_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_a_b_test_errors()}
  def delete_a_b_test(%Client{} = client, ab_test_id, input, options \\ []) do
    url_path = "/ab-tests/#{AWS.Util.encode_uri(ab_test_id)}"
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
  Deletes a batch evaluation and its associated results.
  """
  @spec delete_batch_evaluation(
          map(),
          String.t() | atom(),
          delete_batch_evaluation_request(),
          list()
        ) ::
          {:ok, delete_batch_evaluation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_batch_evaluation_errors()}
  def delete_batch_evaluation(%Client{} = client, batch_evaluation_id, input, options \\ []) do
    url_path = "/evaluations/batch-evaluate/#{AWS.Util.encode_uri(batch_evaluation_id)}"
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
  Deletes an event from an AgentCore Memory resource.

  When you delete an event, it is permanently removed.

  To use this operation, you must have the `bedrock-agentcore:DeleteEvent`
  permission.
  """
  @spec delete_event(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          delete_event_input(),
          list()
        ) ::
          {:ok, delete_event_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_event_errors()}
  def delete_event(
        %Client{} = client,
        actor_id,
        event_id,
        memory_id,
        session_id,
        input,
        options \\ []
      ) do
    url_path =
      "/memories/#{AWS.Util.encode_uri(memory_id)}/actor/#{AWS.Util.encode_uri(actor_id)}/sessions/#{AWS.Util.encode_uri(session_id)}/events/#{AWS.Util.encode_uri(event_id)}"

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
  Deletes a memory record from an AgentCore Memory resource.

  When you delete a memory record, it is permanently removed.

  To use this operation, you must have the `bedrock-agentcore:DeleteMemoryRecord`
  permission.
  """
  @spec delete_memory_record(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_memory_record_input(),
          list()
        ) ::
          {:ok, delete_memory_record_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_memory_record_errors()}
  def delete_memory_record(%Client{} = client, memory_id, memory_record_id, input, options \\ []) do
    url_path =
      "/memories/#{AWS.Util.encode_uri(memory_id)}/memoryRecords/#{AWS.Util.encode_uri(memory_record_id)}"

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
  Deletes a payment instrument.

  This is a soft delete operation that preserves the record for audit and
  compliance purposes.
  """
  @spec delete_payment_instrument(map(), delete_payment_instrument_request(), list()) ::
          {:ok, delete_payment_instrument_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_payment_instrument_errors()}
  def delete_payment_instrument(%Client{} = client, input, options \\ []) do
    url_path = "/payments/deletePaymentInstrument"

    {headers, input} =
      [
        {"userId", "X-Amzn-Bedrock-AgentCore-Payments-User-Id"}
      ]
      |> Request.build_params(input)

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
  Deletes a payment session.

  This permanently removes the payment session record.
  """
  @spec delete_payment_session(map(), delete_payment_session_request(), list()) ::
          {:ok, delete_payment_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_payment_session_errors()}
  def delete_payment_session(%Client{} = client, input, options \\ []) do
    url_path = "/payments/deletePaymentSession"

    {headers, input} =
      [
        {"userId", "X-Amzn-Bedrock-AgentCore-Payments-User-Id"}
      ]
      |> Request.build_params(input)

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
  Deletes a recommendation and its associated results.
  """
  @spec delete_recommendation(map(), String.t() | atom(), delete_recommendation_request(), list()) ::
          {:ok, delete_recommendation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_recommendation_errors()}
  def delete_recommendation(%Client{} = client, recommendation_id, input, options \\ []) do
    url_path = "/recommendations/#{AWS.Util.encode_uri(recommendation_id)}"
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
  Performs on-demand evaluation of agent traces using a specified evaluator.

  This synchronous API accepts traces in OpenTelemetry format and returns
  immediate scoring results with detailed explanations.
  """
  @spec evaluate(map(), String.t() | atom(), evaluate_request(), list()) ::
          {:ok, evaluate_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, evaluate_errors()}
  def evaluate(%Client{} = client, evaluator_id, input, options \\ []) do
    url_path = "/evaluations/evaluate/#{AWS.Util.encode_uri(evaluator_id)}"
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
  Retrieves detailed information about an A/B test, including its configuration,
  status, and statistical results.
  """
  @spec get_a_b_test(map(), String.t() | atom(), list()) ::
          {:ok, get_a_b_test_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_a_b_test_errors()}
  def get_a_b_test(%Client{} = client, ab_test_id, options \\ []) do
    url_path = "/ab-tests/#{AWS.Util.encode_uri(ab_test_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the A2A agent card associated with an AgentCore Runtime agent.
  """
  @spec get_agent_card(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_agent_card_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_agent_card_errors()}
  def get_agent_card(
        %Client{} = client,
        agent_runtime_arn,
        qualifier \\ nil,
        runtime_session_id \\ nil,
        options \\ []
      ) do
    url_path =
      "/runtimes/#{AWS.Util.encode_uri(agent_runtime_arn)}/invocations/.well-known/agent-card.json"

    headers = []

    headers =
      if !is_nil(runtime_session_id) do
        [{"X-Amzn-Bedrock-AgentCore-Runtime-Session-Id", runtime_session_id} | headers]
      else
        headers
      end

    query_params = []

    query_params =
      if !is_nil(qualifier) do
        [{"qualifier", qualifier} | query_params]
      else
        query_params
      end

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"X-Amzn-Bedrock-AgentCore-Runtime-Session-Id", "runtimeSessionId"}]
      )

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves detailed information about a batch evaluation, including its status,
  configuration, results, and any error details.
  """
  @spec get_batch_evaluation(map(), String.t() | atom(), list()) ::
          {:ok, get_batch_evaluation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_batch_evaluation_errors()}
  def get_batch_evaluation(%Client{} = client, batch_evaluation_id, options \\ []) do
    url_path = "/evaluations/batch-evaluate/#{AWS.Util.encode_uri(batch_evaluation_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves detailed information about a specific browser session in Amazon
  Bedrock AgentCore.

  This operation returns the session's configuration, current status, associated
  streams, and metadata.

  To get a browser session, you must specify both the browser identifier and the
  session ID. The response includes information about the session's viewport
  configuration, timeout settings, and stream endpoints.

  The following operations are related to `GetBrowserSession`:

    *
  [StartBrowserSession](https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_StartBrowserSession.html)     *
  [ListBrowserSessions](https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_ListBrowserSessions.html)

    *
  [StopBrowserSession](https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_StopBrowserSession.html)
  """
  @spec get_browser_session(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_browser_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_browser_session_errors()}
  def get_browser_session(%Client{} = client, browser_identifier, session_id, options \\ []) do
    url_path = "/browsers/#{AWS.Util.encode_uri(browser_identifier)}/sessions/get"
    headers = []
    query_params = []

    query_params =
      if !is_nil(session_id) do
        [{"sessionId", session_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves detailed information about a specific code interpreter session in
  Amazon Bedrock AgentCore.

  This operation returns the session's configuration, current status, and
  metadata.

  To get a code interpreter session, you must specify both the code interpreter
  identifier and the session ID. The response includes information about the
  session's timeout settings and current status.

  The following operations are related to `GetCodeInterpreterSession`:

    *
  [StartCodeInterpreterSession](https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_StartCodeInterpreterSession.html)     *
  [ListCodeInterpreterSessions](https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_ListCodeInterpreterSessions.html)

    *
  [StopCodeInterpreterSession](https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_StopCodeInterpreterSession.html)
  """
  @spec get_code_interpreter_session(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_code_interpreter_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_code_interpreter_session_errors()}
  def get_code_interpreter_session(
        %Client{} = client,
        code_interpreter_identifier,
        session_id,
        options \\ []
      ) do
    url_path =
      "/code-interpreters/#{AWS.Util.encode_uri(code_interpreter_identifier)}/sessions/get"

    headers = []
    query_params = []

    query_params =
      if !is_nil(session_id) do
        [{"sessionId", session_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a specific event in an AgentCore Memory resource.

  To use this operation, you must have the `bedrock-agentcore:GetEvent`
  permission.
  """
  @spec get_event(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          list()
        ) ::
          {:ok, get_event_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_event_errors()}
  def get_event(%Client{} = client, actor_id, event_id, memory_id, session_id, options \\ []) do
    url_path =
      "/memories/#{AWS.Util.encode_uri(memory_id)}/actor/#{AWS.Util.encode_uri(actor_id)}/sessions/#{AWS.Util.encode_uri(session_id)}/events/#{AWS.Util.encode_uri(event_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a specific memory record from an AgentCore Memory resource.

  To use this operation, you must have the `bedrock-agentcore:GetMemoryRecord`
  permission.
  """
  @spec get_memory_record(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_memory_record_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_memory_record_errors()}
  def get_memory_record(%Client{} = client, memory_id, memory_record_id, options \\ []) do
    url_path =
      "/memories/#{AWS.Util.encode_uri(memory_id)}/memoryRecord/#{AWS.Util.encode_uri(memory_record_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get a payment instrument by ID.
  """
  @spec get_payment_instrument(map(), get_payment_instrument_request(), list()) ::
          {:ok, get_payment_instrument_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_payment_instrument_errors()}
  def get_payment_instrument(%Client{} = client, input, options \\ []) do
    url_path = "/payments/getPaymentInstrument"

    {headers, input} =
      [
        {"agentName", "X-Amzn-Bedrock-AgentCore-Payments-Agent-Name"},
        {"userId", "X-Amzn-Bedrock-AgentCore-Payments-User-Id"}
      ]
      |> Request.build_params(input)

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
  Get the balance of a payment instrument.
  """
  @spec get_payment_instrument_balance(map(), get_payment_instrument_balance_request(), list()) ::
          {:ok, get_payment_instrument_balance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_payment_instrument_balance_errors()}
  def get_payment_instrument_balance(%Client{} = client, input, options \\ []) do
    url_path = "/payments/getPaymentInstrumentBalance"

    {headers, input} =
      [
        {"agentName", "X-Amzn-Bedrock-AgentCore-Payments-Agent-Name"},
        {"userId", "X-Amzn-Bedrock-AgentCore-Payments-User-Id"}
      ]
      |> Request.build_params(input)

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
  Get a payment session.
  """
  @spec get_payment_session(map(), get_payment_session_request(), list()) ::
          {:ok, get_payment_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_payment_session_errors()}
  def get_payment_session(%Client{} = client, input, options \\ []) do
    url_path = "/payments/getPaymentSession"

    {headers, input} =
      [
        {"agentName", "X-Amzn-Bedrock-AgentCore-Payments-Agent-Name"},
        {"userId", "X-Amzn-Bedrock-AgentCore-Payments-User-Id"}
      ]
      |> Request.build_params(input)

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
  Retrieves detailed information about a recommendation, including its
  configuration, status, and results.
  """
  @spec get_recommendation(map(), String.t() | atom(), list()) ::
          {:ok, get_recommendation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_recommendation_errors()}
  def get_recommendation(%Client{} = client, recommendation_id, options \\ []) do
    url_path = "/recommendations/#{AWS.Util.encode_uri(recommendation_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the API key associated with an API key credential provider.
  """
  @spec get_resource_api_key(map(), get_resource_api_key_request(), list()) ::
          {:ok, get_resource_api_key_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_resource_api_key_errors()}
  def get_resource_api_key(%Client{} = client, input, options \\ []) do
    url_path = "/identities/api-key"
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
  Returns the OAuth 2.0 token of the provided resource.
  """
  @spec get_resource_oauth2_token(map(), get_resource_oauth2_token_request(), list()) ::
          {:ok, get_resource_oauth2_token_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_resource_oauth2_token_errors()}
  def get_resource_oauth2_token(%Client{} = client, input, options \\ []) do
    url_path = "/identities/oauth2/token"
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
  Generates authentication tokens for payment providers that use vendor-specific
  authentication mechanisms.
  """
  @spec get_resource_payment_token(map(), get_resource_payment_token_request(), list()) ::
          {:ok, get_resource_payment_token_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_resource_payment_token_errors()}
  def get_resource_payment_token(%Client{} = client, input, options \\ []) do
    url_path = "/identities/payment/token"
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
  Obtains a workload access token for agentic workloads not acting on behalf of a
  user.
  """
  @spec get_workload_access_token(map(), get_workload_access_token_request(), list()) ::
          {:ok, get_workload_access_token_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_workload_access_token_errors()}
  def get_workload_access_token(%Client{} = client, input, options \\ []) do
    url_path = "/identities/GetWorkloadAccessToken"
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
  Obtains a workload access token for agentic workloads acting on behalf of a
  user, using a JWT token.
  """
  @spec get_workload_access_token_for_j_w_t(
          map(),
          get_workload_access_token_for_j_w_t_request(),
          list()
        ) ::
          {:ok, get_workload_access_token_for_j_w_t_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_workload_access_token_for_j_w_t_errors()}
  def get_workload_access_token_for_j_w_t(%Client{} = client, input, options \\ []) do
    url_path = "/identities/GetWorkloadAccessTokenForJWT"
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
  Obtains a workload access token for agentic workloads acting on behalf of a
  user, using the user's ID.
  """
  @spec get_workload_access_token_for_user_id(
          map(),
          get_workload_access_token_for_user_id_request(),
          list()
        ) ::
          {:ok, get_workload_access_token_for_user_id_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_workload_access_token_for_user_id_errors()}
  def get_workload_access_token_for_user_id(%Client{} = client, input, options \\ []) do
    url_path = "/identities/GetWorkloadAccessTokenForUserId"
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
  Sends a request to an agent or tool hosted in an Amazon Bedrock AgentCore
  Runtime and receives responses in real-time.

  To invoke an agent, you can specify either the AgentCore Runtime ARN or the
  agent ID with an account ID, and provide a payload containing your request. When
  you use the agent ID instead of the full ARN, you don't need to URL-encode the
  identifier. You can optionally specify a qualifier to target a specific endpoint
  of the agent.

  This operation supports streaming responses, allowing you to receive partial
  responses as they become available. We recommend using pagination to ensure that
  the operation returns quickly and successfully when processing large responses.

  For example code, see [Invoke an AgentCore Runtime agent](https://docs.aws.amazon.com/bedrock-agentcore/latest/devguide/runtime-invoke-agent.html).

  If you're integrating your agent with OAuth, you can't use the Amazon Web
  Services SDK to call `InvokeAgentRuntime`. Instead, make a HTTPS request to
  `InvokeAgentRuntime`. For an example, see [Authenticate and authorize with Inbound Auth and Outbound
  Auth](https://docs.aws.amazon.com/bedrock-agentcore/latest/devguide/runtime-oauth.html).

  To use this operation, you must have the `bedrock-agentcore:InvokeAgentRuntime`
  permission. If you are making a call to `InvokeAgentRuntime` on behalf of a user
  ID with the `X-Amzn-Bedrock-AgentCore-Runtime-User-Id` header, You require
  permissions to both actions (`bedrock-agentcore:InvokeAgentRuntime` and
  `bedrock-agentcore:InvokeAgentRuntimeForUser`).
  """
  @spec invoke_agent_runtime(map(), String.t() | atom(), invoke_agent_runtime_request(), list()) ::
          {:ok, invoke_agent_runtime_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, invoke_agent_runtime_errors()}
  def invoke_agent_runtime(%Client{} = client, agent_runtime_arn, input, options \\ []) do
    url_path = "/runtimes/#{AWS.Util.encode_uri(agent_runtime_arn)}/invocations"

    {headers, input} =
      [
        {"accept", "Accept"},
        {"baggage", "baggage"},
        {"contentType", "Content-Type"},
        {"mcpProtocolVersion", "Mcp-Protocol-Version"},
        {"mcpSessionId", "Mcp-Session-Id"},
        {"runtimeSessionId", "X-Amzn-Bedrock-AgentCore-Runtime-Session-Id"},
        {"runtimeUserId", "X-Amzn-Bedrock-AgentCore-Runtime-User-Id"},
        {"traceId", "X-Amzn-Trace-Id"},
        {"traceParent", "traceparent"},
        {"traceState", "tracestate"}
      ]
      |> Request.build_params(input)

    custom_headers = []

    {query_params, input} =
      [
        {"accountId", "accountId"},
        {"qualifier", "qualifier"}
      ]
      |> Request.build_params(input)

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"baggage", "baggage"},
          {"Content-Type", "contentType"},
          {"Mcp-Protocol-Version", "mcpProtocolVersion"},
          {"Mcp-Session-Id", "mcpSessionId"},
          {"X-Amzn-Bedrock-AgentCore-Runtime-Session-Id", "runtimeSessionId"},
          {"X-Amzn-Trace-Id", "traceId"},
          {"traceparent", "traceParent"},
          {"tracestate", "traceState"}
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
  Executes a command in a runtime session container and streams the output back to
  the caller.

  This operation allows you to run shell commands within the agent runtime
  environment and receive real-time streaming responses including standard output
  and standard error.

  To invoke a command, you must specify the agent runtime ARN and a runtime
  session ID. The command execution supports streaming responses, allowing you to
  receive output as it becomes available through `contentStart`, `contentDelta`,
  and `contentStop` events.

  To use this operation, you must have the
  `bedrock-agentcore:InvokeAgentRuntimeCommand` permission.
  """
  @spec invoke_agent_runtime_command(
          map(),
          String.t() | atom(),
          invoke_agent_runtime_command_request(),
          list()
        ) ::
          {:ok, invoke_agent_runtime_command_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, invoke_agent_runtime_command_errors()}
  def invoke_agent_runtime_command(%Client{} = client, agent_runtime_arn, input, options \\ []) do
    url_path = "/runtimes/#{AWS.Util.encode_uri(agent_runtime_arn)}/commands"

    {headers, input} =
      [
        {"accept", "Accept"},
        {"baggage", "baggage"},
        {"contentType", "Content-Type"},
        {"runtimeSessionId", "X-Amzn-Bedrock-AgentCore-Runtime-Session-Id"},
        {"traceId", "X-Amzn-Trace-Id"},
        {"traceParent", "traceparent"},
        {"traceState", "tracestate"}
      ]
      |> Request.build_params(input)

    custom_headers = []

    {query_params, input} =
      [
        {"accountId", "accountId"},
        {"qualifier", "qualifier"}
      ]
      |> Request.build_params(input)

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"baggage", "baggage"},
          {"Content-Type", "contentType"},
          {"X-Amzn-Bedrock-AgentCore-Runtime-Session-Id", "runtimeSessionId"},
          {"X-Amzn-Trace-Id", "traceId"},
          {"traceparent", "traceParent"},
          {"tracestate", "traceState"}
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
  Invokes an operating system-level action on a browser session in Amazon Bedrock
  AgentCore.

  This operation provides direct OS-level control over browser sessions, enabling
  mouse actions, keyboard input, and screenshots that the WebSocket-based Chrome
  DevTools Protocol (CDP) cannot handle — such as interacting with print dialogs,
  context menus, and JavaScript alerts.

  You send a request with exactly one action in the `BrowserAction` union, and
  receive a corresponding result in the `BrowserActionResult` union.

  The following operations are related to `InvokeBrowser`:

    *
  [StartBrowserSession](https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_StartBrowserSession.html)     *
  [GetBrowserSession](https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_GetBrowserSession.html)

    *
  [StopBrowserSession](https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_StopBrowserSession.html)
  """
  @spec invoke_browser(map(), String.t() | atom(), invoke_browser_request(), list()) ::
          {:ok, invoke_browser_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, invoke_browser_errors()}
  def invoke_browser(%Client{} = client, browser_identifier, input, options \\ []) do
    url_path = "/browsers/#{AWS.Util.encode_uri(browser_identifier)}/sessions/invoke"

    {headers, input} =
      [
        {"sessionId", "x-amzn-browser-session-id"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"x-amzn-browser-session-id", "sessionId"}]
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
  Executes code within an active code interpreter session in Amazon Bedrock
  AgentCore.

  This operation processes the provided code, runs it in a secure environment, and
  returns the execution results including output, errors, and generated
  visualizations.

  To execute code, you must specify the code interpreter identifier, session ID,
  and the code to run in the arguments parameter. The operation returns a stream
  containing the execution results, which can include text output, error messages,
  and data visualizations.

  This operation is subject to request rate limiting based on your account's
  service quotas.

  The following operations are related to `InvokeCodeInterpreter`:

    *
  [StartCodeInterpreterSession](https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_StartCodeInterpreterSession.html)     *
  [GetCodeInterpreterSession](https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_GetCodeInterpreterSession.html)
  """
  @spec invoke_code_interpreter(
          map(),
          String.t() | atom(),
          invoke_code_interpreter_request(),
          list()
        ) ::
          {:ok, invoke_code_interpreter_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, invoke_code_interpreter_errors()}
  def invoke_code_interpreter(
        %Client{} = client,
        code_interpreter_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/code-interpreters/#{AWS.Util.encode_uri(code_interpreter_identifier)}/tools/invoke"

    {headers, input} =
      [
        {"sessionId", "x-amzn-code-interpreter-session-id"},
        {"traceId", "X-Amzn-Trace-Id"},
        {"traceParent", "traceparent"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"x-amzn-code-interpreter-session-id", "sessionId"}]
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
  Operation to invoke a Harness.
  """
  @spec invoke_harness(map(), invoke_harness_request(), list()) ::
          {:ok, invoke_harness_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, invoke_harness_errors()}
  def invoke_harness(%Client{} = client, input, options \\ []) do
    url_path = "/harnesses/invoke"

    {headers, input} =
      [
        {"runtimeSessionId", "X-Amzn-Bedrock-AgentCore-Runtime-Session-Id"},
        {"runtimeUserId", "X-Amzn-Bedrock-AgentCore-Runtime-User-Id"}
      ]
      |> Request.build_params(input)

    custom_headers = []

    {query_params, input} =
      [
        {"harnessArn", "harnessArn"},
        {"qualifier", "qualifier"}
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
  Lists all A/B tests in the account.
  """
  @spec list_a_b_tests(map(), String.t() | atom() | nil, String.t() | atom() | nil, list()) ::
          {:ok, list_a_b_tests_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_a_b_tests_errors()}
  def list_a_b_tests(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/ab-tests"
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
  Lists all actors in an AgentCore Memory resource.

  We recommend using pagination to ensure that the operation returns quickly and
  successfully.

  To use this operation, you must have the `bedrock-agentcore:ListActors`
  permission.
  """
  @spec list_actors(map(), String.t() | atom(), list_actors_input(), list()) ::
          {:ok, list_actors_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_actors_errors()}
  def list_actors(%Client{} = client, memory_id, input, options \\ []) do
    url_path = "/memories/#{AWS.Util.encode_uri(memory_id)}/actors"
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
  Lists all batch evaluations in the account, providing summary information about
  each evaluation's status and configuration.
  """
  @spec list_batch_evaluations(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_batch_evaluations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_batch_evaluations_errors()}
  def list_batch_evaluations(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/evaluations/batch-evaluate"
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
  Retrieves a list of browser sessions in Amazon Bedrock AgentCore that match the
  specified criteria.

  This operation returns summary information about each session, including
  identifiers, status, and timestamps.

  You can filter the results by browser identifier and session status. The
  operation supports pagination to handle large result sets efficiently.

  We recommend using pagination to ensure that the operation returns quickly and
  successfully when retrieving large numbers of sessions.

  The following operations are related to `ListBrowserSessions`:

    *
  [StartBrowserSession](https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_StartBrowserSession.html)     *
  [GetBrowserSession](https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_GetBrowserSession.html)
  """
  @spec list_browser_sessions(map(), String.t() | atom(), list_browser_sessions_request(), list()) ::
          {:ok, list_browser_sessions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_browser_sessions_errors()}
  def list_browser_sessions(%Client{} = client, browser_identifier, input, options \\ []) do
    url_path = "/browsers/#{AWS.Util.encode_uri(browser_identifier)}/sessions/list"
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
  Retrieves a list of code interpreter sessions in Amazon Bedrock AgentCore that
  match the specified criteria.

  This operation returns summary information about each session, including
  identifiers, status, and timestamps.

  You can filter the results by code interpreter identifier and session status.
  The operation supports pagination to handle large result sets efficiently.

  We recommend using pagination to ensure that the operation returns quickly and
  successfully when retrieving large numbers of sessions.

  The following operations are related to `ListCodeInterpreterSessions`:

    *
  [StartCodeInterpreterSession](https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_StartCodeInterpreterSession.html)     *
  [GetCodeInterpreterSession](https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_GetCodeInterpreterSession.html)
  """
  @spec list_code_interpreter_sessions(
          map(),
          String.t() | atom(),
          list_code_interpreter_sessions_request(),
          list()
        ) ::
          {:ok, list_code_interpreter_sessions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_code_interpreter_sessions_errors()}
  def list_code_interpreter_sessions(
        %Client{} = client,
        code_interpreter_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/code-interpreters/#{AWS.Util.encode_uri(code_interpreter_identifier)}/sessions/list"

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
  Lists events in an AgentCore Memory resource based on specified criteria.

  We recommend using pagination to ensure that the operation returns quickly and
  successfully.

  To use this operation, you must have the `bedrock-agentcore:ListEvents`
  permission.
  """
  @spec list_events(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          list_events_input(),
          list()
        ) ::
          {:ok, list_events_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_events_errors()}
  def list_events(%Client{} = client, actor_id, memory_id, session_id, input, options \\ []) do
    url_path =
      "/memories/#{AWS.Util.encode_uri(memory_id)}/actor/#{AWS.Util.encode_uri(actor_id)}/sessions/#{AWS.Util.encode_uri(session_id)}"

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
  Lists all long-term memory extraction jobs that are eligible to be started with
  optional filtering.

  To use this operation, you must have the
  `bedrock-agentcore:ListMemoryExtractionJobs` permission.
  """
  @spec list_memory_extraction_jobs(
          map(),
          String.t() | atom(),
          list_memory_extraction_jobs_input(),
          list()
        ) ::
          {:ok, list_memory_extraction_jobs_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_memory_extraction_jobs_errors()}
  def list_memory_extraction_jobs(%Client{} = client, memory_id, input, options \\ []) do
    url_path = "/memories/#{AWS.Util.encode_uri(memory_id)}/extractionJobs"
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
  Lists memory records in an AgentCore Memory resource based on specified
  criteria.

  We recommend using pagination to ensure that the operation returns quickly and
  successfully.

  To use this operation, you must have the `bedrock-agentcore:ListMemoryRecords`
  permission.
  """
  @spec list_memory_records(map(), String.t() | atom(), list_memory_records_input(), list()) ::
          {:ok, list_memory_records_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_memory_records_errors()}
  def list_memory_records(%Client{} = client, memory_id, input, options \\ []) do
    url_path = "/memories/#{AWS.Util.encode_uri(memory_id)}/memoryRecords"
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
  List payment instruments for a manager.
  """
  @spec list_payment_instruments(map(), list_payment_instruments_request(), list()) ::
          {:ok, list_payment_instruments_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_payment_instruments_errors()}
  def list_payment_instruments(%Client{} = client, input, options \\ []) do
    url_path = "/payments/listPaymentInstruments"

    {headers, input} =
      [
        {"agentName", "X-Amzn-Bedrock-AgentCore-Payments-Agent-Name"},
        {"userId", "X-Amzn-Bedrock-AgentCore-Payments-User-Id"}
      ]
      |> Request.build_params(input)

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
  List payment sessions.
  """
  @spec list_payment_sessions(map(), list_payment_sessions_request(), list()) ::
          {:ok, list_payment_sessions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_payment_sessions_errors()}
  def list_payment_sessions(%Client{} = client, input, options \\ []) do
    url_path = "/payments/listPaymentSessions"

    {headers, input} =
      [
        {"agentName", "X-Amzn-Bedrock-AgentCore-Payments-Agent-Name"},
        {"userId", "X-Amzn-Bedrock-AgentCore-Payments-User-Id"}
      ]
      |> Request.build_params(input)

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
  Lists all recommendations in the account, with optional filtering by status.
  """
  @spec list_recommendations(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_recommendations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_recommendations_errors()}
  def list_recommendations(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        status_filter \\ nil,
        options \\ []
      ) do
    url_path = "/recommendations"
    headers = []
    query_params = []

    query_params =
      if !is_nil(status_filter) do
        [{"status", status_filter} | query_params]
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
  Lists sessions in an AgentCore Memory resource based on specified criteria.

  We recommend using pagination to ensure that the operation returns quickly and
  successfully.

  Empty sessions are automatically deleted after one day.

  To use this operation, you must have the `bedrock-agentcore:ListSessions`
  permission.
  """
  @spec list_sessions(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          list_sessions_input(),
          list()
        ) ::
          {:ok, list_sessions_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_sessions_errors()}
  def list_sessions(%Client{} = client, actor_id, memory_id, input, options \\ []) do
    url_path =
      "/memories/#{AWS.Util.encode_uri(memory_id)}/actor/#{AWS.Util.encode_uri(actor_id)}/sessions"

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
  Processes a payment using a payment instrument within a payment session.
  """
  @spec process_payment(map(), process_payment_request(), list()) ::
          {:ok, process_payment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, process_payment_errors()}
  def process_payment(%Client{} = client, input, options \\ []) do
    url_path = "/payments/processPayment"

    {headers, input} =
      [
        {"agentName", "X-Amzn-Bedrock-AgentCore-Payments-Agent-Name"},
        {"userId", "X-Amzn-Bedrock-AgentCore-Payments-User-Id"}
      ]
      |> Request.build_params(input)

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
  Searches for and retrieves memory records from an AgentCore Memory resource
  based on specified search criteria.

  We recommend using pagination to ensure that the operation returns quickly and
  successfully.

  To use this operation, you must have the
  `bedrock-agentcore:RetrieveMemoryRecords` permission.
  """
  @spec retrieve_memory_records(
          map(),
          String.t() | atom(),
          retrieve_memory_records_input(),
          list()
        ) ::
          {:ok, retrieve_memory_records_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, retrieve_memory_records_errors()}
  def retrieve_memory_records(%Client{} = client, memory_id, input, options \\ []) do
    url_path = "/memories/#{AWS.Util.encode_uri(memory_id)}/retrieve"
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
  Saves the current state of a browser session as a reusable profile in Amazon
  Bedrock AgentCore.

  A browser profile captures persistent browser data such as cookies and local
  storage from an active session, enabling you to reuse this data in future
  browser sessions.

  To save a browser session profile, you must specify the profile identifier,
  browser identifier, and session ID. The session must be active when saving the
  profile. Once saved, the profile can be used with the `StartBrowserSession`
  operation to initialize new sessions with the stored browser state.

  Browser profiles are useful for scenarios that require persistent
  authentication, maintaining user preferences across sessions, or continuing
  tasks that depend on previously stored browser data.

  The following operations are related to `SaveBrowserSessionProfile`:

    *
  [StartBrowserSession](https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_StartBrowserSession.html)     *
  [GetBrowserSession](https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_GetBrowserSession.html)
  """
  @spec save_browser_session_profile(
          map(),
          String.t() | atom(),
          save_browser_session_profile_request(),
          list()
        ) ::
          {:ok, save_browser_session_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, save_browser_session_profile_errors()}
  def save_browser_session_profile(%Client{} = client, profile_identifier, input, options \\ []) do
    url_path = "/browser-profiles/#{AWS.Util.encode_uri(profile_identifier)}/save"

    {headers, input} =
      [
        {"traceId", "X-Amzn-Trace-Id"},
        {"traceParent", "traceparent"}
      ]
      |> Request.build_params(input)

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
  Searches for registry records using semantic, lexical, or hybrid queries.

  Returns metadata for matching records ordered by relevance within the specified
  registry.
  """
  @spec search_registry_records(map(), search_registry_records_request(), list()) ::
          {:ok, search_registry_records_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, search_registry_records_errors()}
  def search_registry_records(%Client{} = client, input, options \\ []) do
    url_path = "/registry-records/search"
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
  Starts a batch evaluation job that evaluates agent performance across multiple
  sessions.

  Batch evaluations pull agent traces from CloudWatch Logs or an existing online
  evaluation configuration and run specified evaluators and insights against them.
  """
  @spec start_batch_evaluation(map(), start_batch_evaluation_request(), list()) ::
          {:ok, start_batch_evaluation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_batch_evaluation_errors()}
  def start_batch_evaluation(%Client{} = client, input, options \\ []) do
    url_path = "/evaluations/batch-evaluate"
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
  Creates and initializes a browser session in Amazon Bedrock AgentCore.

  The session enables agents to navigate and interact with web content, extract
  information from websites, and perform web-based tasks as part of their response
  generation.

  To create a session, you must specify a browser identifier and a name. You can
  also configure the viewport dimensions to control the visible area of web
  content. The session remains active until it times out or you explicitly stop it
  using the `StopBrowserSession` operation.

  The following operations are related to `StartBrowserSession`:

    *
  [GetBrowserSession](https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_GetBrowserSession.html)     *
  [UpdateBrowserStream](https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_UpdateBrowserStream.html)

    *
  [SaveBrowserSessionProfile](https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_SaveBrowserSessionProfile.html)     *
  [StopBrowserSession](https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_StopBrowserSession.html)

    *
  [InvokeBrowser](https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_InvokeBrowser.html)
  """
  @spec start_browser_session(map(), String.t() | atom(), start_browser_session_request(), list()) ::
          {:ok, start_browser_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_browser_session_errors()}
  def start_browser_session(%Client{} = client, browser_identifier, input, options \\ []) do
    url_path = "/browsers/#{AWS.Util.encode_uri(browser_identifier)}/sessions/start"

    {headers, input} =
      [
        {"traceId", "X-Amzn-Trace-Id"},
        {"traceParent", "traceparent"}
      ]
      |> Request.build_params(input)

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
  Creates and initializes a code interpreter session in Amazon Bedrock AgentCore.

  The session enables agents to execute code as part of their response generation,
  supporting programming languages such as Python for data analysis,
  visualization, and computation tasks.

  To create a session, you must specify a code interpreter identifier and a name.
  The session remains active until it times out or you explicitly stop it using
  the `StopCodeInterpreterSession` operation.

  The following operations are related to `StartCodeInterpreterSession`:

    *
  [InvokeCodeInterpreter](https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_InvokeCodeInterpreter.html)     *
  [GetCodeInterpreterSession](https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_GetCodeInterpreterSession.html)

    *
  [StopCodeInterpreterSession](https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_StopCodeInterpreterSession.html)
  """
  @spec start_code_interpreter_session(
          map(),
          String.t() | atom(),
          start_code_interpreter_session_request(),
          list()
        ) ::
          {:ok, start_code_interpreter_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_code_interpreter_session_errors()}
  def start_code_interpreter_session(
        %Client{} = client,
        code_interpreter_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/code-interpreters/#{AWS.Util.encode_uri(code_interpreter_identifier)}/sessions/start"

    {headers, input} =
      [
        {"traceId", "X-Amzn-Trace-Id"},
        {"traceParent", "traceparent"}
      ]
      |> Request.build_params(input)

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
  Starts a memory extraction job that processes events that failed extraction
  previously in an AgentCore Memory resource and produces structured memory
  records.

  When earlier extraction attempts have left events unprocessed, this job will
  pick up and extract those as well.

  To use this operation, you must have the
  `bedrock-agentcore:StartMemoryExtractionJob` permission.
  """
  @spec start_memory_extraction_job(
          map(),
          String.t() | atom(),
          start_memory_extraction_job_input(),
          list()
        ) ::
          {:ok, start_memory_extraction_job_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_memory_extraction_job_errors()}
  def start_memory_extraction_job(%Client{} = client, memory_id, input, options \\ []) do
    url_path = "/memories/#{AWS.Util.encode_uri(memory_id)}/extractionJobs/start"
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
  Starts a recommendation job that analyzes agent traces and generates
  optimization suggestions for system prompts or tool descriptions to improve
  agent performance.
  """
  @spec start_recommendation(map(), start_recommendation_request(), list()) ::
          {:ok, start_recommendation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_recommendation_errors()}
  def start_recommendation(%Client{} = client, input, options \\ []) do
    url_path = "/recommendations"
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
  Stops a running batch evaluation.

  Sessions that have already been evaluated retain their results.
  """
  @spec stop_batch_evaluation(map(), String.t() | atom(), stop_batch_evaluation_request(), list()) ::
          {:ok, stop_batch_evaluation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_batch_evaluation_errors()}
  def stop_batch_evaluation(%Client{} = client, batch_evaluation_id, input, options \\ []) do
    url_path = "/evaluations/batch-evaluate/#{AWS.Util.encode_uri(batch_evaluation_id)}/stop"
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
  Terminates an active browser session in Amazon Bedrock AgentCore.

  This operation stops the session, releases associated resources, and makes the
  session unavailable for further use.

  To stop a browser session, you must specify both the browser identifier and the
  session ID. Once stopped, a session cannot be restarted; you must create a new
  session using `StartBrowserSession`.

  The following operations are related to `StopBrowserSession`:

    *
  [StartBrowserSession](https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_StartBrowserSession.html)     *
  [GetBrowserSession](https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_GetBrowserSession.html)
  """
  @spec stop_browser_session(map(), String.t() | atom(), stop_browser_session_request(), list()) ::
          {:ok, stop_browser_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_browser_session_errors()}
  def stop_browser_session(%Client{} = client, browser_identifier, input, options \\ []) do
    url_path = "/browsers/#{AWS.Util.encode_uri(browser_identifier)}/sessions/stop"

    {headers, input} =
      [
        {"traceId", "X-Amzn-Trace-Id"},
        {"traceParent", "traceparent"}
      ]
      |> Request.build_params(input)

    custom_headers = []

    {query_params, input} =
      [
        {"sessionId", "sessionId"}
      ]
      |> Request.build_params(input)

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
  Terminates an active code interpreter session in Amazon Bedrock AgentCore.

  This operation stops the session, releases associated resources, and makes the
  session unavailable for further use.

  To stop a code interpreter session, you must specify both the code interpreter
  identifier and the session ID. Once stopped, a session cannot be restarted; you
  must create a new session using `StartCodeInterpreterSession`.

  The following operations are related to `StopCodeInterpreterSession`:

    *
  [StartCodeInterpreterSession](https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_StartCodeInterpreterSession.html)     *
  [GetCodeInterpreterSession](https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_GetCodeInterpreterSession.html)
  """
  @spec stop_code_interpreter_session(
          map(),
          String.t() | atom(),
          stop_code_interpreter_session_request(),
          list()
        ) ::
          {:ok, stop_code_interpreter_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_code_interpreter_session_errors()}
  def stop_code_interpreter_session(
        %Client{} = client,
        code_interpreter_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/code-interpreters/#{AWS.Util.encode_uri(code_interpreter_identifier)}/sessions/stop"

    {headers, input} =
      [
        {"traceId", "X-Amzn-Trace-Id"},
        {"traceParent", "traceparent"}
      ]
      |> Request.build_params(input)

    custom_headers = []

    {query_params, input} =
      [
        {"sessionId", "sessionId"}
      ]
      |> Request.build_params(input)

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
  Stops a session that is running in an running AgentCore Runtime agent.
  """
  @spec stop_runtime_session(map(), String.t() | atom(), stop_runtime_session_request(), list()) ::
          {:ok, stop_runtime_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_runtime_session_errors()}
  def stop_runtime_session(%Client{} = client, agent_runtime_arn, input, options \\ []) do
    url_path = "/runtimes/#{AWS.Util.encode_uri(agent_runtime_arn)}/stopruntimesession"

    {headers, input} =
      [
        {"runtimeSessionId", "X-Amzn-Bedrock-AgentCore-Runtime-Session-Id"}
      ]
      |> Request.build_params(input)

    custom_headers = []

    {query_params, input} =
      [
        {"qualifier", "qualifier"}
      ]
      |> Request.build_params(input)

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"X-Amzn-Bedrock-AgentCore-Runtime-Session-Id", "runtimeSessionId"}]
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
  Updates an A/B test's configuration, including variants, traffic allocation,
  evaluation settings, or execution status.
  """
  @spec update_a_b_test(map(), String.t() | atom(), update_a_b_test_request(), list()) ::
          {:ok, update_a_b_test_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_a_b_test_errors()}
  def update_a_b_test(%Client{} = client, ab_test_id, input, options \\ []) do
    url_path = "/ab-tests/#{AWS.Util.encode_uri(ab_test_id)}"
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
      202
    )
  end

  @doc """
  Updates a browser stream.

  To use this operation, you must have permissions to perform the
  bedrock:UpdateBrowserStream action.
  """
  @spec update_browser_stream(map(), String.t() | atom(), update_browser_stream_request(), list()) ::
          {:ok, update_browser_stream_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_browser_stream_errors()}
  def update_browser_stream(%Client{} = client, browser_identifier, input, options \\ []) do
    url_path = "/browsers/#{AWS.Util.encode_uri(browser_identifier)}/sessions/streams/update"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"sessionId", "sessionId"}
      ]
      |> Request.build_params(input)

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
end
