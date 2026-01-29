# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.NovaAct do
  @moduledoc """
  The Nova Act service provides a REST API for managing AI-powered workflow
  automation.

  It enables users to create workflow definitions, execute workflow runs, manage
  sessions, and orchestrate acts (individual AI tasks) with tool integrations.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      call() :: %{
        "callId" => String.t() | atom(),
        "input" => any(),
        "name" => [String.t() | atom()]
      }

  """
  @type call() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_models_request() :: %{
        required("clientCompatibilityVersion") => [integer()]
      }

  """
  @type list_models_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      workflow_export_config() :: %{
        "s3BucketName" => String.t() | atom(),
        "s3KeyPrefix" => String.t() | atom()
      }

  """
  @type workflow_export_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_workflow_definitions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("sortOrder") => list(any())
      }

  """
  @type list_workflow_definitions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_models_response() :: %{
        "compatibilityInformation" => compatibility_information(),
        "modelAliases" => list(model_alias()),
        "modelSummaries" => list(model_summary())
      }

  """
  @type list_models_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_act_request() :: %{
        optional("error") => act_error(),
        required("status") => list(any())
      }

  """
  @type update_act_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      session_summary() :: %{
        "sessionId" => String.t() | atom()
      }

  """
  @type session_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_workflow_definition_response() :: %{
        "arn" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "exportConfig" => workflow_export_config(),
        "name" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type get_workflow_definition_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_workflow_run_response() :: %{
        "status" => list(any()),
        "workflowRunId" => String.t() | atom()
      }

  """
  @type create_workflow_run_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      compatibility_information() :: %{
        "clientCompatibilityVersion" => [integer()],
        "message" => String.t() | atom(),
        "supportedModelIds" => list(String.t() | atom())
      }

  """
  @type compatibility_information() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_workflow_run_request() :: %{
        required("status") => list(any())
      }

  """
  @type update_workflow_run_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      trace_location() :: %{
        "location" => String.t() | atom(),
        "locationType" => list(any())
      }

  """
  @type trace_location() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      model_summary() :: %{
        "minimumCompatibilityVersion" => [integer()],
        "modelId" => String.t() | atom(),
        "modelLifecycle" => model_lifecycle()
      }

  """
  @type model_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      act_error() :: %{
        "message" => String.t() | atom(),
        "type" => [String.t() | atom()]
      }

  """
  @type act_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invoke_act_step_response() :: %{
        "calls" => list(call()),
        "stepId" => String.t() | atom()
      }

  """
  @type invoke_act_step_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      act_summary() :: %{
        "actId" => String.t() | atom(),
        "endedAt" => non_neg_integer(),
        "sessionId" => String.t() | atom(),
        "startedAt" => non_neg_integer(),
        "status" => list(any()),
        "traceLocation" => trace_location(),
        "workflowRunId" => String.t() | atom()
      }

  """
  @type act_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_acts_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("sessionId") => String.t() | atom(),
        optional("sortOrder") => list(any()),
        optional("workflowRunId") => String.t() | atom()
      }

  """
  @type list_acts_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_session_request() :: %{
        optional("clientToken") => String.t() | atom()
      }

  """
  @type create_session_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_sessions_response() :: %{
        "nextToken" => String.t() | atom(),
        "sessionSummaries" => list(session_summary())
      }

  """
  @type list_sessions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => String.t() | atom(),
        "resourceId" => String.t() | atom(),
        "resourceType" => String.t() | atom()
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => String.t() | atom(),
        "resourceId" => String.t() | atom(),
        "resourceType" => String.t() | atom()
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_workflow_definition_request() :: %{}

  """
  @type delete_workflow_definition_request() :: %{}

  @typedoc """

  ## Example:

      call_result() :: %{
        "callId" => String.t() | atom(),
        "content" => list(list())
      }

  """
  @type call_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => String.t() | atom(),
        "quotaCode" => String.t() | atom(),
        "resourceId" => String.t() | atom(),
        "resourceType" => String.t() | atom(),
        "serviceCode" => String.t() | atom()
      }

  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_act_response() :: %{}

  """
  @type update_act_response() :: %{}

  @typedoc """

  ## Example:

      tool_spec() :: %{
        "description" => String.t() | atom(),
        "inputSchema" => list(),
        "name" => String.t() | atom()
      }

  """
  @type tool_spec() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_workflow_definition_request() :: %{}

  """
  @type get_workflow_definition_request() :: %{}

  @typedoc """

  ## Example:

      create_workflow_definition_response() :: %{
        "status" => list(any())
      }

  """
  @type create_workflow_definition_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_sessions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("sortOrder") => list(any())
      }

  """
  @type list_sessions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception_field() :: %{
        "message" => String.t() | atom(),
        "name" => String.t() | atom()
      }

  """
  @type validation_exception_field() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_workflow_run_response() :: %{}

  """
  @type update_workflow_run_response() :: %{}

  @typedoc """

  ## Example:

      create_workflow_run_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("logGroupName") => String.t() | atom(),
        required("clientInfo") => client_info(),
        required("modelId") => String.t() | atom()
      }

  """
  @type create_workflow_run_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_workflow_runs_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("sortOrder") => list(any())
      }

  """
  @type list_workflow_runs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => String.t() | atom(),
        "reason" => list(any()),
        "retryAfterSeconds" => [integer()]
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      workflow_definition_summary() :: %{
        "createdAt" => non_neg_integer(),
        "status" => list(any()),
        "workflowDefinitionArn" => String.t() | atom(),
        "workflowDefinitionName" => String.t() | atom()
      }

  """
  @type workflow_definition_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      model_alias() :: %{
        "aliasName" => String.t() | atom(),
        "latestModelId" => String.t() | atom(),
        "resolvedModelId" => String.t() | atom()
      }

  """
  @type model_alias() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_workflow_definition_response() :: %{
        "status" => list(any())
      }

  """
  @type delete_workflow_definition_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_acts_response() :: %{
        "actSummaries" => list(act_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_acts_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_workflow_runs_response() :: %{
        "nextToken" => String.t() | atom(),
        "workflowRunSummaries" => list(workflow_run_summary())
      }

  """
  @type list_workflow_runs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "fieldList" => list(validation_exception_field()),
        "message" => String.t() | atom(),
        "reason" => list(any())
      }

  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_workflow_definition_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("exportConfig") => workflow_export_config(),
        required("name") => String.t() | atom()
      }

  """
  @type create_workflow_definition_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => String.t() | atom(),
        "quotaCode" => String.t() | atom(),
        "retryAfterSeconds" => [integer()],
        "serviceCode" => String.t() | atom()
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_workflow_run_response() :: %{
        "status" => list(any())
      }

  """
  @type delete_workflow_run_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_workflow_run_request() :: %{}

  """
  @type get_workflow_run_request() :: %{}

  @typedoc """

  ## Example:

      model_lifecycle() :: %{
        "status" => list(any())
      }

  """
  @type model_lifecycle() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invoke_act_step_request() :: %{
        optional("previousStepId") => String.t() | atom(),
        required("callResults") => list(call_result())
      }

  """
  @type invoke_act_step_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      client_info() :: %{
        "compatibilityVersion" => [integer()],
        "sdkVersion" => String.t() | atom()
      }

  """
  @type client_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_workflow_definitions_response() :: %{
        "nextToken" => String.t() | atom(),
        "workflowDefinitionSummaries" => list(workflow_definition_summary())
      }

  """
  @type list_workflow_definitions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_session_response() :: %{
        "sessionId" => String.t() | atom()
      }

  """
  @type create_session_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_workflow_run_response() :: %{
        "endedAt" => non_neg_integer(),
        "logGroupName" => String.t() | atom(),
        "modelId" => String.t() | atom(),
        "startedAt" => non_neg_integer(),
        "status" => list(any()),
        "workflowRunArn" => String.t() | atom(),
        "workflowRunId" => String.t() | atom()
      }

  """
  @type get_workflow_run_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_workflow_run_request() :: %{}

  """
  @type delete_workflow_run_request() :: %{}

  @typedoc """

  ## Example:

      workflow_run_summary() :: %{
        "endedAt" => non_neg_integer(),
        "startedAt" => non_neg_integer(),
        "status" => list(any()),
        "traceLocation" => trace_location(),
        "workflowRunArn" => String.t() | atom(),
        "workflowRunId" => String.t() | atom()
      }

  """
  @type workflow_run_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_act_response() :: %{
        "actId" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type create_act_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_act_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("toolSpecs") => list(tool_spec()),
        required("task") => String.t() | atom()
      }

  """
  @type create_act_request() :: %{(String.t() | atom()) => any()}

  @type create_act_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_session_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_workflow_definition_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_workflow_run_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_workflow_definition_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_workflow_run_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_workflow_definition_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_workflow_run_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type invoke_act_step_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_acts_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_models_errors() ::
          throttling_exception() | access_denied_exception() | internal_server_exception()

  @type list_sessions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_workflow_definitions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_workflow_runs_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_act_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_workflow_run_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2025-08-22",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "nova-act",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Nova Act",
      signature_version: "v4",
      signing_name: "nova-act",
      target_prefix: nil
    }
  end

  @doc """
  Creates a new AI task (act) within a session that can interact with tools and
  perform specific actions.
  """
  @spec create_act(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          create_act_request(),
          list()
        ) ::
          {:ok, create_act_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_act_errors()}
  def create_act(
        %Client{} = client,
        session_id,
        workflow_definition_name,
        workflow_run_id,
        input,
        options \\ []
      ) do
    url_path =
      "/workflow-definitions/#{AWS.Util.encode_uri(workflow_definition_name)}/workflow-runs/#{AWS.Util.encode_uri(workflow_run_id)}/sessions/#{AWS.Util.encode_uri(session_id)}/acts"

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
      201
    )
  end

  @doc """
  Creates a new session context within a workflow run to manage conversation state
  and acts.
  """
  @spec create_session(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          create_session_request(),
          list()
        ) ::
          {:ok, create_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_session_errors()}
  def create_session(
        %Client{} = client,
        workflow_definition_name,
        workflow_run_id,
        input,
        options \\ []
      ) do
    url_path =
      "/workflow-definitions/#{AWS.Util.encode_uri(workflow_definition_name)}/workflow-runs/#{AWS.Util.encode_uri(workflow_run_id)}/sessions"

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
      201
    )
  end

  @doc """
  Creates a new workflow definition template that can be used to execute multiple
  workflow runs.
  """
  @spec create_workflow_definition(map(), create_workflow_definition_request(), list()) ::
          {:ok, create_workflow_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_workflow_definition_errors()}
  def create_workflow_definition(%Client{} = client, input, options \\ []) do
    url_path = "/workflow-definitions"
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
      201
    )
  end

  @doc """
  Creates a new execution instance of a workflow definition with specified
  parameters.
  """
  @spec create_workflow_run(map(), String.t() | atom(), create_workflow_run_request(), list()) ::
          {:ok, create_workflow_run_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_workflow_run_errors()}
  def create_workflow_run(%Client{} = client, workflow_definition_name, input, options \\ []) do
    url_path =
      "/workflow-definitions/#{AWS.Util.encode_uri(workflow_definition_name)}/workflow-runs"

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
      201
    )
  end

  @doc """
  Deletes a workflow definition and all associated resources.

  This operation cannot be undone.
  """
  @spec delete_workflow_definition(
          map(),
          String.t() | atom(),
          delete_workflow_definition_request(),
          list()
        ) ::
          {:ok, delete_workflow_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_workflow_definition_errors()}
  def delete_workflow_definition(
        %Client{} = client,
        workflow_definition_name,
        input,
        options \\ []
      ) do
    url_path = "/workflow-definitions/#{AWS.Util.encode_uri(workflow_definition_name)}"
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
  Terminates and cleans up a workflow run, stopping all associated acts and
  sessions.
  """
  @spec delete_workflow_run(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_workflow_run_request(),
          list()
        ) ::
          {:ok, delete_workflow_run_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_workflow_run_errors()}
  def delete_workflow_run(
        %Client{} = client,
        workflow_definition_name,
        workflow_run_id,
        input,
        options \\ []
      ) do
    url_path =
      "/workflow-definitions/#{AWS.Util.encode_uri(workflow_definition_name)}/workflow-runs/#{AWS.Util.encode_uri(workflow_run_id)}"

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
  Retrieves the details and configuration of a specific workflow definition.
  """
  @spec get_workflow_definition(map(), String.t() | atom(), list()) ::
          {:ok, get_workflow_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_workflow_definition_errors()}
  def get_workflow_definition(%Client{} = client, workflow_definition_name, options \\ []) do
    url_path = "/workflow-definitions/#{AWS.Util.encode_uri(workflow_definition_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the current state, configuration, and execution details of a workflow
  run.
  """
  @spec get_workflow_run(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_workflow_run_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_workflow_run_errors()}
  def get_workflow_run(
        %Client{} = client,
        workflow_definition_name,
        workflow_run_id,
        options \\ []
      ) do
    url_path =
      "/workflow-definitions/#{AWS.Util.encode_uri(workflow_definition_name)}/workflow-runs/#{AWS.Util.encode_uri(workflow_run_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Executes the next step of an act, processing tool call results and returning new
  tool calls if needed.
  """
  @spec invoke_act_step(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          invoke_act_step_request(),
          list()
        ) ::
          {:ok, invoke_act_step_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, invoke_act_step_errors()}
  def invoke_act_step(
        %Client{} = client,
        act_id,
        session_id,
        workflow_definition_name,
        workflow_run_id,
        input,
        options \\ []
      ) do
    url_path =
      "/workflow-definitions/#{AWS.Util.encode_uri(workflow_definition_name)}/workflow-runs/#{AWS.Util.encode_uri(workflow_run_id)}/sessions/#{AWS.Util.encode_uri(session_id)}/acts/#{AWS.Util.encode_uri(act_id)}/invoke-step/"

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
  Lists all acts within a specific session with their current status and execution
  details.
  """
  @spec list_acts(map(), String.t() | atom(), list_acts_request(), list()) ::
          {:ok, list_acts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_acts_errors()}
  def list_acts(%Client{} = client, workflow_definition_name, input, options \\ []) do
    url_path = "/workflow-definitions/#{AWS.Util.encode_uri(workflow_definition_name)}/acts"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"maxResults", "maxResults"},
        {"nextToken", "nextToken"},
        {"sessionId", "sessionId"},
        {"workflowRunId", "workflowRunId"}
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
  Lists all available AI models that can be used for workflow execution, including
  their status and compatibility information.
  """
  @spec list_models(map(), list_models_request(), list()) ::
          {:ok, list_models_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_models_errors()}
  def list_models(%Client{} = client, input, options \\ []) do
    url_path = "/models"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"clientCompatibilityVersion", "clientCompatibilityVersion"}
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
  Lists all sessions within a specific workflow run.
  """
  @spec list_sessions(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          list_sessions_request(),
          list()
        ) ::
          {:ok, list_sessions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_sessions_errors()}
  def list_sessions(
        %Client{} = client,
        workflow_definition_name,
        workflow_run_id,
        input,
        options \\ []
      ) do
    url_path =
      "/workflow-definitions/#{AWS.Util.encode_uri(workflow_definition_name)}/workflow-runs/#{AWS.Util.encode_uri(workflow_run_id)}"

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
  Lists all workflow definitions in your account with optional filtering and
  pagination.
  """
  @spec list_workflow_definitions(map(), list_workflow_definitions_request(), list()) ::
          {:ok, list_workflow_definitions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_workflow_definitions_errors()}
  def list_workflow_definitions(%Client{} = client, input, options \\ []) do
    url_path = "/workflow-definitions"
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
  Lists all workflow runs for a specific workflow definition with optional
  filtering and pagination.
  """
  @spec list_workflow_runs(map(), String.t() | atom(), list_workflow_runs_request(), list()) ::
          {:ok, list_workflow_runs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_workflow_runs_errors()}
  def list_workflow_runs(%Client{} = client, workflow_definition_name, input, options \\ []) do
    url_path =
      "/workflow-definitions/#{AWS.Util.encode_uri(workflow_definition_name)}/workflow-runs"

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
  Updates an existing act's configuration, status, or error information.
  """
  @spec update_act(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          update_act_request(),
          list()
        ) ::
          {:ok, update_act_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_act_errors()}
  def update_act(
        %Client{} = client,
        act_id,
        session_id,
        workflow_definition_name,
        workflow_run_id,
        input,
        options \\ []
      ) do
    url_path =
      "/workflow-definitions/#{AWS.Util.encode_uri(workflow_definition_name)}/workflow-runs/#{AWS.Util.encode_uri(workflow_run_id)}/sessions/#{AWS.Util.encode_uri(session_id)}/acts/#{AWS.Util.encode_uri(act_id)}"

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
  Updates the configuration or state of an active workflow run.
  """
  @spec update_workflow_run(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_workflow_run_request(),
          list()
        ) ::
          {:ok, update_workflow_run_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_workflow_run_errors()}
  def update_workflow_run(
        %Client{} = client,
        workflow_definition_name,
        workflow_run_id,
        input,
        options \\ []
      ) do
    url_path =
      "/workflow-definitions/#{AWS.Util.encode_uri(workflow_definition_name)}/workflow-runs/#{AWS.Util.encode_uri(workflow_run_id)}"

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
end
