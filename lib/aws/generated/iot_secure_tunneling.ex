# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.IoTSecureTunneling do
  @moduledoc """
  IoT Secure Tunneling

  IoT Secure Tunneling creates remote connections to devices deployed in the
  field.

  For more information about how IoT Secure Tunneling works, see [IoT Secure
  Tunneling](https://docs.aws.amazon.com/iot/latest/developerguide/secure-tunneling.html).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      api_version: "2018-10-05",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "api.tunneling.iot",
      global?: false,
      protocol: "json",
      service_id: "IoTSecureTunneling",
      signature_version: "v4",
      signing_name: "tunneling.iot",
      target_prefix: "IoTSecuredTunneling"
    }
  end

  @doc """
  Closes a tunnel identified by the unique tunnel id.

  When a `CloseTunnel`
  request is received, we close the WebSocket connections between the client and
  proxy
  server so no data can be transmitted.

  Requires permission to access the
  [CloseTunnel](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def close_tunnel(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CloseTunnel", input, options)
  end

  @doc """
  Gets information about a tunnel identified by the unique tunnel id.

  Requires permission to access the
  [DescribeTunnel](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def describe_tunnel(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeTunnel", input, options)
  end

  @doc """
  Lists the tags for the specified resource.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  List all tunnels for an Amazon Web Services account.

  Tunnels are listed by creation time in
  descending order, newer tunnels will be listed before older tunnels.

  Requires permission to access the
  [ListTunnels](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def list_tunnels(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTunnels", input, options)
  end

  @doc """
  Creates a new tunnel, and returns two client access tokens for clients to use to
  connect to the IoT Secure Tunneling proxy server.

  Requires permission to access the
  [OpenTunnel](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def open_tunnel(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "OpenTunnel", input, options)
  end

  @doc """
  Revokes the current client access token (CAT) and returns new CAT for clients to
  use when reconnecting to secure tunneling to access the same tunnel.

  Requires permission to access the
  [RotateTunnelAccessToken](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.

  Rotating the CAT doesn't extend the tunnel duration. For example, say the tunnel
  duration is 12 hours and the tunnel has already been open for 4 hours. When you
  rotate the access tokens, the new tokens that are generated can only be used for
  the
  remaining 8 hours.
  """
  def rotate_tunnel_access_token(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RotateTunnelAccessToken", input, options)
  end

  @doc """
  A resource tag.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Removes a tag from a resource.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end
end
