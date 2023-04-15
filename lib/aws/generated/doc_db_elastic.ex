# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.DocDBElastic do
  @moduledoc """
  The new Amazon Elastic DocumentDB service endpoint.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2022-11-28",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "docdb-elastic",
      global?: false,
      protocol: "rest-json",
      service_id: "DocDB Elastic",
      signature_version: "v4",
      signing_name: "docdb-elastic",
      target_prefix: nil
    }
  end

  @doc """
  Creates a new Elastic DocumentDB cluster and returns its Cluster structure.
  """
  def create_cluster(%Client{} = client, input, options \\ []) do
    url_path = "/cluster"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "CreateCluster",
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
  Creates a snapshot of a cluster.
  """
  def create_cluster_snapshot(%Client{} = client, input, options \\ []) do
    url_path = "/cluster-snapshot"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "CreateClusterSnapshot",
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
  Delete a Elastic DocumentDB cluster.
  """
  def delete_cluster(%Client{} = client, cluster_arn, input, options \\ []) do
    url_path = "/cluster/#{AWS.Util.encode_uri(cluster_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DeleteCluster",
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
  Delete a Elastic DocumentDB snapshot.
  """
  def delete_cluster_snapshot(%Client{} = client, snapshot_arn, input, options \\ []) do
    url_path = "/cluster-snapshot/#{AWS.Util.encode_uri(snapshot_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DeleteClusterSnapshot",
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
  Returns information about a specific Elastic DocumentDB cluster.
  """
  def get_cluster(%Client{} = client, cluster_arn, options \\ []) do
    url_path = "/cluster/#{AWS.Util.encode_uri(cluster_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetCluster",
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
  Returns information about a specific Elastic DocumentDB snapshot
  """
  def get_cluster_snapshot(%Client{} = client, snapshot_arn, options \\ []) do
    url_path = "/cluster-snapshot/#{AWS.Util.encode_uri(snapshot_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetClusterSnapshot",
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
  Returns information about Elastic DocumentDB snapshots for a specified cluster.
  """
  def list_cluster_snapshots(
        %Client{} = client,
        cluster_arn \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/cluster-snapshots"
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
      if !is_nil(cluster_arn) do
        [{"clusterArn", cluster_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListClusterSnapshots",
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
  Returns information about provisioned Elastic DocumentDB clusters.
  """
  def list_clusters(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/clusters"
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

    Request.request_rest(
      client,
      meta,
      "ListClusters",
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
  Lists all tags on a Elastic DocumentDB resource
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListTagsForResource",
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
  Restores a Elastic DocumentDB cluster from a snapshot.
  """
  def restore_cluster_from_snapshot(%Client{} = client, snapshot_arn, input, options \\ []) do
    url_path = "/cluster-snapshot/#{AWS.Util.encode_uri(snapshot_arn)}/restore"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "RestoreClusterFromSnapshot",
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
  Adds metadata tags to a Elastic DocumentDB resource
  """
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "TagResource",
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
  Removes metadata tags to a Elastic DocumentDB resource
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
      "UntagResource",
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
  Modifies a Elastic DocumentDB cluster.

  This includes updating admin-username/password, upgrading API version setting up
  a backup window and maintenance window
  """
  def update_cluster(%Client{} = client, cluster_arn, input, options \\ []) do
    url_path = "/cluster/#{AWS.Util.encode_uri(cluster_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "UpdateCluster",
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end
end
