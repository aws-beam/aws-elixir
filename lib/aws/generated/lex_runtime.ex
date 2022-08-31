# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.LexRuntime do
  @moduledoc """
  Amazon Lex provides both build and runtime endpoints.

  Each endpoint provides a set of operations (API). Your conversational bot uses
  the runtime API to understand user utterances (user input text or voice). For
  example, suppose a user says "I want pizza", your bot sends this input to Amazon
  Lex using the runtime API. Amazon Lex recognizes that the user request is for
  the OrderPizza intent (one of the intents defined in the bot). Then Amazon Lex
  engages in user conversation on behalf of the bot to elicit required information
  (slot values, such as pizza size and crust type), and then performs fulfillment
  activity (that you configured when you created the bot). You use the build-time
  API to create and manage your Amazon Lex bot. For a list of build-time
  operations, see the build-time API, .
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2016-11-28",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "runtime.lex",
      global?: false,
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
  def delete_session(%Client{} = client, bot_alias, bot_name, user_id, input, options \\ []) do
    url_path =
      "/bot/#{AWS.Util.encode_uri(bot_name)}/alias/#{AWS.Util.encode_uri(bot_alias)}/user/#{AWS.Util.encode_uri(user_id)}/session"

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
  Returns session information for a specified bot, alias, and user ID.
  """
  def get_session(
        %Client{} = client,
        bot_alias,
        bot_name,
        user_id,
        checkpoint_label_filter \\ nil,
        options \\ []
      ) do
    url_path =
      "/bot/#{AWS.Util.encode_uri(bot_name)}/alias/#{AWS.Util.encode_uri(bot_alias)}/user/#{AWS.Util.encode_uri(user_id)}/session/"

    headers = []
    query_params = []

    query_params =
      if !is_nil(checkpoint_label_filter) do
        [{"checkpointLabelFilter", checkpoint_label_filter} | query_params]
      else
        query_params
      end

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
  Sends user input (text or speech) to Amazon Lex.

  Clients use this API to send text and audio requests to Amazon Lex at runtime.
  Amazon Lex interprets the user input using the machine learning model that it
  built for the bot.

  The `PostContent` operation supports audio input at 8kHz and 16kHz. You can use
  8kHz audio to achieve higher speech recognition accuracy in telephone audio
  applications.

  In response, Amazon Lex returns the next message to convey to the user. Consider
  the following example messages:

    * For a user input "I would like a pizza," Amazon Lex might return a
  response with a message eliciting slot data (for example, `PizzaSize`): "What
  size pizza would you like?".

    * After the user provides all of the pizza order information, Amazon
  Lex might return a response with a message to get user confirmation: "Order the
  pizza?".

    * After the user replies "Yes" to the confirmation prompt, Amazon
  Lex might return a conclusion statement: "Thank you, your cheese pizza has been
  ordered.".

  Not all Amazon Lex messages require a response from the user. For example,
  conclusion statements do not require a response. Some messages require only a
  yes or no response. In addition to the `message`, Amazon Lex provides additional
  context about the message in the response that you can use to enhance client
  behavior, such as displaying the appropriate client user interface. Consider the
  following examples:

    * If the message is to elicit slot data, Amazon Lex returns the
  following context information:

      * `x-amz-lex-dialog-state` header set to `ElicitSlot`

      * `x-amz-lex-intent-name` header set to the intent name
  in the current context

      * `x-amz-lex-slot-to-elicit` header set to the slot name
  for which the `message` is eliciting information

      * `x-amz-lex-slots` header set to a map of slots
  configured for the intent with their current values

    * If the message is a confirmation prompt, the
  `x-amz-lex-dialog-state` header is set to `Confirmation` and the
  `x-amz-lex-slot-to-elicit` header is omitted.

    * If the message is a clarification prompt configured for the
  intent, indicating that the user intent is not understood, the
  `x-amz-dialog-state` header is set to `ElicitIntent` and the
  `x-amz-slot-to-elicit` header is omitted.

  In addition, Amazon Lex also returns your application-specific
  `sessionAttributes`. For more information, see [Managing Conversation Context](https://docs.aws.amazon.com/lex/latest/dg/context-mgmt.html).
  """
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

  Client applications can use this API to send requests to Amazon Lex at runtime.
  Amazon Lex then interprets the user input using the machine learning model it
  built for the bot.

  In response, Amazon Lex returns the next `message` to convey to the user an
  optional `responseCard` to display. Consider the following example messages:

    * For a user input "I would like a pizza", Amazon Lex might return a
  response with a message eliciting slot data (for example, PizzaSize): "What size
  pizza would you like?"

    * After the user provides all of the pizza order information, Amazon
  Lex might return a response with a message to obtain user confirmation "Proceed
  with the pizza order?".

    * After the user replies to a confirmation prompt with a "yes",
  Amazon Lex might return a conclusion statement: "Thank you, your cheese pizza
  has been ordered.".

  Not all Amazon Lex messages require a user response. For example, a conclusion
  statement does not require a response. Some messages require only a "yes" or
  "no" user response. In addition to the `message`, Amazon Lex provides additional
  context about the message in the response that you might use to enhance client
  behavior, for example, to display the appropriate client user interface. These
  are the `slotToElicit`, `dialogState`, `intentName`, and `slots` fields in the
  response. Consider the following examples:

    * If the message is to elicit slot data, Amazon Lex returns the
  following context information:

      * `dialogState` set to ElicitSlot

      * `intentName` set to the intent name in the current
  context

      * `slotToElicit` set to the slot name for which the
  `message` is eliciting information

      * `slots` set to a map of slots, configured for the
  intent, with currently known values

    * If the message is a confirmation prompt, the `dialogState` is set
  to ConfirmIntent and `SlotToElicit` is set to null.

    * If the message is a clarification prompt (configured for the
  intent) that indicates that user intent is not understood, the `dialogState` is
  set to ElicitIntent and `slotToElicit` is set to null.

  In addition, Amazon Lex also returns your application-specific
  `sessionAttributes`. For more information, see [Managing Conversation Context](https://docs.aws.amazon.com/lex/latest/dg/context-mgmt.html).
  """
  def post_text(%Client{} = client, bot_alias, bot_name, user_id, input, options \\ []) do
    url_path =
      "/bot/#{AWS.Util.encode_uri(bot_name)}/alias/#{AWS.Util.encode_uri(bot_alias)}/user/#{AWS.Util.encode_uri(user_id)}/text"

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
  Creates a new session or modifies an existing session with an Amazon Lex bot.

  Use this operation to enable your application to set the state of the bot.

  For more information, see [Managing Sessions](https://docs.aws.amazon.com/lex/latest/dg/how-session-api.html).
  """
  def put_session(%Client{} = client, bot_alias, bot_name, user_id, input, options \\ []) do
    url_path =
      "/bot/#{AWS.Util.encode_uri(bot_name)}/alias/#{AWS.Util.encode_uri(bot_alias)}/user/#{AWS.Util.encode_uri(user_id)}/session"

    {headers, input} =
      [
        {"accept", "Accept"}
      ]
      |> Request.build_params(input)

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
