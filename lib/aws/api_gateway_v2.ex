# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ApiGatewayV2 do
  @moduledoc """
  Amazon API Gateway V2
  """

  @doc """
  Creates an Api resource.
  """
  def create_api(client, input, options \\ []) do
    path_ = "/v2/apis"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Creates an API mapping.
  """
  def create_api_mapping(client, domain_name, input, options \\ []) do
    path_ = "/v2/domainnames/#{URI.encode(domain_name)}/apimappings"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Creates an Authorizer for an API.
  """
  def create_authorizer(client, api_id, input, options \\ []) do
    path_ = "/v2/apis/#{URI.encode(api_id)}/authorizers"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Creates a Deployment for an API.
  """
  def create_deployment(client, api_id, input, options \\ []) do
    path_ = "/v2/apis/#{URI.encode(api_id)}/deployments"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Creates a domain name.
  """
  def create_domain_name(client, input, options \\ []) do
    path_ = "/v2/domainnames"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Creates an Integration.
  """
  def create_integration(client, api_id, input, options \\ []) do
    path_ = "/v2/apis/#{URI.encode(api_id)}/integrations"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Creates an IntegrationResponses.
  """
  def create_integration_response(client, api_id, integration_id, input, options \\ []) do
    path_ = "/v2/apis/#{URI.encode(api_id)}/integrations/#{URI.encode(integration_id)}/integrationresponses"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Creates a Model for an API.
  """
  def create_model(client, api_id, input, options \\ []) do
    path_ = "/v2/apis/#{URI.encode(api_id)}/models"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Creates a Route for an API.
  """
  def create_route(client, api_id, input, options \\ []) do
    path_ = "/v2/apis/#{URI.encode(api_id)}/routes"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Creates a RouteResponse for a Route.
  """
  def create_route_response(client, api_id, route_id, input, options \\ []) do
    path_ = "/v2/apis/#{URI.encode(api_id)}/routes/#{URI.encode(route_id)}/routeresponses"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Creates a Stage for an API.
  """
  def create_stage(client, api_id, input, options \\ []) do
    path_ = "/v2/apis/#{URI.encode(api_id)}/stages"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Creates a VPC link.
  """
  def create_vpc_link(client, input, options \\ []) do
    path_ = "/v2/vpclinks"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Deletes the AccessLogSettings for a Stage. To disable access logging for a
  Stage, delete its AccessLogSettings.
  """
  def delete_access_log_settings(client, api_id, stage_name, input, options \\ []) do
    path_ = "/v2/apis/#{URI.encode(api_id)}/stages/#{URI.encode(stage_name)}/accesslogsettings"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Deletes an Api resource.
  """
  def delete_api(client, api_id, input, options \\ []) do
    path_ = "/v2/apis/#{URI.encode(api_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Deletes an API mapping.
  """
  def delete_api_mapping(client, api_mapping_id, domain_name, input, options \\ []) do
    path_ = "/v2/domainnames/#{URI.encode(domain_name)}/apimappings/#{URI.encode(api_mapping_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Deletes an Authorizer.
  """
  def delete_authorizer(client, api_id, authorizer_id, input, options \\ []) do
    path_ = "/v2/apis/#{URI.encode(api_id)}/authorizers/#{URI.encode(authorizer_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Deletes a CORS configuration.
  """
  def delete_cors_configuration(client, api_id, input, options \\ []) do
    path_ = "/v2/apis/#{URI.encode(api_id)}/cors"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Deletes a Deployment.
  """
  def delete_deployment(client, api_id, deployment_id, input, options \\ []) do
    path_ = "/v2/apis/#{URI.encode(api_id)}/deployments/#{URI.encode(deployment_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Deletes a domain name.
  """
  def delete_domain_name(client, domain_name, input, options \\ []) do
    path_ = "/v2/domainnames/#{URI.encode(domain_name)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Deletes an Integration.
  """
  def delete_integration(client, api_id, integration_id, input, options \\ []) do
    path_ = "/v2/apis/#{URI.encode(api_id)}/integrations/#{URI.encode(integration_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Deletes an IntegrationResponses.
  """
  def delete_integration_response(client, api_id, integration_id, integration_response_id, input, options \\ []) do
    path_ = "/v2/apis/#{URI.encode(api_id)}/integrations/#{URI.encode(integration_id)}/integrationresponses/#{URI.encode(integration_response_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Deletes a Model.
  """
  def delete_model(client, api_id, model_id, input, options \\ []) do
    path_ = "/v2/apis/#{URI.encode(api_id)}/models/#{URI.encode(model_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Deletes a Route.
  """
  def delete_route(client, api_id, route_id, input, options \\ []) do
    path_ = "/v2/apis/#{URI.encode(api_id)}/routes/#{URI.encode(route_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Deletes a route request parameter.
  """
  def delete_route_request_parameter(client, api_id, request_parameter_key, route_id, input, options \\ []) do
    path_ = "/v2/apis/#{URI.encode(api_id)}/routes/#{URI.encode(route_id)}/requestparameters/#{URI.encode(request_parameter_key)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Deletes a RouteResponse.
  """
  def delete_route_response(client, api_id, route_id, route_response_id, input, options \\ []) do
    path_ = "/v2/apis/#{URI.encode(api_id)}/routes/#{URI.encode(route_id)}/routeresponses/#{URI.encode(route_response_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Deletes the RouteSettings for a stage.
  """
  def delete_route_settings(client, api_id, route_key, stage_name, input, options \\ []) do
    path_ = "/v2/apis/#{URI.encode(api_id)}/stages/#{URI.encode(stage_name)}/routesettings/#{URI.encode(route_key)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Deletes a Stage.
  """
  def delete_stage(client, api_id, stage_name, input, options \\ []) do
    path_ = "/v2/apis/#{URI.encode(api_id)}/stages/#{URI.encode(stage_name)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Deletes a VPC link.
  """
  def delete_vpc_link(client, vpc_link_id, input, options \\ []) do
    path_ = "/v2/vpclinks/#{URI.encode(vpc_link_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 202)
  end

  @doc """
  Exports a definition of an API in a particular output format and
  specification.
  """
  def export_api(client, api_id, specification, export_version \\ nil, include_extensions \\ nil, output_type, stage_name \\ nil, options \\ []) do
    path_ = "/v2/apis/#{URI.encode(api_id)}/exports/#{URI.encode(specification)}"
    headers = []
    query_ = []
    query_ = if !is_nil(stage_name) do
      [{"stageName", stage_name} | query_]
    else
      query_
    end
    query_ = if !is_nil(output_type) do
      [{"outputType", output_type} | query_]
    else
      query_
    end
    query_ = if !is_nil(include_extensions) do
      [{"includeExtensions", include_extensions} | query_]
    else
      query_
    end
    query_ = if !is_nil(export_version) do
      [{"exportVersion", export_version} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Gets an Api resource.
  """
  def get_api(client, api_id, options \\ []) do
    path_ = "/v2/apis/#{URI.encode(api_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Gets an API mapping.
  """
  def get_api_mapping(client, api_mapping_id, domain_name, options \\ []) do
    path_ = "/v2/domainnames/#{URI.encode(domain_name)}/apimappings/#{URI.encode(api_mapping_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Gets API mappings.
  """
  def get_api_mappings(client, domain_name, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/v2/domainnames/#{URI.encode(domain_name)}/apimappings"
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
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Gets a collection of Api resources.
  """
  def get_apis(client, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/v2/apis"
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
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Gets an Authorizer.
  """
  def get_authorizer(client, api_id, authorizer_id, options \\ []) do
    path_ = "/v2/apis/#{URI.encode(api_id)}/authorizers/#{URI.encode(authorizer_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Gets the Authorizers for an API.
  """
  def get_authorizers(client, api_id, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/v2/apis/#{URI.encode(api_id)}/authorizers"
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
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Gets a Deployment.
  """
  def get_deployment(client, api_id, deployment_id, options \\ []) do
    path_ = "/v2/apis/#{URI.encode(api_id)}/deployments/#{URI.encode(deployment_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Gets the Deployments for an API.
  """
  def get_deployments(client, api_id, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/v2/apis/#{URI.encode(api_id)}/deployments"
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
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Gets a domain name.
  """
  def get_domain_name(client, domain_name, options \\ []) do
    path_ = "/v2/domainnames/#{URI.encode(domain_name)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Gets the domain names for an AWS account.
  """
  def get_domain_names(client, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/v2/domainnames"
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
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Gets an Integration.
  """
  def get_integration(client, api_id, integration_id, options \\ []) do
    path_ = "/v2/apis/#{URI.encode(api_id)}/integrations/#{URI.encode(integration_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Gets an IntegrationResponses.
  """
  def get_integration_response(client, api_id, integration_id, integration_response_id, options \\ []) do
    path_ = "/v2/apis/#{URI.encode(api_id)}/integrations/#{URI.encode(integration_id)}/integrationresponses/#{URI.encode(integration_response_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Gets the IntegrationResponses for an Integration.
  """
  def get_integration_responses(client, api_id, integration_id, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/v2/apis/#{URI.encode(api_id)}/integrations/#{URI.encode(integration_id)}/integrationresponses"
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
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Gets the Integrations for an API.
  """
  def get_integrations(client, api_id, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/v2/apis/#{URI.encode(api_id)}/integrations"
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
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Gets a Model.
  """
  def get_model(client, api_id, model_id, options \\ []) do
    path_ = "/v2/apis/#{URI.encode(api_id)}/models/#{URI.encode(model_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Gets a model template.
  """
  def get_model_template(client, api_id, model_id, options \\ []) do
    path_ = "/v2/apis/#{URI.encode(api_id)}/models/#{URI.encode(model_id)}/template"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Gets the Models for an API.
  """
  def get_models(client, api_id, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/v2/apis/#{URI.encode(api_id)}/models"
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
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Gets a Route.
  """
  def get_route(client, api_id, route_id, options \\ []) do
    path_ = "/v2/apis/#{URI.encode(api_id)}/routes/#{URI.encode(route_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Gets a RouteResponse.
  """
  def get_route_response(client, api_id, route_id, route_response_id, options \\ []) do
    path_ = "/v2/apis/#{URI.encode(api_id)}/routes/#{URI.encode(route_id)}/routeresponses/#{URI.encode(route_response_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Gets the RouteResponses for a Route.
  """
  def get_route_responses(client, api_id, route_id, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/v2/apis/#{URI.encode(api_id)}/routes/#{URI.encode(route_id)}/routeresponses"
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
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Gets the Routes for an API.
  """
  def get_routes(client, api_id, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/v2/apis/#{URI.encode(api_id)}/routes"
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
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Gets a Stage.
  """
  def get_stage(client, api_id, stage_name, options \\ []) do
    path_ = "/v2/apis/#{URI.encode(api_id)}/stages/#{URI.encode(stage_name)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Gets the Stages for an API.
  """
  def get_stages(client, api_id, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/v2/apis/#{URI.encode(api_id)}/stages"
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
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Gets a collection of Tag resources.
  """
  def get_tags(client, resource_arn, options \\ []) do
    path_ = "/v2/tags/#{URI.encode(resource_arn)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Gets a VPC link.
  """
  def get_vpc_link(client, vpc_link_id, options \\ []) do
    path_ = "/v2/vpclinks/#{URI.encode(vpc_link_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Gets a collection of VPC links.
  """
  def get_vpc_links(client, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/v2/vpclinks"
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
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Imports an API.
  """
  def import_api(client, input, options \\ []) do
    path_ = "/v2/apis"
    headers = []
    {query_, input} =
      [
        {"Basepath", "basepath"},
        {"FailOnWarnings", "failOnWarnings"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :put, path_, query_, headers, input, options, 201)
  end

  @doc """
  Puts an Api resource.
  """
  def reimport_api(client, api_id, input, options \\ []) do
    path_ = "/v2/apis/#{URI.encode(api_id)}"
    headers = []
    {query_, input} =
      [
        {"Basepath", "basepath"},
        {"FailOnWarnings", "failOnWarnings"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :put, path_, query_, headers, input, options, 201)
  end

  @doc """
  Resets all authorizer cache entries for the specified stage. Supported only
  for HTTP API Lambda authorizers.
  """
  def reset_authorizers_cache(client, api_id, stage_name, input, options \\ []) do
    path_ = "/v2/apis/#{URI.encode(api_id)}/stages/#{URI.encode(stage_name)}/cache/authorizers"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Creates a new Tag resource to represent a tag.
  """
  def tag_resource(client, resource_arn, input, options \\ []) do
    path_ = "/v2/tags/#{URI.encode(resource_arn)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Deletes a Tag.
  """
  def untag_resource(client, resource_arn, input, options \\ []) do
    path_ = "/v2/tags/#{URI.encode(resource_arn)}"
    headers = []
    {query_, input} =
      [
        {"TagKeys", "tagKeys"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Updates an Api resource.
  """
  def update_api(client, api_id, input, options \\ []) do
    path_ = "/v2/apis/#{URI.encode(api_id)}"
    headers = []
    query_ = []
    request(client, :patch, path_, query_, headers, input, options, 200)
  end

  @doc """
  The API mapping.
  """
  def update_api_mapping(client, api_mapping_id, domain_name, input, options \\ []) do
    path_ = "/v2/domainnames/#{URI.encode(domain_name)}/apimappings/#{URI.encode(api_mapping_id)}"
    headers = []
    query_ = []
    request(client, :patch, path_, query_, headers, input, options, 200)
  end

  @doc """
  Updates an Authorizer.
  """
  def update_authorizer(client, api_id, authorizer_id, input, options \\ []) do
    path_ = "/v2/apis/#{URI.encode(api_id)}/authorizers/#{URI.encode(authorizer_id)}"
    headers = []
    query_ = []
    request(client, :patch, path_, query_, headers, input, options, 200)
  end

  @doc """
  Updates a Deployment.
  """
  def update_deployment(client, api_id, deployment_id, input, options \\ []) do
    path_ = "/v2/apis/#{URI.encode(api_id)}/deployments/#{URI.encode(deployment_id)}"
    headers = []
    query_ = []
    request(client, :patch, path_, query_, headers, input, options, 200)
  end

  @doc """
  Updates a domain name.
  """
  def update_domain_name(client, domain_name, input, options \\ []) do
    path_ = "/v2/domainnames/#{URI.encode(domain_name)}"
    headers = []
    query_ = []
    request(client, :patch, path_, query_, headers, input, options, 200)
  end

  @doc """
  Updates an Integration.
  """
  def update_integration(client, api_id, integration_id, input, options \\ []) do
    path_ = "/v2/apis/#{URI.encode(api_id)}/integrations/#{URI.encode(integration_id)}"
    headers = []
    query_ = []
    request(client, :patch, path_, query_, headers, input, options, 200)
  end

  @doc """
  Updates an IntegrationResponses.
  """
  def update_integration_response(client, api_id, integration_id, integration_response_id, input, options \\ []) do
    path_ = "/v2/apis/#{URI.encode(api_id)}/integrations/#{URI.encode(integration_id)}/integrationresponses/#{URI.encode(integration_response_id)}"
    headers = []
    query_ = []
    request(client, :patch, path_, query_, headers, input, options, 200)
  end

  @doc """
  Updates a Model.
  """
  def update_model(client, api_id, model_id, input, options \\ []) do
    path_ = "/v2/apis/#{URI.encode(api_id)}/models/#{URI.encode(model_id)}"
    headers = []
    query_ = []
    request(client, :patch, path_, query_, headers, input, options, 200)
  end

  @doc """
  Updates a Route.
  """
  def update_route(client, api_id, route_id, input, options \\ []) do
    path_ = "/v2/apis/#{URI.encode(api_id)}/routes/#{URI.encode(route_id)}"
    headers = []
    query_ = []
    request(client, :patch, path_, query_, headers, input, options, 200)
  end

  @doc """
  Updates a RouteResponse.
  """
  def update_route_response(client, api_id, route_id, route_response_id, input, options \\ []) do
    path_ = "/v2/apis/#{URI.encode(api_id)}/routes/#{URI.encode(route_id)}/routeresponses/#{URI.encode(route_response_id)}"
    headers = []
    query_ = []
    request(client, :patch, path_, query_, headers, input, options, 200)
  end

  @doc """
  Updates a Stage.
  """
  def update_stage(client, api_id, stage_name, input, options \\ []) do
    path_ = "/v2/apis/#{URI.encode(api_id)}/stages/#{URI.encode(stage_name)}"
    headers = []
    query_ = []
    request(client, :patch, path_, query_, headers, input, options, 200)
  end

  @doc """
  Updates a VPC link.
  """
  def update_vpc_link(client, vpc_link_id, input, options \\ []) do
    path_ = "/v2/vpclinks/#{URI.encode(vpc_link_id)}"
    headers = []
    query_ = []
    request(client, :patch, path_, query_, headers, input, options, 200)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "apigateway"}
    host = build_host("apigateway", client)
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
