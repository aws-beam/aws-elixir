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
  Removes session information for a specified bot, alias, and user ID.
  """
  def delete_session(client, bot_alias, bot_name, user_id, input, options \\ []) do
    url = "/bot/#{URI.encode(bot_name)}/alias/#{URI.encode(bot_alias)}/user/#{URI.encode(user_id)}/session"
    headers = []
    request(client, :delete, url, headers, input, options, nil)
  end

  @doc """
  Returns session information for a specified bot, alias, and user ID.
  """
  def get_session(client, bot_alias, bot_name, user_id, options \\ []) do
    url = "/bot/#{URI.encode(bot_name)}/alias/#{URI.encode(bot_alias)}/user/#{URI.encode(user_id)}/session"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

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
  Context](https://docs.aws.amazon.com/lex/latest/dg/context-mgmt.html).
  """
  def post_content(client, bot_alias, bot_name, user_id, input, options \\ []) do
    url = "/bot/#{URI.encode(bot_name)}/alias/#{URI.encode(bot_alias)}/user/#{URI.encode(user_id)}/content"

    {headers, input} =
      [
        {"accept", "Accept"},
        {"contentType", "Content-Type"},
        {"requestAttributes", "x-amz-lex-request-attributes"},
        {"sessionAttributes", "x-amz-lex-session-attributes"},
      ]
      |> AWS.Request.build_headers(input)
    
    case request(client, :post, url, headers, input, options, nil) do
      {:ok, body, response} ->
        body =
          [
            {"Content-Type", "contentType"},
            {"x-amz-lex-dialog-state", "dialogState"},
            {"x-amz-lex-input-transcript", "inputTranscript"},
            {"x-amz-lex-intent-name", "intentName"},
            {"x-amz-lex-message", "message"},
            {"x-amz-lex-message-format", "messageFormat"},
            {"x-amz-lex-session-attributes", "sessionAttributes"},
            {"x-amz-lex-slot-to-elicit", "slotToElicit"},
            {"x-amz-lex-slots", "slots"},
          ]
          |> Enum.reduce(body, fn {header_name, key}, acc ->
            case List.keyfind(response.headers, header_name, 0) do
              nil -> acc
              {_header_name, value} -> Map.put(acc, key, value)
            end
          end)
        
        {:ok, body, response}

      result ->
        result
    end
  end

  @doc """
  Sends user input to Amazon Lex. Client applications can use this API to
  send requests to Amazon Lex at runtime. Amazon Lex then interprets the user
  input using the machine learning model it built for the bot.

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
  Context](https://docs.aws.amazon.com/lex/latest/dg/context-mgmt.html).
  """
  def post_text(client, bot_alias, bot_name, user_id, input, options \\ []) do
    url = "/bot/#{URI.encode(bot_name)}/alias/#{URI.encode(bot_alias)}/user/#{URI.encode(user_id)}/text"
    headers = []
    request(client, :post, url, headers, input, options, nil)
  end

  @doc """
  Creates a new session or modifies an existing session with an Amazon Lex
  bot. Use this operation to enable your application to set the state of the
  bot.

  For more information, see [Managing
  Sessions](https://docs.aws.amazon.com/lex/latest/dg/how-session-api.html).
  """
  def put_session(client, bot_alias, bot_name, user_id, input, options \\ []) do
    url = "/bot/#{URI.encode(bot_name)}/alias/#{URI.encode(bot_alias)}/user/#{URI.encode(user_id)}/session"

    {headers, input} =
      [
        {"accept", "Accept"},
      ]
      |> AWS.Request.build_headers(input)
    
    case request(client, :post, url, headers, input, options, nil) do
      {:ok, body, response} ->
        body =
          [
            {"Content-Type", "contentType"},
            {"x-amz-lex-dialog-state", "dialogState"},
            {"x-amz-lex-intent-name", "intentName"},
            {"x-amz-lex-message", "message"},
            {"x-amz-lex-message-format", "messageFormat"},
            {"x-amz-lex-session-attributes", "sessionAttributes"},
            {"x-amz-lex-session-id", "sessionId"},
            {"x-amz-lex-slot-to-elicit", "slotToElicit"},
            {"x-amz-lex-slots", "slots"},
          ]
          |> Enum.reduce(body, fn {header_name, key}, acc ->
            case List.keyfind(response.headers, header_name, 0) do
              nil -> acc
              {_header_name, value} -> Map.put(acc, key, value)
            end
          end)
        
        {:ok, body, response}

      result ->
        result
    end
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), map(), list(), pos_integer()) ::
          {:ok, Poison.Parser.t() | nil, Poison.Response.t()}
          | {:error, Poison.Parser.t()}
          | {:error, HTTPoison.Error.t()}
  defp request(client, method, url, headers, input, options, success_status_code) do
    client = %{client | service: "lex"}
    host = get_host("runtime.lex", client)
    url = get_url(host, url, client)

    headers = if client.session_token do
      [{"X-Amz-Security-Token", client.session_token} | headers]
    else
      []
    end

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"} | headers
    ]

    payload = encode_payload(input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    perform_request(method, url, payload, headers, options, success_status_code)
  end

  defp perform_request(method, url, payload, headers, options, nil) do
    case HTTPoison.request(method, url, payload, headers, options) do
      {:ok, %HTTPoison.Response{status_code: 200, body: ""} = response} ->
        {:ok, response}

      {:ok, %HTTPoison.Response{status_code: status_code, body: body} = response}
      when status_code == 200 or status_code == 202 or status_code == 204 ->
        {:ok, Poison.Parser.parse!(body, %{}), response}

      {:ok, %HTTPoison.Response{body: body}} ->
        reason = Poison.Parser.parse!(body, %{})["message"]
        {:error, reason}

      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp perform_request(method, url, payload, headers, options, success_status_code) do
    case HTTPoison.request(method, url, payload, headers, options) do
      {:ok, %HTTPoison.Response{status_code: ^success_status_code, body: ""} = response} ->
        {:ok, nil, response}

      {:ok, %HTTPoison.Response{status_code: ^success_status_code, body: body} = response} ->
        {:ok, Poison.Parser.parse!(body, %{}), response}

      {:ok, %HTTPoison.Response{body: body}} ->
        reason = Poison.Parser.parse!(body, %{})["message"]
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
    if input != nil, do: Poison.Encoder.encode(input, %{}), else: ""
  end
end
