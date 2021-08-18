# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.APIGateway do
  @moduledoc """
  Amazon API Gateway

  Amazon API Gateway helps developers deliver robust, secure, and scalable mobile
  and web application back ends.

  API Gateway allows developers to securely connect mobile and web applications to
  APIs that run on AWS Lambda, Amazon EC2, or other publicly addressable web
  services that are hosted outside of AWS.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2015-07-09",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "apigateway",
      global?: false,
      protocol: "rest-json",
      service_id: "API Gateway",
      signature_version: "v4",
      signing_name: "apigateway",
      target_prefix: nil
    }
  end

  @doc """
  Create an `ApiKey` resource.

  See also: [AWS CLI](https://docs.aws.amazon.com/cli/latest/reference/apigateway/create-api-key.html)
  """
  def create_api_key(%Client{} = client, input, options \\ []) do
    url_path = "/apikeys"
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
  Adds a new `Authorizer` resource to an existing `RestApi` resource.

  See also: [AWS CLI](https://docs.aws.amazon.com/cli/latest/reference/apigateway/create-authorizer.html)
  """
  def create_authorizer(%Client{} = client, rest_api_id, input, options \\ []) do
    url_path = "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/authorizers"
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
  Creates a new `BasePathMapping` resource.
  """
  def create_base_path_mapping(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domainnames/#{AWS.Util.encode_uri(domain_name)}/basepathmappings"
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
  Creates a `Deployment` resource, which makes a specified `RestApi` callable over
  the internet.
  """
  def create_deployment(%Client{} = client, rest_api_id, input, options \\ []) do
    url_path = "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/deployments"
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

  def create_documentation_part(%Client{} = client, rest_api_id, input, options \\ []) do
    url_path = "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/documentation/parts"
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

  def create_documentation_version(%Client{} = client, rest_api_id, input, options \\ []) do
    url_path = "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/documentation/versions"
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
  Creates a new domain name.
  """
  def create_domain_name(%Client{} = client, input, options \\ []) do
    url_path = "/domainnames"
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
  Adds a new `Model` resource to an existing `RestApi` resource.
  """
  def create_model(%Client{} = client, rest_api_id, input, options \\ []) do
    url_path = "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/models"
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
  Creates a `ReqeustValidator` of a given `RestApi`.
  """
  def create_request_validator(%Client{} = client, rest_api_id, input, options \\ []) do
    url_path = "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/requestvalidators"
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
  Creates a `Resource` resource.
  """
  def create_resource(%Client{} = client, parent_id, rest_api_id, input, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/resources/#{AWS.Util.encode_uri(parent_id)}"

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
  Creates a new `RestApi` resource.
  """
  def create_rest_api(%Client{} = client, input, options \\ []) do
    url_path = "/restapis"
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
  Creates a new `Stage` resource that references a pre-existing `Deployment` for
  the API.
  """
  def create_stage(%Client{} = client, rest_api_id, input, options \\ []) do
    url_path = "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/stages"
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
  Creates a usage plan with the throttle and quota limits, as well as the
  associated API stages, specified in the payload.
  """
  def create_usage_plan(%Client{} = client, input, options \\ []) do
    url_path = "/usageplans"
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
  Creates a usage plan key for adding an existing API key to a usage plan.
  """
  def create_usage_plan_key(%Client{} = client, usage_plan_id, input, options \\ []) do
    url_path = "/usageplans/#{AWS.Util.encode_uri(usage_plan_id)}/keys"
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
  Creates a VPC link, under the caller's account in a selected region, in an
  asynchronous operation that typically takes 2-4 minutes to complete and become
  operational.

  The caller must have permissions to create and update VPC Endpoint services.
  """
  def create_vpc_link(%Client{} = client, input, options \\ []) do
    url_path = "/vpclinks"
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
      202
    )
  end

  @doc """
  Deletes the `ApiKey` resource.
  """
  def delete_api_key(%Client{} = client, api_key, input, options \\ []) do
    url_path = "/apikeys/#{AWS.Util.encode_uri(api_key)}"
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
      202
    )
  end

  @doc """
  Deletes an existing `Authorizer` resource.

  See also: [AWS CLI](https://docs.aws.amazon.com/cli/latest/reference/apigateway/delete-authorizer.html)
  """
  def delete_authorizer(%Client{} = client, authorizer_id, rest_api_id, input, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/authorizers/#{AWS.Util.encode_uri(authorizer_id)}"

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
      202
    )
  end

  @doc """
  Deletes the `BasePathMapping` resource.
  """
  def delete_base_path_mapping(%Client{} = client, base_path, domain_name, input, options \\ []) do
    url_path =
      "/domainnames/#{AWS.Util.encode_uri(domain_name)}/basepathmappings/#{AWS.Util.encode_uri(base_path)}"

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
      202
    )
  end

  @doc """
  Deletes the `ClientCertificate` resource.
  """
  def delete_client_certificate(%Client{} = client, client_certificate_id, input, options \\ []) do
    url_path = "/clientcertificates/#{AWS.Util.encode_uri(client_certificate_id)}"
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
      202
    )
  end

  @doc """
  Deletes a `Deployment` resource.

  Deleting a deployment will only succeed if there are no `Stage` resources
  associated with it.
  """
  def delete_deployment(%Client{} = client, deployment_id, rest_api_id, input, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/deployments/#{AWS.Util.encode_uri(deployment_id)}"

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
      202
    )
  end

  def delete_documentation_part(
        %Client{} = client,
        documentation_part_id,
        rest_api_id,
        input,
        options \\ []
      ) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/documentation/parts/#{AWS.Util.encode_uri(documentation_part_id)}"

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
      202
    )
  end

  def delete_documentation_version(
        %Client{} = client,
        documentation_version,
        rest_api_id,
        input,
        options \\ []
      ) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/documentation/versions/#{AWS.Util.encode_uri(documentation_version)}"

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
      202
    )
  end

  @doc """
  Deletes the `DomainName` resource.
  """
  def delete_domain_name(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domainnames/#{AWS.Util.encode_uri(domain_name)}"
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
      202
    )
  end

  @doc """
  Clears any customization of a `GatewayResponse` of a specified response type on
  the given `RestApi` and resets it with the default settings.
  """
  def delete_gateway_response(
        %Client{} = client,
        response_type,
        rest_api_id,
        input,
        options \\ []
      ) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/gatewayresponses/#{AWS.Util.encode_uri(response_type)}"

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
      202
    )
  end

  @doc """
  Represents a delete integration.
  """
  def delete_integration(
        %Client{} = client,
        http_method,
        resource_id,
        rest_api_id,
        input,
        options \\ []
      ) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/resources/#{AWS.Util.encode_uri(resource_id)}/methods/#{AWS.Util.encode_uri(http_method)}/integration"

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
  Represents a delete integration response.
  """
  def delete_integration_response(
        %Client{} = client,
        http_method,
        resource_id,
        rest_api_id,
        status_code,
        input,
        options \\ []
      ) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/resources/#{AWS.Util.encode_uri(resource_id)}/methods/#{AWS.Util.encode_uri(http_method)}/integration/responses/#{AWS.Util.encode_uri(status_code)}"

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
  Deletes an existing `Method` resource.
  """
  def delete_method(
        %Client{} = client,
        http_method,
        resource_id,
        rest_api_id,
        input,
        options \\ []
      ) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/resources/#{AWS.Util.encode_uri(resource_id)}/methods/#{AWS.Util.encode_uri(http_method)}"

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
  Deletes an existing `MethodResponse` resource.
  """
  def delete_method_response(
        %Client{} = client,
        http_method,
        resource_id,
        rest_api_id,
        status_code,
        input,
        options \\ []
      ) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/resources/#{AWS.Util.encode_uri(resource_id)}/methods/#{AWS.Util.encode_uri(http_method)}/responses/#{AWS.Util.encode_uri(status_code)}"

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
  Deletes a model.
  """
  def delete_model(%Client{} = client, model_name, rest_api_id, input, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/models/#{AWS.Util.encode_uri(model_name)}"

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
      202
    )
  end

  @doc """
  Deletes a `RequestValidator` of a given `RestApi`.
  """
  def delete_request_validator(
        %Client{} = client,
        request_validator_id,
        rest_api_id,
        input,
        options \\ []
      ) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/requestvalidators/#{AWS.Util.encode_uri(request_validator_id)}"

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
      202
    )
  end

  @doc """
  Deletes a `Resource` resource.
  """
  def delete_resource(%Client{} = client, resource_id, rest_api_id, input, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/resources/#{AWS.Util.encode_uri(resource_id)}"

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
      202
    )
  end

  @doc """
  Deletes the specified API.
  """
  def delete_rest_api(%Client{} = client, rest_api_id, input, options \\ []) do
    url_path = "/restapis/#{AWS.Util.encode_uri(rest_api_id)}"
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
      202
    )
  end

  @doc """
  Deletes a `Stage` resource.
  """
  def delete_stage(%Client{} = client, rest_api_id, stage_name, input, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/stages/#{AWS.Util.encode_uri(stage_name)}"

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
      202
    )
  end

  @doc """
  Deletes a usage plan of a given plan Id.
  """
  def delete_usage_plan(%Client{} = client, usage_plan_id, input, options \\ []) do
    url_path = "/usageplans/#{AWS.Util.encode_uri(usage_plan_id)}"
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
      202
    )
  end

  @doc """
  Deletes a usage plan key and remove the underlying API key from the associated
  usage plan.
  """
  def delete_usage_plan_key(%Client{} = client, key_id, usage_plan_id, input, options \\ []) do
    url_path =
      "/usageplans/#{AWS.Util.encode_uri(usage_plan_id)}/keys/#{AWS.Util.encode_uri(key_id)}"

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
      202
    )
  end

  @doc """
  Deletes an existing `VpcLink` of a specified identifier.
  """
  def delete_vpc_link(%Client{} = client, vpc_link_id, input, options \\ []) do
    url_path = "/vpclinks/#{AWS.Util.encode_uri(vpc_link_id)}"
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
      202
    )
  end

  @doc """
  Flushes all authorizer cache entries on a stage.
  """
  def flush_stage_authorizers_cache(
        %Client{} = client,
        rest_api_id,
        stage_name,
        input,
        options \\ []
      ) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/stages/#{AWS.Util.encode_uri(stage_name)}/cache/authorizers"

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
      202
    )
  end

  @doc """
  Flushes a stage's cache.
  """
  def flush_stage_cache(%Client{} = client, rest_api_id, stage_name, input, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/stages/#{AWS.Util.encode_uri(stage_name)}/cache/data"

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
      202
    )
  end

  @doc """
  Generates a `ClientCertificate` resource.
  """
  def generate_client_certificate(%Client{} = client, input, options \\ []) do
    url_path = "/clientcertificates"
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
  Gets information about the current `Account` resource.
  """
  def get_account(%Client{} = client, options \\ []) do
    url_path = "/account"
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
      nil
    )
  end

  @doc """
  Gets information about the current `ApiKey` resource.
  """
  def get_api_key(%Client{} = client, api_key, include_value \\ nil, options \\ []) do
    url_path = "/apikeys/#{AWS.Util.encode_uri(api_key)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(include_value) do
        [{"includeValue", include_value} | query_params]
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
      nil
    )
  end

  @doc """
  Gets information about the current `ApiKeys` resource.
  """
  def get_api_keys(
        %Client{} = client,
        customer_id \\ nil,
        include_values \\ nil,
        limit \\ nil,
        name_query \\ nil,
        position \\ nil,
        options \\ []
      ) do
    url_path = "/apikeys"
    headers = []
    query_params = []

    query_params =
      if !is_nil(position) do
        [{"position", position} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(name_query) do
        [{"name", name_query} | query_params]
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
      if !is_nil(include_values) do
        [{"includeValues", include_values} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(customer_id) do
        [{"customerId", customer_id} | query_params]
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
      nil
    )
  end

  @doc """
  Describe an existing `Authorizer` resource.

  See also: [AWS CLI](https://docs.aws.amazon.com/cli/latest/reference/apigateway/get-authorizer.html)
  """
  def get_authorizer(%Client{} = client, authorizer_id, rest_api_id, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/authorizers/#{AWS.Util.encode_uri(authorizer_id)}"

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
      nil
    )
  end

  @doc """
  Describe an existing `Authorizers` resource.

  See also: [AWS CLI](https://docs.aws.amazon.com/cli/latest/reference/apigateway/get-authorizers.html)
  """
  def get_authorizers(
        %Client{} = client,
        rest_api_id,
        limit \\ nil,
        position \\ nil,
        options \\ []
      ) do
    url_path = "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/authorizers"
    headers = []
    query_params = []

    query_params =
      if !is_nil(position) do
        [{"position", position} | query_params]
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
      nil
    )
  end

  @doc """
  Describe a `BasePathMapping` resource.
  """
  def get_base_path_mapping(%Client{} = client, base_path, domain_name, options \\ []) do
    url_path =
      "/domainnames/#{AWS.Util.encode_uri(domain_name)}/basepathmappings/#{AWS.Util.encode_uri(base_path)}"

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
      nil
    )
  end

  @doc """
  Represents a collection of `BasePathMapping` resources.
  """
  def get_base_path_mappings(
        %Client{} = client,
        domain_name,
        limit \\ nil,
        position \\ nil,
        options \\ []
      ) do
    url_path = "/domainnames/#{AWS.Util.encode_uri(domain_name)}/basepathmappings"
    headers = []
    query_params = []

    query_params =
      if !is_nil(position) do
        [{"position", position} | query_params]
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
      nil
    )
  end

  @doc """
  Gets information about the current `ClientCertificate` resource.
  """
  def get_client_certificate(%Client{} = client, client_certificate_id, options \\ []) do
    url_path = "/clientcertificates/#{AWS.Util.encode_uri(client_certificate_id)}"
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
      nil
    )
  end

  @doc """
  Gets a collection of `ClientCertificate` resources.
  """
  def get_client_certificates(%Client{} = client, limit \\ nil, position \\ nil, options \\ []) do
    url_path = "/clientcertificates"
    headers = []
    query_params = []

    query_params =
      if !is_nil(position) do
        [{"position", position} | query_params]
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
      nil
    )
  end

  @doc """
  Gets information about a `Deployment` resource.
  """
  def get_deployment(%Client{} = client, deployment_id, rest_api_id, embed \\ nil, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/deployments/#{AWS.Util.encode_uri(deployment_id)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(embed) do
        [{"embed", embed} | query_params]
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
      nil
    )
  end

  @doc """
  Gets information about a `Deployments` collection.
  """
  def get_deployments(
        %Client{} = client,
        rest_api_id,
        limit \\ nil,
        position \\ nil,
        options \\ []
      ) do
    url_path = "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/deployments"
    headers = []
    query_params = []

    query_params =
      if !is_nil(position) do
        [{"position", position} | query_params]
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
      nil
    )
  end

  def get_documentation_part(
        %Client{} = client,
        documentation_part_id,
        rest_api_id,
        options \\ []
      ) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/documentation/parts/#{AWS.Util.encode_uri(documentation_part_id)}"

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
      nil
    )
  end

  def get_documentation_parts(
        %Client{} = client,
        rest_api_id,
        limit \\ nil,
        location_status \\ nil,
        name_query \\ nil,
        path \\ nil,
        position \\ nil,
        type \\ nil,
        options \\ []
      ) do
    url_path = "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/documentation/parts"
    headers = []
    query_params = []

    query_params =
      if !is_nil(type) do
        [{"type", type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(position) do
        [{"position", position} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(path) do
        [{"path", path} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(name_query) do
        [{"name", name_query} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(location_status) do
        [{"locationStatus", location_status} | query_params]
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
      nil
    )
  end

  def get_documentation_version(
        %Client{} = client,
        documentation_version,
        rest_api_id,
        options \\ []
      ) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/documentation/versions/#{AWS.Util.encode_uri(documentation_version)}"

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
      nil
    )
  end

  def get_documentation_versions(
        %Client{} = client,
        rest_api_id,
        limit \\ nil,
        position \\ nil,
        options \\ []
      ) do
    url_path = "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/documentation/versions"
    headers = []
    query_params = []

    query_params =
      if !is_nil(position) do
        [{"position", position} | query_params]
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
      nil
    )
  end

  @doc """
  Represents a domain name that is contained in a simpler, more intuitive URL that
  can be called.
  """
  def get_domain_name(%Client{} = client, domain_name, options \\ []) do
    url_path = "/domainnames/#{AWS.Util.encode_uri(domain_name)}"
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
      nil
    )
  end

  @doc """
  Represents a collection of `DomainName` resources.
  """
  def get_domain_names(%Client{} = client, limit \\ nil, position \\ nil, options \\ []) do
    url_path = "/domainnames"
    headers = []
    query_params = []

    query_params =
      if !is_nil(position) do
        [{"position", position} | query_params]
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
      nil
    )
  end

  @doc """
  Exports a deployed version of a `RestApi` in a specified format.
  """
  def get_export(
        %Client{} = client,
        export_type,
        rest_api_id,
        stage_name,
        parameters \\ nil,
        accepts \\ nil,
        options \\ []
      ) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/stages/#{AWS.Util.encode_uri(stage_name)}/exports/#{AWS.Util.encode_uri(export_type)}"

    headers = []

    headers =
      if !is_nil(accepts) do
        [{"Accept", accepts} | headers]
      else
        headers
      end

    query_params = []

    query_params =
      if !is_nil(parameters) do
        [{"", parameters} | query_params]
      else
        query_params
      end

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"Content-Disposition", "contentDisposition"}, {"Content-Type", "contentType"}]
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
  Gets a `GatewayResponse` of a specified response type on the given `RestApi`.
  """
  def get_gateway_response(%Client{} = client, response_type, rest_api_id, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/gatewayresponses/#{AWS.Util.encode_uri(response_type)}"

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
      nil
    )
  end

  @doc """
  Gets the `GatewayResponses` collection on the given `RestApi`.

  If an API developer has not added any definitions for gateway responses, the
  result will be the API Gateway-generated default `GatewayResponses` collection
  for the supported response types.
  """
  def get_gateway_responses(
        %Client{} = client,
        rest_api_id,
        limit \\ nil,
        position \\ nil,
        options \\ []
      ) do
    url_path = "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/gatewayresponses"
    headers = []
    query_params = []

    query_params =
      if !is_nil(position) do
        [{"position", position} | query_params]
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
      nil
    )
  end

  @doc """
  Get the integration settings.
  """
  def get_integration(%Client{} = client, http_method, resource_id, rest_api_id, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/resources/#{AWS.Util.encode_uri(resource_id)}/methods/#{AWS.Util.encode_uri(http_method)}/integration"

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
      nil
    )
  end

  @doc """
  Represents a get integration response.
  """
  def get_integration_response(
        %Client{} = client,
        http_method,
        resource_id,
        rest_api_id,
        status_code,
        options \\ []
      ) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/resources/#{AWS.Util.encode_uri(resource_id)}/methods/#{AWS.Util.encode_uri(http_method)}/integration/responses/#{AWS.Util.encode_uri(status_code)}"

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
      nil
    )
  end

  @doc """
  Describe an existing `Method` resource.
  """
  def get_method(%Client{} = client, http_method, resource_id, rest_api_id, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/resources/#{AWS.Util.encode_uri(resource_id)}/methods/#{AWS.Util.encode_uri(http_method)}"

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
      nil
    )
  end

  @doc """
  Describes a `MethodResponse` resource.
  """
  def get_method_response(
        %Client{} = client,
        http_method,
        resource_id,
        rest_api_id,
        status_code,
        options \\ []
      ) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/resources/#{AWS.Util.encode_uri(resource_id)}/methods/#{AWS.Util.encode_uri(http_method)}/responses/#{AWS.Util.encode_uri(status_code)}"

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
      nil
    )
  end

  @doc """
  Describes an existing model defined for a `RestApi` resource.
  """
  def get_model(%Client{} = client, model_name, rest_api_id, flatten \\ nil, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/models/#{AWS.Util.encode_uri(model_name)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(flatten) do
        [{"flatten", flatten} | query_params]
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
      nil
    )
  end

  @doc """
  Generates a sample mapping template that can be used to transform a payload into
  the structure of a model.
  """
  def get_model_template(%Client{} = client, model_name, rest_api_id, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/models/#{AWS.Util.encode_uri(model_name)}/default_template"

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
      nil
    )
  end

  @doc """
  Describes existing `Models` defined for a `RestApi` resource.
  """
  def get_models(%Client{} = client, rest_api_id, limit \\ nil, position \\ nil, options \\ []) do
    url_path = "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/models"
    headers = []
    query_params = []

    query_params =
      if !is_nil(position) do
        [{"position", position} | query_params]
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
      nil
    )
  end

  @doc """
  Gets a `RequestValidator` of a given `RestApi`.
  """
  def get_request_validator(%Client{} = client, request_validator_id, rest_api_id, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/requestvalidators/#{AWS.Util.encode_uri(request_validator_id)}"

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
      nil
    )
  end

  @doc """
  Gets the `RequestValidators` collection of a given `RestApi`.
  """
  def get_request_validators(
        %Client{} = client,
        rest_api_id,
        limit \\ nil,
        position \\ nil,
        options \\ []
      ) do
    url_path = "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/requestvalidators"
    headers = []
    query_params = []

    query_params =
      if !is_nil(position) do
        [{"position", position} | query_params]
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
      nil
    )
  end

  @doc """
  Lists information about a resource.
  """
  def get_resource(%Client{} = client, resource_id, rest_api_id, embed \\ nil, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/resources/#{AWS.Util.encode_uri(resource_id)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(embed) do
        [{"embed", embed} | query_params]
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
      nil
    )
  end

  @doc """
  Lists information about a collection of `Resource` resources.
  """
  def get_resources(
        %Client{} = client,
        rest_api_id,
        embed \\ nil,
        limit \\ nil,
        position \\ nil,
        options \\ []
      ) do
    url_path = "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/resources"
    headers = []
    query_params = []

    query_params =
      if !is_nil(position) do
        [{"position", position} | query_params]
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
      if !is_nil(embed) do
        [{"embed", embed} | query_params]
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
      nil
    )
  end

  @doc """
  Lists the `RestApi` resource in the collection.
  """
  def get_rest_api(%Client{} = client, rest_api_id, options \\ []) do
    url_path = "/restapis/#{AWS.Util.encode_uri(rest_api_id)}"
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
      nil
    )
  end

  @doc """
  Lists the `RestApis` resources for your collection.
  """
  def get_rest_apis(%Client{} = client, limit \\ nil, position \\ nil, options \\ []) do
    url_path = "/restapis"
    headers = []
    query_params = []

    query_params =
      if !is_nil(position) do
        [{"position", position} | query_params]
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
      nil
    )
  end

  @doc """
  Generates a client SDK for a `RestApi` and `Stage`.
  """
  def get_sdk(
        %Client{} = client,
        rest_api_id,
        sdk_type,
        stage_name,
        parameters \\ nil,
        options \\ []
      ) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/stages/#{AWS.Util.encode_uri(stage_name)}/sdks/#{AWS.Util.encode_uri(sdk_type)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(parameters) do
        [{"", parameters} | query_params]
      else
        query_params
      end

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"Content-Disposition", "contentDisposition"}, {"Content-Type", "contentType"}]
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

  def get_sdk_type(%Client{} = client, id, options \\ []) do
    url_path = "/sdktypes/#{AWS.Util.encode_uri(id)}"
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
      nil
    )
  end

  def get_sdk_types(%Client{} = client, limit \\ nil, position \\ nil, options \\ []) do
    url_path = "/sdktypes"
    headers = []
    query_params = []

    query_params =
      if !is_nil(position) do
        [{"position", position} | query_params]
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
      nil
    )
  end

  @doc """
  Gets information about a `Stage` resource.
  """
  def get_stage(%Client{} = client, rest_api_id, stage_name, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/stages/#{AWS.Util.encode_uri(stage_name)}"

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
      nil
    )
  end

  @doc """
  Gets information about one or more `Stage` resources.
  """
  def get_stages(%Client{} = client, rest_api_id, deployment_id \\ nil, options \\ []) do
    url_path = "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/stages"
    headers = []
    query_params = []

    query_params =
      if !is_nil(deployment_id) do
        [{"deploymentId", deployment_id} | query_params]
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
      nil
    )
  end

  @doc """
  Gets the `Tags` collection for a given resource.
  """
  def get_tags(%Client{} = client, resource_arn, limit \\ nil, position \\ nil, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(position) do
        [{"position", position} | query_params]
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
      nil
    )
  end

  @doc """
  Gets the usage data of a usage plan in a specified time interval.
  """
  def get_usage(
        %Client{} = client,
        usage_plan_id,
        end_date,
        key_id \\ nil,
        limit \\ nil,
        position \\ nil,
        start_date,
        options \\ []
      ) do
    url_path = "/usageplans/#{AWS.Util.encode_uri(usage_plan_id)}/usage"
    headers = []
    query_params = []

    query_params =
      if !is_nil(start_date) do
        [{"startDate", start_date} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(position) do
        [{"position", position} | query_params]
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
      if !is_nil(key_id) do
        [{"keyId", key_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(end_date) do
        [{"endDate", end_date} | query_params]
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
      nil
    )
  end

  @doc """
  Gets a usage plan of a given plan identifier.
  """
  def get_usage_plan(%Client{} = client, usage_plan_id, options \\ []) do
    url_path = "/usageplans/#{AWS.Util.encode_uri(usage_plan_id)}"
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
      nil
    )
  end

  @doc """
  Gets a usage plan key of a given key identifier.
  """
  def get_usage_plan_key(%Client{} = client, key_id, usage_plan_id, options \\ []) do
    url_path =
      "/usageplans/#{AWS.Util.encode_uri(usage_plan_id)}/keys/#{AWS.Util.encode_uri(key_id)}"

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
  Gets all the usage plan keys representing the API keys added to a specified
  usage plan.
  """
  def get_usage_plan_keys(
        %Client{} = client,
        usage_plan_id,
        limit \\ nil,
        name_query \\ nil,
        position \\ nil,
        options \\ []
      ) do
    url_path = "/usageplans/#{AWS.Util.encode_uri(usage_plan_id)}/keys"
    headers = []
    query_params = []

    query_params =
      if !is_nil(position) do
        [{"position", position} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(name_query) do
        [{"name", name_query} | query_params]
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
      nil
    )
  end

  @doc """
  Gets all the usage plans of the caller's account.
  """
  def get_usage_plans(
        %Client{} = client,
        key_id \\ nil,
        limit \\ nil,
        position \\ nil,
        options \\ []
      ) do
    url_path = "/usageplans"
    headers = []
    query_params = []

    query_params =
      if !is_nil(position) do
        [{"position", position} | query_params]
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
      if !is_nil(key_id) do
        [{"keyId", key_id} | query_params]
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
      nil
    )
  end

  @doc """
  Gets a specified VPC link under the caller's account in a region.
  """
  def get_vpc_link(%Client{} = client, vpc_link_id, options \\ []) do
    url_path = "/vpclinks/#{AWS.Util.encode_uri(vpc_link_id)}"
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
      nil
    )
  end

  @doc """
  Gets the `VpcLinks` collection under the caller's account in a selected region.
  """
  def get_vpc_links(%Client{} = client, limit \\ nil, position \\ nil, options \\ []) do
    url_path = "/vpclinks"
    headers = []
    query_params = []

    query_params =
      if !is_nil(position) do
        [{"position", position} | query_params]
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
      nil
    )
  end

  @doc """
  Import API keys from an external source, such as a CSV-formatted file.
  """
  def import_api_keys(%Client{} = client, input, options \\ []) do
    url_path = "/apikeys?mode=import"
    headers = []

    {query_params, input} =
      [
        {"failOnWarnings", "failonwarnings"},
        {"format", "format"}
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
      201
    )
  end

  def import_documentation_parts(%Client{} = client, rest_api_id, input, options \\ []) do
    url_path = "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/documentation/parts"
    headers = []

    {query_params, input} =
      [
        {"failOnWarnings", "failonwarnings"},
        {"mode", "mode"}
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
      nil
    )
  end

  @doc """
  A feature of the API Gateway control service for creating a new API from an
  external API definition file.
  """
  def import_rest_api(%Client{} = client, input, options \\ []) do
    url_path = "/restapis?mode=import"
    headers = []

    {query_params, input} =
      [
        {"failOnWarnings", "failonwarnings"},
        {"parameters", ""}
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
      201
    )
  end

  @doc """
  Creates a customization of a `GatewayResponse` of a specified response type and
  status code on the given `RestApi`.
  """
  def put_gateway_response(%Client{} = client, response_type, rest_api_id, input, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/gatewayresponses/#{AWS.Util.encode_uri(response_type)}"

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
      201
    )
  end

  @doc """
  Sets up a method's integration.
  """
  def put_integration(
        %Client{} = client,
        http_method,
        resource_id,
        rest_api_id,
        input,
        options \\ []
      ) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/resources/#{AWS.Util.encode_uri(resource_id)}/methods/#{AWS.Util.encode_uri(http_method)}/integration"

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
      201
    )
  end

  @doc """
  Represents a put integration.
  """
  def put_integration_response(
        %Client{} = client,
        http_method,
        resource_id,
        rest_api_id,
        status_code,
        input,
        options \\ []
      ) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/resources/#{AWS.Util.encode_uri(resource_id)}/methods/#{AWS.Util.encode_uri(http_method)}/integration/responses/#{AWS.Util.encode_uri(status_code)}"

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
      201
    )
  end

  @doc """
  Add a method to an existing `Resource` resource.
  """
  def put_method(%Client{} = client, http_method, resource_id, rest_api_id, input, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/resources/#{AWS.Util.encode_uri(resource_id)}/methods/#{AWS.Util.encode_uri(http_method)}"

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
      201
    )
  end

  @doc """
  Adds a `MethodResponse` to an existing `Method` resource.
  """
  def put_method_response(
        %Client{} = client,
        http_method,
        resource_id,
        rest_api_id,
        status_code,
        input,
        options \\ []
      ) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/resources/#{AWS.Util.encode_uri(resource_id)}/methods/#{AWS.Util.encode_uri(http_method)}/responses/#{AWS.Util.encode_uri(status_code)}"

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
      201
    )
  end

  @doc """
  A feature of the API Gateway control service for updating an existing API with
  an input of external API definitions.

  The update can take the form of merging the supplied definition into the
  existing API or overwriting the existing API.
  """
  def put_rest_api(%Client{} = client, rest_api_id, input, options \\ []) do
    url_path = "/restapis/#{AWS.Util.encode_uri(rest_api_id)}"
    headers = []

    {query_params, input} =
      [
        {"failOnWarnings", "failonwarnings"},
        {"mode", "mode"},
        {"parameters", ""}
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
      nil
    )
  end

  @doc """
  Adds or updates a tag on a given resource.
  """
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
      204
    )
  end

  @doc """
  Simulate the execution of an `Authorizer` in your `RestApi` with headers,
  parameters, and an incoming request body.

  See also: [Use Lambda Function as Authorizer](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-use-lambda-authorizer.html)
  [Use Cognito User Pool as Authorizer](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-integrate-with-cognito.html)
  """
  def test_invoke_authorizer(%Client{} = client, authorizer_id, rest_api_id, input, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/authorizers/#{AWS.Util.encode_uri(authorizer_id)}"

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
      nil
    )
  end

  @doc """
  Simulate the execution of a `Method` in your `RestApi` with headers, parameters,
  and an incoming request body.
  """
  def test_invoke_method(
        %Client{} = client,
        http_method,
        resource_id,
        rest_api_id,
        input,
        options \\ []
      ) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/resources/#{AWS.Util.encode_uri(resource_id)}/methods/#{AWS.Util.encode_uri(http_method)}"

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
      nil
    )
  end

  @doc """
  Removes a tag from a given resource.
  """
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

    {query_params, input} =
      [
        {"tagKeys", "tagKeys"}
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
  Changes information about the current `Account` resource.
  """
  def update_account(%Client{} = client, input, options \\ []) do
    url_path = "/account"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Changes information about an `ApiKey` resource.
  """
  def update_api_key(%Client{} = client, api_key, input, options \\ []) do
    url_path = "/apikeys/#{AWS.Util.encode_uri(api_key)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates an existing `Authorizer` resource.

  See also: [AWS CLI](https://docs.aws.amazon.com/cli/latest/reference/apigateway/update-authorizer.html)
  """
  def update_authorizer(%Client{} = client, authorizer_id, rest_api_id, input, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/authorizers/#{AWS.Util.encode_uri(authorizer_id)}"

    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Changes information about the `BasePathMapping` resource.
  """
  def update_base_path_mapping(%Client{} = client, base_path, domain_name, input, options \\ []) do
    url_path =
      "/domainnames/#{AWS.Util.encode_uri(domain_name)}/basepathmappings/#{AWS.Util.encode_uri(base_path)}"

    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Changes information about an `ClientCertificate` resource.
  """
  def update_client_certificate(%Client{} = client, client_certificate_id, input, options \\ []) do
    url_path = "/clientcertificates/#{AWS.Util.encode_uri(client_certificate_id)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Changes information about a `Deployment` resource.
  """
  def update_deployment(%Client{} = client, deployment_id, rest_api_id, input, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/deployments/#{AWS.Util.encode_uri(deployment_id)}"

    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  def update_documentation_part(
        %Client{} = client,
        documentation_part_id,
        rest_api_id,
        input,
        options \\ []
      ) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/documentation/parts/#{AWS.Util.encode_uri(documentation_part_id)}"

    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  def update_documentation_version(
        %Client{} = client,
        documentation_version,
        rest_api_id,
        input,
        options \\ []
      ) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/documentation/versions/#{AWS.Util.encode_uri(documentation_version)}"

    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Changes information about the `DomainName` resource.
  """
  def update_domain_name(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domainnames/#{AWS.Util.encode_uri(domain_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates a `GatewayResponse` of a specified response type on the given `RestApi`.
  """
  def update_gateway_response(
        %Client{} = client,
        response_type,
        rest_api_id,
        input,
        options \\ []
      ) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/gatewayresponses/#{AWS.Util.encode_uri(response_type)}"

    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Represents an update integration.
  """
  def update_integration(
        %Client{} = client,
        http_method,
        resource_id,
        rest_api_id,
        input,
        options \\ []
      ) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/resources/#{AWS.Util.encode_uri(resource_id)}/methods/#{AWS.Util.encode_uri(http_method)}/integration"

    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Represents an update integration response.
  """
  def update_integration_response(
        %Client{} = client,
        http_method,
        resource_id,
        rest_api_id,
        status_code,
        input,
        options \\ []
      ) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/resources/#{AWS.Util.encode_uri(resource_id)}/methods/#{AWS.Util.encode_uri(http_method)}/integration/responses/#{AWS.Util.encode_uri(status_code)}"

    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates an existing `Method` resource.
  """
  def update_method(
        %Client{} = client,
        http_method,
        resource_id,
        rest_api_id,
        input,
        options \\ []
      ) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/resources/#{AWS.Util.encode_uri(resource_id)}/methods/#{AWS.Util.encode_uri(http_method)}"

    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates an existing `MethodResponse` resource.
  """
  def update_method_response(
        %Client{} = client,
        http_method,
        resource_id,
        rest_api_id,
        status_code,
        input,
        options \\ []
      ) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/resources/#{AWS.Util.encode_uri(resource_id)}/methods/#{AWS.Util.encode_uri(http_method)}/responses/#{AWS.Util.encode_uri(status_code)}"

    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      201
    )
  end

  @doc """
  Changes information about a model.
  """
  def update_model(%Client{} = client, model_name, rest_api_id, input, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/models/#{AWS.Util.encode_uri(model_name)}"

    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates a `RequestValidator` of a given `RestApi`.
  """
  def update_request_validator(
        %Client{} = client,
        request_validator_id,
        rest_api_id,
        input,
        options \\ []
      ) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/requestvalidators/#{AWS.Util.encode_uri(request_validator_id)}"

    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Changes information about a `Resource` resource.
  """
  def update_resource(%Client{} = client, resource_id, rest_api_id, input, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/resources/#{AWS.Util.encode_uri(resource_id)}"

    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Changes information about the specified API.
  """
  def update_rest_api(%Client{} = client, rest_api_id, input, options \\ []) do
    url_path = "/restapis/#{AWS.Util.encode_uri(rest_api_id)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Changes information about a `Stage` resource.
  """
  def update_stage(%Client{} = client, rest_api_id, stage_name, input, options \\ []) do
    url_path =
      "/restapis/#{AWS.Util.encode_uri(rest_api_id)}/stages/#{AWS.Util.encode_uri(stage_name)}"

    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Grants a temporary extension to the remaining quota of a usage plan associated
  with a specified API key.
  """
  def update_usage(%Client{} = client, key_id, usage_plan_id, input, options \\ []) do
    url_path =
      "/usageplans/#{AWS.Util.encode_uri(usage_plan_id)}/keys/#{AWS.Util.encode_uri(key_id)}/usage"

    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates a usage plan of a given plan Id.
  """
  def update_usage_plan(%Client{} = client, usage_plan_id, input, options \\ []) do
    url_path = "/usageplans/#{AWS.Util.encode_uri(usage_plan_id)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates an existing `VpcLink` of a specified identifier.
  """
  def update_vpc_link(%Client{} = client, vpc_link_id, input, options \\ []) do
    url_path = "/vpclinks/#{AWS.Util.encode_uri(vpc_link_id)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end
end
