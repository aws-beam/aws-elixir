# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.LexRuntime do
  @moduledoc """
  Amazon Lex provides both build and runtime endpoints. Each endpoint
  provides a set of operations (API). Your application uses the runtime API
  to understand user utterances (user input text or voice). For example,
  suppose user says "I want pizza", your application sends this input to
  Amazon Lex using the runtime API. Amazon Lex recognizes that the user
  request is for the OrderPizza intent (one of the intents defined in the
  application). Then Amazon Lex engages in user conversation on behalf of the
  application to elicit required information (slot values, such as pizza size
  and crust type), and then performs fulfillment activity (that you
  configured when you created the application). You use the build-time API to
  create and manage your Amazon Lex applications. For a list of build-time
  operations, see the build-time API. .
  """

  @doc """
  Sends user input text to Amazon Lex at runtime. Amazon Lex uses the machine
  learning model that the service built for the application to interpret user
  input.

  In response, Amazon Lex returns the next message to convey to the user
  (based on the context of the user interaction) and whether to expect a user
  response to the message (`dialogState`). For example, consider the
  following response messages:

  <ul> <li> "What pizza toppings would you like?" – In this case, the
  `dialogState` would be `ElicitSlot` (that is, a user response is expected).

  </li> <li> "Your order has been placed." – In this case, Amazon Lex returns
  one of the following `dialogState` values depending on how the intent
  fulfillment is configured (see `fulfillmentActivity` in `CreateIntent`):

  <ul> <li> `FulFilled` – The intent fulfillment is configured through a
  Lambda function.

  </li> <li> `ReadyForFulfilment` – The intent's `fulfillmentActivity` is to
  simply return the intent data back to the client application.

  </li> </ul> </li> </ul>
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
