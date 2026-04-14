# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Interconnect do
  @moduledoc """
  Provides managed connections between your AWS network resources and select
  partner network resources.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      get_connection_request() :: %{
        required("identifier") => String.t() | atom()
      }
      
  """
  @type get_connection_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_connection_request() :: %{
        optional("bandwidth") => String.t() | atom(),
        optional("clientToken") => [String.t() | atom()],
        optional("description") => String.t() | atom(),
        required("identifier") => String.t() | atom()
      }
      
  """
  @type update_connection_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      interconnect_server_exception() :: %{
        "message" => [String.t() | atom()]
      }
      
  """
  @type interconnect_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("arn") => String.t() | atom(),
        required("tags") => map()
      }
      
  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_connection_proposal_request() :: %{
        required("activationKey") => String.t() | atom()
      }
      
  """
  @type describe_connection_proposal_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_attach_points_response() :: %{
        "attachPoints" => list(attach_point_descriptor()),
        "nextToken" => String.t() | atom()
      }
      
  """
  @type list_attach_points_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      accept_connection_proposal_request() :: %{
        optional("clientToken") => [String.t() | atom()],
        optional("description") => String.t() | atom(),
        optional("tags") => map(),
        required("activationKey") => String.t() | atom(),
        required("attachPoint") => list()
      }
      
  """
  @type accept_connection_proposal_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      list_attach_points_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        required("environmentId") => String.t() | atom()
      }
      
  """
  @type list_attach_points_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_connection_response() :: %{
        "connection" => connection()
      }
      
  """
  @type get_connection_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_connections_response() :: %{
        "connections" => list(connection_summary()),
        "nextToken" => String.t() | atom()
      }
      
  """
  @type list_connections_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_environment_request() :: %{
        required("id") => String.t() | atom()
      }
      
  """
  @type get_environment_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_environment_response() :: %{
        "environment" => environment()
      }
      
  """
  @type get_environment_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("arn") => String.t() | atom(),
        required("tagKeys") => list(String.t() | atom())
      }
      
  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      bandwidths() :: %{
        "available" => list(String.t() | atom()),
        "supported" => list(String.t() | atom())
      }
      
  """
  @type bandwidths() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_connections_request() :: %{
        optional("attachPoint") => list(),
        optional("environmentId") => String.t() | atom(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("provider") => list(),
        optional("state") => list(any())
      }
      
  """
  @type list_connections_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      interconnect_validation_exception() :: %{
        "message" => [String.t() | atom()]
      }
      
  """
  @type interconnect_validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => [String.t() | atom()]
      }
      
  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      environment() :: %{
        "activationPageUrl" => [String.t() | atom()],
        "bandwidths" => bandwidths(),
        "environmentId" => String.t() | atom(),
        "location" => String.t() | atom(),
        "provider" => list(),
        "remoteIdentifierType" => list(any()),
        "state" => list(any()),
        "type" => String.t() | atom()
      }
      
  """
  @type environment() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      connection() :: %{
        "activationKey" => String.t() | atom(),
        "arn" => String.t() | atom(),
        "attachPoint" => list(),
        "bandwidth" => String.t() | atom(),
        "billingTier" => integer(),
        "description" => String.t() | atom(),
        "environmentId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "location" => String.t() | atom(),
        "ownerAccount" => String.t() | atom(),
        "provider" => list(),
        "sharedId" => String.t() | atom(),
        "state" => list(any()),
        "tags" => map(),
        "type" => String.t() | atom()
      }
      
  """
  @type connection() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "message" => [String.t() | atom()]
      }
      
  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_connection_proposal_response() :: %{
        "bandwidth" => String.t() | atom(),
        "environmentId" => String.t() | atom(),
        "location" => String.t() | atom(),
        "provider" => list()
      }
      
  """
  @type describe_connection_proposal_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "tags" => map()
      }
      
  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_environments_request() :: %{
        optional("location") => String.t() | atom(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("provider") => list()
      }
      
  """
  @type list_environments_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_connection_response() :: %{
        "connection" => connection()
      }
      
  """
  @type update_connection_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "message" => [String.t() | atom()]
      }
      
  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      accept_connection_proposal_response() :: %{
        "connection" => connection()
      }
      
  """
  @type accept_connection_proposal_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      attach_point_descriptor() :: %{
        "identifier" => [String.t() | atom()],
        "name" => [String.t() | atom()],
        "type" => list(any())
      }
      
  """
  @type attach_point_descriptor() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      connection_summary() :: %{
        "arn" => String.t() | atom(),
        "attachPoint" => list(),
        "bandwidth" => String.t() | atom(),
        "billingTier" => integer(),
        "description" => String.t() | atom(),
        "environmentId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "location" => String.t() | atom(),
        "provider" => list(),
        "sharedId" => String.t() | atom(),
        "state" => list(any()),
        "type" => String.t() | atom()
      }
      
  """
  @type connection_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      interconnect_client_exception() :: %{
        "message" => [String.t() | atom()]
      }
      
  """
  @type interconnect_client_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_connection_response() :: %{
        "connection" => connection()
      }
      
  """
  @type delete_connection_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("arn") => String.t() | atom()
      }
      
  """
  @type list_tags_for_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "message" => [String.t() | atom()]
      }
      
  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_environments_response() :: %{
        "environments" => list(environment()),
        "nextToken" => [String.t() | atom()]
      }
      
  """
  @type list_environments_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_connection_response() :: %{
        "connection" => connection()
      }
      
  """
  @type create_connection_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_connection_request() :: %{
        optional("clientToken") => [String.t() | atom()],
        required("identifier") => String.t() | atom()
      }
      
  """
  @type delete_connection_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_connection_request() :: %{
        optional("clientToken") => [String.t() | atom()],
        optional("description") => String.t() | atom(),
        optional("remoteAccount") => list(),
        optional("tags") => map(),
        required("attachPoint") => list(),
        required("bandwidth") => String.t() | atom(),
        required("environmentId") => String.t() | atom()
      }
      
  """
  @type create_connection_request() :: %{(String.t() | atom()) => any()}

  def metadata do
    %{
      api_version: "2022-07-26",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "interconnect",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Interconnect",
      signature_version: "v4",
      signing_name: "interconnect",
      target_prefix: "Interconnect"
    }
  end

  @doc """
  Accepts a connection proposal which was generated at a supported partner's
  portal.

  The proposal contains the Environment and bandwidth that were chosen on the
  partner's portal and cannot be modified.

  Upon accepting the proposal a connection will be made between the AWS network as
  accessed via the selected Attach Point and the network previously selected
  network on the partner's portal.
  """
  @spec accept_connection_proposal(map(), accept_connection_proposal_request(), list()) ::
          {:ok, accept_connection_proposal_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def accept_connection_proposal(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AcceptConnectionProposal", input, options)
  end

  @doc """
  Initiates the process to create a Connection across the specified Environment.

  The Environment dictates the specified partner and location to which the other
  end of the connection should attach. You can see a list of the available
  Environments by calling `ListEnvironments`

  The Attach Point specifies where within the AWS Network your connection will
  logically connect.

  After a successful call to this method, the resulting `Connection` will return
  an Activation Key which will need to be brought to the specific partner's portal
  to confirm the `Connection` on both sides. (See `Environment$activationPageUrl`
  for a direct link to the partner portal).
  """
  @spec create_connection(map(), create_connection_request(), list()) ::
          {:ok, create_connection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def create_connection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateConnection", input, options)
  end

  @doc """
  Deletes an existing Connection with the supplied identifier.

  This operation will also inform the remote partner of your intention to delete
  your connection. Note, the partner may still require you to delete to fully
  clean up resources, but the network connectivity provided by the `Connection`
  will cease to exist.
  """
  @spec delete_connection(map(), delete_connection_request(), list()) ::
          {:ok, delete_connection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def delete_connection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteConnection", input, options)
  end

  @doc """
  Describes the details of a connection proposal generated at a partner's portal.
  """
  @spec describe_connection_proposal(map(), describe_connection_proposal_request(), list()) ::
          {:ok, describe_connection_proposal_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def describe_connection_proposal(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeConnectionProposal", input, options)
  end

  @doc """
  Describes the current state of a Connection resource as specified by the
  identifier.
  """
  @spec get_connection(map(), get_connection_request(), list()) ::
          {:ok, get_connection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def get_connection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetConnection", input, options)
  end

  @doc """
  Describes a specific `Environment`
  """
  @spec get_environment(map(), get_environment_request(), list()) ::
          {:ok, get_environment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def get_environment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetEnvironment", input, options)
  end

  @doc """
  Lists all Attach Points the caller has access to that are valid for the
  specified `Environment`.
  """
  @spec list_attach_points(map(), list_attach_points_request(), list()) ::
          {:ok, list_attach_points_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def list_attach_points(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAttachPoints", input, options)
  end

  @doc """
  Lists all connection objects to which the caller has access.

  Allows for optional filtering by the following properties:

    * `state`

    * `environmentId`

    * `provider`

    * `attach point`

  Only `Connection` objects matching all filters will be returned.
  """
  @spec list_connections(map(), list_connections_request(), list()) ::
          {:ok, list_connections_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def list_connections(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListConnections", input, options)
  end

  @doc """
  Lists all of the environments that can produce connections that will land in the
  called AWS region.
  """
  @spec list_environments(map(), list_environments_request(), list()) ::
          {:ok, list_environments_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def list_environments(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListEnvironments", input, options)
  end

  @doc """
  List all current tags on the specified resource.

  Currently this supports `Connection` resources.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_request(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Add new tags to the specified resource.
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Removes tags from the specified resource.
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Modifies an existing connection.

  Currently we support modifications to the connection's description and/or
  bandwidth.
  """
  @spec update_connection(map(), update_connection_request(), list()) ::
          {:ok, update_connection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def update_connection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateConnection", input, options)
  end
end
