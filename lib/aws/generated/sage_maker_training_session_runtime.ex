# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SageMakerTrainingSessionRuntime do
  @moduledoc """
  Amazon SageMaker Training Session Runtime provides APIs for executing training
  operations and sampling operations against a running training session.

  Use these APIs to submit asynchronous training steps (such as forward-backward
  passes, optimizer steps, and checkpoint saves) and to generate text samples from
  the model being trained.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      adam_params_config() :: %{
        "beta1" => [float()],
        "beta2" => [float()],
        "eps" => [float()],
        "gradClipNorm" => [float()],
        "learningRate" => [float()],
        "loraPlusLrRatio" => [float()],
        "weightDecay" => [float()]
      }

  """
  @type adam_params_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      compute_logprobs_config() :: %{
        "modelPackageArn" => [String.t() | atom()],
        "prompt" => model_input()
      }

  """
  @type compute_logprobs_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      compute_logprobs_result() :: %{
        "logprobs" => list([float()]())
      }

  """
  @type compute_logprobs_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      datum() :: %{
        "lossFnInputs" => map(),
        "modelInput" => model_input()
      }

  """
  @type datum() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      encoded_text_chunk() :: %{
        "tokens" => list([integer()]()),
        "type" => list(any())
      }

  """
  @type encoded_text_chunk() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      execute_sampling_operation_input() :: %{
        required("operationConfig") => list()
      }

  """
  @type execute_sampling_operation_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      execute_sampling_operation_output() :: %{
        "operationId" => String.t() | atom()
      }

  """
  @type execute_sampling_operation_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      execute_training_operation_input() :: %{
        optional("clientToken") => String.t() | atom(),
        required("operationConfig") => list(),
        required("sequenceNumber") => integer()
      }

  """
  @type execute_training_operation_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      execute_training_operation_output() :: %{
        "operationId" => String.t() | atom()
      }

  """
  @type execute_training_operation_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      forward_backward_config() :: %{
        "datumList" => list(datum()),
        "lossFnConfig" => [any()],
        "lossFnName" => list(any())
      }

  """
  @type forward_backward_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      forward_backward_result() :: %{
        "lossFnOutputType" => [String.t() | atom()],
        "lossFnOutputs" => list(map()),
        "metrics" => map(),
        "tokenUsage" => training_token_usage()
      }

  """
  @type forward_backward_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      forward_config() :: %{
        "datumList" => list(datum()),
        "lossFnConfig" => [any()],
        "lossFnName" => list(any())
      }

  """
  @type forward_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      forward_result() :: %{
        "lossFnOutputType" => [String.t() | atom()],
        "lossFnOutputs" => list(map()),
        "metrics" => map(),
        "tokenUsage" => training_token_usage()
      }

  """
  @type forward_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_sampling_operation_result_input() :: %{}

  """
  @type get_sampling_operation_result_input() :: %{}

  @typedoc """

  ## Example:

      get_sampling_operation_result_output() :: %{
        "errorDetails" => [String.t() | atom()],
        "operationResult" => list(),
        "status" => list(any())
      }

  """
  @type get_sampling_operation_result_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_training_operation_result_input() :: %{}

  """
  @type get_training_operation_result_input() :: %{}

  @typedoc """

  ## Example:

      get_training_operation_result_output() :: %{
        "errorDetails" => [String.t() | atom()],
        "operationResult" => list(),
        "status" => list(any()),
        "tokenUsage" => training_token_usage()
      }

  """
  @type get_training_operation_result_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      load_state_config() :: %{
        "loadOptimizer" => [boolean()],
        "modelPackageArn" => [String.t() | atom()]
      }

  """
  @type load_state_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      load_state_result() :: %{}

  """
  @type load_state_result() :: %{}

  @typedoc """

  ## Example:

      load_weights_for_sampling_config() :: %{
        "modelPackageArn" => [String.t() | atom()]
      }

  """
  @type load_weights_for_sampling_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      load_weights_for_sampling_result() :: %{}

  """
  @type load_weights_for_sampling_result() :: %{}

  @typedoc """

  ## Example:

      model_input() :: %{
        "chunks" => list(encoded_text_chunk())
      }

  """
  @type model_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      optimizer_step_config() :: %{
        "adamParamsConfig" => adam_params_config()
      }

  """
  @type optimizer_step_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      optimizer_step_result() :: %{
        "metrics" => map()
      }

  """
  @type optimizer_step_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      sample_config() :: %{
        "includePromptLogprobs" => [boolean()],
        "modelPackageArn" => [String.t() | atom()],
        "numSamples" => [integer()],
        "prompt" => model_input(),
        "samplingParams" => sampling_params(),
        "topkPromptLogprobs" => [integer()]
      }

  """
  @type sample_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      sample_response() :: %{
        "promptLogprobs" => list([float()]()),
        "sequences" => list(sampled_sequence()),
        "topkPromptLogprobs" => list(list(token_logprob())())
      }

  """
  @type sample_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      sample_token_usage() :: %{
        "decode" => [integer()],
        "prefill" => [integer()]
      }

  """
  @type sample_token_usage() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      sample_training_session_input() :: %{
        optional("accept") => [String.t() | atom()],
        optional("body") => binary(),
        optional("contentType") => [String.t() | atom()],
        optional("modelPackageArn") => [String.t() | atom()]
      }

  """
  @type sample_training_session_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      sample_training_session_output() :: %{
        "body" => binary(),
        "contentType" => [String.t() | atom()]
      }

  """
  @type sample_training_session_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      sample_training_session_with_response_stream_input() :: %{
        optional("accept") => [String.t() | atom()],
        optional("body") => binary(),
        optional("contentType") => [String.t() | atom()],
        optional("modelPackageArn") => [String.t() | atom()]
      }

  """
  @type sample_training_session_with_response_stream_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      sample_training_session_with_response_stream_output() :: %{
        "body" => binary(),
        "contentType" => [String.t() | atom()]
      }

  """
  @type sample_training_session_with_response_stream_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      sampled_sequence() :: %{
        "logprobs" => list([float()]()),
        "stopReason" => list(any()),
        "tokenUsage" => sample_token_usage(),
        "tokens" => list([integer()]())
      }

  """
  @type sampled_sequence() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      sampling_params() :: %{
        "maxTokens" => [integer()],
        "seed" => [integer()],
        "stop" => list([String.t() | atom()]()),
        "temperature" => [float()],
        "topK" => [integer()],
        "topP" => [float()]
      }

  """
  @type sampling_params() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      save_state_config() :: %{
        "description" => [String.t() | atom()]
      }

  """
  @type save_state_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      save_state_result() :: %{
        "modelPackageArn" => [String.t() | atom()]
      }

  """
  @type save_state_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      save_weights_config() :: %{
        "description" => [String.t() | atom()],
        "mergeWeights" => [boolean()]
      }

  """
  @type save_weights_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      save_weights_result() :: %{
        "modelPackageArn" => [String.t() | atom()]
      }

  """
  @type save_weights_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tensor_data() :: %{
        "data" => [any()],
        "dtype" => [String.t() | atom()],
        "shape" => list([integer()]())
      }

  """
  @type tensor_data() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      token_logprob() :: %{
        "logprob" => [float()],
        "tokenId" => [integer()]
      }

  """
  @type token_logprob() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      training_token_usage() :: %{
        "trainingTokens" => [integer()]
      }

  """
  @type training_token_usage() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @type execute_sampling_operation_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()

  @type execute_training_operation_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()

  @type get_sampling_operation_result_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()

  @type get_training_operation_result_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()

  @type sample_training_session_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()

  @type sample_training_session_with_response_stream_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2025-02-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "training-session-runtime.sagemaker",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "SageMakerTrainingSessionRuntime",
      signature_version: "v4",
      signing_name: "sagemaker",
      target_prefix: nil
    }
  end

  @doc """
  Submits an asynchronous sampling operation to generate text or compute
  log-probabilities from the model associated with the specified training session.

  The session must be in `Running` or `Blocked` state. Use
  `GetSamplingOperationResult` to poll for the result.
  """
  @spec execute_sampling_operation(
          map(),
          String.t() | atom(),
          execute_sampling_operation_input(),
          list()
        ) ::
          {:ok, execute_sampling_operation_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, execute_sampling_operation_errors()}
  def execute_sampling_operation(%Client{} = client, training_session_name, input, options \\ []) do
    url_path =
      "/v1/training-sessions/#{AWS.Util.encode_uri(training_session_name)}/sampling-operations"

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
  Submits an asynchronous training operation to the specified training session.

  The service executes operations in sequence number order. The session must be in
  `Running` or `Blocked` state. Use `GetTrainingOperationResult` to poll for the
  result. Supported operation types: `forward`, `forwardBackward`,
  `optimizerStep`, `saveWeights`, `saveState`, and `loadState`.
  """
  @spec execute_training_operation(
          map(),
          String.t() | atom(),
          execute_training_operation_input(),
          list()
        ) ::
          {:ok, execute_training_operation_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, execute_training_operation_errors()}
  def execute_training_operation(%Client{} = client, training_session_name, input, options \\ []) do
    url_path = "/v1/training-sessions/#{AWS.Util.encode_uri(training_session_name)}/operations"
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
  Retrieves the current status and result of a previously submitted sampling
  operation.

  Poll this operation until the status reaches a terminal state (Completed or
  Failed).
  """
  @spec get_sampling_operation_result(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_sampling_operation_result_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_sampling_operation_result_errors()}
  def get_sampling_operation_result(
        %Client{} = client,
        operation_id,
        training_session_name,
        options \\ []
      ) do
    url_path =
      "/v1/training-sessions/#{AWS.Util.encode_uri(training_session_name)}/sampling-operations/#{AWS.Util.encode_uri(operation_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the current status and result of a previously submitted training
  operation.

  Poll this operation until the status reaches a terminal state (Completed,
  Failed, or Skipped).
  """
  @spec get_training_operation_result(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_training_operation_result_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_training_operation_result_errors()}
  def get_training_operation_result(
        %Client{} = client,
        operation_id,
        training_session_name,
        options \\ []
      ) do
    url_path =
      "/v1/training-sessions/#{AWS.Util.encode_uri(training_session_name)}/operations/#{AWS.Util.encode_uri(operation_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Sends an inference request to the model associated with the specified training
  session and returns the response synchronously.

  The service passes the request and response bodies to and from the model without
  modification.
  """
  @spec sample_training_session(
          map(),
          String.t() | atom(),
          sample_training_session_input(),
          list()
        ) ::
          {:ok, sample_training_session_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, sample_training_session_errors()}
  def sample_training_session(%Client{} = client, training_session_name, input, options \\ []) do
    url_path = "/training-sessions/#{AWS.Util.encode_uri(training_session_name)}/sample"

    {headers, input} =
      [
        {"accept", "Accept"},
        {"contentType", "Content-Type"},
        {"modelPackageArn", "X-Amzn-SageMaker-Model-Package"}
      ]
      |> Request.build_params(input)

    custom_headers = []
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
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Streams inference responses from the model associated with the specified
  training session.

  Use this operation for real-time token-by-token generation. The service passes
  the request body to the model without modification.
  """
  @spec sample_training_session_with_response_stream(
          map(),
          String.t() | atom(),
          sample_training_session_with_response_stream_input(),
          list()
        ) ::
          {:ok, sample_training_session_with_response_stream_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, sample_training_session_with_response_stream_errors()}
  def sample_training_session_with_response_stream(
        %Client{} = client,
        training_session_name,
        input,
        options \\ []
      ) do
    url_path =
      "/training-sessions/#{AWS.Util.encode_uri(training_session_name)}/sample-with-response-stream"

    {headers, input} =
      [
        {"accept", "Accept"},
        {"contentType", "Content-Type"},
        {"modelPackageArn", "X-Amzn-SageMaker-Model-Package"}
      ]
      |> Request.build_params(input)

    custom_headers = []
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
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end
end
