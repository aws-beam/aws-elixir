# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SageMakerInferenceRouterRuntime do
  @moduledoc """
  Amazon SageMaker Inference Router Runtime is the runtime API for Amazon
  SageMaker AI inference routers.

  An inference router sends each request that you make to one of the destinations
  of a routing target. A destination is a SageMaker AI endpoint or inference
  component, in your account or in another account, in the router's Amazon Web
  Services Region or in another Region in the same Amazon Web Services partition.
  The router chooses a healthy destination with capacity, and prefers destinations
  in its own Region.

  Use `InvokeInferenceRouter` to get an inference in real time. Use
  `InvokeInferenceRouterAsync` to submit a request whose input and response are
  stored in Amazon S3.

  The inference router runtime endpoint supports HTTP/1.1 only. HTTP/2 isn't
  supported. If you use the Amazon Web Services SDKs or the Amazon Web Services
  CLI, you don't need to change anything.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "Message" => [String.t() | atom()]
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_dependency_exception() :: %{
        "Message" => [String.t() | atom()]
      }

  """
  @type internal_dependency_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_failure() :: %{
        "Message" => [String.t() | atom()]
      }

  """
  @type internal_failure() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invoke_inference_router_async_input() :: %{
        optional("Accept") => [String.t() | atom()],
        optional("ContentType") => [String.t() | atom()],
        optional("CustomAttributes") => String.t() | atom(),
        optional("Filename") => [String.t() | atom()],
        optional("InferenceId") => [String.t() | atom()],
        optional("InvocationTimeoutSeconds") => [integer()],
        optional("RequestTTLSeconds") => [integer()],
        optional("S3OutputPathExtension") => [String.t() | atom()],
        required("InputLocation") => [String.t() | atom()],
        required("RoutingTargetName") => [String.t() | atom()]
      }

  """
  @type invoke_inference_router_async_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invoke_inference_router_async_output() :: %{
        "FailureLocation" => [String.t() | atom()],
        "InferenceId" => [String.t() | atom()],
        "OutputLocation" => [String.t() | atom()]
      }

  """
  @type invoke_inference_router_async_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invoke_inference_router_input() :: %{
        optional("Accept") => [String.t() | atom()],
        optional("ContentType") => [String.t() | atom()],
        optional("CustomAttributes") => String.t() | atom(),
        optional("InferenceId") => [String.t() | atom()],
        optional("PrefixAwareId") => [String.t() | atom()],
        required("Body") => binary(),
        required("RoutingTargetName") => [String.t() | atom()]
      }

  """
  @type invoke_inference_router_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invoke_inference_router_output() :: %{
        "Body" => binary(),
        "ContentType" => [String.t() | atom()],
        "CustomAttributes" => String.t() | atom(),
        "InvokedProductionVariant" => [String.t() | atom()],
        "InvokedRoutedResourceArn" => [String.t() | atom()],
        "RoutingReason" => [String.t() | atom()]
      }

  """
  @type invoke_inference_router_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      model_error() :: %{
        "LogStreamArn" => [String.t() | atom()],
        "Message" => [String.t() | atom()],
        "OriginalMessage" => [String.t() | atom()],
        "OriginalStatusCode" => [integer()]
      }

  """
  @type model_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      model_not_ready_exception() :: %{
        "Message" => [String.t() | atom()]
      }

  """
  @type model_not_ready_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      request_timeout_exception() :: %{
        "Message" => [String.t() | atom()]
      }

  """
  @type request_timeout_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_unavailable_exception() :: %{
        "Message" => [String.t() | atom()]
      }

  """
  @type service_unavailable_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "Message" => [String.t() | atom()]
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "Message" => [String.t() | atom()]
      }

  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @type invoke_inference_router_errors() ::
          validation_exception()
          | throttling_exception()
          | service_unavailable_exception()
          | request_timeout_exception()
          | model_not_ready_exception()
          | model_error()
          | internal_failure()
          | internal_dependency_exception()
          | access_denied_exception()

  @type invoke_inference_router_async_errors() ::
          validation_exception()
          | throttling_exception()
          | service_unavailable_exception()
          | request_timeout_exception()
          | internal_failure()
          | access_denied_exception()

  def metadata do
    %{
      api_version: "2026-01-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "inferencerouter-runtime.sagemaker",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "SageMaker Inference Router Runtime",
      signature_version: "v4",
      signing_name: "sagemaker",
      target_prefix: nil
    }
  end

  @doc """
  Sends a real-time inference request to an inference router.

  In the request, you name the routing target, and the router sends the request to
  one of the routing target's destinations. The response includes the destination
  that served the request and the reason that the router chose it.

  The following limits apply:

    * The maximum request payload is 6 MB. A request with a larger body
  fails with HTTP status code 413.

    * Your model has up to 60 seconds for each attempt, the same limit
  as `InvokeEndpoint`. If your account has a higher model execution timeout for
  `InvokeEndpoint`, it doesn't apply through an inference router. For models that
  take longer, use `InvokeInferenceRouterAsync`.

  If a destination returns an error that the router can retry, such as a
  throttling error, before your model produces a response, the router retries the
  request once on another destination. A request that times out on a destination
  isn't retried. Because a request can make two attempts, set your client read
  timeout to at least 170 seconds.

  The caller needs permission to invoke the inference router and every destination
  of the routing target. For information about permissions, see [Route requests across Regions with inference
  routers](https://docs.aws.amazon.com/sagemaker/latest/dg/inference-router.html).
  """
  @spec invoke_inference_router(
          map(),
          String.t() | atom(),
          invoke_inference_router_input(),
          list()
        ) ::
          {:ok, invoke_inference_router_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, invoke_inference_router_errors()}
  def invoke_inference_router(%Client{} = client, inference_router_name, input, options \\ []) do
    url_path = "/inference-routers/#{AWS.Util.encode_uri(inference_router_name)}/invocations"

    {headers, input} =
      [
        {"Accept", "Accept"},
        {"ContentType", "Content-Type"},
        {"CustomAttributes", "X-Amzn-SageMaker-Custom-Attributes"},
        {"InferenceId", "X-Amzn-SageMaker-Inference-Id"},
        {"PrefixAwareId", "X-Amzn-SageMaker-Prefix-Aware-Id"},
        {"RoutingTargetName", "X-Amzn-SageMaker-Routing-Target-Name"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"Content-Type", "ContentType"},
          {"X-Amzn-SageMaker-Custom-Attributes", "CustomAttributes"},
          {"X-Amzn-Invoked-Production-Variant", "InvokedProductionVariant"},
          {"X-Amzn-SageMaker-Invoked-Routed-Resource-Arn", "InvokedRoutedResourceArn"},
          {"X-Amzn-SageMaker-Invoked-Routing-Reason", "RoutingReason"}
        ]
      )

    options =
      Keyword.put(
        options,
        :send_body_as_binary?,
        true
      )

    options =
      Keyword.put(
        options,
        :receive_body_as_binary?,
        true
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
  Submits an asynchronous inference request to an inference router.

  Before you call this operation, upload the input data to Amazon S3 in the
  router's Amazon Web Services Region. The router returns as soon as it accepts
  the request, and sends the request to one of the destinations of the routing
  target. The destination reads the input from Amazon S3, and the inference
  response is written to the Amazon S3 output path that the routing target
  specifies.

  If a destination doesn't start the request within the routing target's
  `MaxTimeInBacklogSeconds`, the router moves the request to another destination.
  After your model starts processing the request, the request doesn't move. If no
  destination can take the request before `RequestTTLSeconds` runs out, or every
  destination has been tried, the router writes a failure object to the
  `FailureLocation` and publishes a notification to the routing target's error
  topic, if one is configured.

  For information about the permissions that the caller and each destination need,
  see [Send asynchronous requests through an inference router](https://docs.aws.amazon.com/sagemaker/latest/dg/inference-router-async.html).
  """
  @spec invoke_inference_router_async(
          map(),
          String.t() | atom(),
          invoke_inference_router_async_input(),
          list()
        ) ::
          {:ok, invoke_inference_router_async_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, invoke_inference_router_async_errors()}
  def invoke_inference_router_async(
        %Client{} = client,
        inference_router_name,
        input,
        options \\ []
      ) do
    url_path =
      "/inference-routers/#{AWS.Util.encode_uri(inference_router_name)}/async-invocations"

    {headers, input} =
      [
        {"Accept", "X-Amzn-SageMaker-Accept"},
        {"ContentType", "X-Amzn-SageMaker-Content-Type"},
        {"CustomAttributes", "X-Amzn-SageMaker-Custom-Attributes"},
        {"Filename", "X-Amzn-SageMaker-Filename"},
        {"InferenceId", "X-Amzn-SageMaker-Inference-Id"},
        {"InputLocation", "X-Amzn-SageMaker-InputLocation"},
        {"InvocationTimeoutSeconds", "X-Amzn-SageMaker-InvocationTimeoutSeconds"},
        {"RequestTTLSeconds", "X-Amzn-SageMaker-RequestTTLSeconds"},
        {"RoutingTargetName", "X-Amzn-SageMaker-Routing-Target-Name"},
        {"S3OutputPathExtension", "X-Amzn-SageMaker-S3OutputPathExtension"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"X-Amzn-SageMaker-FailureLocation", "FailureLocation"},
          {"X-Amzn-SageMaker-OutputLocation", "OutputLocation"}
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
      202
    )
  end
end
