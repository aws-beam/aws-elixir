# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SageMakerRuntimeHTTP2 do
  @moduledoc """
  The Amazon SageMaker AI runtime HTTP/2 API.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      input_validation_error() :: %{
        "ErrorCode" => [String.t() | atom()],
        "Message" => [String.t() | atom()]
      }

  """
  @type input_validation_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_error() :: %{
        "ErrorCode" => [String.t() | atom()],
        "Message" => [String.t() | atom()]
      }

  """
  @type internal_server_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_stream_failure() :: %{
        "Message" => [String.t() | atom()]
      }

  """
  @type internal_stream_failure() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invoke_endpoint_with_bidirectional_stream_input() :: %{
        optional("ModelInvocationPath") => [String.t() | atom()],
        optional("ModelQueryString") => [String.t() | atom()],
        optional("TargetVariant") => [String.t() | atom()],
        required("Body") => list()
      }

  """
  @type invoke_endpoint_with_bidirectional_stream_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invoke_endpoint_with_bidirectional_stream_output() :: %{
        "Body" => list(),
        "InvokedProductionVariant" => [String.t() | atom()]
      }

  """
  @type invoke_endpoint_with_bidirectional_stream_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      model_error() :: %{
        "ErrorCode" => [String.t() | atom()],
        "LogStreamArn" => [String.t() | atom()],
        "Message" => [String.t() | atom()],
        "OriginalMessage" => [String.t() | atom()],
        "OriginalStatusCode" => [integer()]
      }

  """
  @type model_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      model_stream_error() :: %{
        "ErrorCode" => [String.t() | atom()],
        "Message" => [String.t() | atom()]
      }

  """
  @type model_stream_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      request_payload_part() :: %{
        "Bytes" => binary(),
        "CompletionState" => [String.t() | atom()],
        "DataType" => [String.t() | atom()],
        "P" => [String.t() | atom()]
      }

  """
  @type request_payload_part() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      response_payload_part() :: %{
        "Bytes" => binary(),
        "CompletionState" => [String.t() | atom()],
        "DataType" => [String.t() | atom()],
        "P" => [String.t() | atom()]
      }

  """
  @type response_payload_part() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_unavailable_error() :: %{
        "ErrorCode" => [String.t() | atom()],
        "Message" => [String.t() | atom()]
      }

  """
  @type service_unavailable_error() :: %{(String.t() | atom()) => any()}

  @type invoke_endpoint_with_bidirectional_stream_errors() ::
          service_unavailable_error()
          | model_stream_error()
          | model_error()
          | internal_stream_failure()
          | internal_server_error()
          | input_validation_error()

  def metadata do
    %{
      api_version: "2025-10-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "runtime.sagemaker",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "SageMaker Runtime HTTP2",
      signature_version: "v4",
      signing_name: "sagemaker",
      target_prefix: nil
    }
  end

  @doc """
  Invokes a model endpoint with bidirectional streaming capabilities.

  This operation establishes a persistent connection that allows you to send
  multiple requests and receive streaming responses from the model in real-time.

  Bidirectional streaming is useful for interactive applications such as chatbots,
  real-time translation, or any scenario where you need to maintain a
  conversation-like interaction with the model. The connection remains open,
  allowing you to send additional input and receive responses without establishing
  a new connection for each request.

  For an overview of Amazon SageMaker AI, see [How It Works](https://docs.aws.amazon.com/sagemaker/latest/dg/how-it-works.html).

  Amazon SageMaker AI strips all POST headers except those supported by the API.
  Amazon SageMaker AI might add additional headers. You should not rely on the
  behavior of headers outside those enumerated in the request syntax.

  Calls to `InvokeEndpointWithBidirectionalStream` are authenticated by using
  Amazon Web Services Signature Version 4. For information, see [Authenticating Requests (Amazon Web Services Signature Version
  4)](https://docs.aws.amazon.com/AmazonS3/latest/API/sig-v4-authenticating-requests.html)
  in the *Amazon S3 API Reference*.

  The bidirectional stream maintains the connection until either the client closes
  it or the model indicates completion. Each request and response in the stream is
  sent as an event with optional headers for data type and completion state.

  Endpoints are scoped to an individual account, and are not public. The URL does
  not contain the account ID, but Amazon SageMaker AI determines the account ID
  from the authentication token that is supplied by the caller.
  """
  @spec invoke_endpoint_with_bidirectional_stream(
          map(),
          String.t() | atom(),
          invoke_endpoint_with_bidirectional_stream_input(),
          list()
        ) ::
          {:ok, invoke_endpoint_with_bidirectional_stream_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, invoke_endpoint_with_bidirectional_stream_errors()}
  def invoke_endpoint_with_bidirectional_stream(
        %Client{} = client,
        endpoint_name,
        input,
        options \\ []
      ) do
    url_path = "/endpoints/#{AWS.Util.encode_uri(endpoint_name)}/invocations-bidirectional-stream"

    {headers, input} =
      [
        {"ModelInvocationPath", "X-Amzn-SageMaker-Model-Invocation-Path"},
        {"ModelQueryString", "X-Amzn-SageMaker-Model-Query-String"},
        {"TargetVariant", "X-Amzn-SageMaker-Target-Variant"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"X-Amzn-Invoked-Production-Variant", "InvokedProductionVariant"}]
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
