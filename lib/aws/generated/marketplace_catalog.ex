# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.MarketplaceCatalog do
  @moduledoc """
  Catalog API actions allow you to manage your entities through list, describe,
  and update capabilities.

  An entity can be a product or an offer on AWS Marketplace.

  You can automate your entity update process by integrating the AWS Marketplace
  Catalog API with your AWS Marketplace product build or deployment pipelines. You
  can also create your own applications on top of the Catalog API to manage your
  products on AWS Marketplace.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2018-09-17",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "catalog.marketplace",
      global?: false,
      protocol: "rest-json",
      service_id: "Marketplace Catalog",
      signature_version: "v4",
      signing_name: "aws-marketplace",
      target_prefix: nil
    }
  end

  @doc """
  Used to cancel an open change request.

  Must be sent before the status of the request changes to `APPLYING`, the final
  stage of completing your change request. You can describe a change during the
  60-day request history retention period for API calls.
  """
  def cancel_change_set(%Client{} = client, input, options \\ []) do
    url_path = "/CancelChangeSet"
    headers = []

    {query_params, input} =
      [
        {"Catalog", "catalog"},
        {"ChangeSetId", "changeSetId"}
      ]
      |> Request.build_params(input)

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
      nil
    )
  end

  @doc """
  Deletes a resource-based policy on an entity that is identified by its resource
  ARN.
  """
  def delete_resource_policy(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteResourcePolicy"
    headers = []

    {query_params, input} =
      [
        {"ResourceArn", "resourceArn"}
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
      nil
    )
  end

  @doc """
  Provides information about a given change set.
  """
  def describe_change_set(%Client{} = client, catalog, change_set_id, options \\ []) do
    url_path = "/DescribeChangeSet"
    headers = []
    query_params = []

    query_params =
      if !is_nil(change_set_id) do
        [{"changeSetId", change_set_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(catalog) do
        [{"catalog", catalog} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns the metadata and content of the entity.
  """
  def describe_entity(%Client{} = client, catalog, entity_id, options \\ []) do
    url_path = "/DescribeEntity"
    headers = []
    query_params = []

    query_params =
      if !is_nil(entity_id) do
        [{"entityId", entity_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(catalog) do
        [{"catalog", catalog} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Gets a resource-based policy of an entity that is identified by its resource
  ARN.
  """
  def get_resource_policy(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/GetResourcePolicy"
    headers = []
    query_params = []

    query_params =
      if !is_nil(resource_arn) do
        [{"resourceArn", resource_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns the list of change sets owned by the account being used to make the
  call.

  You can filter this list by providing any combination of `entityId`,
  `ChangeSetName`, and status. If you provide more than one filter, the API
  operation applies a logical AND between the filters.

  You can describe a change during the 60-day request history retention period for
  API calls.
  """
  def list_change_sets(%Client{} = client, input, options \\ []) do
    url_path = "/ListChangeSets"
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
      nil
    )
  end

  @doc """
  Provides the list of entities of a given type.
  """
  def list_entities(%Client{} = client, input, options \\ []) do
    url_path = "/ListEntities"
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
      nil
    )
  end

  @doc """
  Lists all tags that have been added to a resource (either an
  [entity](https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html#catalog-api-entities) or [change
  set](https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html#working-with-change-sets)).
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    url_path = "/ListTagsForResource"
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
      nil
    )
  end

  @doc """
  Attaches a resource-based policy to an entity.

  Examples of an entity include: `AmiProduct` and `ContainerProduct`.
  """
  def put_resource_policy(%Client{} = client, input, options \\ []) do
    url_path = "/PutResourcePolicy"
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
      nil
    )
  end

  @doc """
  Allows you to request changes for your entities.

  Within a single `ChangeSet`, you can't start the same change type against the
  same entity multiple times. Additionally, when a `ChangeSet` is running, all the
  entities targeted by the different changes are locked until the change set has
  completed (either succeeded, cancelled, or failed). If you try to start a change
  set containing a change against an entity that is already locked, you will
  receive a `ResourceInUseException` error.

  For example, you can't start the `ChangeSet` described in the
  [example](https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/API_StartChangeSet.html#API_StartChangeSet_Examples) later in this topic because it contains two changes to run the same change type
  (`AddRevisions`) against the same entity (`entity-id@1`).

  For more information about working with change sets, see [ Working with change
  sets](https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html#working-with-change-sets).
  For information about change types for single-AMI products, see [Working with single-AMI
  products](https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/ami-products.html#working-with-single-AMI-products).
  Also, for more information about change types available for container-based
  products, see [Working with container products](https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/container-products.html#working-with-container-products).
  """
  def start_change_set(%Client{} = client, input, options \\ []) do
    url_path = "/StartChangeSet"
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
      nil
    )
  end

  @doc """
  Tags a resource (either an
  [entity](https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html#catalog-api-entities) or [change
  set](https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html#working-with-change-sets)).
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/TagResource"
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
      nil
    )
  end

  @doc """
  Removes a tag or list of tags from a resource (either an
  [entity](https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html#catalog-api-entities) or [change
  set](https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html#working-with-change-sets)).
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/UntagResource"
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
      nil
    )
  end
end
