# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.MarketplaceDeployment do
  @moduledoc """
  The AWS Marketplace Deployment Service supports the Quick Launch experience,
  which is a deployment option for software as a service (SaaS) products.

  Quick Launch simplifies and reduces the time, resources, and steps required to
  configure, deploy, and launch a products. The AWS Marketplace Deployment Service
  provides sellers with a secure method for passing deployment parameters (for
  example, API keys and external IDs) to buyers during the Quick Launch
  experience.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => [String.t()],
        "resourceId" => String.t()
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      deployment_parameter_input() :: %{
        "name" => String.t(),
        "secretString" => String.t()
      }

  """
  @type deployment_parameter_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

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
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_deployment_parameter_request() :: %{
        optional("clientToken") => String.t(),
        optional("expirationDate") => [non_neg_integer()],
        optional("tags") => map(),
        required("agreementId") => String.t(),
        required("deploymentParameter") => deployment_parameter_input()
      }

  """
  @type put_deployment_parameter_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_deployment_parameter_response() :: %{
        "agreementId" => String.t(),
        "deploymentParameterId" => String.t(),
        "resourceArn" => String.t(),
        "tags" => map()
      }

  """
  @type put_deployment_parameter_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        optional("tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list([String.t()]())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "fieldName" => [String.t()],
        "message" => [String.t()]
      }

  """
  @type validation_exception() :: %{String.t() => any()}

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
      protocol: "rest-json",
      service_id: "Marketplace Deployment",
      signature_version: "v4",
      signing_name: "aws-marketplace",
      target_prefix: nil
    }
  end

  @doc """
  Lists all tags that have been added to a deployment parameter resource.
  """
  @spec list_tags_for_resource(map(), String.t(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
          String.t(),
          String.t(),
          put_deployment_parameter_request(),
          list()
        ) ::
          {:ok, put_deployment_parameter_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_deployment_parameter_errors()}
  def put_deployment_parameter(%Client{} = client, catalog, product_id, input, options \\ []) do
    url_path =
      "/catalogs/#{AWS.Util.encode_uri(catalog)}/products/#{AWS.Util.encode_uri(product_id)}/deployment-parameters"

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
  Tags a resource.
  """
  @spec tag_resource(map(), String.t(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
      204
    )
  end

  @doc """
  Removes a tag or list of tags from a resource.
  """
  @spec untag_resource(map(), String.t(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
      204
    )
  end
end
