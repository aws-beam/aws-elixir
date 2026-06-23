# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.LambdaCore do
  @moduledoc """
  AWS Lambda Core is a set of APIs for managing shared infrastructure resources
  used by AWS Lambda.

  The Lambda Core API provides operations for creating and managing network
  connectors that enable Lambda MicroVMs to access resources in your Amazon
  Virtual Private Cloud (Amazon VPC).

  Network connectors provision elastic network interfaces (ENIs) in your VPC
  subnets, providing a managed network path from Lambda compute environments to
  private resources such as Amazon RDS databases, Amazon ElastiCache clusters, and
  internal APIs. You create a network connector once and attach it to one or more
  Lambda MicroVMs at run time.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      create_network_connector_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        optional("OperatorRole") => String.t() | atom(),
        optional("Tags") => map(),
        required("Configuration") => list(),
        required("Name") => String.t() | atom()
      }

  """
  @type create_network_connector_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_network_connector_response() :: %{
        "Arn" => String.t() | atom(),
        "Configuration" => list(),
        "Id" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "OperatorRole" => String.t() | atom(),
        "State" => list(any())
      }

  """
  @type create_network_connector_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_network_connector_request() :: %{}

  """
  @type delete_network_connector_request() :: %{}

  @typedoc """

  ## Example:

      delete_network_connector_response() :: %{
        "Arn" => String.t() | atom(),
        "Configuration" => list(),
        "Id" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "OperatorRole" => String.t() | atom(),
        "State" => list(any())
      }

  """
  @type delete_network_connector_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_network_connector_request() :: %{}

  """
  @type get_network_connector_request() :: %{}

  @typedoc """

  ## Example:

      get_network_connector_response() :: %{
        "Arn" => String.t() | atom(),
        "Configuration" => list(),
        "Id" => String.t() | atom(),
        "LastModified" => non_neg_integer(),
        "LastUpdateStatus" => list(any()),
        "LastUpdateStatusReason" => String.t() | atom(),
        "LastUpdateStatusReasonCode" => list(any()),
        "Name" => String.t() | atom(),
        "OperatorRole" => String.t() | atom(),
        "State" => list(any()),
        "StateReason" => String.t() | atom(),
        "StateReasonCode" => list(any()),
        "Version" => float()
      }

  """
  @type get_network_connector_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invalid_parameter_value_exception() :: %{
        "Type" => String.t() | atom(),
        "message" => String.t() | atom()
      }

  """
  @type invalid_parameter_value_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_network_connectors_request() :: %{
        optional("Marker") => String.t() | atom(),
        optional("MaxItems") => integer(),
        optional("State") => list(any())
      }

  """
  @type list_network_connectors_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_network_connectors_response() :: %{
        "NetworkConnectors" => list(network_connector_summary()),
        "NextMarker" => String.t() | atom()
      }

  """
  @type list_network_connectors_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      network_connector_limit_exceeded_exception() :: %{
        "Type" => String.t() | atom(),
        "message" => String.t() | atom()
      }

  """
  @type network_connector_limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      network_connector_summary() :: %{
        "Arn" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "LastModified" => non_neg_integer(),
        "Name" => String.t() | atom(),
        "State" => list(any()),
        "Type" => list(any())
      }

  """
  @type network_connector_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      network_connector_vpc_egress_configuration() :: %{
        "AssociatedComputeResourceTypes" => list(list(any())()),
        "NetworkProtocol" => list(any()),
        "SecurityGroupIds" => list(String.t() | atom()),
        "SubnetIds" => list(String.t() | atom())
      }

  """
  @type network_connector_vpc_egress_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_conflict_exception() :: %{
        "Type" => String.t() | atom(),
        "message" => String.t() | atom()
      }

  """
  @type resource_conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Message" => String.t() | atom(),
        "Type" => String.t() | atom()
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_exception() :: %{
        "Message" => String.t() | atom(),
        "Type" => String.t() | atom()
      }

  """
  @type service_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      too_many_requests_exception() :: %{
        "Reason" => list(any()),
        "Type" => String.t() | atom(),
        "message" => String.t() | atom(),
        "retryAfterSeconds" => String.t() | atom()
      }

  """
  @type too_many_requests_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_network_connector_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        optional("Configuration") => list(),
        optional("OperatorRole") => String.t() | atom()
      }

  """
  @type update_network_connector_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_network_connector_response() :: %{
        "Arn" => String.t() | atom(),
        "Configuration" => list(),
        "Id" => String.t() | atom(),
        "LastModified" => non_neg_integer(),
        "LastUpdateStatus" => list(any()),
        "LastUpdateStatusReason" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "OperatorRole" => String.t() | atom(),
        "State" => list(any())
      }

  """
  @type update_network_connector_response() :: %{(String.t() | atom()) => any()}

  @type create_network_connector_errors() ::
          too_many_requests_exception()
          | service_exception()
          | resource_conflict_exception()
          | network_connector_limit_exceeded_exception()
          | invalid_parameter_value_exception()

  @type delete_network_connector_errors() ::
          too_many_requests_exception()
          | service_exception()
          | resource_not_found_exception()
          | resource_conflict_exception()
          | invalid_parameter_value_exception()

  @type get_network_connector_errors() ::
          too_many_requests_exception()
          | service_exception()
          | resource_not_found_exception()
          | invalid_parameter_value_exception()

  @type list_network_connectors_errors() ::
          too_many_requests_exception()
          | service_exception()
          | invalid_parameter_value_exception()

  @type update_network_connector_errors() ::
          too_many_requests_exception()
          | service_exception()
          | resource_not_found_exception()
          | resource_conflict_exception()
          | invalid_parameter_value_exception()

  def metadata do
    %{
      api_version: "2026-04-30",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "lambda",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Lambda Core",
      signature_version: "v4",
      signing_name: "lambda",
      target_prefix: nil
    }
  end

  @doc """
  Creates a network connector that enables Lambda compute resources to route
  outbound traffic through your Amazon VPC.

  The network connector provisions elastic network interfaces (ENIs) in the
  subnets you specify, providing a managed network path to private resources such
  as databases, caches, and internal APIs.

  This operation is asynchronous. The network connector starts in `PENDING` state
  while ENIs are provisioned in your VPC (provisioning typically takes up to 10
  minutes). Use `GetNetworkConnector` to poll the connector state until it reaches
  `ACTIVE`. Once active, you can attach the connector to Lambda MicroVMs at run
  time using the `egressNetworkConnectors` parameter on `RunMicroVm`.

  This operation is idempotent when you provide a `ClientToken` — if you retry a
  request that completed successfully using the same client token, the operation
  returns the existing connector without creating a duplicate.
  """
  @spec create_network_connector(map(), create_network_connector_request(), list()) ::
          {:ok, create_network_connector_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_network_connector_errors()}
  def create_network_connector(%Client{} = client, input, options \\ []) do
    url_path = "/2026-04-04/network-connectors"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      202
    )
  end

  @doc """
  Initiates deletion of a network connector.

  The connector transitions to `DELETING` state while elastic network interfaces
  are cleaned up asynchronously. After deletion completes, subsequent calls to
  `GetNetworkConnector` return `ResourceNotFoundException`.

  This operation is idempotent — calling delete on a connector that is already
  deleting or has been deleted succeeds without error. You can delete connectors
  in `ACTIVE` or `FAILED` states. Before deleting a connector, ensure that no
  Lambda MicroVMs are using it, as they will lose VPC egress connectivity
  immediately.
  """
  @spec delete_network_connector(
          map(),
          String.t() | atom(),
          delete_network_connector_request(),
          list()
        ) ::
          {:ok, delete_network_connector_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_network_connector_errors()}
  def delete_network_connector(%Client{} = client, identifier, input, options \\ []) do
    url_path = "/2026-04-04/network-connectors/#{AWS.Util.encode_uri(identifier)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      202
    )
  end

  @doc """
  Retrieves the current configuration, state, and metadata of a network connector.

  The `Identifier` parameter accepts the connector ID, name, or full ARN. Use this
  operation to poll connector state after creation or update, or to inspect the
  current VPC configuration and any failure reasons.

  The response includes the full connector configuration, current state, and — if
  the connector has been updated — the `LastUpdateStatus` and
  `LastUpdateStatusReasonCode` fields that indicate whether the most recent update
  succeeded or failed.
  """
  @spec get_network_connector(map(), String.t() | atom(), list()) ::
          {:ok, get_network_connector_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_network_connector_errors()}
  def get_network_connector(%Client{} = client, identifier, options \\ []) do
    url_path = "/2026-04-04/network-connectors/#{AWS.Util.encode_uri(identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a paginated list of network connectors in your account for the current
  Region.

  You can optionally filter results by connector state. Use the `Marker` parameter
  from a previous response to retrieve the next page of results.

  Each item in the response includes the connector ARN, name, ID, type, current
  state, and last modified timestamp. To retrieve full configuration details for a
  specific connector, use `GetNetworkConnector`.
  """
  @spec list_network_connectors(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_network_connectors_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_network_connectors_errors()}
  def list_network_connectors(
        %Client{} = client,
        marker \\ nil,
        max_items \\ nil,
        state \\ nil,
        options \\ []
      ) do
    url_path = "/2026-04-04/network-connectors"
    headers = []
    query_params = []

    query_params =
      if !is_nil(state) do
        [{"State", state} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Updates the VPC configuration or operator role of an existing network connector.

  You can modify the subnet IDs, security group IDs, network protocol, or operator
  role. The connector must be in `ACTIVE` state to accept updates.

  This operation is asynchronous. The connector remains in `ACTIVE` state during
  the update — existing workloads that reference this connector are not disrupted.
  Use `GetNetworkConnector` to monitor the `LastUpdateStatus` field, which
  transitions through `InProgress` to `Successful` or `Failed`. If the update
  fails, the `LastUpdateStatusReasonCode` field provides a specific error code for
  troubleshooting. This operation is idempotent when you provide a `ClientToken`.
  """
  @spec update_network_connector(
          map(),
          String.t() | atom(),
          update_network_connector_request(),
          list()
        ) ::
          {:ok, update_network_connector_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_network_connector_errors()}
  def update_network_connector(%Client{} = client, identifier, input, options \\ []) do
    url_path = "/2026-04-04/network-connectors/#{AWS.Util.encode_uri(identifier)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      202
    )
  end
end
