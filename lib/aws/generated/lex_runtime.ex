# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.LexRuntime do
  @moduledoc """
  Amazon Lex provides both build and runtime endpoints.

  Each endpoint
  provides a set of operations (API). Your conversational bot uses the
  runtime API to understand user utterances (user input text or voice). For
  example, suppose a user says "I want pizza", your bot sends this input to
  Amazon Lex using the runtime API. Amazon Lex recognizes that the user
  request is for the OrderPizza intent (one of the intents defined in the
  bot). Then Amazon Lex engages in user conversation on behalf of the bot to
  elicit required information (slot values, such as pizza size and crust
  type), and then performs fulfillment activity (that you configured when
  you created the bot). You use the build-time API to create and manage your
  Amazon Lex bot. For a list of build-time operations, see the build-time
  API, .
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      active_context() :: %{
        "name" => String.t(),
        "parameters" => map(),
        "timeToLive" => active_context_time_to_live()
      }

  """
  @type active_context() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      active_context_time_to_live() :: %{
        "timeToLiveInSeconds" => integer(),
        "turnsToLive" => integer()
      }

  """
  @type active_context_time_to_live() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      bad_gateway_exception() :: %{
        "Message" => String.t()
      }

  """
  @type bad_gateway_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      bad_request_exception() :: %{
        "message" => String.t()
      }

  """
  @type bad_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      button() :: %{
        "text" => String.t(),
        "value" => String.t()
      }

  """
  @type button() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => String.t()
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_session_request() :: %{}

  """
  @type delete_session_request() :: %{}

  @typedoc """

  ## Example:

      delete_session_response() :: %{
        "botAlias" => String.t(),
        "botName" => String.t(),
        "sessionId" => String.t(),
        "userId" => String.t()
      }

  """
  @type delete_session_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dependency_failed_exception() :: %{
        "Message" => String.t()
      }

  """
  @type dependency_failed_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dialog_action() :: %{
        "fulfillmentState" => list(any()),
        "intentName" => String.t(),
        "message" => String.t(),
        "messageFormat" => list(any()),
        "slotToElicit" => String.t(),
        "slots" => map(),
        "type" => list(any())
      }

  """
  @type dialog_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      generic_attachment() :: %{
        "attachmentLinkUrl" => String.t(),
        "buttons" => list(button()()),
        "imageUrl" => String.t(),
        "subTitle" => String.t(),
        "title" => String.t()
      }

  """
  @type generic_attachment() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_session_request() :: %{
        optional("checkpointLabelFilter") => String.t()
      }

  """
  @type get_session_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_session_response() :: %{
        "activeContexts" => list(active_context()()),
        "dialogAction" => dialog_action(),
        "recentIntentSummaryView" => list(intent_summary()()),
        "sessionAttributes" => map(),
        "sessionId" => String.t()
      }

  """
  @type get_session_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      intent_confidence() :: %{
        "score" => float()
      }

  """
  @type intent_confidence() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      intent_summary() :: %{
        "checkpointLabel" => String.t(),
        "confirmationStatus" => list(any()),
        "dialogActionType" => list(any()),
        "fulfillmentState" => list(any()),
        "intentName" => String.t(),
        "slotToElicit" => String.t(),
        "slots" => map()
      }

  """
  @type intent_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_failure_exception() :: %{
        "message" => String.t()
      }

  """
  @type internal_failure_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      limit_exceeded_exception() :: %{
        "message" => String.t(),
        "retryAfterSeconds" => String.t()
      }

  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      loop_detected_exception() :: %{
        "Message" => String.t()
      }

  """
  @type loop_detected_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      not_acceptable_exception() :: %{
        "message" => String.t()
      }

  """
  @type not_acceptable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      not_found_exception() :: %{
        "message" => String.t()
      }

  """
  @type not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      post_content_request() :: %{
        optional("accept") => String.t(),
        optional("activeContexts") => String.t(),
        optional("requestAttributes") => String.t(),
        optional("sessionAttributes") => String.t(),
        required("contentType") => String.t(),
        required("inputStream") => binary()
      }

  """
  @type post_content_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      post_content_response() :: %{
        "activeContexts" => String.t(),
        "alternativeIntents" => String.t(),
        "audioStream" => binary(),
        "botVersion" => String.t(),
        "contentType" => String.t(),
        "dialogState" => list(any()),
        "encodedInputTranscript" => String.t(),
        "encodedMessage" => String.t(),
        "inputTranscript" => String.t(),
        "intentName" => String.t(),
        "message" => String.t(),
        "messageFormat" => list(any()),
        "nluIntentConfidence" => String.t(),
        "sentimentResponse" => String.t(),
        "sessionAttributes" => String.t(),
        "sessionId" => String.t(),
        "slotToElicit" => String.t(),
        "slots" => String.t()
      }

  """
  @type post_content_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      post_text_request() :: %{
        optional("activeContexts") => list(active_context()()),
        optional("requestAttributes") => map(),
        optional("sessionAttributes") => map(),
        required("inputText") => String.t()
      }

  """
  @type post_text_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      post_text_response() :: %{
        "activeContexts" => list(active_context()()),
        "alternativeIntents" => list(predicted_intent()()),
        "botVersion" => String.t(),
        "dialogState" => list(any()),
        "intentName" => String.t(),
        "message" => String.t(),
        "messageFormat" => list(any()),
        "nluIntentConfidence" => intent_confidence(),
        "responseCard" => response_card(),
        "sentimentResponse" => sentiment_response(),
        "sessionAttributes" => map(),
        "sessionId" => String.t(),
        "slotToElicit" => String.t(),
        "slots" => map()
      }

  """
  @type post_text_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      predicted_intent() :: %{
        "intentName" => String.t(),
        "nluIntentConfidence" => intent_confidence(),
        "slots" => map()
      }

  """
  @type predicted_intent() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_session_request() :: %{
        optional("accept") => String.t(),
        optional("activeContexts") => list(active_context()()),
        optional("dialogAction") => dialog_action(),
        optional("recentIntentSummaryView") => list(intent_summary()()),
        optional("sessionAttributes") => map()
      }

  """
  @type put_session_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_session_response() :: %{
        "activeContexts" => String.t(),
        "audioStream" => binary(),
        "contentType" => String.t(),
        "dialogState" => list(any()),
        "encodedMessage" => String.t(),
        "intentName" => String.t(),
        "message" => String.t(),
        "messageFormat" => list(any()),
        "sessionAttributes" => String.t(),
        "sessionId" => String.t(),
        "slotToElicit" => String.t(),
        "slots" => String.t()
      }

  """
  @type put_session_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      request_timeout_exception() :: %{
        "message" => String.t()
      }

  """
  @type request_timeout_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      response_card() :: %{
        "contentType" => list(any()),
        "genericAttachments" => list(generic_attachment()()),
        "version" => String.t()
      }

  """
  @type response_card() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sentiment_response() :: %{
        "sentimentLabel" => String.t(),
        "sentimentScore" => String.t()
      }

  """
  @type sentiment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      unsupported_media_type_exception() :: %{
        "message" => String.t()
      }

  """
  @type unsupported_media_type_exception() :: %{String.t() => any()}

  @type delete_session_errors() ::
          not_found_exception()
          | limit_exceeded_exception()
          | internal_failure_exception()
          | conflict_exception()
          | bad_request_exception()

  @type get_session_errors() ::
          not_found_exception()
          | limit_exceeded_exception()
          | internal_failure_exception()
          | bad_request_exception()

  @type post_content_errors() ::
          unsupported_media_type_exception()
          | request_timeout_exception()
          | not_found_exception()
          | not_acceptable_exception()
          | loop_detected_exception()
          | limit_exceeded_exception()
          | internal_failure_exception()
          | dependency_failed_exception()
          | conflict_exception()
          | bad_request_exception()
          | bad_gateway_exception()

  @type post_text_errors() ::
          not_found_exception()
          | loop_detected_exception()
          | limit_exceeded_exception()
          | internal_failure_exception()
          | dependency_failed_exception()
          | conflict_exception()
          | bad_request_exception()
          | bad_gateway_exception()

  @type put_session_errors() ::
          not_found_exception()
          | not_acceptable_exception()
          | limit_exceeded_exception()
          | internal_failure_exception()
          | dependency_failed_exception()
          | conflict_exception()
          | bad_request_exception()
          | bad_gateway_exception()

  def metadata do
    %{
      api_version: "2016-11-28",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "runtime.lex",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Lex Runtime Service",
      signature_version: "v4",
      signing_name: "lex",
      target_prefix: nil
    }
  end

  @doc """
  Removes session information for a specified bot, alias, and user ID.
  """
  @spec delete_session(
          map(),
          String.t(),
          String.t(),
          String.t(),
          delete_session_request(),
          list()
        ) ::
          {:ok, delete_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_session_errors()}
  def delete_session(%Client{} = client, bot_alias, bot_name, user_id, input, options \\ []) do
    url_path =
      "/bot/#{AWS.Util.encode_uri(bot_name)}/alias/#{AWS.Util.encode_uri(bot_alias)}/user/#{AWS.Util.encode_uri(user_id)}/session"

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
  Returns session information for a specified bot, alias, and user
  ID.
  """
  @spec get_session(map(), String.t(), String.t(), String.t(), String.t() | nil, list()) ::
          {:ok, get_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_session_errors()}
  def get_session(
        %Client{} = client,
        bot_alias,
        bot_name,
        user_id,
        checkpoint_label_filter \\ nil,
        options \\ []
      ) do
    url_path =
      "/bot/#{AWS.Util.encode_uri(bot_name)}/alias/#{AWS.Util.encode_uri(bot_alias)}/user/#{AWS.Util.encode_uri(user_id)}/session"

    headers = []
    query_params = []

    query_params =
      if !is_nil(checkpoint_label_filter) do
        [{"checkpointLabelFilter", checkpoint_label_filter} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Sends user input (text or speech) to Amazon Lex.

  Clients use this API to
  send text and audio requests to Amazon Lex at runtime. Amazon Lex interprets the
  user input using the machine learning model that it built for the bot.

  The `PostContent` operation supports audio input at 8kHz
  and 16kHz. You can use 8kHz audio to achieve higher speech recognition
  accuracy in telephone audio applications.

  In response, Amazon Lex returns the next message to convey to the user.
  Consider the following example messages:

    *
  For a user input "I would like a pizza," Amazon Lex might return a
  response with a message eliciting slot data (for example,
  `PizzaSize`): "What size pizza would you like?".

    *
  After the user provides all of the pizza order information, Amazon Lex
  might return a response with a message to get user confirmation:
  "Order the pizza?".

    *
  After the user replies "Yes" to the confirmation prompt, Amazon Lex
  might return a conclusion statement: "Thank you, your cheese pizza has
  been ordered.".

  Not all Amazon Lex messages require a response from the user. For example,
  conclusion statements do not require a response. Some messages require
  only a yes or no response. In addition to the `message`, Amazon Lex
  provides additional context about the message in the response that you can
  use to enhance client behavior, such as displaying the appropriate client
  user interface. Consider the following examples:

    *
  If the message is to elicit slot data, Amazon Lex returns the
  following context information:

      *

  `x-amz-lex-dialog-state` header set to
  `ElicitSlot`

      *

  `x-amz-lex-intent-name` header set to the intent name
  in the current context

      *

  `x-amz-lex-slot-to-elicit` header set to the slot name
  for which the `message` is eliciting information

      *

  `x-amz-lex-slots` header set to a map of slots
  configured for the intent with their current values

    *
  If the message is a confirmation prompt, the
  `x-amz-lex-dialog-state` header is set to
  `Confirmation` and the
  `x-amz-lex-slot-to-elicit` header is omitted.

    *
  If the message is a clarification prompt configured for the
  intent, indicating that the user intent is not understood, the
  `x-amz-dialog-state` header is set to
  `ElicitIntent` and the `x-amz-slot-to-elicit`
  header is omitted.

  In addition, Amazon Lex also returns your application-specific
  `sessionAttributes`. For more information, see [Managing Conversation
  Context](https://docs.aws.amazon.com/lex/latest/dg/context-mgmt.html).
  """
  @spec post_content(map(), String.t(), String.t(), String.t(), post_content_request(), list()) ::
          {:ok, post_content_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, post_content_errors()}
  def post_content(%Client{} = client, bot_alias, bot_name, user_id, input, options \\ []) do
    url_path =
      "/bot/#{AWS.Util.encode_uri(bot_name)}/alias/#{AWS.Util.encode_uri(bot_alias)}/user/#{AWS.Util.encode_uri(user_id)}/content"

    {headers, input} =
      [
        {"accept", "Accept"},
        {"activeContexts", "x-amz-lex-active-contexts"},
        {"contentType", "Content-Type"},
        {"requestAttributes", "x-amz-lex-request-attributes"},
        {"sessionAttributes", "x-amz-lex-session-attributes"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"x-amz-lex-active-contexts", "activeContexts"},
          {"x-amz-lex-alternative-intents", "alternativeIntents"},
          {"x-amz-lex-bot-version", "botVersion"},
          {"Content-Type", "contentType"},
          {"x-amz-lex-dialog-state", "dialogState"},
          {"x-amz-lex-encoded-input-transcript", "encodedInputTranscript"},
          {"x-amz-lex-encoded-message", "encodedMessage"},
          {"x-amz-lex-input-transcript", "inputTranscript"},
          {"x-amz-lex-intent-name", "intentName"},
          {"x-amz-lex-message", "message"},
          {"x-amz-lex-message-format", "messageFormat"},
          {"x-amz-lex-nlu-intent-confidence", "nluIntentConfidence"},
          {"x-amz-lex-sentiment", "sentimentResponse"},
          {"x-amz-lex-session-attributes", "sessionAttributes"},
          {"x-amz-lex-session-id", "sessionId"},
          {"x-amz-lex-slot-to-elicit", "slotToElicit"},
          {"x-amz-lex-slots", "slots"}
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
  Sends user input to Amazon Lex.

  Client applications can use this API to
  send requests to Amazon Lex at runtime. Amazon Lex then interprets the user
  input
  using the machine learning model it built for the bot.

  In response, Amazon Lex returns the next `message` to convey to
  the user an optional `responseCard` to display. Consider the
  following example messages:

    *
  For a user input "I would like a pizza", Amazon Lex might return a
  response with a message eliciting slot data (for example, PizzaSize):
  "What size pizza would you like?"

    *
  After the user provides all of the pizza order information,
  Amazon Lex might return a response with a message to obtain user
  confirmation "Proceed with the pizza order?".

    *
  After the user replies to a confirmation prompt with a "yes",
  Amazon Lex might return a conclusion statement: "Thank you, your cheese
  pizza has been ordered.".

  Not all Amazon Lex messages require a user response. For example, a
  conclusion statement does not require a response. Some messages require
  only a "yes" or "no" user response. In addition to the
  `message`, Amazon Lex provides additional context about the
  message in the response that you might use to enhance client behavior, for
  example, to display the appropriate client user interface. These are the
  `slotToElicit`, `dialogState`,
  `intentName`, and `slots` fields in the response.
  Consider the following examples:

    *
  If the message is to elicit slot data, Amazon Lex returns the
  following context information:

      *

  `dialogState` set to ElicitSlot

      *

  `intentName` set to the intent name in the current
  context

      *

  `slotToElicit` set to the slot name for which the
  `message` is eliciting information

      *

  `slots` set to a map of slots, configured for the
  intent, with currently known values

    *
  If the message is a confirmation prompt, the
  `dialogState` is set to ConfirmIntent and
  `SlotToElicit` is set to null.

    *
  If the message is a clarification prompt (configured for the
  intent) that indicates that user intent is not understood, the
  `dialogState` is set to ElicitIntent and
  `slotToElicit` is set to null.

  In addition, Amazon Lex also returns your application-specific
  `sessionAttributes`. For more information, see [Managing Conversation
  Context](https://docs.aws.amazon.com/lex/latest/dg/context-mgmt.html).
  """
  @spec post_text(map(), String.t(), String.t(), String.t(), post_text_request(), list()) ::
          {:ok, post_text_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, post_text_errors()}
  def post_text(%Client{} = client, bot_alias, bot_name, user_id, input, options \\ []) do
    url_path =
      "/bot/#{AWS.Util.encode_uri(bot_name)}/alias/#{AWS.Util.encode_uri(bot_alias)}/user/#{AWS.Util.encode_uri(user_id)}/text"

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
  Creates a new session or modifies an existing session with an Amazon Lex
  bot.

  Use this operation to enable your application to set the state of the
  bot.

  For more information, see [Managing Sessions](https://docs.aws.amazon.com/lex/latest/dg/how-session-api.html).
  """
  @spec put_session(map(), String.t(), String.t(), String.t(), put_session_request(), list()) ::
          {:ok, put_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_session_errors()}
  def put_session(%Client{} = client, bot_alias, bot_name, user_id, input, options \\ []) do
    url_path =
      "/bot/#{AWS.Util.encode_uri(bot_name)}/alias/#{AWS.Util.encode_uri(bot_alias)}/user/#{AWS.Util.encode_uri(user_id)}/session"

    {headers, input} =
      [
        {"accept", "Accept"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"x-amz-lex-active-contexts", "activeContexts"},
          {"Content-Type", "contentType"},
          {"x-amz-lex-dialog-state", "dialogState"},
          {"x-amz-lex-encoded-message", "encodedMessage"},
          {"x-amz-lex-intent-name", "intentName"},
          {"x-amz-lex-message", "message"},
          {"x-amz-lex-message-format", "messageFormat"},
          {"x-amz-lex-session-attributes", "sessionAttributes"},
          {"x-amz-lex-session-id", "sessionId"},
          {"x-amz-lex-slot-to-elicit", "slotToElicit"},
          {"x-amz-lex-slots", "slots"}
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
end
