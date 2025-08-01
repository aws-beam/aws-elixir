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
  best practices, see the [Clean Rooms User Guide](https://docs.aws.amazon.com/clean-rooms/latest/userguide/machine-learning.html).

  To learn more about SQL commands, functions, and conditions supported in Clean
  Rooms, see the [Clean Rooms SQL Reference](https://docs.aws.amazon.com/clean-rooms/latest/sql-reference/sql-reference.html).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      update_configured_audience_model_response() :: %{
        "configuredAudienceModelArn" => String.t() | atom()
      }

  """
  @type update_configured_audience_model_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_trained_model_inference_jobs_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("trainedModelArn") => String.t() | atom(),
        optional("trainedModelVersionIdentifier") => String.t() | atom()
      }

  """
  @type list_trained_model_inference_jobs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      trained_model_summary() :: %{
        "collaborationIdentifier" => String.t() | atom(),
        "configuredModelAlgorithmAssociationArn" => String.t() | atom(),
        "createTime" => [non_neg_integer()],
        "description" => String.t() | atom(),
        "incrementalTrainingDataChannels" => list(incremental_training_data_channel_output()),
        "membershipIdentifier" => String.t() | atom(),
        "name" => String.t() | atom(),
        "status" => list(any()),
        "trainedModelArn" => String.t() | atom(),
        "updateTime" => [non_neg_integer()],
        "versionIdentifier" => String.t() | atom()
      }

  """
  @type trained_model_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_trained_model_inference_job_response() :: %{
        "trainedModelInferenceJobArn" => String.t() | atom()
      }

  """
  @type start_trained_model_inference_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_configured_model_algorithm_associations_response() :: %{
        "configuredModelAlgorithmAssociations" => list(configured_model_algorithm_association_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_configured_model_algorithm_associations_response() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      create_audience_model_response() :: %{
        "audienceModelArn" => String.t() | atom()
      }

  """
  @type create_audience_model_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      audience_quality_metrics() :: %{
        "recallMetric" => [float()],
        "relevanceMetrics" => list(relevance_metric())
      }

  """
  @type audience_quality_metrics() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_audience_generation_job_response() :: %{
        "audienceGenerationJobArn" => String.t() | atom()
      }

  """
  @type start_audience_generation_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      trained_model_exports_max_size() :: %{
        "unit" => list(any()),
        "value" => float()
      }

  """
  @type trained_model_exports_max_size() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_configured_model_algorithm_association_response() :: %{
        "collaborationIdentifier" => String.t() | atom(),
        "configuredModelAlgorithmArn" => String.t() | atom(),
        "configuredModelAlgorithmAssociationArn" => String.t() | atom(),
        "createTime" => [non_neg_integer()],
        "description" => String.t() | atom(),
        "membershipIdentifier" => String.t() | atom(),
        "name" => String.t() | atom(),
        "privacyConfiguration" => privacy_configuration(),
        "tags" => map(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type get_configured_model_algorithm_association_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_audience_generation_job_response() :: %{
        "audienceGenerationJobArn" => String.t() | atom(),
        "collaborationId" => String.t() | atom(),
        "configuredAudienceModelArn" => String.t() | atom(),
        "createTime" => [non_neg_integer()],
        "description" => String.t() | atom(),
        "includeSeedInOutput" => [boolean()],
        "metrics" => audience_quality_metrics(),
        "name" => String.t() | atom(),
        "protectedQueryIdentifier" => [String.t() | atom()],
        "seedAudience" => audience_generation_job_data_source(),
        "startedBy" => String.t() | atom(),
        "status" => list(any()),
        "statusDetails" => status_details(),
        "tags" => map(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type get_audience_generation_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_configured_model_algorithms_response() :: %{
        "configuredModelAlgorithms" => list(configured_model_algorithm_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_configured_model_algorithms_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_ml_input_channel_request() :: %{
        optional("description") => String.t() | atom(),
        optional("kmsKeyArn") => String.t() | atom(),
        optional("tags") => map(),
        required("configuredModelAlgorithmAssociations") => list(String.t() | atom()),
        required("inputChannel") => input_channel(),
        required("name") => String.t() | atom(),
        required("retentionInDays") => [integer()]
      }

  """
  @type create_ml_input_channel_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_trained_model_request() :: %{
        optional("versionIdentifier") => String.t() | atom()
      }

  """
  @type get_trained_model_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_training_dataset_response() :: %{
        "createTime" => [non_neg_integer()],
        "description" => String.t() | atom(),
        "name" => String.t() | atom(),
        "roleArn" => String.t() | atom(),
        "status" => list(any()),
        "tags" => map(),
        "trainingData" => list(dataset()),
        "trainingDatasetArn" => String.t() | atom(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type get_training_dataset_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      trained_models_configuration_policy() :: %{
        "containerLogs" => list(logs_configuration_policy()),
        "containerMetrics" => metrics_configuration_policy(),
        "maxArtifactSize" => trained_model_artifact_max_size()
      }

  """
  @type trained_models_configuration_policy() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      trained_model_inference_job_summary() :: %{
        "collaborationIdentifier" => String.t() | atom(),
        "configuredModelAlgorithmAssociationArn" => String.t() | atom(),
        "createTime" => [non_neg_integer()],
        "description" => String.t() | atom(),
        "logsStatus" => list(any()),
        "logsStatusDetails" => [String.t() | atom()],
        "membershipIdentifier" => String.t() | atom(),
        "metricsStatus" => list(any()),
        "metricsStatusDetails" => [String.t() | atom()],
        "name" => String.t() | atom(),
        "outputConfiguration" => inference_output_configuration(),
        "status" => list(any()),
        "trainedModelArn" => String.t() | atom(),
        "trainedModelInferenceJobArn" => String.t() | atom(),
        "trainedModelVersionIdentifier" => String.t() | atom(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type trained_model_inference_job_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_configured_audience_model_response() :: %{
        "configuredAudienceModelArn" => String.t() | atom()
      }

  """
  @type create_configured_audience_model_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      trained_model_export_receiver_member() :: %{
        "accountId" => String.t() | atom()
      }

  """
  @type trained_model_export_receiver_member() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      inference_output_configuration() :: %{
        "accept" => [String.t() | atom()],
        "members" => list(inference_receiver_member())
      }

  """
  @type inference_output_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      protected_query_input_parameters() :: %{
        "computeConfiguration" => list(),
        "sqlParameters" => protected_query_s_q_l_parameters()
      }

  """
  @type protected_query_input_parameters() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_configured_audience_models_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_configured_audience_models_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_training_datasets_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_training_datasets_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_configured_model_algorithm_association_request() :: %{}

  """
  @type get_configured_model_algorithm_association_request() :: %{}

  @typedoc """

  ## Example:

      create_configured_model_algorithm_association_request() :: %{
        optional("description") => String.t() | atom(),
        optional("privacyConfiguration") => privacy_configuration(),
        optional("tags") => map(),
        required("configuredModelAlgorithmArn") => String.t() | atom(),
        required("name") => String.t() | atom()
      }

  """
  @type create_configured_model_algorithm_association_request() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      put_ml_configuration_request() :: %{
        required("defaultOutputLocation") => ml_output_configuration()
      }

  """
  @type put_ml_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_training_dataset_request() :: %{}

  """
  @type get_training_dataset_request() :: %{}

  @typedoc """

  ## Example:

      get_ml_input_channel_response() :: %{
        "collaborationIdentifier" => String.t() | atom(),
        "configuredModelAlgorithmAssociations" => list(String.t() | atom()),
        "createTime" => [non_neg_integer()],
        "description" => String.t() | atom(),
        "inputChannel" => input_channel(),
        "kmsKeyArn" => String.t() | atom(),
        "membershipIdentifier" => String.t() | atom(),
        "mlInputChannelArn" => String.t() | atom(),
        "name" => String.t() | atom(),
        "numberOfFiles" => [float()],
        "numberOfRecords" => [float()],
        "protectedQueryIdentifier" => String.t() | atom(),
        "retentionInDays" => [integer()],
        "sizeInGb" => [float()],
        "status" => list(any()),
        "statusDetails" => status_details(),
        "tags" => map(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type get_ml_input_channel_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_ml_configuration_request() :: %{}

  """
  @type get_ml_configuration_request() :: %{}

  @typedoc """

  ## Example:

      list_ml_input_channels_response() :: %{
        "mlInputChannelsList" => list(ml_input_channel_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_ml_input_channels_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      relevance_metric() :: %{
        "audienceSize" => audience_size(),
        "score" => [float()]
      }

  """
  @type relevance_metric() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_collaboration_trained_model_response() :: %{
        "collaborationIdentifier" => String.t() | atom(),
        "configuredModelAlgorithmAssociationArn" => String.t() | atom(),
        "createTime" => [non_neg_integer()],
        "creatorAccountId" => String.t() | atom(),
        "description" => String.t() | atom(),
        "incrementalTrainingDataChannels" => list(incremental_training_data_channel_output()),
        "logsStatus" => list(any()),
        "logsStatusDetails" => [String.t() | atom()],
        "membershipIdentifier" => String.t() | atom(),
        "metricsStatus" => list(any()),
        "metricsStatusDetails" => [String.t() | atom()],
        "name" => String.t() | atom(),
        "resourceConfig" => resource_config(),
        "status" => list(any()),
        "statusDetails" => status_details(),
        "stoppingCondition" => stopping_condition(),
        "trainedModelArn" => String.t() | atom(),
        "trainingContainerImageDigest" => [String.t() | atom()],
        "trainingInputMode" => list(any()),
        "updateTime" => [non_neg_integer()],
        "versionIdentifier" => String.t() | atom()
      }

  """
  @type get_collaboration_trained_model_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_configured_audience_model_request() :: %{
        optional("audienceSizeConfig") => audience_size_config(),
        optional("childResourceTagOnCreatePolicy") => list(any()),
        optional("description") => String.t() | atom(),
        optional("minMatchingSeedSize") => integer(),
        optional("tags") => map(),
        required("audienceModelArn") => String.t() | atom(),
        required("name") => String.t() | atom(),
        required("outputConfig") => configured_audience_model_output_config(),
        required("sharedAudienceMetrics") => list(list(any())())
      }

  """
  @type create_configured_audience_model_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      collaboration_ml_input_channel_summary() :: %{
        "collaborationIdentifier" => String.t() | atom(),
        "configuredModelAlgorithmAssociations" => list(String.t() | atom()),
        "createTime" => [non_neg_integer()],
        "creatorAccountId" => String.t() | atom(),
        "description" => String.t() | atom(),
        "membershipIdentifier" => String.t() | atom(),
        "mlInputChannelArn" => String.t() | atom(),
        "name" => String.t() | atom(),
        "status" => list(any()),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type collaboration_ml_input_channel_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      ml_input_channel_summary() :: %{
        "collaborationIdentifier" => String.t() | atom(),
        "configuredModelAlgorithmAssociations" => list(String.t() | atom()),
        "createTime" => [non_neg_integer()],
        "description" => String.t() | atom(),
        "membershipIdentifier" => String.t() | atom(),
        "mlInputChannelArn" => String.t() | atom(),
        "name" => String.t() | atom(),
        "protectedQueryIdentifier" => String.t() | atom(),
        "status" => list(any()),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type ml_input_channel_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_configured_model_algorithm_association_response() :: %{
        "configuredModelAlgorithmAssociationArn" => String.t() | atom()
      }

  """
  @type create_configured_model_algorithm_association_response() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      metric_definition() :: %{
        "name" => String.t() | atom(),
        "regex" => String.t() | atom()
      }

  """
  @type metric_definition() :: %{(String.t() | atom()) => any()}

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
        optional("nextToken") => String.t() | atom(),
        optional("trainedModelVersionIdentifier") => String.t() | atom()
      }

  """
  @type list_collaboration_trained_model_export_jobs_request() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      internal_service_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type internal_service_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_collaboration_configured_model_algorithm_associations_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_collaboration_configured_model_algorithm_associations_request() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      get_trained_model_response() :: %{
        "collaborationIdentifier" => String.t() | atom(),
        "configuredModelAlgorithmAssociationArn" => String.t() | atom(),
        "createTime" => [non_neg_integer()],
        "dataChannels" => list(model_training_data_channel()),
        "description" => String.t() | atom(),
        "environment" => map(),
        "hyperparameters" => map(),
        "incrementalTrainingDataChannels" => list(incremental_training_data_channel_output()),
        "kmsKeyArn" => String.t() | atom(),
        "logsStatus" => list(any()),
        "logsStatusDetails" => [String.t() | atom()],
        "membershipIdentifier" => String.t() | atom(),
        "metricsStatus" => list(any()),
        "metricsStatusDetails" => [String.t() | atom()],
        "name" => String.t() | atom(),
        "resourceConfig" => resource_config(),
        "status" => list(any()),
        "statusDetails" => status_details(),
        "stoppingCondition" => stopping_condition(),
        "tags" => map(),
        "trainedModelArn" => String.t() | atom(),
        "trainingContainerImageDigest" => [String.t() | atom()],
        "trainingInputMode" => list(any()),
        "updateTime" => [non_neg_integer()],
        "versionIdentifier" => String.t() | atom()
      }

  """
  @type get_trained_model_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t() | atom())
      }

  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      collaboration_trained_model_export_job_summary() :: %{
        "collaborationIdentifier" => String.t() | atom(),
        "createTime" => [non_neg_integer()],
        "creatorAccountId" => String.t() | atom(),
        "description" => String.t() | atom(),
        "membershipIdentifier" => String.t() | atom(),
        "name" => String.t() | atom(),
        "outputConfiguration" => trained_model_export_output_configuration(),
        "status" => list(any()),
        "statusDetails" => status_details(),
        "trainedModelArn" => String.t() | atom(),
        "trainedModelVersionIdentifier" => String.t() | atom(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type collaboration_trained_model_export_job_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_trained_model_versions_response() :: %{
        "nextToken" => String.t() | atom(),
        "trainedModels" => list(trained_model_summary())
      }

  """
  @type list_trained_model_versions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      status_details() :: %{
        "message" => [String.t() | atom()],
        "statusCode" => [String.t() | atom()]
      }

  """
  @type status_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_audience_export_job_request() :: %{
        optional("description") => String.t() | atom(),
        required("audienceGenerationJobArn") => String.t() | atom(),
        required("audienceSize") => audience_size(),
        required("name") => String.t() | atom()
      }

  """
  @type start_audience_export_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_training_dataset_request() :: %{}

  """
  @type delete_training_dataset_request() :: %{}

  @typedoc """

  ## Example:

      list_ml_input_channels_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_ml_input_channels_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_configured_model_algorithm_request() :: %{
        optional("description") => String.t() | atom(),
        optional("inferenceContainerConfig") => inference_container_config(),
        optional("kmsKeyArn") => String.t() | atom(),
        optional("tags") => map(),
        optional("trainingContainerConfig") => container_config(),
        required("name") => String.t() | atom(),
        required("roleArn") => String.t() | atom()
      }

  """
  @type create_configured_model_algorithm_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_audience_models_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_audience_models_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_collaboration_ml_input_channels_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_collaboration_ml_input_channels_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      dataset() :: %{
        "inputConfig" => dataset_input_config(),
        "type" => list(any())
      }

  """
  @type dataset() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      metrics_configuration_policy() :: %{
        "noiseLevel" => list(any())
      }

  """
  @type metrics_configuration_policy() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      audience_size() :: %{
        "type" => list(any()),
        "value" => integer()
      }

  """
  @type audience_size() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_audience_generation_job_request() :: %{
        optional("collaborationId") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("includeSeedInOutput") => [boolean()],
        optional("tags") => map(),
        required("configuredAudienceModelArn") => String.t() | atom(),
        required("name") => String.t() | atom(),
        required("seedAudience") => audience_generation_job_data_source()
      }

  """
  @type start_audience_generation_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      model_training_data_channel() :: %{
        "channelName" => String.t() | atom(),
        "mlInputChannelArn" => String.t() | atom(),
        "s3DataDistributionType" => list(any())
      }

  """
  @type model_training_data_channel() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      audience_generation_job_summary() :: %{
        "audienceGenerationJobArn" => String.t() | atom(),
        "collaborationId" => String.t() | atom(),
        "configuredAudienceModelArn" => String.t() | atom(),
        "createTime" => [non_neg_integer()],
        "description" => String.t() | atom(),
        "name" => String.t() | atom(),
        "startedBy" => String.t() | atom(),
        "status" => list(any()),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type audience_generation_job_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      trained_model_inference_jobs_configuration_policy() :: %{
        "containerLogs" => list(logs_configuration_policy()),
        "maxOutputSize" => trained_model_inference_max_output_size()
      }

  """
  @type trained_model_inference_jobs_configuration_policy() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      container_config() :: %{
        "arguments" => list(String.t() | atom()),
        "entrypoint" => list(String.t() | atom()),
        "imageUri" => String.t() | atom(),
        "metricDefinitions" => list(metric_definition())
      }

  """
  @type container_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_audience_model_request() :: %{}

  """
  @type get_audience_model_request() :: %{}

  @typedoc """

  ## Example:

      list_trained_model_inference_jobs_response() :: %{
        "nextToken" => String.t() | atom(),
        "trainedModelInferenceJobs" => list(trained_model_inference_job_summary())
      }

  """
  @type list_trained_model_inference_jobs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      configured_audience_model_output_config() :: %{
        "destination" => audience_destination(),
        "roleArn" => String.t() | atom()
      }

  """
  @type configured_audience_model_output_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_collaboration_configured_model_algorithm_association_request() :: %{}

  """
  @type get_collaboration_configured_model_algorithm_association_request() :: %{}

  @typedoc """

  ## Example:

      configured_model_algorithm_summary() :: %{
        "configuredModelAlgorithmArn" => String.t() | atom(),
        "createTime" => [non_neg_integer()],
        "description" => String.t() | atom(),
        "name" => String.t() | atom(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type configured_model_algorithm_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      incremental_training_data_channel() :: %{
        "channelName" => String.t() | atom(),
        "trainedModelArn" => String.t() | atom(),
        "versionIdentifier" => String.t() | atom()
      }

  """
  @type incremental_training_data_channel() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      trained_model_inference_max_output_size() :: %{
        "unit" => list(any()),
        "value" => float()
      }

  """
  @type trained_model_inference_max_output_size() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_collaboration_trained_model_request() :: %{
        optional("versionIdentifier") => String.t() | atom()
      }

  """
  @type get_collaboration_trained_model_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      inference_resource_config() :: %{
        "instanceCount" => [integer()],
        "instanceType" => list(any())
      }

  """
  @type inference_resource_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => [String.t() | atom()],
        "quotaName" => [String.t() | atom()],
        "quotaValue" => [float()]
      }

  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_configured_audience_model_response() :: %{
        "audienceModelArn" => String.t() | atom(),
        "audienceSizeConfig" => audience_size_config(),
        "childResourceTagOnCreatePolicy" => list(any()),
        "configuredAudienceModelArn" => String.t() | atom(),
        "createTime" => [non_neg_integer()],
        "description" => String.t() | atom(),
        "minMatchingSeedSize" => integer(),
        "name" => String.t() | atom(),
        "outputConfig" => configured_audience_model_output_config(),
        "sharedAudienceMetrics" => list(list(any())()),
        "status" => list(any()),
        "tags" => map(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type get_configured_audience_model_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      audience_model_summary() :: %{
        "audienceModelArn" => String.t() | atom(),
        "createTime" => [non_neg_integer()],
        "description" => String.t() | atom(),
        "name" => String.t() | atom(),
        "status" => list(any()),
        "trainingDatasetArn" => String.t() | atom(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type audience_model_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      ml_output_configuration() :: %{
        "destination" => destination(),
        "roleArn" => String.t() | atom()
      }

  """
  @type ml_output_configuration() :: %{(String.t() | atom()) => any()}

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
        "membershipIdentifier" => String.t() | atom(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type get_ml_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      stopping_condition() :: %{
        "maxRuntimeInSeconds" => [integer()]
      }

  """
  @type stopping_condition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_collaboration_trained_model_export_jobs_response() :: %{
        "collaborationTrainedModelExportJobs" => list(collaboration_trained_model_export_job_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_collaboration_trained_model_export_jobs_response() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      create_trained_model_request() :: %{
        optional("description") => String.t() | atom(),
        optional("environment") => map(),
        optional("hyperparameters") => map(),
        optional("incrementalTrainingDataChannels") => list(incremental_training_data_channel()),
        optional("kmsKeyArn") => String.t() | atom(),
        optional("stoppingCondition") => stopping_condition(),
        optional("tags") => map(),
        optional("trainingInputMode") => list(any()),
        required("configuredModelAlgorithmAssociationArn") => String.t() | atom(),
        required("dataChannels") => list(model_training_data_channel()),
        required("name") => String.t() | atom(),
        required("resourceConfig") => resource_config()
      }

  """
  @type create_trained_model_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_training_datasets_response() :: %{
        "nextToken" => String.t() | atom(),
        "trainingDatasets" => list(training_dataset_summary())
      }

  """
  @type list_training_datasets_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      collaboration_trained_model_summary() :: %{
        "collaborationIdentifier" => String.t() | atom(),
        "configuredModelAlgorithmAssociationArn" => String.t() | atom(),
        "createTime" => [non_neg_integer()],
        "creatorAccountId" => String.t() | atom(),
        "description" => String.t() | atom(),
        "incrementalTrainingDataChannels" => list(incremental_training_data_channel_output()),
        "membershipIdentifier" => String.t() | atom(),
        "name" => String.t() | atom(),
        "status" => list(any()),
        "trainedModelArn" => String.t() | atom(),
        "updateTime" => [non_neg_integer()],
        "versionIdentifier" => String.t() | atom()
      }

  """
  @type collaboration_trained_model_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      inference_container_config() :: %{
        "imageUri" => String.t() | atom()
      }

  """
  @type inference_container_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_configured_model_algorithms_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_configured_model_algorithms_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      configured_model_algorithm_association_summary() :: %{
        "collaborationIdentifier" => String.t() | atom(),
        "configuredModelAlgorithmArn" => String.t() | atom(),
        "configuredModelAlgorithmAssociationArn" => String.t() | atom(),
        "createTime" => [non_neg_integer()],
        "description" => String.t() | atom(),
        "membershipIdentifier" => String.t() | atom(),
        "name" => String.t() | atom(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type configured_model_algorithm_association_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      audience_export_job_summary() :: %{
        "audienceGenerationJobArn" => String.t() | atom(),
        "audienceSize" => audience_size(),
        "createTime" => [non_neg_integer()],
        "description" => String.t() | atom(),
        "name" => String.t() | atom(),
        "outputLocation" => String.t() | atom(),
        "status" => list(any()),
        "statusDetails" => status_details(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type audience_export_job_summary() :: %{(String.t() | atom()) => any()}

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
  @type trained_model_exports_configuration_policy() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_configured_model_algorithm_associations_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_configured_model_algorithm_associations_request() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      create_training_dataset_response() :: %{
        "trainingDatasetArn" => String.t() | atom()
      }

  """
  @type create_training_dataset_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_audience_model_request() :: %{
        optional("description") => String.t() | atom(),
        optional("kmsKeyArn") => String.t() | atom(),
        optional("tags") => map(),
        optional("trainingDataEndTime") => [non_neg_integer()],
        optional("trainingDataStartTime") => [non_neg_integer()],
        required("name") => String.t() | atom(),
        required("trainingDatasetArn") => String.t() | atom()
      }

  """
  @type create_audience_model_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      privacy_configuration() :: %{
        "policies" => privacy_configuration_policies()
      }

  """
  @type privacy_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_trained_model_inference_job_request() :: %{
        optional("configuredModelAlgorithmAssociationArn") => String.t() | atom(),
        optional("containerExecutionParameters") => inference_container_execution_parameters(),
        optional("description") => String.t() | atom(),
        optional("environment") => map(),
        optional("kmsKeyArn") => String.t() | atom(),
        optional("tags") => map(),
        optional("trainedModelVersionIdentifier") => String.t() | atom(),
        required("dataSource") => model_inference_data_source(),
        required("name") => String.t() | atom(),
        required("outputConfiguration") => inference_output_configuration(),
        required("resourceConfig") => inference_resource_config(),
        required("trainedModelArn") => String.t() | atom()
      }

  """
  @type start_trained_model_inference_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      trained_model_artifact_max_size() :: %{
        "unit" => list(any()),
        "value" => float()
      }

  """
  @type trained_model_artifact_max_size() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      inference_receiver_member() :: %{
        "accountId" => String.t() | atom()
      }

  """
  @type inference_receiver_member() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      collaboration_configured_model_algorithm_association_summary() :: %{
        "collaborationIdentifier" => String.t() | atom(),
        "configuredModelAlgorithmArn" => String.t() | atom(),
        "configuredModelAlgorithmAssociationArn" => String.t() | atom(),
        "createTime" => [non_neg_integer()],
        "creatorAccountId" => String.t() | atom(),
        "description" => String.t() | atom(),
        "membershipIdentifier" => String.t() | atom(),
        "name" => String.t() | atom(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type collaboration_configured_model_algorithm_association_summary() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      create_ml_input_channel_response() :: %{
        "mlInputChannelArn" => String.t() | atom()
      }

  """
  @type create_ml_input_channel_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_trained_model_inference_job_request() :: %{}

  """
  @type get_trained_model_inference_job_request() :: %{}

  @typedoc """

  ## Example:

      list_configured_audience_models_response() :: %{
        "configuredAudienceModels" => list(configured_audience_model_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_configured_audience_models_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_config() :: %{
        "instanceCount" => [integer()],
        "instanceType" => list(any()),
        "volumeSizeInGB" => [integer()]
      }

  """
  @type resource_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_collaboration_configured_model_algorithm_association_response() :: %{
        "collaborationIdentifier" => String.t() | atom(),
        "configuredModelAlgorithmArn" => String.t() | atom(),
        "configuredModelAlgorithmAssociationArn" => String.t() | atom(),
        "createTime" => [non_neg_integer()],
        "creatorAccountId" => String.t() | atom(),
        "description" => String.t() | atom(),
        "membershipIdentifier" => String.t() | atom(),
        "name" => String.t() | atom(),
        "privacyConfiguration" => privacy_configuration(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type get_collaboration_configured_model_algorithm_association_response() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      s3_config_map() :: %{
        "s3Uri" => String.t() | atom()
      }

  """
  @type s3_config_map() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_audience_export_jobs_response() :: %{
        "audienceExportJobs" => list(audience_export_job_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_audience_export_jobs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      incremental_training_data_channel_output() :: %{
        "channelName" => String.t() | atom(),
        "modelName" => String.t() | atom(),
        "versionIdentifier" => String.t() | atom()
      }

  """
  @type incremental_training_data_channel_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_ml_input_channel_data_request() :: %{}

  """
  @type delete_ml_input_channel_data_request() :: %{}

  @typedoc """

  ## Example:

      list_trained_models_response() :: %{
        "nextToken" => String.t() | atom(),
        "trainedModels" => list(trained_model_summary())
      }

  """
  @type list_trained_models_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      logs_configuration_policy() :: %{
        "allowedAccountIds" => list([String.t() | atom()]()),
        "filterPattern" => [String.t() | atom()]
      }

  """
  @type logs_configuration_policy() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_trained_model_response() :: %{
        "trainedModelArn" => String.t() | atom(),
        "versionIdentifier" => String.t() | atom()
      }

  """
  @type create_trained_model_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_trained_model_export_job_request() :: %{
        optional("description") => String.t() | atom(),
        optional("trainedModelVersionIdentifier") => String.t() | atom(),
        required("name") => String.t() | atom(),
        required("outputConfiguration") => trained_model_export_output_configuration()
      }

  """
  @type start_trained_model_export_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      worker_compute_configuration() :: %{
        "number" => [integer()],
        "type" => list(any())
      }

  """
  @type worker_compute_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_configured_audience_model_request() :: %{}

  """
  @type get_configured_audience_model_request() :: %{}

  @typedoc """

  ## Example:

      input_channel() :: %{
        "dataSource" => list(),
        "roleArn" => String.t() | atom()
      }

  """
  @type input_channel() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cancel_trained_model_inference_job_request() :: %{}

  """
  @type cancel_trained_model_inference_job_request() :: %{}

  @typedoc """

  ## Example:

      cancel_trained_model_request() :: %{
        optional("versionIdentifier") => String.t() | atom()
      }

  """
  @type cancel_trained_model_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_trained_model_versions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("status") => list(any())
      }

  """
  @type list_trained_model_versions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_collaboration_trained_models_response() :: %{
        "collaborationTrainedModels" => list(collaboration_trained_model_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_collaboration_trained_models_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      configured_audience_model_summary() :: %{
        "audienceModelArn" => String.t() | atom(),
        "configuredAudienceModelArn" => String.t() | atom(),
        "createTime" => [non_neg_integer()],
        "description" => String.t() | atom(),
        "name" => String.t() | atom(),
        "outputConfig" => configured_audience_model_output_config(),
        "status" => list(any()),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type configured_audience_model_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_collaboration_trained_models_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_collaboration_trained_models_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      destination() :: %{
        "s3Destination" => s3_config_map()
      }

  """
  @type destination() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_configured_audience_model_policy_response() :: %{
        "configuredAudienceModelArn" => String.t() | atom(),
        "configuredAudienceModelPolicy" => String.t() | atom(),
        "policyHash" => String.t() | atom()
      }

  """
  @type get_configured_audience_model_policy_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_collaboration_ml_input_channels_response() :: %{
        "collaborationMLInputChannelsList" => list(collaboration_ml_input_channel_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_collaboration_ml_input_channels_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      privacy_configuration_policies() :: %{
        "trainedModelExports" => trained_model_exports_configuration_policy(),
        "trainedModelInferenceJobs" => trained_model_inference_jobs_configuration_policy(),
        "trainedModels" => trained_models_configuration_policy()
      }

  """
  @type privacy_configuration_policies() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      glue_data_source() :: %{
        "catalogId" => String.t() | atom(),
        "databaseName" => String.t() | atom(),
        "tableName" => String.t() | atom()
      }

  """
  @type glue_data_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      protected_query_s_q_l_parameters() :: %{
        "analysisTemplateArn" => String.t() | atom(),
        "parameters" => map(),
        "queryString" => [String.t() | atom()]
      }

  """
  @type protected_query_s_q_l_parameters() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      collaboration_trained_model_inference_job_summary() :: %{
        "collaborationIdentifier" => String.t() | atom(),
        "configuredModelAlgorithmAssociationArn" => String.t() | atom(),
        "createTime" => [non_neg_integer()],
        "creatorAccountId" => String.t() | atom(),
        "description" => String.t() | atom(),
        "logsStatus" => list(any()),
        "logsStatusDetails" => [String.t() | atom()],
        "membershipIdentifier" => String.t() | atom(),
        "metricsStatus" => list(any()),
        "metricsStatusDetails" => [String.t() | atom()],
        "name" => String.t() | atom(),
        "outputConfiguration" => inference_output_configuration(),
        "status" => list(any()),
        "trainedModelArn" => String.t() | atom(),
        "trainedModelInferenceJobArn" => String.t() | atom(),
        "trainedModelVersionIdentifier" => String.t() | atom(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type collaboration_trained_model_inference_job_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_ml_configuration_request() :: %{}

  """
  @type delete_ml_configuration_request() :: %{}

  @typedoc """

  ## Example:

      put_configured_audience_model_policy_response() :: %{
        "configuredAudienceModelPolicy" => String.t() | atom(),
        "policyHash" => String.t() | atom()
      }

  """
  @type put_configured_audience_model_policy_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_collaboration_ml_input_channel_response() :: %{
        "collaborationIdentifier" => String.t() | atom(),
        "configuredModelAlgorithmAssociations" => list(String.t() | atom()),
        "createTime" => [non_neg_integer()],
        "creatorAccountId" => String.t() | atom(),
        "description" => String.t() | atom(),
        "membershipIdentifier" => String.t() | atom(),
        "mlInputChannelArn" => String.t() | atom(),
        "name" => String.t() | atom(),
        "numberOfRecords" => [float()],
        "retentionInDays" => [integer()],
        "status" => list(any()),
        "statusDetails" => status_details(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type get_collaboration_ml_input_channel_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_configured_model_algorithm_request() :: %{}

  """
  @type get_configured_model_algorithm_request() :: %{}

  @typedoc """

  ## Example:

      model_inference_data_source() :: %{
        "mlInputChannelArn" => String.t() | atom()
      }

  """
  @type model_inference_data_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_training_dataset_request() :: %{
        optional("description") => String.t() | atom(),
        optional("tags") => map(),
        required("name") => String.t() | atom(),
        required("roleArn") => String.t() | atom(),
        required("trainingData") => list(dataset())
      }

  """
  @type create_training_dataset_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_configured_model_algorithm_association_request() :: %{}

  """
  @type delete_configured_model_algorithm_association_request() :: %{}

  @typedoc """

  ## Example:

      training_dataset_summary() :: %{
        "createTime" => [non_neg_integer()],
        "description" => String.t() | atom(),
        "name" => String.t() | atom(),
        "status" => list(any()),
        "trainingDatasetArn" => String.t() | atom(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type training_dataset_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      column_schema() :: %{
        "columnName" => String.t() | atom(),
        "columnTypes" => list(list(any())())
      }

  """
  @type column_schema() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_collaboration_trained_model_inference_jobs_response() :: %{
        "collaborationTrainedModelInferenceJobs" => list(collaboration_trained_model_inference_job_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_collaboration_trained_model_inference_jobs_response() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      get_audience_model_response() :: %{
        "audienceModelArn" => String.t() | atom(),
        "createTime" => [non_neg_integer()],
        "description" => String.t() | atom(),
        "kmsKeyArn" => String.t() | atom(),
        "name" => String.t() | atom(),
        "status" => list(any()),
        "statusDetails" => status_details(),
        "tags" => map(),
        "trainingDataEndTime" => [non_neg_integer()],
        "trainingDataStartTime" => [non_neg_integer()],
        "trainingDatasetArn" => String.t() | atom(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type get_audience_model_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_configured_model_algorithm_request() :: %{}

  """
  @type delete_configured_model_algorithm_request() :: %{}

  @typedoc """

  ## Example:

      dataset_input_config() :: %{
        "dataSource" => data_source(),
        "schema" => list(column_schema())
      }

  """
  @type dataset_input_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_configured_model_algorithm_response() :: %{
        "configuredModelAlgorithmArn" => String.t() | atom()
      }

  """
  @type create_configured_model_algorithm_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_configured_audience_model_policy_request() :: %{
        optional("policyExistenceCondition") => list(any()),
        optional("previousPolicyHash") => String.t() | atom(),
        required("configuredAudienceModelPolicy") => String.t() | atom()
      }

  """
  @type put_configured_audience_model_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      data_source() :: %{
        "glueDataSource" => glue_data_source()
      }

  """
  @type data_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      audience_size_config() :: %{
        "audienceSizeBins" => list(integer()),
        "audienceSizeType" => list(any())
      }

  """
  @type audience_size_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      audience_destination() :: %{
        "s3Destination" => s3_config_map()
      }

  """
  @type audience_destination() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_trained_model_inference_job_response() :: %{
        "configuredModelAlgorithmAssociationArn" => String.t() | atom(),
        "containerExecutionParameters" => inference_container_execution_parameters(),
        "createTime" => [non_neg_integer()],
        "dataSource" => model_inference_data_source(),
        "description" => String.t() | atom(),
        "environment" => map(),
        "inferenceContainerImageDigest" => [String.t() | atom()],
        "kmsKeyArn" => String.t() | atom(),
        "logsStatus" => list(any()),
        "logsStatusDetails" => [String.t() | atom()],
        "membershipIdentifier" => String.t() | atom(),
        "metricsStatus" => list(any()),
        "metricsStatusDetails" => [String.t() | atom()],
        "name" => String.t() | atom(),
        "outputConfiguration" => inference_output_configuration(),
        "resourceConfig" => inference_resource_config(),
        "status" => list(any()),
        "statusDetails" => status_details(),
        "tags" => map(),
        "trainedModelArn" => String.t() | atom(),
        "trainedModelInferenceJobArn" => String.t() | atom(),
        "trainedModelVersionIdentifier" => String.t() | atom(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type get_trained_model_inference_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      inference_container_execution_parameters() :: %{
        "maxPayloadInMB" => [integer()]
      }

  """
  @type inference_container_execution_parameters() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      audience_generation_job_data_source() :: %{
        "dataSource" => s3_config_map(),
        "roleArn" => String.t() | atom(),
        "sqlComputeConfiguration" => list(),
        "sqlParameters" => protected_query_s_q_l_parameters()
      }

  """
  @type audience_generation_job_data_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_audience_generation_jobs_request() :: %{
        optional("collaborationId") => String.t() | atom(),
        optional("configuredAudienceModelArn") => String.t() | atom(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_audience_generation_jobs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_collaboration_configured_model_algorithm_associations_response() :: %{
        "collaborationConfiguredModelAlgorithmAssociations" => list(collaboration_configured_model_algorithm_association_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_collaboration_configured_model_algorithm_associations_response() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      get_configured_model_algorithm_response() :: %{
        "configuredModelAlgorithmArn" => String.t() | atom(),
        "createTime" => [non_neg_integer()],
        "description" => String.t() | atom(),
        "inferenceContainerConfig" => inference_container_config(),
        "kmsKeyArn" => String.t() | atom(),
        "name" => String.t() | atom(),
        "roleArn" => String.t() | atom(),
        "tags" => map(),
        "trainingContainerConfig" => container_config(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type get_configured_model_algorithm_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      trained_model_export_output_configuration() :: %{
        "members" => list(trained_model_export_receiver_member())
      }

  """
  @type trained_model_export_output_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_audience_generation_jobs_response() :: %{
        "audienceGenerationJobs" => list(audience_generation_job_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_audience_generation_jobs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_audience_models_response() :: %{
        "audienceModels" => list(audience_model_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_audience_models_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_audience_export_jobs_request() :: %{
        optional("audienceGenerationJobArn") => String.t() | atom(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_audience_export_jobs_request() :: %{(String.t() | atom()) => any()}

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
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_trained_models_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_configured_audience_model_policy_request() :: %{}

  """
  @type get_configured_audience_model_policy_request() :: %{}

  @typedoc """

  ## Example:

      update_configured_audience_model_request() :: %{
        optional("audienceModelArn") => String.t() | atom(),
        optional("audienceSizeConfig") => audience_size_config(),
        optional("description") => String.t() | atom(),
        optional("minMatchingSeedSize") => integer(),
        optional("outputConfig") => configured_audience_model_output_config(),
        optional("sharedAudienceMetrics") => list(list(any())())
      }

  """
  @type update_configured_audience_model_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_trained_model_output_request() :: %{
        optional("versionIdentifier") => String.t() | atom()
      }

  """
  @type delete_trained_model_output_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_audience_generation_job_request() :: %{}

  """
  @type get_audience_generation_job_request() :: %{}

  @typedoc """

  ## Example:

      list_collaboration_trained_model_inference_jobs_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("trainedModelArn") => String.t() | atom(),
        optional("trainedModelVersionIdentifier") => String.t() | atom()
      }

  """
  @type list_collaboration_trained_model_inference_jobs_request() :: %{
          (String.t() | atom()) => any()
        }

  @type cancel_trained_model_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type cancel_trained_model_inference_job_errors() ::
          throttling_exception()
          | validation_exception()
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
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_ml_input_channel_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_trained_model_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | internal_service_exception()

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
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_ml_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type delete_ml_input_channel_data_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_trained_model_output_errors() ::
          throttling_exception()
          | validation_exception()
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
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type get_collaboration_ml_input_channel_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type get_collaboration_trained_model_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type get_configured_audience_model_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type get_configured_audience_model_policy_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type get_configured_model_algorithm_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type get_configured_model_algorithm_association_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type get_ml_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type get_ml_input_channel_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type get_trained_model_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type get_trained_model_inference_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type get_training_dataset_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type list_audience_export_jobs_errors() :: validation_exception() | access_denied_exception()

  @type list_audience_generation_jobs_errors() ::
          validation_exception() | access_denied_exception()

  @type list_audience_models_errors() :: validation_exception() | access_denied_exception()

  @type list_collaboration_configured_model_algorithm_associations_errors() ::
          throttling_exception() | validation_exception() | access_denied_exception()

  @type list_collaboration_ml_input_channels_errors() ::
          throttling_exception() | validation_exception() | access_denied_exception()

  @type list_collaboration_trained_model_export_jobs_errors() ::
          throttling_exception() | validation_exception() | access_denied_exception()

  @type list_collaboration_trained_model_inference_jobs_errors() ::
          throttling_exception() | validation_exception() | access_denied_exception()

  @type list_collaboration_trained_models_errors() ::
          throttling_exception() | validation_exception() | access_denied_exception()

  @type list_configured_audience_models_errors() ::
          validation_exception() | access_denied_exception()

  @type list_configured_model_algorithm_associations_errors() ::
          throttling_exception() | validation_exception() | access_denied_exception()

  @type list_configured_model_algorithms_errors() ::
          validation_exception() | access_denied_exception()

  @type list_ml_input_channels_errors() ::
          throttling_exception() | validation_exception() | access_denied_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type list_trained_model_inference_jobs_errors() ::
          throttling_exception() | validation_exception() | access_denied_exception()

  @type list_trained_model_versions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_trained_models_errors() ::
          throttling_exception() | validation_exception() | access_denied_exception()

  @type list_training_datasets_errors() :: validation_exception() | access_denied_exception()

  @type put_configured_audience_model_policy_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type put_ml_configuration_errors() ::
          throttling_exception() | validation_exception() | access_denied_exception()

  @type start_audience_export_job_errors() ::
          validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type start_audience_generation_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type start_trained_model_export_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type start_trained_model_inference_job_errors() ::
          throttling_exception()
          | validation_exception()
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
          String.t() | atom(),
          String.t() | atom(),
          cancel_trained_model_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
    custom_headers = []

    {query_params, input} =
      [
        {"versionIdentifier", "versionIdentifier"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
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
          String.t() | atom(),
          String.t() | atom(),
          cancel_trained_model_inference_job_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
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
          | {:error, term()}
          | {:error, create_audience_model_errors()}
  def create_audience_model(%Client{} = client, input, options \\ []) do
    url_path = "/audience-model"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
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
          | {:error, term()}
          | {:error, create_configured_audience_model_errors()}
  def create_configured_audience_model(%Client{} = client, input, options \\ []) do
    url_path = "/configured-audience-model"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
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
          | {:error, term()}
          | {:error, create_configured_model_algorithm_errors()}
  def create_configured_model_algorithm(%Client{} = client, input, options \\ []) do
    url_path = "/configured-model-algorithms"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
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
          String.t() | atom(),
          create_configured_model_algorithm_association_request(),
          list()
        ) ::
          {:ok, create_configured_model_algorithm_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Provides the information to create an ML input channel.

  An ML input channel is the result of a query that can be used for ML modeling.
  """
  @spec create_ml_input_channel(
          map(),
          String.t() | atom(),
          create_ml_input_channel_request(),
          list()
        ) ::
          {:ok, create_ml_input_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_ml_input_channel_errors()}
  def create_ml_input_channel(%Client{} = client, membership_identifier, input, options \\ []) do
    url_path = "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/ml-input-channels"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a trained model from an associated configured model algorithm using data
  from any member of the collaboration.
  """
  @spec create_trained_model(map(), String.t() | atom(), create_trained_model_request(), list()) ::
          {:ok, create_trained_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_trained_model_errors()}
  def create_trained_model(%Client{} = client, membership_identifier, input, options \\ []) do
    url_path = "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/trained-models"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
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
          | {:error, term()}
          | {:error, create_training_dataset_errors()}
  def create_training_dataset(%Client{} = client, input, options \\ []) do
    url_path = "/training-dataset"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
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
          String.t() | atom(),
          delete_audience_generation_job_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_audience_generation_job_errors()}
  def delete_audience_generation_job(
        %Client{} = client,
        audience_generation_job_arn,
        input,
        options \\ []
      ) do
    url_path = "/audience-generation-job/#{AWS.Util.encode_uri(audience_generation_job_arn)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
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
  @spec delete_audience_model(map(), String.t() | atom(), delete_audience_model_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_audience_model_errors()}
  def delete_audience_model(%Client{} = client, audience_model_arn, input, options \\ []) do
    url_path = "/audience-model/#{AWS.Util.encode_uri(audience_model_arn)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
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
          String.t() | atom(),
          delete_configured_audience_model_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_configured_audience_model_errors()}
  def delete_configured_audience_model(
        %Client{} = client,
        configured_audience_model_arn,
        input,
        options \\ []
      ) do
    url_path = "/configured-audience-model/#{AWS.Util.encode_uri(configured_audience_model_arn)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
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
          String.t() | atom(),
          delete_configured_audience_model_policy_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
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
          String.t() | atom(),
          delete_configured_model_algorithm_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
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
          String.t() | atom(),
          String.t() | atom(),
          delete_configured_model_algorithm_association_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes a ML modeling configuration.
  """
  @spec delete_ml_configuration(
          map(),
          String.t() | atom(),
          delete_ml_configuration_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_ml_configuration_errors()}
  def delete_ml_configuration(%Client{} = client, membership_identifier, input, options \\ []) do
    url_path = "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/ml-configurations"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
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
          String.t() | atom(),
          String.t() | atom(),
          delete_ml_input_channel_data_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes the model artifacts stored by the service.
  """
  @spec delete_trained_model_output(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_trained_model_output_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
    custom_headers = []

    {query_params, input} =
      [
        {"versionIdentifier", "versionIdentifier"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
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
  @spec delete_training_dataset(
          map(),
          String.t() | atom(),
          delete_training_dataset_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_training_dataset_errors()}
  def delete_training_dataset(%Client{} = client, training_dataset_arn, input, options \\ []) do
    url_path = "/training-dataset/#{AWS.Util.encode_uri(training_dataset_arn)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Returns information about an audience generation job.
  """
  @spec get_audience_generation_job(map(), String.t() | atom(), list()) ::
          {:ok, get_audience_generation_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  @spec get_audience_model(map(), String.t() | atom(), list()) ::
          {:ok, get_audience_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
          String.t() | atom(),
          String.t() | atom(),
          list()
        ) ::
          {:ok, get_collaboration_configured_model_algorithm_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  @spec get_collaboration_ml_input_channel(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          list()
        ) ::
          {:ok, get_collaboration_ml_input_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  @spec get_collaboration_trained_model(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_collaboration_trained_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_collaboration_trained_model_errors()}
  def get_collaboration_trained_model(
        %Client{} = client,
        collaboration_identifier,
        trained_model_arn,
        version_identifier \\ nil,
        options \\ []
      ) do
    url_path =
      "/collaborations/#{AWS.Util.encode_uri(collaboration_identifier)}/trained-models/#{AWS.Util.encode_uri(trained_model_arn)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(version_identifier) do
        [{"versionIdentifier", version_identifier} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about a specified configured audience model.
  """
  @spec get_configured_audience_model(map(), String.t() | atom(), list()) ::
          {:ok, get_configured_audience_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  @spec get_configured_audience_model_policy(map(), String.t() | atom(), list()) ::
          {:ok, get_configured_audience_model_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  @spec get_configured_model_algorithm(map(), String.t() | atom(), list()) ::
          {:ok, get_configured_model_algorithm_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  @spec get_configured_model_algorithm_association(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          list()
        ) ::
          {:ok, get_configured_model_algorithm_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  @spec get_ml_configuration(map(), String.t() | atom(), list()) ::
          {:ok, get_ml_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  @spec get_ml_input_channel(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_ml_input_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  @spec get_trained_model(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_trained_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_trained_model_errors()}
  def get_trained_model(
        %Client{} = client,
        membership_identifier,
        trained_model_arn,
        version_identifier \\ nil,
        options \\ []
      ) do
    url_path =
      "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/trained-models/#{AWS.Util.encode_uri(trained_model_arn)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(version_identifier) do
        [{"versionIdentifier", version_identifier} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about a trained model inference job.
  """
  @spec get_trained_model_inference_job(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_trained_model_inference_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  @spec get_training_dataset(map(), String.t() | atom(), list()) ::
          {:ok, get_training_dataset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_audience_export_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_audience_generation_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  @spec list_audience_models(map(), String.t() | atom() | nil, String.t() | atom() | nil, list()) ::
          {:ok, list_audience_models_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_collaboration_configured_model_algorithm_associations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_collaboration_ml_input_channels_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_collaboration_trained_model_export_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_collaboration_trained_model_export_jobs_errors()}
  def list_collaboration_trained_model_export_jobs(
        %Client{} = client,
        collaboration_identifier,
        trained_model_arn,
        max_results \\ nil,
        next_token \\ nil,
        trained_model_version_identifier \\ nil,
        options \\ []
      ) do
    url_path =
      "/collaborations/#{AWS.Util.encode_uri(collaboration_identifier)}/trained-models/#{AWS.Util.encode_uri(trained_model_arn)}/export-jobs"

    headers = []
    query_params = []

    query_params =
      if !is_nil(trained_model_version_identifier) do
        [{"trainedModelVersionIdentifier", trained_model_version_identifier} | query_params]
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
  Returns a list of trained model inference jobs in a specified collaboration.
  """
  @spec list_collaboration_trained_model_inference_jobs(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_collaboration_trained_model_inference_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_collaboration_trained_model_inference_jobs_errors()}
  def list_collaboration_trained_model_inference_jobs(
        %Client{} = client,
        collaboration_identifier,
        max_results \\ nil,
        next_token \\ nil,
        trained_model_arn \\ nil,
        trained_model_version_identifier \\ nil,
        options \\ []
      ) do
    url_path =
      "/collaborations/#{AWS.Util.encode_uri(collaboration_identifier)}/trained-model-inference-jobs"

    headers = []
    query_params = []

    query_params =
      if !is_nil(trained_model_version_identifier) do
        [{"trainedModelVersionIdentifier", trained_model_version_identifier} | query_params]
      else
        query_params
      end

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
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_collaboration_trained_models_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  @spec list_configured_audience_models(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_configured_audience_models_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_configured_model_algorithm_associations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  @spec list_configured_model_algorithms(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_configured_model_algorithms_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  @spec list_ml_input_channels(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_ml_input_channels_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  @spec list_tags_for_resource(map(), String.t() | atom(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_trained_model_inference_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_trained_model_inference_jobs_errors()}
  def list_trained_model_inference_jobs(
        %Client{} = client,
        membership_identifier,
        max_results \\ nil,
        next_token \\ nil,
        trained_model_arn \\ nil,
        trained_model_version_identifier \\ nil,
        options \\ []
      ) do
    url_path =
      "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/trained-model-inference-jobs"

    headers = []
    query_params = []

    query_params =
      if !is_nil(trained_model_version_identifier) do
        [{"trainedModelVersionIdentifier", trained_model_version_identifier} | query_params]
      else
        query_params
      end

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
  Returns a list of trained model versions for a specified trained model.

  This operation allows you to view all versions of a trained model, including
  information about their status and creation details. You can use this to track
  the evolution of your trained models and select specific versions for inference
  or further training.
  """
  @spec list_trained_model_versions(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_trained_model_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_trained_model_versions_errors()}
  def list_trained_model_versions(
        %Client{} = client,
        membership_identifier,
        trained_model_arn,
        max_results \\ nil,
        next_token \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path =
      "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/trained-models/#{AWS.Util.encode_uri(trained_model_arn)}/versions"

    headers = []
    query_params = []

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
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
  @spec list_trained_models(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_trained_models_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  @spec list_training_datasets(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_training_datasets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
          String.t() | atom(),
          put_configured_audience_model_policy_request(),
          list()
        ) ::
          {:ok, put_configured_audience_model_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Assigns information about an ML configuration.
  """
  @spec put_ml_configuration(map(), String.t() | atom(), put_ml_configuration_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_ml_configuration_errors()}
  def put_ml_configuration(%Client{} = client, membership_identifier, input, options \\ []) do
    url_path = "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/ml-configurations"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Export an audience of a specified size after you have generated an audience.
  """
  @spec start_audience_export_job(map(), start_audience_export_job_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_audience_export_job_errors()}
  def start_audience_export_job(%Client{} = client, input, options \\ []) do
    url_path = "/audience-export-job"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
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
          | {:error, term()}
          | {:error, start_audience_generation_job_errors()}
  def start_audience_generation_job(%Client{} = client, input, options \\ []) do
    url_path = "/audience-generation-job"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
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
          String.t() | atom(),
          String.t() | atom(),
          start_trained_model_export_job_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
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
          String.t() | atom(),
          start_trained_model_inference_job_request(),
          list()
        ) ::
          {:ok, start_trained_model_inference_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Adds metadata tags to a specified resource.
  """
  @spec tag_resource(map(), String.t() | atom(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Removes metadata tags from a specified resource.
  """
  @spec untag_resource(map(), String.t() | atom(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    custom_headers = []

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
      custom_headers ++ headers,
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
          String.t() | atom(),
          update_configured_audience_model_request(),
          list()
        ) ::
          {:ok, update_configured_audience_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_configured_audience_model_errors()}
  def update_configured_audience_model(
        %Client{} = client,
        configured_audience_model_arn,
        input,
        options \\ []
      ) do
    url_path = "/configured-audience-model/#{AWS.Util.encode_uri(configured_audience_model_arn)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end
end
