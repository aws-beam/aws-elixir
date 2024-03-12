# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Schemas do
  @moduledoc """
  Amazon EventBridge Schema Registry
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
  tag_resource_request() :: %{
    required("Tags") => map()
  }
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_schema_request() :: %{
    optional("Description") => String.t(),
    optional("Tags") => map(),
    required("Content") => String.t(),
    required("Type") => list(any())
  }
  """
  @type create_schema_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_code_binding_source_request() :: %{
    optional("SchemaVersion") => String.t()
  }
  """
  @type get_code_binding_source_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  unauthorized_exception() :: %{
    "Code" => String.t(),
    "Message" => String.t()
  }
  """
  @type unauthorized_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_code_binding_request() :: %{
    optional("SchemaVersion") => String.t()
  }
  """
  @type describe_code_binding_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  search_schemas_request() :: %{
    optional("Limit") => integer(),
    optional("NextToken") => String.t(),
    required("Keywords") => String.t()
  }
  """
  @type search_schemas_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_schema_request() :: %{
    optional("SchemaVersion") => String.t()
  }
  """
  @type describe_schema_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_schema_request() :: %{

  }
  """
  @type delete_schema_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_registry_request() :: %{

  }
  """
  @type delete_registry_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  forbidden_exception() :: %{
    "Code" => String.t(),
    "Message" => String.t()
  }
  """
  @type forbidden_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_schema_versions_response() :: %{
    "NextToken" => String.t(),
    "SchemaVersions" => list(schema_version_summary()())
  }
  """
  @type list_schema_versions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_registry_response() :: %{
    "Description" => String.t(),
    "RegistryArn" => String.t(),
    "RegistryName" => String.t(),
    "Tags" => map()
  }
  """
  @type create_registry_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_discoverers_request() :: %{
    optional("DiscovererIdPrefix") => String.t(),
    optional("Limit") => integer(),
    optional("NextToken") => String.t(),
    optional("SourceArnPrefix") => String.t()
  }
  """
  @type list_discoverers_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_discoverer_request() :: %{

  }
  """
  @type delete_discoverer_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_discoverer_response() :: %{
    "CrossAccount" => boolean(),
    "Description" => String.t(),
    "DiscovererArn" => String.t(),
    "DiscovererId" => String.t(),
    "SourceArn" => String.t(),
    "State" => list(any()),
    "Tags" => map()
  }
  """
  @type create_discoverer_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_discovered_schema_request() :: %{
    required("Events") => list(String.t()()),
    required("Type") => list(any())
  }
  """
  @type get_discovered_schema_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_resource_policy_response() :: %{
    "Policy" => String.t(),
    "RevisionId" => String.t()
  }
  """
  @type get_resource_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_schema_response() :: %{
    "Content" => String.t(),
    "Description" => String.t(),
    "LastModified" => non_neg_integer(),
    "SchemaArn" => String.t(),
    "SchemaName" => String.t(),
    "SchemaVersion" => String.t(),
    "Tags" => map(),
    "Type" => String.t(),
    "VersionCreatedDate" => non_neg_integer()
  }
  """
  @type describe_schema_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  gone_exception() :: %{
    "Code" => String.t(),
    "Message" => String.t()
  }
  """
  @type gone_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_registry_request() :: %{
    optional("Description") => String.t()
  }
  """
  @type update_registry_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_schema_response() :: %{
    "Description" => String.t(),
    "LastModified" => non_neg_integer(),
    "SchemaArn" => String.t(),
    "SchemaName" => String.t(),
    "SchemaVersion" => String.t(),
    "Tags" => map(),
    "Type" => String.t(),
    "VersionCreatedDate" => non_neg_integer()
  }
  """
  @type update_schema_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_discoverer_response() :: %{
    "CrossAccount" => boolean(),
    "Description" => String.t(),
    "DiscovererArn" => String.t(),
    "DiscovererId" => String.t(),
    "SourceArn" => String.t(),
    "State" => list(any()),
    "Tags" => map()
  }
  """
  @type update_discoverer_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_schema_response() :: %{
    "Description" => String.t(),
    "LastModified" => non_neg_integer(),
    "SchemaArn" => String.t(),
    "SchemaName" => String.t(),
    "SchemaVersion" => String.t(),
    "Tags" => map(),
    "Type" => String.t(),
    "VersionCreatedDate" => non_neg_integer()
  }
  """
  @type create_schema_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  untag_resource_request() :: %{
    required("TagKeys") => list(String.t()())
  }
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  too_many_requests_exception() :: %{
    "Code" => String.t(),
    "Message" => String.t()
  }
  """
  @type too_many_requests_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_discoverer_response() :: %{
    "CrossAccount" => boolean(),
    "Description" => String.t(),
    "DiscovererArn" => String.t(),
    "DiscovererId" => String.t(),
    "SourceArn" => String.t(),
    "State" => list(any()),
    "Tags" => map()
  }
  """
  @type describe_discoverer_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  put_code_binding_request() :: %{
    optional("SchemaVersion") => String.t()
  }
  """
  @type put_code_binding_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_schemas_request() :: %{
    optional("Limit") => integer(),
    optional("NextToken") => String.t(),
    optional("SchemaNamePrefix") => String.t()
  }
  """
  @type list_schemas_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  put_code_binding_response() :: %{
    "CreationDate" => non_neg_integer(),
    "LastModified" => non_neg_integer(),
    "SchemaVersion" => String.t(),
    "Status" => list(any())
  }
  """
  @type put_code_binding_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  export_schema_request() :: %{
    optional("SchemaVersion") => String.t(),
    required("Type") => String.t()
  }
  """
  @type export_schema_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_discoverer_request() :: %{
    optional("CrossAccount") => boolean(),
    optional("Description") => String.t()
  }
  """
  @type update_discoverer_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  conflict_exception() :: %{
    "Code" => String.t(),
    "Message" => String.t()
  }
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_discoverer_request() :: %{
    optional("CrossAccount") => boolean(),
    optional("Description") => String.t(),
    optional("Tags") => map(),
    required("SourceArn") => String.t()
  }
  """
  @type create_discoverer_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_discoverers_response() :: %{
    "Discoverers" => list(discoverer_summary()()),
    "NextToken" => String.t()
  }
  """
  @type list_discoverers_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_code_binding_source_response() :: %{
    "Body" => binary()
  }
  """
  @type get_code_binding_source_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_schema_version_request() :: %{

  }
  """
  @type delete_schema_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  schema_summary() :: %{
    "LastModified" => non_neg_integer(),
    "SchemaArn" => String.t(),
    "SchemaName" => String.t(),
    "Tags" => map(),
    "VersionCount" => float()
  }
  """
  @type schema_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  search_schema_summary() :: %{
    optional("RegistryName") => String.t(),
    optional("SchemaArn") => String.t(),
    optional("SchemaName") => String.t(),
    optional("SchemaVersions") => list(search_schema_version_summary()())
  }
  """
  @type search_schema_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  not_found_exception() :: %{
    "Code" => String.t(),
    "Message" => String.t()
  }
  """
  @type not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_tags_for_resource_response() :: %{
    "Tags" => map()
  }
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  service_unavailable_exception() :: %{
    "Code" => String.t(),
    "Message" => String.t()
  }
  """
  @type service_unavailable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  stop_discoverer_response() :: %{
    "DiscovererId" => String.t(),
    "State" => list(any())
  }
  """
  @type stop_discoverer_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_resource_policy_request() :: %{
    optional("RegistryName") => String.t()
  }
  """
  @type get_resource_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_registry_response() :: %{
    "Description" => String.t(),
    "RegistryArn" => String.t(),
    "RegistryName" => String.t(),
    "Tags" => map()
  }
  """
  @type describe_registry_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  stop_discoverer_request() :: %{

  }
  """
  @type stop_discoverer_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  search_schema_version_summary() :: %{
    optional("CreatedDate") => non_neg_integer(),
    optional("SchemaVersion") => String.t(),
    optional("Type") => list(any())
  }
  """
  @type search_schema_version_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_registry_response() :: %{
    "Description" => String.t(),
    "RegistryArn" => String.t(),
    "RegistryName" => String.t(),
    "Tags" => map()
  }
  """
  @type update_registry_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_schema_versions_request() :: %{
    optional("Limit") => integer(),
    optional("NextToken") => String.t()
  }
  """
  @type list_schema_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_discoverer_request() :: %{

  }
  """
  @type describe_discoverer_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_registries_response() :: %{
    "NextToken" => String.t(),
    "Registries" => list(registry_summary()())
  }
  """
  @type list_registries_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  put_resource_policy_request() :: %{
    optional("RegistryName") => String.t(),
    optional("RevisionId") => String.t(),
    required("Policy") => String.t()
  }
  """
  @type put_resource_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  search_schemas_response() :: %{
    "NextToken" => String.t(),
    "Schemas" => list(search_schema_summary()())
  }
  """
  @type search_schemas_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_discovered_schema_response() :: %{
    "Content" => String.t()
  }
  """
  @type get_discovered_schema_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_registries_request() :: %{
    optional("Limit") => integer(),
    optional("NextToken") => String.t(),
    optional("RegistryNamePrefix") => String.t(),
    optional("Scope") => String.t()
  }
  """
  @type list_registries_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_registry_request() :: %{

  }
  """
  @type describe_registry_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  export_schema_response() :: %{
    "Content" => String.t(),
    "SchemaArn" => String.t(),
    "SchemaName" => String.t(),
    "SchemaVersion" => String.t(),
    "Type" => String.t()
  }
  """
  @type export_schema_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_tags_for_resource_request() :: %{

  }
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  internal_server_error_exception() :: %{
    "Code" => String.t(),
    "Message" => String.t()
  }
  """
  @type internal_server_error_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_registry_request() :: %{
    optional("Description") => String.t(),
    optional("Tags") => map()
  }
  """
  @type create_registry_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  put_resource_policy_response() :: %{
    "Policy" => String.t(),
    "RevisionId" => String.t()
  }
  """
  @type put_resource_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  bad_request_exception() :: %{
    "Code" => String.t(),
    "Message" => String.t()
  }
  """
  @type bad_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_resource_policy_request() :: %{
    optional("RegistryName") => String.t()
  }
  """
  @type delete_resource_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  start_discoverer_response() :: %{
    "DiscovererId" => String.t(),
    "State" => list(any())
  }
  """
  @type start_discoverer_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  discoverer_summary() :: %{
    optional("CrossAccount") => boolean(),
    optional("DiscovererArn") => String.t(),
    optional("DiscovererId") => String.t(),
    optional("SourceArn") => String.t(),
    optional("State") => list(any()),
    optional("Tags") => map()
  }
  """
  @type discoverer_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_schemas_response() :: %{
    "NextToken" => String.t(),
    "Schemas" => list(schema_summary()())
  }
  """
  @type list_schemas_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  precondition_failed_exception() :: %{
    "Code" => String.t(),
    "Message" => String.t()
  }
  """
  @type precondition_failed_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  schema_version_summary() :: %{
    optional("SchemaArn") => String.t(),
    optional("SchemaName") => String.t(),
    optional("SchemaVersion") => String.t(),
    optional("Type") => list(any())
  }
  """
  @type schema_version_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_code_binding_response() :: %{
    "CreationDate" => non_neg_integer(),
    "LastModified" => non_neg_integer(),
    "SchemaVersion" => String.t(),
    "Status" => list(any())
  }
  """
  @type describe_code_binding_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  registry_summary() :: %{
    optional("RegistryArn") => String.t(),
    optional("RegistryName") => String.t(),
    optional("Tags") => map()
  }
  """
  @type registry_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  start_discoverer_request() :: %{

  }
  """
  @type start_discoverer_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_schema_request() :: %{
    optional("ClientTokenId") => String.t(),
    optional("Content") => String.t(),
    optional("Description") => String.t(),
    optional("Type") => list(any())
  }
  """
  @type update_schema_request() :: %{String.t() => any()}

  def metadata do
    %{
      api_version: "2019-12-02",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "schemas",
      global?: false,
      protocol: "rest-json",
      service_id: "schemas",
      signature_version: "v4",
      signing_name: "schemas",
      target_prefix: nil
    }
  end

  @doc """
  Creates a discoverer.
  """
  @spec create_discoverer(map(), create_discoverer_request(), list()) ::
          {:ok, create_discoverer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, conflict_exception()}
          | {:error, forbidden_exception()}
          | {:error, internal_server_error_exception()}
          | {:error, service_unavailable_exception()}
          | {:error, unauthorized_exception()}
  def create_discoverer(%Client{} = client, input, options \\ []) do
    url_path = "/v1/discoverers"
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
      201
    )
  end

  @doc """
  Creates a registry.
  """
  @spec create_registry(map(), String.t(), create_registry_request(), list()) ::
          {:ok, create_registry_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, conflict_exception()}
          | {:error, forbidden_exception()}
          | {:error, internal_server_error_exception()}
          | {:error, service_unavailable_exception()}
          | {:error, unauthorized_exception()}
  def create_registry(%Client{} = client, registry_name, input, options \\ []) do
    url_path = "/v1/registries/name/#{AWS.Util.encode_uri(registry_name)}"
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
      201
    )
  end

  @doc """
  Creates a schema definition.

  Inactive schemas will be deleted after two years.
  """
  @spec create_schema(map(), String.t(), String.t(), create_schema_request(), list()) ::
          {:ok, create_schema_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, forbidden_exception()}
          | {:error, internal_server_error_exception()}
          | {:error, service_unavailable_exception()}
  def create_schema(%Client{} = client, registry_name, schema_name, input, options \\ []) do
    url_path =
      "/v1/registries/name/#{AWS.Util.encode_uri(registry_name)}/schemas/name/#{AWS.Util.encode_uri(schema_name)}"

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
      201
    )
  end

  @doc """
  Deletes a discoverer.
  """
  @spec delete_discoverer(map(), String.t(), delete_discoverer_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, forbidden_exception()}
          | {:error, internal_server_error_exception()}
          | {:error, not_found_exception()}
          | {:error, service_unavailable_exception()}
          | {:error, unauthorized_exception()}
  def delete_discoverer(%Client{} = client, discoverer_id, input, options \\ []) do
    url_path = "/v1/discoverers/id/#{AWS.Util.encode_uri(discoverer_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes a Registry.
  """
  @spec delete_registry(map(), String.t(), delete_registry_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, forbidden_exception()}
          | {:error, internal_server_error_exception()}
          | {:error, not_found_exception()}
          | {:error, service_unavailable_exception()}
          | {:error, unauthorized_exception()}
  def delete_registry(%Client{} = client, registry_name, input, options \\ []) do
    url_path = "/v1/registries/name/#{AWS.Util.encode_uri(registry_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Delete the resource-based policy attached to the specified registry.
  """
  @spec delete_resource_policy(map(), delete_resource_policy_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, forbidden_exception()}
          | {:error, internal_server_error_exception()}
          | {:error, not_found_exception()}
          | {:error, service_unavailable_exception()}
          | {:error, unauthorized_exception()}
  def delete_resource_policy(%Client{} = client, input, options \\ []) do
    url_path = "/v1/policy"
    headers = []

    {query_params, input} =
      [
        {"RegistryName", "registryName"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Delete a schema definition.
  """
  @spec delete_schema(map(), String.t(), String.t(), delete_schema_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, forbidden_exception()}
          | {:error, internal_server_error_exception()}
          | {:error, not_found_exception()}
          | {:error, service_unavailable_exception()}
          | {:error, unauthorized_exception()}
  def delete_schema(%Client{} = client, registry_name, schema_name, input, options \\ []) do
    url_path =
      "/v1/registries/name/#{AWS.Util.encode_uri(registry_name)}/schemas/name/#{AWS.Util.encode_uri(schema_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Delete the schema version definition
  """
  @spec delete_schema_version(
          map(),
          String.t(),
          String.t(),
          String.t(),
          delete_schema_version_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, forbidden_exception()}
          | {:error, internal_server_error_exception()}
          | {:error, not_found_exception()}
          | {:error, service_unavailable_exception()}
          | {:error, unauthorized_exception()}
  def delete_schema_version(
        %Client{} = client,
        registry_name,
        schema_name,
        schema_version,
        input,
        options \\ []
      ) do
    url_path =
      "/v1/registries/name/#{AWS.Util.encode_uri(registry_name)}/schemas/name/#{AWS.Util.encode_uri(schema_name)}/version/#{AWS.Util.encode_uri(schema_version)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Describe the code binding URI.
  """
  @spec describe_code_binding(map(), String.t(), String.t(), String.t(), String.t() | nil, list()) ::
          {:ok, describe_code_binding_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, forbidden_exception()}
          | {:error, internal_server_error_exception()}
          | {:error, not_found_exception()}
          | {:error, too_many_requests_exception()}
          | {:error, unauthorized_exception()}
  def describe_code_binding(
        %Client{} = client,
        language,
        registry_name,
        schema_name,
        schema_version \\ nil,
        options \\ []
      ) do
    url_path =
      "/v1/registries/name/#{AWS.Util.encode_uri(registry_name)}/schemas/name/#{AWS.Util.encode_uri(schema_name)}/language/#{AWS.Util.encode_uri(language)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(schema_version) do
        [{"schemaVersion", schema_version} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes the discoverer.
  """
  @spec describe_discoverer(map(), String.t(), list()) ::
          {:ok, describe_discoverer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, forbidden_exception()}
          | {:error, internal_server_error_exception()}
          | {:error, not_found_exception()}
          | {:error, service_unavailable_exception()}
          | {:error, unauthorized_exception()}
  def describe_discoverer(%Client{} = client, discoverer_id, options \\ []) do
    url_path = "/v1/discoverers/id/#{AWS.Util.encode_uri(discoverer_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes the registry.
  """
  @spec describe_registry(map(), String.t(), list()) ::
          {:ok, describe_registry_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, forbidden_exception()}
          | {:error, internal_server_error_exception()}
          | {:error, not_found_exception()}
          | {:error, service_unavailable_exception()}
          | {:error, unauthorized_exception()}
  def describe_registry(%Client{} = client, registry_name, options \\ []) do
    url_path = "/v1/registries/name/#{AWS.Util.encode_uri(registry_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieve the schema definition.
  """
  @spec describe_schema(map(), String.t(), String.t(), String.t() | nil, list()) ::
          {:ok, describe_schema_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, forbidden_exception()}
          | {:error, internal_server_error_exception()}
          | {:error, not_found_exception()}
          | {:error, service_unavailable_exception()}
          | {:error, unauthorized_exception()}
  def describe_schema(
        %Client{} = client,
        registry_name,
        schema_name,
        schema_version \\ nil,
        options \\ []
      ) do
    url_path =
      "/v1/registries/name/#{AWS.Util.encode_uri(registry_name)}/schemas/name/#{AWS.Util.encode_uri(schema_name)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(schema_version) do
        [{"schemaVersion", schema_version} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @spec export_schema(map(), String.t(), String.t(), String.t() | nil, String.t(), list()) ::
          {:ok, export_schema_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, forbidden_exception()}
          | {:error, internal_server_error_exception()}
          | {:error, not_found_exception()}
          | {:error, service_unavailable_exception()}
          | {:error, too_many_requests_exception()}
          | {:error, unauthorized_exception()}
  def export_schema(
        %Client{} = client,
        registry_name,
        schema_name,
        schema_version \\ nil,
        type,
        options \\ []
      ) do
    url_path =
      "/v1/registries/name/#{AWS.Util.encode_uri(registry_name)}/schemas/name/#{AWS.Util.encode_uri(schema_name)}/export"

    headers = []
    query_params = []

    query_params =
      if !is_nil(type) do
        [{"type", type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(schema_version) do
        [{"schemaVersion", schema_version} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get the code binding source URI.
  """
  @spec get_code_binding_source(
          map(),
          String.t(),
          String.t(),
          String.t(),
          String.t() | nil,
          list()
        ) ::
          {:ok, get_code_binding_source_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, forbidden_exception()}
          | {:error, internal_server_error_exception()}
          | {:error, not_found_exception()}
          | {:error, too_many_requests_exception()}
          | {:error, unauthorized_exception()}
  def get_code_binding_source(
        %Client{} = client,
        language,
        registry_name,
        schema_name,
        schema_version \\ nil,
        options \\ []
      ) do
    url_path =
      "/v1/registries/name/#{AWS.Util.encode_uri(registry_name)}/schemas/name/#{AWS.Util.encode_uri(schema_name)}/language/#{AWS.Util.encode_uri(language)}/source"

    headers = []
    query_params = []

    query_params =
      if !is_nil(schema_version) do
        [{"schemaVersion", schema_version} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get the discovered schema that was generated based on sampled events.
  """
  @spec get_discovered_schema(map(), get_discovered_schema_request(), list()) ::
          {:ok, get_discovered_schema_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, forbidden_exception()}
          | {:error, internal_server_error_exception()}
          | {:error, service_unavailable_exception()}
          | {:error, unauthorized_exception()}
  def get_discovered_schema(%Client{} = client, input, options \\ []) do
    url_path = "/v1/discover"
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
  Retrieves the resource-based policy attached to a given registry.
  """
  @spec get_resource_policy(map(), String.t() | nil, list()) ::
          {:ok, get_resource_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, forbidden_exception()}
          | {:error, internal_server_error_exception()}
          | {:error, not_found_exception()}
          | {:error, service_unavailable_exception()}
          | {:error, unauthorized_exception()}
  def get_resource_policy(%Client{} = client, registry_name \\ nil, options \\ []) do
    url_path = "/v1/policy"
    headers = []
    query_params = []

    query_params =
      if !is_nil(registry_name) do
        [{"registryName", registry_name} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List the discoverers.
  """
  @spec list_discoverers(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_discoverers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, forbidden_exception()}
          | {:error, internal_server_error_exception()}
          | {:error, service_unavailable_exception()}
          | {:error, unauthorized_exception()}
  def list_discoverers(
        %Client{} = client,
        discoverer_id_prefix \\ nil,
        limit \\ nil,
        next_token \\ nil,
        source_arn_prefix \\ nil,
        options \\ []
      ) do
    url_path = "/v1/discoverers"
    headers = []
    query_params = []

    query_params =
      if !is_nil(source_arn_prefix) do
        [{"sourceArnPrefix", source_arn_prefix} | query_params]
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
      if !is_nil(limit) do
        [{"limit", limit} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(discoverer_id_prefix) do
        [{"discovererIdPrefix", discoverer_id_prefix} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List the registries.
  """
  @spec list_registries(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_registries_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, forbidden_exception()}
          | {:error, internal_server_error_exception()}
          | {:error, service_unavailable_exception()}
          | {:error, unauthorized_exception()}
  def list_registries(
        %Client{} = client,
        limit \\ nil,
        next_token \\ nil,
        registry_name_prefix \\ nil,
        scope \\ nil,
        options \\ []
      ) do
    url_path = "/v1/registries"
    headers = []
    query_params = []

    query_params =
      if !is_nil(scope) do
        [{"scope", scope} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(registry_name_prefix) do
        [{"registryNamePrefix", registry_name_prefix} | query_params]
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
      if !is_nil(limit) do
        [{"limit", limit} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Provides a list of the schema versions and related information.
  """
  @spec list_schema_versions(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_schema_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, forbidden_exception()}
          | {:error, internal_server_error_exception()}
          | {:error, not_found_exception()}
          | {:error, service_unavailable_exception()}
          | {:error, unauthorized_exception()}
  def list_schema_versions(
        %Client{} = client,
        registry_name,
        schema_name,
        limit \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/v1/registries/name/#{AWS.Util.encode_uri(registry_name)}/schemas/name/#{AWS.Util.encode_uri(schema_name)}/versions"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(limit) do
        [{"limit", limit} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List the schemas.
  """
  @spec list_schemas(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_schemas_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, forbidden_exception()}
          | {:error, internal_server_error_exception()}
          | {:error, service_unavailable_exception()}
          | {:error, unauthorized_exception()}
  def list_schemas(
        %Client{} = client,
        registry_name,
        limit \\ nil,
        next_token \\ nil,
        schema_name_prefix \\ nil,
        options \\ []
      ) do
    url_path = "/v1/registries/name/#{AWS.Util.encode_uri(registry_name)}/schemas"
    headers = []
    query_params = []

    query_params =
      if !is_nil(schema_name_prefix) do
        [{"schemaNamePrefix", schema_name_prefix} | query_params]
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
      if !is_nil(limit) do
        [{"limit", limit} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get tags for resource.
  """
  @spec list_tags_for_resource(map(), String.t(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, forbidden_exception()}
          | {:error, internal_server_error_exception()}
          | {:error, not_found_exception()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Put code binding URI
  """
  @spec put_code_binding(
          map(),
          String.t(),
          String.t(),
          String.t(),
          put_code_binding_request(),
          list()
        ) ::
          {:ok, put_code_binding_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, forbidden_exception()}
          | {:error, gone_exception()}
          | {:error, internal_server_error_exception()}
          | {:error, not_found_exception()}
          | {:error, too_many_requests_exception()}
          | {:error, unauthorized_exception()}
  def put_code_binding(
        %Client{} = client,
        language,
        registry_name,
        schema_name,
        input,
        options \\ []
      ) do
    url_path =
      "/v1/registries/name/#{AWS.Util.encode_uri(registry_name)}/schemas/name/#{AWS.Util.encode_uri(schema_name)}/language/#{AWS.Util.encode_uri(language)}"

    headers = []

    {query_params, input} =
      [
        {"SchemaVersion", "schemaVersion"}
      ]
      |> Request.build_params(input)

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
      202
    )
  end

  @doc """
  The name of the policy.
  """
  @spec put_resource_policy(map(), put_resource_policy_request(), list()) ::
          {:ok, put_resource_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, forbidden_exception()}
          | {:error, internal_server_error_exception()}
          | {:error, not_found_exception()}
          | {:error, precondition_failed_exception()}
          | {:error, service_unavailable_exception()}
          | {:error, unauthorized_exception()}
  def put_resource_policy(%Client{} = client, input, options \\ []) do
    url_path = "/v1/policy"
    headers = []

    {query_params, input} =
      [
        {"RegistryName", "registryName"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Search the schemas
  """
  @spec search_schemas(map(), String.t(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, search_schemas_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, forbidden_exception()}
          | {:error, internal_server_error_exception()}
          | {:error, service_unavailable_exception()}
          | {:error, unauthorized_exception()}
  def search_schemas(
        %Client{} = client,
        registry_name,
        keywords,
        limit \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/v1/registries/name/#{AWS.Util.encode_uri(registry_name)}/schemas/search"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(limit) do
        [{"limit", limit} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(keywords) do
        [{"keywords", keywords} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Starts the discoverer
  """
  @spec start_discoverer(map(), String.t(), start_discoverer_request(), list()) ::
          {:ok, start_discoverer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, forbidden_exception()}
          | {:error, internal_server_error_exception()}
          | {:error, not_found_exception()}
          | {:error, service_unavailable_exception()}
          | {:error, unauthorized_exception()}
  def start_discoverer(%Client{} = client, discoverer_id, input, options \\ []) do
    url_path = "/v1/discoverers/id/#{AWS.Util.encode_uri(discoverer_id)}/start"
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
  Stops the discoverer
  """
  @spec stop_discoverer(map(), String.t(), stop_discoverer_request(), list()) ::
          {:ok, stop_discoverer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, forbidden_exception()}
          | {:error, internal_server_error_exception()}
          | {:error, not_found_exception()}
          | {:error, service_unavailable_exception()}
          | {:error, unauthorized_exception()}
  def stop_discoverer(%Client{} = client, discoverer_id, input, options \\ []) do
    url_path = "/v1/discoverers/id/#{AWS.Util.encode_uri(discoverer_id)}/stop"
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
  Add tags to a resource.
  """
  @spec tag_resource(map(), String.t(), tag_resource_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, forbidden_exception()}
          | {:error, internal_server_error_exception()}
          | {:error, not_found_exception()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
      204
    )
  end

  @doc """
  Removes tags from a resource.
  """
  @spec untag_resource(map(), String.t(), untag_resource_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, forbidden_exception()}
          | {:error, internal_server_error_exception()}
          | {:error, not_found_exception()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

    {query_params, input} =
      [
        {"TagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Updates the discoverer
  """
  @spec update_discoverer(map(), String.t(), update_discoverer_request(), list()) ::
          {:ok, update_discoverer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, forbidden_exception()}
          | {:error, internal_server_error_exception()}
          | {:error, not_found_exception()}
          | {:error, service_unavailable_exception()}
          | {:error, unauthorized_exception()}
  def update_discoverer(%Client{} = client, discoverer_id, input, options \\ []) do
    url_path = "/v1/discoverers/id/#{AWS.Util.encode_uri(discoverer_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates a registry.
  """
  @spec update_registry(map(), String.t(), update_registry_request(), list()) ::
          {:ok, update_registry_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, forbidden_exception()}
          | {:error, internal_server_error_exception()}
          | {:error, not_found_exception()}
          | {:error, service_unavailable_exception()}
          | {:error, unauthorized_exception()}
  def update_registry(%Client{} = client, registry_name, input, options \\ []) do
    url_path = "/v1/registries/name/#{AWS.Util.encode_uri(registry_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates the schema definition

  Inactive schemas will be deleted after two years.
  """
  @spec update_schema(map(), String.t(), String.t(), update_schema_request(), list()) ::
          {:ok, update_schema_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, forbidden_exception()}
          | {:error, internal_server_error_exception()}
          | {:error, not_found_exception()}
          | {:error, service_unavailable_exception()}
  def update_schema(%Client{} = client, registry_name, schema_name, input, options \\ []) do
    url_path =
      "/v1/registries/name/#{AWS.Util.encode_uri(registry_name)}/schemas/name/#{AWS.Util.encode_uri(schema_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end
end
