# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.LexRuntimeV2 do
  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2020-08-07",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "runtime-v2-lex",
      global?: false,
      protocol: "rest-json",
      service_id: "Lex Runtime V2",
      signature_version: "v4",
      signing_name: "lex",
      target_prefix: nil
    }
  end

  @doc """
  Removes session information for a specified bot, alias, and user ID.

  You can use this operation to restart a conversation with a bot. When you remove
  a session, the entire history of the session is removed so that you can start
  again.

  You don't need to delete a session. Sessions have a time limit and will expire.
  Set the session time limit when you create the bot. The default is 5 minutes,
  but you can specify anything between 1 minute and 24 hours.

  If you specify a bot or alias ID that doesn't exist, you receive a
  `BadRequestException.`

  If the locale doesn't exist in the bot, or if the locale hasn't been enables for
  the alias, you receive a `BadRequestException`.
  """
  def delete_session(
        %Client{} = client,
        bot_alias_id,
        bot_id,
        locale_id,
        session_id,
        input,
        options \\ []
      ) do
    url_path =
      "/bots/#{URI.encode(bot_id)}/botAliases/#{URI.encode(bot_alias_id)}/botLocales/#{
        URI.encode(locale_id)
      }/sessions/#{URI.encode(session_id)}"

    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Returns session information for a specified bot, alias, and user.

  For example, you can use this operation to retrieve session information for a
  user that has left a long-running session in use.

  If the bot, alias, or session identifier doesn't exist, Amazon Lex returns a
  `BadRequestException`. If the locale doesn't exist or is not enabled for the
  alias, you receive a `BadRequestException`.
  """
  def get_session(%Client{} = client, bot_alias_id, bot_id, locale_id, session_id, options \\ []) do
    url_path =
      "/bots/#{URI.encode(bot_id)}/botAliases/#{URI.encode(bot_alias_id)}/botLocales/#{
        URI.encode(locale_id)
      }/sessions/#{URI.encode(session_id)}"

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
  Creates a new session or modifies an existing session with an Amazon Lex bot.

  Use this operation to enable your application to set the state of the bot.
  """
  def put_session(
        %Client{} = client,
        bot_alias_id,
        bot_id,
        locale_id,
        session_id,
        input,
        options \\ []
      ) do
    url_path =
      "/bots/#{URI.encode(bot_id)}/botAliases/#{URI.encode(bot_alias_id)}/botLocales/#{
        URI.encode(locale_id)
      }/sessions/#{URI.encode(session_id)}"

    {headers, input} =
      [
        {"responseContentType", "ResponseContentType"}
      ]
      |> Request.build_params(input)

    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"Content-Type", "contentType"},
          {"x-amz-lex-messages", "messages"},
          {"x-amz-lex-request-attributes", "requestAttributes"},
          {"x-amz-lex-session-id", "sessionId"},
          {"x-amz-lex-session-state", "sessionState"}
        ]
      )

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

  @doc """
  Sends user input to Amazon Lex.

  Client applications use this API to send requests to Amazon Lex at runtime.
  Amazon Lex then interprets the user input using the machine learning model that
  it build for the bot.

  In response, Amazon Lex returns the next message to convey to the user and an
  optional response card to display.
  """
  def recognize_text(
        %Client{} = client,
        bot_alias_id,
        bot_id,
        locale_id,
        session_id,
        input,
        options \\ []
      ) do
    url_path =
      "/bots/#{URI.encode(bot_id)}/botAliases/#{URI.encode(bot_alias_id)}/botLocales/#{
        URI.encode(locale_id)
      }/sessions/#{URI.encode(session_id)}/text"

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

  @doc """
  Sends user input to Amazon Lex.

  You can send text or speech. Clients use this API to send text and audio
  requests to Amazon Lex at runtime. Amazon Lex interprets the user input using
  the machine learning model built for the bot.
  """
  def recognize_utterance(
        %Client{} = client,
        bot_alias_id,
        bot_id,
        locale_id,
        session_id,
        input,
        options \\ []
      ) do
    url_path =
      "/bots/#{URI.encode(bot_id)}/botAliases/#{URI.encode(bot_alias_id)}/botLocales/#{
        URI.encode(locale_id)
      }/sessions/#{URI.encode(session_id)}/utterance"

    {headers, input} =
      [
        {"requestAttributes", "x-amz-lex-request-attributes"},
        {"requestContentType", "Content-Type"},
        {"responseContentType", "Response-Content-Type"},
        {"sessionState", "x-amz-lex-session-state"}
      ]
      |> Request.build_params(input)

    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"Content-Type", "contentType"},
          {"x-amz-lex-input-mode", "inputMode"},
          {"x-amz-lex-input-transcript", "inputTranscript"},
          {"x-amz-lex-interpretations", "interpretations"},
          {"x-amz-lex-messages", "messages"},
          {"x-amz-lex-request-attributes", "requestAttributes"},
          {"x-amz-lex-session-id", "sessionId"},
          {"x-amz-lex-session-state", "sessionState"}
        ]
      )

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

  @doc """
  Starts an HTTP/2 bidirectional event stream that enables you to send audio,
  text, or DTMF input in real time.

  After your application starts a conversation, users send input to Amazon Lex as
  a stream of events. Amazon Lex processes the incoming events and responds with
  streaming text or audio events.
  """
  def start_conversation(
        %Client{} = client,
        bot_alias_id,
        bot_id,
        locale_id,
        session_id,
        input,
        options \\ []
      ) do
    url_path =
      "/bots/#{URI.encode(bot_id)}/botAliases/#{URI.encode(bot_alias_id)}/botLocales/#{
        URI.encode(locale_id)
      }/sessions/#{URI.encode(session_id)}/conversation"

    {headers, input} =
      [
        {"conversationMode", "x-amz-lex-conversation-mode"}
      ]
      |> Request.build_params(input)

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