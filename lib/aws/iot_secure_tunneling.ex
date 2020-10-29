# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.IoTSecureTunneling do
  @moduledoc """
  AWS IoT Secure Tunneling

  AWS IoT Secure Tunnling enables you to create remote connections to devices
  deployed in the field.

  For more information about how AWS IoT Secure Tunneling works, see the
  [User
  Guide](https://docs.aws.amazon.com/secure-tunneling/latest/ug/what-is-secure-tunneling.html).
  """

  @doc """
  Closes a tunnel identified by the unique tunnel id. When a `CloseTunnel`
  request is received, we close the WebSocket connections between the client
  and proxy server so no data can be transmitted.
  """
  def close_tunnel(client, input, options \\ []) do
    request(client, "CloseTunnel", input, options)
  end

  @doc """
  Gets information about a tunnel identified by the unique tunnel id.
  """
  def describe_tunnel(client, input, options \\ []) do
    request(client, "DescribeTunnel", input, options)
  end

  @doc """
  Lists the tags for the specified resource.
  """
  def list_tags_for_resource(client, input, options \\ []) do
    request(client, "ListTagsForResource", input, options)
  end

  @doc """
  List all tunnels for an AWS account. Tunnels are listed by creation time in
  descending order, newer tunnels will be listed before older tunnels.
  """
  def list_tunnels(client, input, options \\ []) do
    request(client, "ListTunnels", input, options)
  end

  @doc """
  Creates a new tunnel, and returns two client access tokens for clients to
  use to connect to the AWS IoT Secure Tunneling proxy server. .
  """
  def open_tunnel(client, input, options \\ []) do
    request(client, "OpenTunnel", input, options)
  end

  @doc """
  A resource tag.
  """
  def tag_resource(client, input, options \\ []) do
    request(client, "TagResource", input, options)
  end

  @doc """
  Removes a tag from a resource.
  """
  def untag_resource(client, input, options \\ []) do
    request(client, "UntagResource", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, action, input, options) do
    client = %{client | service: "IoTSecuredTunneling"}
    host = build_host("api.tunneling.iot", client)
    url = build_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "IoTSecuredTunneling.#{action}"}
    ]

    payload = encode!(client, input)
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    post(client, url, payload, headers, options)
  end

  defp post(client, url, payload, headers, options) do
    case AWS.Client.request(client, :post, url, payload, headers, options) do
      {:ok, %{status_code: 200, body: body} = response} ->
        body = if body != "", do: decode!(client, body)
        {:ok, body, response}

      {:ok, %{body: body}} ->
        {:error, decode!(client, body)}

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

  defp build_url(host, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}/"
  end

  defp encode!(client, payload) do
    AWS.Client.encode!(client, payload, :json)
  end

  defp decode!(client, payload) do
    AWS.Client.decode!(client, payload, :json)
  end
end
