# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Schemas do
  @moduledoc """
  Amazon EventBridge Schema Registry
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
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
  def create_discoverer(%Client{} = client, input, options \\ []) do
    url_path = "/v1/discoverers"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  def create_registry(%Client{} = client, registry_name, input, options \\ []) do
    url_path = "/v1/registries/name/#{URI.encode(registry_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  def create_schema(%Client{} = client, registry_name, schema_name, input, options \\ []) do
    url_path =
      "/v1/registries/name/#{URI.encode(registry_name)}/schemas/name/#{URI.encode(schema_name)}"

    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  def delete_discoverer(%Client{} = client, discoverer_id, input, options \\ []) do
    url_path = "/v1/discoverers/id/#{URI.encode(discoverer_id)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  def delete_registry(%Client{} = client, registry_name, input, options \\ []) do
    url_path = "/v1/registries/name/#{URI.encode(registry_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  def delete_resource_policy(%Client{} = client, input, options \\ []) do
    url_path = "/v1/policy"
    headers = []

    {query_params, input} =
      [
        {"RegistryName", "registryName"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
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
  def delete_schema(%Client{} = client, registry_name, schema_name, input, options \\ []) do
    url_path =
      "/v1/registries/name/#{URI.encode(registry_name)}/schemas/name/#{URI.encode(schema_name)}"

    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  def delete_schema_version(
        %Client{} = client,
        registry_name,
        schema_name,
        schema_version,
        input,
        options \\ []
      ) do
    url_path =
      "/v1/registries/name/#{URI.encode(registry_name)}/schemas/name/#{URI.encode(schema_name)}/version/#{URI.encode(schema_version)}"

    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  def describe_code_binding(
        %Client{} = client,
        language,
        registry_name,
        schema_name,
        schema_version \\ nil,
        options \\ []
      ) do
    url_path =
      "/v1/registries/name/#{URI.encode(registry_name)}/schemas/name/#{URI.encode(schema_name)}/language/#{URI.encode(language)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(schema_version) do
        [{"schemaVersion", schema_version} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Describes the discoverer.
  """
  def describe_discoverer(%Client{} = client, discoverer_id, options \\ []) do
    url_path = "/v1/discoverers/id/#{URI.encode(discoverer_id)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Describes the registry.
  """
  def describe_registry(%Client{} = client, registry_name, options \\ []) do
    url_path = "/v1/registries/name/#{URI.encode(registry_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Retrieve the schema definition.
  """
  def describe_schema(
        %Client{} = client,
        registry_name,
        schema_name,
        schema_version \\ nil,
        options \\ []
      ) do
    url_path =
      "/v1/registries/name/#{URI.encode(registry_name)}/schemas/name/#{URI.encode(schema_name)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(schema_version) do
        [{"schemaVersion", schema_version} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Exports a schema to a different specification.
  """
  def export_schema(
        %Client{} = client,
        registry_name,
        schema_name,
        schema_version \\ nil,
        type,
        options \\ []
      ) do
    url_path =
      "/v1/registries/name/#{URI.encode(registry_name)}/schemas/name/#{URI.encode(schema_name)}/export"

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

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Get the code binding source URI.
  """
  def get_code_binding_source(
        %Client{} = client,
        language,
        registry_name,
        schema_name,
        schema_version \\ nil,
        options \\ []
      ) do
    url_path =
      "/v1/registries/name/#{URI.encode(registry_name)}/schemas/name/#{URI.encode(schema_name)}/language/#{URI.encode(language)}/source"

    headers = []
    query_params = []

    query_params =
      if !is_nil(schema_version) do
        [{"schemaVersion", schema_version} | query_params]
      else
        query_params
      end

    options =
      Keyword.put(
        options,
        :receive_body_as_binary?,
        true
      )

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Get the discovered schema that was generated based on sampled events.
  """
  def get_discovered_schema(%Client{} = client, input, options \\ []) do
    url_path = "/v1/discover"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  List the discoverers.
  """
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

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  List the registries.
  """
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

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Provides a list of the schema versions and related information.
  """
  def list_schema_versions(
        %Client{} = client,
        registry_name,
        schema_name,
        limit \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/v1/registries/name/#{URI.encode(registry_name)}/schemas/name/#{URI.encode(schema_name)}/versions"

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

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  List the schemas.
  """
  def list_schemas(
        %Client{} = client,
        registry_name,
        limit \\ nil,
        next_token \\ nil,
        schema_name_prefix \\ nil,
        options \\ []
      ) do
    url_path = "/v1/registries/name/#{URI.encode(registry_name)}/schemas"
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

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Get tags for resource.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{URI.encode(resource_arn)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Put code binding URI
  """
  def put_code_binding(
        %Client{} = client,
        language,
        registry_name,
        schema_name,
        input,
        options \\ []
      ) do
    url_path =
      "/v1/registries/name/#{URI.encode(registry_name)}/schemas/name/#{URI.encode(schema_name)}/language/#{URI.encode(language)}"

    headers = []

    {query_params, input} =
      [
        {"SchemaVersion", "schemaVersion"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
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
  def put_resource_policy(%Client{} = client, input, options \\ []) do
    url_path = "/v1/policy"
    headers = []

    {query_params, input} =
      [
        {"RegistryName", "registryName"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Search the schemas
  """
  def search_schemas(
        %Client{} = client,
        registry_name,
        keywords,
        limit \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/v1/registries/name/#{URI.encode(registry_name)}/schemas/search"
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

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Starts the discoverer
  """
  def start_discoverer(%Client{} = client, discoverer_id, input, options \\ []) do
    url_path = "/v1/discoverers/id/#{URI.encode(discoverer_id)}/start"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  def stop_discoverer(%Client{} = client, discoverer_id, input, options \\ []) do
    url_path = "/v1/discoverers/id/#{URI.encode(discoverer_id)}/stop"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{URI.encode(resource_arn)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{URI.encode(resource_arn)}"
    headers = []

    {query_params, input} =
      [
        {"TagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
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
  def update_discoverer(%Client{} = client, discoverer_id, input, options \\ []) do
    url_path = "/v1/discoverers/id/#{URI.encode(discoverer_id)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a registry.
  """
  def update_registry(%Client{} = client, registry_name, input, options \\ []) do
    url_path = "/v1/registries/name/#{URI.encode(registry_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the schema definition

  Inactive schemas will be deleted after two years.
  """
  def update_schema(%Client{} = client, registry_name, schema_name, input, options \\ []) do
    url_path =
      "/v1/registries/name/#{URI.encode(registry_name)}/schemas/name/#{URI.encode(schema_name)}"

    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end
end
