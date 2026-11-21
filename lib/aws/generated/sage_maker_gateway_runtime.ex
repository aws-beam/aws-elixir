# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SageMakerGatewayRuntime do
  @moduledoc """
  Use the Amazon SageMaker Gateway Runtime API to run inference through a
  Global Inference Gateway.

  A Global Inference Gateway routes each request to
  an inference gateway that serves the model named in the request.

  The request body is an OpenAI-compatible JSON object, sent with
  `Content-Type: application/json`, and the model is selected by the `model`
  key in that body. The content of the body is passed to the model server
  unchanged, except for the `stream` flag, which each operation sets.

  Requests are signed with Signature Version 4 under the `sagemaker` signing
  name. IAM actions are in the `sagemaker` namespace, for example
  `sagemaker:InvokeGlobalInferenceGateway`. The default regional endpoint is
  `gateway-runtime.sagemaker.{region}.amazonaws.com`.
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

      bad_gateway_exception() :: %{
        "Message" => [String.t() | atom()]
      }

  """
  @type bad_gateway_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      gateway_timeout_exception() :: %{
        "Message" => [String.t() | atom()]
      }

  """
  @type gateway_timeout_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "Message" => [String.t() | atom()]
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_stream_failure() :: %{
        "Message" => [String.t() | atom()]
      }

  """
  @type internal_stream_failure() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invoke_global_inference_gateway_input() :: %{
        optional("Accept") => [String.t() | atom()],
        optional("CustomerIdentityToken") => String.t() | atom(),
        required("Body") => binary(),
        required("ContentType") => String.t() | atom()
      }

  """
  @type invoke_global_inference_gateway_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invoke_global_inference_gateway_output() :: %{
        "Body" => binary()
      }

  """
  @type invoke_global_inference_gateway_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invoke_global_inference_gateway_with_response_stream_input() :: %{
        optional("Accept") => [String.t() | atom()],
        optional("CustomerIdentityToken") => String.t() | atom(),
        required("Body") => binary(),
        required("ContentType") => String.t() | atom()
      }

  """
  @type invoke_global_inference_gateway_with_response_stream_input() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      invoke_global_inference_gateway_with_response_stream_output() :: %{
        "Body" => list()
      }

  """
  @type invoke_global_inference_gateway_with_response_stream_output() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      model_stream_error() :: %{
        "ErrorCode" => list(any()),
        "Message" => [String.t() | atom()]
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

      payload_too_large_exception() :: %{
        "Message" => [String.t() | atom()]
      }

  """
  @type payload_too_large_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Message" => [String.t() | atom()],
        "ResourceId" => [String.t() | atom()],
        "ResourceType" => [String.t() | atom()]
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

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

  @type invoke_global_inference_gateway_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | payload_too_large_exception()
          | internal_server_exception()
          | gateway_timeout_exception()
          | bad_gateway_exception()
          | access_denied_exception()

  @type invoke_global_inference_gateway_with_response_stream_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | payload_too_large_exception()
          | model_stream_error()
          | internal_stream_failure()
          | internal_server_exception()
          | gateway_timeout_exception()
          | bad_gateway_exception()
          | access_denied_exception()

  def metadata do
    %{
      api_version: "2026-10-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "gateway-runtime.sagemaker",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "SageMaker Gateway Runtime",
      signature_version: "v4",
      signing_name: "sagemaker",
      target_prefix: nil
    }
  end

  @doc """
  Buffered (non-streaming) inference.

  Returns the full OpenAI completion body.

  Errors carry their origin in the `Message` prefix. Every typed error's text
  is in the `Message` member (JSON key `Message`), and starts with one of these
  prefixes:

  * `Global Inference Gateway: ` -- the gateway rejected or failed the request
  itself: validation, authorization, throttling, routing (the gateway or
  model was not found, or no capacity is available), a gateway limit or time
  limit, or failing to reach the inference gateway
  (`Global Inference Gateway: could not reach the inference gateway: <reason>`,
  or `Global Inference Gateway: timed out waiting for the inference gateway`).
  This includes the 400 for an invalid request and the 413 for a request
  body that is too large.
  * `inference gateway: ` -- the inference gateway serving the model returned
  an error status. The message gives that status code and up to 256 bytes of
  its error message, for example `inference gateway: 503 <message>`. A
  BadGatewayException can instead read
  `inference gateway: response ended unexpectedly`, with no status, when the
  inference gateway's connection failed while it was sending the response.
  * `inference gateway (<component>): ` -- the same, when the inference
  gateway reports which of its components produced the error, for example
  `inference gateway (model server): 502 <message>`. The component is one of:
  * `config` -- the inference gateway's configuration and proxy layer.
  * `scheduler` -- the inference gateway's request scheduler.
  * `model selector` -- the inference gateway's model selector.
  * `model server` -- the model server.

  Every error status the inference gateway returns is a typed error, chosen
  by that status:

  * 400 and any other 4xx not listed here -- a 400 validation error.
  * 401 and 403 -- AccessDeniedException (403).
  * 404 -- ResourceNotFoundException.
  * 408 -- GatewayTimeoutException (504).
  * 429 -- ThrottlingException, with the `Retry-After` header.
  * 502, and 500, 503 or any other 5xx not listed here -- BadGatewayException
  (502). A 500 or 503 from the inference gateway comes after the request was
  dispatched, so it is not modeled as retryable, and the gateway may already
  have tried another inference gateway. Standard SDK retry modes may still
  retry a 5xx status; set max attempts to 1 if a repeated inference is
  unacceptable.
  * 504 -- GatewayTimeoutException.</message></component></message></reason>
  """
  @spec invoke_global_inference_gateway(
          map(),
          String.t() | atom(),
          invoke_global_inference_gateway_input(),
          list()
        ) ::
          {:ok, invoke_global_inference_gateway_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, invoke_global_inference_gateway_errors()}
  def invoke_global_inference_gateway(%Client{} = client, gateway_id, input, options \\ []) do
    url_path = "/global-inference-gateway/#{AWS.Util.encode_uri(gateway_id)}/invocations"

    {headers, input} =
      [
        {"Accept", "Accept"},
        {"ContentType", "Content-Type"},
        {"CustomerIdentityToken", "X-Amzn-SageMaker-Customer-Identity-Token"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

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
  Streaming inference.

  Returns an AWS event stream of PayloadPart events that
  carry the model server's server-sent event (SSE) bytes, so SDKs decode the
  stream into events for you.

  The errors listed for this operation, other than ModelStreamError and
  InternalStreamFailure, are returned before the response starts (before the
  200 status), so they end the request, not the stream. None of them can
  occur after the 200. ModelStreamError and InternalStreamFailure appear only
  as events in the stream, after the 200. Once the 200 is sent, the stream
  carries the response as PayloadPart events. If reading the inference
  gateway's response fails, the stream carries one InternalStreamFailure
  event and then ends. ModelStreamError is reserved and is not currently sent.

  Errors carry their origin in the `Message` prefix. Every typed error's text
  is in the `Message` member (JSON key `Message`), and starts with one of these
  prefixes:

  * `Global Inference Gateway: ` -- the gateway rejected or failed the request
  itself: validation, authorization, throttling, routing (the gateway or
  model was not found, or no capacity is available), a gateway limit or time
  limit, or failing to reach the inference gateway
  (`Global Inference Gateway: could not reach the inference gateway: <reason>`,
  or `Global Inference Gateway: timed out waiting for the inference gateway`).
  This includes the 400 for an invalid request and the 413 for a request
  body that is too large.
  * `inference gateway: ` -- the inference gateway serving the model returned
  an error status. The message gives that status code and up to 256 bytes of
  its error message, for example `inference gateway: 503 <message>`.
  * `inference gateway (<component>): ` -- the same, when the inference
  gateway reports which of its components produced the error, for example
  `inference gateway (model server): 502 <message>`. The component is one of:
  * `config` -- the inference gateway's configuration and proxy layer.
  * `scheduler` -- the inference gateway's request scheduler.
  * `model selector` -- the inference gateway's model selector.
  * `model server` -- the model server.

  An InternalStreamFailure event's `Message` uses the same prefixes, with the
  same text the buffered operation uses for the same failure. Its
  `inference gateway: ` message carries no status:
  `inference gateway: response ended unexpectedly` when the inference
  gateway's connection failed while it was sending the response.

  Every error status the inference gateway returns before the 200 is a typed
  error, chosen by that status as for InvokeGlobalInferenceGateway:

  * 400 and any other 4xx not listed here -- a 400 validation error.
  * 401 and 403 -- AccessDeniedException (403).
  * 404 -- ResourceNotFoundException.
  * 408 -- GatewayTimeoutException (504).
  * 429 -- ThrottlingException, with the `Retry-After` header.
  * 502, and 500, 503 or any other 5xx not listed here -- BadGatewayException
  (502). A 500 or 503 from the inference gateway comes after the request was
  dispatched, so it is not modeled as retryable, and the gateway may already
  have tried another inference gateway. Standard SDK retry modes may still
  retry a 5xx status; set max attempts to 1 if a repeated inference is
  unacceptable.
  * 504 -- GatewayTimeoutException.</message></component></message></reason>
  """
  @spec invoke_global_inference_gateway_with_response_stream(
          map(),
          String.t() | atom(),
          invoke_global_inference_gateway_with_response_stream_input(),
          list()
        ) ::
          {:ok, invoke_global_inference_gateway_with_response_stream_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, invoke_global_inference_gateway_with_response_stream_errors()}
  def invoke_global_inference_gateway_with_response_stream(
        %Client{} = client,
        gateway_id,
        input,
        options \\ []
      ) do
    url_path =
      "/global-inference-gateway/#{AWS.Util.encode_uri(gateway_id)}/invocations-response-stream"

    {headers, input} =
      [
        {"Accept", "Accept"},
        {"ContentType", "Content-Type"},
        {"CustomerIdentityToken", "X-Amzn-SageMaker-Customer-Identity-Token"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

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
