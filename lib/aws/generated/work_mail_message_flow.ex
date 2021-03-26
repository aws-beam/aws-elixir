# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.WorkMailMessageFlow do
  @moduledoc """
  The WorkMail Message Flow API provides access to email messages as they are
  being sent and received by a WorkMail organization.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2019-05-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "workmailmessageflow",
      global?: false,
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
  def get_raw_message_content(%Client{} = client, message_id, options \\ []) do
    url_path = "/messages/#{URI.encode(message_id)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Updates the raw content of an in-transit email message, in MIME format.

  This example describes how to update in-transit email message. For more
  information and examples for using this API, see [ Updating message content with AWS
  Lambda](https://docs.aws.amazon.com/workmail/latest/adminguide/update-with-lambda.html).

  Updates to an in-transit message only appear when you call
  `PutRawMessageContent` from an AWS Lambda function configured with a synchronous
  [ Run Lambda](https://docs.aws.amazon.com/workmail/latest/adminguide/lambda.html#synchronous-rules)
  rule. If you call `PutRawMessageContent` on a delivered or sent message, the
  message remains unchanged, even though
  [GetRawMessageContent](https://docs.aws.amazon.com/workmail/latest/APIReference/API_messageflow_GetRawMessageContent.html)
  returns an updated message.
  """
  def put_raw_message_content(%Client{} = client, message_id, input, options \\ []) do
    url_path = "/messages/#{URI.encode(message_id)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end
end