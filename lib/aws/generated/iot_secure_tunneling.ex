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

  @typedoc """

  ## Example:
      
      close_tunnel_request() :: %{
        optional("delete") => boolean()
      }
      
  """
  @type close_tunnel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      close_tunnel_response() :: %{}
      
  """
  @type close_tunnel_response() :: %{}

  @typedoc """

  ## Example:
      
      connection_state() :: %{
        "lastUpdatedAt" => non_neg_integer(),
        "status" => list(any())
      }
      
  """
  @type connection_state() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_tunnel_request() :: %{}
      
  """
  @type describe_tunnel_request() :: %{}

  @typedoc """

  ## Example:
      
      describe_tunnel_response() :: %{
        "tunnel" => tunnel()
      }
      
  """
  @type describe_tunnel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      destination_config() :: %{
        "services" => list(String.t()()),
        "thingName" => String.t()
      }
      
  """
  @type destination_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("resourceArn") => String.t()
      }
      
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "tags" => list(tag()())
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tunnels_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("thingName") => String.t()
      }
      
  """
  @type list_tunnels_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tunnels_response() :: %{
        "nextToken" => String.t(),
        "tunnelSummaries" => list(tunnel_summary()())
      }
      
  """
  @type list_tunnels_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      open_tunnel_request() :: %{
        optional("description") => String.t(),
        optional("destinationConfig") => destination_config(),
        optional("tags") => list(tag()()),
        optional("timeoutConfig") => timeout_config()
      }
      
  """
  @type open_tunnel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      open_tunnel_response() :: %{
        "destinationAccessToken" => String.t(),
        "sourceAccessToken" => String.t(),
        "tunnelArn" => String.t(),
        "tunnelId" => String.t()
      }
      
  """
  @type open_tunnel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rotate_tunnel_access_token_request() :: %{
        optional("destinationConfig") => destination_config(),
        required("clientMode") => list(any())
      }
      
  """
  @type rotate_tunnel_access_token_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rotate_tunnel_access_token_response() :: %{
        "destinationAccessToken" => String.t(),
        "sourceAccessToken" => String.t(),
        "tunnelArn" => String.t()
      }
      
  """
  @type rotate_tunnel_access_token_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag() :: %{
        "key" => String.t(),
        "value" => String.t()
      }
      
  """
  @type tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("resourceArn") => String.t(),
        required("tags") => list(tag()())
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      timeout_config() :: %{
        "maxLifetimeTimeoutMinutes" => integer()
      }
      
  """
  @type timeout_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tunnel() :: %{
        "createdAt" => non_neg_integer(),
        "description" => String.t(),
        "destinationConfig" => destination_config(),
        "destinationConnectionState" => connection_state(),
        "lastUpdatedAt" => non_neg_integer(),
        "sourceConnectionState" => connection_state(),
        "status" => list(any()),
        "tags" => list(tag()()),
        "timeoutConfig" => timeout_config(),
        "tunnelArn" => String.t(),
        "tunnelId" => String.t()
      }
      
  """
  @type tunnel() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tunnel_summary() :: %{
        "createdAt" => non_neg_integer(),
        "description" => String.t(),
        "lastUpdatedAt" => non_neg_integer(),
        "status" => list(any()),
        "tunnelArn" => String.t(),
        "tunnelId" => String.t()
      }
      
  """
  @type tunnel_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("resourceArn") => String.t(),
        required("tagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @type close_tunnel_errors() :: resource_not_found_exception()

  @type describe_tunnel_errors() :: resource_not_found_exception()

  @type list_tags_for_resource_errors() :: resource_not_found_exception()

  @type open_tunnel_errors() :: limit_exceeded_exception()

  @type rotate_tunnel_access_token_errors() :: resource_not_found_exception()

  @type tag_resource_errors() :: resource_not_found_exception()

  @type untag_resource_errors() :: resource_not_found_exception()

  def metadata do
    %{
      api_version: "2018-10-05",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "api.tunneling.iot",
      global?: false,
      hostname: nil,
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
  @spec close_tunnel(map(), close_tunnel_request(), list()) ::
          {:ok, close_tunnel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, close_tunnel_errors()}
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
  @spec describe_tunnel(map(), describe_tunnel_request(), list()) ::
          {:ok, describe_tunnel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_tunnel_errors()}
  def describe_tunnel(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeTunnel", input, options)
  end

  @doc """
  Lists the tags for the specified resource.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_request(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
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
  @spec list_tunnels(map(), list_tunnels_request(), list()) ::
          {:ok, list_tunnels_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec open_tunnel(map(), open_tunnel_request(), list()) ::
          {:ok, open_tunnel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, open_tunnel_errors()}
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
  @spec rotate_tunnel_access_token(map(), rotate_tunnel_access_token_request(), list()) ::
          {:ok, rotate_tunnel_access_token_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, rotate_tunnel_access_token_errors()}
  def rotate_tunnel_access_token(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RotateTunnelAccessToken", input, options)
  end

  @doc """
  A resource tag.
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Removes a tag from a resource.
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end
end
