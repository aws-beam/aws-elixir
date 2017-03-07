# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.Polly do
  @moduledoc """
  Amazon Polly is a web service that makes it easy to synthesize speech from
  text.

  The Amazon Polly service provides API operations for synthesizing
  high-quality speech from plain text and Speech Synthesis Markup Language
  (SSML), along with managing pronunciations lexicons that enable you to get
  the best results for your application domain.
  """

  @doc """
  Deletes the specified pronunciation lexicon stored in an AWS Region. A
  lexicon which has been deleted is not available for speech synthesis, nor
  is it possible to retrieve it using either the `GetLexicon` or
  `ListLexicon` APIs.

  For more information, see [Managing
  Lexicons](http://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html).
  """
  def delete_lexicon(client, name, input, options \\ []) do
    url = "/v1/lexicons/#{URI.encode(name)}"
    headers = []
    request(client, :delete, url, headers, input, options, 200)
  end

  @doc """
  Returns the list of voices that are available for use when requesting
  speech synthesis. Each voice speaks a specified language, is either male or
  female, and is identified by an ID, which is the ASCII version of the voice
  name.

  When synthesizing speech ( `SynthesizeSpeech` ), you provide the voice ID
  for the voice you want from the list of voices returned by
  `DescribeVoices`.

  For example, you want your news reader application to read news in a
  specific language, but giving a user the option to choose the voice. Using
  the `DescribeVoices` operation you can provide the user with a list of
  available voices to select from.

  You can optionally specify a language code to filter the available voices.
  For example, if you specify `en-US`, the operation returns a list of all
  available US English voices.

  This operation requires permissions to perform the `polly:DescribeVoices`
  action.
  """
  def describe_voices(client, options \\ []) do
    url = "/v1/voices"
    headers = []
    request(client, :get, url, headers, nil, options, 200)
  end

  @doc """
  Returns the content of the specified pronunciation lexicon stored in an AWS
  Region. For more information, see [Managing
  Lexicons](http://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html).
  """
  def get_lexicon(client, name, options \\ []) do
    url = "/v1/lexicons/#{URI.encode(name)}"
    headers = []
    request(client, :get, url, headers, nil, options, 200)
  end

  @doc """
  Returns a list of pronunciation lexicons stored in an AWS Region. For more
  information, see [Managing
  Lexicons](http://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html).
  """
  def list_lexicons(client, options \\ []) do
    url = "/v1/lexicons"
    headers = []
    request(client, :get, url, headers, nil, options, 200)
  end

  @doc """
  Stores a pronunciation lexicon in an AWS Region. If a lexicon with the same
  name already exists in the region, it is overwritten by the new lexicon.
  Lexicon operations have eventual consistency, therefore, it might take some
  time before the lexicon is available to the SynthesizeSpeech operation.

  For more information, see [Managing
  Lexicons](http://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html).
  """
  def put_lexicon(client, name, input, options \\ []) do
    url = "/v1/lexicons/#{URI.encode(name)}"
    headers = []
    request(client, :put, url, headers, input, options, 200)
  end

  @doc """
  Synthesizes UTF-8 input, plain text or SSML, to a stream of bytes. SSML
  input must be valid, well-formed SSML. Some alphabets might not be
  available with all the voices (for example, Cyrillic might not be read at
  all by English voices) unless phoneme mapping is used. For more
  information, see [How it
  Works](http://docs.aws.amazon.com/polly/latest/dg/how-text-to-speech-works.html).
  """
  def synthesize_speech(client, input, options \\ []) do
    url = "/v1/speech"
    headers = []
    case request(client, :post, url, headers, input, options, 200) do
      {:ok, body, response} ->
        if !is_nil(response.headers["Content-Type"]) do
          body = %{body | "ContentType" => response.headers["Content-Type"]}
        end
        if !is_nil(response.headers["x-amzn-RequestCharacters"]) do
          body = %{body | "RequestCharacters" => response.headers["x-amzn-RequestCharacters"]}
        end
        {:ok, body, response}
      result ->
        result
    end
  end

  defp request(client, method, url, headers, input, options, success_status_code) do
    client = %{client | service: "polly"}
    host = get_host("polly", client)
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
