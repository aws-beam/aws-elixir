# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.AgentRegistry do
  @moduledoc """
  Agent Registry lets callers discover, list, and retrieve approved records
  published to a registry.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      a2a_agent_card_descriptor() :: %{
        "data" => String.t() | atom(),
        "dataSchemaVersion" => String.t() | atom(),
        "source" => descriptor_source()
      }

  """
  @type a2a_agent_card_descriptor() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      agent_skills_additional_data() :: %{
        "skillMd" => agent_skills_md_descriptor()
      }

  """
  @type agent_skills_additional_data() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      agent_skills_definition_descriptor() :: %{
        "additionalData" => agent_skills_additional_data(),
        "data" => String.t() | atom(),
        "dataSchemaVersion" => String.t() | atom()
      }

  """
  @type agent_skills_definition_descriptor() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      agent_skills_md_descriptor() :: %{
        "data" => String.t() | atom(),
        "dataSchemaVersion" => String.t() | atom(),
        "source" => descriptor_source()
      }

  """
  @type agent_skills_md_descriptor() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_get_discoverable_registry_record_error() :: %{
        "errorCode" => list(any()),
        "message" => [String.t() | atom()],
        "recordId" => String.t() | atom(),
        "registryId" => String.t() | atom()
      }

  """
  @type batch_get_discoverable_registry_record_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_get_discoverable_registry_record_request() :: %{
        required("entries") => list(registry_records_entry())
      }

  """
  @type batch_get_discoverable_registry_record_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_get_discoverable_registry_record_response() :: %{
        "errors" => list(batch_get_discoverable_registry_record_error()),
        "registryRecords" => list(registry_record_summary())
      }

  """
  @type batch_get_discoverable_registry_record_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      custom_descriptor() :: %{
        "data" => String.t() | atom()
      }

  """
  @type custom_descriptor() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      descriptor_source() :: %{
        "fromUrl" => descriptor_source_from_url()
      }

  """
  @type descriptor_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      descriptor_source_from_url() :: %{
        "url" => String.t() | atom()
      }

  """
  @type descriptor_source_from_url() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      descriptors() :: %{
        "a2aAgentCard" => a2a_agent_card_descriptor(),
        "agentSkillsDefinition" => agent_skills_definition_descriptor(),
        "custom" => custom_descriptor(),
        "mcpServer" => mcp_server_descriptor()
      }

  """
  @type descriptors() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      discoverable_registry_record_summary() :: %{
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "displayName" => String.t() | atom(),
        "name" => String.t() | atom(),
        "recordArn" => String.t() | atom(),
        "recordId" => String.t() | atom(),
        "recordType" => list(any()),
        "recordVersion" => String.t() | atom(),
        "registryArn" => String.t() | atom(),
        "status" => list(any()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type discoverable_registry_record_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_discoverable_registry_records_request() :: %{
        optional("filters") => list(registry_record_filter()),
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()]
      }

  """
  @type list_discoverable_registry_records_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_discoverable_registry_records_response() :: %{
        "nextToken" => [String.t() | atom()],
        "registryRecords" => list(discoverable_registry_record_summary())
      }

  """
  @type list_discoverable_registry_records_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      mcp_server_additional_data() :: %{
        "tools" => mcp_tools_descriptor()
      }

  """
  @type mcp_server_additional_data() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      mcp_server_descriptor() :: %{
        "additionalData" => mcp_server_additional_data(),
        "data" => String.t() | atom(),
        "dataSchemaVersion" => String.t() | atom(),
        "source" => descriptor_source()
      }

  """
  @type mcp_server_descriptor() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      mcp_tools_descriptor() :: %{
        "data" => String.t() | atom(),
        "dataSchemaVersion" => String.t() | atom()
      }

  """
  @type mcp_tools_descriptor() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      registry_record_filter() :: %{
        "name" => list(any()),
        "values" => list(String.t() | atom())
      }

  """
  @type registry_record_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      registry_record_summary() :: %{
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "descriptors" => descriptors(),
        "displayName" => String.t() | atom(),
        "name" => String.t() | atom(),
        "recordArn" => String.t() | atom(),
        "recordId" => String.t() | atom(),
        "recordType" => list(any()),
        "recordVersion" => String.t() | atom(),
        "registryArn" => String.t() | atom(),
        "status" => list(any()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type registry_record_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      registry_records_entry() :: %{
        "recordIds" => list(String.t() | atom()),
        "registryId" => String.t() | atom()
      }

  """
  @type registry_records_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_discoverable_registry_records_request() :: %{
        optional("filters") => any(),
        optional("maxResults") => [integer()],
        required("registryIds") => list(String.t() | atom()),
        required("searchQuery") => String.t() | atom()
      }

  """
  @type search_discoverable_registry_records_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_discoverable_registry_records_response() :: %{
        "registryRecords" => list(registry_record_summary())
      }

  """
  @type search_discoverable_registry_records_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      unauthorized_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type unauthorized_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "fieldList" => list(validation_exception_field()),
        "message" => [String.t() | atom()],
        "reason" => list(any())
      }

  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception_field() :: %{
        "message" => [String.t() | atom()],
        "name" => [String.t() | atom()]
      }

  """
  @type validation_exception_field() :: %{(String.t() | atom()) => any()}

  @type batch_get_discoverable_registry_record_errors() ::
          validation_exception()
          | unauthorized_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_discoverable_registry_records_errors() ::
          validation_exception()
          | unauthorized_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type search_discoverable_registry_records_errors() ::
          validation_exception()
          | unauthorized_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  def metadata do
    %{
      api_version: "2025-12-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "agent-registry",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Agent Registry",
      signature_version: "v4",
      signing_name: "agent-registry",
      target_prefix: nil
    }
  end

  @doc """
  Retrieves multiple discoverable registry records by ID from a single registry.

  Records that cannot be retrieved are reported individually in the `errors` list
  rather than failing the entire request.
  """
  @spec batch_get_discoverable_registry_record(
          map(),
          batch_get_discoverable_registry_record_request(),
          list()
        ) ::
          {:ok, batch_get_discoverable_registry_record_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_get_discoverable_registry_record_errors()}
  def batch_get_discoverable_registry_record(%Client{} = client, input, options \\ []) do
    url_path = "/discoverable-records-batch"
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
      200
    )
  end

  @doc """
  Lists the discoverable registry records in a registry.

  You can optionally filter and paginate the results.
  """
  @spec list_discoverable_registry_records(
          map(),
          String.t() | atom(),
          list_discoverable_registry_records_request(),
          list()
        ) ::
          {:ok, list_discoverable_registry_records_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_discoverable_registry_records_errors()}
  def list_discoverable_registry_records(%Client{} = client, registry_id, input, options \\ []) do
    url_path = "/registries/#{AWS.Util.encode_uri(registry_id)}/discoverable-records-list"
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
      200
    )
  end

  @doc """
  Searches the discoverable registry records in a registry using a natural
  language query.

  Returns metadata for the matching records ordered by relevance.
  """
  @spec search_discoverable_registry_records(
          map(),
          search_discoverable_registry_records_request(),
          list()
        ) ::
          {:ok, search_discoverable_registry_records_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, search_discoverable_registry_records_errors()}
  def search_discoverable_registry_records(%Client{} = client, input, options \\ []) do
    url_path = "/discoverable-records-search"
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
      200
    )
  end
end
