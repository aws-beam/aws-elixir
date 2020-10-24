# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.IoTDataPlane do
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
    path_ = "/things/#{URI.encode(thing_name)}/shadow"
    headers = []
    {query_, input} =
      [
        {"shadowName", "name"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, nil)
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
    query_ = []
    query_ = if !is_nil(shadow_name) do
      [{"name", shadow_name} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists the shadows for the specified thing.
  """
  def list_named_shadows_for_thing(client, thing_name, next_token \\ nil, page_size \\ nil, options \\ []) do
    path_ = "/api/things/shadow/ListNamedShadowsForThing/#{URI.encode(thing_name)}"
    headers = []
    query_ = []
    query_ = if !is_nil(page_size) do
      [{"pageSize", page_size} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Publishes state information.

  For more information, see [HTTP
  Protocol](http://docs.aws.amazon.com/iot/latest/developerguide/protocols.html#http)
  in the AWS IoT Developer Guide.
  """
  def publish(client, topic, input, options \\ []) do
    path_ = "/topics/#{URI.encode(topic)}"
    headers = []
    {query_, input} =
      [
        {"qos", "qos"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates the shadow for the specified thing.

  For more information, see
  [UpdateThingShadow](http://docs.aws.amazon.com/iot/latest/developerguide/API_UpdateThingShadow.html)
  in the AWS IoT Developer Guide.
  """
  def update_thing_shadow(client, thing_name, input, options \\ []) do
    path_ = "/things/#{URI.encode(thing_name)}/shadow"
    headers = []
    {query_, input} =
      [
        {"shadowName", "name"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "iotdata"}
    host = build_host("data.iot", client)
    url = host
    |> build_url(path, client)
    |> add_query(query)

    additional_headers = [{"Host", host}, {"Content-Type", "application/x-amz-json-1.1"}]
    headers = AWS.Request.add_headers(additional_headers, headers)

    payload = encode_payload(input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    perform_request(method, url, payload, headers, options, success_status_code)
  end

  defp perform_request(method, url, payload, headers, options, nil) do
    case AWS.HTTP.request(method, url, payload, headers, options) do
      {:ok, %{status_code: status_code, body: body} = response}
      when status_code in [200, 202, 204] ->
        body = if(body != "", do: AWS.JSON.decode!(body))
        {:ok, body, response}

      {:ok, %{body: body}} ->
        {:error, AWS.JSON.decode!(body)}

      error = {:error, _reason} -> error
    end
  end

  defp perform_request(method, url, payload, headers, options, success_status_code) do
    case AWS.HTTP.request(method, url, payload, headers, options) do
      {:ok, %{status_code: ^success_status_code, body: body} = response} ->
        body = if(body != "", do: AWS.JSON.decode!(body))
        {:ok, body, response}

      {:ok, %{body: body}} ->
        {:error, AWS.JSON.decode!(body)}

      error = {:error, _reason} -> error
    end
  end


  defp build_host(_endpoint_prefix, %{region: "local", endpoint: endpoint}) do
    endpoint
  end
  defp build_host(_endpoint_prefix, %{region: "local"}) do
    "localhost"
  end
  defp build_host(endpoint_prefix, %{region: region, endpoint: endpoint}) do
    "#{endpoint_prefix}.#{region}.#{endpoint}"
  end

  defp build_url(host, path, %{:proto => proto, :port => port}) do
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
    if input != nil, do: AWS.JSON.encode!(input), else: ""
  end
end
