# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.AppSync do
  @moduledoc """
  AWS AppSync provides API actions for creating and interacting with data
  sources using GraphQL from your application.
  """

  @doc """
  Creates a cache for the GraphQL API.
  """
  def create_api_cache(client, api_id, input, options \\ []) do
    path_ = "/v1/apis/#{URI.encode(api_id)}/ApiCaches"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a unique key that you can distribute to clients who are executing
  your API.
  """
  def create_api_key(client, api_id, input, options \\ []) do
    path_ = "/v1/apis/#{URI.encode(api_id)}/apikeys"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a `DataSource` object.
  """
  def create_data_source(client, api_id, input, options \\ []) do
    path_ = "/v1/apis/#{URI.encode(api_id)}/datasources"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a `Function` object.

  A function is a reusable entity. Multiple functions can be used to compose
  the resolver logic.
  """
  def create_function(client, api_id, input, options \\ []) do
    path_ = "/v1/apis/#{URI.encode(api_id)}/functions"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a `GraphqlApi` object.
  """
  def create_graphql_api(client, input, options \\ []) do
    path_ = "/v1/apis"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a `Resolver` object.

  A resolver converts incoming requests into a format that a data source can
  understand and converts the data source's responses into GraphQL.
  """
  def create_resolver(client, api_id, type_name, input, options \\ []) do
    path_ = "/v1/apis/#{URI.encode(api_id)}/types/#{URI.encode(type_name)}/resolvers"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a `Type` object.
  """
  def create_type(client, api_id, input, options \\ []) do
    path_ = "/v1/apis/#{URI.encode(api_id)}/types"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes an `ApiCache` object.
  """
  def delete_api_cache(client, api_id, input, options \\ []) do
    path_ = "/v1/apis/#{URI.encode(api_id)}/ApiCaches"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes an API key.
  """
  def delete_api_key(client, api_id, id, input, options \\ []) do
    path_ = "/v1/apis/#{URI.encode(api_id)}/apikeys/#{URI.encode(id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes a `DataSource` object.
  """
  def delete_data_source(client, api_id, name, input, options \\ []) do
    path_ = "/v1/apis/#{URI.encode(api_id)}/datasources/#{URI.encode(name)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes a `Function`.
  """
  def delete_function(client, api_id, function_id, input, options \\ []) do
    path_ = "/v1/apis/#{URI.encode(api_id)}/functions/#{URI.encode(function_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes a `GraphqlApi` object.
  """
  def delete_graphql_api(client, api_id, input, options \\ []) do
    path_ = "/v1/apis/#{URI.encode(api_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes a `Resolver` object.
  """
  def delete_resolver(client, api_id, field_name, type_name, input, options \\ []) do
    path_ = "/v1/apis/#{URI.encode(api_id)}/types/#{URI.encode(type_name)}/resolvers/#{URI.encode(field_name)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes a `Type` object.
  """
  def delete_type(client, api_id, type_name, input, options \\ []) do
    path_ = "/v1/apis/#{URI.encode(api_id)}/types/#{URI.encode(type_name)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Flushes an `ApiCache` object.
  """
  def flush_api_cache(client, api_id, input, options \\ []) do
    path_ = "/v1/apis/#{URI.encode(api_id)}/FlushCache"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Retrieves an `ApiCache` object.
  """
  def get_api_cache(client, api_id, options \\ []) do
    path_ = "/v1/apis/#{URI.encode(api_id)}/ApiCaches"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Retrieves a `DataSource` object.
  """
  def get_data_source(client, api_id, name, options \\ []) do
    path_ = "/v1/apis/#{URI.encode(api_id)}/datasources/#{URI.encode(name)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Get a `Function`.
  """
  def get_function(client, api_id, function_id, options \\ []) do
    path_ = "/v1/apis/#{URI.encode(api_id)}/functions/#{URI.encode(function_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Retrieves a `GraphqlApi` object.
  """
  def get_graphql_api(client, api_id, options \\ []) do
    path_ = "/v1/apis/#{URI.encode(api_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Retrieves the introspection schema for a GraphQL API.
  """
  def get_introspection_schema(client, api_id, format, include_directives \\ nil, options \\ []) do
    path_ = "/v1/apis/#{URI.encode(api_id)}/schema"
    headers = []
    query_ = []
    query_ = if !is_nil(include_directives) do
      [{"includeDirectives", include_directives} | query_]
    else
      query_
    end
    query_ = if !is_nil(format) do
      [{"format", format} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Retrieves a `Resolver` object.
  """
  def get_resolver(client, api_id, field_name, type_name, options \\ []) do
    path_ = "/v1/apis/#{URI.encode(api_id)}/types/#{URI.encode(type_name)}/resolvers/#{URI.encode(field_name)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Retrieves the current status of a schema creation operation.
  """
  def get_schema_creation_status(client, api_id, options \\ []) do
    path_ = "/v1/apis/#{URI.encode(api_id)}/schemacreation"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Retrieves a `Type` object.
  """
  def get_type(client, api_id, type_name, format, options \\ []) do
    path_ = "/v1/apis/#{URI.encode(api_id)}/types/#{URI.encode(type_name)}"
    headers = []
    query_ = []
    query_ = if !is_nil(format) do
      [{"format", format} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists the API keys for a given API.

  <note> API keys are deleted automatically 60 days after they expire.
  However, they may still be included in the response until they have
  actually been deleted. You can safely call `DeleteApiKey` to manually
  delete a key before it's automatically deleted.

  </note>
  """
  def list_api_keys(client, api_id, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/v1/apis/#{URI.encode(api_id)}/apikeys"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists the data sources for a given API.
  """
  def list_data_sources(client, api_id, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/v1/apis/#{URI.encode(api_id)}/datasources"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  List multiple functions.
  """
  def list_functions(client, api_id, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/v1/apis/#{URI.encode(api_id)}/functions"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists your GraphQL APIs.
  """
  def list_graphql_apis(client, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/v1/apis"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists the resolvers for a given API and type.
  """
  def list_resolvers(client, api_id, type_name, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/v1/apis/#{URI.encode(api_id)}/types/#{URI.encode(type_name)}/resolvers"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  List the resolvers that are associated with a specific function.
  """
  def list_resolvers_by_function(client, api_id, function_id, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/v1/apis/#{URI.encode(api_id)}/functions/#{URI.encode(function_id)}/resolvers"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists the tags for a resource.
  """
  def list_tags_for_resource(client, resource_arn, options \\ []) do
    path_ = "/v1/tags/#{URI.encode(resource_arn)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists the types for a given API.
  """
  def list_types(client, api_id, format, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/v1/apis/#{URI.encode(api_id)}/types"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    query_ = if !is_nil(format) do
      [{"format", format} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Adds a new schema to your GraphQL API.

  This operation is asynchronous. Use to determine when it has completed.
  """
  def start_schema_creation(client, api_id, input, options \\ []) do
    path_ = "/v1/apis/#{URI.encode(api_id)}/schemacreation"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Tags a resource with user-supplied tags.
  """
  def tag_resource(client, resource_arn, input, options \\ []) do
    path_ = "/v1/tags/#{URI.encode(resource_arn)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Untags a resource.
  """
  def untag_resource(client, resource_arn, input, options \\ []) do
    path_ = "/v1/tags/#{URI.encode(resource_arn)}"
    headers = []
    {query_, input} =
      [
        {"tagKeys", "tagKeys"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates the cache for the GraphQL API.
  """
  def update_api_cache(client, api_id, input, options \\ []) do
    path_ = "/v1/apis/#{URI.encode(api_id)}/ApiCaches/update"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates an API key. The key can be updated while it is not deleted.
  """
  def update_api_key(client, api_id, id, input, options \\ []) do
    path_ = "/v1/apis/#{URI.encode(api_id)}/apikeys/#{URI.encode(id)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates a `DataSource` object.
  """
  def update_data_source(client, api_id, name, input, options \\ []) do
    path_ = "/v1/apis/#{URI.encode(api_id)}/datasources/#{URI.encode(name)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates a `Function` object.
  """
  def update_function(client, api_id, function_id, input, options \\ []) do
    path_ = "/v1/apis/#{URI.encode(api_id)}/functions/#{URI.encode(function_id)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates a `GraphqlApi` object.
  """
  def update_graphql_api(client, api_id, input, options \\ []) do
    path_ = "/v1/apis/#{URI.encode(api_id)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates a `Resolver` object.
  """
  def update_resolver(client, api_id, field_name, type_name, input, options \\ []) do
    path_ = "/v1/apis/#{URI.encode(api_id)}/types/#{URI.encode(type_name)}/resolvers/#{URI.encode(field_name)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates a `Type` object.
  """
  def update_type(client, api_id, type_name, input, options \\ []) do
    path_ = "/v1/apis/#{URI.encode(api_id)}/types/#{URI.encode(type_name)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "appsync"}
    host = build_host("appsync", client)
    url = host
    |> build_url(path, client)
    |> add_query(query)

    additional_headers = [{"Host", host}, {"Content-Type", "application/x-amz-json-1.1"}]
    headers = AWS.Request.add_headers(additional_headers, headers)

    payload = encode_payload(input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    perform_request(method, url, payload, headers, options, success_status_code)
  end

  defp perform_request(method, url, payload, headers, options, success_status_code) do
    {client, fun} = Application.get_env(:aws_elixir, :http_client, {Aws.Internal.HttpClient, :request})
    apply(client, fun, [method, url, payload, headers, options, success_status_code])
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

  defp add_query(url, []) do
    url
  end
  defp add_query(url, query) do
    querystring = AWS.Util.encode_query(query)
    "#{url}?#{querystring}"
  end

  defp encode_payload(input) do
    if input != nil, do: encode!(input), else: ""
  end

  defp encode!(input) do
    {encoder, fun} = Application.get_env(:aws_elixir, :json_encoder, {Poison, :encode!})
    apply(encoder, fun, [input])
  end
end
