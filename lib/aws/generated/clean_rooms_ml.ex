# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CleanRoomsML do
  @moduledoc """
  API Reference for Amazon Web Services Clean Rooms ML.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2023-09-06",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "cleanrooms-ml",
      global?: false,
      protocol: "rest-json",
      service_id: "CleanRoomsML",
      signature_version: "v4",
      signing_name: "cleanrooms-ml",
      target_prefix: nil
    }
  end

  @doc """
  Defines the information necessary to create an audience model.

  An audience model is a machine learning model that Clean Rooms ML trains to
  measure similarity between users. Clean Rooms ML manages training and storing
  the audience model. The audience model can be used in multiple calls to the
  `StartAudienceGenerationJob` API.
  """
  def create_audience_model(%Client{} = client, input, options \\ []) do
    url_path = "/audience-model"
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
  Defines the information necessary to create a configured audience model.
  """
  def create_configured_audience_model(%Client{} = client, input, options \\ []) do
    url_path = "/configured-audience-model"
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
  Defines the information necessary to create a training dataset, or seed
  audience.

  In Clean Rooms ML, the `TrainingDataset` is metadata that points to a Glue
  table, which is read only during `AudienceModel` creation.
  """
  def create_training_dataset(%Client{} = client, input, options \\ []) do
    url_path = "/training-dataset"
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
  Deletes the specified audience generation job, and removes all data associated
  with the job.
  """
  def delete_audience_generation_job(
        %Client{} = client,
        audience_generation_job_arn,
        input,
        options \\ []
      ) do
    url_path = "/audience-generation-job/#{AWS.Util.encode_uri(audience_generation_job_arn)}"
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
  Specifies an audience model that you want to delete.

  You can't delete an audience model if there are any configured audience models
  that depend on the audience model.
  """
  def delete_audience_model(%Client{} = client, audience_model_arn, input, options \\ []) do
    url_path = "/audience-model/#{AWS.Util.encode_uri(audience_model_arn)}"
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
  Deletes the specified configured audience model.

  You can't delete a configured audience model if there are any lookalike models
  that use the configured audience model. If you delete a configured audience
  model, it will be removed from any collaborations that it is associated to.
  """
  def delete_configured_audience_model(
        %Client{} = client,
        configured_audience_model_arn,
        input,
        options \\ []
      ) do
    url_path = "/configured-audience-model/#{AWS.Util.encode_uri(configured_audience_model_arn)}"
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
  Deletes the specified configured audience model policy.
  """
  def delete_configured_audience_model_policy(
        %Client{} = client,
        configured_audience_model_arn,
        input,
        options \\ []
      ) do
    url_path =
      "/configured-audience-model/#{AWS.Util.encode_uri(configured_audience_model_arn)}/policy"

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
  Specifies a training dataset that you want to delete.

  You can't delete a training dataset if there are any audience models that depend
  on the training dataset. In Clean Rooms ML, the `TrainingDataset` is metadata
  that points to a Glue table, which is read only during `AudienceModel` creation.
  This action deletes the metadata.
  """
  def delete_training_dataset(%Client{} = client, training_dataset_arn, input, options \\ []) do
    url_path = "/training-dataset/#{AWS.Util.encode_uri(training_dataset_arn)}"
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
  Returns information about an audience generation job.
  """
  def get_audience_generation_job(%Client{} = client, audience_generation_job_arn, options \\ []) do
    url_path = "/audience-generation-job/#{AWS.Util.encode_uri(audience_generation_job_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about an audience model
  """
  def get_audience_model(%Client{} = client, audience_model_arn, options \\ []) do
    url_path = "/audience-model/#{AWS.Util.encode_uri(audience_model_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about a specified configured audience model.
  """
  def get_configured_audience_model(
        %Client{} = client,
        configured_audience_model_arn,
        options \\ []
      ) do
    url_path = "/configured-audience-model/#{AWS.Util.encode_uri(configured_audience_model_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about a configured audience model policy.
  """
  def get_configured_audience_model_policy(
        %Client{} = client,
        configured_audience_model_arn,
        options \\ []
      ) do
    url_path =
      "/configured-audience-model/#{AWS.Util.encode_uri(configured_audience_model_arn)}/policy"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about a training dataset.
  """
  def get_training_dataset(%Client{} = client, training_dataset_arn, options \\ []) do
    url_path = "/training-dataset/#{AWS.Util.encode_uri(training_dataset_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of the audience export jobs.
  """
  def list_audience_export_jobs(
        %Client{} = client,
        audience_generation_job_arn \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/audience-export-job"
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
      if !is_nil(audience_generation_job_arn) do
        [{"audienceGenerationJobArn", audience_generation_job_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of audience generation jobs.
  """
  def list_audience_generation_jobs(
        %Client{} = client,
        collaboration_id \\ nil,
        configured_audience_model_arn \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/audience-generation-job"
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
      if !is_nil(configured_audience_model_arn) do
        [{"configuredAudienceModelArn", configured_audience_model_arn} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(collaboration_id) do
        [{"collaborationId", collaboration_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of audience models.
  """
  def list_audience_models(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/audience-model"
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
  Returns a list of the configured audience models.
  """
  def list_configured_audience_models(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/configured-audience-model"
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
  Returns a list of tags for a provided resource.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of training datasets.
  """
  def list_training_datasets(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/training-dataset"
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
  Create or update the resource policy for a configured audience model.
  """
  def put_configured_audience_model_policy(
        %Client{} = client,
        configured_audience_model_arn,
        input,
        options \\ []
      ) do
    url_path =
      "/configured-audience-model/#{AWS.Util.encode_uri(configured_audience_model_arn)}/policy"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Export an audience of a specified size after you have generated an audience.
  """
  def start_audience_export_job(%Client{} = client, input, options \\ []) do
    url_path = "/audience-export-job"
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
  Information necessary to start the audience generation job.
  """
  def start_audience_generation_job(%Client{} = client, input, options \\ []) do
    url_path = "/audience-generation-job"
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
  Adds metadata tags to a specified resource.
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
  Removes metadata tags from a specified resource.
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
  Provides the information necessary to update a configured audience model.

  Updates that impact audience generation jobs take effect when a new job starts,
  but do not impact currently running jobs.
  """
  def update_configured_audience_model(
        %Client{} = client,
        configured_audience_model_arn,
        input,
        options \\ []
      ) do
    url_path = "/configured-audience-model/#{AWS.Util.encode_uri(configured_audience_model_arn)}"
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
