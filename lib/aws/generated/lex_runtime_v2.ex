# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.LexRuntimeV2 do
  @moduledoc """
  This section contains documentation for the Amazon Lex V2 Runtime V2 API
  operations.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      recognized_bot_member() :: %{
        "botId" => String.t() | Atom.t(),
        "botName" => String.t() | Atom.t()
      }

  """
  @type recognized_bot_member() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_session_response() :: %{
        "interpretations" => list(interpretation()),
        "messages" => list(message()),
        "sessionId" => String.t() | Atom.t(),
        "sessionState" => session_state()
      }

  """
  @type get_session_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      put_session_request() :: %{
        optional("messages") => list(message()),
        optional("requestAttributes") => map(),
        optional("responseContentType") => String.t() | Atom.t(),
        required("sessionState") => session_state()
      }

  """
  @type put_session_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      elicit_sub_slot() :: %{
        "name" => String.t() | Atom.t(),
        "subSlotToElicit" => elicit_sub_slot()
      }

  """
  @type elicit_sub_slot() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      recognize_text_request() :: %{
        optional("requestAttributes") => map(),
        optional("sessionState") => session_state(),
        required("text") => String.t() | Atom.t()
      }

  """
  @type recognize_text_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      bad_gateway_exception() :: %{
        "message" => String.t() | Atom.t()
      }

  """
  @type bad_gateway_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      slot() :: %{
        "shape" => list(any()),
        "subSlots" => map(),
        "value" => value(),
        "values" => list(slot())
      }

  """
  @type slot() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      dependency_failed_exception() :: %{
        "message" => String.t() | Atom.t()
      }

  """
  @type dependency_failed_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      d_t_m_f_input_event() :: %{
        "clientTimestampMillis" => float(),
        "eventId" => String.t() | Atom.t(),
        "inputCharacter" => String.t() | Atom.t()
      }

  """
  @type d_t_m_f_input_event() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      recognize_utterance_request() :: %{
        optional("inputStream") => binary(),
        optional("requestAttributes") => String.t() | Atom.t(),
        optional("responseContentType") => String.t() | Atom.t(),
        optional("sessionState") => String.t() | Atom.t(),
        required("requestContentType") => String.t() | Atom.t()
      }

  """
  @type recognize_utterance_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      value() :: %{
        "interpretedValue" => String.t() | Atom.t(),
        "originalValue" => String.t() | Atom.t(),
        "resolvedValues" => list(String.t() | Atom.t())
      }

  """
  @type value() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      sentiment_response() :: %{
        "sentiment" => list(any()),
        "sentimentScore" => sentiment_score()
      }

  """
  @type sentiment_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      active_context_time_to_live() :: %{
        "timeToLiveInSeconds" => integer(),
        "turnsToLive" => integer()
      }

  """
  @type active_context_time_to_live() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      text_input_event() :: %{
        "clientTimestampMillis" => float(),
        "eventId" => String.t() | Atom.t(),
        "text" => String.t() | Atom.t()
      }

  """
  @type text_input_event() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      image_response_card() :: %{
        "buttons" => list(button()),
        "imageUrl" => String.t() | Atom.t(),
        "subtitle" => String.t() | Atom.t(),
        "title" => String.t() | Atom.t()
      }

  """
  @type image_response_card() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_session_request() :: %{}

  """
  @type get_session_request() :: %{}

  @typedoc """

  ## Example:

      put_session_response() :: %{
        "audioStream" => binary(),
        "contentType" => String.t() | Atom.t(),
        "messages" => String.t() | Atom.t(),
        "requestAttributes" => String.t() | Atom.t(),
        "sessionId" => String.t() | Atom.t(),
        "sessionState" => String.t() | Atom.t()
      }

  """
  @type put_session_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      intent() :: %{
        "confirmationState" => list(any()),
        "name" => String.t() | Atom.t(),
        "slots" => map(),
        "state" => list(any())
      }

  """
  @type intent() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => String.t() | Atom.t()
      }

  """
  @type conflict_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => String.t() | Atom.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      sentiment_score() :: %{
        "mixed" => float(),
        "negative" => float(),
        "neutral" => float(),
        "positive" => float()
      }

  """
  @type sentiment_score() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      intent_result_event() :: %{
        "eventId" => String.t() | Atom.t(),
        "inputMode" => list(any()),
        "interpretations" => list(interpretation()),
        "recognizedBotMember" => recognized_bot_member(),
        "requestAttributes" => map(),
        "sessionId" => String.t() | Atom.t(),
        "sessionState" => session_state()
      }

  """
  @type intent_result_event() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_session_response() :: %{
        "botAliasId" => String.t() | Atom.t(),
        "botId" => String.t() | Atom.t(),
        "localeId" => String.t() | Atom.t(),
        "sessionId" => String.t() | Atom.t()
      }

  """
  @type delete_session_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      text_response_event() :: %{
        "eventId" => String.t() | Atom.t(),
        "messages" => list(message())
      }

  """
  @type text_response_event() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      active_context() :: %{
        "contextAttributes" => map(),
        "name" => String.t() | Atom.t(),
        "timeToLive" => active_context_time_to_live()
      }

  """
  @type active_context() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      confidence_score() :: %{
        "score" => float()
      }

  """
  @type confidence_score() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      disconnection_event() :: %{
        "clientTimestampMillis" => float(),
        "eventId" => String.t() | Atom.t()
      }

  """
  @type disconnection_event() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      session_state() :: %{
        "activeContexts" => list(active_context()),
        "dialogAction" => dialog_action(),
        "intent" => intent(),
        "originatingRequestId" => String.t() | Atom.t(),
        "runtimeHints" => runtime_hints(),
        "sessionAttributes" => map()
      }

  """
  @type session_state() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      recognize_text_response() :: %{
        "interpretations" => list(interpretation()),
        "messages" => list(message()),
        "recognizedBotMember" => recognized_bot_member(),
        "requestAttributes" => map(),
        "sessionId" => String.t() | Atom.t(),
        "sessionState" => session_state()
      }

  """
  @type recognize_text_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      audio_response_event() :: %{
        "audioChunk" => binary(),
        "contentType" => String.t() | Atom.t(),
        "eventId" => String.t() | Atom.t()
      }

  """
  @type audio_response_event() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      runtime_hint_value() :: %{
        "phrase" => String.t() | Atom.t()
      }

  """
  @type runtime_hint_value() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      start_conversation_request() :: %{
        optional("conversationMode") => list(any()),
        required("requestEventStream") => list()
      }

  """
  @type start_conversation_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      recognize_utterance_response() :: %{
        "audioStream" => binary(),
        "contentType" => String.t() | Atom.t(),
        "inputMode" => String.t() | Atom.t(),
        "inputTranscript" => String.t() | Atom.t(),
        "interpretations" => String.t() | Atom.t(),
        "messages" => String.t() | Atom.t(),
        "recognizedBotMember" => String.t() | Atom.t(),
        "requestAttributes" => String.t() | Atom.t(),
        "sessionId" => String.t() | Atom.t(),
        "sessionState" => String.t() | Atom.t()
      }

  """
  @type recognize_utterance_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => String.t() | Atom.t()
      }

  """
  @type internal_server_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => String.t() | Atom.t()
      }

  """
  @type access_denied_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      configuration_event() :: %{
        "clientTimestampMillis" => float(),
        "disablePlayback" => boolean(),
        "eventId" => String.t() | Atom.t(),
        "requestAttributes" => map(),
        "responseContentType" => String.t() | Atom.t(),
        "sessionState" => session_state(),
        "welcomeMessages" => list(message())
      }

  """
  @type configuration_event() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      playback_interruption_event() :: %{
        "causedByEventId" => String.t() | Atom.t(),
        "eventId" => String.t() | Atom.t(),
        "eventReason" => list(any())
      }

  """
  @type playback_interruption_event() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      runtime_hints() :: %{
        "slotHints" => map()
      }

  """
  @type runtime_hints() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => String.t() | Atom.t()
      }

  """
  @type validation_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      playback_completion_event() :: %{
        "clientTimestampMillis" => float(),
        "eventId" => String.t() | Atom.t()
      }

  """
  @type playback_completion_event() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      heartbeat_event() :: %{
        "eventId" => String.t() | Atom.t()
      }

  """
  @type heartbeat_event() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => String.t() | Atom.t()
      }

  """
  @type throttling_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      start_conversation_response() :: %{
        "responseEventStream" => list()
      }

  """
  @type start_conversation_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      button() :: %{
        "text" => String.t() | Atom.t(),
        "value" => String.t() | Atom.t()
      }

  """
  @type button() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      dialog_action() :: %{
        "slotElicitationStyle" => list(any()),
        "slotToElicit" => String.t() | Atom.t(),
        "subSlotToElicit" => elicit_sub_slot(),
        "type" => list(any())
      }

  """
  @type dialog_action() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      runtime_hint_details() :: %{
        "runtimeHintValues" => list(runtime_hint_value()),
        "subSlotHints" => map()
      }

  """
  @type runtime_hint_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      transcript_event() :: %{
        "eventId" => String.t() | Atom.t(),
        "transcript" => String.t() | Atom.t()
      }

  """
  @type transcript_event() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_session_request() :: %{}

  """
  @type delete_session_request() :: %{}

  @typedoc """

  ## Example:

      interpretation() :: %{
        "intent" => intent(),
        "interpretationSource" => list(any()),
        "nluConfidence" => confidence_score(),
        "sentimentResponse" => sentiment_response()
      }

  """
  @type interpretation() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      audio_input_event() :: %{
        "audioChunk" => binary(),
        "clientTimestampMillis" => float(),
        "contentType" => String.t() | Atom.t(),
        "eventId" => String.t() | Atom.t()
      }

  """
  @type audio_input_event() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      message() :: %{
        "content" => String.t() | Atom.t(),
        "contentType" => list(any()),
        "imageResponseCard" => image_response_card()
      }

  """
  @type message() :: %{String.t() | Atom.t() => any()}

  @type delete_session_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_session_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type put_session_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | dependency_failed_exception()
          | bad_gateway_exception()

  @type recognize_text_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | dependency_failed_exception()
          | bad_gateway_exception()

  @type recognize_utterance_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | dependency_failed_exception()
          | bad_gateway_exception()

  @type start_conversation_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  def metadata do
    %{
      api_version: "2020-08-07",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "runtime-v2-lex",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Lex Runtime V2",
      signature_version: "v4",
      signing_name: "lex",
      target_prefix: nil
    }
  end

  @doc """
  Removes session information for a specified bot, alias, and user ID.

  You can use this operation to restart a conversation with a bot.
  When you remove a session, the entire history of the session is removed
  so that you can start again.

  You don't need to delete a session. Sessions have a time limit and
  will expire. Set the session time limit when you create the bot. The
  default is 5 minutes, but you can specify anything between 1 minute and
  24 hours.

  If you specify a bot or alias ID that doesn't exist, you receive a
  `BadRequestException.`

  If the locale doesn't exist in the bot, or if the locale hasn't been
  enables for the alias, you receive a
  `BadRequestException`.
  """
  @spec delete_session(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          delete_session_request(),
          list()
        ) ::
          {:ok, delete_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_session_errors()}
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
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botAliases/#{AWS.Util.encode_uri(bot_alias_id)}/botLocales/#{AWS.Util.encode_uri(locale_id)}/sessions/#{AWS.Util.encode_uri(session_id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Returns session information for a specified bot, alias, and
  user.

  For example, you can use this operation to retrieve session
  information for a user that has left a long-running session in
  use.

  If the bot, alias, or session identifier doesn't exist, Amazon Lex V2
  returns a `BadRequestException`. If the locale doesn't exist
  or is not enabled for the alias, you receive a
  `BadRequestException`.
  """
  @spec get_session(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          list()
        ) ::
          {:ok, get_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_session_errors()}
  def get_session(%Client{} = client, bot_alias_id, bot_id, locale_id, session_id, options \\ []) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botAliases/#{AWS.Util.encode_uri(bot_alias_id)}/botLocales/#{AWS.Util.encode_uri(locale_id)}/sessions/#{AWS.Util.encode_uri(session_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Creates a new session or modifies an existing session with an Amazon Lex V2
  bot.

  Use this operation to enable your application to set the state of
  the bot.
  """
  @spec put_session(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          put_session_request(),
          list()
        ) ::
          {:ok, put_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_session_errors()}
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
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botAliases/#{AWS.Util.encode_uri(bot_alias_id)}/botLocales/#{AWS.Util.encode_uri(locale_id)}/sessions/#{AWS.Util.encode_uri(session_id)}"

    {headers, input} =
      [
        {"responseContentType", "ResponseContentType"}
      ]
      |> Request.build_params(input)

    custom_headers = []
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
  Sends user input to Amazon Lex V2.

  Client applications use this API to send
  requests to Amazon Lex V2 at runtime. Amazon Lex V2 then interprets the user
  input
  using the machine learning model that it build for the bot.

  In response, Amazon Lex V2 returns the next message to convey to the user
  and an optional response card to display.

  If the optional post-fulfillment response is specified, the messages
  are returned as follows. For more information, see
  [PostFulfillmentStatusSpecification](https://docs.aws.amazon.com/lexv2/latest/dg/API_PostFulfillmentStatusSpecification.html). 
    *

  **Success message** - Returned if
  the Lambda function completes successfully and the intent state is
  fulfilled or ready fulfillment if the message is present.

    *

  **Failed message** - The failed
  message is returned if the Lambda function throws an exception or
  if the Lambda function returns a failed intent state without a
  message.

    *

  **Timeout message** - If you
  don't configure a timeout message and a timeout, and the Lambda
  function doesn't return within 30 seconds, the timeout message is
  returned. If you configure a timeout, the timeout message is
  returned when the period times out.

  For more information, see [Completion
  message](https://docs.aws.amazon.com/lexv2/latest/dg/streaming-progress.html#progress-complete.html).
  """
  @spec recognize_text(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          recognize_text_request(),
          list()
        ) ::
          {:ok, recognize_text_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, recognize_text_errors()}
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
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botAliases/#{AWS.Util.encode_uri(bot_alias_id)}/botLocales/#{AWS.Util.encode_uri(locale_id)}/sessions/#{AWS.Util.encode_uri(session_id)}/text"

    headers = []
    custom_headers = []
    query_params = []

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
  Sends user input to Amazon Lex V2.

  You can send text or speech. Clients use
  this API to send text and audio requests to Amazon Lex V2 at runtime. Amazon Lex
  V2
  interprets the user input using the machine learning model built for
  the bot.

  The following request fields must be compressed with gzip and then
  base64 encoded before you send them to Amazon Lex V2.

    *
  requestAttributes

    *
  sessionState

  The following response fields are compressed using gzip and then
  base64 encoded by Amazon Lex V2. Before you can use these fields, you must
  decode and decompress them.

    *
  inputTranscript

    *
  interpretations

    *
  messages

    *
  requestAttributes

    *
  sessionState

  The example contains a Java application that compresses and encodes
  a Java object to send to Amazon Lex V2, and a second that decodes and
  decompresses a response from Amazon Lex V2.

  If the optional post-fulfillment response is specified, the messages
  are returned as follows. For more information, see
  [PostFulfillmentStatusSpecification](https://docs.aws.amazon.com/lexv2/latest/dg/API_PostFulfillmentStatusSpecification.html). 
    *

  **Success message** - Returned if
  the Lambda function completes successfully and the intent state is
  fulfilled or ready fulfillment if the message is present.

    *

  **Failed message** - The failed
  message is returned if the Lambda function throws an exception or
  if the Lambda function returns a failed intent state without a
  message.

    *

  **Timeout message** - If you
  don't configure a timeout message and a timeout, and the Lambda
  function doesn't return within 30 seconds, the timeout message is
  returned. If you configure a timeout, the timeout message is
  returned when the period times out.

  For more information, see [Completion
  message](https://docs.aws.amazon.com/lexv2/latest/dg/streaming-progress.html#progress-complete.html).
  """
  @spec recognize_utterance(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          recognize_utterance_request(),
          list()
        ) ::
          {:ok, recognize_utterance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, recognize_utterance_errors()}
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
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botAliases/#{AWS.Util.encode_uri(bot_alias_id)}/botLocales/#{AWS.Util.encode_uri(locale_id)}/sessions/#{AWS.Util.encode_uri(session_id)}/utterance"

    {headers, input} =
      [
        {"requestAttributes", "x-amz-lex-request-attributes"},
        {"requestContentType", "Content-Type"},
        {"responseContentType", "Response-Content-Type"},
        {"sessionState", "x-amz-lex-session-state"}
      ]
      |> Request.build_params(input)

    custom_headers = []
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
          {"x-amz-lex-recognized-bot-member", "recognizedBotMember"},
          {"x-amz-lex-request-attributes", "requestAttributes"},
          {"x-amz-lex-session-id", "sessionId"},
          {"x-amz-lex-session-state", "sessionState"}
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
      200
    )
  end

  @doc """
  Starts an HTTP/2 bidirectional event stream that enables you to send
  audio, text, or DTMF input in real time.

  After your application starts
  a conversation, users send input to Amazon Lex V2 as a stream of events. Amazon
  Lex V2
  processes the incoming events and responds with streaming text or audio
  events.

  Audio input must be in the following format:

  ```
  audio/lpcm
  sample-rate=8000 sample-size-bits=16 channel-count=1;
  is-big-endian=false
  ```

  .

  If the optional post-fulfillment response is specified, the messages
  are returned as follows. For more information, see
  [PostFulfillmentStatusSpecification](https://docs.aws.amazon.com/lexv2/latest/dg/API_PostFulfillmentStatusSpecification.html). 
    *

  **Success message** - Returned if
  the Lambda function completes successfully and the intent state is
  fulfilled or ready fulfillment if the message is present.

    *

  **Failed message** - The failed
  message is returned if the Lambda function throws an exception or
  if the Lambda function returns a failed intent state without a
  message.

    *

  **Timeout message** - If you
  don't configure a timeout message and a timeout, and the Lambda
  function doesn't return within 30 seconds, the timeout message is
  returned. If you configure a timeout, the timeout message is
  returned when the period times out.

  For more information, see [Completion
  message](https://docs.aws.amazon.com/lexv2/latest/dg/streaming-progress.html#progress-complete.html).

  If the optional update message is configured, it is played at the
  specified frequency while the Lambda function is running and the update
  message state is active. If the fulfillment update message is not
  active, the Lambda function runs with a 30 second timeout.

  For more information, see [Update message
  ](https://docs.aws.amazon.com/lexv2/latest/dg/streaming-progress.html#progress-update.html)

  The `StartConversation` operation is supported only in
  the following SDKs:

    *

  [AWS SDK for C++](https://docs.aws.amazon.com/goto/SdkForCpp/runtime.lex.v2-2020-08-07/StartConversation)

    *

  [AWS SDK for Java V2](https://docs.aws.amazon.com/goto/SdkForJavaV2/runtime.lex.v2-2020-08-07/StartConversation)

    *

  [AWS SDK for Ruby V3](https://docs.aws.amazon.com/goto/SdkForRubyV3/runtime.lex.v2-2020-08-07/StartConversation)
  """
  @spec start_conversation(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          start_conversation_request(),
          list()
        ) ::
          {:ok, start_conversation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_conversation_errors()}
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
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botAliases/#{AWS.Util.encode_uri(bot_alias_id)}/botLocales/#{AWS.Util.encode_uri(locale_id)}/sessions/#{AWS.Util.encode_uri(session_id)}/conversation"

    {headers, input} =
      [
        {"conversationMode", "x-amz-lex-conversation-mode"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

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
