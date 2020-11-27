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
end