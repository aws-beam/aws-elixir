# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.BedrockAgentRuntime do
  @moduledoc """
  Contains APIs related to model invocation and querying of knowledge bases.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
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
  Sends a prompt for the agent to process and respond to.

  The CLI doesn't support `InvokeAgent`.

    *
  To continue the same conversation with an agent, use the same `sessionId` value
  in the request.

    *
  To activate trace enablement, turn `enableTrace` to `true`. Trace enablement
  helps you follow the agent's reasoning process that led it to the information it
  processed, the actions it took, and the final result it yielded. For more
  information, see [Trace enablement](https://docs.aws.amazon.com/bedrock/latest/userguide/agents-test.html#trace-events).

    *
  End a conversation by setting `endSession` to `true`.

    *
  Include attributes for the session or prompt in the `sessionState` object.

  The response is returned in the `bytes` field of the `chunk` object.

    *
  The `attribution` object contains citations for parts of the response.

    *
  If you set `enableTrace` to `true` in the request, you can trace the agent's
  steps and reasoning process that led it to the response.

    *
  Errors are also surfaced in the response.
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
  Queries a knowledge base and retrieves information from it.
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
  Queries a knowledge base and generates responses based on the retrieved results.

  The response cites up to five sources but only selects the ones that are
  relevant to the query.
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
