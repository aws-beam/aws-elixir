# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ApiGatewayV2 do
  @moduledoc """
  Amazon API Gateway V2
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      api_version: "2018-11-29",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "apigateway",
      global?: false,
      protocol: "rest-json",
      service_id: "ApiGatewayV2",
      signature_version: "v4",
      signing_name: "apigateway",
      target_prefix: nil
    }
  end

  @doc """
  Creates an Api resource.
  """
  def create_api(%Client{} = client, input, options \\ []) do
    url_path = "/v2/apis"
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
  Creates an API mapping.
  """
  def create_api_mapping(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/v2/domainnames/#{AWS.Util.encode_uri(domain_name)}/apimappings"
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
  Creates an Authorizer for an API.
  """
  def create_authorizer(%Client{} = client, api_id, input, options \\ []) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/authorizers"
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
  Creates a Deployment for an API.
  """
  def create_deployment(%Client{} = client, api_id, input, options \\ []) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/deployments"
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
  Creates a domain name.
  """
  def create_domain_name(%Client{} = client, input, options \\ []) do
    url_path = "/v2/domainnames"
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
  Creates an Integration.
  """
  def create_integration(%Client{} = client, api_id, input, options \\ []) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/integrations"
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
  Creates an IntegrationResponses.
  """
  def create_integration_response(
        %Client{} = client,
        api_id,
        integration_id,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/integrations/#{AWS.Util.encode_uri(integration_id)}/integrationresponses"

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
  Creates a Model for an API.
  """
  def create_model(%Client{} = client, api_id, input, options \\ []) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/models"
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
  Creates a Route for an API.
  """
  def create_route(%Client{} = client, api_id, input, options \\ []) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/routes"
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
  Creates a RouteResponse for a Route.
  """
  def create_route_response(%Client{} = client, api_id, route_id, input, options \\ []) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/routes/#{AWS.Util.encode_uri(route_id)}/routeresponses"

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
  Creates a Stage for an API.
  """
  def create_stage(%Client{} = client, api_id, input, options \\ []) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/stages"
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
  Creates a VPC link.
  """
  def create_vpc_link(%Client{} = client, input, options \\ []) do
    url_path = "/v2/vpclinks"
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
  Deletes the AccessLogSettings for a Stage.

  To disable access logging for a Stage, delete its AccessLogSettings.
  """
  def delete_access_log_settings(%Client{} = client, api_id, stage_name, input, options \\ []) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/stages/#{AWS.Util.encode_uri(stage_name)}/accesslogsettings"

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
  Deletes an Api resource.
  """
  def delete_api(%Client{} = client, api_id, input, options \\ []) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}"
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
  Deletes an API mapping.
  """
  def delete_api_mapping(%Client{} = client, api_mapping_id, domain_name, input, options \\ []) do
    url_path =
      "/v2/domainnames/#{AWS.Util.encode_uri(domain_name)}/apimappings/#{AWS.Util.encode_uri(api_mapping_id)}"

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
  Deletes an Authorizer.
  """
  def delete_authorizer(%Client{} = client, api_id, authorizer_id, input, options \\ []) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/authorizers/#{AWS.Util.encode_uri(authorizer_id)}"

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
  Deletes a CORS configuration.
  """
  def delete_cors_configuration(%Client{} = client, api_id, input, options \\ []) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/cors"
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
  Deletes a Deployment.
  """
  def delete_deployment(%Client{} = client, api_id, deployment_id, input, options \\ []) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/deployments/#{AWS.Util.encode_uri(deployment_id)}"

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
  Deletes a domain name.
  """
  def delete_domain_name(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/v2/domainnames/#{AWS.Util.encode_uri(domain_name)}"
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
  Deletes an Integration.
  """
  def delete_integration(%Client{} = client, api_id, integration_id, input, options \\ []) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/integrations/#{AWS.Util.encode_uri(integration_id)}"

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
  Deletes an IntegrationResponses.
  """
  def delete_integration_response(
        %Client{} = client,
        api_id,
        integration_id,
        integration_response_id,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/integrations/#{AWS.Util.encode_uri(integration_id)}/integrationresponses/#{AWS.Util.encode_uri(integration_response_id)}"

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
  Deletes a Model.
  """
  def delete_model(%Client{} = client, api_id, model_id, input, options \\ []) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/models/#{AWS.Util.encode_uri(model_id)}"
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
  Deletes a Route.
  """
  def delete_route(%Client{} = client, api_id, route_id, input, options \\ []) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/routes/#{AWS.Util.encode_uri(route_id)}"
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
  Deletes a route request parameter.

  Supported only for WebSocket APIs.
  """
  def delete_route_request_parameter(
        %Client{} = client,
        api_id,
        request_parameter_key,
        route_id,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/routes/#{AWS.Util.encode_uri(route_id)}/requestparameters/#{AWS.Util.encode_uri(request_parameter_key)}"

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
  Deletes a RouteResponse.
  """
  def delete_route_response(
        %Client{} = client,
        api_id,
        route_id,
        route_response_id,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/routes/#{AWS.Util.encode_uri(route_id)}/routeresponses/#{AWS.Util.encode_uri(route_response_id)}"

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
  Deletes the RouteSettings for a stage.
  """
  def delete_route_settings(
        %Client{} = client,
        api_id,
        route_key,
        stage_name,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/stages/#{AWS.Util.encode_uri(stage_name)}/routesettings/#{AWS.Util.encode_uri(route_key)}"

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
  Deletes a Stage.
  """
  def delete_stage(%Client{} = client, api_id, stage_name, input, options \\ []) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/stages/#{AWS.Util.encode_uri(stage_name)}"
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
  Deletes a VPC link.
  """
  def delete_vpc_link(%Client{} = client, vpc_link_id, input, options \\ []) do
    url_path = "/v2/vpclinks/#{AWS.Util.encode_uri(vpc_link_id)}"
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
      202
    )
  end

  def export_api(
        %Client{} = client,
        api_id,
        specification,
        export_version \\ nil,
        include_extensions \\ nil,
        output_type,
        stage_name \\ nil,
        options \\ []
      ) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/exports/#{AWS.Util.encode_uri(specification)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(stage_name) do
        [{"stageName", stage_name} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(output_type) do
        [{"outputType", output_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(include_extensions) do
        [{"includeExtensions", include_extensions} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(export_version) do
        [{"exportVersion", export_version} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets an Api resource.
  """
  def get_api(%Client{} = client, api_id, options \\ []) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets an API mapping.
  """
  def get_api_mapping(%Client{} = client, api_mapping_id, domain_name, options \\ []) do
    url_path =
      "/v2/domainnames/#{AWS.Util.encode_uri(domain_name)}/apimappings/#{AWS.Util.encode_uri(api_mapping_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets API mappings.
  """
  def get_api_mappings(
        %Client{} = client,
        domain_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/v2/domainnames/#{AWS.Util.encode_uri(domain_name)}/apimappings"
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
  Gets a collection of Api resources.
  """
  def get_apis(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/v2/apis"
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
  Gets an Authorizer.
  """
  def get_authorizer(%Client{} = client, api_id, authorizer_id, options \\ []) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/authorizers/#{AWS.Util.encode_uri(authorizer_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the Authorizers for an API.
  """
  def get_authorizers(
        %Client{} = client,
        api_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/authorizers"
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
  Gets a Deployment.
  """
  def get_deployment(%Client{} = client, api_id, deployment_id, options \\ []) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/deployments/#{AWS.Util.encode_uri(deployment_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the Deployments for an API.
  """
  def get_deployments(
        %Client{} = client,
        api_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/deployments"
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
  Gets a domain name.
  """
  def get_domain_name(%Client{} = client, domain_name, options \\ []) do
    url_path = "/v2/domainnames/#{AWS.Util.encode_uri(domain_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the domain names for an AWS account.
  """
  def get_domain_names(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/v2/domainnames"
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
  Gets an Integration.
  """
  def get_integration(%Client{} = client, api_id, integration_id, options \\ []) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/integrations/#{AWS.Util.encode_uri(integration_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets an IntegrationResponses.
  """
  def get_integration_response(
        %Client{} = client,
        api_id,
        integration_id,
        integration_response_id,
        options \\ []
      ) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/integrations/#{AWS.Util.encode_uri(integration_id)}/integrationresponses/#{AWS.Util.encode_uri(integration_response_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the IntegrationResponses for an Integration.
  """
  def get_integration_responses(
        %Client{} = client,
        api_id,
        integration_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/integrations/#{AWS.Util.encode_uri(integration_id)}/integrationresponses"

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
  Gets the Integrations for an API.
  """
  def get_integrations(
        %Client{} = client,
        api_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/integrations"
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
  Gets a Model.
  """
  def get_model(%Client{} = client, api_id, model_id, options \\ []) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/models/#{AWS.Util.encode_uri(model_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a model template.
  """
  def get_model_template(%Client{} = client, api_id, model_id, options \\ []) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/models/#{AWS.Util.encode_uri(model_id)}/template"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the Models for an API.
  """
  def get_models(%Client{} = client, api_id, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/models"
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
  Gets a Route.
  """
  def get_route(%Client{} = client, api_id, route_id, options \\ []) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/routes/#{AWS.Util.encode_uri(route_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a RouteResponse.
  """
  def get_route_response(%Client{} = client, api_id, route_id, route_response_id, options \\ []) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/routes/#{AWS.Util.encode_uri(route_id)}/routeresponses/#{AWS.Util.encode_uri(route_response_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the RouteResponses for a Route.
  """
  def get_route_responses(
        %Client{} = client,
        api_id,
        route_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/routes/#{AWS.Util.encode_uri(route_id)}/routeresponses"

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
  Gets the Routes for an API.
  """
  def get_routes(%Client{} = client, api_id, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/routes"
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
  Gets a Stage.
  """
  def get_stage(%Client{} = client, api_id, stage_name, options \\ []) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/stages/#{AWS.Util.encode_uri(stage_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the Stages for an API.
  """
  def get_stages(%Client{} = client, api_id, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/stages"
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
  Gets a collection of Tag resources.
  """
  def get_tags(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/v2/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a VPC link.
  """
  def get_vpc_link(%Client{} = client, vpc_link_id, options \\ []) do
    url_path = "/v2/vpclinks/#{AWS.Util.encode_uri(vpc_link_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a collection of VPC links.
  """
  def get_vpc_links(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/v2/vpclinks"
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
  Imports an API.
  """
  def import_api(%Client{} = client, input, options \\ []) do
    url_path = "/v2/apis"
    headers = []

    {query_params, input} =
      [
        {"Basepath", "basepath"},
        {"FailOnWarnings", "failOnWarnings"}
      ]
      |> Request.build_params(input)

    options =
      Keyword.put(
        options,
        :send_body_as_binary?,
        true
      )

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 201)
  end

  @doc """
  Puts an Api resource.
  """
  def reimport_api(%Client{} = client, api_id, input, options \\ []) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}"
    headers = []

    {query_params, input} =
      [
        {"Basepath", "basepath"},
        {"FailOnWarnings", "failOnWarnings"}
      ]
      |> Request.build_params(input)

    options =
      Keyword.put(
        options,
        :send_body_as_binary?,
        true
      )

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 201)
  end

  @doc """
  Resets all authorizer cache entries on a stage.

  Supported only for HTTP APIs.
  """
  def reset_authorizers_cache(%Client{} = client, api_id, stage_name, input, options \\ []) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/stages/#{AWS.Util.encode_uri(stage_name)}/cache/authorizers"

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
  Creates a new Tag resource to represent a tag.
  """
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/v2/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
  Deletes a Tag.
  """
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/v2/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
  Updates an Api resource.
  """
  def update_api(%Client{} = client, api_id, input, options \\ []) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  The API mapping.
  """
  def update_api_mapping(%Client{} = client, api_mapping_id, domain_name, input, options \\ []) do
    url_path =
      "/v2/domainnames/#{AWS.Util.encode_uri(domain_name)}/apimappings/#{AWS.Util.encode_uri(api_mapping_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates an Authorizer.
  """
  def update_authorizer(%Client{} = client, api_id, authorizer_id, input, options \\ []) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/authorizers/#{AWS.Util.encode_uri(authorizer_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a Deployment.
  """
  def update_deployment(%Client{} = client, api_id, deployment_id, input, options \\ []) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/deployments/#{AWS.Util.encode_uri(deployment_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a domain name.
  """
  def update_domain_name(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/v2/domainnames/#{AWS.Util.encode_uri(domain_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates an Integration.
  """
  def update_integration(%Client{} = client, api_id, integration_id, input, options \\ []) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/integrations/#{AWS.Util.encode_uri(integration_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates an IntegrationResponses.
  """
  def update_integration_response(
        %Client{} = client,
        api_id,
        integration_id,
        integration_response_id,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/integrations/#{AWS.Util.encode_uri(integration_id)}/integrationresponses/#{AWS.Util.encode_uri(integration_response_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a Model.
  """
  def update_model(%Client{} = client, api_id, model_id, input, options \\ []) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/models/#{AWS.Util.encode_uri(model_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a Route.
  """
  def update_route(%Client{} = client, api_id, route_id, input, options \\ []) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/routes/#{AWS.Util.encode_uri(route_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a RouteResponse.
  """
  def update_route_response(
        %Client{} = client,
        api_id,
        route_id,
        route_response_id,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/apis/#{AWS.Util.encode_uri(api_id)}/routes/#{AWS.Util.encode_uri(route_id)}/routeresponses/#{AWS.Util.encode_uri(route_response_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a Stage.
  """
  def update_stage(%Client{} = client, api_id, stage_name, input, options \\ []) do
    url_path = "/v2/apis/#{AWS.Util.encode_uri(api_id)}/stages/#{AWS.Util.encode_uri(stage_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a VPC link.
  """
  def update_vpc_link(%Client{} = client, vpc_link_id, input, options \\ []) do
    url_path = "/v2/vpclinks/#{AWS.Util.encode_uri(vpc_link_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end
end
