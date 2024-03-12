# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.IoTRoboRunner do
  @moduledoc """
  An example service, deployed with the Octane Service creator,
  which will echo the string
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
  list_destinations_response() :: %{
    optional("destinations") => list(destination()()),
    optional("nextToken") => String.t()
  }
  """
  @type list_destinations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_destination_response() :: %{
    required("arn") => String.t(),
    required("createdAt") => non_neg_integer(),
    required("id") => String.t(),
    required("state") => String.t(),
    required("updatedAt") => non_neg_integer()
  }
  """
  @type create_destination_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_destination_request() :: %{
    optional("additionalFixedProperties") => String.t(),
    optional("clientToken") => String.t(),
    optional("state") => String.t(),
    required("name") => String.t(),
    required("site") => String.t()
  }
  """
  @type create_destination_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_destination_response() :: %{
    optional("additionalFixedProperties") => String.t(),
    required("arn") => String.t(),
    required("createdAt") => non_neg_integer(),
    required("id") => String.t(),
    required("name") => String.t(),
    required("site") => String.t(),
    required("state") => String.t(),
    required("updatedAt") => non_neg_integer()
  }
  """
  @type get_destination_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_worker_fleet_response() :: %{

  }
  """
  @type delete_worker_fleet_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_worker_request() :: %{
    required("id") => String.t()
  }
  """
  @type get_worker_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_worker_request() :: %{
    optional("additionalFixedProperties") => String.t(),
    optional("additionalTransientProperties") => String.t(),
    optional("name") => String.t(),
    optional("orientation") => list(),
    optional("position") => list(),
    optional("vendorProperties") => vendor_properties(),
    required("id") => String.t()
  }
  """
  @type update_worker_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_site_response() :: %{

  }
  """
  @type delete_site_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_workers_request() :: %{
    optional("fleet") => String.t(),
    optional("maxResults") => integer(),
    optional("nextToken") => String.t(),
    required("site") => String.t()
  }
  """
  @type list_workers_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_worker_fleets_request() :: %{
    optional("maxResults") => integer(),
    optional("nextToken") => String.t(),
    required("site") => String.t()
  }
  """
  @type list_worker_fleets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_worker_fleets_response() :: %{
    optional("nextToken") => String.t(),
    optional("workerFleets") => list(worker_fleet()())
  }
  """
  @type list_worker_fleets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_site_request() :: %{
    optional("clientToken") => String.t(),
    optional("description") => String.t(),
    required("countryCode") => String.t(),
    required("name") => String.t()
  }
  """
  @type create_site_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_worker_request() :: %{
    required("id") => String.t()
  }
  """
  @type delete_worker_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_site_response() :: %{
    optional("countryCode") => String.t(),
    optional("description") => String.t(),
    required("arn") => String.t(),
    required("id") => String.t(),
    required("name") => String.t(),
    required("updatedAt") => non_neg_integer()
  }
  """
  @type update_site_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_worker_response() :: %{
    required("arn") => String.t(),
    required("createdAt") => non_neg_integer(),
    required("id") => String.t(),
    required("site") => String.t(),
    required("updatedAt") => non_neg_integer()
  }
  """
  @type create_worker_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  conflict_exception() :: %{
    "message" => [String.t()]
  }
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_worker_response() :: %{

  }
  """
  @type delete_worker_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  resource_not_found_exception() :: %{
    "message" => [String.t()]
  }
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_worker_fleet_response() :: %{
    optional("additionalFixedProperties") => String.t(),
    required("arn") => String.t(),
    required("createdAt") => non_neg_integer(),
    required("id") => String.t(),
    required("name") => String.t(),
    required("site") => String.t(),
    required("updatedAt") => non_neg_integer()
  }
  """
  @type get_worker_fleet_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  service_quota_exceeded_exception() :: %{
    "message" => [String.t()]
  }
  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_destination_response() :: %{

  }
  """
  @type delete_destination_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  cartesian_coordinates() :: %{
    "x" => [float()],
    "y" => [float()],
    "z" => [float()]
  }
  """
  @type cartesian_coordinates() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_worker_fleet_response() :: %{
    required("arn") => String.t(),
    required("createdAt") => non_neg_integer(),
    required("id") => String.t(),
    required("updatedAt") => non_neg_integer()
  }
  """
  @type create_worker_fleet_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_site_request() :: %{
    required("id") => String.t()
  }
  """
  @type delete_site_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  site() :: %{
    "arn" => String.t(),
    "countryCode" => String.t(),
    "createdAt" => non_neg_integer(),
    "name" => String.t()
  }
  """
  @type site() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  vendor_properties() :: %{
    "vendorAdditionalFixedProperties" => String.t(),
    "vendorAdditionalTransientProperties" => String.t(),
    "vendorWorkerId" => String.t(),
    "vendorWorkerIpAddress" => String.t()
  }
  """
  @type vendor_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_destinations_request() :: %{
    optional("maxResults") => integer(),
    optional("nextToken") => String.t(),
    optional("state") => String.t(),
    required("site") => String.t()
  }
  """
  @type list_destinations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_site_request() :: %{
    required("id") => String.t()
  }
  """
  @type get_site_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_worker_fleet_response() :: %{
    optional("additionalFixedProperties") => String.t(),
    required("arn") => String.t(),
    required("id") => String.t(),
    required("name") => String.t(),
    required("updatedAt") => non_neg_integer()
  }
  """
  @type update_worker_fleet_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_destination_request() :: %{
    required("id") => String.t()
  }
  """
  @type delete_destination_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_site_response() :: %{
    optional("description") => String.t(),
    required("arn") => String.t(),
    required("countryCode") => String.t(),
    required("createdAt") => non_neg_integer(),
    required("id") => String.t(),
    required("name") => String.t(),
    required("updatedAt") => non_neg_integer()
  }
  """
  @type get_site_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_sites_response() :: %{
    optional("nextToken") => String.t(),
    optional("sites") => list(site()())
  }
  """
  @type list_sites_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  internal_server_exception() :: %{
    "message" => [String.t()]
  }
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_destination_request() :: %{
    optional("additionalFixedProperties") => String.t(),
    optional("name") => String.t(),
    optional("state") => String.t(),
    required("id") => String.t()
  }
  """
  @type update_destination_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_worker_response() :: %{
    optional("additionalFixedProperties") => String.t(),
    optional("additionalTransientProperties") => String.t(),
    optional("orientation") => list(),
    optional("position") => list(),
    optional("vendorProperties") => vendor_properties(),
    required("arn") => String.t(),
    required("createdAt") => non_neg_integer(),
    required("fleet") => String.t(),
    required("id") => String.t(),
    required("name") => String.t(),
    required("site") => String.t(),
    required("updatedAt") => non_neg_integer()
  }
  """
  @type get_worker_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_site_request() :: %{
    optional("countryCode") => String.t(),
    optional("description") => String.t(),
    optional("name") => String.t(),
    required("id") => String.t()
  }
  """
  @type update_site_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_worker_fleet_request() :: %{
    required("id") => String.t()
  }
  """
  @type get_worker_fleet_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_workers_response() :: %{
    optional("nextToken") => String.t(),
    optional("workers") => list(worker()())
  }
  """
  @type list_workers_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  access_denied_exception() :: %{
    "message" => [String.t()]
  }
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_worker_fleet_request() :: %{
    optional("additionalFixedProperties") => String.t(),
    optional("clientToken") => String.t(),
    required("name") => String.t(),
    required("site") => String.t()
  }
  """
  @type create_worker_fleet_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_destination_request() :: %{
    required("id") => String.t()
  }
  """
  @type get_destination_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  validation_exception() :: %{
    "message" => [String.t()]
  }
  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  destination() :: %{
    "additionalFixedProperties" => String.t(),
    "arn" => String.t(),
    "createdAt" => non_neg_integer(),
    "id" => String.t(),
    "name" => String.t(),
    "site" => String.t(),
    "state" => String.t(),
    "updatedAt" => non_neg_integer()
  }
  """
  @type destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_destination_response() :: %{
    optional("additionalFixedProperties") => String.t(),
    required("arn") => String.t(),
    required("id") => String.t(),
    required("name") => String.t(),
    required("state") => String.t(),
    required("updatedAt") => non_neg_integer()
  }
  """
  @type update_destination_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  throttling_exception() :: %{
    "message" => [String.t()]
  }
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  worker_fleet() :: %{
    "additionalFixedProperties" => String.t(),
    "arn" => String.t(),
    "createdAt" => non_neg_integer(),
    "id" => String.t(),
    "name" => String.t(),
    "site" => String.t(),
    "updatedAt" => non_neg_integer()
  }
  """
  @type worker_fleet() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  worker() :: %{
    "additionalFixedProperties" => String.t(),
    "additionalTransientProperties" => String.t(),
    "arn" => String.t(),
    "createdAt" => non_neg_integer(),
    "fleet" => String.t(),
    "id" => String.t(),
    "name" => String.t(),
    "orientation" => list(),
    "position" => list(),
    "site" => String.t(),
    "updatedAt" => non_neg_integer(),
    "vendorProperties" => vendor_properties()
  }
  """
  @type worker() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_worker_response() :: %{
    optional("additionalFixedProperties") => String.t(),
    optional("additionalTransientProperties") => String.t(),
    optional("orientation") => list(),
    optional("position") => list(),
    optional("vendorProperties") => vendor_properties(),
    required("arn") => String.t(),
    required("fleet") => String.t(),
    required("id") => String.t(),
    required("name") => String.t(),
    required("updatedAt") => non_neg_integer()
  }
  """
  @type update_worker_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_worker_fleet_request() :: %{
    optional("additionalFixedProperties") => String.t(),
    optional("name") => String.t(),
    required("id") => String.t()
  }
  """
  @type update_worker_fleet_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_worker_request() :: %{
    optional("additionalFixedProperties") => String.t(),
    optional("additionalTransientProperties") => String.t(),
    optional("clientToken") => String.t(),
    optional("orientation") => list(),
    optional("position") => list(),
    optional("vendorProperties") => vendor_properties(),
    required("fleet") => String.t(),
    required("name") => String.t()
  }
  """
  @type create_worker_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_site_response() :: %{
    required("arn") => String.t(),
    required("createdAt") => non_neg_integer(),
    required("id") => String.t(),
    required("updatedAt") => non_neg_integer()
  }
  """
  @type create_site_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_worker_fleet_request() :: %{
    required("id") => String.t()
  }
  """
  @type delete_worker_fleet_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_sites_request() :: %{
    optional("maxResults") => integer(),
    optional("nextToken") => String.t()
  }
  """
  @type list_sites_request() :: %{String.t() => any()}

  def metadata do
    %{
      api_version: "2018-05-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "iotroborunner",
      global?: false,
      protocol: "rest-json",
      service_id: "IoT RoboRunner",
      signature_version: "v4",
      signing_name: "iotroborunner",
      target_prefix: nil
    }
  end

  @doc """
  Grants permission to create a destination
  """
  @spec create_destination(map(), create_destination_request(), list()) ::
          {:ok, create_destination_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_quota_exceeded_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def create_destination(%Client{} = client, input, options \\ []) do
    url_path = "/createDestination"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Grants permission to create a site
  """
  @spec create_site(map(), create_site_request(), list()) ::
          {:ok, create_site_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, service_quota_exceeded_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def create_site(%Client{} = client, input, options \\ []) do
    url_path = "/createSite"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Grants permission to create a worker
  """
  @spec create_worker(map(), create_worker_request(), list()) ::
          {:ok, create_worker_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_quota_exceeded_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def create_worker(%Client{} = client, input, options \\ []) do
    url_path = "/createWorker"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Grants permission to create a worker fleet
  """
  @spec create_worker_fleet(map(), create_worker_fleet_request(), list()) ::
          {:ok, create_worker_fleet_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_quota_exceeded_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def create_worker_fleet(%Client{} = client, input, options \\ []) do
    url_path = "/createWorkerFleet"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Grants permission to delete a destination
  """
  @spec delete_destination(map(), delete_destination_request(), list()) ::
          {:ok, delete_destination_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def delete_destination(%Client{} = client, input, options \\ []) do
    url_path = "/deleteDestination"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Grants permission to delete a site
  """
  @spec delete_site(map(), delete_site_request(), list()) ::
          {:ok, delete_site_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def delete_site(%Client{} = client, input, options \\ []) do
    url_path = "/deleteSite"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Grants permission to delete a worker
  """
  @spec delete_worker(map(), delete_worker_request(), list()) ::
          {:ok, delete_worker_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def delete_worker(%Client{} = client, input, options \\ []) do
    url_path = "/deleteWorker"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Grants permission to delete a worker fleet
  """
  @spec delete_worker_fleet(map(), delete_worker_fleet_request(), list()) ::
          {:ok, delete_worker_fleet_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def delete_worker_fleet(%Client{} = client, input, options \\ []) do
    url_path = "/deleteWorkerFleet"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Grants permission to get a destination
  """
  @spec get_destination(map(), String.t(), list()) ::
          {:ok, get_destination_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def get_destination(%Client{} = client, id, options \\ []) do
    url_path = "/getDestination"
    headers = []
    query_params = []

    query_params =
      if !is_nil(id) do
        [{"id", id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Grants permission to get a site
  """
  @spec get_site(map(), String.t(), list()) ::
          {:ok, get_site_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def get_site(%Client{} = client, id, options \\ []) do
    url_path = "/getSite"
    headers = []
    query_params = []

    query_params =
      if !is_nil(id) do
        [{"id", id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Grants permission to get a worker
  """
  @spec get_worker(map(), String.t(), list()) ::
          {:ok, get_worker_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def get_worker(%Client{} = client, id, options \\ []) do
    url_path = "/getWorker"
    headers = []
    query_params = []

    query_params =
      if !is_nil(id) do
        [{"id", id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Grants permission to get a worker fleet
  """
  @spec get_worker_fleet(map(), String.t(), list()) ::
          {:ok, get_worker_fleet_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def get_worker_fleet(%Client{} = client, id, options \\ []) do
    url_path = "/getWorkerFleet"
    headers = []
    query_params = []

    query_params =
      if !is_nil(id) do
        [{"id", id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Grants permission to list destinations
  """
  @spec list_destinations(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t(),
          String.t() | nil,
          list()
        ) ::
          {:ok, list_destinations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def list_destinations(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        site,
        state \\ nil,
        options \\ []
      ) do
    url_path = "/listDestinations"
    headers = []
    query_params = []

    query_params =
      if !is_nil(state) do
        [{"state", state} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(site) do
        [{"site", site} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Grants permission to list sites
  """
  @spec list_sites(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_sites_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def list_sites(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/listSites"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Grants permission to list worker fleets
  """
  @spec list_worker_fleets(map(), String.t() | nil, String.t() | nil, String.t(), list()) ::
          {:ok, list_worker_fleets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def list_worker_fleets(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        site,
        options \\ []
      ) do
    url_path = "/listWorkerFleets"
    headers = []
    query_params = []

    query_params =
      if !is_nil(site) do
        [{"site", site} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Grants permission to list workers
  """
  @spec list_workers(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t(),
          list()
        ) ::
          {:ok, list_workers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def list_workers(
        %Client{} = client,
        fleet \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        site,
        options \\ []
      ) do
    url_path = "/listWorkers"
    headers = []
    query_params = []

    query_params =
      if !is_nil(site) do
        [{"site", site} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(fleet) do
        [{"fleet", fleet} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Grants permission to update a destination
  """
  @spec update_destination(map(), update_destination_request(), list()) ::
          {:ok, update_destination_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def update_destination(%Client{} = client, input, options \\ []) do
    url_path = "/updateDestination"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Grants permission to update a site
  """
  @spec update_site(map(), update_site_request(), list()) ::
          {:ok, update_site_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def update_site(%Client{} = client, input, options \\ []) do
    url_path = "/updateSite"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Grants permission to update a worker
  """
  @spec update_worker(map(), update_worker_request(), list()) ::
          {:ok, update_worker_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def update_worker(%Client{} = client, input, options \\ []) do
    url_path = "/updateWorker"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Grants permission to update a worker fleet
  """
  @spec update_worker_fleet(map(), update_worker_fleet_request(), list()) ::
          {:ok, update_worker_fleet_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def update_worker_fleet(%Client{} = client, input, options \\ []) do
    url_path = "/updateWorkerFleet"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end
end
