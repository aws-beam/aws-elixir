# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.AppSync do
  @moduledoc """
  AppSync provides API actions for creating and interacting with data sources
  using GraphQL
  from your application.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      api_version: "2017-07-25",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "appsync",
      global?: false,
      protocol: "rest-json",
      service_id: "AppSync",
      signature_version: "v4",
      signing_name: "appsync",
      target_prefix: nil
    }
  end

  @doc """
  Maps an endpoint to your custom domain.
  """
  def associate_api(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/v1/domainnames/#{AWS.Util.encode_uri(domain_name)}/apiassociation"
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
  Creates an association between a Merged API and source API using the source
  API's identifier.
  """
  def associate_merged_graphql_api(
        %Client{} = client,
        source_api_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v1/sourceApis/#{AWS.Util.encode_uri(source_api_identifier)}/mergedApiAssociations"

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
  Creates an association between a Merged API and source API using the Merged
  API's identifier.
  """
  def associate_source_graphql_api(
        %Client{} = client,
        merged_api_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v1/mergedApis/#{AWS.Util.encode_uri(merged_api_identifier)}/sourceApiAssociations"

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
  Creates a cache for the GraphQL API.
  """
  def create_api_cache(%Client{} = client, api_id, input, options \\ []) do
    url_path = "/v1/apis/#{AWS.Util.encode_uri(api_id)}/ApiCaches"
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
  Creates a unique key that you can distribute to clients who invoke your API.
  """
  def create_api_key(%Client{} = client, api_id, input, options \\ []) do
    url_path = "/v1/apis/#{AWS.Util.encode_uri(api_id)}/apikeys"
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
  Creates a `DataSource` object.
  """
  def create_data_source(%Client{} = client, api_id, input, options \\ []) do
    url_path = "/v1/apis/#{AWS.Util.encode_uri(api_id)}/datasources"
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
  Creates a custom `DomainName` object.
  """
  def create_domain_name(%Client{} = client, input, options \\ []) do
    url_path = "/v1/domainnames"
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
  Creates a `Function` object.

  A function is a reusable entity. You can use multiple functions to compose the
  resolver logic.
  """
  def create_function(%Client{} = client, api_id, input, options \\ []) do
    url_path = "/v1/apis/#{AWS.Util.encode_uri(api_id)}/functions"
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
  Creates a `GraphqlApi` object.
  """
  def create_graphql_api(%Client{} = client, input, options \\ []) do
    url_path = "/v1/apis"
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
  Creates a `Resolver` object.

  A resolver converts incoming requests into a format that a data source can
  understand, and converts the data
  source's responses into GraphQL.
  """
  def create_resolver(%Client{} = client, api_id, type_name, input, options \\ []) do
    url_path =
      "/v1/apis/#{AWS.Util.encode_uri(api_id)}/types/#{AWS.Util.encode_uri(type_name)}/resolvers"

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
  Creates a `Type` object.
  """
  def create_type(%Client{} = client, api_id, input, options \\ []) do
    url_path = "/v1/apis/#{AWS.Util.encode_uri(api_id)}/types"
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
  Deletes an `ApiCache` object.
  """
  def delete_api_cache(%Client{} = client, api_id, input, options \\ []) do
    url_path = "/v1/apis/#{AWS.Util.encode_uri(api_id)}/ApiCaches"
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
      200
    )
  end

  @doc """
  Deletes an API key.
  """
  def delete_api_key(%Client{} = client, api_id, id, input, options \\ []) do
    url_path = "/v1/apis/#{AWS.Util.encode_uri(api_id)}/apikeys/#{AWS.Util.encode_uri(id)}"
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
      200
    )
  end

  @doc """
  Deletes a `DataSource` object.
  """
  def delete_data_source(%Client{} = client, api_id, name, input, options \\ []) do
    url_path = "/v1/apis/#{AWS.Util.encode_uri(api_id)}/datasources/#{AWS.Util.encode_uri(name)}"
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
      200
    )
  end

  @doc """
  Deletes a custom `DomainName` object.
  """
  def delete_domain_name(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/v1/domainnames/#{AWS.Util.encode_uri(domain_name)}"
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
      200
    )
  end

  @doc """
  Deletes a `Function`.
  """
  def delete_function(%Client{} = client, api_id, function_id, input, options \\ []) do
    url_path =
      "/v1/apis/#{AWS.Util.encode_uri(api_id)}/functions/#{AWS.Util.encode_uri(function_id)}"

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
      200
    )
  end

  @doc """
  Deletes a `GraphqlApi` object.
  """
  def delete_graphql_api(%Client{} = client, api_id, input, options \\ []) do
    url_path = "/v1/apis/#{AWS.Util.encode_uri(api_id)}"
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
      200
    )
  end

  @doc """
  Deletes a `Resolver` object.
  """
  def delete_resolver(%Client{} = client, api_id, field_name, type_name, input, options \\ []) do
    url_path =
      "/v1/apis/#{AWS.Util.encode_uri(api_id)}/types/#{AWS.Util.encode_uri(type_name)}/resolvers/#{AWS.Util.encode_uri(field_name)}"

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
      200
    )
  end

  @doc """
  Deletes a `Type` object.
  """
  def delete_type(%Client{} = client, api_id, type_name, input, options \\ []) do
    url_path = "/v1/apis/#{AWS.Util.encode_uri(api_id)}/types/#{AWS.Util.encode_uri(type_name)}"
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
      200
    )
  end

  @doc """
  Removes an `ApiAssociation` object from a custom domain.
  """
  def disassociate_api(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/v1/domainnames/#{AWS.Util.encode_uri(domain_name)}/apiassociation"
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
      200
    )
  end

  @doc """
  Deletes an association between a Merged API and source API using the source
  API's identifier and the
  association ID.
  """
  def disassociate_merged_graphql_api(
        %Client{} = client,
        association_id,
        source_api_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v1/sourceApis/#{AWS.Util.encode_uri(source_api_identifier)}/mergedApiAssociations/#{AWS.Util.encode_uri(association_id)}"

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
      200
    )
  end

  @doc """
  Deletes an association between a Merged API and source API using the Merged
  API's identifier and the
  association ID.
  """
  def disassociate_source_graphql_api(
        %Client{} = client,
        association_id,
        merged_api_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v1/mergedApis/#{AWS.Util.encode_uri(merged_api_identifier)}/sourceApiAssociations/#{AWS.Util.encode_uri(association_id)}"

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
      200
    )
  end

  @doc """
  Evaluates the given code and returns the response.

  The code definition requirements depend on the specified
  runtime. For `APPSYNC_JS` runtimes, the code defines the request and response
  functions. The request
  function takes the incoming request after a GraphQL operation is parsed and
  converts it into a request
  configuration for the selected data source operation. The response function
  interprets responses from the data
  source and maps it to the shape of the GraphQL field output type.
  """
  def evaluate_code(%Client{} = client, input, options \\ []) do
    url_path = "/v1/dataplane-evaluatecode"
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
  Evaluates a given template and returns the response.

  The mapping template can be a request or response
  template.

  Request templates take the incoming request after a GraphQL operation is parsed
  and convert it into a
  request configuration for the selected data source operation. Response templates
  interpret responses from the
  data source and map it to the shape of the GraphQL field output type.

  Mapping templates are written in the Apache Velocity Template Language (VTL).
  """
  def evaluate_mapping_template(%Client{} = client, input, options \\ []) do
    url_path = "/v1/dataplane-evaluatetemplate"
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
  Flushes an `ApiCache` object.
  """
  def flush_api_cache(%Client{} = client, api_id, input, options \\ []) do
    url_path = "/v1/apis/#{AWS.Util.encode_uri(api_id)}/FlushCache"
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
      200
    )
  end

  @doc """
  Retrieves an `ApiAssociation` object.
  """
  def get_api_association(%Client{} = client, domain_name, options \\ []) do
    url_path = "/v1/domainnames/#{AWS.Util.encode_uri(domain_name)}/apiassociation"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves an `ApiCache` object.
  """
  def get_api_cache(%Client{} = client, api_id, options \\ []) do
    url_path = "/v1/apis/#{AWS.Util.encode_uri(api_id)}/ApiCaches"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a `DataSource` object.
  """
  def get_data_source(%Client{} = client, api_id, name, options \\ []) do
    url_path = "/v1/apis/#{AWS.Util.encode_uri(api_id)}/datasources/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the record of an existing introspection.

  If the retrieval is successful, the result of the
  instrospection will also be returned. If the retrieval fails the operation, an
  error message will be returned
  instead.
  """
  def get_data_source_introspection(
        %Client{} = client,
        introspection_id,
        include_models_s_d_l \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/v1/datasources/introspections/#{AWS.Util.encode_uri(introspection_id)}"
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

    query_params =
      if !is_nil(include_models_s_d_l) do
        [{"includeModelsSDL", include_models_s_d_l} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a custom `DomainName` object.
  """
  def get_domain_name(%Client{} = client, domain_name, options \\ []) do
    url_path = "/v1/domainnames/#{AWS.Util.encode_uri(domain_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get a `Function`.
  """
  def get_function(%Client{} = client, api_id, function_id, options \\ []) do
    url_path =
      "/v1/apis/#{AWS.Util.encode_uri(api_id)}/functions/#{AWS.Util.encode_uri(function_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a `GraphqlApi` object.
  """
  def get_graphql_api(%Client{} = client, api_id, options \\ []) do
    url_path = "/v1/apis/#{AWS.Util.encode_uri(api_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the list of environmental variable key-value pairs associated with an
  API by its ID value.
  """
  def get_graphql_api_environment_variables(%Client{} = client, api_id, options \\ []) do
    url_path = "/v1/apis/#{AWS.Util.encode_uri(api_id)}/environmentVariables"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the introspection schema for a GraphQL API.
  """
  def get_introspection_schema(
        %Client{} = client,
        api_id,
        format,
        include_directives \\ nil,
        options \\ []
      ) do
    url_path = "/v1/apis/#{AWS.Util.encode_uri(api_id)}/schema"
    headers = []
    query_params = []

    query_params =
      if !is_nil(include_directives) do
        [{"includeDirectives", include_directives} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(format) do
        [{"format", format} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a `Resolver` object.
  """
  def get_resolver(%Client{} = client, api_id, field_name, type_name, options \\ []) do
    url_path =
      "/v1/apis/#{AWS.Util.encode_uri(api_id)}/types/#{AWS.Util.encode_uri(type_name)}/resolvers/#{AWS.Util.encode_uri(field_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the current status of a schema creation operation.
  """
  def get_schema_creation_status(%Client{} = client, api_id, options \\ []) do
    url_path = "/v1/apis/#{AWS.Util.encode_uri(api_id)}/schemacreation"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a `SourceApiAssociation` object.
  """
  def get_source_api_association(
        %Client{} = client,
        association_id,
        merged_api_identifier,
        options \\ []
      ) do
    url_path =
      "/v1/mergedApis/#{AWS.Util.encode_uri(merged_api_identifier)}/sourceApiAssociations/#{AWS.Util.encode_uri(association_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a `Type` object.
  """
  def get_type(%Client{} = client, api_id, type_name, format, options \\ []) do
    url_path = "/v1/apis/#{AWS.Util.encode_uri(api_id)}/types/#{AWS.Util.encode_uri(type_name)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(format) do
        [{"format", format} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the API keys for a given API.

  API keys are deleted automatically 60 days after they expire. However, they may
  still be included in the
  response until they have actually been deleted. You can safely call
  `DeleteApiKey` to manually
  delete a key before it's automatically deleted.
  """
  def list_api_keys(
        %Client{} = client,
        api_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/v1/apis/#{AWS.Util.encode_uri(api_id)}/apikeys"
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
  Lists the data sources for a given API.
  """
  def list_data_sources(
        %Client{} = client,
        api_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/v1/apis/#{AWS.Util.encode_uri(api_id)}/datasources"
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
  Lists multiple custom domain names.
  """
  def list_domain_names(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/v1/domainnames"
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
  List multiple functions.
  """
  def list_functions(
        %Client{} = client,
        api_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/v1/apis/#{AWS.Util.encode_uri(api_id)}/functions"
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
  Lists your GraphQL APIs.
  """
  def list_graphql_apis(
        %Client{} = client,
        api_type \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        owner \\ nil,
        options \\ []
      ) do
    url_path = "/v1/apis"
    headers = []
    query_params = []

    query_params =
      if !is_nil(owner) do
        [{"owner", owner} | query_params]
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
      if !is_nil(api_type) do
        [{"apiType", api_type} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the resolvers for a given API and type.
  """
  def list_resolvers(
        %Client{} = client,
        api_id,
        type_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/v1/apis/#{AWS.Util.encode_uri(api_id)}/types/#{AWS.Util.encode_uri(type_name)}/resolvers"

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
  List the resolvers that are associated with a specific function.
  """
  def list_resolvers_by_function(
        %Client{} = client,
        api_id,
        function_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/v1/apis/#{AWS.Util.encode_uri(api_id)}/functions/#{AWS.Util.encode_uri(function_id)}/resolvers"

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
  Lists the `SourceApiAssociationSummary` data.
  """
  def list_source_api_associations(
        %Client{} = client,
        api_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/v1/apis/#{AWS.Util.encode_uri(api_id)}/sourceApiAssociations"
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
  Lists the tags for a resource.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/v1/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the types for a given API.
  """
  def list_types(
        %Client{} = client,
        api_id,
        format,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/v1/apis/#{AWS.Util.encode_uri(api_id)}/types"
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

    query_params =
      if !is_nil(format) do
        [{"format", format} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists `Type` objects by the source API association ID.
  """
  def list_types_by_association(
        %Client{} = client,
        association_id,
        merged_api_identifier,
        format,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/v1/mergedApis/#{AWS.Util.encode_uri(merged_api_identifier)}/sourceApiAssociations/#{AWS.Util.encode_uri(association_id)}/types"

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

    query_params =
      if !is_nil(format) do
        [{"format", format} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Creates a list of environmental variables in an API by its ID value.

  When creating an environmental variable, it must follow the constraints below:

    *
  Both JavaScript and VTL templates support environmental variables.

    *
  Environmental variables are not evaluated before function invocation.

    *
  Environmental variables only support string values.

    *
  Any defined value in an environmental variable is considered a string literal
  and not
  expanded.

    *
  Variable evaluations should ideally be performed in the function code.

  When creating an environmental variable key-value pair, it must follow the
  additional constraints
  below:

    *
  Keys must begin with a letter.

    *
  Keys must be at least two characters long.

    *
  Keys can only contain letters, numbers, and the underscore character (_).

    *
  Values can be up to 512 characters long.

    *
  You can configure up to 50 key-value pairs in a GraphQL API.

  You can create a list of environmental variables by adding it to the
  `environmentVariables`
  payload as a list in the format `{"key1":"value1","key2":"value2", …}`. Note
  that each call of the
  `PutGraphqlApiEnvironmentVariables` action will result in the overwriting of the
  existing
  environmental variable list of that API. This means the existing environmental
  variables will be lost. To avoid
  this, you must include all existing and new environmental variables in the list
  each time you call this
  action.
  """
  def put_graphql_api_environment_variables(%Client{} = client, api_id, input, options \\ []) do
    url_path = "/v1/apis/#{AWS.Util.encode_uri(api_id)}/environmentVariables"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Creates a new introspection.

  Returns the `introspectionId` of the new introspection after its
  creation.
  """
  def start_data_source_introspection(%Client{} = client, input, options \\ []) do
    url_path = "/v1/datasources/introspections"
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
  Adds a new schema to your GraphQL API.

  This operation is asynchronous. Use to determine when it has
  completed.
  """
  def start_schema_creation(%Client{} = client, api_id, input, options \\ []) do
    url_path = "/v1/apis/#{AWS.Util.encode_uri(api_id)}/schemacreation"
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
  Initiates a merge operation.

  Returns a status that shows the result of the merge operation.
  """
  def start_schema_merge(
        %Client{} = client,
        association_id,
        merged_api_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v1/mergedApis/#{AWS.Util.encode_uri(merged_api_identifier)}/sourceApiAssociations/#{AWS.Util.encode_uri(association_id)}/merge"

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
  Tags a resource with user-supplied tags.
  """
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/v1/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
  Untags a resource.
  """
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/v1/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

    {query_params, input} =
      [
        {"tagKeys", "tagKeys"}
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
      200
    )
  end

  @doc """
  Updates the cache for the GraphQL API.
  """
  def update_api_cache(%Client{} = client, api_id, input, options \\ []) do
    url_path = "/v1/apis/#{AWS.Util.encode_uri(api_id)}/ApiCaches/update"
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
  Updates an API key.

  You can update the key as long as it's not deleted.
  """
  def update_api_key(%Client{} = client, api_id, id, input, options \\ []) do
    url_path = "/v1/apis/#{AWS.Util.encode_uri(api_id)}/apikeys/#{AWS.Util.encode_uri(id)}"
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
  Updates a `DataSource` object.
  """
  def update_data_source(%Client{} = client, api_id, name, input, options \\ []) do
    url_path = "/v1/apis/#{AWS.Util.encode_uri(api_id)}/datasources/#{AWS.Util.encode_uri(name)}"
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
  Updates a custom `DomainName` object.
  """
  def update_domain_name(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/v1/domainnames/#{AWS.Util.encode_uri(domain_name)}"
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
  Updates a `Function` object.
  """
  def update_function(%Client{} = client, api_id, function_id, input, options \\ []) do
    url_path =
      "/v1/apis/#{AWS.Util.encode_uri(api_id)}/functions/#{AWS.Util.encode_uri(function_id)}"

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
  Updates a `GraphqlApi` object.
  """
  def update_graphql_api(%Client{} = client, api_id, input, options \\ []) do
    url_path = "/v1/apis/#{AWS.Util.encode_uri(api_id)}"
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
  Updates a `Resolver` object.
  """
  def update_resolver(%Client{} = client, api_id, field_name, type_name, input, options \\ []) do
    url_path =
      "/v1/apis/#{AWS.Util.encode_uri(api_id)}/types/#{AWS.Util.encode_uri(type_name)}/resolvers/#{AWS.Util.encode_uri(field_name)}"

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
  Updates some of the configuration choices of a particular source API
  association.
  """
  def update_source_api_association(
        %Client{} = client,
        association_id,
        merged_api_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v1/mergedApis/#{AWS.Util.encode_uri(merged_api_identifier)}/sourceApiAssociations/#{AWS.Util.encode_uri(association_id)}"

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
  Updates a `Type` object.
  """
  def update_type(%Client{} = client, api_id, type_name, input, options \\ []) do
    url_path = "/v1/apis/#{AWS.Util.encode_uri(api_id)}/types/#{AWS.Util.encode_uri(type_name)}"
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
