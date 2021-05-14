# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.IoTSecureTunneling do
  @moduledoc """
  AWS IoT Secure Tunneling

  AWS IoT Secure Tunnling enables you to create remote connections to devices
  deployed in the field.

  For more information about how AWS IoT Secure Tunneling works, see [AWS IoT Secure
  Tunneling](https://docs.aws.amazon.com/iot/latest/developerguide/secure-tunneling.html).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2018-10-05",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "api.tunneling.iot",
      global?: false,
      protocol: "json",
      service_id: "IoTSecureTunneling",
      signature_version: "v4",
      signing_name: "IoTSecuredTunneling",
      target_prefix: "IoTSecuredTunneling"
    }
  end

  @doc """
  Closes a tunnel identified by the unique tunnel id.

  When a `CloseTunnel` request is received, we close the WebSocket connections
  between the client and proxy server so no data can be transmitted.
  """
  def close_tunnel(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CloseTunnel", input, options)
  end

  @doc """
  Gets information about a tunnel identified by the unique tunnel id.
  """
  def describe_tunnel(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeTunnel", input, options)
  end

  @doc """
  Lists the tags for the specified resource.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListTagsForResource", input, options)
  end

  @doc """
  List all tunnels for an AWS account.

  Tunnels are listed by creation time in descending order, newer tunnels will be
  listed before older tunnels.
  """
  def list_tunnels(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListTunnels", input, options)
  end

  @doc """
  Creates a new tunnel, and returns two client access tokens for clients to use to
  connect to the AWS IoT Secure Tunneling proxy server.
  """
  def open_tunnel(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "OpenTunnel", input, options)
  end

  @doc """
  A resource tag.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "TagResource", input, options)
  end

  @doc """
  Removes a tag from a resource.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UntagResource", input, options)
  end
end
