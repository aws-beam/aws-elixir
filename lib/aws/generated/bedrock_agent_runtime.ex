# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.BedrockAgentRuntime do
  @moduledoc """
  Amazon Bedrock Agent
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2023-07-26",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "bedrock-agent-runtime",
      global?: false,
      protocol: "rest-json",
      service_id: "Bedrock Agent Runtime",
      signature_version: "v4",
      signing_name: "bedrock",
      target_prefix: nil
    }
  end

  @doc """
  Invokes the specified Bedrock model to run inference using the input provided in
  the request body.
  """
  def invoke_agent(%Client{} = client, agent_alias_id, agent_id, session_id, input, options \\ []) do
    url_path =
      "/agents/#{AWS.Util.encode_uri(agent_id)}/agentAliases/#{AWS.Util.encode_uri(agent_alias_id)}/sessions/#{AWS.Util.encode_uri(session_id)}/text"

    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"x-amzn-bedrock-agent-content-type", "contentType"},
          {"x-amz-bedrock-agent-session-id", "sessionId"}
        ]
      )

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

  @doc """
  Retrieve from knowledge base.
  """
  def retrieve(%Client{} = client, knowledge_base_id, input, options \\ []) do
    url_path = "/knowledgebases/#{AWS.Util.encode_uri(knowledge_base_id)}/retrieve"
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

  @doc """
  RetrieveAndGenerate API
  """
  def retrieve_and_generate(%Client{} = client, input, options \\ []) do
    url_path = "/retrieveAndGenerate"
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
