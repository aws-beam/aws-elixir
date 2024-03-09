# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.OSIS do
  @moduledoc """
  Use the Amazon OpenSearch Ingestion API to create and manage ingestion
  pipelines.

  OpenSearch Ingestion is a
  fully managed data collector that delivers real-time log and trace data to
  OpenSearch Service domains. For more information, see
  [Getting data into your cluster using OpenSearch Ingestion](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/ingestion.html).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      api_version: "2022-01-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "osis",
      global?: false,
      protocol: "rest-json",
      service_id: "OSIS",
      signature_version: "v4",
      signing_name: "osis",
      target_prefix: nil
    }
  end

  @doc """
  Creates an OpenSearch Ingestion pipeline.

  For more information, see [Creating Amazon OpenSearch Ingestion pipelines](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/creating-pipeline.html).
  """
  def create_pipeline(%Client{} = client, input, options \\ []) do
    url_path = "/2022-01-01/osis/createPipeline"
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
  Deletes an OpenSearch Ingestion pipeline.

  For more information, see [Deleting Amazon OpenSearch Ingestion pipelines](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/delete-pipeline.html).
  """
  def delete_pipeline(%Client{} = client, pipeline_name, input, options \\ []) do
    url_path = "/2022-01-01/osis/deletePipeline/#{AWS.Util.encode_uri(pipeline_name)}"
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
  Retrieves information about an OpenSearch Ingestion pipeline.
  """
  def get_pipeline(%Client{} = client, pipeline_name, options \\ []) do
    url_path = "/2022-01-01/osis/getPipeline/#{AWS.Util.encode_uri(pipeline_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a specific blueprint for OpenSearch Ingestion.

  Blueprints are
  templates for the configuration needed for a `CreatePipeline` request. For more
  information, see [Using blueprints to create a
  pipeline](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/creating-pipeline.html#pipeline-blueprint).
  """
  def get_pipeline_blueprint(%Client{} = client, blueprint_name, options \\ []) do
    url_path = "/2022-01-01/osis/getPipelineBlueprint/#{AWS.Util.encode_uri(blueprint_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns progress information for the current change happening on an OpenSearch
  Ingestion
  pipeline.

  Currently, this operation only returns information when a pipeline is being
  created.

  For more information, see [Tracking the status of pipeline creation](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/creating-pipeline.html#get-pipeline-progress).
  """
  def get_pipeline_change_progress(%Client{} = client, pipeline_name, options \\ []) do
    url_path = "/2022-01-01/osis/getPipelineChangeProgress/#{AWS.Util.encode_uri(pipeline_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a list of all available blueprints for Data Prepper.

  For more information, see
  [Using blueprints to create a pipeline](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/creating-pipeline.html#pipeline-blueprint).
  """
  def list_pipeline_blueprints(%Client{} = client, input, options \\ []) do
    url_path = "/2022-01-01/osis/listPipelineBlueprints"
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
  Lists all OpenSearch Ingestion pipelines in the current Amazon Web Services
  account and Region.

  For
  more information, see [Viewing Amazon OpenSearch Ingestion pipelines](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/list-pipeline.html).
  """
  def list_pipelines(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/2022-01-01/osis/listPipelines"
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
  Lists all resource tags associated with an OpenSearch Ingestion pipeline.

  For more information,
  see [Tagging Amazon OpenSearch Ingestion pipelines](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/tag-pipeline.html).
  """
  def list_tags_for_resource(%Client{} = client, arn, options \\ []) do
    url_path = "/2022-01-01/osis/listTagsForResource"
    headers = []
    query_params = []

    query_params =
      if !is_nil(arn) do
        [{"arn", arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Starts an OpenSearch Ingestion pipeline.

  For more information, see [Starting an OpenSearch Ingestion pipeline](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/pipeline--stop-start.html#pipeline--start).
  """
  def start_pipeline(%Client{} = client, pipeline_name, input, options \\ []) do
    url_path = "/2022-01-01/osis/startPipeline/#{AWS.Util.encode_uri(pipeline_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Stops an OpenSearch Ingestion pipeline.

  For more information, see [Stopping an OpenSearch Ingestion pipeline](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/pipeline--stop-start.html#pipeline--stop).
  """
  def stop_pipeline(%Client{} = client, pipeline_name, input, options \\ []) do
    url_path = "/2022-01-01/osis/stopPipeline/#{AWS.Util.encode_uri(pipeline_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Tags an OpenSearch Ingestion pipeline.

  For more information, see [Tagging Amazon OpenSearch Ingestion pipelines](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/tag-pipeline.html).
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/2022-01-01/osis/tagResource"
    headers = []

    {query_params, input} =
      [
        {"Arn", "arn"}
      ]
      |> Request.build_params(input)

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
  Removes one or more tags from an OpenSearch Ingestion pipeline.

  For more information, see [Tagging Amazon OpenSearch Ingestion
  pipelines](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/tag-pipeline.html).
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/2022-01-01/osis/untagResource"
    headers = []

    {query_params, input} =
      [
        {"Arn", "arn"}
      ]
      |> Request.build_params(input)

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
  Updates an OpenSearch Ingestion pipeline.

  For more information, see [Updating Amazon OpenSearch Ingestion pipelines](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/update-pipeline.html).
  """
  def update_pipeline(%Client{} = client, pipeline_name, input, options \\ []) do
    url_path = "/2022-01-01/osis/updatePipeline/#{AWS.Util.encode_uri(pipeline_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Checks whether an OpenSearch Ingestion pipeline configuration is valid prior to
  creation.

  For
  more information, see [Creating Amazon OpenSearch Ingestion
  pipelines](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/creating-pipeline.html).
  """
  def validate_pipeline(%Client{} = client, input, options \\ []) do
    url_path = "/2022-01-01/osis/validatePipeline"
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
