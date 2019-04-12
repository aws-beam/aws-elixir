# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.LexRuntime do
  @moduledoc """
  Amazon Lex provides both build and runtime endpoints. Each endpoint
  provides a set of operations (API). Your conversational bot uses the
  runtime API to understand user utterances (user input text or voice). For
  example, suppose a user says "I want pizza", your bot sends this input to
  Amazon Lex using the runtime API. Amazon Lex recognizes that the user
  request is for the OrderPizza intent (one of the intents defined in the
  bot). Then Amazon Lex engages in user conversation on behalf of the bot to
  elicit required information (slot values, such as pizza size and crust
  type), and then performs fulfillment activity (that you configured when you
  created the bot). You use the build-time API to create and manage your
  Amazon Lex bot. For a list of build-time operations, see the build-time
  API, .
  """

  @doc """
  Sends user input (text or speech) to Amazon Lex. Clients use this API to
  send text and audio requests to Amazon Lex at runtime. Amazon Lex
  interprets the user input using the machine learning model that it built
  for the bot.

  The `PostContent` operation supports audio input at 8kHz and 16kHz. You can
  use 8kHz audio to achieve higher speech recognition accuracy in telephone
  audio applications.

  In response, Amazon Lex returns the next message to convey to the user.
  Consider the following example messages:

  <ul> <li> For a user input "I would like a pizza," Amazon Lex might return
  a response with a message eliciting slot data (for example, `PizzaSize`):
  "What size pizza would you like?".

  </li> <li> After the user provides all of the pizza order information,
  Amazon Lex might return a response with a message to get user confirmation:
  "Order the pizza?".

  </li> <li> After the user replies "Yes" to the confirmation prompt, Amazon
  Lex might return a conclusion statement: "Thank you, your cheese pizza has
  been ordered.".

  </li> </ul> Not all Amazon Lex messages require a response from the user.
  For example, conclusion statements do not require a response. Some messages
  require only a yes or no response. In addition to the `message`, Amazon Lex
  provides additional context about the message in the response that you can
  use to enhance client behavior, such as displaying the appropriate client
  user interface. Consider the following examples:

  <ul> <li> If the message is to elicit slot data, Amazon Lex returns the
  following context information:

  <ul> <li> `x-amz-lex-dialog-state` header set to `ElicitSlot`

  </li> <li> `x-amz-lex-intent-name` header set to the intent name in the
  current context

  </li> <li> `x-amz-lex-slot-to-elicit` header set to the slot name for which
  the `message` is eliciting information

  </li> <li> `x-amz-lex-slots` header set to a map of slots configured for
  the intent with their current values

  </li> </ul> </li> <li> If the message is a confirmation prompt, the
  `x-amz-lex-dialog-state` header is set to `Confirmation` and the
  `x-amz-lex-slot-to-elicit` header is omitted.

  </li> <li> If the message is a clarification prompt configured for the
  intent, indicating that the user intent is not understood, the
  `x-amz-dialog-state` header is set to `ElicitIntent` and the
  `x-amz-slot-to-elicit` header is omitted.

  </li> </ul> In addition, Amazon Lex also returns your application-specific
  `sessionAttributes`. For more information, see [Managing Conversation
  Context](http://docs.aws.amazon.com/lex/latest/dg/context-mgmt.html).
  """
  def post_content(client, bot_alias, bot_name, user_id, input, options \\ []) do
    url = "/bot/#{URI.encode(bot_name)}/alias/#{URI.encode(bot_alias)}/user/#{URI.encode(user_id)}/content"
    headers = []
    if Dict.has_key?(input, "accept") do
      headers = [{"Accept", input["accept"]}|headers]
      input = Dict.delete(input, "accept")
    end
    if Dict.has_key?(input, "contentType") do
      headers = [{"Content-Type", input["contentType"]}|headers]
      input = Dict.delete(input, "contentType")
    end
    if Dict.has_key?(input, "requestAttributes") do
      headers = [{"x-amz-lex-request-attributes", input["requestAttributes"]}|headers]
      input = Dict.delete(input, "requestAttributes")
    end
    if Dict.has_key?(input, "sessionAttributes") do
      headers = [{"x-amz-lex-session-attributes", input["sessionAttributes"]}|headers]
      input = Dict.delete(input, "sessionAttributes")
    end
    case request(client, :post, url, headers, input, options, nil) do
      {:ok, body, response} ->
        if !is_nil(response.headers["Content-Type"]) do
          body = %{body | "contentType" => response.headers["Content-Type"]}
        end
        if !is_nil(response.headers["x-amz-lex-dialog-state"]) do
          body = %{body | "dialogState" => response.headers["x-amz-lex-dialog-state"]}
        end
        if !is_nil(response.headers["x-amz-lex-input-transcript"]) do
          body = %{body | "inputTranscript" => response.headers["x-amz-lex-input-transcript"]}
        end
        if !is_nil(response.headers["x-amz-lex-intent-name"]) do
          body = %{body | "intentName" => response.headers["x-amz-lex-intent-name"]}
        end
        if !is_nil(response.headers["x-amz-lex-message"]) do
          body = %{body | "message" => response.headers["x-amz-lex-message"]}
        end
        if !is_nil(response.headers["x-amz-lex-message-format"]) do
          body = %{body | "messageFormat" => response.headers["x-amz-lex-message-format"]}
        end
        if !is_nil(response.headers["x-amz-lex-session-attributes"]) do
          body = %{body | "sessionAttributes" => response.headers["x-amz-lex-session-attributes"]}
        end
        if !is_nil(response.headers["x-amz-lex-slot-to-elicit"]) do
          body = %{body | "slotToElicit" => response.headers["x-amz-lex-slot-to-elicit"]}
        end
        if !is_nil(response.headers["x-amz-lex-slots"]) do
          body = %{body | "slots" => response.headers["x-amz-lex-slots"]}
        end
        {:ok, body, response}
      result ->
        result
    end
  end

  @doc """
  Sends user input (text-only) to Amazon Lex. Client applications can use
  this API to send requests to Amazon Lex at runtime. Amazon Lex then
  interprets the user input using the machine learning model it built for the
  bot.

  In response, Amazon Lex returns the next `message` to convey to the user an
  optional `responseCard` to display. Consider the following example
  messages:

  <ul> <li> For a user input "I would like a pizza", Amazon Lex might return
  a response with a message eliciting slot data (for example, PizzaSize):
  "What size pizza would you like?"

  </li> <li> After the user provides all of the pizza order information,
  Amazon Lex might return a response with a message to obtain user
  confirmation "Proceed with the pizza order?".

  </li> <li> After the user replies to a confirmation prompt with a "yes",
  Amazon Lex might return a conclusion statement: "Thank you, your cheese
  pizza has been ordered.".

  </li> </ul> Not all Amazon Lex messages require a user response. For
  example, a conclusion statement does not require a response. Some messages
  require only a "yes" or "no" user response. In addition to the `message`,
  Amazon Lex provides additional context about the message in the response
  that you might use to enhance client behavior, for example, to display the
  appropriate client user interface. These are the `slotToElicit`,
  `dialogState`, `intentName`, and `slots` fields in the response. Consider
  the following examples:

  <ul> <li> If the message is to elicit slot data, Amazon Lex returns the
  following context information:

  <ul> <li> `dialogState` set to ElicitSlot

  </li> <li> `intentName` set to the intent name in the current context

  </li> <li> `slotToElicit` set to the slot name for which the `message` is
  eliciting information

  </li> <li> `slots` set to a map of slots, configured for the intent, with
  currently known values

  </li> </ul> </li> <li> If the message is a confirmation prompt, the
  `dialogState` is set to ConfirmIntent and `SlotToElicit` is set to null.

  </li> <li> If the message is a clarification prompt (configured for the
  intent) that indicates that user intent is not understood, the
  `dialogState` is set to ElicitIntent and `slotToElicit` is set to null.

  </li> </ul> In addition, Amazon Lex also returns your application-specific
  `sessionAttributes`. For more information, see [Managing Conversation
  Context](http://docs.aws.amazon.com/lex/latest/dg/context-mgmt.html).
  """
  def post_text(client, bot_alias, bot_name, user_id, input, options \\ []) do
    url = "/bot/#{URI.encode(bot_name)}/alias/#{URI.encode(bot_alias)}/user/#{URI.encode(user_id)}/text"
    headers = []
    request(client, :post, url, headers, input, options, nil)
  end

  defp request(client, method, url, headers, input, options, success_status_code) do
    client = %{client | service: "lex"}
    host = get_host("runtime.lex", client)
    url = get_url(host, url, client)
    headers = Enum.concat([{"Host", host},
                           {"Content-Type", "application/x-amz-json-1.1"}],
                          headers)
    payload = encode_payload(input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    perform_request(method, url, payload, headers, options, success_status_code)
  end

  defp perform_request(method, url, payload, headers, options, nil) do
    case HTTPoison.request(method, url, payload, headers, options) do
      {:ok, response=%HTTPoison.Response{status_code: 200, body: ""}} ->
        {:ok, response}
      {:ok, response=%HTTPoison.Response{status_code: 200, body: body}} ->
        {:ok, Poison.Parser.parse!(body), response}
      {:ok, response=%HTTPoison.Response{status_code: 202, body: body}} ->
        {:ok, Poison.Parser.parse!(body), response}
      {:ok, response=%HTTPoison.Response{status_code: 204, body: body}} ->
        {:ok, Poison.Parser.parse!(body), response}
      {:ok, _response=%HTTPoison.Response{body: body}} ->
        reason = Poison.Parser.parse!(body)["message"]
        {:error, reason}
      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp perform_request(method, url, payload, headers, options, success_status_code) do
    case HTTPoison.request(method, url, payload, headers, options) do
      {:ok, response=%HTTPoison.Response{status_code: ^success_status_code, body: ""}} ->
        {:ok, nil, response}
      {:ok, response=%HTTPoison.Response{status_code: ^success_status_code, body: body}} ->
        {:ok, Poison.Parser.parse!(body), response}
      {:ok, _response=%HTTPoison.Response{body: body}} ->
        reason = Poison.Parser.parse!(body)["message"]
        {:error, reason}
      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp get_host(endpoint_prefix, client) do
    if client.region == "local" do
      "localhost"
    else
      "#{endpoint_prefix}.#{client.region}.#{client.endpoint}"
    end
  end

  defp get_url(host, url, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}#{url}/"
  end

  defp encode_payload(input) do
    if input != nil do
      Poison.Encoder.encode(input, [])
    else
      ""
    end
  end
end
