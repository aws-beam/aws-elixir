# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.DocDBElastic do
  @moduledoc """
  Amazon DocumentDB elastic clusters

  Amazon DocumentDB elastic-clusters support workloads with millions of
  reads/writes per second and petabytes of storage capacity.

  Amazon DocumentDB elastic clusters also simplify how developers interact with
  Amazon DocumentDB elastic-clusters by eliminating the need to choose, manage or
  upgrade instances.

  Amazon DocumentDB elastic-clusters were created to:

    * provide a solution for customers looking for a database that
  provides virtually limitless scale with rich query capabilities and MongoDB API
  compatibility.

    * give customers higher connection limits, and to reduce downtime
  from patching.

    * continue investing in a cloud-native, elastic, and class leading
  architecture for JSON workloads.
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
  Copies a snapshot of an elastic cluster.
  """
  def copy_cluster_snapshot(%Client{} = client, snapshot_arn, input, options \\ []) do
    url_path = "/cluster-snapshot/#{AWS.Util.encode_uri(snapshot_arn)}/copy"
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
  Creates a new Amazon DocumentDB elastic cluster and returns its cluster
  structure.
  """
  def create_cluster(%Client{} = client, input, options \\ []) do
    url_path = "/cluster"
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
  Creates a snapshot of an elastic cluster.
  """
  def create_cluster_snapshot(%Client{} = client, input, options \\ []) do
    url_path = "/cluster-snapshot"
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
  Delete an elastic cluster.
  """
  def delete_cluster(%Client{} = client, cluster_arn, input, options \\ []) do
    url_path = "/cluster/#{AWS.Util.encode_uri(cluster_arn)}"
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
      200
    )
  end

  @doc """
  Delete an elastic cluster snapshot.
  """
  def delete_cluster_snapshot(%Client{} = client, snapshot_arn, input, options \\ []) do
    url_path = "/cluster-snapshot/#{AWS.Util.encode_uri(snapshot_arn)}"
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
      200
    )
  end

  @doc """
  Returns information about a specific elastic cluster.
  """
  def get_cluster(%Client{} = client, cluster_arn, options \\ []) do
    url_path = "/cluster/#{AWS.Util.encode_uri(cluster_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about a specific elastic cluster snapshot
  """
  def get_cluster_snapshot(%Client{} = client, snapshot_arn, options \\ []) do
    url_path = "/cluster-snapshot/#{AWS.Util.encode_uri(snapshot_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about snapshots for a specified elastic cluster.
  """
  def list_cluster_snapshots(
        %Client{} = client,
        cluster_arn \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        snapshot_type \\ nil,
        options \\ []
      ) do
    url_path = "/cluster-snapshots"
    headers = []
    query_params = []

    query_params =
      if !is_nil(snapshot_type) do
        [{"snapshotType", snapshot_type} | query_params]
      else
        query_params
      end

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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about provisioned Amazon DocumentDB elastic clusters.
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all tags on a elastic cluster resource
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Restores an elastic cluster from a snapshot.
  """
  def restore_cluster_from_snapshot(%Client{} = client, snapshot_arn, input, options \\ []) do
    url_path = "/cluster-snapshot/#{AWS.Util.encode_uri(snapshot_arn)}/restore"
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
  Restarts the stopped elastic cluster that is specified by `clusterARN`.
  """
  def start_cluster(%Client{} = client, cluster_arn, input, options \\ []) do
    url_path = "/cluster/#{AWS.Util.encode_uri(cluster_arn)}/start"
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
  Stops the running elastic cluster that is specified by `clusterArn`.

  The elastic cluster must be in the *available* state.
  """
  def stop_cluster(%Client{} = client, cluster_arn, input, options \\ []) do
    url_path = "/cluster/#{AWS.Util.encode_uri(cluster_arn)}/stop"
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
  Adds metadata tags to an elastic cluster resource
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
      200
    )
  end

  @doc """
  Removes metadata tags from an elastic cluster resource
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
      200
    )
  end

  @doc """
  Modifies an elastic cluster.

  This includes updating admin-username/password, upgrading the API version, and
  setting up a backup window and maintenance window
  """
  def update_cluster(%Client{} = client, cluster_arn, input, options \\ []) do
    url_path = "/cluster/#{AWS.Util.encode_uri(cluster_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end
end
