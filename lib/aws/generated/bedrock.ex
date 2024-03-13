# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Bedrock do
  @moduledoc """
  Describes the API operations for creating and managing Amazon Bedrock models.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      model_customization_job_summary() :: %{
        "baseModelArn" => String.t(),
        "creationTime" => non_neg_integer(),
        "customModelArn" => String.t(),
        "customModelName" => String.t(),
        "customizationType" => list(any()),
        "endTime" => non_neg_integer(),
        "jobArn" => String.t(),
        "jobName" => String.t(),
        "lastModifiedTime" => non_neg_integer(),
        "status" => list(any())
      }

  """
  @type model_customization_job_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_custom_models_request() :: %{
        optional("baseModelArnEquals") => String.t(),
        optional("creationTimeAfter") => non_neg_integer(),
        optional("creationTimeBefore") => non_neg_integer(),
        optional("foundationModelArnEquals") => String.t(),
        optional("maxResults") => integer(),
        optional("nameContains") => String.t(),
        optional("nextToken") => String.t(),
        optional("sortBy") => list(any()),
        optional("sortOrder") => list(any())
      }

  """
  @type list_custom_models_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_provisioned_model_throughput_response() :: %{}

  """
  @type delete_provisioned_model_throughput_response() :: %{}

  @typedoc """

  ## Example:

      foundation_model_summary() :: %{
        "customizationsSupported" => list(list(any())()),
        "inferenceTypesSupported" => list(list(any())()),
        "inputModalities" => list(list(any())()),
        "modelArn" => String.t(),
        "modelId" => String.t(),
        "modelLifecycle" => foundation_model_lifecycle(),
        "modelName" => String.t(),
        "outputModalities" => list(list(any())()),
        "providerName" => String.t(),
        "responseStreamingSupported" => [boolean()]
      }

  """
  @type foundation_model_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("resourceARN") => String.t(),
        required("tags") => list(tag()())
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_custom_model_response() :: %{}

  """
  @type delete_custom_model_response() :: %{}

  @typedoc """

  ## Example:

      get_provisioned_model_throughput_request() :: %{}

  """
  @type get_provisioned_model_throughput_request() :: %{}

  @typedoc """

  ## Example:

      create_model_customization_job_response() :: %{
        "jobArn" => String.t()
      }

  """
  @type create_model_customization_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      foundation_model_details() :: %{
        "customizationsSupported" => list(list(any())()),
        "inferenceTypesSupported" => list(list(any())()),
        "inputModalities" => list(list(any())()),
        "modelArn" => String.t(),
        "modelId" => String.t(),
        "modelLifecycle" => foundation_model_lifecycle(),
        "modelName" => String.t(),
        "outputModalities" => list(list(any())()),
        "providerName" => String.t(),
        "responseStreamingSupported" => [boolean()]
      }

  """
  @type foundation_model_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      list_model_customization_jobs_request() :: %{
        optional("creationTimeAfter") => non_neg_integer(),
        optional("creationTimeBefore") => non_neg_integer(),
        optional("maxResults") => integer(),
        optional("nameContains") => String.t(),
        optional("nextToken") => String.t(),
        optional("sortBy") => list(any()),
        optional("sortOrder") => list(any()),
        optional("statusEquals") => list(any())
      }

  """
  @type list_model_customization_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_provisioned_model_throughputs_request() :: %{
        optional("creationTimeAfter") => non_neg_integer(),
        optional("creationTimeBefore") => non_neg_integer(),
        optional("maxResults") => integer(),
        optional("modelArnEquals") => String.t(),
        optional("nameContains") => String.t(),
        optional("nextToken") => String.t(),
        optional("sortBy") => list(any()),
        optional("sortOrder") => list(any()),
        optional("statusEquals") => list(any())
      }

  """
  @type list_provisioned_model_throughputs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cloud_watch_config() :: %{
        "largeDataDeliveryS3Config" => s3_config(),
        "logGroupName" => String.t(),
        "roleArn" => String.t()
      }

  """
  @type cloud_watch_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      logging_config() :: %{
        "cloudWatchConfig" => cloud_watch_config(),
        "embeddingDataDeliveryEnabled" => [boolean()],
        "imageDataDeliveryEnabled" => [boolean()],
        "s3Config" => s3_config(),
        "textDataDeliveryEnabled" => [boolean()]
      }

  """
  @type logging_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("resourceARN") => String.t(),
        required("tagKeys") => list(String.t()())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_provisioned_model_throughputs_response() :: %{
        "nextToken" => String.t(),
        "provisionedModelSummaries" => list(provisioned_model_summary()())
      }

  """
  @type list_provisioned_model_throughputs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      provisioned_model_summary() :: %{
        "commitmentDuration" => list(any()),
        "commitmentExpirationTime" => non_neg_integer(),
        "creationTime" => non_neg_integer(),
        "desiredModelArn" => String.t(),
        "desiredModelUnits" => integer(),
        "foundationModelArn" => String.t(),
        "lastModifiedTime" => non_neg_integer(),
        "modelArn" => String.t(),
        "modelUnits" => integer(),
        "provisionedModelArn" => String.t(),
        "provisionedModelName" => String.t(),
        "status" => list(any())
      }

  """
  @type provisioned_model_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_provisioned_model_throughput_response() :: %{
        "commitmentDuration" => list(any()),
        "commitmentExpirationTime" => non_neg_integer(),
        "creationTime" => non_neg_integer(),
        "desiredModelArn" => String.t(),
        "desiredModelUnits" => integer(),
        "failureMessage" => String.t(),
        "foundationModelArn" => String.t(),
        "lastModifiedTime" => non_neg_integer(),
        "modelArn" => String.t(),
        "modelUnits" => integer(),
        "provisionedModelArn" => String.t(),
        "provisionedModelName" => String.t(),
        "status" => list(any())
      }

  """
  @type get_provisioned_model_throughput_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_foundation_model_request() :: %{}

  """
  @type get_foundation_model_request() :: %{}

  @typedoc """

  ## Example:

      stop_model_customization_job_response() :: %{}

  """
  @type stop_model_customization_job_response() :: %{}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => String.t()
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag() :: %{
        "key" => String.t(),
        "value" => String.t()
      }

  """
  @type tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_provisioned_model_throughput_request() :: %{}

  """
  @type delete_provisioned_model_throughput_request() :: %{}

  @typedoc """

  ## Example:

      create_provisioned_model_throughput_response() :: %{
        "provisionedModelArn" => String.t()
      }

  """
  @type create_provisioned_model_throughput_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => String.t()
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_config() :: %{
        "bucketName" => String.t(),
        "keyPrefix" => String.t()
      }

  """
  @type s3_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_custom_model_response() :: %{
        "baseModelArn" => String.t(),
        "creationTime" => non_neg_integer(),
        "customizationType" => list(any()),
        "hyperParameters" => map(),
        "jobArn" => String.t(),
        "jobName" => String.t(),
        "modelArn" => String.t(),
        "modelKmsKeyArn" => String.t(),
        "modelName" => String.t(),
        "outputDataConfig" => output_data_config(),
        "trainingDataConfig" => training_data_config(),
        "trainingMetrics" => training_metrics(),
        "validationDataConfig" => validation_data_config(),
        "validationMetrics" => list(validator_metric()())
      }

  """
  @type get_custom_model_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_provisioned_model_throughput_request() :: %{
        optional("desiredModelId") => String.t(),
        optional("desiredProvisionedModelName") => String.t()
      }

  """
  @type update_provisioned_model_throughput_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_provisioned_model_throughput_request() :: %{
        optional("clientRequestToken") => String.t(),
        optional("commitmentDuration") => list(any()),
        optional("tags") => list(tag()()),
        required("modelId") => String.t(),
        required("modelUnits") => integer(),
        required("provisionedModelName") => String.t()
      }

  """
  @type create_provisioned_model_throughput_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      vpc_config() :: %{
        "securityGroupIds" => list(String.t()()),
        "subnetIds" => list(String.t()())
      }

  """
  @type vpc_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "tags" => list(tag()())
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_model_invocation_logging_configuration_response() :: %{}

  """
  @type delete_model_invocation_logging_configuration_response() :: %{}

  @typedoc """

  ## Example:

      training_metrics() :: %{
        "trainingLoss" => float()
      }

  """
  @type training_metrics() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_custom_model_request() :: %{}

  """
  @type get_custom_model_request() :: %{}

  @typedoc """

  ## Example:

      get_model_customization_job_request() :: %{}

  """
  @type get_model_customization_job_request() :: %{}

  @typedoc """

  ## Example:

      get_model_invocation_logging_configuration_request() :: %{}

  """
  @type get_model_invocation_logging_configuration_request() :: %{}

  @typedoc """

  ## Example:

      list_foundation_models_request() :: %{
        optional("byCustomizationType") => list(any()),
        optional("byInferenceType") => list(any()),
        optional("byOutputModality") => list(any()),
        optional("byProvider") => String.t()
      }

  """
  @type list_foundation_models_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      foundation_model_lifecycle() :: %{
        "status" => list(any())
      }

  """
  @type foundation_model_lifecycle() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => String.t()
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_data_config() :: %{
        "validators" => list(validator()())
      }

  """
  @type validation_data_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_provisioned_model_throughput_response() :: %{}

  """
  @type update_provisioned_model_throughput_response() :: %{}

  @typedoc """

  ## Example:

      put_model_invocation_logging_configuration_request() :: %{
        required("loggingConfig") => logging_config()
      }

  """
  @type put_model_invocation_logging_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_model_customization_jobs_response() :: %{
        "modelCustomizationJobSummaries" => list(model_customization_job_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_model_customization_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_foundation_models_response() :: %{
        "modelSummaries" => list(foundation_model_summary()())
      }

  """
  @type list_foundation_models_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => String.t()
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_model_customization_job_request() :: %{
        optional("clientRequestToken") => String.t(),
        optional("customModelKmsKeyId") => String.t(),
        optional("customModelTags") => list(tag()()),
        optional("customizationType") => list(any()),
        optional("jobTags") => list(tag()()),
        optional("validationDataConfig") => validation_data_config(),
        optional("vpcConfig") => vpc_config(),
        required("baseModelIdentifier") => String.t(),
        required("customModelName") => String.t(),
        required("hyperParameters") => map(),
        required("jobName") => String.t(),
        required("outputDataConfig") => output_data_config(),
        required("roleArn") => String.t(),
        required("trainingDataConfig") => training_data_config()
      }

  """
  @type create_model_customization_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      validator_metric() :: %{
        "validationLoss" => float()
      }

  """
  @type validator_metric() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stop_model_customization_job_request() :: %{}

  """
  @type stop_model_customization_job_request() :: %{}

  @typedoc """

  ## Example:

      delete_custom_model_request() :: %{}

  """
  @type delete_custom_model_request() :: %{}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => String.t()
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{
        required("resourceARN") => String.t()
      }

  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => String.t()
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_model_customization_job_response() :: %{
        "baseModelArn" => String.t(),
        "clientRequestToken" => String.t(),
        "creationTime" => non_neg_integer(),
        "customizationType" => list(any()),
        "endTime" => non_neg_integer(),
        "failureMessage" => String.t(),
        "hyperParameters" => map(),
        "jobArn" => String.t(),
        "jobName" => String.t(),
        "lastModifiedTime" => non_neg_integer(),
        "outputDataConfig" => output_data_config(),
        "outputModelArn" => String.t(),
        "outputModelKmsKeyArn" => String.t(),
        "outputModelName" => String.t(),
        "roleArn" => String.t(),
        "status" => list(any()),
        "trainingDataConfig" => training_data_config(),
        "trainingMetrics" => training_metrics(),
        "validationDataConfig" => validation_data_config(),
        "validationMetrics" => list(validator_metric()()),
        "vpcConfig" => vpc_config()
      }

  """
  @type get_model_customization_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_custom_models_response() :: %{
        "modelSummaries" => list(custom_model_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_custom_models_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      output_data_config() :: %{
        "s3Uri" => String.t()
      }

  """
  @type output_data_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_model_invocation_logging_configuration_response() :: %{
        "loggingConfig" => logging_config()
      }

  """
  @type get_model_invocation_logging_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_model_invocation_logging_configuration_response() :: %{}

  """
  @type put_model_invocation_logging_configuration_response() :: %{}

  @typedoc """

  ## Example:

      validator() :: %{
        "s3Uri" => String.t()
      }

  """
  @type validator() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      training_data_config() :: %{
        "s3Uri" => String.t()
      }

  """
  @type training_data_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_model_invocation_logging_configuration_request() :: %{}

  """
  @type delete_model_invocation_logging_configuration_request() :: %{}

  @typedoc """

  ## Example:

      custom_model_summary() :: %{
        "baseModelArn" => String.t(),
        "baseModelName" => String.t(),
        "creationTime" => non_neg_integer(),
        "customizationType" => list(any()),
        "modelArn" => String.t(),
        "modelName" => String.t()
      }

  """
  @type custom_model_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_foundation_model_response() :: %{
        "modelDetails" => foundation_model_details()
      }

  """
  @type get_foundation_model_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_tags_exception() :: %{
        "message" => String.t(),
        "resourceName" => String.t()
      }

  """
  @type too_many_tags_exception() :: %{String.t() => any()}

  @type create_model_customization_job_errors() ::
          too_many_tags_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_provisioned_model_throughput_errors() ::
          too_many_tags_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type delete_custom_model_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_model_invocation_logging_configuration_errors() ::
          throttling_exception() | access_denied_exception() | internal_server_exception()

  @type delete_provisioned_model_throughput_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_custom_model_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_foundation_model_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_model_customization_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_model_invocation_logging_configuration_errors() ::
          throttling_exception() | access_denied_exception() | internal_server_exception()

  @type get_provisioned_model_throughput_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_custom_models_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_foundation_models_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_model_customization_jobs_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_provisioned_model_throughputs_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type put_model_invocation_logging_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type stop_model_customization_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type tag_resource_errors() ::
          too_many_tags_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_provisioned_model_throughput_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  def metadata do
    %{
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
  resource will be ready to use. Training data
  contains input and output text for each record in a JSONL format. Optionally,
  you can specify validation data
  in the same format as the training data. Amazon Bedrock returns validation loss
  metrics and output generations
  after the job completes.

  Model-customization jobs are asynchronous and the completion time depends on the
  base model and the training/validation data size.
  To monitor a job, use the `GetModelCustomizationJob` operation to retrieve the
  job status.

  For more information, see [Custom models](https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html)
  in the Bedrock User Guide.
  """
  @spec create_model_customization_job(map(), create_model_customization_job_request(), list()) ::
          {:ok, create_model_customization_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_model_customization_job_errors()}
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
  @spec create_provisioned_model_throughput(
          map(),
          create_provisioned_model_throughput_request(),
          list()
        ) ::
          {:ok, create_provisioned_model_throughput_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_provisioned_model_throughput_errors()}
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
  @spec delete_custom_model(map(), String.t(), delete_custom_model_request(), list()) ::
          {:ok, delete_custom_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_custom_model_errors()}
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
  @spec delete_model_invocation_logging_configuration(
          map(),
          delete_model_invocation_logging_configuration_request(),
          list()
        ) ::
          {:ok, delete_model_invocation_logging_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_model_invocation_logging_configuration_errors()}
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
  @spec delete_provisioned_model_throughput(
          map(),
          String.t(),
          delete_provisioned_model_throughput_request(),
          list()
        ) ::
          {:ok, delete_provisioned_model_throughput_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_provisioned_model_throughput_errors()}
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
  Get the properties associated with a Amazon Bedrock custom model that you have
  created.For more information, see [Custom models](https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html)
  in the Bedrock User Guide.
  """
  @spec get_custom_model(map(), String.t(), list()) ::
          {:ok, get_custom_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_custom_model_errors()}
  def get_custom_model(%Client{} = client, model_identifier, options \\ []) do
    url_path = "/custom-models/#{AWS.Util.encode_uri(model_identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get details about a Amazon Bedrock foundation model.
  """
  @spec get_foundation_model(map(), String.t(), list()) ::
          {:ok, get_foundation_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_foundation_model_errors()}
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
  @spec get_model_customization_job(map(), String.t(), list()) ::
          {:ok, get_model_customization_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_model_customization_job_errors()}
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
  @spec get_model_invocation_logging_configuration(map(), list()) ::
          {:ok, get_model_invocation_logging_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_model_invocation_logging_configuration_errors()}
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
  @spec get_provisioned_model_throughput(map(), String.t(), list()) ::
          {:ok, get_provisioned_model_throughput_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_provisioned_model_throughput_errors()}
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
  @spec list_custom_models(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_custom_models_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_custom_models_errors()}
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
  List of Amazon Bedrock foundation models that you can use.

  For more information, see [Foundation models](https://docs.aws.amazon.com/bedrock/latest/userguide/foundation-models.html)
  in the Bedrock User Guide.
  """
  @spec list_foundation_models(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_foundation_models_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_foundation_models_errors()}
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

  You can filter the jobs to return based on
  one or more criteria.

  For more information, see [Custom models](https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html)
  in the Bedrock User Guide.
  """
  @spec list_model_customization_jobs(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_model_customization_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_model_customization_jobs_errors()}
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
  @spec list_provisioned_model_throughputs(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_provisioned_model_throughputs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_provisioned_model_throughputs_errors()}
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
  @spec list_tags_for_resource(map(), list_tags_for_resource_request(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
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
  @spec put_model_invocation_logging_configuration(
          map(),
          put_model_invocation_logging_configuration_request(),
          list()
        ) ::
          {:ok, put_model_invocation_logging_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_model_invocation_logging_configuration_errors()}
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
  @spec stop_model_customization_job(
          map(),
          String.t(),
          stop_model_customization_job_request(),
          list()
        ) ::
          {:ok, stop_model_customization_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_model_customization_job_errors()}
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
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
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
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
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
  @spec update_provisioned_model_throughput(
          map(),
          String.t(),
          update_provisioned_model_throughput_request(),
          list()
        ) ::
          {:ok, update_provisioned_model_throughput_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_provisioned_model_throughput_errors()}
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
