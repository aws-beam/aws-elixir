# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.IoT.DataPlane do
  @moduledoc """
  AWS IoT

  AWS IoT-Data enables secure, bi-directional communication between
  Internet-connected things (such as sensors, actuators, embedded devices, or
  smart appliances) and the AWS cloud. It implements a broker for
  applications and things to publish messages over HTTP (Publish) and
  retrieve, update, and delete thing shadows. A thing shadow is a persistent
  representation of your things and their state in the AWS cloud.
  """

  @doc """
  Deletes the thing shadow for the specified thing.

  For more information, see
  [DeleteThingShadow](http://docs.aws.amazon.com/iot/latest/developerguide/API_DeleteThingShadow.html)
  in the *AWS IoT Developer Guide*.
  """
  def delete_thing_shadow(client, thing_name, input, options \\ []) do
    url = "/things/#{URI.encode(thing_name)}/shadow"
    headers = []
    request(client, :delete, url, headers, input, options, nil)
  end

  @doc """
  Gets the thing shadow for the specified thing.

  For more information, see
  [GetThingShadow](http://docs.aws.amazon.com/iot/latest/developerguide/API_GetThingShadow.html)
  in the *AWS IoT Developer Guide*.
  """
  def get_thing_shadow(client, thing_name, options \\ []) do
    url = "/things/#{URI.encode(thing_name)}/shadow"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Publishes state information.

  For more information, see [HTTP
  Protocol](http://docs.aws.amazon.com/iot/latest/developerguide/protocols.html#http)
  in the *AWS IoT Developer Guide*.
  """
  def publish(client, topic, input, options \\ []) do
    url = "/topics/#{URI.encode(topic)}"
    headers = []
    request(client, :post, url, headers, input, options, nil)
  end

  @doc """
  Updates the thing shadow for the specified thing.

  For more information, see
  [UpdateThingShadow](http://docs.aws.amazon.com/iot/latest/developerguide/API_UpdateThingShadow.html)
  in the *AWS IoT Developer Guide*.
  """
  def update_thing_shadow(client, thing_name, input, options \\ []) do
    url = "/things/#{URI.encode(thing_name)}/shadow"
    headers = []
    request(client, :post, url, headers, input, options, nil)
  end

  defp request(client, method, url, headers, input, options, success_status_code) do
    client = %{client | service: "iotdata"}
    host = get_host("data.iot", client)
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
