# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.MarketplaceDeployment do
  @moduledoc """
  The AWS Marketplace Deployment Service supports the Quick Launch experience,
  which is a deployment option for software as a service (SaaS) products.

  Quick Launch simplifies and reduces the time, resources, and steps required to
  configure, deploy, and launch a product. The AWS Marketplace Deployment Service
  provides sellers with a secure method for passing deployment parameters, such as
  API keys and external IDs, to buyers during the Quick Launch experience.

  You can also use the AWS Marketplace Deployment Service to publish deployment
  configurations. A deployment configuration defines how buyers access a product's
  delivery option after they subscribe. For example, for the Data as a Service
  delivery option, it specifies the seller's fulfillment URL.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => [String.t() | atom()],
        "resourceId" => String.t() | atom()
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      data_as_a_service_configuration_detail() :: %{
        "fulfillmentUrl" => String.t() | atom()
      }

  """
  @type data_as_a_service_configuration_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      deployment_configuration_job_summary() :: %{
        "configuration" => list(),
        "createdAt" => [non_neg_integer()],
        "jobId" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type deployment_configuration_job_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      deployment_parameter_input() :: %{
        "name" => String.t() | atom(),
        "secretString" => String.t() | atom()
      }

  """
  @type deployment_parameter_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_deployment_configuration_job_request() :: %{}

  """
  @type get_deployment_configuration_job_request() :: %{}

  @typedoc """

  ## Example:

      get_deployment_configuration_job_response() :: %{
        "configuration" => list(),
        "configurationArn" => String.t() | atom(),
        "createdAt" => [non_neg_integer()],
        "endedAt" => [non_neg_integer()],
        "errorCode" => list(any()),
        "jobId" => String.t() | atom(),
        "message" => [String.t() | atom()],
        "status" => list(any())
      }

  """
  @type get_deployment_configuration_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_deployment_configuration_request() :: %{}

  """
  @type get_deployment_configuration_request() :: %{}

  @typedoc """

  ## Example:

      get_deployment_configuration_response() :: %{
        "configuration" => list()
      }

  """
  @type get_deployment_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_deployment_configuration_jobs_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_deployment_configuration_jobs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_deployment_configuration_jobs_response() :: %{
        "jobs" => list(deployment_configuration_job_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_deployment_configuration_jobs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_deployment_parameter_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("expirationDate") => [non_neg_integer()],
        optional("tags") => map(),
        required("agreementId") => String.t() | atom(),
        required("deploymentParameter") => deployment_parameter_input()
      }

  """
  @type put_deployment_parameter_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_deployment_parameter_response() :: %{
        "agreementId" => String.t() | atom(),
        "deploymentParameterId" => String.t() | atom(),
        "resourceArn" => String.t() | atom(),
        "tags" => map()
      }

  """
  @type put_deployment_parameter_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_deployment_configuration_job_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("tags") => map(),
        required("configuration") => list()
      }

  """
  @type start_deployment_configuration_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_deployment_configuration_job_response() :: %{
        "configuration" => list(),
        "createdAt" => [non_neg_integer()],
        "jobId" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type start_deployment_configuration_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        optional("tags") => map()
      }

  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list([String.t() | atom()]())
      }

  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "fieldName" => [String.t() | atom()],
        "message" => [String.t() | atom()]
      }

  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @type get_deployment_configuration_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type get_deployment_configuration_job_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_deployment_configuration_jobs_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type put_deployment_parameter_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type start_deployment_configuration_job_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type tag_resource_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type untag_resource_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  def metadata do
    %{
      api_version: "2023-01-25",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "deployment-marketplace",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Marketplace Deployment",
      signature_version: "v4",
      signing_name: "aws-marketplace",
      target_prefix: nil
    }
  end

  @doc """
  Returns the active deployment configuration for a product and delivery option.

  The active deployment configuration is the configuration from the most recent
  successful deployment configuration job. The seller that owns the product and
  buyers entitled to the product can call this operation.

  If the product and delivery option have no active deployment configuration, the
  operation returns a `ResourceNotFoundException`.
  """
  @spec get_deployment_configuration(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          list()
        ) ::
          {:ok, get_deployment_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_deployment_configuration_errors()}
  def get_deployment_configuration(
        %Client{} = client,
        catalog,
        delivery_option_type,
        product_id,
        options \\ []
      ) do
    url_path =
      "/catalogs/#{AWS.Util.encode_uri(catalog)}/products/#{AWS.Util.encode_uri(product_id)}/delivery-options/#{AWS.Util.encode_uri(delivery_option_type)}/deployment-configuration"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the details of a deployment configuration job.

  Only the seller that started the job can call this operation.

  If the job doesn't belong to the product and delivery option in the request
  path, the operation returns a `ResourceNotFoundException`.
  """
  @spec get_deployment_configuration_job(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          list()
        ) ::
          {:ok, get_deployment_configuration_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_deployment_configuration_job_errors()}
  def get_deployment_configuration_job(
        %Client{} = client,
        catalog,
        delivery_option_type,
        job_id,
        product_id,
        options \\ []
      ) do
    url_path =
      "/catalogs/#{AWS.Util.encode_uri(catalog)}/products/#{AWS.Util.encode_uri(product_id)}/delivery-options/#{AWS.Util.encode_uri(delivery_option_type)}/deployment-configuration/jobs/#{AWS.Util.encode_uri(job_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the deployment configuration jobs that you started for a product and
  delivery option, ordered from newest to oldest.

  Results are paginated. Use the `nextToken` parameter to retrieve additional
  results.

  If you haven't started any jobs for the product and delivery option, the
  operation returns an empty `jobs` list.
  """
  @spec list_deployment_configuration_jobs(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_deployment_configuration_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_deployment_configuration_jobs_errors()}
  def list_deployment_configuration_jobs(
        %Client{} = client,
        catalog,
        delivery_option_type,
        product_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/catalogs/#{AWS.Util.encode_uri(catalog)}/products/#{AWS.Util.encode_uri(product_id)}/delivery-options/#{AWS.Util.encode_uri(delivery_option_type)}/deployment-configuration/jobs"

    headers = []
    query_params = []

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all tags that have been added to a resource.
  """
  @spec list_tags_for_resource(map(), String.t() | atom(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Creates or updates a deployment parameter and is targeted by `catalog` and
  `agreementId`.
  """
  @spec put_deployment_parameter(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          put_deployment_parameter_request(),
          list()
        ) ::
          {:ok, put_deployment_parameter_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_deployment_parameter_errors()}
  def put_deployment_parameter(%Client{} = client, catalog, product_id, input, options \\ []) do
    url_path =
      "/catalogs/#{AWS.Util.encode_uri(catalog)}/products/#{AWS.Util.encode_uri(product_id)}/deployment-parameters"

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
  Starts a job that publishes a deployment configuration for a product and
  delivery option.

  The job runs asynchronously. Use `GetDeploymentConfigurationJob` to track its
  status. When the job reaches the `SUCCEEDED` status, its configuration becomes
  the active deployment configuration for the product and delivery option.

  The populated member of `configuration` must match the `deliveryOptionType` in
  the request path.
  """
  @spec start_deployment_configuration_job(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          start_deployment_configuration_job_request(),
          list()
        ) ::
          {:ok, start_deployment_configuration_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_deployment_configuration_job_errors()}
  def start_deployment_configuration_job(
        %Client{} = client,
        catalog,
        delivery_option_type,
        product_id,
        input,
        options \\ []
      ) do
    url_path =
      "/catalogs/#{AWS.Util.encode_uri(catalog)}/products/#{AWS.Util.encode_uri(product_id)}/delivery-options/#{AWS.Util.encode_uri(delivery_option_type)}/deployment-configuration/jobs"

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
  Tags a resource.
  """
  @spec tag_resource(map(), String.t() | atom(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
      204
    )
  end

  @doc """
  Removes a tag or list of tags from a resource.
  """
  @spec untag_resource(map(), String.t() | atom(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    custom_headers = []

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
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end
end
