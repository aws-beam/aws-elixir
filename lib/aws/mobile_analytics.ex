# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.MobileAnalytics do
  @moduledoc """
  Amazon Mobile Analytics is a service for collecting, visualizing, and
  understanding app usage data at scale.
  """

  @doc """
  The PutEvents operation records one or more events. You can have up to
  1,500 unique custom events per app, any combination of up to 40 attributes
  and metrics per custom event, and any number of attribute or metric values.
  """
  def put_events(client, input, http_options \\ []) do
    url = "/2014-06-05/events"
    headers = []
    if Dict.has_key?(input, "clientContext") do
      headers = [{"clientContext", input["clientContext"]}|headers]
      input = Dict.delete(input, "clientContext")
    end
    if Dict.has_key?(input, "clientContextEncoding") do
      headers = [{"clientContextEncoding", input["clientContextEncoding"]}|headers]
      input = Dict.delete(input, "clientContextEncoding")
    end
    request(client, :post, url, headers, input, http_options, 202)
  end

  defp request(client, method, url, headers, input, http_options, success_status_code) do
    client = %{client | service: "mobileanalytics"}
    host = "mobileanalytics.#{client.region}.#{client.endpoint}"
    url = "https://#{host}#{url}"
    headers = Enum.concat([{"Host", host},
                           {"Content-Type", "application/x-amz-json-1.1"}],
                          headers)
    payload = encode_payload(input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    perform_request(method, url, payload, headers, http_options, success_status_code)
  end

  defp perform_request(method, url, payload, headers, http_options, nil) do
    case HTTPoison.request(method, url, payload, headers, http_options) do
      {:ok, response=%HTTPoison.Response{status_code: 200, body: body}} ->
        {:ok, Poison.Parser.parse!(body), response}
      {:ok, response=%HTTPoison.Response{status_code: 202, body: body}} ->
        {:ok, Poison.Parser.parse!(body), response}
      {:ok, response=%HTTPoison.Response{status_code: 204, body: body}} ->
        {:ok, Poison.Parser.parse!(body), response}
      {:ok, response=%HTTPoison.Response{body: body}} ->
        reason = Poison.Parser.parse!(body)["message"]
        {:error, reason, response}
      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp perform_request(method, url, payload, headers, http_options, success_status_code) do
    case HTTPoison.request(method, url, payload, headers, http_options) do
      {:ok, response=%HTTPoison.Response{status_code: ^success_status_code, body: body}} ->
        {:ok, Poison.Parser.parse!(body), response}
      {:ok, response=%HTTPoison.Response{body: body}} ->
        reason = Poison.Parser.parse!(body)["message"]
        {:error, reason, response}
      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp encode_payload(input) do
    if input != nil do
      Poison.Encoder.encode(input, [])
    else
      ""
    end
  end
end
