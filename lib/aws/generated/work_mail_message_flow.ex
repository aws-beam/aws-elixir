# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.WorkMailMessageFlow do
  @moduledoc """
  The WorkMail Message Flow API provides access to email messages as they are
  being
  sent and received by
  a
  WorkMail organization.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      get_raw_message_content_request() :: %{}

  """
  @type get_raw_message_content_request() :: %{}

  @typedoc """

  ## Example:

      get_raw_message_content_response() :: %{
        "messageContent" => binary()
      }

  """
  @type get_raw_message_content_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_content_location() :: %{
        "message" => String.t()
      }

  """
  @type invalid_content_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      message_frozen() :: %{
        "message" => String.t()
      }

  """
  @type message_frozen() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      message_rejected() :: %{
        "message" => String.t()
      }

  """
  @type message_rejected() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_raw_message_content_request() :: %{
        required("content") => raw_message_content()
      }

  """
  @type put_raw_message_content_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_raw_message_content_response() :: %{}

  """
  @type put_raw_message_content_response() :: %{}

  @typedoc """

  ## Example:

      raw_message_content() :: %{
        "s3Reference" => s3_reference()
      }

  """
  @type raw_message_content() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_reference() :: %{
        "bucket" => String.t(),
        "key" => String.t(),
        "objectVersion" => String.t()
      }

  """
  @type s3_reference() :: %{String.t() => any()}

  @type get_raw_message_content_errors() :: resource_not_found_exception()

  @type put_raw_message_content_errors() ::
          resource_not_found_exception()
          | message_rejected()
          | message_frozen()
          | invalid_content_location()

  def metadata do
    %{
      api_version: "2019-05-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "workmailmessageflow",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "WorkMailMessageFlow",
      signature_version: "v4",
      signing_name: "workmailmessageflow",
      target_prefix: nil
    }
  end

  @doc """
  Retrieves the raw content of an in-transit email message, in MIME format.
  """
  @spec get_raw_message_content(map(), String.t(), list()) ::
          {:ok, get_raw_message_content_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_raw_message_content_errors()}
  def get_raw_message_content(%Client{} = client, message_id, options \\ []) do
    url_path = "/messages/#{AWS.Util.encode_uri(message_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Updates the raw content of an in-transit email message, in MIME format.

  This example describes how to update in-transit email message. For more
  information and examples for using this API, see
  [
  Updating message content with AWS
  Lambda](https://docs.aws.amazon.com/workmail/latest/adminguide/update-with-lambda.html).

  Updates to an in-transit message only appear when you call
  `PutRawMessageContent` from an AWS Lambda function
  configured with a synchronous [
  Run
  Lambda](https://docs.aws.amazon.com/workmail/latest/adminguide/lambda.html#synchronous-rules)
  rule. If you call `PutRawMessageContent` on a delivered or sent message, the
  message remains unchanged,
  even though
  [GetRawMessageContent](https://docs.aws.amazon.com/workmail/latest/APIReference/API_messageflow_GetRawMessageContent.html)
  returns an updated
  message.
  """
  @spec put_raw_message_content(map(), String.t(), put_raw_message_content_request(), list()) ::
          {:ok, put_raw_message_content_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_raw_message_content_errors()}
  def put_raw_message_content(%Client{} = client, message_id, input, options \\ []) do
    url_path = "/messages/#{AWS.Util.encode_uri(message_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end
end
