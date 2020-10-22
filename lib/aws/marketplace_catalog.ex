# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.MarketplaceCatalog do
  @moduledoc """
  Catalog API actions allow you to manage your entities through list,
  describe, and update capabilities. An entity can be a product or an offer
  on AWS Marketplace.

  You can automate your entity update process by integrating the AWS
  Marketplace Catalog API with your AWS Marketplace product build or
  deployment pipelines. You can also create your own applications on top of
  the Catalog API to manage your products on AWS Marketplace.
  """

  @doc """
  Used to cancel an open change request. Must be sent before the status of
  the request changes to `APPLYING`, the final stage of completing your
  change request. You can describe a change during the 60-day request history
  retention period for API calls.
  """
  def cancel_change_set(client, input, options \\ []) do
    path_ = "/CancelChangeSet"
    headers = []
    {query_, input} =
      [
        {"Catalog", "catalog"},
        {"ChangeSetId", "changeSetId"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :patch, path_, query_, headers, input, options, nil)
  end

  @doc """
  Provides information about a given change set.
  """
  def describe_change_set(client, catalog, change_set_id, options \\ []) do
    path_ = "/DescribeChangeSet"
    headers = []
    query_ = []
    query_ = if !is_nil(change_set_id) do
      [{"changeSetId", change_set_id} | query_]
    else
      query_
    end
    query_ = if !is_nil(catalog) do
      [{"catalog", catalog} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns the metadata and content of the entity.
  """
  def describe_entity(client, catalog, entity_id, options \\ []) do
    path_ = "/DescribeEntity"
    headers = []
    query_ = []
    query_ = if !is_nil(entity_id) do
      [{"entityId", entity_id} | query_]
    else
      query_
    end
    query_ = if !is_nil(catalog) do
      [{"catalog", catalog} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns the list of change sets owned by the account being used to make the
  call. You can filter this list by providing any combination of `entityId`,
  `ChangeSetName`, and status. If you provide more than one filter, the API
  operation applies a logical AND between the filters.

  You can describe a change during the 60-day request history retention
  period for API calls.
  """
  def list_change_sets(client, input, options \\ []) do
    path_ = "/ListChangeSets"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Provides the list of entities of a given type.
  """
  def list_entities(client, input, options \\ []) do
    path_ = "/ListEntities"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  This operation allows you to request changes for your entities. Within a
  single ChangeSet, you cannot start the same change type against the same
  entity multiple times. Additionally, when a ChangeSet is running, all the
  entities targeted by the different changes are locked until the ChangeSet
  has completed (either succeeded, cancelled, or failed). If you try to start
  a ChangeSet containing a change against an entity that is already locked,
  you will receive a `ResourceInUseException`.

  For example, you cannot start the ChangeSet described in the
  [example](https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/API_StartChangeSet.html#API_StartChangeSet_Examples)
  below because it contains two changes to execute the same change type
  (`AddRevisions`) against the same entity (`entity-id@1)`.
  """
  def start_change_set(client, input, options \\ []) do
    path_ = "/StartChangeSet"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "aws-marketplace"}
    host = build_host("catalog.marketplace", client)
    url = host
    |> build_url(path, client)
    |> add_query(query)

    additional_headers = [{"Host", host}, {"Content-Type", "application/x-amz-json-1.1"}]
    headers = AWS.Request.add_headers(additional_headers, headers)

    payload = encode_payload(input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    AWS.HTTP.request(method, url, payload, headers, options, success_status_code)
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
    if input != nil, do: AWS.JSON.encode!(input), else: ""
  end
end
