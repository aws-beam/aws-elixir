# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CleanRoomsML do
  @moduledoc """
  Welcome to the *Amazon Web Services Clean Rooms ML API Reference*.

  Amazon Web Services Clean Rooms ML provides a privacy-enhancing method for two
  parties to identify similar users in their data without the need to share their
  data with each other. The first party brings the training data to Clean Rooms so
  that they can create and configure an audience model (lookalike model) and
  associate it with a collaboration. The second party then brings their seed data
  to Clean Rooms and generates an audience (lookalike segment) that resembles the
  training data.

  To learn more about Amazon Web Services Clean Rooms ML concepts, procedures, and
  best practices, see the
  [Clean Rooms User Guide](https://docs.aws.amazon.com/clean-rooms/latest/userguide/machine-learning.html).

  To learn more about SQL commands, functions, and conditions supported in Clean
  Rooms, see the
  [Clean Rooms SQL Reference](https://docs.aws.amazon.com/clean-rooms/latest/sql-reference/sql-reference.html).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      update_configured_audience_model_response() :: %{
        "configuredAudienceModelArn" => String.t()
      }

  """
  @type update_configured_audience_model_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_trained_model_inference_jobs_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("trainedModelArn") => String.t()
      }

  """
  @type list_trained_model_inference_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      trained_model_summary() :: %{
        "collaborationIdentifier" => String.t(),
        "configuredModelAlgorithmAssociationArn" => String.t(),
        "createTime" => [non_neg_integer()],
        "description" => String.t(),
        "membershipIdentifier" => String.t(),
        "name" => String.t(),
        "status" => list(any()),
        "trainedModelArn" => String.t(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type trained_model_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_trained_model_inference_job_response() :: %{
        "trainedModelInferenceJobArn" => String.t()
      }

  """
  @type start_trained_model_inference_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_configured_model_algorithm_associations_response() :: %{
        "configuredModelAlgorithmAssociations" => list(configured_model_algorithm_association_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_configured_model_algorithm_associations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_audience_model_response() :: %{
        "audienceModelArn" => String.t()
      }

  """
  @type create_audience_model_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      audience_quality_metrics() :: %{
        "recallMetric" => [float()],
        "relevanceMetrics" => list(relevance_metric()())
      }

  """
  @type audience_quality_metrics() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_audience_generation_job_response() :: %{
        "audienceGenerationJobArn" => String.t()
      }

  """
  @type start_audience_generation_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      trained_model_exports_max_size() :: %{
        "unit" => list(any()),
        "value" => float()
      }

  """
  @type trained_model_exports_max_size() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_configured_model_algorithm_association_response() :: %{
        "collaborationIdentifier" => String.t(),
        "configuredModelAlgorithmArn" => String.t(),
        "configuredModelAlgorithmAssociationArn" => String.t(),
        "createTime" => [non_neg_integer()],
        "description" => String.t(),
        "membershipIdentifier" => String.t(),
        "name" => String.t(),
        "privacyConfiguration" => privacy_configuration(),
        "tags" => map(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type get_configured_model_algorithm_association_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_audience_generation_job_response() :: %{
        "audienceGenerationJobArn" => String.t(),
        "collaborationId" => String.t(),
        "configuredAudienceModelArn" => String.t(),
        "createTime" => [non_neg_integer()],
        "description" => String.t(),
        "includeSeedInOutput" => [boolean()],
        "metrics" => audience_quality_metrics(),
        "name" => String.t(),
        "protectedQueryIdentifier" => [String.t()],
        "seedAudience" => audience_generation_job_data_source(),
        "startedBy" => String.t(),
        "status" => list(any()),
        "statusDetails" => status_details(),
        "tags" => map(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type get_audience_generation_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_configured_model_algorithms_response() :: %{
        "configuredModelAlgorithms" => list(configured_model_algorithm_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_configured_model_algorithms_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_ml_input_channel_request() :: %{
        optional("description") => String.t(),
        optional("kmsKeyArn") => String.t(),
        optional("tags") => map(),
        required("configuredModelAlgorithmAssociations") => list(String.t()()),
        required("inputChannel") => input_channel(),
        required("name") => String.t(),
        required("retentionInDays") => [integer()]
      }

  """
  @type create_ml_input_channel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_trained_model_request() :: %{}

  """
  @type get_trained_model_request() :: %{}

  @typedoc """

  ## Example:

      get_training_dataset_response() :: %{
        "createTime" => [non_neg_integer()],
        "description" => String.t(),
        "name" => String.t(),
        "roleArn" => String.t(),
        "status" => list(any()),
        "tags" => map(),
        "trainingData" => list(dataset()()),
        "trainingDatasetArn" => String.t(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type get_training_dataset_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      trained_models_configuration_policy() :: %{
        "containerLogs" => list(logs_configuration_policy()()),
        "containerMetrics" => metrics_configuration_policy()
      }

  """
  @type trained_models_configuration_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      trained_model_inference_job_summary() :: %{
        "collaborationIdentifier" => String.t(),
        "configuredModelAlgorithmAssociationArn" => String.t(),
        "createTime" => [non_neg_integer()],
        "description" => String.t(),
        "logsStatus" => list(any()),
        "logsStatusDetails" => [String.t()],
        "membershipIdentifier" => String.t(),
        "metricsStatus" => list(any()),
        "metricsStatusDetails" => [String.t()],
        "name" => String.t(),
        "outputConfiguration" => inference_output_configuration(),
        "status" => list(any()),
        "trainedModelArn" => String.t(),
        "trainedModelInferenceJobArn" => String.t(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type trained_model_inference_job_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_configured_audience_model_response() :: %{
        "configuredAudienceModelArn" => String.t()
      }

  """
  @type create_configured_audience_model_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      trained_model_export_receiver_member() :: %{
        "accountId" => String.t()
      }

  """
  @type trained_model_export_receiver_member() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      inference_output_configuration() :: %{
        "accept" => [String.t()],
        "members" => list(inference_receiver_member()())
      }

  """
  @type inference_output_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      protected_query_input_parameters() :: %{
        "computeConfiguration" => list(),
        "sqlParameters" => protected_query_s_q_l_parameters()
      }

  """
  @type protected_query_input_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_configured_audience_models_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_configured_audience_models_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_training_datasets_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_training_datasets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_configured_model_algorithm_association_request() :: %{}

  """
  @type get_configured_model_algorithm_association_request() :: %{}

  @typedoc """

  ## Example:

      create_configured_model_algorithm_association_request() :: %{
        optional("description") => String.t(),
        optional("privacyConfiguration") => privacy_configuration(),
        optional("tags") => map(),
        required("configuredModelAlgorithmArn") => String.t(),
        required("name") => String.t()
      }

  """
  @type create_configured_model_algorithm_association_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_ml_configuration_request() :: %{
        required("defaultOutputLocation") => ml_output_configuration()
      }

  """
  @type put_ml_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_training_dataset_request() :: %{}

  """
  @type get_training_dataset_request() :: %{}

  @typedoc """

  ## Example:

      get_ml_input_channel_response() :: %{
        "collaborationIdentifier" => String.t(),
        "configuredModelAlgorithmAssociations" => list(String.t()()),
        "createTime" => [non_neg_integer()],
        "description" => String.t(),
        "inputChannel" => input_channel(),
        "kmsKeyArn" => String.t(),
        "membershipIdentifier" => String.t(),
        "mlInputChannelArn" => String.t(),
        "name" => String.t(),
        "numberOfFiles" => [float()],
        "numberOfRecords" => [float()],
        "protectedQueryIdentifier" => String.t(),
        "retentionInDays" => [integer()],
        "sizeInGb" => [float()],
        "status" => list(any()),
        "statusDetails" => status_details(),
        "tags" => map(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type get_ml_input_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_ml_configuration_request() :: %{}

  """
  @type get_ml_configuration_request() :: %{}

  @typedoc """

  ## Example:

      list_ml_input_channels_response() :: %{
        "mlInputChannelsList" => list(ml_input_channel_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_ml_input_channels_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      relevance_metric() :: %{
        "audienceSize" => audience_size(),
        "score" => [float()]
      }

  """
  @type relevance_metric() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_collaboration_trained_model_response() :: %{
        "collaborationIdentifier" => String.t(),
        "configuredModelAlgorithmAssociationArn" => String.t(),
        "createTime" => [non_neg_integer()],
        "creatorAccountId" => String.t(),
        "description" => String.t(),
        "logsStatus" => list(any()),
        "logsStatusDetails" => [String.t()],
        "membershipIdentifier" => String.t(),
        "metricsStatus" => list(any()),
        "metricsStatusDetails" => [String.t()],
        "name" => String.t(),
        "resourceConfig" => resource_config(),
        "status" => list(any()),
        "statusDetails" => status_details(),
        "stoppingCondition" => stopping_condition(),
        "trainedModelArn" => String.t(),
        "trainingContainerImageDigest" => [String.t()],
        "updateTime" => [non_neg_integer()]
      }

  """
  @type get_collaboration_trained_model_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_configured_audience_model_request() :: %{
        optional("audienceSizeConfig") => audience_size_config(),
        optional("childResourceTagOnCreatePolicy") => list(any()),
        optional("description") => String.t(),
        optional("minMatchingSeedSize") => integer(),
        optional("tags") => map(),
        required("audienceModelArn") => String.t(),
        required("name") => String.t(),
        required("outputConfig") => configured_audience_model_output_config(),
        required("sharedAudienceMetrics") => list(list(any())())
      }

  """
  @type create_configured_audience_model_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      collaboration_ml_input_channel_summary() :: %{
        "collaborationIdentifier" => String.t(),
        "configuredModelAlgorithmAssociations" => list(String.t()()),
        "createTime" => [non_neg_integer()],
        "creatorAccountId" => String.t(),
        "description" => String.t(),
        "membershipIdentifier" => String.t(),
        "mlInputChannelArn" => String.t(),
        "name" => String.t(),
        "status" => list(any()),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type collaboration_ml_input_channel_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ml_input_channel_summary() :: %{
        "collaborationIdentifier" => String.t(),
        "configuredModelAlgorithmAssociations" => list(String.t()()),
        "createTime" => [non_neg_integer()],
        "description" => String.t(),
        "membershipIdentifier" => String.t(),
        "mlInputChannelArn" => String.t(),
        "name" => String.t(),
        "protectedQueryIdentifier" => String.t(),
        "status" => list(any()),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type ml_input_channel_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_configured_model_algorithm_association_response() :: %{
        "configuredModelAlgorithmAssociationArn" => String.t()
      }

  """
  @type create_configured_model_algorithm_association_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      metric_definition() :: %{
        "name" => String.t(),
        "regex" => String.t()
      }

  """
  @type metric_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_configured_audience_model_request() :: %{}

  """
  @type delete_configured_audience_model_request() :: %{}

  @typedoc """

  ## Example:

      get_ml_input_channel_request() :: %{}

  """
  @type get_ml_input_channel_request() :: %{}

  @typedoc """

  ## Example:

      list_collaboration_trained_model_export_jobs_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_collaboration_trained_model_export_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_collaboration_configured_model_algorithm_associations_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_collaboration_configured_model_algorithm_associations_request() :: %{
          String.t() => any()
        }

  @typedoc """

  ## Example:

      get_trained_model_response() :: %{
        "collaborationIdentifier" => String.t(),
        "configuredModelAlgorithmAssociationArn" => String.t(),
        "createTime" => [non_neg_integer()],
        "dataChannels" => list(model_training_data_channel()()),
        "description" => String.t(),
        "environment" => map(),
        "hyperparameters" => map(),
        "kmsKeyArn" => String.t(),
        "logsStatus" => list(any()),
        "logsStatusDetails" => [String.t()],
        "membershipIdentifier" => String.t(),
        "metricsStatus" => list(any()),
        "metricsStatusDetails" => [String.t()],
        "name" => String.t(),
        "resourceConfig" => resource_config(),
        "status" => list(any()),
        "statusDetails" => status_details(),
        "stoppingCondition" => stopping_condition(),
        "tags" => map(),
        "trainedModelArn" => String.t(),
        "trainingContainerImageDigest" => [String.t()],
        "updateTime" => [non_neg_integer()]
      }

  """
  @type get_trained_model_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t()())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      collaboration_trained_model_export_job_summary() :: %{
        "collaborationIdentifier" => String.t(),
        "createTime" => [non_neg_integer()],
        "creatorAccountId" => String.t(),
        "description" => String.t(),
        "membershipIdentifier" => String.t(),
        "name" => String.t(),
        "outputConfiguration" => trained_model_export_output_configuration(),
        "status" => list(any()),
        "statusDetails" => status_details(),
        "trainedModelArn" => String.t(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type collaboration_trained_model_export_job_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      status_details() :: %{
        "message" => [String.t()],
        "statusCode" => [String.t()]
      }

  """
  @type status_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_audience_export_job_request() :: %{
        optional("description") => String.t(),
        required("audienceGenerationJobArn") => String.t(),
        required("audienceSize") => audience_size(),
        required("name") => String.t()
      }

  """
  @type start_audience_export_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_training_dataset_request() :: %{}

  """
  @type delete_training_dataset_request() :: %{}

  @typedoc """

  ## Example:

      list_ml_input_channels_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_ml_input_channels_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_configured_model_algorithm_request() :: %{
        optional("description") => String.t(),
        optional("inferenceContainerConfig") => inference_container_config(),
        optional("kmsKeyArn") => String.t(),
        optional("tags") => map(),
        optional("trainingContainerConfig") => container_config(),
        required("name") => String.t(),
        required("roleArn") => String.t()
      }

  """
  @type create_configured_model_algorithm_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_audience_models_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_audience_models_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_collaboration_ml_input_channels_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_collaboration_ml_input_channels_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dataset() :: %{
        "inputConfig" => dataset_input_config(),
        "type" => list(any())
      }

  """
  @type dataset() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      metrics_configuration_policy() :: %{
        "noiseLevel" => list(any())
      }

  """
  @type metrics_configuration_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      audience_size() :: %{
        "type" => list(any()),
        "value" => integer()
      }

  """
  @type audience_size() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_audience_generation_job_request() :: %{
        optional("collaborationId") => String.t(),
        optional("description") => String.t(),
        optional("includeSeedInOutput") => [boolean()],
        optional("tags") => map(),
        required("configuredAudienceModelArn") => String.t(),
        required("name") => String.t(),
        required("seedAudience") => audience_generation_job_data_source()
      }

  """
  @type start_audience_generation_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      model_training_data_channel() :: %{
        "channelName" => String.t(),
        "mlInputChannelArn" => String.t()
      }

  """
  @type model_training_data_channel() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      audience_generation_job_summary() :: %{
        "audienceGenerationJobArn" => String.t(),
        "collaborationId" => String.t(),
        "configuredAudienceModelArn" => String.t(),
        "createTime" => [non_neg_integer()],
        "description" => String.t(),
        "name" => String.t(),
        "startedBy" => String.t(),
        "status" => list(any()),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type audience_generation_job_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      trained_model_inference_jobs_configuration_policy() :: %{
        "containerLogs" => list(logs_configuration_policy()()),
        "maxOutputSize" => trained_model_inference_max_output_size()
      }

  """
  @type trained_model_inference_jobs_configuration_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      container_config() :: %{
        "arguments" => list(String.t()()),
        "entrypoint" => list(String.t()()),
        "imageUri" => String.t(),
        "metricDefinitions" => list(metric_definition()())
      }

  """
  @type container_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_audience_model_request() :: %{}

  """
  @type get_audience_model_request() :: %{}

  @typedoc """

  ## Example:

      list_trained_model_inference_jobs_response() :: %{
        "nextToken" => String.t(),
        "trainedModelInferenceJobs" => list(trained_model_inference_job_summary()())
      }

  """
  @type list_trained_model_inference_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      configured_audience_model_output_config() :: %{
        "destination" => audience_destination(),
        "roleArn" => String.t()
      }

  """
  @type configured_audience_model_output_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_collaboration_configured_model_algorithm_association_request() :: %{}

  """
  @type get_collaboration_configured_model_algorithm_association_request() :: %{}

  @typedoc """

  ## Example:

      configured_model_algorithm_summary() :: %{
        "configuredModelAlgorithmArn" => String.t(),
        "createTime" => [non_neg_integer()],
        "description" => String.t(),
        "name" => String.t(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type configured_model_algorithm_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      trained_model_inference_max_output_size() :: %{
        "unit" => list(any()),
        "value" => float()
      }

  """
  @type trained_model_inference_max_output_size() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_collaboration_trained_model_request() :: %{}

  """
  @type get_collaboration_trained_model_request() :: %{}

  @typedoc """

  ## Example:

      inference_resource_config() :: %{
        "instanceCount" => [integer()],
        "instanceType" => list(any())
      }

  """
  @type inference_resource_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_configured_audience_model_response() :: %{
        "audienceModelArn" => String.t(),
        "audienceSizeConfig" => audience_size_config(),
        "childResourceTagOnCreatePolicy" => list(any()),
        "configuredAudienceModelArn" => String.t(),
        "createTime" => [non_neg_integer()],
        "description" => String.t(),
        "minMatchingSeedSize" => integer(),
        "name" => String.t(),
        "outputConfig" => configured_audience_model_output_config(),
        "sharedAudienceMetrics" => list(list(any())()),
        "status" => list(any()),
        "tags" => map(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type get_configured_audience_model_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      audience_model_summary() :: %{
        "audienceModelArn" => String.t(),
        "createTime" => [non_neg_integer()],
        "description" => String.t(),
        "name" => String.t(),
        "status" => list(any()),
        "trainingDatasetArn" => String.t(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type audience_model_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ml_output_configuration() :: %{
        "destination" => destination(),
        "roleArn" => String.t()
      }

  """
  @type ml_output_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_audience_generation_job_request() :: %{}

  """
  @type delete_audience_generation_job_request() :: %{}

  @typedoc """

  ## Example:

      get_ml_configuration_response() :: %{
        "createTime" => [non_neg_integer()],
        "defaultOutputLocation" => ml_output_configuration(),
        "membershipIdentifier" => String.t(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type get_ml_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stopping_condition() :: %{
        "maxRuntimeInSeconds" => [integer()]
      }

  """
  @type stopping_condition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_collaboration_trained_model_export_jobs_response() :: %{
        "collaborationTrainedModelExportJobs" => list(collaboration_trained_model_export_job_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_collaboration_trained_model_export_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_trained_model_request() :: %{
        optional("description") => String.t(),
        optional("environment") => map(),
        optional("hyperparameters") => map(),
        optional("kmsKeyArn") => String.t(),
        optional("stoppingCondition") => stopping_condition(),
        optional("tags") => map(),
        required("configuredModelAlgorithmAssociationArn") => String.t(),
        required("dataChannels") => list(model_training_data_channel()()),
        required("name") => String.t(),
        required("resourceConfig") => resource_config()
      }

  """
  @type create_trained_model_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_training_datasets_response() :: %{
        "nextToken" => String.t(),
        "trainingDatasets" => list(training_dataset_summary()())
      }

  """
  @type list_training_datasets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      collaboration_trained_model_summary() :: %{
        "collaborationIdentifier" => String.t(),
        "configuredModelAlgorithmAssociationArn" => String.t(),
        "createTime" => [non_neg_integer()],
        "creatorAccountId" => String.t(),
        "description" => String.t(),
        "membershipIdentifier" => String.t(),
        "name" => String.t(),
        "status" => list(any()),
        "trainedModelArn" => String.t(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type collaboration_trained_model_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      inference_container_config() :: %{
        "imageUri" => String.t()
      }

  """
  @type inference_container_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_configured_model_algorithms_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_configured_model_algorithms_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      configured_model_algorithm_association_summary() :: %{
        "collaborationIdentifier" => String.t(),
        "configuredModelAlgorithmArn" => String.t(),
        "configuredModelAlgorithmAssociationArn" => String.t(),
        "createTime" => [non_neg_integer()],
        "description" => String.t(),
        "membershipIdentifier" => String.t(),
        "name" => String.t(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type configured_model_algorithm_association_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      audience_export_job_summary() :: %{
        "audienceGenerationJobArn" => String.t(),
        "audienceSize" => audience_size(),
        "createTime" => [non_neg_integer()],
        "description" => String.t(),
        "name" => String.t(),
        "outputLocation" => String.t(),
        "status" => list(any()),
        "statusDetails" => status_details(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type audience_export_job_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_audience_model_request() :: %{}

  """
  @type delete_audience_model_request() :: %{}

  @typedoc """

  ## Example:

      trained_model_exports_configuration_policy() :: %{
        "filesToExport" => list(list(any())()),
        "maxSize" => trained_model_exports_max_size()
      }

  """
  @type trained_model_exports_configuration_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_configured_model_algorithm_associations_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_configured_model_algorithm_associations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_training_dataset_response() :: %{
        "trainingDatasetArn" => String.t()
      }

  """
  @type create_training_dataset_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_audience_model_request() :: %{
        optional("description") => String.t(),
        optional("kmsKeyArn") => String.t(),
        optional("tags") => map(),
        optional("trainingDataEndTime") => [non_neg_integer()],
        optional("trainingDataStartTime") => [non_neg_integer()],
        required("name") => String.t(),
        required("trainingDatasetArn") => String.t()
      }

  """
  @type create_audience_model_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      privacy_configuration() :: %{
        "policies" => privacy_configuration_policies()
      }

  """
  @type privacy_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_trained_model_inference_job_request() :: %{
        optional("configuredModelAlgorithmAssociationArn") => String.t(),
        optional("containerExecutionParameters") => inference_container_execution_parameters(),
        optional("description") => String.t(),
        optional("environment") => map(),
        optional("kmsKeyArn") => String.t(),
        optional("tags") => map(),
        required("dataSource") => model_inference_data_source(),
        required("name") => String.t(),
        required("outputConfiguration") => inference_output_configuration(),
        required("resourceConfig") => inference_resource_config(),
        required("trainedModelArn") => String.t()
      }

  """
  @type start_trained_model_inference_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      inference_receiver_member() :: %{
        "accountId" => String.t()
      }

  """
  @type inference_receiver_member() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      collaboration_configured_model_algorithm_association_summary() :: %{
        "collaborationIdentifier" => String.t(),
        "configuredModelAlgorithmArn" => String.t(),
        "configuredModelAlgorithmAssociationArn" => String.t(),
        "createTime" => [non_neg_integer()],
        "creatorAccountId" => String.t(),
        "description" => String.t(),
        "membershipIdentifier" => String.t(),
        "name" => String.t(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type collaboration_configured_model_algorithm_association_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_ml_input_channel_response() :: %{
        "mlInputChannelArn" => String.t()
      }

  """
  @type create_ml_input_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_trained_model_inference_job_request() :: %{}

  """
  @type get_trained_model_inference_job_request() :: %{}

  @typedoc """

  ## Example:

      list_configured_audience_models_response() :: %{
        "configuredAudienceModels" => list(configured_audience_model_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_configured_audience_models_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_config() :: %{
        "instanceCount" => [integer()],
        "instanceType" => list(any()),
        "volumeSizeInGB" => [integer()]
      }

  """
  @type resource_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_collaboration_configured_model_algorithm_association_response() :: %{
        "collaborationIdentifier" => String.t(),
        "configuredModelAlgorithmArn" => String.t(),
        "configuredModelAlgorithmAssociationArn" => String.t(),
        "createTime" => [non_neg_integer()],
        "creatorAccountId" => String.t(),
        "description" => String.t(),
        "membershipIdentifier" => String.t(),
        "name" => String.t(),
        "privacyConfiguration" => privacy_configuration(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type get_collaboration_configured_model_algorithm_association_response() :: %{
          String.t() => any()
        }

  @typedoc """

  ## Example:

      s3_config_map() :: %{
        "s3Uri" => String.t()
      }

  """
  @type s3_config_map() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_audience_export_jobs_response() :: %{
        "audienceExportJobs" => list(audience_export_job_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_audience_export_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_ml_input_channel_data_request() :: %{}

  """
  @type delete_ml_input_channel_data_request() :: %{}

  @typedoc """

  ## Example:

      list_trained_models_response() :: %{
        "nextToken" => String.t(),
        "trainedModels" => list(trained_model_summary()())
      }

  """
  @type list_trained_models_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      logs_configuration_policy() :: %{
        "allowedAccountIds" => list([String.t()]()),
        "filterPattern" => [String.t()]
      }

  """
  @type logs_configuration_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_trained_model_response() :: %{
        "trainedModelArn" => String.t()
      }

  """
  @type create_trained_model_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_trained_model_export_job_request() :: %{
        optional("description") => String.t(),
        required("name") => String.t(),
        required("outputConfiguration") => trained_model_export_output_configuration()
      }

  """
  @type start_trained_model_export_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      worker_compute_configuration() :: %{
        "number" => [integer()],
        "type" => list(any())
      }

  """
  @type worker_compute_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_configured_audience_model_request() :: %{}

  """
  @type get_configured_audience_model_request() :: %{}

  @typedoc """

  ## Example:

      input_channel() :: %{
        "dataSource" => list(),
        "roleArn" => String.t()
      }

  """
  @type input_channel() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cancel_trained_model_inference_job_request() :: %{}

  """
  @type cancel_trained_model_inference_job_request() :: %{}

  @typedoc """

  ## Example:

      cancel_trained_model_request() :: %{}

  """
  @type cancel_trained_model_request() :: %{}

  @typedoc """

  ## Example:

      list_collaboration_trained_models_response() :: %{
        "collaborationTrainedModels" => list(collaboration_trained_model_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_collaboration_trained_models_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      configured_audience_model_summary() :: %{
        "audienceModelArn" => String.t(),
        "configuredAudienceModelArn" => String.t(),
        "createTime" => [non_neg_integer()],
        "description" => String.t(),
        "name" => String.t(),
        "outputConfig" => configured_audience_model_output_config(),
        "status" => list(any()),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type configured_audience_model_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_collaboration_trained_models_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_collaboration_trained_models_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      destination() :: %{
        "s3Destination" => s3_config_map()
      }

  """
  @type destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_configured_audience_model_policy_response() :: %{
        "configuredAudienceModelArn" => String.t(),
        "configuredAudienceModelPolicy" => String.t(),
        "policyHash" => String.t()
      }

  """
  @type get_configured_audience_model_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_collaboration_ml_input_channels_response() :: %{
        "collaborationMLInputChannelsList" => list(collaboration_ml_input_channel_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_collaboration_ml_input_channels_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      privacy_configuration_policies() :: %{
        "trainedModelExports" => trained_model_exports_configuration_policy(),
        "trainedModelInferenceJobs" => trained_model_inference_jobs_configuration_policy(),
        "trainedModels" => trained_models_configuration_policy()
      }

  """
  @type privacy_configuration_policies() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      glue_data_source() :: %{
        "catalogId" => String.t(),
        "databaseName" => String.t(),
        "tableName" => String.t()
      }

  """
  @type glue_data_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      protected_query_s_q_l_parameters() :: %{
        "analysisTemplateArn" => String.t(),
        "parameters" => map(),
        "queryString" => [String.t()]
      }

  """
  @type protected_query_s_q_l_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      collaboration_trained_model_inference_job_summary() :: %{
        "collaborationIdentifier" => String.t(),
        "configuredModelAlgorithmAssociationArn" => String.t(),
        "createTime" => [non_neg_integer()],
        "creatorAccountId" => String.t(),
        "description" => String.t(),
        "logsStatus" => list(any()),
        "logsStatusDetails" => [String.t()],
        "membershipIdentifier" => String.t(),
        "metricsStatus" => list(any()),
        "metricsStatusDetails" => [String.t()],
        "name" => String.t(),
        "outputConfiguration" => inference_output_configuration(),
        "status" => list(any()),
        "trainedModelArn" => String.t(),
        "trainedModelInferenceJobArn" => String.t(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type collaboration_trained_model_inference_job_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_ml_configuration_request() :: %{}

  """
  @type delete_ml_configuration_request() :: %{}

  @typedoc """

  ## Example:

      put_configured_audience_model_policy_response() :: %{
        "configuredAudienceModelPolicy" => String.t(),
        "policyHash" => String.t()
      }

  """
  @type put_configured_audience_model_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_collaboration_ml_input_channel_response() :: %{
        "collaborationIdentifier" => String.t(),
        "configuredModelAlgorithmAssociations" => list(String.t()()),
        "createTime" => [non_neg_integer()],
        "creatorAccountId" => String.t(),
        "description" => String.t(),
        "membershipIdentifier" => String.t(),
        "mlInputChannelArn" => String.t(),
        "name" => String.t(),
        "numberOfRecords" => [float()],
        "retentionInDays" => [integer()],
        "status" => list(any()),
        "statusDetails" => status_details(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type get_collaboration_ml_input_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_configured_model_algorithm_request() :: %{}

  """
  @type get_configured_model_algorithm_request() :: %{}

  @typedoc """

  ## Example:

      model_inference_data_source() :: %{
        "mlInputChannelArn" => String.t()
      }

  """
  @type model_inference_data_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_training_dataset_request() :: %{
        optional("description") => String.t(),
        optional("tags") => map(),
        required("name") => String.t(),
        required("roleArn") => String.t(),
        required("trainingData") => list(dataset()())
      }

  """
  @type create_training_dataset_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_configured_model_algorithm_association_request() :: %{}

  """
  @type delete_configured_model_algorithm_association_request() :: %{}

  @typedoc """

  ## Example:

      training_dataset_summary() :: %{
        "createTime" => [non_neg_integer()],
        "description" => String.t(),
        "name" => String.t(),
        "status" => list(any()),
        "trainingDatasetArn" => String.t(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type training_dataset_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      column_schema() :: %{
        "columnName" => String.t(),
        "columnTypes" => list(list(any())())
      }

  """
  @type column_schema() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_collaboration_trained_model_inference_jobs_response() :: %{
        "collaborationTrainedModelInferenceJobs" => list(collaboration_trained_model_inference_job_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_collaboration_trained_model_inference_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_audience_model_response() :: %{
        "audienceModelArn" => String.t(),
        "createTime" => [non_neg_integer()],
        "description" => String.t(),
        "kmsKeyArn" => String.t(),
        "name" => String.t(),
        "status" => list(any()),
        "statusDetails" => status_details(),
        "tags" => map(),
        "trainingDataEndTime" => [non_neg_integer()],
        "trainingDataStartTime" => [non_neg_integer()],
        "trainingDatasetArn" => String.t(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type get_audience_model_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_configured_model_algorithm_request() :: %{}

  """
  @type delete_configured_model_algorithm_request() :: %{}

  @typedoc """

  ## Example:

      dataset_input_config() :: %{
        "dataSource" => data_source(),
        "schema" => list(column_schema()())
      }

  """
  @type dataset_input_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_configured_model_algorithm_response() :: %{
        "configuredModelAlgorithmArn" => String.t()
      }

  """
  @type create_configured_model_algorithm_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_configured_audience_model_policy_request() :: %{
        optional("policyExistenceCondition") => list(any()),
        optional("previousPolicyHash") => String.t(),
        required("configuredAudienceModelPolicy") => String.t()
      }

  """
  @type put_configured_audience_model_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_source() :: %{
        "glueDataSource" => glue_data_source()
      }

  """
  @type data_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      audience_size_config() :: %{
        "audienceSizeBins" => list(integer()()),
        "audienceSizeType" => list(any())
      }

  """
  @type audience_size_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      audience_destination() :: %{
        "s3Destination" => s3_config_map()
      }

  """
  @type audience_destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_trained_model_inference_job_response() :: %{
        "configuredModelAlgorithmAssociationArn" => String.t(),
        "containerExecutionParameters" => inference_container_execution_parameters(),
        "createTime" => [non_neg_integer()],
        "dataSource" => model_inference_data_source(),
        "description" => String.t(),
        "environment" => map(),
        "inferenceContainerImageDigest" => [String.t()],
        "kmsKeyArn" => String.t(),
        "logsStatus" => list(any()),
        "logsStatusDetails" => [String.t()],
        "membershipIdentifier" => String.t(),
        "metricsStatus" => list(any()),
        "metricsStatusDetails" => [String.t()],
        "name" => String.t(),
        "outputConfiguration" => inference_output_configuration(),
        "resourceConfig" => inference_resource_config(),
        "status" => list(any()),
        "statusDetails" => status_details(),
        "tags" => map(),
        "trainedModelArn" => String.t(),
        "trainedModelInferenceJobArn" => String.t(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type get_trained_model_inference_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      inference_container_execution_parameters() :: %{
        "maxPayloadInMB" => [integer()]
      }

  """
  @type inference_container_execution_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      audience_generation_job_data_source() :: %{
        "dataSource" => s3_config_map(),
        "roleArn" => String.t(),
        "sqlParameters" => protected_query_s_q_l_parameters()
      }

  """
  @type audience_generation_job_data_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_audience_generation_jobs_request() :: %{
        optional("collaborationId") => String.t(),
        optional("configuredAudienceModelArn") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_audience_generation_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_collaboration_configured_model_algorithm_associations_response() :: %{
        "collaborationConfiguredModelAlgorithmAssociations" => list(collaboration_configured_model_algorithm_association_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_collaboration_configured_model_algorithm_associations_response() :: %{
          String.t() => any()
        }

  @typedoc """

  ## Example:

      get_configured_model_algorithm_response() :: %{
        "configuredModelAlgorithmArn" => String.t(),
        "createTime" => [non_neg_integer()],
        "description" => String.t(),
        "inferenceContainerConfig" => inference_container_config(),
        "kmsKeyArn" => String.t(),
        "name" => String.t(),
        "roleArn" => String.t(),
        "tags" => map(),
        "trainingContainerConfig" => container_config(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type get_configured_model_algorithm_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      trained_model_export_output_configuration() :: %{
        "members" => list(trained_model_export_receiver_member()())
      }

  """
  @type trained_model_export_output_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_audience_generation_jobs_response() :: %{
        "audienceGenerationJobs" => list(audience_generation_job_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_audience_generation_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_audience_models_response() :: %{
        "audienceModels" => list(audience_model_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_audience_models_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_audience_export_jobs_request() :: %{
        optional("audienceGenerationJobArn") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_audience_export_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_configured_audience_model_policy_request() :: %{}

  """
  @type delete_configured_audience_model_policy_request() :: %{}

  @typedoc """

  ## Example:

      get_collaboration_ml_input_channel_request() :: %{}

  """
  @type get_collaboration_ml_input_channel_request() :: %{}

  @typedoc """

  ## Example:

      list_trained_models_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_trained_models_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_configured_audience_model_policy_request() :: %{}

  """
  @type get_configured_audience_model_policy_request() :: %{}

  @typedoc """

  ## Example:

      update_configured_audience_model_request() :: %{
        optional("audienceModelArn") => String.t(),
        optional("audienceSizeConfig") => audience_size_config(),
        optional("description") => String.t(),
        optional("minMatchingSeedSize") => integer(),
        optional("outputConfig") => configured_audience_model_output_config(),
        optional("sharedAudienceMetrics") => list(list(any())())
      }

  """
  @type update_configured_audience_model_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_trained_model_output_request() :: %{}

  """
  @type delete_trained_model_output_request() :: %{}

  @typedoc """

  ## Example:

      get_audience_generation_job_request() :: %{}

  """
  @type get_audience_generation_job_request() :: %{}

  @typedoc """

  ## Example:

      list_collaboration_trained_model_inference_jobs_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("trainedModelArn") => String.t()
      }

  """
  @type list_collaboration_trained_model_inference_jobs_request() :: %{String.t() => any()}

  @type cancel_trained_model_errors() ::
          validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type cancel_trained_model_inference_job_errors() ::
          validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_audience_model_errors() ::
          validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_configured_audience_model_errors() ::
          validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_configured_model_algorithm_errors() ::
          validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_configured_model_algorithm_association_errors() ::
          validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_ml_input_channel_errors() ::
          validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_trained_model_errors() ::
          validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_training_dataset_errors() ::
          validation_exception() | access_denied_exception() | conflict_exception()

  @type delete_audience_generation_job_errors() ::
          validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_audience_model_errors() ::
          validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_configured_audience_model_errors() ::
          validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_configured_audience_model_policy_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type delete_configured_model_algorithm_errors() ::
          validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_configured_model_algorithm_association_errors() ::
          validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_ml_configuration_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type delete_ml_input_channel_data_errors() ::
          validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_trained_model_output_errors() ::
          validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_training_dataset_errors() ::
          validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_audience_generation_job_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type get_audience_model_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type get_collaboration_configured_model_algorithm_association_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type get_collaboration_ml_input_channel_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type get_collaboration_trained_model_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type get_configured_audience_model_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type get_configured_audience_model_policy_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type get_configured_model_algorithm_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type get_configured_model_algorithm_association_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type get_ml_configuration_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type get_ml_input_channel_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type get_trained_model_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type get_trained_model_inference_job_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type get_training_dataset_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type list_audience_export_jobs_errors() :: validation_exception() | access_denied_exception()

  @type list_audience_generation_jobs_errors() ::
          validation_exception() | access_denied_exception()

  @type list_audience_models_errors() :: validation_exception() | access_denied_exception()

  @type list_collaboration_configured_model_algorithm_associations_errors() ::
          validation_exception() | access_denied_exception()

  @type list_collaboration_ml_input_channels_errors() ::
          validation_exception() | access_denied_exception()

  @type list_collaboration_trained_model_export_jobs_errors() ::
          validation_exception() | access_denied_exception()

  @type list_collaboration_trained_model_inference_jobs_errors() ::
          validation_exception() | access_denied_exception()

  @type list_collaboration_trained_models_errors() ::
          validation_exception() | access_denied_exception()

  @type list_configured_audience_models_errors() ::
          validation_exception() | access_denied_exception()

  @type list_configured_model_algorithm_associations_errors() ::
          validation_exception() | access_denied_exception()

  @type list_configured_model_algorithms_errors() ::
          validation_exception() | access_denied_exception()

  @type list_ml_input_channels_errors() :: validation_exception() | access_denied_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type list_trained_model_inference_jobs_errors() ::
          validation_exception() | access_denied_exception()

  @type list_trained_models_errors() :: validation_exception() | access_denied_exception()

  @type list_training_datasets_errors() :: validation_exception() | access_denied_exception()

  @type put_configured_audience_model_policy_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type put_ml_configuration_errors() :: validation_exception() | access_denied_exception()

  @type start_audience_export_job_errors() ::
          validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type start_audience_generation_job_errors() ::
          validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type start_trained_model_export_job_errors() ::
          validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type start_trained_model_inference_job_errors() ::
          validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type tag_resource_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type untag_resource_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type update_configured_audience_model_errors() ::
          validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2023-09-06",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "cleanrooms-ml",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "CleanRoomsML",
      signature_version: "v4",
      signing_name: "cleanrooms-ml",
      target_prefix: nil
    }
  end

  @doc """
  Submits a request to cancel the trained model job.
  """
  @spec cancel_trained_model(
          map(),
          String.t(),
          String.t(),
          cancel_trained_model_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_trained_model_errors()}
  def cancel_trained_model(
        %Client{} = client,
        membership_identifier,
        trained_model_arn,
        input,
        options \\ []
      ) do
    url_path =
      "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/trained-models/#{AWS.Util.encode_uri(trained_model_arn)}"

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

  @doc """
  Submits a request to cancel a trained model inference job.
  """
  @spec cancel_trained_model_inference_job(
          map(),
          String.t(),
          String.t(),
          cancel_trained_model_inference_job_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_trained_model_inference_job_errors()}
  def cancel_trained_model_inference_job(
        %Client{} = client,
        membership_identifier,
        trained_model_inference_job_arn,
        input,
        options \\ []
      ) do
    url_path =
      "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/trained-model-inference-jobs/#{AWS.Util.encode_uri(trained_model_inference_job_arn)}"

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

  @doc """
  Defines the information necessary to create an audience model.

  An audience model is a machine learning model that Clean Rooms ML trains to
  measure similarity between users. Clean Rooms ML manages training and storing
  the audience model. The audience model can be used in multiple calls to the
  `StartAudienceGenerationJob` API.
  """
  @spec create_audience_model(map(), create_audience_model_request(), list()) ::
          {:ok, create_audience_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_audience_model_errors()}
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
  @spec create_configured_audience_model(
          map(),
          create_configured_audience_model_request(),
          list()
        ) ::
          {:ok, create_configured_audience_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_configured_audience_model_errors()}
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
  Creates a configured model algorithm using a container image stored in an ECR
  repository.
  """
  @spec create_configured_model_algorithm(
          map(),
          create_configured_model_algorithm_request(),
          list()
        ) ::
          {:ok, create_configured_model_algorithm_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_configured_model_algorithm_errors()}
  def create_configured_model_algorithm(%Client{} = client, input, options \\ []) do
    url_path = "/configured-model-algorithms"
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
  Associates a configured model algorithm to a collaboration for use by any member
  of the collaboration.
  """
  @spec create_configured_model_algorithm_association(
          map(),
          String.t(),
          create_configured_model_algorithm_association_request(),
          list()
        ) ::
          {:ok, create_configured_model_algorithm_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_configured_model_algorithm_association_errors()}
  def create_configured_model_algorithm_association(
        %Client{} = client,
        membership_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/configured-model-algorithm-associations"

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
  Provides the information to create an ML input channel.

  An ML input channel is the result of a query that can be used for ML modeling.
  """
  @spec create_ml_input_channel(map(), String.t(), create_ml_input_channel_request(), list()) ::
          {:ok, create_ml_input_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_ml_input_channel_errors()}
  def create_ml_input_channel(%Client{} = client, membership_identifier, input, options \\ []) do
    url_path = "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/ml-input-channels"
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
  Creates a trained model from an associated configured model algorithm using data
  from any member of the collaboration.
  """
  @spec create_trained_model(map(), String.t(), create_trained_model_request(), list()) ::
          {:ok, create_trained_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_trained_model_errors()}
  def create_trained_model(%Client{} = client, membership_identifier, input, options \\ []) do
    url_path = "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/trained-models"
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
  Defines the information necessary to create a training dataset.

  In Clean Rooms ML, the `TrainingDataset` is metadata that points to a Glue
  table, which is read only during `AudienceModel` creation.
  """
  @spec create_training_dataset(map(), create_training_dataset_request(), list()) ::
          {:ok, create_training_dataset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_training_dataset_errors()}
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
  @spec delete_audience_generation_job(
          map(),
          String.t(),
          delete_audience_generation_job_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_audience_generation_job_errors()}
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
  @spec delete_audience_model(map(), String.t(), delete_audience_model_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_audience_model_errors()}
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
  @spec delete_configured_audience_model(
          map(),
          String.t(),
          delete_configured_audience_model_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_configured_audience_model_errors()}
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
  @spec delete_configured_audience_model_policy(
          map(),
          String.t(),
          delete_configured_audience_model_policy_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_configured_audience_model_policy_errors()}
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
  Deletes a configured model algorithm.
  """
  @spec delete_configured_model_algorithm(
          map(),
          String.t(),
          delete_configured_model_algorithm_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_configured_model_algorithm_errors()}
  def delete_configured_model_algorithm(
        %Client{} = client,
        configured_model_algorithm_arn,
        input,
        options \\ []
      ) do
    url_path =
      "/configured-model-algorithms/#{AWS.Util.encode_uri(configured_model_algorithm_arn)}"

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
  Deletes a configured model algorithm association.
  """
  @spec delete_configured_model_algorithm_association(
          map(),
          String.t(),
          String.t(),
          delete_configured_model_algorithm_association_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_configured_model_algorithm_association_errors()}
  def delete_configured_model_algorithm_association(
        %Client{} = client,
        configured_model_algorithm_association_arn,
        membership_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/configured-model-algorithm-associations/#{AWS.Util.encode_uri(configured_model_algorithm_association_arn)}"

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
  Deletes a ML modeling configuration.
  """
  @spec delete_ml_configuration(map(), String.t(), delete_ml_configuration_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_ml_configuration_errors()}
  def delete_ml_configuration(%Client{} = client, membership_identifier, input, options \\ []) do
    url_path = "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/ml-configurations"
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
  Provides the information necessary to delete an ML input channel.
  """
  @spec delete_ml_input_channel_data(
          map(),
          String.t(),
          String.t(),
          delete_ml_input_channel_data_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_ml_input_channel_data_errors()}
  def delete_ml_input_channel_data(
        %Client{} = client,
        membership_identifier,
        ml_input_channel_arn,
        input,
        options \\ []
      ) do
    url_path =
      "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/ml-input-channels/#{AWS.Util.encode_uri(ml_input_channel_arn)}"

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
  Deletes the output of a trained model.
  """
  @spec delete_trained_model_output(
          map(),
          String.t(),
          String.t(),
          delete_trained_model_output_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_trained_model_output_errors()}
  def delete_trained_model_output(
        %Client{} = client,
        membership_identifier,
        trained_model_arn,
        input,
        options \\ []
      ) do
    url_path =
      "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/trained-models/#{AWS.Util.encode_uri(trained_model_arn)}"

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
  @spec delete_training_dataset(map(), String.t(), delete_training_dataset_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_training_dataset_errors()}
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
  @spec get_audience_generation_job(map(), String.t(), list()) ::
          {:ok, get_audience_generation_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_audience_generation_job_errors()}
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
  @spec get_audience_model(map(), String.t(), list()) ::
          {:ok, get_audience_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_audience_model_errors()}
  def get_audience_model(%Client{} = client, audience_model_arn, options \\ []) do
    url_path = "/audience-model/#{AWS.Util.encode_uri(audience_model_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about the configured model algorithm association in a
  collaboration.
  """
  @spec get_collaboration_configured_model_algorithm_association(
          map(),
          String.t(),
          String.t(),
          list()
        ) ::
          {:ok, get_collaboration_configured_model_algorithm_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_collaboration_configured_model_algorithm_association_errors()}
  def get_collaboration_configured_model_algorithm_association(
        %Client{} = client,
        collaboration_identifier,
        configured_model_algorithm_association_arn,
        options \\ []
      ) do
    url_path =
      "/collaborations/#{AWS.Util.encode_uri(collaboration_identifier)}/configured-model-algorithm-associations/#{AWS.Util.encode_uri(configured_model_algorithm_association_arn)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about a specific ML input channel in a collaboration.
  """
  @spec get_collaboration_ml_input_channel(map(), String.t(), String.t(), list()) ::
          {:ok, get_collaboration_ml_input_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_collaboration_ml_input_channel_errors()}
  def get_collaboration_ml_input_channel(
        %Client{} = client,
        collaboration_identifier,
        ml_input_channel_arn,
        options \\ []
      ) do
    url_path =
      "/collaborations/#{AWS.Util.encode_uri(collaboration_identifier)}/ml-input-channels/#{AWS.Util.encode_uri(ml_input_channel_arn)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about a trained model in a collaboration.
  """
  @spec get_collaboration_trained_model(map(), String.t(), String.t(), list()) ::
          {:ok, get_collaboration_trained_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_collaboration_trained_model_errors()}
  def get_collaboration_trained_model(
        %Client{} = client,
        collaboration_identifier,
        trained_model_arn,
        options \\ []
      ) do
    url_path =
      "/collaborations/#{AWS.Util.encode_uri(collaboration_identifier)}/trained-models/#{AWS.Util.encode_uri(trained_model_arn)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about a specified configured audience model.
  """
  @spec get_configured_audience_model(map(), String.t(), list()) ::
          {:ok, get_configured_audience_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_configured_audience_model_errors()}
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
  @spec get_configured_audience_model_policy(map(), String.t(), list()) ::
          {:ok, get_configured_audience_model_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_configured_audience_model_policy_errors()}
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
  Returns information about a configured model algorithm.
  """
  @spec get_configured_model_algorithm(map(), String.t(), list()) ::
          {:ok, get_configured_model_algorithm_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_configured_model_algorithm_errors()}
  def get_configured_model_algorithm(
        %Client{} = client,
        configured_model_algorithm_arn,
        options \\ []
      ) do
    url_path =
      "/configured-model-algorithms/#{AWS.Util.encode_uri(configured_model_algorithm_arn)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about a configured model algorithm association.
  """
  @spec get_configured_model_algorithm_association(map(), String.t(), String.t(), list()) ::
          {:ok, get_configured_model_algorithm_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_configured_model_algorithm_association_errors()}
  def get_configured_model_algorithm_association(
        %Client{} = client,
        configured_model_algorithm_association_arn,
        membership_identifier,
        options \\ []
      ) do
    url_path =
      "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/configured-model-algorithm-associations/#{AWS.Util.encode_uri(configured_model_algorithm_association_arn)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about a specific ML configuration.
  """
  @spec get_ml_configuration(map(), String.t(), list()) ::
          {:ok, get_ml_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_ml_configuration_errors()}
  def get_ml_configuration(%Client{} = client, membership_identifier, options \\ []) do
    url_path = "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/ml-configurations"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about an ML input channel.
  """
  @spec get_ml_input_channel(map(), String.t(), String.t(), list()) ::
          {:ok, get_ml_input_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_ml_input_channel_errors()}
  def get_ml_input_channel(
        %Client{} = client,
        membership_identifier,
        ml_input_channel_arn,
        options \\ []
      ) do
    url_path =
      "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/ml-input-channels/#{AWS.Util.encode_uri(ml_input_channel_arn)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about a trained model.
  """
  @spec get_trained_model(map(), String.t(), String.t(), list()) ::
          {:ok, get_trained_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_trained_model_errors()}
  def get_trained_model(
        %Client{} = client,
        membership_identifier,
        trained_model_arn,
        options \\ []
      ) do
    url_path =
      "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/trained-models/#{AWS.Util.encode_uri(trained_model_arn)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about a trained model inference job.
  """
  @spec get_trained_model_inference_job(map(), String.t(), String.t(), list()) ::
          {:ok, get_trained_model_inference_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_trained_model_inference_job_errors()}
  def get_trained_model_inference_job(
        %Client{} = client,
        membership_identifier,
        trained_model_inference_job_arn,
        options \\ []
      ) do
    url_path =
      "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/trained-model-inference-jobs/#{AWS.Util.encode_uri(trained_model_inference_job_arn)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about a training dataset.
  """
  @spec get_training_dataset(map(), String.t(), list()) ::
          {:ok, get_training_dataset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_training_dataset_errors()}
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
  @spec list_audience_export_jobs(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_audience_export_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_audience_export_jobs_errors()}
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
  @spec list_audience_generation_jobs(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_audience_generation_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_audience_generation_jobs_errors()}
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
  @spec list_audience_models(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_audience_models_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_audience_models_errors()}
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
  Returns a list of the configured model algorithm associations in a
  collaboration.
  """
  @spec list_collaboration_configured_model_algorithm_associations(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_collaboration_configured_model_algorithm_associations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_collaboration_configured_model_algorithm_associations_errors()}
  def list_collaboration_configured_model_algorithm_associations(
        %Client{} = client,
        collaboration_identifier,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/collaborations/#{AWS.Util.encode_uri(collaboration_identifier)}/configured-model-algorithm-associations"

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
  Returns a list of the ML input channels in a collaboration.
  """
  @spec list_collaboration_ml_input_channels(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_collaboration_ml_input_channels_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_collaboration_ml_input_channels_errors()}
  def list_collaboration_ml_input_channels(
        %Client{} = client,
        collaboration_identifier,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/collaborations/#{AWS.Util.encode_uri(collaboration_identifier)}/ml-input-channels"

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
  Returns a list of the export jobs for a trained model in a collaboration.
  """
  @spec list_collaboration_trained_model_export_jobs(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_collaboration_trained_model_export_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_collaboration_trained_model_export_jobs_errors()}
  def list_collaboration_trained_model_export_jobs(
        %Client{} = client,
        collaboration_identifier,
        trained_model_arn,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/collaborations/#{AWS.Util.encode_uri(collaboration_identifier)}/trained-models/#{AWS.Util.encode_uri(trained_model_arn)}/export-jobs"

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
  Returns a list of trained model inference jobs in a specified collaboration.
  """
  @spec list_collaboration_trained_model_inference_jobs(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_collaboration_trained_model_inference_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_collaboration_trained_model_inference_jobs_errors()}
  def list_collaboration_trained_model_inference_jobs(
        %Client{} = client,
        collaboration_identifier,
        max_results \\ nil,
        next_token \\ nil,
        trained_model_arn \\ nil,
        options \\ []
      ) do
    url_path =
      "/collaborations/#{AWS.Util.encode_uri(collaboration_identifier)}/trained-model-inference-jobs"

    headers = []
    query_params = []

    query_params =
      if !is_nil(trained_model_arn) do
        [{"trainedModelArn", trained_model_arn} | query_params]
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of the trained models in a collaboration.
  """
  @spec list_collaboration_trained_models(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_collaboration_trained_models_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_collaboration_trained_models_errors()}
  def list_collaboration_trained_models(
        %Client{} = client,
        collaboration_identifier,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/collaborations/#{AWS.Util.encode_uri(collaboration_identifier)}/trained-models"
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
  @spec list_configured_audience_models(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_configured_audience_models_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_configured_audience_models_errors()}
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
  Returns a list of configured model algorithm associations.
  """
  @spec list_configured_model_algorithm_associations(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_configured_model_algorithm_associations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_configured_model_algorithm_associations_errors()}
  def list_configured_model_algorithm_associations(
        %Client{} = client,
        membership_identifier,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/configured-model-algorithm-associations"

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
  Returns a list of configured model algorithms.
  """
  @spec list_configured_model_algorithms(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_configured_model_algorithms_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_configured_model_algorithms_errors()}
  def list_configured_model_algorithms(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/configured-model-algorithms"
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
  Returns a list of ML input channels.
  """
  @spec list_ml_input_channels(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_ml_input_channels_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_ml_input_channels_errors()}
  def list_ml_input_channels(
        %Client{} = client,
        membership_identifier,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/ml-input-channels"
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
  @spec list_tags_for_resource(map(), String.t(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of trained model inference jobs that match the request
  parameters.
  """
  @spec list_trained_model_inference_jobs(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_trained_model_inference_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_trained_model_inference_jobs_errors()}
  def list_trained_model_inference_jobs(
        %Client{} = client,
        membership_identifier,
        max_results \\ nil,
        next_token \\ nil,
        trained_model_arn \\ nil,
        options \\ []
      ) do
    url_path =
      "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/trained-model-inference-jobs"

    headers = []
    query_params = []

    query_params =
      if !is_nil(trained_model_arn) do
        [{"trainedModelArn", trained_model_arn} | query_params]
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of trained models.
  """
  @spec list_trained_models(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_trained_models_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_trained_models_errors()}
  def list_trained_models(
        %Client{} = client,
        membership_identifier,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/trained-models"
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
  Returns a list of training datasets.
  """
  @spec list_training_datasets(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_training_datasets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_training_datasets_errors()}
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
  @spec put_configured_audience_model_policy(
          map(),
          String.t(),
          put_configured_audience_model_policy_request(),
          list()
        ) ::
          {:ok, put_configured_audience_model_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_configured_audience_model_policy_errors()}
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
  Assigns information about an ML configuration.
  """
  @spec put_ml_configuration(map(), String.t(), put_ml_configuration_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_ml_configuration_errors()}
  def put_ml_configuration(%Client{} = client, membership_identifier, input, options \\ []) do
    url_path = "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/ml-configurations"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Export an audience of a specified size after you have generated an audience.
  """
  @spec start_audience_export_job(map(), start_audience_export_job_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_audience_export_job_errors()}
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
  @spec start_audience_generation_job(map(), start_audience_generation_job_request(), list()) ::
          {:ok, start_audience_generation_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_audience_generation_job_errors()}
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
  Provides the information necessary to start a trained model export job.
  """
  @spec start_trained_model_export_job(
          map(),
          String.t(),
          String.t(),
          start_trained_model_export_job_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_trained_model_export_job_errors()}
  def start_trained_model_export_job(
        %Client{} = client,
        membership_identifier,
        trained_model_arn,
        input,
        options \\ []
      ) do
    url_path =
      "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/trained-models/#{AWS.Util.encode_uri(trained_model_arn)}/export-jobs"

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
  Defines the information necessary to begin a trained model inference job.
  """
  @spec start_trained_model_inference_job(
          map(),
          String.t(),
          start_trained_model_inference_job_request(),
          list()
        ) ::
          {:ok, start_trained_model_inference_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_trained_model_inference_job_errors()}
  def start_trained_model_inference_job(
        %Client{} = client,
        membership_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/trained-model-inference-jobs"

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
  @spec tag_resource(map(), String.t(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
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
  @spec untag_resource(map(), String.t(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
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
  @spec update_configured_audience_model(
          map(),
          String.t(),
          update_configured_audience_model_request(),
          list()
        ) ::
          {:ok, update_configured_audience_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_configured_audience_model_errors()}
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
