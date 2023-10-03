# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Bedrock do
  @moduledoc """
  Describes the API operations for creating and managing Bedrock models.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2023-04-20",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "bedrock",
      global?: false,
      protocol: "rest-json",
      service_id: "Bedrock",
      signature_version: "v4",
      signing_name: "bedrock",
      target_prefix: nil
    }
  end

  @doc """
  Creates a fine-tuning job to customize a base model.

  You specify the base foundation model and the location of the training data.
  After the model-customization job completes successfully, your custom model
  resource will be ready to use. Training data contains input and output text for
  each record in a JSONL format. Optionally, you can specify validation data in
  the same format as the training data. Bedrock returns validation loss metrics
  and output generations after the job completes.

  Model-customization jobs are asynchronous and the completion time depends on the
  base model and the training/validation data size. To monitor a job, use the
  `GetModelCustomizationJob` operation to retrieve the job status.

  For more information, see [Custom models](https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html)
  in the Bedrock User Guide.
  """
  def create_model_customization_job(%Client{} = client, input, options \\ []) do
    url_path = "/model-customization-jobs"
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
  Creates a provisioned throughput with dedicated capacity for a foundation model
  or a fine-tuned model.

  For more information, see [Provisioned throughput](https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html)
  in the Bedrock User Guide.
  """
  def create_provisioned_model_throughput(%Client{} = client, input, options \\ []) do
    url_path = "/provisioned-model-throughput"
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
  Deletes a custom model that you created earlier.

  For more information, see [Custom models](https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html)
  in the Bedrock User Guide.
  """
  def delete_custom_model(%Client{} = client, model_identifier, input, options \\ []) do
    url_path = "/custom-models/#{AWS.Util.encode_uri(model_identifier)}"
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
  Delete the invocation logging.
  """
  def delete_model_invocation_logging_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/logging/modelinvocations"
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
  Deletes a provisioned throughput.

  For more information, see [Provisioned throughput](https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html)
  in the Bedrock User Guide.
  """
  def delete_provisioned_model_throughput(
        %Client{} = client,
        provisioned_model_id,
        input,
        options \\ []
      ) do
    url_path = "/provisioned-model-throughput/#{AWS.Util.encode_uri(provisioned_model_id)}"
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
  Get the properties associated with a Bedrock custom model that you have
  created.For more information, see [Custom models](https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html)
  in the Bedrock User Guide.
  """
  def get_custom_model(%Client{} = client, model_identifier, options \\ []) do
    url_path = "/custom-models/#{AWS.Util.encode_uri(model_identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get details about a Bedrock foundation model.
  """
  def get_foundation_model(%Client{} = client, model_identifier, options \\ []) do
    url_path = "/foundation-models/#{AWS.Util.encode_uri(model_identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the properties associated with a model-customization job, including
  the status of the job.

  For more information, see [Custom models](https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html)
  in the Bedrock User Guide.
  """
  def get_model_customization_job(%Client{} = client, job_identifier, options \\ []) do
    url_path = "/model-customization-jobs/#{AWS.Util.encode_uri(job_identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get the current configuration values for model invocation logging.
  """
  def get_model_invocation_logging_configuration(%Client{} = client, options \\ []) do
    url_path = "/logging/modelinvocations"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get details for a provisioned throughput.

  For more information, see [Provisioned throughput](https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html)
  in the Bedrock User Guide.
  """
  def get_provisioned_model_throughput(%Client{} = client, provisioned_model_id, options \\ []) do
    url_path = "/provisioned-model-throughput/#{AWS.Util.encode_uri(provisioned_model_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of the custom models that you have created with the
  `CreateModelCustomizationJob` operation.

  For more information, see [Custom models](https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html)
  in the Bedrock User Guide.
  """
  def list_custom_models(
        %Client{} = client,
        base_model_arn_equals \\ nil,
        creation_time_after \\ nil,
        creation_time_before \\ nil,
        foundation_model_arn_equals \\ nil,
        max_results \\ nil,
        name_contains \\ nil,
        next_token \\ nil,
        sort_by \\ nil,
        sort_order \\ nil,
        options \\ []
      ) do
    url_path = "/custom-models"
    headers = []
    query_params = []

    query_params =
      if !is_nil(sort_order) do
        [{"sortOrder", sort_order} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(sort_by) do
        [{"sortBy", sort_by} | query_params]
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
      if !is_nil(name_contains) do
        [{"nameContains", name_contains} | query_params]
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
      if !is_nil(foundation_model_arn_equals) do
        [{"foundationModelArnEquals", foundation_model_arn_equals} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(creation_time_before) do
        [{"creationTimeBefore", creation_time_before} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(creation_time_after) do
        [{"creationTimeAfter", creation_time_after} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(base_model_arn_equals) do
        [{"baseModelArnEquals", base_model_arn_equals} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List of Bedrock foundation models that you can use.

  For more information, see [Foundation models](https://docs.aws.amazon.com/bedrock/latest/userguide/foundation-models.html)
  in the Bedrock User Guide.
  """
  def list_foundation_models(
        %Client{} = client,
        by_customization_type \\ nil,
        by_inference_type \\ nil,
        by_output_modality \\ nil,
        by_provider \\ nil,
        options \\ []
      ) do
    url_path = "/foundation-models"
    headers = []
    query_params = []

    query_params =
      if !is_nil(by_provider) do
        [{"byProvider", by_provider} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(by_output_modality) do
        [{"byOutputModality", by_output_modality} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(by_inference_type) do
        [{"byInferenceType", by_inference_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(by_customization_type) do
        [{"byCustomizationType", by_customization_type} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of model customization jobs that you have submitted.

  You can filter the jobs to return based on one or more criteria.

  For more information, see [Custom models](https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html)
  in the Bedrock User Guide.
  """
  def list_model_customization_jobs(
        %Client{} = client,
        creation_time_after \\ nil,
        creation_time_before \\ nil,
        max_results \\ nil,
        name_contains \\ nil,
        next_token \\ nil,
        sort_by \\ nil,
        sort_order \\ nil,
        status_equals \\ nil,
        options \\ []
      ) do
    url_path = "/model-customization-jobs"
    headers = []
    query_params = []

    query_params =
      if !is_nil(status_equals) do
        [{"statusEquals", status_equals} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(sort_order) do
        [{"sortOrder", sort_order} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(sort_by) do
        [{"sortBy", sort_by} | query_params]
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
      if !is_nil(name_contains) do
        [{"nameContains", name_contains} | query_params]
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
      if !is_nil(creation_time_before) do
        [{"creationTimeBefore", creation_time_before} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(creation_time_after) do
        [{"creationTimeAfter", creation_time_after} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List the provisioned capacities.

  For more information, see [Provisioned throughput](https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html)
  in the Bedrock User Guide.
  """
  def list_provisioned_model_throughputs(
        %Client{} = client,
        creation_time_after \\ nil,
        creation_time_before \\ nil,
        max_results \\ nil,
        model_arn_equals \\ nil,
        name_contains \\ nil,
        next_token \\ nil,
        sort_by \\ nil,
        sort_order \\ nil,
        status_equals \\ nil,
        options \\ []
      ) do
    url_path = "/provisioned-model-throughputs"
    headers = []
    query_params = []

    query_params =
      if !is_nil(status_equals) do
        [{"statusEquals", status_equals} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(sort_order) do
        [{"sortOrder", sort_order} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(sort_by) do
        [{"sortBy", sort_by} | query_params]
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
      if !is_nil(name_contains) do
        [{"nameContains", name_contains} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(model_arn_equals) do
        [{"modelArnEquals", model_arn_equals} | query_params]
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
      if !is_nil(creation_time_before) do
        [{"creationTimeBefore", creation_time_before} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(creation_time_after) do
        [{"creationTimeAfter", creation_time_after} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List the tags associated with the specified resource.

  For more information, see [Tagging resources](https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html)
  in the Bedrock User Guide.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    url_path = "/listTagsForResource"
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
  Set the configuration values for model invocation logging.
  """
  def put_model_invocation_logging_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/logging/modelinvocations"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Stops an active model customization job.

  For more information, see [Custom models](https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html)
  in the Bedrock User Guide.
  """
  def stop_model_customization_job(%Client{} = client, job_identifier, input, options \\ []) do
    url_path = "/model-customization-jobs/#{AWS.Util.encode_uri(job_identifier)}/stop"
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
  Associate tags with a resource.

  For more information, see [Tagging resources](https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html)
  in the Bedrock User Guide.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/tagResource"
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
  Remove one or more tags from a resource.

  For more information, see [Tagging resources](https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html)
  in the Bedrock User Guide.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/untagResource"
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
  Update a provisioned throughput.

  For more information, see [Provisioned throughput](https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html)
  in the Bedrock User Guide.
  """
  def update_provisioned_model_throughput(
        %Client{} = client,
        provisioned_model_id,
        input,
        options \\ []
      ) do
    url_path = "/provisioned-model-throughput/#{AWS.Util.encode_uri(provisioned_model_id)}"
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
