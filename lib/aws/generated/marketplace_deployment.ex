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
