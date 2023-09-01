# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Neptunedata do
  @moduledoc """
  Neptune Data API

  The Amazon Neptune data API provides SDK support for more than 40 of Neptune's
  data operations, including data loading, query execution, data inquiry, and
  machine learning.

  It supports all three Neptune query languages (Gremlin, openCypher and SPARQL),
  and is available in all SDK languages. It automatically signs API requests and
  greatly simplifies integrating Neptune into your applications.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2023-08-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "neptune-db",
      global?: false,
      protocol: "rest-json",
      service_id: "neptunedata",
      signature_version: "v4",
      signing_name: "neptune-db",
      target_prefix: nil
    }
  end

  @doc """
  Cancels a Gremlin query.

  See [Gremlin query cancellation](https://docs.aws.amazon.com/neptune/latest/userguide/gremlin-api-status-cancel.html)
  for more information.
  """
  def cancel_gremlin_query(%Client{} = client, query_id, input, options \\ []) do
    url_path = "/gremlin/status/#{AWS.Util.encode_uri(query_id)}"
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
  Cancels a specified load job.

  This is an HTTP `DELETE` request.

  See [Neptune Loader Get-Status API](https://docs.aws.amazon.com/neptune/latest/userguide/load-api-reference-status.htm)
  for more information.
  """
  def cancel_loader_job(%Client{} = client, load_id, input, options \\ []) do
    url_path = "/loader/#{AWS.Util.encode_uri(load_id)}"
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
  Cancels a Neptune ML data processing job.

  See [The `dataprocessing` command](https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-api-dataprocessing.html).
  """
  def cancel_ml_data_processing_job(%Client{} = client, id, input, options \\ []) do
    url_path = "/ml/dataprocessing/#{AWS.Util.encode_uri(id)}"
    headers = []

    {query_params, input} =
      [
        {"clean", "clean"},
        {"neptuneIamRoleArn", "neptuneIamRoleArn"}
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
  Cancels a Neptune ML model training job.

  See [Model training using the `modeltraining` command](https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-api-modeltraining.html).
  """
  def cancel_ml_model_training_job(%Client{} = client, id, input, options \\ []) do
    url_path = "/ml/modeltraining/#{AWS.Util.encode_uri(id)}"
    headers = []

    {query_params, input} =
      [
        {"clean", "clean"},
        {"neptuneIamRoleArn", "neptuneIamRoleArn"}
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
  Cancels a specified model transform job.

  See [Use a trained model to generate new model artifacts](https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-model-transform.html).
  """
  def cancel_ml_model_transform_job(%Client{} = client, id, input, options \\ []) do
    url_path = "/ml/modeltransform/#{AWS.Util.encode_uri(id)}"
    headers = []

    {query_params, input} =
      [
        {"clean", "clean"},
        {"neptuneIamRoleArn", "neptuneIamRoleArn"}
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
  Cancels a specified openCypher query.

  See [Neptune openCypher status endpoint](https://docs.aws.amazon.com/neptune/latest/userguide/access-graph-opencypher-status.html)
  for more information.
  """
  def cancel_open_cypher_query(%Client{} = client, query_id, input, options \\ []) do
    url_path = "/opencypher/status/#{AWS.Util.encode_uri(query_id)}"
    headers = []

    {query_params, input} =
      [
        {"silent", "silent"}
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
  Creates a new Neptune ML inference endpoint that lets you query one specific
  model that the model-training process constructed.

  See [Managing inference endpoints using the endpoints command](https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-api-endpoints.html).
  """
  def create_ml_endpoint(%Client{} = client, input, options \\ []) do
    url_path = "/ml/endpoints"
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
  Cancels the creation of a Neptune ML inference endpoint.

  See [Managing inference endpoints using the endpoints command](https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-api-endpoints.html).
  """
  def delete_ml_endpoint(%Client{} = client, id, input, options \\ []) do
    url_path = "/ml/endpoints/#{AWS.Util.encode_uri(id)}"
    headers = []

    {query_params, input} =
      [
        {"clean", "clean"},
        {"neptuneIamRoleArn", "neptuneIamRoleArn"}
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
  Deletes statistics for Gremlin and openCypher (property graph) data.
  """
  def delete_propertygraph_statistics(%Client{} = client, input, options \\ []) do
    url_path = "/propertygraph/statistics"
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
  Deletes SPARQL statistics
  """
  def delete_sparql_statistics(%Client{} = client, input, options \\ []) do
    url_path = "/sparql/statistics"
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
  The fast reset REST API lets you reset a Neptune graph quicky and easily,
  removing all of its data.

  Neptune fast reset is a two-step process. First you call `ExecuteFastReset` with
  `action` set to `initiateDatabaseReset`. This returns a UUID token which you
  then include when calling `ExecuteFastReset` again with `action` set to
  `performDatabaseReset`. See [Empty an Amazon Neptune DB cluster using the fast reset
  API](https://docs.aws.amazon.com/neptune/latest/userguide/manage-console-fast-reset.html).
  """
  def execute_fast_reset(%Client{} = client, input, options \\ []) do
    url_path = "/system"
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
  Executes a Gremlin Explain query.

  Amazon Neptune has added a Gremlin feature named `explain` that provides is a
  self-service tool for understanding the execution approach being taken by the
  Neptune engine for the query. You invoke it by adding an `explain` parameter to
  an HTTP call that submits a Gremlin query.

  The explain feature provides information about the logical structure of query
  execution plans. You can use this information to identify potential evaluation
  and execution bottlenecks and to tune your query, as explained in [Tuning Gremlin
  queries](https://docs.aws.amazon.com/neptune/latest/userguide/gremlin-traversal-tuning.html).
  You can also use query hints to improve query execution plans.
  """
  def execute_gremlin_explain_query(%Client{} = client, input, options \\ []) do
    url_path = "/gremlin/explain"
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
  Executes a Gremlin Profile query, which runs a specified traversal, collects
  various metrics about the run, and produces a profile report as output.

  See [Gremlin profile API in Neptune](https://docs.aws.amazon.com/neptune/latest/userguide/gremlin-profile-api.html)
  for details.
  """
  def execute_gremlin_profile_query(%Client{} = client, input, options \\ []) do
    url_path = "/gremlin/profile"
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
  This commands executes a Gremlin query.

  Amazon Neptune is compatible with Apache TinkerPop3 and Gremlin, so you can use
  the Gremlin traversal language to query the graph, as described under [The Graph](https://tinkerpop.apache.org/docs/current/reference/#graph) in the Apache
  TinkerPop3 documentation. More details can also be found in [Accessing a Neptune graph with
  Gremlin](https://docs.aws.amazon.com/neptune/latest/userguide/access-graph-gremlin.html).
  """
  def execute_gremlin_query(%Client{} = client, input, options \\ []) do
    url_path = "/gremlin"

    {headers, input} =
      [
        {"serializer", "accept"}
      ]
      |> Request.build_params(input)

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
  Executes an openCypher `explain` request.

  See [The openCypher explain feature](https://docs.aws.amazon.com/neptune/latest/userguide/access-graph-opencypher-explain.html)
  for more information.
  """
  def execute_open_cypher_explain_query(%Client{} = client, input, options \\ []) do
    url_path = "/opencypher/explain"
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
  Check the status of the graph database on the host.
  """
  def get_engine_status(%Client{} = client, options \\ []) do
    url_path = "/status"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the status of a specified Gremlin query.
  """
  def get_gremlin_query_status(%Client{} = client, query_id, options \\ []) do
    url_path = "/gremlin/status/#{AWS.Util.encode_uri(query_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a specified data processing job.

  See [The `dataprocessing` command](https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-api-dataprocessing.html).
  """
  def get_ml_data_processing_job(
        %Client{} = client,
        id,
        neptune_iam_role_arn \\ nil,
        options \\ []
      ) do
    url_path = "/ml/dataprocessing/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(neptune_iam_role_arn) do
        [{"neptuneIamRoleArn", neptune_iam_role_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves details about an inference endpoint.

  See [Managing inference endpoints using the endpoints command](https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-api-endpoints.html).
  """
  def get_ml_endpoint(%Client{} = client, id, neptune_iam_role_arn \\ nil, options \\ []) do
    url_path = "/ml/endpoints/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(neptune_iam_role_arn) do
        [{"neptuneIamRoleArn", neptune_iam_role_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a Neptune ML model training job.

  See [Model training using the `modeltraining` command](https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-api-modeltraining.html).
  """
  def get_ml_model_training_job(
        %Client{} = client,
        id,
        neptune_iam_role_arn \\ nil,
        options \\ []
      ) do
    url_path = "/ml/modeltraining/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(neptune_iam_role_arn) do
        [{"neptuneIamRoleArn", neptune_iam_role_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a specified model transform job.

  See [Use a trained model to generate new model artifacts](https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-model-transform.html).
  """
  def get_ml_model_transform_job(
        %Client{} = client,
        id,
        neptune_iam_role_arn \\ nil,
        options \\ []
      ) do
    url_path = "/ml/modeltransform/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(neptune_iam_role_arn) do
        [{"neptuneIamRoleArn", neptune_iam_role_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the status of a specified openCypher query.
  """
  def get_open_cypher_query_status(%Client{} = client, query_id, options \\ []) do
    url_path = "/opencypher/status/#{AWS.Util.encode_uri(query_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets property graph statistics (Gremlin and openCypher).
  """
  def get_propertygraph_statistics(%Client{} = client, options \\ []) do
    url_path = "/propertygraph/statistics"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a graph summary for a property graph.
  """
  def get_propertygraph_summary(%Client{} = client, mode \\ nil, options \\ []) do
    url_path = "/propertygraph/statistics/summary"
    headers = []
    query_params = []

    query_params =
      if !is_nil(mode) do
        [{"mode", mode} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a graph summary for an RDF graph.
  """
  def get_r_d_f_graph_summary(%Client{} = client, mode \\ nil, options \\ []) do
    url_path = "/rdf/statistics/summary"
    headers = []
    query_params = []

    query_params =
      if !is_nil(mode) do
        [{"mode", mode} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets RDF statistics (SPARQL).
  """
  def get_sparql_statistics(%Client{} = client, options \\ []) do
    url_path = "/sparql/statistics"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a stream for an RDF graph.

  With the Neptune Streams feature, you can generate a complete sequence of
  change-log entries that record every change made to your graph data as it
  happens. `GetSparqlStream` lets you collect these change-log entries for an RDF
  graph.

  The Neptune streams feature needs to be enabled on your Neptune DBcluster. To
  enable streams, set the
  [neptune_streams](https://docs.aws.amazon.com/neptune/latest/userguide/parameters.html#parameters-db-cluster-parameters-neptune_streams) DB cluster parameter to `1`.

  See [Capturing graph changes in real time using Neptune
  streams](https://docs.aws.amazon.com/neptune/latest/userguide/streams.html).
  """
  def get_sparql_stream(
        %Client{} = client,
        commit_num \\ nil,
        iterator_type \\ nil,
        limit \\ nil,
        op_num \\ nil,
        encoding \\ nil,
        options \\ []
      ) do
    url_path = "/sparql/stream"
    headers = []

    headers =
      if !is_nil(encoding) do
        [{"Accept-Encoding", encoding} | headers]
      else
        headers
      end

    query_params = []

    query_params =
      if !is_nil(op_num) do
        [{"opNum", op_num} | query_params]
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
      if !is_nil(iterator_type) do
        [{"iteratorType", iterator_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(commit_num) do
        [{"commitNum", commit_num} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists active Gremlin queries.

  See [Gremlin query status API](https://docs.aws.amazon.com/neptune/latest/userguide/gremlin-api-status.html)
  for details about the output.
  """
  def list_gremlin_queries(%Client{} = client, include_waiting \\ nil, options \\ []) do
    url_path = "/gremlin/status"
    headers = []
    query_params = []

    query_params =
      if !is_nil(include_waiting) do
        [{"includeWaiting", include_waiting} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a list of the `loadIds` for all active loader jobs.
  """
  def list_loader_jobs(
        %Client{} = client,
        include_queued_loads \\ nil,
        limit \\ nil,
        options \\ []
      ) do
    url_path = "/loader"
    headers = []
    query_params = []

    query_params =
      if !is_nil(limit) do
        [{"limit", limit} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(include_queued_loads) do
        [{"includeQueuedLoads", include_queued_loads} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of Neptune ML data processing jobs.

  See [Listing active data-processing jobs using the Neptune ML dataprocessing command](https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-api-dataprocessing.html#machine-learning-api-dataprocessing-list-jobs).
  """
  def list_ml_data_processing_jobs(
        %Client{} = client,
        max_items \\ nil,
        neptune_iam_role_arn \\ nil,
        options \\ []
      ) do
    url_path = "/ml/dataprocessing"
    headers = []
    query_params = []

    query_params =
      if !is_nil(neptune_iam_role_arn) do
        [{"neptuneIamRoleArn", neptune_iam_role_arn} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_items) do
        [{"maxItems", max_items} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists existing inference endpoints.

  See [Managing inference endpoints using the endpoints command](https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-api-endpoints.html).
  """
  def list_ml_endpoints(
        %Client{} = client,
        max_items \\ nil,
        neptune_iam_role_arn \\ nil,
        options \\ []
      ) do
    url_path = "/ml/endpoints"
    headers = []
    query_params = []

    query_params =
      if !is_nil(neptune_iam_role_arn) do
        [{"neptuneIamRoleArn", neptune_iam_role_arn} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_items) do
        [{"maxItems", max_items} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists Neptune ML model-training jobs.

  See [Model training using the `modeltraining` command](https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-api-modeltraining.html).
  """
  def list_ml_model_training_jobs(
        %Client{} = client,
        max_items \\ nil,
        neptune_iam_role_arn \\ nil,
        options \\ []
      ) do
    url_path = "/ml/modeltraining"
    headers = []
    query_params = []

    query_params =
      if !is_nil(neptune_iam_role_arn) do
        [{"neptuneIamRoleArn", neptune_iam_role_arn} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_items) do
        [{"maxItems", max_items} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of model transform job IDs.

  See [Use a trained model to generate new model artifacts](https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-model-transform.html).
  """
  def list_ml_model_transform_jobs(
        %Client{} = client,
        max_items \\ nil,
        neptune_iam_role_arn \\ nil,
        options \\ []
      ) do
    url_path = "/ml/modeltransform"
    headers = []
    query_params = []

    query_params =
      if !is_nil(neptune_iam_role_arn) do
        [{"neptuneIamRoleArn", neptune_iam_role_arn} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_items) do
        [{"maxItems", max_items} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists active openCypher queries.

  See [Neptune openCypher status endpoint](https://docs.aws.amazon.com/neptune/latest/userguide/access-graph-opencypher-status.html)
  for more information.
  """
  def list_open_cypher_queries(%Client{} = client, include_waiting \\ nil, options \\ []) do
    url_path = "/opencypher/status"
    headers = []
    query_params = []

    query_params =
      if !is_nil(include_waiting) do
        [{"includeWaiting", include_waiting} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Manages the generation and use of property graph statistics.
  """
  def manage_propertygraph_statistics(%Client{} = client, input, options \\ []) do
    url_path = "/propertygraph/statistics"
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
  Manages the generation and use of RDF graph statistics.
  """
  def manage_sparql_statistics(%Client{} = client, input, options \\ []) do
    url_path = "/sparql/statistics"
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
  Starts a Neptune bulk loader job to load data from an Amazon S3 bucket into a
  Neptune DB instance.

  See [Using the Amazon Neptune Bulk Loader to Ingest Data](https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load.html).
  """
  def start_loader_job(%Client{} = client, input, options \\ []) do
    url_path = "/loader"
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
  Creates a new Neptune ML data processing job for processing the graph data
  exported from Neptune for training.

  See [The `dataprocessing` command](https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-api-dataprocessing.html).
  """
  def start_ml_data_processing_job(%Client{} = client, input, options \\ []) do
    url_path = "/ml/dataprocessing"
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
  Creates a new Neptune ML model training job.

  See [Model training using the `modeltraining` command](https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-api-modeltraining.html).
  """
  def start_ml_model_training_job(%Client{} = client, input, options \\ []) do
    url_path = "/ml/modeltraining"
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
  Creates a new model transform job.

  See [Use a trained model to generate new model artifacts](https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-model-transform.html).
  """
  def start_ml_model_transform_job(%Client{} = client, input, options \\ []) do
    url_path = "/ml/modeltransform"
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
end
