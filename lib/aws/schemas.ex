# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Schemas do
  @moduledoc """
  Amazon EventBridge Schema Registry
  """

  @doc """
  Creates a discoverer.
  """
  def create_discoverer(client, input, options \\ []) do
    path_ = "/v1/discoverers"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Creates a registry.
  """
  def create_registry(client, registry_name, input, options \\ []) do
    path_ = "/v1/registries/name/#{URI.encode(registry_name)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Creates a schema definition.

  <note>Inactive schemas will be deleted after two years.

  </note>
  """
  def create_schema(client, registry_name, schema_name, input, options \\ []) do
    path_ = "/v1/registries/name/#{URI.encode(registry_name)}/schemas/name/#{URI.encode(schema_name)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Deletes a discoverer.
  """
  def delete_discoverer(client, discoverer_id, input, options \\ []) do
    path_ = "/v1/discoverers/id/#{URI.encode(discoverer_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Deletes a Registry.
  """
  def delete_registry(client, registry_name, input, options \\ []) do
    path_ = "/v1/registries/name/#{URI.encode(registry_name)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Delete the resource-based policy attached to the specified registry.
  """
  def delete_resource_policy(client, input, options \\ []) do
    path_ = "/v1/policy"
    headers = []
    {query_, input} =
      [
        {"RegistryName", "registryName"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Delete a schema definition.
  """
  def delete_schema(client, registry_name, schema_name, input, options \\ []) do
    path_ = "/v1/registries/name/#{URI.encode(registry_name)}/schemas/name/#{URI.encode(schema_name)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Delete the schema version definition
  """
  def delete_schema_version(client, registry_name, schema_name, schema_version, input, options \\ []) do
    path_ = "/v1/registries/name/#{URI.encode(registry_name)}/schemas/name/#{URI.encode(schema_name)}/version/#{URI.encode(schema_version)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Describe the code binding URI.
  """
  def describe_code_binding(client, language, registry_name, schema_name, schema_version \\ nil, options \\ []) do
    path_ = "/v1/registries/name/#{URI.encode(registry_name)}/schemas/name/#{URI.encode(schema_name)}/language/#{URI.encode(language)}"
    headers = []
    query_ = []
    query_ = if !is_nil(schema_version) do
      [{"schemaVersion", schema_version} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Describes the discoverer.
  """
  def describe_discoverer(client, discoverer_id, options \\ []) do
    path_ = "/v1/discoverers/id/#{URI.encode(discoverer_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Describes the registry.
  """
  def describe_registry(client, registry_name, options \\ []) do
    path_ = "/v1/registries/name/#{URI.encode(registry_name)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieve the schema definition.
  """
  def describe_schema(client, registry_name, schema_name, schema_version \\ nil, options \\ []) do
    path_ = "/v1/registries/name/#{URI.encode(registry_name)}/schemas/name/#{URI.encode(schema_name)}"
    headers = []
    query_ = []
    query_ = if !is_nil(schema_version) do
      [{"schemaVersion", schema_version} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Exports a schema to a different specification.
  """
  def export_schema(client, registry_name, schema_name, schema_version \\ nil, type, options \\ []) do
    path_ = "/v1/registries/name/#{URI.encode(registry_name)}/schemas/name/#{URI.encode(schema_name)}/export"
    headers = []
    query_ = []
    query_ = if !is_nil(type) do
      [{"type", type} | query_]
    else
      query_
    end
    query_ = if !is_nil(schema_version) do
      [{"schemaVersion", schema_version} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Get the code binding source URI.
  """
  def get_code_binding_source(client, language, registry_name, schema_name, schema_version \\ nil, options \\ []) do
    path_ = "/v1/registries/name/#{URI.encode(registry_name)}/schemas/name/#{URI.encode(schema_name)}/language/#{URI.encode(language)}/source"
    headers = []
    query_ = []
    query_ = if !is_nil(schema_version) do
      [{"schemaVersion", schema_version} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Get the discovered schema that was generated based on sampled events.
  """
  def get_discovered_schema(client, input, options \\ []) do
    path_ = "/v1/discover"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Retrieves the resource-based policy attached to a given registry.
  """
  def get_resource_policy(client, registry_name \\ nil, options \\ []) do
    path_ = "/v1/policy"
    headers = []
    query_ = []
    query_ = if !is_nil(registry_name) do
      [{"registryName", registry_name} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  List the discoverers.
  """
  def list_discoverers(client, discoverer_id_prefix \\ nil, limit \\ nil, next_token \\ nil, source_arn_prefix \\ nil, options \\ []) do
    path_ = "/v1/discoverers"
    headers = []
    query_ = []
    query_ = if !is_nil(source_arn_prefix) do
      [{"sourceArnPrefix", source_arn_prefix} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(limit) do
      [{"limit", limit} | query_]
    else
      query_
    end
    query_ = if !is_nil(discoverer_id_prefix) do
      [{"discovererIdPrefix", discoverer_id_prefix} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  List the registries.
  """
  def list_registries(client, limit \\ nil, next_token \\ nil, registry_name_prefix \\ nil, scope \\ nil, options \\ []) do
    path_ = "/v1/registries"
    headers = []
    query_ = []
    query_ = if !is_nil(scope) do
      [{"scope", scope} | query_]
    else
      query_
    end
    query_ = if !is_nil(registry_name_prefix) do
      [{"registryNamePrefix", registry_name_prefix} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(limit) do
      [{"limit", limit} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Provides a list of the schema versions and related information.
  """
  def list_schema_versions(client, registry_name, schema_name, limit \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/v1/registries/name/#{URI.encode(registry_name)}/schemas/name/#{URI.encode(schema_name)}/versions"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(limit) do
      [{"limit", limit} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  List the schemas.
  """
  def list_schemas(client, registry_name, limit \\ nil, next_token \\ nil, schema_name_prefix \\ nil, options \\ []) do
    path_ = "/v1/registries/name/#{URI.encode(registry_name)}/schemas"
    headers = []
    query_ = []
    query_ = if !is_nil(schema_name_prefix) do
      [{"schemaNamePrefix", schema_name_prefix} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(limit) do
      [{"limit", limit} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Get tags for resource.
  """
  def list_tags_for_resource(client, resource_arn, options \\ []) do
    path_ = "/tags/#{URI.encode(resource_arn)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Put code binding URI
  """
  def put_code_binding(client, language, registry_name, schema_name, input, options \\ []) do
    path_ = "/v1/registries/name/#{URI.encode(registry_name)}/schemas/name/#{URI.encode(schema_name)}/language/#{URI.encode(language)}"
    headers = []
    {query_, input} =
      [
        {"SchemaVersion", "schemaVersion"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :post, path_, query_, headers, input, options, 202)
  end

  @doc """
  The name of the policy.
  """
  def put_resource_policy(client, input, options \\ []) do
    path_ = "/v1/policy"
    headers = []
    {query_, input} =
      [
        {"RegistryName", "registryName"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Search the schemas
  """
  def search_schemas(client, registry_name, keywords, limit \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/v1/registries/name/#{URI.encode(registry_name)}/schemas/search"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(limit) do
      [{"limit", limit} | query_]
    else
      query_
    end
    query_ = if !is_nil(keywords) do
      [{"keywords", keywords} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Starts the discoverer
  """
  def start_discoverer(client, discoverer_id, input, options \\ []) do
    path_ = "/v1/discoverers/id/#{URI.encode(discoverer_id)}/start"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Stops the discoverer
  """
  def stop_discoverer(client, discoverer_id, input, options \\ []) do
    path_ = "/v1/discoverers/id/#{URI.encode(discoverer_id)}/stop"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Add tags to a resource.
  """
  def tag_resource(client, resource_arn, input, options \\ []) do
    path_ = "/tags/#{URI.encode(resource_arn)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 204)
  end

  @doc """
  Removes tags from a resource.
  """
  def untag_resource(client, resource_arn, input, options \\ []) do
    path_ = "/tags/#{URI.encode(resource_arn)}"
    headers = []
    {query_, input} =
      [
        {"TagKeys", "tagKeys"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Updates the discoverer
  """
  def update_discoverer(client, discoverer_id, input, options \\ []) do
    path_ = "/v1/discoverers/id/#{URI.encode(discoverer_id)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Updates a registry.
  """
  def update_registry(client, registry_name, input, options \\ []) do
    path_ = "/v1/registries/name/#{URI.encode(registry_name)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Updates the schema definition

  <note>Inactive schemas will be deleted after two years.

  </note>
  """
  def update_schema(client, registry_name, schema_name, input, options \\ []) do
    path_ = "/v1/registries/name/#{URI.encode(registry_name)}/schemas/name/#{URI.encode(schema_name)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "schemas"}
    host = build_host("schemas", client)
    url = host
    |> build_url(path, client)
    |> add_query(query, client)

    additional_headers = [{"Host", host}, {"Content-Type", "application/x-amz-json-1.1"}]
    headers = AWS.Request.add_headers(additional_headers, headers)

    payload = encode!(client, input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    perform_request(client, method, url, payload, headers, options, success_status_code)
  end

  defp perform_request(client, method, url, payload, headers, options, nil) do
    case do_request(client, method, url, payload, headers, options) do
      {:ok, %{status_code: status_code, body: body} = response}
      when status_code in [200, 202, 204] ->
        body = if(body != "", do: decode!(client, body))
        {:ok, body, response}

      {:ok, %{body: body}} ->
        {:error, decode!(client, body)}

      error = {:error, _reason} -> error
    end
  end

  defp perform_request(client, method, url, payload, headers, options, success_status_code) do
    case do_request(client, method, url, payload, headers, options) do
      {:ok, %{status_code: ^success_status_code, body: body} = response} ->
        body = if(body != "", do: decode!(client, body))
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

  defp build_url(host, path, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}#{path}"
  end

  defp add_query(url, [], _client) do
    url
  end
  defp add_query(url, query, client) do
    querystring = encode!(client, query, :query)
    "#{url}?#{querystring}"
  end

  defp do_request(client, method, url, payload, headers, options) do
    {mod, fun} = Map.fetch(client, :http_client)
    apply(mod, fun, [method, url, payload, headers, options])
  end

  defp encode!(client, payload, type \\ :json) do
    {mod, fun} = client
      |> Map.fetch(:encode)
      |> Map.fetch(type)
    apply(mod, fun, [payload])
  end

  defp decode!(client, payload) do
    {mod, fun} = client
      |> Map.fetch(:decode)
      |> Map.fetch(:json)
    apply(mod, fun, [payload])
  end
end
