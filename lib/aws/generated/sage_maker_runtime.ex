# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SageMakerRuntime do
  @moduledoc """
  The Amazon SageMaker AI runtime API.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      internal_dependency_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type internal_dependency_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_failure() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type internal_failure() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_stream_failure() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type internal_stream_failure() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invoke_endpoint_async_input() :: %{
        optional("Accept") => String.t() | atom(),
        optional("ContentType") => String.t() | atom(),
        optional("CustomAttributes") => String.t() | atom(),
        optional("Filename") => String.t() | atom(),
        optional("InferenceId") => String.t() | atom(),
        optional("InvocationTimeoutSeconds") => integer(),
        optional("RequestTTLSeconds") => integer(),
        optional("S3OutputPathExtension") => String.t() | atom(),
        required("InputLocation") => String.t() | atom()
      }

  """
  @type invoke_endpoint_async_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invoke_endpoint_async_output() :: %{
        "FailureLocation" => String.t() | atom(),
        "InferenceId" => String.t() | atom(),
        "OutputLocation" => String.t() | atom()
      }

  """
  @type invoke_endpoint_async_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invoke_endpoint_input() :: %{
        optional("Accept") => String.t() | atom(),
        optional("ContentType") => String.t() | atom(),
        optional("CustomAttributes") => String.t() | atom(),
        optional("EnableExplanations") => String.t() | atom(),
        optional("InferenceComponentName") => String.t() | atom(),
        optional("InferenceId") => String.t() | atom(),
        optional("SessionId") => String.t() | atom(),
        optional("TargetContainerHostname") => String.t() | atom(),
        optional("TargetModel") => String.t() | atom(),
        optional("TargetVariant") => String.t() | atom(),
        required("Body") => binary()
      }

  """
  @type invoke_endpoint_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invoke_endpoint_output() :: %{
        "Body" => binary(),
        "ClosedSessionId" => String.t() | atom(),
        "ContentType" => String.t() | atom(),
        "CustomAttributes" => String.t() | atom(),
        "InvokedProductionVariant" => String.t() | atom(),
        "NewSessionId" => String.t() | atom()
      }

  """
  @type invoke_endpoint_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invoke_endpoint_with_response_stream_input() :: %{
        optional("Accept") => String.t() | atom(),
        optional("ContentType") => String.t() | atom(),
        optional("CustomAttributes") => String.t() | atom(),
        optional("InferenceComponentName") => String.t() | atom(),
        optional("InferenceId") => String.t() | atom(),
        optional("SessionId") => String.t() | atom(),
        optional("TargetContainerHostname") => String.t() | atom(),
        optional("TargetVariant") => String.t() | atom(),
        required("Body") => binary()
      }

  """
  @type invoke_endpoint_with_response_stream_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invoke_endpoint_with_response_stream_output() :: %{
        "Body" => list(),
        "ContentType" => String.t() | atom(),
        "CustomAttributes" => String.t() | atom(),
        "InvokedProductionVariant" => String.t() | atom()
      }

  """
  @type invoke_endpoint_with_response_stream_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      model_error() :: %{
        "LogStreamArn" => String.t() | atom(),
        "Message" => String.t() | atom(),
        "OriginalMessage" => String.t() | atom(),
        "OriginalStatusCode" => integer()
      }

  """
  @type model_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      model_not_ready_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type model_not_ready_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      model_stream_error() :: %{
        "ErrorCode" => String.t() | atom(),
        "Message" => String.t() | atom()
      }

  """
  @type model_stream_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      payload_part() :: %{
        "Bytes" => binary()
      }

  """
  @type payload_part() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_unavailable() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type service_unavailable() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_error() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type validation_error() :: %{(String.t() | atom()) => any()}

  @type invoke_endpoint_errors() ::
          validation_error()
          | service_unavailable()
          | model_not_ready_exception()
          | model_error()
          | internal_failure()
          | internal_dependency_exception()

  @type invoke_endpoint_async_errors() ::
          validation_error() | service_unavailable() | internal_failure()

  @type invoke_endpoint_with_response_stream_errors() ::
          validation_error()
          | service_unavailable()
          | model_stream_error()
          | model_error()
          | internal_stream_failure()
          | internal_failure()

  def metadata do
    %{
      api_version: "2017-05-13",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "runtime.sagemaker",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "SageMaker Runtime",
      signature_version: "v4",
      signing_name: "sagemaker",
      target_prefix: nil
    }
  end

  @doc """
  After you deploy a model into production using Amazon SageMaker AI hosting
  services,
  your client applications use this API to get inferences from the model hosted at
  the
  specified endpoint.

  For an overview of Amazon SageMaker AI, see [How It Works](https://docs.aws.amazon.com/sagemaker/latest/dg/how-it-works.html).

  Amazon SageMaker AI strips all POST headers except those supported by the API.
  Amazon SageMaker AI might add
  additional headers. You should not rely on the behavior of headers outside those
  enumerated in the request syntax.

  Calls to `InvokeEndpoint` are authenticated by using Amazon Web Services
  Signature Version 4. For information, see [Authenticating Requests (Amazon Web Services Signature Version
  4)](https://docs.aws.amazon.com/AmazonS3/latest/API/sig-v4-authenticating-requests.html)
  in the *Amazon S3 API Reference*.

  A customer's model containers must respond to requests within 60 seconds. The
  model
  itself can have a maximum processing time of 60 seconds before responding to
  invocations. If your model is going to take 50-60 seconds of processing time,
  the SDK
  socket timeout should be set to be 70 seconds.

  Endpoints are scoped to an individual account, and are not public. The URL does
  not contain the account ID, but Amazon SageMaker AI determines the account ID
  from
  the authentication token that is supplied by the caller.
  """
  @spec invoke_endpoint(map(), String.t() | atom(), invoke_endpoint_input(), list()) ::
          {:ok, invoke_endpoint_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, invoke_endpoint_errors()}
  def invoke_endpoint(%Client{} = client, endpoint_name, input, options \\ []) do
    url_path = "/endpoints/#{AWS.Util.encode_uri(endpoint_name)}/invocations"

    {headers, input} =
      [
        {"Accept", "Accept"},
        {"ContentType", "Content-Type"},
        {"CustomAttributes", "X-Amzn-SageMaker-Custom-Attributes"},
        {"EnableExplanations", "X-Amzn-SageMaker-Enable-Explanations"},
        {"InferenceComponentName", "X-Amzn-SageMaker-Inference-Component"},
        {"InferenceId", "X-Amzn-SageMaker-Inference-Id"},
        {"SessionId", "X-Amzn-SageMaker-Session-Id"},
        {"TargetContainerHostname", "X-Amzn-SageMaker-Target-Container-Hostname"},
        {"TargetModel", "X-Amzn-SageMaker-Target-Model"},
        {"TargetVariant", "X-Amzn-SageMaker-Target-Variant"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"X-Amzn-SageMaker-Closed-Session-Id", "ClosedSessionId"},
          {"Content-Type", "ContentType"},
          {"X-Amzn-SageMaker-Custom-Attributes", "CustomAttributes"},
          {"x-Amzn-Invoked-Production-Variant", "InvokedProductionVariant"},
          {"X-Amzn-SageMaker-New-Session-Id", "NewSessionId"}
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
  After you deploy a model into production using Amazon SageMaker AI hosting
  services,
  your client applications use this API to get inferences from the model hosted at
  the
  specified endpoint in an asynchronous manner.

  Inference requests sent to this API are enqueued for asynchronous processing.
  The
  processing of the inference request may or may not complete before you receive a
  response from this API. The response from this API will not contain the result
  of the
  inference request but contain information about where you can locate it.

  Amazon SageMaker AI strips all POST headers except those supported by the API.
  Amazon SageMaker AI might add
  additional headers. You should not rely on the behavior of headers outside those
  enumerated in the request syntax.

  Calls to `InvokeEndpointAsync` are authenticated by using Amazon Web Services
  Signature Version 4. For information, see [Authenticating Requests (Amazon Web Services Signature Version
  4)](https://docs.aws.amazon.com/AmazonS3/latest/API/sig-v4-authenticating-requests.html)
  in the *Amazon S3 API Reference*.
  """
  @spec invoke_endpoint_async(map(), String.t() | atom(), invoke_endpoint_async_input(), list()) ::
          {:ok, invoke_endpoint_async_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, invoke_endpoint_async_errors()}
  def invoke_endpoint_async(%Client{} = client, endpoint_name, input, options \\ []) do
    url_path = "/endpoints/#{AWS.Util.encode_uri(endpoint_name)}/async-invocations"

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

  @doc """
  Invokes a model at the specified endpoint to return the inference response as a
  stream.

  The inference stream provides the response payload incrementally as a series of
  parts. Before you can get an inference stream, you must have access to a model
  that's
  deployed using Amazon SageMaker AI hosting services, and the container for that
  model
  must support inference streaming.

  For more information that can help you use this API, see the following sections
  in the
  *Amazon SageMaker AI Developer Guide*:

    *
  For information about how to add streaming support to a model, see [How Containers Serve
  Requests](https://docs.aws.amazon.com/sagemaker/latest/dg/your-algorithms-inference-code.html#your-algorithms-inference-code-how-containe-serves-requests).

    *
  For information about how to process the streaming response, see [Invoke real-time
  endpoints](https://docs.aws.amazon.com/sagemaker/latest/dg/realtime-endpoints-test-endpoints.html).

  Before you can use this operation, your IAM permissions must allow the
  `sagemaker:InvokeEndpoint` action. For more information about Amazon SageMaker
  AI actions for IAM policies, see [Actions, resources, and condition keys for Amazon SageMaker
  AI](https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonsagemaker.html)
  in the *IAM Service Authorization
  Reference*.

  Amazon SageMaker AI strips all POST headers except those supported by the API.
  Amazon SageMaker AI might add
  additional headers. You should not rely on the behavior of headers outside those
  enumerated in the request syntax.

  Calls to `InvokeEndpointWithResponseStream` are authenticated by using
  Amazon Web Services Signature Version 4. For information, see [Authenticating Requests (Amazon Web Services Signature Version
  4)](https://docs.aws.amazon.com/AmazonS3/latest/API/sig-v4-authenticating-requests.html)
  in the
  *Amazon S3 API Reference*.
  """
  @spec invoke_endpoint_with_response_stream(
          map(),
          String.t() | atom(),
          invoke_endpoint_with_response_stream_input(),
          list()
        ) ::
          {:ok, invoke_endpoint_with_response_stream_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, invoke_endpoint_with_response_stream_errors()}
  def invoke_endpoint_with_response_stream(
        %Client{} = client,
        endpoint_name,
        input,
        options \\ []
      ) do
    url_path = "/endpoints/#{AWS.Util.encode_uri(endpoint_name)}/invocations-response-stream"

    {headers, input} =
      [
        {"Accept", "X-Amzn-SageMaker-Accept"},
        {"ContentType", "Content-Type"},
        {"CustomAttributes", "X-Amzn-SageMaker-Custom-Attributes"},
        {"InferenceComponentName", "X-Amzn-SageMaker-Inference-Component"},
        {"InferenceId", "X-Amzn-SageMaker-Inference-Id"},
        {"SessionId", "X-Amzn-SageMaker-Session-Id"},
        {"TargetContainerHostname", "X-Amzn-SageMaker-Target-Container-Hostname"},
        {"TargetVariant", "X-Amzn-SageMaker-Target-Variant"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"X-Amzn-SageMaker-Content-Type", "ContentType"},
          {"X-Amzn-SageMaker-Custom-Attributes", "CustomAttributes"},
          {"x-Amzn-Invoked-Production-Variant", "InvokedProductionVariant"}
        ]
      )

    options =
      Keyword.put(
        options,
        :send_body_as_binary?,
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
end
