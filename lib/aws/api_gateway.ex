# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.APIGateway do
  @moduledoc """
  Amazon API Gateway

  Amazon API Gateway helps developers deliver robust, secure, and scalable
  mobile and web application back ends. API Gateway allows developers to
  securely connect mobile and web applications to APIs that run on AWS
  Lambda, Amazon EC2, or other publicly addressable web services that are
  hosted outside of AWS.
  """

  @doc """
  Create an `ApiKey` resource.

  <div class="seeAlso">[AWS
  CLI](https://docs.aws.amazon.com/cli/latest/reference/apigateway/create-api-key.html)</div>
  """
  def create_api_key(client, input, options \\ []) do
    url = "/apikeys"
    headers = []
    request(client, :post, url, headers, input, options, 201)
  end

  @doc """
  Adds a new `Authorizer` resource to an existing `RestApi` resource.

  <div class="seeAlso">[AWS
  CLI](https://docs.aws.amazon.com/cli/latest/reference/apigateway/create-authorizer.html)</div>
  """
  def create_authorizer(client, rest_api_id, input, options \\ []) do
    url = "/restapis/#{URI.encode(rest_api_id)}/authorizers"
    headers = []
    request(client, :post, url, headers, input, options, 201)
  end

  @doc """
  Creates a new `BasePathMapping` resource.
  """
  def create_base_path_mapping(client, domain_name, input, options \\ []) do
    url = "/domainnames/#{URI.encode(domain_name)}/basepathmappings"
    headers = []
    request(client, :post, url, headers, input, options, 201)
  end

  @doc """
  Creates a `Deployment` resource, which makes a specified `RestApi` callable
  over the internet.
  """
  def create_deployment(client, rest_api_id, input, options \\ []) do
    url = "/restapis/#{URI.encode(rest_api_id)}/deployments"
    headers = []
    request(client, :post, url, headers, input, options, 201)
  end

  @doc """

  """
  def create_documentation_part(client, rest_api_id, input, options \\ []) do
    url = "/restapis/#{URI.encode(rest_api_id)}/documentation/parts"
    headers = []
    request(client, :post, url, headers, input, options, 201)
  end

  @doc """

  """
  def create_documentation_version(client, rest_api_id, input, options \\ []) do
    url = "/restapis/#{URI.encode(rest_api_id)}/documentation/versions"
    headers = []
    request(client, :post, url, headers, input, options, 201)
  end

  @doc """
  Creates a new domain name.
  """
  def create_domain_name(client, input, options \\ []) do
    url = "/domainnames"
    headers = []
    request(client, :post, url, headers, input, options, 201)
  end

  @doc """
  Adds a new `Model` resource to an existing `RestApi` resource.
  """
  def create_model(client, rest_api_id, input, options \\ []) do
    url = "/restapis/#{URI.encode(rest_api_id)}/models"
    headers = []
    request(client, :post, url, headers, input, options, 201)
  end

  @doc """
  Creates a `ReqeustValidator` of a given `RestApi`.
  """
  def create_request_validator(client, rest_api_id, input, options \\ []) do
    url = "/restapis/#{URI.encode(rest_api_id)}/requestvalidators"
    headers = []
    request(client, :post, url, headers, input, options, 201)
  end

  @doc """
  Creates a `Resource` resource.
  """
  def create_resource(client, parent_id, rest_api_id, input, options \\ []) do
    url = "/restapis/#{URI.encode(rest_api_id)}/resources/#{URI.encode(parent_id)}"
    headers = []
    request(client, :post, url, headers, input, options, 201)
  end

  @doc """
  Creates a new `RestApi` resource.
  """
  def create_rest_api(client, input, options \\ []) do
    url = "/restapis"
    headers = []
    request(client, :post, url, headers, input, options, 201)
  end

  @doc """
  Creates a new `Stage` resource that references a pre-existing `Deployment`
  for the API.
  """
  def create_stage(client, rest_api_id, input, options \\ []) do
    url = "/restapis/#{URI.encode(rest_api_id)}/stages"
    headers = []
    request(client, :post, url, headers, input, options, 201)
  end

  @doc """
  Creates a usage plan with the throttle and quota limits, as well as the
  associated API stages, specified in the payload.
  """
  def create_usage_plan(client, input, options \\ []) do
    url = "/usageplans"
    headers = []
    request(client, :post, url, headers, input, options, 201)
  end

  @doc """
  Creates a usage plan key for adding an existing API key to a usage plan.
  """
  def create_usage_plan_key(client, usage_plan_id, input, options \\ []) do
    url = "/usageplans/#{URI.encode(usage_plan_id)}/keys"
    headers = []
    request(client, :post, url, headers, input, options, 201)
  end

  @doc """
  Creates a VPC link, under the caller's account in a selected region, in an
  asynchronous operation that typically takes 2-4 minutes to complete and
  become operational. The caller must have permissions to create and update
  VPC Endpoint services.
  """
  def create_vpc_link(client, input, options \\ []) do
    url = "/vpclinks"
    headers = []
    request(client, :post, url, headers, input, options, 202)
  end

  @doc """
  Deletes the `ApiKey` resource.
  """
  def delete_api_key(client, api_key, input, options \\ []) do
    url = "/apikeys/#{URI.encode(api_key)}"
    headers = []
    request(client, :delete, url, headers, input, options, 202)
  end

  @doc """
  Deletes an existing `Authorizer` resource.

  <div class="seeAlso">[AWS
  CLI](https://docs.aws.amazon.com/cli/latest/reference/apigateway/delete-authorizer.html)</div>
  """
  def delete_authorizer(client, authorizer_id, rest_api_id, input, options \\ []) do
    url = "/restapis/#{URI.encode(rest_api_id)}/authorizers/#{URI.encode(authorizer_id)}"
    headers = []
    request(client, :delete, url, headers, input, options, 202)
  end

  @doc """
  Deletes the `BasePathMapping` resource.
  """
  def delete_base_path_mapping(client, base_path, domain_name, input, options \\ []) do
    url = "/domainnames/#{URI.encode(domain_name)}/basepathmappings/#{URI.encode(base_path)}"
    headers = []
    request(client, :delete, url, headers, input, options, 202)
  end

  @doc """
  Deletes the `ClientCertificate` resource.
  """
  def delete_client_certificate(client, client_certificate_id, input, options \\ []) do
    url = "/clientcertificates/#{URI.encode(client_certificate_id)}"
    headers = []
    request(client, :delete, url, headers, input, options, 202)
  end

  @doc """
  Deletes a `Deployment` resource. Deleting a deployment will only succeed if
  there are no `Stage` resources associated with it.
  """
  def delete_deployment(client, deployment_id, rest_api_id, input, options \\ []) do
    url = "/restapis/#{URI.encode(rest_api_id)}/deployments/#{URI.encode(deployment_id)}"
    headers = []
    request(client, :delete, url, headers, input, options, 202)
  end

  @doc """

  """
  def delete_documentation_part(client, documentation_part_id, rest_api_id, input, options \\ []) do
    url = "/restapis/#{URI.encode(rest_api_id)}/documentation/parts/#{URI.encode(documentation_part_id)}"
    headers = []
    request(client, :delete, url, headers, input, options, 202)
  end

  @doc """

  """
  def delete_documentation_version(client, documentation_version, rest_api_id, input, options \\ []) do
    url = "/restapis/#{URI.encode(rest_api_id)}/documentation/versions/#{URI.encode(documentation_version)}"
    headers = []
    request(client, :delete, url, headers, input, options, 202)
  end

  @doc """
  Deletes the `DomainName` resource.
  """
  def delete_domain_name(client, domain_name, input, options \\ []) do
    url = "/domainnames/#{URI.encode(domain_name)}"
    headers = []
    request(client, :delete, url, headers, input, options, 202)
  end

  @doc """
  Clears any customization of a `GatewayResponse` of a specified response
  type on the given `RestApi` and resets it with the default settings.
  """
  def delete_gateway_response(client, response_type, rest_api_id, input, options \\ []) do
    url = "/restapis/#{URI.encode(rest_api_id)}/gatewayresponses/#{URI.encode(response_type)}"
    headers = []
    request(client, :delete, url, headers, input, options, 202)
  end

  @doc """
  Represents a delete integration.
  """
  def delete_integration(client, http_method, resource_id, rest_api_id, input, options \\ []) do
    url = "/restapis/#{URI.encode(rest_api_id)}/resources/#{URI.encode(resource_id)}/methods/#{URI.encode(http_method)}/integration"
    headers = []
    request(client, :delete, url, headers, input, options, 204)
  end

  @doc """
  Represents a delete integration response.
  """
  def delete_integration_response(client, http_method, resource_id, rest_api_id, status_code, input, options \\ []) do
    url = "/restapis/#{URI.encode(rest_api_id)}/resources/#{URI.encode(resource_id)}/methods/#{URI.encode(http_method)}/integration/responses/#{URI.encode(status_code)}"
    headers = []
    request(client, :delete, url, headers, input, options, 204)
  end

  @doc """
  Deletes an existing `Method` resource.
  """
  def delete_method(client, http_method, resource_id, rest_api_id, input, options \\ []) do
    url = "/restapis/#{URI.encode(rest_api_id)}/resources/#{URI.encode(resource_id)}/methods/#{URI.encode(http_method)}"
    headers = []
    request(client, :delete, url, headers, input, options, 204)
  end

  @doc """
  Deletes an existing `MethodResponse` resource.
  """
  def delete_method_response(client, http_method, resource_id, rest_api_id, status_code, input, options \\ []) do
    url = "/restapis/#{URI.encode(rest_api_id)}/resources/#{URI.encode(resource_id)}/methods/#{URI.encode(http_method)}/responses/#{URI.encode(status_code)}"
    headers = []
    request(client, :delete, url, headers, input, options, 204)
  end

  @doc """
  Deletes a model.
  """
  def delete_model(client, model_name, rest_api_id, input, options \\ []) do
    url = "/restapis/#{URI.encode(rest_api_id)}/models/#{URI.encode(model_name)}"
    headers = []
    request(client, :delete, url, headers, input, options, 202)
  end

  @doc """
  Deletes a `RequestValidator` of a given `RestApi`.
  """
  def delete_request_validator(client, request_validator_id, rest_api_id, input, options \\ []) do
    url = "/restapis/#{URI.encode(rest_api_id)}/requestvalidators/#{URI.encode(request_validator_id)}"
    headers = []
    request(client, :delete, url, headers, input, options, 202)
  end

  @doc """
  Deletes a `Resource` resource.
  """
  def delete_resource(client, resource_id, rest_api_id, input, options \\ []) do
    url = "/restapis/#{URI.encode(rest_api_id)}/resources/#{URI.encode(resource_id)}"
    headers = []
    request(client, :delete, url, headers, input, options, 202)
  end

  @doc """
  Deletes the specified API.
  """
  def delete_rest_api(client, rest_api_id, input, options \\ []) do
    url = "/restapis/#{URI.encode(rest_api_id)}"
    headers = []
    request(client, :delete, url, headers, input, options, 202)
  end

  @doc """
  Deletes a `Stage` resource.
  """
  def delete_stage(client, rest_api_id, stage_name, input, options \\ []) do
    url = "/restapis/#{URI.encode(rest_api_id)}/stages/#{URI.encode(stage_name)}"
    headers = []
    request(client, :delete, url, headers, input, options, 202)
  end

  @doc """
  Deletes a usage plan of a given plan Id.
  """
  def delete_usage_plan(client, usage_plan_id, input, options \\ []) do
    url = "/usageplans/#{URI.encode(usage_plan_id)}"
    headers = []
    request(client, :delete, url, headers, input, options, 202)
  end

  @doc """
  Deletes a usage plan key and remove the underlying API key from the
  associated usage plan.
  """
  def delete_usage_plan_key(client, key_id, usage_plan_id, input, options \\ []) do
    url = "/usageplans/#{URI.encode(usage_plan_id)}/keys/#{URI.encode(key_id)}"
    headers = []
    request(client, :delete, url, headers, input, options, 202)
  end

  @doc """
  Deletes an existing `VpcLink` of a specified identifier.
  """
  def delete_vpc_link(client, vpc_link_id, input, options \\ []) do
    url = "/vpclinks/#{URI.encode(vpc_link_id)}"
    headers = []
    request(client, :delete, url, headers, input, options, 202)
  end

  @doc """
  Flushes all authorizer cache entries on a stage.
  """
  def flush_stage_authorizers_cache(client, rest_api_id, stage_name, input, options \\ []) do
    url = "/restapis/#{URI.encode(rest_api_id)}/stages/#{URI.encode(stage_name)}/cache/authorizers"
    headers = []
    request(client, :delete, url, headers, input, options, 202)
  end

  @doc """
  Flushes a stage's cache.
  """
  def flush_stage_cache(client, rest_api_id, stage_name, input, options \\ []) do
    url = "/restapis/#{URI.encode(rest_api_id)}/stages/#{URI.encode(stage_name)}/cache/data"
    headers = []
    request(client, :delete, url, headers, input, options, 202)
  end

  @doc """
  Generates a `ClientCertificate` resource.
  """
  def generate_client_certificate(client, input, options \\ []) do
    url = "/clientcertificates"
    headers = []
    request(client, :post, url, headers, input, options, 201)
  end

  @doc """
  Gets information about the current `Account` resource.
  """
  def get_account(client, options \\ []) do
    url = "/account"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Gets information about the current `ApiKey` resource.
  """
  def get_api_key(client, api_key, options \\ []) do
    url = "/apikeys/#{URI.encode(api_key)}"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Gets information about the current `ApiKeys` resource.
  """
  def get_api_keys(client, options \\ []) do
    url = "/apikeys"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Describe an existing `Authorizer` resource.

  <div class="seeAlso">[AWS
  CLI](https://docs.aws.amazon.com/cli/latest/reference/apigateway/get-authorizer.html)</div>
  """
  def get_authorizer(client, authorizer_id, rest_api_id, options \\ []) do
    url = "/restapis/#{URI.encode(rest_api_id)}/authorizers/#{URI.encode(authorizer_id)}"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Describe an existing `Authorizers` resource.

  <div class="seeAlso">[AWS
  CLI](https://docs.aws.amazon.com/cli/latest/reference/apigateway/get-authorizers.html)</div>
  """
  def get_authorizers(client, rest_api_id, options \\ []) do
    url = "/restapis/#{URI.encode(rest_api_id)}/authorizers"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Describe a `BasePathMapping` resource.
  """
  def get_base_path_mapping(client, base_path, domain_name, options \\ []) do
    url = "/domainnames/#{URI.encode(domain_name)}/basepathmappings/#{URI.encode(base_path)}"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Represents a collection of `BasePathMapping` resources.
  """
  def get_base_path_mappings(client, domain_name, options \\ []) do
    url = "/domainnames/#{URI.encode(domain_name)}/basepathmappings"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Gets information about the current `ClientCertificate` resource.
  """
  def get_client_certificate(client, client_certificate_id, options \\ []) do
    url = "/clientcertificates/#{URI.encode(client_certificate_id)}"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Gets a collection of `ClientCertificate` resources.
  """
  def get_client_certificates(client, options \\ []) do
    url = "/clientcertificates"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Gets information about a `Deployment` resource.
  """
  def get_deployment(client, deployment_id, rest_api_id, options \\ []) do
    url = "/restapis/#{URI.encode(rest_api_id)}/deployments/#{URI.encode(deployment_id)}"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Gets information about a `Deployments` collection.
  """
  def get_deployments(client, rest_api_id, options \\ []) do
    url = "/restapis/#{URI.encode(rest_api_id)}/deployments"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """

  """
  def get_documentation_part(client, documentation_part_id, rest_api_id, options \\ []) do
    url = "/restapis/#{URI.encode(rest_api_id)}/documentation/parts/#{URI.encode(documentation_part_id)}"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """

  """
  def get_documentation_parts(client, rest_api_id, options \\ []) do
    url = "/restapis/#{URI.encode(rest_api_id)}/documentation/parts"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """

  """
  def get_documentation_version(client, documentation_version, rest_api_id, options \\ []) do
    url = "/restapis/#{URI.encode(rest_api_id)}/documentation/versions/#{URI.encode(documentation_version)}"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """

  """
  def get_documentation_versions(client, rest_api_id, options \\ []) do
    url = "/restapis/#{URI.encode(rest_api_id)}/documentation/versions"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Represents a domain name that is contained in a simpler, more intuitive URL
  that can be called.
  """
  def get_domain_name(client, domain_name, options \\ []) do
    url = "/domainnames/#{URI.encode(domain_name)}"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Represents a collection of `DomainName` resources.
  """
  def get_domain_names(client, options \\ []) do
    url = "/domainnames"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Exports a deployed version of a `RestApi` in a specified format.
  """
  def get_export(client, export_type, rest_api_id, stage_name, accepts \\ nil, options \\ []) do
    url = "/restapis/#{URI.encode(rest_api_id)}/stages/#{URI.encode(stage_name)}/exports/#{URI.encode(export_type)}"
    headers = []
    headers = if !is_nil(accepts) do
      [{"Accept", accepts} | headers]
    else
      headers
    end
    case request(client, :get, url, headers, nil, options, 200) do
      {:ok, body, response} ->
        body =
          [
            {"Content-Disposition", "contentDisposition"},
            {"Content-Type", "contentType"},
          ]
          |> Enum.reduce(body, fn {header_name, key}, acc ->
            case response.headers[header_name] do
              nil -> acc
              value -> Map.put(acc, key, value)
            end
          end)
        
        {:ok, body, response}

      result ->
        result
    end
  end

  @doc """
  Gets a `GatewayResponse` of a specified response type on the given
  `RestApi`.
  """
  def get_gateway_response(client, response_type, rest_api_id, options \\ []) do
    url = "/restapis/#{URI.encode(rest_api_id)}/gatewayresponses/#{URI.encode(response_type)}"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Gets the `GatewayResponses` collection on the given `RestApi`. If an API
  developer has not added any definitions for gateway responses, the result
  will be the API Gateway-generated default `GatewayResponses` collection for
  the supported response types.
  """
  def get_gateway_responses(client, rest_api_id, options \\ []) do
    url = "/restapis/#{URI.encode(rest_api_id)}/gatewayresponses"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Get the integration settings.
  """
  def get_integration(client, http_method, resource_id, rest_api_id, options \\ []) do
    url = "/restapis/#{URI.encode(rest_api_id)}/resources/#{URI.encode(resource_id)}/methods/#{URI.encode(http_method)}/integration"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Represents a get integration response.
  """
  def get_integration_response(client, http_method, resource_id, rest_api_id, status_code, options \\ []) do
    url = "/restapis/#{URI.encode(rest_api_id)}/resources/#{URI.encode(resource_id)}/methods/#{URI.encode(http_method)}/integration/responses/#{URI.encode(status_code)}"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Describe an existing `Method` resource.
  """
  def get_method(client, http_method, resource_id, rest_api_id, options \\ []) do
    url = "/restapis/#{URI.encode(rest_api_id)}/resources/#{URI.encode(resource_id)}/methods/#{URI.encode(http_method)}"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Describes a `MethodResponse` resource.
  """
  def get_method_response(client, http_method, resource_id, rest_api_id, status_code, options \\ []) do
    url = "/restapis/#{URI.encode(rest_api_id)}/resources/#{URI.encode(resource_id)}/methods/#{URI.encode(http_method)}/responses/#{URI.encode(status_code)}"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Describes an existing model defined for a `RestApi` resource.
  """
  def get_model(client, model_name, rest_api_id, options \\ []) do
    url = "/restapis/#{URI.encode(rest_api_id)}/models/#{URI.encode(model_name)}"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Generates a sample mapping template that can be used to transform a payload
  into the structure of a model.
  """
  def get_model_template(client, model_name, rest_api_id, options \\ []) do
    url = "/restapis/#{URI.encode(rest_api_id)}/models/#{URI.encode(model_name)}/default_template"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Describes existing `Models` defined for a `RestApi` resource.
  """
  def get_models(client, rest_api_id, options \\ []) do
    url = "/restapis/#{URI.encode(rest_api_id)}/models"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Gets a `RequestValidator` of a given `RestApi`.
  """
  def get_request_validator(client, request_validator_id, rest_api_id, options \\ []) do
    url = "/restapis/#{URI.encode(rest_api_id)}/requestvalidators/#{URI.encode(request_validator_id)}"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Gets the `RequestValidators` collection of a given `RestApi`.
  """
  def get_request_validators(client, rest_api_id, options \\ []) do
    url = "/restapis/#{URI.encode(rest_api_id)}/requestvalidators"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Lists information about a resource.
  """
  def get_resource(client, resource_id, rest_api_id, options \\ []) do
    url = "/restapis/#{URI.encode(rest_api_id)}/resources/#{URI.encode(resource_id)}"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Lists information about a collection of `Resource` resources.
  """
  def get_resources(client, rest_api_id, options \\ []) do
    url = "/restapis/#{URI.encode(rest_api_id)}/resources"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Lists the `RestApi` resource in the collection.
  """
  def get_rest_api(client, rest_api_id, options \\ []) do
    url = "/restapis/#{URI.encode(rest_api_id)}"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Lists the `RestApis` resources for your collection.
  """
  def get_rest_apis(client, options \\ []) do
    url = "/restapis"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Generates a client SDK for a `RestApi` and `Stage`.
  """
  def get_sdk(client, rest_api_id, sdk_type, stage_name, options \\ []) do
    url = "/restapis/#{URI.encode(rest_api_id)}/stages/#{URI.encode(stage_name)}/sdks/#{URI.encode(sdk_type)}"
    headers = []
    case request(client, :get, url, headers, nil, options, 200) do
      {:ok, body, response} ->
        body =
          [
            {"Content-Disposition", "contentDisposition"},
            {"Content-Type", "contentType"},
          ]
          |> Enum.reduce(body, fn {header_name, key}, acc ->
            case response.headers[header_name] do
              nil -> acc
              value -> Map.put(acc, key, value)
            end
          end)
        
        {:ok, body, response}

      result ->
        result
    end
  end

  @doc """

  """
  def get_sdk_type(client, id, options \\ []) do
    url = "/sdktypes/#{URI.encode(id)}"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """

  """
  def get_sdk_types(client, options \\ []) do
    url = "/sdktypes"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Gets information about a `Stage` resource.
  """
  def get_stage(client, rest_api_id, stage_name, options \\ []) do
    url = "/restapis/#{URI.encode(rest_api_id)}/stages/#{URI.encode(stage_name)}"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Gets information about one or more `Stage` resources.
  """
  def get_stages(client, rest_api_id, options \\ []) do
    url = "/restapis/#{URI.encode(rest_api_id)}/stages"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Gets the `Tags` collection for a given resource.
  """
  def get_tags(client, resource_arn, options \\ []) do
    url = "/tags/#{URI.encode(resource_arn)}"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Gets the usage data of a usage plan in a specified time interval.
  """
  def get_usage(client, usage_plan_id, options \\ []) do
    url = "/usageplans/#{URI.encode(usage_plan_id)}/usage"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Gets a usage plan of a given plan identifier.
  """
  def get_usage_plan(client, usage_plan_id, options \\ []) do
    url = "/usageplans/#{URI.encode(usage_plan_id)}"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Gets a usage plan key of a given key identifier.
  """
  def get_usage_plan_key(client, key_id, usage_plan_id, options \\ []) do
    url = "/usageplans/#{URI.encode(usage_plan_id)}/keys/#{URI.encode(key_id)}"
    headers = []
    request(client, :get, url, headers, nil, options, 200)
  end

  @doc """
  Gets all the usage plan keys representing the API keys added to a specified
  usage plan.
  """
  def get_usage_plan_keys(client, usage_plan_id, options \\ []) do
    url = "/usageplans/#{URI.encode(usage_plan_id)}/keys"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Gets all the usage plans of the caller's account.
  """
  def get_usage_plans(client, options \\ []) do
    url = "/usageplans"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Gets a specified VPC link under the caller's account in a region.
  """
  def get_vpc_link(client, vpc_link_id, options \\ []) do
    url = "/vpclinks/#{URI.encode(vpc_link_id)}"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Gets the `VpcLinks` collection under the caller's account in a selected
  region.
  """
  def get_vpc_links(client, options \\ []) do
    url = "/vpclinks"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Import API keys from an external source, such as a CSV-formatted file.
  """
  def import_api_keys(client, input, options \\ []) do
    url = "/apikeys?mode=import"
    headers = []
    request(client, :post, url, headers, input, options, 201)
  end

  @doc """

  """
  def import_documentation_parts(client, rest_api_id, input, options \\ []) do
    url = "/restapis/#{URI.encode(rest_api_id)}/documentation/parts"
    headers = []
    request(client, :put, url, headers, input, options, nil)
  end

  @doc """
  A feature of the API Gateway control service for creating a new API from an
  external API definition file.
  """
  def import_rest_api(client, input, options \\ []) do
    url = "/restapis?mode=import"
    headers = []
    request(client, :post, url, headers, input, options, 201)
  end

  @doc """
  Creates a customization of a `GatewayResponse` of a specified response type
  and status code on the given `RestApi`.
  """
  def put_gateway_response(client, response_type, rest_api_id, input, options \\ []) do
    url = "/restapis/#{URI.encode(rest_api_id)}/gatewayresponses/#{URI.encode(response_type)}"
    headers = []
    request(client, :put, url, headers, input, options, 201)
  end

  @doc """
  Sets up a method's integration.
  """
  def put_integration(client, http_method, resource_id, rest_api_id, input, options \\ []) do
    url = "/restapis/#{URI.encode(rest_api_id)}/resources/#{URI.encode(resource_id)}/methods/#{URI.encode(http_method)}/integration"
    headers = []
    request(client, :put, url, headers, input, options, 201)
  end

  @doc """
  Represents a put integration.
  """
  def put_integration_response(client, http_method, resource_id, rest_api_id, status_code, input, options \\ []) do
    url = "/restapis/#{URI.encode(rest_api_id)}/resources/#{URI.encode(resource_id)}/methods/#{URI.encode(http_method)}/integration/responses/#{URI.encode(status_code)}"
    headers = []
    request(client, :put, url, headers, input, options, 201)
  end

  @doc """
  Add a method to an existing `Resource` resource.
  """
  def put_method(client, http_method, resource_id, rest_api_id, input, options \\ []) do
    url = "/restapis/#{URI.encode(rest_api_id)}/resources/#{URI.encode(resource_id)}/methods/#{URI.encode(http_method)}"
    headers = []
    request(client, :put, url, headers, input, options, 201)
  end

  @doc """
  Adds a `MethodResponse` to an existing `Method` resource.
  """
  def put_method_response(client, http_method, resource_id, rest_api_id, status_code, input, options \\ []) do
    url = "/restapis/#{URI.encode(rest_api_id)}/resources/#{URI.encode(resource_id)}/methods/#{URI.encode(http_method)}/responses/#{URI.encode(status_code)}"
    headers = []
    request(client, :put, url, headers, input, options, 201)
  end

  @doc """
  A feature of the API Gateway control service for updating an existing API
  with an input of external API definitions. The update can take the form of
  merging the supplied definition into the existing API or overwriting the
  existing API.
  """
  def put_rest_api(client, rest_api_id, input, options \\ []) do
    url = "/restapis/#{URI.encode(rest_api_id)}"
    headers = []
    request(client, :put, url, headers, input, options, nil)
  end

  @doc """
  Adds or updates a tag on a given resource.
  """
  def tag_resource(client, resource_arn, input, options \\ []) do
    url = "/tags/#{URI.encode(resource_arn)}"
    headers = []
    request(client, :put, url, headers, input, options, 204)
  end

  @doc """
  Simulate the execution of an `Authorizer` in your `RestApi` with headers,
  parameters, and an incoming request body.

  <div class="seeAlso"> [Use Lambda Function as
  Authorizer](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-use-lambda-authorizer.html)
  [Use Cognito User Pool as
  Authorizer](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-integrate-with-cognito.html)
  </div>
  """
  def test_invoke_authorizer(client, authorizer_id, rest_api_id, input, options \\ []) do
    url = "/restapis/#{URI.encode(rest_api_id)}/authorizers/#{URI.encode(authorizer_id)}"
    headers = []
    request(client, :post, url, headers, input, options, nil)
  end

  @doc """
  Simulate the execution of a `Method` in your `RestApi` with headers,
  parameters, and an incoming request body.
  """
  def test_invoke_method(client, http_method, resource_id, rest_api_id, input, options \\ []) do
    url = "/restapis/#{URI.encode(rest_api_id)}/resources/#{URI.encode(resource_id)}/methods/#{URI.encode(http_method)}"
    headers = []
    request(client, :post, url, headers, input, options, nil)
  end

  @doc """
  Removes a tag from a given resource.
  """
  def untag_resource(client, resource_arn, input, options \\ []) do
    url = "/tags/#{URI.encode(resource_arn)}"
    headers = []
    request(client, :delete, url, headers, input, options, 204)
  end

  @doc """
  Changes information about the current `Account` resource.
  """
  def update_account(client, input, options \\ []) do
    url = "/account"
    headers = []
    request(client, :patch, url, headers, input, options, nil)
  end

  @doc """
  Changes information about an `ApiKey` resource.
  """
  def update_api_key(client, api_key, input, options \\ []) do
    url = "/apikeys/#{URI.encode(api_key)}"
    headers = []
    request(client, :patch, url, headers, input, options, nil)
  end

  @doc """
  Updates an existing `Authorizer` resource.

  <div class="seeAlso">[AWS
  CLI](https://docs.aws.amazon.com/cli/latest/reference/apigateway/update-authorizer.html)</div>
  """
  def update_authorizer(client, authorizer_id, rest_api_id, input, options \\ []) do
    url = "/restapis/#{URI.encode(rest_api_id)}/authorizers/#{URI.encode(authorizer_id)}"
    headers = []
    request(client, :patch, url, headers, input, options, nil)
  end

  @doc """
  Changes information about the `BasePathMapping` resource.
  """
  def update_base_path_mapping(client, base_path, domain_name, input, options \\ []) do
    url = "/domainnames/#{URI.encode(domain_name)}/basepathmappings/#{URI.encode(base_path)}"
    headers = []
    request(client, :patch, url, headers, input, options, nil)
  end

  @doc """
  Changes information about an `ClientCertificate` resource.
  """
  def update_client_certificate(client, client_certificate_id, input, options \\ []) do
    url = "/clientcertificates/#{URI.encode(client_certificate_id)}"
    headers = []
    request(client, :patch, url, headers, input, options, nil)
  end

  @doc """
  Changes information about a `Deployment` resource.
  """
  def update_deployment(client, deployment_id, rest_api_id, input, options \\ []) do
    url = "/restapis/#{URI.encode(rest_api_id)}/deployments/#{URI.encode(deployment_id)}"
    headers = []
    request(client, :patch, url, headers, input, options, nil)
  end

  @doc """

  """
  def update_documentation_part(client, documentation_part_id, rest_api_id, input, options \\ []) do
    url = "/restapis/#{URI.encode(rest_api_id)}/documentation/parts/#{URI.encode(documentation_part_id)}"
    headers = []
    request(client, :patch, url, headers, input, options, nil)
  end

  @doc """

  """
  def update_documentation_version(client, documentation_version, rest_api_id, input, options \\ []) do
    url = "/restapis/#{URI.encode(rest_api_id)}/documentation/versions/#{URI.encode(documentation_version)}"
    headers = []
    request(client, :patch, url, headers, input, options, nil)
  end

  @doc """
  Changes information about the `DomainName` resource.
  """
  def update_domain_name(client, domain_name, input, options \\ []) do
    url = "/domainnames/#{URI.encode(domain_name)}"
    headers = []
    request(client, :patch, url, headers, input, options, nil)
  end

  @doc """
  Updates a `GatewayResponse` of a specified response type on the given
  `RestApi`.
  """
  def update_gateway_response(client, response_type, rest_api_id, input, options \\ []) do
    url = "/restapis/#{URI.encode(rest_api_id)}/gatewayresponses/#{URI.encode(response_type)}"
    headers = []
    request(client, :patch, url, headers, input, options, nil)
  end

  @doc """
  Represents an update integration.
  """
  def update_integration(client, http_method, resource_id, rest_api_id, input, options \\ []) do
    url = "/restapis/#{URI.encode(rest_api_id)}/resources/#{URI.encode(resource_id)}/methods/#{URI.encode(http_method)}/integration"
    headers = []
    request(client, :patch, url, headers, input, options, nil)
  end

  @doc """
  Represents an update integration response.
  """
  def update_integration_response(client, http_method, resource_id, rest_api_id, status_code, input, options \\ []) do
    url = "/restapis/#{URI.encode(rest_api_id)}/resources/#{URI.encode(resource_id)}/methods/#{URI.encode(http_method)}/integration/responses/#{URI.encode(status_code)}"
    headers = []
    request(client, :patch, url, headers, input, options, nil)
  end

  @doc """
  Updates an existing `Method` resource.
  """
  def update_method(client, http_method, resource_id, rest_api_id, input, options \\ []) do
    url = "/restapis/#{URI.encode(rest_api_id)}/resources/#{URI.encode(resource_id)}/methods/#{URI.encode(http_method)}"
    headers = []
    request(client, :patch, url, headers, input, options, nil)
  end

  @doc """
  Updates an existing `MethodResponse` resource.
  """
  def update_method_response(client, http_method, resource_id, rest_api_id, status_code, input, options \\ []) do
    url = "/restapis/#{URI.encode(rest_api_id)}/resources/#{URI.encode(resource_id)}/methods/#{URI.encode(http_method)}/responses/#{URI.encode(status_code)}"
    headers = []
    request(client, :patch, url, headers, input, options, 201)
  end

  @doc """
  Changes information about a model.
  """
  def update_model(client, model_name, rest_api_id, input, options \\ []) do
    url = "/restapis/#{URI.encode(rest_api_id)}/models/#{URI.encode(model_name)}"
    headers = []
    request(client, :patch, url, headers, input, options, nil)
  end

  @doc """
  Updates a `RequestValidator` of a given `RestApi`.
  """
  def update_request_validator(client, request_validator_id, rest_api_id, input, options \\ []) do
    url = "/restapis/#{URI.encode(rest_api_id)}/requestvalidators/#{URI.encode(request_validator_id)}"
    headers = []
    request(client, :patch, url, headers, input, options, nil)
  end

  @doc """
  Changes information about a `Resource` resource.
  """
  def update_resource(client, resource_id, rest_api_id, input, options \\ []) do
    url = "/restapis/#{URI.encode(rest_api_id)}/resources/#{URI.encode(resource_id)}"
    headers = []
    request(client, :patch, url, headers, input, options, nil)
  end

  @doc """
  Changes information about the specified API.
  """
  def update_rest_api(client, rest_api_id, input, options \\ []) do
    url = "/restapis/#{URI.encode(rest_api_id)}"
    headers = []
    request(client, :patch, url, headers, input, options, nil)
  end

  @doc """
  Changes information about a `Stage` resource.
  """
  def update_stage(client, rest_api_id, stage_name, input, options \\ []) do
    url = "/restapis/#{URI.encode(rest_api_id)}/stages/#{URI.encode(stage_name)}"
    headers = []
    request(client, :patch, url, headers, input, options, nil)
  end

  @doc """
  Grants a temporary extension to the remaining quota of a usage plan
  associated with a specified API key.
  """
  def update_usage(client, key_id, usage_plan_id, input, options \\ []) do
    url = "/usageplans/#{URI.encode(usage_plan_id)}/keys/#{URI.encode(key_id)}/usage"
    headers = []
    request(client, :patch, url, headers, input, options, nil)
  end

  @doc """
  Updates a usage plan of a given plan Id.
  """
  def update_usage_plan(client, usage_plan_id, input, options \\ []) do
    url = "/usageplans/#{URI.encode(usage_plan_id)}"
    headers = []
    request(client, :patch, url, headers, input, options, nil)
  end

  @doc """
  Updates an existing `VpcLink` of a specified identifier.
  """
  def update_vpc_link(client, vpc_link_id, input, options \\ []) do
    url = "/vpclinks/#{URI.encode(vpc_link_id)}"
    headers = []
    request(client, :patch, url, headers, input, options, nil)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), map(), list(), pos_integer()) ::
          {:ok, Poison.Parser.t() | nil, Poison.Response.t()}
          | {:error, Poison.Parser.t()}
          | {:error, HTTPoison.Error.t()}
  defp request(client, method, url, headers, input, options, success_status_code) do
    client = %{client | service: "apigateway"}
    host = get_host("apigateway", client)
    url = get_url(host, url, client)

    headers = if client.session_token do
      [{"X-Amz-Security-Token", client.session_token} | headers]
    else
      []
    end

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"} | headers
    ]

    payload = encode_payload(input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    perform_request(method, url, payload, headers, options, success_status_code)
  end

  defp perform_request(method, url, payload, headers, options, nil) do
    case HTTPoison.request(method, url, payload, headers, options) do
      {:ok, %HTTPoison.Response{status_code: 200, body: ""} = response} ->
        {:ok, response}

      {:ok, %HTTPoison.Response{status_code: status_code, body: body} = response}
      when status_code == 200 or status_code == 202 or status_code == 204->
        {:ok, Poison.Parser.parse!(body, %{}), response}

      {:ok, %HTTPoison.Response{body: body}} ->
        reason = Poison.Parser.parse!(body, %{})["message"]
        {:error, reason}

      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp perform_request(method, url, payload, headers, options, success_status_code) do
    case HTTPoison.request(method, url, payload, headers, options) do
      {:ok, %HTTPoison.Response{status_code: ^success_status_code, body: ""} = response} ->
        {:ok, nil, response}

      {:ok, %HTTPoison.Response{status_code: ^success_status_code, body: body} = response} ->
        {:ok, Poison.Parser.parse!(body, %{}), response}

      {:ok, %HTTPoison.Response{body: body}} ->
        reason = Poison.Parser.parse!(body, %{})["message"]
        {:error, reason}

      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp get_host(endpoint_prefix, client) do
    if client.region == "local" do
      "localhost"
    else
      "#{endpoint_prefix}.#{client.region}.#{client.endpoint}"
    end
  end

  defp get_url(host, url, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}#{url}"
  end

  defp encode_payload(input) do
    if input != nil, do: Poison.Encoder.encode(input, %{}), else: ""
  end
end
