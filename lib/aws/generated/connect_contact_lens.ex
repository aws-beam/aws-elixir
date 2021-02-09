# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ConnectContactLens do
  @moduledoc """
  Contact Lens for Amazon Connect enables you to analyze conversations between
  customer and agents, by using speech transcription, natural language processing,
  and intelligent search capabilities.

  It performs sentiment analysis, detects issues, and enables you to automatically
  categorize contacts.

  Contact Lens for Amazon Connect provides both real-time and post-call analytics
  of customer-agent conversations. For more information, see [Analyze conversations using Contact
  Lens](https://docs.aws.amazon.com/connect/latest/adminguide/analyze-conversations.html)
  in the *Amazon Connect Administrator Guide*.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2020-08-21",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "contact-lens",
      global?: false,
      protocol: "rest-json",
      service_id: "Connect Contact Lens",
      signature_version: "v4",
      signing_name: "connect",
      target_prefix: nil
    }
  end

  @doc """
  Provides a list of analysis segments for a real-time analysis session.
  """
  def list_realtime_contact_analysis_segments(%Client{} = client, input, options \\ []) do
    url_path = "/realtime-contact-analysis/analysis-segments"
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