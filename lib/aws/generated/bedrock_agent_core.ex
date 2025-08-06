# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.BedrockAgentCore do
  @moduledoc """
  Amazon Bedrock AgentCore is in preview release and is subject to change.

  Welcome to the Amazon Bedrock AgentCore Data Plane API reference. Data Plane
  actions process and handle data or workloads within Amazon Web Services
  services.
  """

  alias AWS.Client
  alias AWS.Request

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

      conversational() :: %{
        "content" => list(),
        "role" => list(any())
      }

  """
  @type conversational() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      live_view_stream() :: %{
        "streamEndpoint" => String.t() | atom()
      }

  """
  @type live_view_stream() :: %{(String.t() | atom()) => any()}

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

      automation_stream() :: %{
        "streamEndpoint" => String.t() | atom(),
        "streamStatus" => list(any())
      }

  """
  @type automation_stream() :: %{(String.t() | atom()) => any()}

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

      unauthorized_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type unauthorized_exception() :: %{(String.t() | atom()) => any()}

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

      invoke_code_interpreter_request() :: %{
        optional("arguments") => tool_arguments(),
        optional("sessionId") => String.t() | atom(),
        required("name") => list(any())
      }

  """
  @type invoke_code_interpreter_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_browser_sessions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("status") => list(any())
      }

  """
  @type list_browser_sessions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_workload_access_token_for_j_w_t_response() :: %{
        "workloadAccessToken" => String.t() | atom()
      }

  """
  @type get_workload_access_token_for_j_w_t_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_workload_access_token_request() :: %{
        required("workloadName") => String.t() | atom()
      }

  """
  @type get_workload_access_token_request() :: %{(String.t() | atom()) => any()}

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

      stop_browser_session_request() :: %{
        optional("clientToken") => String.t() | atom(),
        required("sessionId") => String.t() | atom()
      }

  """
  @type stop_browser_session_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_memory_record_input() :: %{}

  """
  @type delete_memory_record_input() :: %{}

  @typedoc """

  ## Example:

      get_workload_access_token_response() :: %{
        "workloadAccessToken" => String.t() | atom()
      }

  """
  @type get_workload_access_token_response() :: %{(String.t() | atom()) => any()}

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
        "taskId" => String.t() | atom()
      }

  """
  @type tool_arguments() :: %{(String.t() | atom()) => any()}

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

      get_browser_session_request() :: %{
        required("sessionId") => String.t() | atom()
      }

  """
  @type get_browser_session_request() :: %{(String.t() | atom()) => any()}

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

      input_content_block() :: %{
        "blob" => binary(),
        "path" => String.t() | atom(),
        "text" => String.t() | atom()
      }

  """
  @type input_content_block() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      stop_code_interpreter_session_request() :: %{
        optional("clientToken") => String.t() | atom(),
        required("sessionId") => String.t() | atom()
      }

  """
  @type stop_code_interpreter_session_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      throttled_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type throttled_exception() :: %{(String.t() | atom()) => any()}

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

      start_browser_session_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("name") => String.t() | atom(),
        optional("sessionTimeoutSeconds") => integer(),
        optional("viewPort") => view_port()
      }

  """
  @type start_browser_session_request() :: %{(String.t() | atom()) => any()}

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

      get_resource_oauth2_token_request() :: %{
        optional("customParameters") => map(),
        optional("forceAuthentication") => [boolean()],
        optional("resourceOauth2ReturnUrl") => String.t() | atom(),
        required("oauth2Flow") => list(any()),
        required("resourceCredentialProviderName") => String.t() | atom(),
        required("scopes") => list(String.t() | atom()),
        required("workloadIdentityToken") => String.t() | atom()
      }

  """
  @type get_resource_oauth2_token_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_memory_records_input() :: %{
        optional("maxResults") => integer(),
        optional("memoryStrategyId") => String.t() | atom(),
        optional("nextToken") => String.t() | atom(),
        required("namespace") => String.t() | atom()
      }

  """
  @type list_memory_records_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_event_input() :: %{}

  """
  @type get_event_input() :: %{}

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

      filter_input() :: %{
        "branch" => branch_filter()
      }

  """
  @type filter_input() :: %{(String.t() | atom()) => any()}

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

      get_resource_oauth2_token_response() :: %{
        "accessToken" => String.t() | atom(),
        "authorizationUrl" => [String.t() | atom()]
      }

  """
  @type get_resource_oauth2_token_response() :: %{(String.t() | atom()) => any()}

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

      start_code_interpreter_session_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("name") => String.t() | atom(),
        optional("sessionTimeoutSeconds") => integer()
      }

  """
  @type start_code_interpreter_session_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      memory_record_summary() :: %{
        "content" => list(),
        "createdAt" => [non_neg_integer()],
        "memoryRecordId" => String.t() | atom(),
        "memoryStrategyId" => String.t() | atom(),
        "namespaces" => list(String.t() | atom()),
        "score" => [float()]
      }

  """
  @type memory_record_summary() :: %{(String.t() | atom()) => any()}

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

      service_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type service_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      retrieve_memory_records_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        required("namespace") => String.t() | atom(),
        required("searchCriteria") => search_criteria()
      }

  """
  @type retrieve_memory_records_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invalid_input_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type invalid_input_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_code_interpreter_session_request() :: %{
        required("sessionId") => String.t() | atom()
      }

  """
  @type get_code_interpreter_session_request() :: %{(String.t() | atom()) => any()}

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

      validation_exception_field() :: %{
        "message" => [String.t() | atom()],
        "name" => [String.t() | atom()]
      }

  """
  @type validation_exception_field() :: %{(String.t() | atom()) => any()}

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

      delete_event_output() :: %{
        "eventId" => String.t() | atom()
      }

  """
  @type delete_event_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_memory_record_input() :: %{}

  """
  @type get_memory_record_input() :: %{}

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

      internal_server_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_memory_record_output() :: %{
        "memoryRecord" => memory_record()
      }

  """
  @type get_memory_record_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      event() :: %{
        "actorId" => String.t() | atom(),
        "branch" => branch(),
        "eventId" => String.t() | atom(),
        "eventTimestamp" => [non_neg_integer()],
        "memoryId" => String.t() | atom(),
        "payload" => list(list()),
        "sessionId" => String.t() | atom()
      }

  """
  @type event() :: %{(String.t() | atom()) => any()}

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

      memory_record() :: %{
        "content" => list(),
        "createdAt" => [non_neg_integer()],
        "memoryRecordId" => String.t() | atom(),
        "memoryStrategyId" => String.t() | atom(),
        "namespaces" => list(String.t() | atom())
      }

  """
  @type memory_record() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_event_input() :: %{
        optional("branch") => branch(),
        optional("clientToken") => [String.t() | atom()],
        optional("sessionId") => String.t() | atom(),
        required("actorId") => String.t() | atom(),
        required("eventTimestamp") => [non_neg_integer()],
        required("payload") => list(list())
      }

  """
  @type create_event_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

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

      invoke_agent_runtime_request() :: %{
        optional("accept") => String.t() | atom(),
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

      validation_exception() :: %{
        "fieldList" => list(validation_exception_field()),
        "message" => [String.t() | atom()],
        "reason" => list(any())
      }

  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_browser_session_response() :: %{
        "browserIdentifier" => [String.t() | atom()],
        "createdAt" => non_neg_integer(),
        "lastUpdatedAt" => non_neg_integer(),
        "name" => String.t() | atom(),
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

      throttling_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

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

      stop_code_interpreter_session_response() :: %{
        "codeInterpreterIdentifier" => [String.t() | atom()],
        "lastUpdatedAt" => non_neg_integer(),
        "sessionId" => String.t() | atom()
      }

  """
  @type stop_code_interpreter_session_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_event_output() :: %{
        "event" => event()
      }

  """
  @type get_event_output() :: %{(String.t() | atom()) => any()}

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

      get_code_interpreter_session_response() :: %{
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

      list_actors_output() :: %{
        "actorSummaries" => list(actor_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_actors_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_workload_access_token_for_user_id_response() :: %{
        "workloadAccessToken" => String.t() | atom()
      }

  """
  @type get_workload_access_token_for_user_id_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_event_input() :: %{}

  """
  @type delete_event_input() :: %{}

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

      automation_stream_update() :: %{
        "streamStatus" => list(any())
      }

  """
  @type automation_stream_update() :: %{(String.t() | atom()) => any()}

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

      get_resource_api_key_response() :: %{
        "apiKey" => String.t() | atom()
      }

  """
  @type get_resource_api_key_response() :: %{(String.t() | atom()) => any()}

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

      browser_session_stream() :: %{
        "automationStream" => automation_stream(),
        "liveViewStream" => live_view_stream()
      }

  """
  @type browser_session_stream() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      actor_summary() :: %{
        "actorId" => String.t() | atom()
      }

  """
  @type actor_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_event_output() :: %{
        "event" => event()
      }

  """
  @type create_event_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_criteria() :: %{
        "memoryStrategyId" => String.t() | atom(),
        "searchQuery" => String.t() | atom(),
        "topK" => [integer()]
      }

  """
  @type search_criteria() :: %{(String.t() | atom()) => any()}

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

      update_browser_stream_request() :: %{
        optional("clientToken") => String.t() | atom(),
        required("sessionId") => String.t() | atom(),
        required("streamUpdate") => list()
      }

  """
  @type update_browser_stream_request() :: %{(String.t() | atom()) => any()}

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

      delete_memory_record_output() :: %{
        "memoryRecordId" => [String.t() | atom()]
      }

  """
  @type delete_memory_record_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_sessions_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_sessions_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      runtime_client_error() :: %{
        "message" => String.t() | atom()
      }

  """
  @type runtime_client_error() :: %{(String.t() | atom()) => any()}

  @type create_event_errors() ::
          validation_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | throttled_exception()

  @type delete_event_errors() ::
          validation_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | throttled_exception()

  @type delete_memory_record_errors() ::
          validation_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | throttled_exception()

  @type get_browser_session_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_code_interpreter_session_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_event_errors() ::
          validation_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | throttled_exception()

  @type get_memory_record_errors() ::
          validation_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | throttled_exception()

  @type get_resource_api_key_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type get_resource_oauth2_token_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type get_workload_access_token_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type get_workload_access_token_for_j_w_t_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type get_workload_access_token_for_user_id_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type invoke_agent_runtime_errors() ::
          runtime_client_error()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type invoke_code_interpreter_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_actors_errors() ::
          validation_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | throttled_exception()

  @type list_browser_sessions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_code_interpreter_sessions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_events_errors() ::
          validation_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | throttled_exception()

  @type list_memory_records_errors() ::
          validation_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | throttled_exception()

  @type list_sessions_errors() ::
          validation_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | throttled_exception()

  @type retrieve_memory_records_errors() ::
          validation_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | throttled_exception()

  @type start_browser_session_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type start_code_interpreter_session_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type stop_browser_session_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type stop_code_interpreter_session_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_browser_stream_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

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
      200
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
  Retrieves detailed information about a specific browser session in Amazon
  Bedrock.

  This operation returns the session's configuration, current status, associated
  streams, and metadata.

  To get a browser session, you must specify both the browser identifier and the
  session ID. The response includes information about the session's viewport
  configuration, timeout settings, and stream endpoints.

  The following operations are related to `GetBrowserSession`:

    *
  [StartBrowserSession](https://docs.aws.amazon.com/API_StartBrowserSession.html)     *
  [ListBrowserSessions](https://docs.aws.amazon.com/API_ListBrowserSessions.html)

    *
  [StopBrowserSession](https://docs.aws.amazon.com/API_StopBrowserSession.html)
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
  Amazon Bedrock.

  This operation returns the session's configuration, current status, and
  metadata.

  To get a code interpreter session, you must specify both the code interpreter
  identifier and the session ID. The response includes information about the
  session's timeout settings and current status.

  The following operations are related to `GetCodeInterpreterSession`:

    *
  [StartCodeInterpreterSession](https://docs.aws.amazon.com/API_StartCodeInterpreterSession.html)     *
  [ListCodeInterpreterSessions](https://docs.aws.amazon.com/API_ListCodeInterpreterSessions.html)

    *
  [StopCodeInterpreterSession](https://docs.aws.amazon.com/API_StopCodeInterpreterSession.html)
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
  Retrieves an API Key associated with an API Key Credential Provider
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
  Returns the OAuth 2.0 token of the provided resource
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
  Obtains an Workload access token for agentic workloads not acting on behalf of
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
  Obtains an Workload access token for agentic workloads acting on behalf of user
  with JWT token
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
  Obtains an Workload access token for agentic workloads acting on behalf of user
  with User Id.
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

  To invoke an agent you must specify the AgentCore Runtime ARN and provide a
  payload containing your request. You can optionally specify a qualifier to
  target a specific version or endpoint of the agent.

  This operation supports streaming responses, allowing you to receive partial
  responses as they become available. We recommend using pagination to ensure that
  the operation returns quickly and successfully when processing large responses.

  For example code, see [Invoke an AgentCore Runtime agent](https://docs.aws.amazon.com/bedrock-agentcore/latest/devguide/runtime-invoke-agent.html).

  If you're integrating your agent with OAuth, you can't use the Amazon Web
  Services SDK to call `InvokeAgentRuntime`. Instead, make a HTTPS request to
  `InvokeAgentRuntime`. For an example, see [Authenticate and authorize with Inbound Auth and Outbound
  Auth](https://docs.aws.amazon.com/bedrock-agentcore/latest/devguide/runtime-oauth.html).

  To use this operation, you must have the `bedrock-agentcore:InvokeAgentRuntime`
  permission.
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
  Executes code within an active code interpreter session in Amazon Bedrock.

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
  [StartCodeInterpreterSession](https://docs.aws.amazon.com/API_StartCodeInterpreterSession.html)     *
  [GetCodeInterpreterSession](https://docs.aws.amazon.com/API_GetCodeInterpreterSession.html)
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
        {"sessionId", "x-amzn-code-interpreter-session-id"}
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
  Retrieves a list of browser sessions in Amazon Bedrock that match the specified
  criteria.

  This operation returns summary information about each session, including
  identifiers, status, and timestamps.

  You can filter the results by browser identifier and session status. The
  operation supports pagination to handle large result sets efficiently.

  We recommend using pagination to ensure that the operation returns quickly and
  successfully when retrieving large numbers of sessions.

  The following operations are related to `ListBrowserSessions`:

    *
  [StartBrowserSession](https://docs.aws.amazon.com/API_StartBrowserSession.html)     *
  [GetBrowserSession](https://docs.aws.amazon.com/API_GetBrowserSession.html)
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
  Retrieves a list of code interpreter sessions in Amazon Bedrock that match the
  specified criteria.

  This operation returns summary information about each session, including
  identifiers, status, and timestamps.

  You can filter the results by code interpreter identifier and session status.
  The operation supports pagination to handle large result sets efficiently.

  We recommend using pagination to ensure that the operation returns quickly and
  successfully when retrieving large numbers of sessions.

  The following operations are related to `ListCodeInterpreterSessions`:

    *
  [StartCodeInterpreterSession](https://docs.aws.amazon.com/API_StartCodeInterpreterSession.html)     *
  [GetCodeInterpreterSession](https://docs.aws.amazon.com/API_GetCodeInterpreterSession.html)
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
  Lists sessions in an AgentCore Memory resource based on specified criteria.

  We recommend using pagination to ensure that the operation returns quickly and
  successfully.

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
  Creates and initializes a browser session in Amazon Bedrock.

  The session enables agents to navigate and interact with web content, extract
  information from websites, and perform web-based tasks as part of their response
  generation.

  To create a session, you must specify a browser identifier and a name. You can
  also configure the viewport dimensions to control the visible area of web
  content. The session remains active until it times out or you explicitly stop it
  using the `StopBrowserSession` operation.

  The following operations are related to `StartBrowserSession`:

    *
  [GetBrowserSession](https://docs.aws.amazon.com/API_GetBrowserSession.html)     *
  [UpdateBrowserStream](https://docs.aws.amazon.com/API_UpdateBrowserStream.html)

    *
  [StopBrowserSession](https://docs.aws.amazon.com/API_StopBrowserSession.html)
  """
  @spec start_browser_session(map(), String.t() | atom(), start_browser_session_request(), list()) ::
          {:ok, start_browser_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_browser_session_errors()}
  def start_browser_session(%Client{} = client, browser_identifier, input, options \\ []) do
    url_path = "/browsers/#{AWS.Util.encode_uri(browser_identifier)}/sessions/start"
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
  Creates and initializes a code interpreter session in Amazon Bedrock.

  The session enables agents to execute code as part of their response generation,
  supporting programming languages such as Python for data analysis,
  visualization, and computation tasks.

  To create a session, you must specify a code interpreter identifier and a name.
  The session remains active until it times out or you explicitly stop it using
  the `StopCodeInterpreterSession` operation.

  The following operations are related to `StartCodeInterpreterSession`:

    *
  [InvokeCodeInterpreter](https://docs.aws.amazon.com/API_InvokeCodeInterpreter.html)     *
  [GetCodeInterpreterSession](https://docs.aws.amazon.com/API_GetCodeInterpreterSession.html)

    *
  [StopCodeInterpreterSession](https://docs.aws.amazon.com/API_StopCodeInterpreterSession.html)
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
  Terminates an active browser session in Amazon Bedrock.

  This operation stops the session, releases associated resources, and makes the
  session unavailable for further use.

  To stop a browser session, you must specify both the browser identifier and the
  session ID. Once stopped, a session cannot be restarted; you must create a new
  session using `StartBrowserSession`.

  The following operations are related to `StopBrowserSession`:

    *
  [StartBrowserSession](https://docs.aws.amazon.com/API_StartBrowserSession.html)     *
  [GetBrowserSession](https://docs.aws.amazon.com/API_GetBrowserSession.html)
  """
  @spec stop_browser_session(map(), String.t() | atom(), stop_browser_session_request(), list()) ::
          {:ok, stop_browser_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_browser_session_errors()}
  def stop_browser_session(%Client{} = client, browser_identifier, input, options \\ []) do
    url_path = "/browsers/#{AWS.Util.encode_uri(browser_identifier)}/sessions/stop"
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

  @doc """
  Terminates an active code interpreter session in Amazon Bedrock.

  This operation stops the session, releases associated resources, and makes the
  session unavailable for further use.

  To stop a code interpreter session, you must specify both the code interpreter
  identifier and the session ID. Once stopped, a session cannot be restarted; you
  must create a new session using `StartCodeInterpreterSession`.

  The following operations are related to `StopCodeInterpreterSession`:

    *
  [StartCodeInterpreterSession](https://docs.aws.amazon.com/API_StartCodeInterpreterSession.html)     *
  [GetCodeInterpreterSession](https://docs.aws.amazon.com/API_GetCodeInterpreterSession.html)
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
