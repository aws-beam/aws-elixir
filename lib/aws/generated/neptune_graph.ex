# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.NeptuneGraph do
  @moduledoc """
  Neptune Analytics is a new analytics database engine for Amazon Neptune that
  helps customers get to
  insights faster by quickly processing large amounts of graph data, invoking
  popular graph analytic
  algorithms in low-latency queries, and getting analytics results in seconds.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      api_version: "2023-11-29",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "neptune-graph",
      global?: false,
      protocol: "rest-json",
      service_id: "Neptune Graph",
      signature_version: "v4",
      signing_name: "neptune-graph",
      target_prefix: nil
    }
  end

  @doc """
  Deletes the specified import task.
  """
  def cancel_import_task(%Client{} = client, task_identifier, input, options \\ []) do
    url_path = "/importtasks/#{AWS.Util.encode_uri(task_identifier)}"
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
  Cancels a specified query.
  """
  def cancel_query(%Client{} = client, query_id, input, options \\ []) do
    url_path = "/queries/#{AWS.Util.encode_uri(query_id)}"

    {headers, input} =
      [
        {"graphIdentifier", "graphIdentifier"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "{graphIdentifier}.")

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
  Creates a new Neptune Analytics graph.
  """
  def create_graph(%Client{} = client, input, options \\ []) do
    url_path = "/graphs"
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
      201
    )
  end

  @doc """
  Creates a snapshot of the specific graph.
  """
  def create_graph_snapshot(%Client{} = client, input, options \\ []) do
    url_path = "/snapshots"
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
      201
    )
  end

  @doc """
  Creates a new Neptune Analytics graph and imports data into it, either from
  Amazon Simple Storage Service (S3) or from a Neptune database
  or a Neptune database snapshot.

  The data can be loaded from files in S3 that in either the [Gremlin CSV format](https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load-tutorial-format-gremlin.html)
  or the [openCypher load
  format](https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load-tutorial-format-opencypher.html).
  """
  def create_graph_using_import_task(%Client{} = client, input, options \\ []) do
    url_path = "/importtasks"
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
      201
    )
  end

  @doc """
  Create a private graph endpoint to allow private access from to the graph from
  within
  a VPC.

  You can attach security groups to the private graph endpoint. VPC endpoint
  charges apply.
  """
  def create_private_graph_endpoint(%Client{} = client, graph_identifier, input, options \\ []) do
    url_path = "/graphs/#{AWS.Util.encode_uri(graph_identifier)}/endpoints/"
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
      201
    )
  end

  @doc """
  Deletes the specified graph.

  Graphs cannot be deleted if delete-protection is enabled.
  """
  def delete_graph(%Client{} = client, graph_identifier, input, options \\ []) do
    url_path = "/graphs/#{AWS.Util.encode_uri(graph_identifier)}"
    headers = []

    {query_params, input} =
      [
        {"skipSnapshot", "skipSnapshot"}
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
  Deletes the specifed graph snapshot.
  """
  def delete_graph_snapshot(%Client{} = client, snapshot_identifier, input, options \\ []) do
    url_path = "/snapshots/#{AWS.Util.encode_uri(snapshot_identifier)}"
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
  Deletes a private graph endpoint.
  """
  def delete_private_graph_endpoint(
        %Client{} = client,
        graph_identifier,
        vpc_id,
        input,
        options \\ []
      ) do
    url_path =
      "/graphs/#{AWS.Util.encode_uri(graph_identifier)}/endpoints/#{AWS.Util.encode_uri(vpc_id)}"

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
  Execute an openCypher query.

  Currently, the SDK does not support parameterized queries. If you want to make a
  parameterized query call, you can use an HTTP request.

  When invoking this operation in a Neptune Analytics cluster, the IAM user or
  role making the request must have a policy attached
  that allows one of the following IAM actions in that cluster, depending on the
  query:

    *
  neptune-graph:ReadDataViaQuery

    *
  neptune-graph:WriteDataViaQuery

    *
  neptune-graph:DeleteDataViaQuery

  Non-parametrized queries are not considered for plan caching. You can force plan
  caching with
  `planCache=enabled`. The plan cache will be reused only for the same exact
  query. Slight variations
  in the query will not be able to reuse the query plan cache.
  """
  def execute_query(%Client{} = client, input, options \\ []) do
    url_path = "/queries"

    {headers, input} =
      [
        {"graphIdentifier", "graphIdentifier"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "{graphIdentifier}.")

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
  Gets information about a specified graph.
  """
  def get_graph(%Client{} = client, graph_identifier, options \\ []) do
    url_path = "/graphs/#{AWS.Util.encode_uri(graph_identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a specified graph snapshot.
  """
  def get_graph_snapshot(%Client{} = client, snapshot_identifier, options \\ []) do
    url_path = "/snapshots/#{AWS.Util.encode_uri(snapshot_identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a graph summary for a property graph.
  """
  def get_graph_summary(%Client{} = client, mode \\ nil, graph_identifier, options \\ []) do
    url_path = "/summary"
    headers = []

    headers =
      if !is_nil(graph_identifier) do
        [{"graphIdentifier", graph_identifier} | headers]
      else
        headers
      end

    query_params = []

    query_params =
      if !is_nil(mode) do
        [{"mode", mode} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "{graphIdentifier}.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a specified import task.
  """
  def get_import_task(%Client{} = client, task_identifier, options \\ []) do
    url_path = "/importtasks/#{AWS.Util.encode_uri(task_identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a specified private endpoint.
  """
  def get_private_graph_endpoint(%Client{} = client, graph_identifier, vpc_id, options \\ []) do
    url_path =
      "/graphs/#{AWS.Util.encode_uri(graph_identifier)}/endpoints/#{AWS.Util.encode_uri(vpc_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the status of a specified query.

  When invoking this operation in a Neptune Analytics cluster, the IAM user or
  role making the request must have the
  `neptune-graph:GetQueryStatus` IAM action attached.
  """
  def get_query(%Client{} = client, query_id, graph_identifier, options \\ []) do
    url_path = "/queries/#{AWS.Util.encode_uri(query_id)}"
    headers = []

    headers =
      if !is_nil(graph_identifier) do
        [{"graphIdentifier", graph_identifier} | headers]
      else
        headers
      end

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "{graphIdentifier}.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists available snapshots of a specified Neptune Analytics graph.
  """
  def list_graph_snapshots(
        %Client{} = client,
        graph_identifier \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/snapshots"
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
      if !is_nil(graph_identifier) do
        [{"graphIdentifier", graph_identifier} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists available Neptune Analytics graphs.
  """
  def list_graphs(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/graphs"
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
  Lists import tasks.
  """
  def list_import_tasks(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/importtasks"
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
  Lists private endpoints for a specified Neptune Analytics graph.
  """
  def list_private_graph_endpoints(
        %Client{} = client,
        graph_identifier,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/graphs/#{AWS.Util.encode_uri(graph_identifier)}/endpoints/"
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
  Lists active openCypher queries.
  """
  def list_queries(%Client{} = client, max_results, state \\ nil, graph_identifier, options \\ []) do
    url_path = "/queries"
    headers = []

    headers =
      if !is_nil(graph_identifier) do
        [{"graphIdentifier", graph_identifier} | headers]
      else
        headers
      end

    query_params = []

    query_params =
      if !is_nil(state) do
        [{"state", state} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "{graphIdentifier}.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists tags associated with a specified resource.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Empties the data from a specified Neptune Analytics graph.
  """
  def reset_graph(%Client{} = client, graph_identifier, input, options \\ []) do
    url_path = "/graphs/#{AWS.Util.encode_uri(graph_identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Restores a graph from a snapshot.
  """
  def restore_graph_from_snapshot(%Client{} = client, snapshot_identifier, input, options \\ []) do
    url_path = "/snapshots/#{AWS.Util.encode_uri(snapshot_identifier)}/restore"
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
      201
    )
  end

  @doc """
  Adds tags to the specified resource.
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
  Removes the specified tags from the specified resource.
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
  Updates the configuration of a specified Neptune Analytics graph
  """
  def update_graph(%Client{} = client, graph_identifier, input, options \\ []) do
    url_path = "/graphs/#{AWS.Util.encode_uri(graph_identifier)}"
    headers = []
    query_params = []

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
      200
    )
  end
end
