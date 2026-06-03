# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SagemakerJobRuntime do
  @moduledoc """
  Agentic RFT Runtime Service - manages trajectory and transition data
  for reinforcement fine-tuning jobs.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      complete_rollout_request() :: %{
        optional("ClientToken") => [String.t() | atom()],
        optional("Status") => list(any()),
        required("JobArn") => String.t() | atom(),
        required("TrajectoryId") => String.t() | atom()
      }

  """
  @type complete_rollout_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      complete_rollout_response() :: %{}

  """
  @type complete_rollout_response() :: %{}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_service_error() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type internal_service_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      sample_request() :: %{
        required("Body") => binary(),
        required("JobArn") => String.t() | atom(),
        required("TrajectoryId") => String.t() | atom()
      }

  """
  @type sample_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      sample_response() :: %{
        "Body" => binary(),
        "ContentType" => [String.t() | atom()]
      }

  """
  @type sample_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      sample_with_response_stream_request() :: %{
        required("Body") => binary(),
        required("JobArn") => String.t() | atom(),
        required("TrajectoryId") => String.t() | atom()
      }

  """
  @type sample_with_response_stream_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      sample_with_response_stream_response() :: %{
        "Body" => binary(),
        "ContentType" => [String.t() | atom()]
      }

  """
  @type sample_with_response_stream_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_reward_request() :: %{
        optional("ClientToken") => [String.t() | atom()],
        required("JobArn") => String.t() | atom(),
        required("Rewards") => list([float()]()),
        required("TrajectoryId") => String.t() | atom()
      }

  """
  @type update_reward_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_reward_response() :: %{}

  """
  @type update_reward_response() :: %{}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @type complete_rollout_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_service_error()
          | conflict_exception()
          | access_denied_exception()

  @type sample_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_service_error()
          | access_denied_exception()

  @type sample_with_response_stream_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_service_error()
          | access_denied_exception()

  @type update_reward_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_service_error()
          | conflict_exception()
          | access_denied_exception()

  def metadata do
    %{
      api_version: "2026-02-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "job-runtime.sagemaker",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "SagemakerJobRuntime",
      signature_version: "v4",
      signing_name: "sagemaker",
      target_prefix: nil
    }
  end

  @doc """
  Marks a rollout as complete, indicating that no further turns will be appended
  to the trajectory.

  After calling this operation, the trajectory is sealed and
  eligible for reward submission via the UpdateReward operation.
  """
  @spec complete_rollout(map(), complete_rollout_request(), list()) ::
          {:ok, complete_rollout_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, complete_rollout_errors()}
  def complete_rollout(%Client{} = client, input, options \\ []) do
    url_path = "/complete-rollout"

    {headers, input} =
      [
        {"JobArn", "X-Amzn-SageMaker-Job-Arn"}
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
  Sends an inference request to the model during a job execution.

  The request
  and response bodies are forwarded to and from the model without modification.
  Each turn (prompt and response) is captured for later use.
  """
  @spec sample(map(), sample_request(), list()) ::
          {:ok, sample_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, sample_errors()}
  def sample(%Client{} = client, input, options \\ []) do
    url_path = "/sample"

    {headers, input} =
      [
        {"JobArn", "X-Amzn-SageMaker-Job-Arn"},
        {"TrajectoryId", "X-Amzn-SageMaker-Trajectory-Id"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"Content-Type", "ContentType"}]
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
  Sends a streaming inference request to the model during a job execution.

  Returns the response as a stream of payload chunks. Each turn is captured
  for later use.
  """
  @spec sample_with_response_stream(map(), sample_with_response_stream_request(), list()) ::
          {:ok, sample_with_response_stream_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, sample_with_response_stream_errors()}
  def sample_with_response_stream(%Client{} = client, input, options \\ []) do
    url_path = "/sample-with-response-stream"

    {headers, input} =
      [
        {"JobArn", "X-Amzn-SageMaker-Job-Arn"},
        {"TrajectoryId", "X-Amzn-SageMaker-Trajectory-Id"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"Content-Type", "ContentType"}]
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
  Updates the reward values for a trajectory and transitions it to
  reward-received status, signaling that it is eligible for processing.

  Call this
  operation after CompleteRollout to provide the computed reward scores.
  """
  @spec update_reward(map(), update_reward_request(), list()) ::
          {:ok, update_reward_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_reward_errors()}
  def update_reward(%Client{} = client, input, options \\ []) do
    url_path = "/update-reward"

    {headers, input} =
      [
        {"JobArn", "X-Amzn-SageMaker-Job-Arn"}
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
end
