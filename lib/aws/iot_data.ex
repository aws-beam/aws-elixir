# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.IoT.DataPlane do
  @moduledoc """
  AWS IoT

  AWS IoT-Data enables secure, bi-directional communication between
  Internet-connected things (such as sensors, actuators, embedded devices, or
  smart appliances) and the AWS cloud. It implements a broker for
  applications and things to publish messages over HTTP (Publish) and
  retrieve, update, and delete shadows. A shadow is a persistent
  representation of your things and their state in the AWS cloud.

  Find the endpoint address for actions in the AWS IoT data plane by running
  this CLI command:

  `aws iot describe-endpoint --endpoint-type iot:Data-ATS`

  The service name used by [AWS Signature Version
  4](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html)
  to sign requests is: *iotdevicegateway*.
  """

  @doc """
  Deletes the shadow for the specified thing.

  For more information, see
  [DeleteThingShadow](http://docs.aws.amazon.com/iot/latest/developerguide/API_DeleteThingShadow.html)
  in the AWS IoT Developer Guide.
  """
  def delete_thing_shadow(client, thing_name, input, options \\ []) do
    path = "/things/#{URI.encode(thing_name)}/shadow"
    headers = []
    {query, input} =
      [
        {"shadowName", "name"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path, query, headers, input, options, nil)
  end

  @doc """
  Gets the shadow for the specified thing.

  For more information, see
  [GetThingShadow](http://docs.aws.amazon.com/iot/latest/developerguide/API_GetThingShadow.html)
  in the AWS IoT Developer Guide.
  """
  def get_thing_shadow(client, thing_name, shadow_name \\ nil, options \\ []) do
    path_ = "/things/#{URI.encode(thing_name)}/shadow"
    headers = []
    query = []
    query = if !is_nil(shadow_name) do
      [{"name", shadow_name} | query]
    else
      query
    end
    request(client, :get, path_, query, headers, nil, options, nil)
  end

  @doc """
  Lists the shadows for the specified thing.
  """
  def list_named_shadows_for_thing(client, thing_name, next_token \\ nil, page_size \\ nil, options \\ []) do
    path_ = "/api/things/shadow/ListNamedShadowsForThing/#{URI.encode(thing_name)}"
    headers = []
    query = []
    query = if !is_nil(page_size) do
      [{"pageSize", page_size} | query]
    else
      query
    end
    query = if !is_nil(next_token) do
      [{"nextToken", next_token} | query]
    else
      query
    end
    request(client, :get, path_, query, headers, nil, options, nil)
  end

  @doc """
  Publishes state information.

  For more information, see [HTTP
  Protocol](http://docs.aws.amazon.com/iot/latest/developerguide/protocols.html#http)
  in the AWS IoT Developer Guide.
  """
  def publish(client, topic, input, options \\ []) do
    path = "/topics/#{URI.encode(topic)}"
    headers = []
    {query, input} =
      [
        {"qos", "qos"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :post, path, query, headers, input, options, nil)
  end

  @doc """
  Updates the shadow for the specified thing.

  For more information, see
  [UpdateThingShadow](http://docs.aws.amazon.com/iot/latest/developerguide/API_UpdateThingShadow.html)
  in the AWS IoT Developer Guide.
  """
  def update_thing_shadow(client, thing_name, input, options \\ []) do
    path = "/things/#{URI.encode(thing_name)}/shadow"
    headers = []
    {query, input} =
      [
        {"shadowName", "name"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :post, path, query, headers, input, options, nil)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, Poison.Parser.t(), Poison.Response.t()}
          | {:error, Poison.Parser.t()}
          | {:error, HTTPoison.Error.t()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "iotdata"}
    host = get_host("data.iot", client)
    url = host
    |> get_url(path, client)
    |> add_query(query)

    additional_headers = [{"Host", host}, {"Content-Type", "application/x-amz-json-1.1"}]
    headers = AWS.Request.add_headers(additional_headers, headers)

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
        error = Poison.Parser.parse!(body, %{})
        {:error, error}

      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp perform_request(method, url, payload, headers, options, success_status_code) do
    case HTTPoison.request(method, url, payload, headers, options) do
      {:ok, %HTTPoison.Response{status_code: ^success_status_code, body: ""} = response} ->
        {:ok, %{}, response}

      {:ok, %HTTPoison.Response{status_code: ^success_status_code, body: body} = response} ->
        {:ok, Poison.Parser.parse!(body, %{}), response}

      {:ok, %HTTPoison.Response{body: body}} ->
        error = Poison.Parser.parse!(body, %{})
        {:error, error}

      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp get_host(_endpoint_prefix, %{region: "local"}) do
    "localhost"
  end
  defp get_host(endpoint_prefix, %{region: region, endpoint: endpoint}) do
    "#{endpoint_prefix}.#{region}.#{endpoint}"
  end

  defp get_url(host, path, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}#{path}"
  end

  defp add_query(url, []) do
    url
  end
  defp add_query(url, query) do
    querystring = AWS.Util.encode_query(query)
    "#{url}?#{querystring}"
  end

  defp encode_payload(input) do
    if input != nil, do: Poison.Encoder.encode(input, %{}), else: ""
  end
end
