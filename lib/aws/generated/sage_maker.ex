# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SageMaker do
  @moduledoc """
  Provides APIs for creating and managing SageMaker resources.

  Other Resources:

    *

  [SageMaker Developer Guide](https://docs.aws.amazon.com/sagemaker/latest/dg/whatis.html#first-time-user)

    *

  [Amazon Augmented AI Runtime API
  Reference](https://docs.aws.amazon.com/augmented-ai/2019-11-07/APIReference/Welcome.html)
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      docker_settings() :: %{
        "EnableDockerAccess" => list(any()),
        "VpcOnlyTrustedAccounts" => list(String.t()())
      }
      
  """
  @type docker_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      visibility_conditions() :: %{
        "Key" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type visibility_conditions() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_hub_request() :: %{
        required("HubName") => String.t()
      }
      
  """
  @type describe_hub_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      auto_ml_output_data_config() :: %{
        "KmsKeyId" => String.t(),
        "S3OutputPath" => String.t()
      }
      
  """
  @type auto_ml_output_data_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_context_request() :: %{
        optional("Description") => String.t(),
        optional("Properties") => map(),
        optional("PropertiesToRemove") => list(String.t()()),
        required("ContextName") => String.t()
      }
      
  """
  @type update_context_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      action_summary() :: %{
        "ActionArn" => String.t(),
        "ActionName" => String.t(),
        "ActionType" => String.t(),
        "CreationTime" => non_neg_integer(),
        "LastModifiedTime" => non_neg_integer(),
        "Source" => action_source(),
        "Status" => list(any())
      }
      
  """
  @type action_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_aliases_response() :: %{
        "NextToken" => String.t(),
        "SageMakerImageVersionAliases" => list(String.t()())
      }
      
  """
  @type list_aliases_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      transform_data_source() :: %{
        "S3DataSource" => transform_s3_data_source()
      }
      
  """
  @type transform_data_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_edge_deployment_stage_request() :: %{
        required("EdgeDeploymentPlanName") => String.t(),
        required("Stages") => list(deployment_stage()())
      }
      
  """
  @type create_edge_deployment_stage_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_experiments_response() :: %{
        "ExperimentSummaries" => list(experiment_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_experiments_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      production_variant_serverless_update_config() :: %{
        "MaxConcurrency" => integer(),
        "ProvisionedConcurrency" => integer()
      }
      
  """
  @type production_variant_serverless_update_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_artifact_request() :: %{
        optional("ArtifactName") => String.t(),
        optional("Properties") => map(),
        optional("PropertiesToRemove") => list(String.t()()),
        required("ArtifactArn") => String.t()
      }
      
  """
  @type update_artifact_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_inference_experiment_response() :: %{
        "InferenceExperimentArn" => String.t()
      }
      
  """
  @type stop_inference_experiment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      best_objective_not_improving() :: %{
        "MaxNumberOfTrainingJobsNotImproving" => integer()
      }
      
  """
  @type best_objective_not_improving() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_cluster_request() :: %{
        required("ClusterName") => String.t()
      }
      
  """
  @type describe_cluster_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_trial_request() :: %{
        required("TrialName") => String.t()
      }
      
  """
  @type describe_trial_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_aliases_request() :: %{
        optional("Alias") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("Version") => integer(),
        required("ImageName") => String.t()
      }
      
  """
  @type list_aliases_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_resource_catalogs_request() :: %{
        optional("CreationTimeAfter") => non_neg_integer(),
        optional("CreationTimeBefore") => non_neg_integer(),
        optional("MaxResults") => integer(),
        optional("NameContains") => String.t(),
        optional("NextToken") => String.t(),
        optional("SortBy") => list(any()),
        optional("SortOrder") => list(any())
      }
      
  """
  @type list_resource_catalogs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_model_quality_job_definition_response() :: %{
        "CreationTime" => non_neg_integer(),
        "JobDefinitionArn" => String.t(),
        "JobDefinitionName" => String.t(),
        "JobResources" => monitoring_resources(),
        "ModelQualityAppSpecification" => model_quality_app_specification(),
        "ModelQualityBaselineConfig" => model_quality_baseline_config(),
        "ModelQualityJobInput" => model_quality_job_input(),
        "ModelQualityJobOutputConfig" => monitoring_output_config(),
        "NetworkConfig" => monitoring_network_config(),
        "RoleArn" => String.t(),
        "StoppingCondition" => monitoring_stopping_condition()
      }
      
  """
  @type describe_model_quality_job_definition_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_scaling_configuration_recommendation_request() :: %{
        optional("EndpointName") => String.t(),
        optional("RecommendationId") => String.t(),
        optional("ScalingPolicyObjective") => scaling_policy_objective(),
        optional("TargetCpuUtilizationPerCore") => integer(),
        required("InferenceRecommendationsJobName") => String.t()
      }
      
  """
  @type get_scaling_configuration_recommendation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      model_latency_threshold() :: %{
        "Percentile" => String.t(),
        "ValueInMilliseconds" => integer()
      }
      
  """
  @type model_latency_threshold() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_experiment_response() :: %{
        "ExperimentArn" => String.t()
      }
      
  """
  @type delete_experiment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      text_generation_job_config() :: %{
        "BaseModelName" => String.t(),
        "CompletionCriteria" => auto_ml_job_completion_criteria(),
        "ModelAccessConfig" => model_access_config(),
        "TextGenerationHyperParameters" => map()
      }
      
  """
  @type text_generation_job_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_hub_request() :: %{
        optional("HubDescription") => String.t(),
        optional("HubDisplayName") => String.t(),
        optional("HubSearchKeywords") => list(String.t()()),
        required("HubName") => String.t()
      }
      
  """
  @type update_hub_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_apps_response() :: %{
        "Apps" => list(app_details()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_apps_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      inference_specification() :: %{
        "Containers" => list(model_package_container_definition()()),
        "SupportedContentTypes" => list(String.t()()),
        "SupportedRealtimeInferenceInstanceTypes" => list(list(any())()),
        "SupportedResponseMIMETypes" => list(String.t()()),
        "SupportedTransformInstanceTypes" => list(list(any())())
      }
      
  """
  @type inference_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      time_series_forecasting_job_config() :: %{
        "CandidateGenerationConfig" => candidate_generation_config(),
        "CompletionCriteria" => auto_ml_job_completion_criteria(),
        "FeatureSpecificationS3Uri" => String.t(),
        "ForecastFrequency" => String.t(),
        "ForecastHorizon" => integer(),
        "ForecastQuantiles" => list(String.t()()),
        "HolidayConfig" => list(holiday_config_attributes()()),
        "TimeSeriesConfig" => time_series_config(),
        "Transformations" => time_series_transformations()
      }
      
  """
  @type time_series_forecasting_job_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_search_suggestions_request() :: %{
        optional("SuggestionQuery") => suggestion_query(),
        required("Resource") => list(any())
      }
      
  """
  @type get_search_suggestions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_inference_component_input() :: %{
        optional("Tags") => list(tag()()),
        required("EndpointName") => String.t(),
        required("InferenceComponentName") => String.t(),
        required("RuntimeConfig") => inference_component_runtime_config(),
        required("Specification") => inference_component_specification(),
        required("VariantName") => String.t()
      }
      
  """
  @type create_inference_component_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      hyperband_strategy_config() :: %{
        "MaxResource" => integer(),
        "MinResource" => integer()
      }
      
  """
  @type hyperband_strategy_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_model_card_response() :: %{
        "ModelCardArn" => String.t()
      }
      
  """
  @type update_model_card_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_inference_experiment_request() :: %{
        optional("DataStorageConfig") => inference_experiment_data_storage_config(),
        optional("Description") => String.t(),
        optional("ModelVariants") => list(model_variant_config()()),
        optional("Schedule") => inference_experiment_schedule(),
        optional("ShadowModeConfig") => shadow_mode_config(),
        required("Name") => String.t()
      }
      
  """
  @type update_inference_experiment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      hub_content_dependency() :: %{
        "DependencyCopyPath" => String.t(),
        "DependencyOriginPath" => String.t()
      }
      
  """
  @type hub_content_dependency() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      inference_component_runtime_config_summary() :: %{
        "CurrentCopyCount" => integer(),
        "DesiredCopyCount" => integer()
      }
      
  """
  @type inference_component_runtime_config_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_space_request() :: %{
        required("DomainId") => String.t(),
        required("SpaceName") => String.t()
      }
      
  """
  @type delete_space_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      hyper_parameter_tuning_job_consumed_resources() :: %{
        "RuntimeInSeconds" => integer()
      }
      
  """
  @type hyper_parameter_tuning_job_consumed_resources() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_transform_job_request() :: %{
        required("TransformJobName") => String.t()
      }
      
  """
  @type stop_transform_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_human_task_ui_request() :: %{
        required("HumanTaskUiName") => String.t()
      }
      
  """
  @type delete_human_task_ui_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      notebook_instance_summary() :: %{
        "AdditionalCodeRepositories" => list(String.t()()),
        "CreationTime" => non_neg_integer(),
        "DefaultCodeRepository" => String.t(),
        "InstanceType" => list(any()),
        "LastModifiedTime" => non_neg_integer(),
        "NotebookInstanceArn" => String.t(),
        "NotebookInstanceLifecycleConfigName" => String.t(),
        "NotebookInstanceName" => String.t(),
        "NotebookInstanceStatus" => list(any()),
        "Url" => String.t()
      }
      
  """
  @type notebook_instance_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_endpoints_input() :: %{
        optional("CreationTimeAfter") => non_neg_integer(),
        optional("CreationTimeBefore") => non_neg_integer(),
        optional("LastModifiedTimeAfter") => non_neg_integer(),
        optional("LastModifiedTimeBefore") => non_neg_integer(),
        optional("MaxResults") => integer(),
        optional("NameContains") => String.t(),
        optional("NextToken") => String.t(),
        optional("SortBy") => list(any()),
        optional("SortOrder") => list(any()),
        optional("StatusEquals") => list(any())
      }
      
  """
  @type list_endpoints_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_inference_component_output() :: %{
        "CreationTime" => non_neg_integer(),
        "EndpointArn" => String.t(),
        "EndpointName" => String.t(),
        "FailureReason" => String.t(),
        "InferenceComponentArn" => String.t(),
        "InferenceComponentName" => String.t(),
        "InferenceComponentStatus" => list(any()),
        "LastModifiedTime" => non_neg_integer(),
        "RuntimeConfig" => inference_component_runtime_config_summary(),
        "Specification" => inference_component_specification_summary(),
        "VariantName" => String.t()
      }
      
  """
  @type describe_inference_component_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_inference_experiment_response() :: %{
        "Arn" => String.t(),
        "CompletionTime" => non_neg_integer(),
        "CreationTime" => non_neg_integer(),
        "DataStorageConfig" => inference_experiment_data_storage_config(),
        "Description" => String.t(),
        "EndpointMetadata" => endpoint_metadata(),
        "KmsKey" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "ModelVariants" => list(model_variant_config_summary()()),
        "Name" => String.t(),
        "RoleArn" => String.t(),
        "Schedule" => inference_experiment_schedule(),
        "ShadowModeConfig" => shadow_mode_config(),
        "Status" => list(any()),
        "StatusReason" => String.t(),
        "Type" => list(any())
      }
      
  """
  @type describe_inference_experiment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_user_profile_request() :: %{
        optional("UserSettings") => user_settings(),
        required("DomainId") => String.t(),
        required("UserProfileName") => String.t()
      }
      
  """
  @type update_user_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      metric_data() :: %{
        "MetricName" => String.t(),
        "Timestamp" => non_neg_integer(),
        "Value" => float()
      }
      
  """
  @type metric_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_devices_request() :: %{
        optional("DeviceFleetName") => String.t(),
        optional("LatestHeartbeatAfter") => non_neg_integer(),
        optional("MaxResults") => integer(),
        optional("ModelName") => String.t(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_devices_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_endpoint_config_output() :: %{
        "AsyncInferenceConfig" => async_inference_config(),
        "CreationTime" => non_neg_integer(),
        "DataCaptureConfig" => data_capture_config(),
        "EnableNetworkIsolation" => boolean(),
        "EndpointConfigArn" => String.t(),
        "EndpointConfigName" => String.t(),
        "ExecutionRoleArn" => String.t(),
        "ExplainerConfig" => explainer_config(),
        "KmsKeyId" => String.t(),
        "ProductionVariants" => list(production_variant()()),
        "ShadowProductionVariants" => list(production_variant()()),
        "VpcConfig" => vpc_config()
      }
      
  """
  @type describe_endpoint_config_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_domain_request() :: %{
        optional("AppNetworkAccessType") => list(any()),
        optional("AppSecurityGroupManagement") => list(any()),
        optional("DefaultSpaceSettings") => default_space_settings(),
        optional("DefaultUserSettings") => user_settings(),
        optional("DomainSettingsForUpdate") => domain_settings_for_update(),
        optional("SubnetIds") => list(String.t()()),
        required("DomainId") => String.t()
      }
      
  """
  @type update_domain_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resolved_attributes() :: %{
        "AutoMLJobObjective" => auto_ml_job_objective(),
        "CompletionCriteria" => auto_ml_job_completion_criteria(),
        "ProblemType" => list(any())
      }
      
  """
  @type resolved_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_user_profiles_response() :: %{
        "NextToken" => String.t(),
        "UserProfiles" => list(user_profile_details()())
      }
      
  """
  @type list_user_profiles_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_limits() :: %{
        "MaxNumberOfTrainingJobs" => integer(),
        "MaxParallelTrainingJobs" => integer(),
        "MaxRuntimeInSeconds" => integer()
      }
      
  """
  @type resource_limits() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_not_found() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ui_config() :: %{
        "HumanTaskUiArn" => String.t(),
        "UiTemplateS3Uri" => String.t()
      }
      
  """
  @type ui_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_processing_job_response() :: %{
        "AppSpecification" => app_specification(),
        "AutoMLJobArn" => String.t(),
        "CreationTime" => non_neg_integer(),
        "Environment" => map(),
        "ExitMessage" => String.t(),
        "ExperimentConfig" => experiment_config(),
        "FailureReason" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "MonitoringScheduleArn" => String.t(),
        "NetworkConfig" => network_config(),
        "ProcessingEndTime" => non_neg_integer(),
        "ProcessingInputs" => list(processing_input()()),
        "ProcessingJobArn" => String.t(),
        "ProcessingJobName" => String.t(),
        "ProcessingJobStatus" => list(any()),
        "ProcessingOutputConfig" => processing_output_config(),
        "ProcessingResources" => processing_resources(),
        "ProcessingStartTime" => non_neg_integer(),
        "RoleArn" => String.t(),
        "StoppingCondition" => processing_stopping_condition(),
        "TrainingJobArn" => String.t()
      }
      
  """
  @type describe_processing_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      hub_info() :: %{
        "CreationTime" => non_neg_integer(),
        "HubArn" => String.t(),
        "HubDescription" => String.t(),
        "HubDisplayName" => String.t(),
        "HubName" => String.t(),
        "HubSearchKeywords" => list(String.t()()),
        "HubStatus" => list(any()),
        "LastModifiedTime" => non_neg_integer()
      }
      
  """
  @type hub_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      monitoring_stopping_condition() :: %{
        "MaxRuntimeInSeconds" => integer()
      }
      
  """
  @type monitoring_stopping_condition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_presigned_mlflow_tracking_server_url_response() :: %{
        "AuthorizedUrl" => String.t()
      }
      
  """
  @type create_presigned_mlflow_tracking_server_url_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_inference_recommendations_job_response() :: %{
        "CompletionTime" => non_neg_integer(),
        "CreationTime" => non_neg_integer(),
        "EndpointPerformances" => list(endpoint_performance()()),
        "FailureReason" => String.t(),
        "InferenceRecommendations" => list(inference_recommendation()()),
        "InputConfig" => recommendation_job_input_config(),
        "JobArn" => String.t(),
        "JobDescription" => String.t(),
        "JobName" => String.t(),
        "JobType" => list(any()),
        "LastModifiedTime" => non_neg_integer(),
        "RoleArn" => String.t(),
        "Status" => list(any()),
        "StoppingConditions" => recommendation_job_stopping_conditions()
      }
      
  """
  @type describe_inference_recommendations_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      monitoring_cluster_config() :: %{
        "InstanceCount" => integer(),
        "InstanceType" => list(any()),
        "VolumeKmsKeyId" => String.t(),
        "VolumeSizeInGB" => integer()
      }
      
  """
  @type monitoring_cluster_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      integer_parameter_range() :: %{
        "MaxValue" => String.t(),
        "MinValue" => String.t(),
        "Name" => String.t(),
        "ScalingType" => list(any())
      }
      
  """
  @type integer_parameter_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_pipeline_execution_request() :: %{
        optional("ParallelismConfiguration") => parallelism_configuration(),
        optional("PipelineExecutionDescription") => String.t(),
        optional("PipelineExecutionDisplayName") => String.t(),
        required("PipelineExecutionArn") => String.t()
      }
      
  """
  @type update_pipeline_execution_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throughput_config_update() :: %{
        "ProvisionedReadCapacityUnits" => integer(),
        "ProvisionedWriteCapacityUnits" => integer(),
        "ThroughputMode" => list(any())
      }
      
  """
  @type throughput_config_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_app_image_config_response() :: %{
        "AppImageConfigArn" => String.t()
      }
      
  """
  @type update_app_image_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_presigned_mlflow_tracking_server_url_request() :: %{
        optional("ExpiresInSeconds") => integer(),
        optional("SessionExpirationDurationInSeconds") => integer(),
        required("TrackingServerName") => String.t()
      }
      
  """
  @type create_presigned_mlflow_tracking_server_url_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      model_data_quality() :: %{
        "Constraints" => metrics_source(),
        "Statistics" => metrics_source()
      }
      
  """
  @type model_data_quality() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      experiment_summary() :: %{
        "CreationTime" => non_neg_integer(),
        "DisplayName" => String.t(),
        "ExperimentArn" => String.t(),
        "ExperimentName" => String.t(),
        "ExperimentSource" => experiment_source(),
        "LastModifiedTime" => non_neg_integer()
      }
      
  """
  @type experiment_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_pipeline_definition_for_execution_response() :: %{
        "CreationTime" => non_neg_integer(),
        "PipelineDefinition" => String.t()
      }
      
  """
  @type describe_pipeline_definition_for_execution_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      labeling_job_output() :: %{
        "FinalActiveLearningModelArn" => String.t(),
        "OutputDatasetS3Uri" => String.t()
      }
      
  """
  @type labeling_job_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      model_card_export_artifacts() :: %{
        "S3ExportArtifacts" => String.t()
      }
      
  """
  @type model_card_export_artifacts() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_model_explainability_job_definitions_request() :: %{
        optional("CreationTimeAfter") => non_neg_integer(),
        optional("CreationTimeBefore") => non_neg_integer(),
        optional("EndpointName") => String.t(),
        optional("MaxResults") => integer(),
        optional("NameContains") => String.t(),
        optional("NextToken") => String.t(),
        optional("SortBy") => list(any()),
        optional("SortOrder") => list(any())
      }
      
  """
  @type list_model_explainability_job_definitions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_app_image_config_response() :: %{
        "AppImageConfigArn" => String.t()
      }
      
  """
  @type create_app_image_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      edge_deployment_plan_summary() :: %{
        "CreationTime" => non_neg_integer(),
        "DeviceFleetName" => String.t(),
        "EdgeDeploymentFailed" => integer(),
        "EdgeDeploymentPending" => integer(),
        "EdgeDeploymentPlanArn" => String.t(),
        "EdgeDeploymentPlanName" => String.t(),
        "EdgeDeploymentSuccess" => integer(),
        "LastModifiedTime" => non_neg_integer()
      }
      
  """
  @type edge_deployment_plan_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      auto_ml_resolved_attributes() :: %{
        "AutoMLJobObjective" => auto_ml_job_objective(),
        "AutoMLProblemTypeResolvedAttributes" => list(),
        "CompletionCriteria" => auto_ml_job_completion_criteria()
      }
      
  """
  @type auto_ml_resolved_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      model_variant_config() :: %{
        "InfrastructureConfig" => model_infrastructure_config(),
        "ModelName" => String.t(),
        "VariantName" => String.t()
      }
      
  """
  @type model_variant_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_model_output() :: %{
        "ModelArn" => String.t()
      }
      
  """
  @type create_model_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      trial_component_source() :: %{
        "SourceArn" => String.t(),
        "SourceType" => String.t()
      }
      
  """
  @type trial_component_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      environment_parameter_ranges() :: %{
        "CategoricalParameterRanges" => list(categorical_parameter()())
      }
      
  """
  @type environment_parameter_ranges() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_pipelines_response() :: %{
        "NextToken" => String.t(),
        "PipelineSummaries" => list(pipeline_summary()())
      }
      
  """
  @type list_pipelines_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      model_card_security_config() :: %{
        "KmsKeyId" => String.t()
      }
      
  """
  @type model_card_security_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_workforces_response() :: %{
        "NextToken" => String.t(),
        "Workforces" => list(workforce()())
      }
      
  """
  @type list_workforces_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      capture_option() :: %{
        "CaptureMode" => list(any())
      }
      
  """
  @type capture_option() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_inference_component_output() :: %{
        "InferenceComponentArn" => String.t()
      }
      
  """
  @type update_inference_component_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_app_image_config_response() :: %{
        "AppImageConfigArn" => String.t(),
        "AppImageConfigName" => String.t(),
        "CodeEditorAppImageConfig" => code_editor_app_image_config(),
        "CreationTime" => non_neg_integer(),
        "JupyterLabAppImageConfig" => jupyter_lab_app_image_config(),
        "KernelGatewayImageConfig" => kernel_gateway_image_config(),
        "LastModifiedTime" => non_neg_integer()
      }
      
  """
  @type describe_app_image_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_app_request() :: %{
        optional("ResourceSpec") => resource_spec(),
        optional("SpaceName") => String.t(),
        optional("Tags") => list(tag()()),
        optional("UserProfileName") => String.t(),
        required("AppName") => String.t(),
        required("AppType") => list(any()),
        required("DomainId") => String.t()
      }
      
  """
  @type create_app_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      monitoring_alert_actions() :: %{
        "ModelDashboardIndicator" => model_dashboard_indicator_action()
      }
      
  """
  @type monitoring_alert_actions() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_pipeline_response() :: %{
        "PipelineArn" => String.t()
      }
      
  """
  @type update_pipeline_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_hub_content_response() :: %{
        "HubArn" => String.t(),
        "HubContentArn" => String.t()
      }
      
  """
  @type import_hub_content_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ui_template() :: %{
        "Content" => String.t()
      }
      
  """
  @type ui_template() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_cluster_nodes_request() :: %{
        optional("CreationTimeAfter") => non_neg_integer(),
        optional("CreationTimeBefore") => non_neg_integer(),
        optional("InstanceGroupNameContains") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SortBy") => list(any()),
        optional("SortOrder") => list(any()),
        required("ClusterName") => String.t()
      }
      
  """
  @type list_cluster_nodes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      git_config_for_update() :: %{
        "SecretArn" => String.t()
      }
      
  """
  @type git_config_for_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_image_response() :: %{
        "ImageArn" => String.t()
      }
      
  """
  @type create_image_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_association_request() :: %{
        optional("AssociationType") => list(any()),
        required("DestinationArn") => String.t(),
        required("SourceArn") => String.t()
      }
      
  """
  @type add_association_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      pipeline_execution_step_metadata() :: %{
        "AutoMLJob" => auto_ml_job_step_metadata(),
        "Callback" => callback_step_metadata(),
        "ClarifyCheck" => clarify_check_step_metadata(),
        "Condition" => condition_step_metadata(),
        "EMR" => emr_step_metadata(),
        "Endpoint" => endpoint_step_metadata(),
        "EndpointConfig" => endpoint_config_step_metadata(),
        "Fail" => fail_step_metadata(),
        "Lambda" => lambda_step_metadata(),
        "Model" => model_step_metadata(),
        "ProcessingJob" => processing_job_step_metadata(),
        "QualityCheck" => quality_check_step_metadata(),
        "RegisterModel" => register_model_step_metadata(),
        "TrainingJob" => training_job_step_metadata(),
        "TransformJob" => transform_job_step_metadata(),
        "TuningJob" => tuning_job_step_meta_data()
      }
      
  """
  @type pipeline_execution_step_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      bias() :: %{
        "PostTrainingReport" => metrics_source(),
        "PreTrainingReport" => metrics_source(),
        "Report" => metrics_source()
      }
      
  """
  @type bias() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      drift_check_model_data_quality() :: %{
        "Constraints" => metrics_source(),
        "Statistics" => metrics_source()
      }
      
  """
  @type drift_check_model_data_quality() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_pipelines_request() :: %{
        optional("CreatedAfter") => non_neg_integer(),
        optional("CreatedBefore") => non_neg_integer(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("PipelineNamePrefix") => String.t(),
        optional("SortBy") => list(any()),
        optional("SortOrder") => list(any())
      }
      
  """
  @type list_pipelines_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_model_package_input() :: %{
        required("ModelPackageName") => String.t()
      }
      
  """
  @type describe_model_package_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      categorical_parameter_range_specification() :: %{
        "Values" => list(String.t()())
      }
      
  """
  @type categorical_parameter_range_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_hub_content_response() :: %{
        "CreationTime" => non_neg_integer(),
        "DocumentSchemaVersion" => String.t(),
        "FailureReason" => String.t(),
        "HubArn" => String.t(),
        "HubContentArn" => String.t(),
        "HubContentDependencies" => list(hub_content_dependency()()),
        "HubContentDescription" => String.t(),
        "HubContentDisplayName" => String.t(),
        "HubContentDocument" => String.t(),
        "HubContentMarkdown" => String.t(),
        "HubContentName" => String.t(),
        "HubContentSearchKeywords" => list(String.t()()),
        "HubContentStatus" => list(any()),
        "HubContentType" => list(any()),
        "HubContentVersion" => String.t(),
        "HubName" => String.t(),
        "ReferenceMinVersion" => String.t(),
        "SageMakerPublicHubContentArn" => String.t(),
        "SupportStatus" => list(any())
      }
      
  """
  @type describe_hub_content_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      processing_resources() :: %{
        "ClusterConfig" => processing_cluster_config()
      }
      
  """
  @type processing_resources() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_inference_recommendations_job_request() :: %{
        required("JobName") => String.t()
      }
      
  """
  @type describe_inference_recommendations_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      metadata_properties() :: %{
        "CommitId" => String.t(),
        "GeneratedBy" => String.t(),
        "ProjectId" => String.t(),
        "Repository" => String.t()
      }
      
  """
  @type metadata_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_optimization_jobs_request() :: %{
        optional("CreationTimeAfter") => non_neg_integer(),
        optional("CreationTimeBefore") => non_neg_integer(),
        optional("LastModifiedTimeAfter") => non_neg_integer(),
        optional("LastModifiedTimeBefore") => non_neg_integer(),
        optional("MaxResults") => integer(),
        optional("NameContains") => String.t(),
        optional("NextToken") => String.t(),
        optional("OptimizationContains") => String.t(),
        optional("SortBy") => list(any()),
        optional("SortOrder") => list(any()),
        optional("StatusEquals") => list(any())
      }
      
  """
  @type list_optimization_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_storage_config() :: %{
        "KmsKeyId" => String.t(),
        "ResolvedOutputS3Uri" => String.t(),
        "S3Uri" => String.t()
      }
      
  """
  @type s3_storage_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_human_task_ui_request() :: %{
        optional("Tags") => list(tag()()),
        required("HumanTaskUiName") => String.t(),
        required("UiTemplate") => ui_template()
      }
      
  """
  @type create_human_task_ui_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      studio_lifecycle_config_details() :: %{
        "CreationTime" => non_neg_integer(),
        "LastModifiedTime" => non_neg_integer(),
        "StudioLifecycleConfigAppType" => list(any()),
        "StudioLifecycleConfigArn" => String.t(),
        "StudioLifecycleConfigName" => String.t()
      }
      
  """
  @type studio_lifecycle_config_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_request() :: %{
        optional("CrossAccountFilterOption") => list(any()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SearchExpression") => search_expression(),
        optional("SortBy") => String.t(),
        optional("SortOrder") => list(any()),
        optional("VisibilityConditions") => list(visibility_conditions()()),
        required("Resource") => list(any())
      }
      
  """
  @type search_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_cluster_response() :: %{
        "ClusterArn" => String.t(),
        "ClusterName" => String.t(),
        "ClusterStatus" => list(any()),
        "CreationTime" => non_neg_integer(),
        "FailureMessage" => String.t(),
        "InstanceGroups" => list(cluster_instance_group_details()()),
        "VpcConfig" => vpc_config()
      }
      
  """
  @type describe_cluster_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_action_request() :: %{
        required("ActionName") => String.t()
      }
      
  """
  @type delete_action_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_model_package_group_output() :: %{
        "CreatedBy" => user_context(),
        "CreationTime" => non_neg_integer(),
        "ModelPackageGroupArn" => String.t(),
        "ModelPackageGroupDescription" => String.t(),
        "ModelPackageGroupName" => String.t(),
        "ModelPackageGroupStatus" => list(any())
      }
      
  """
  @type describe_model_package_group_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_processing_job_request() :: %{
        required("ProcessingJobName") => String.t()
      }
      
  """
  @type describe_processing_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      blue_green_update_policy() :: %{
        "MaximumExecutionTimeoutInSeconds" => integer(),
        "TerminationWaitInSeconds" => integer(),
        "TrafficRoutingConfiguration" => traffic_routing_config()
      }
      
  """
  @type blue_green_update_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_studio_lifecycle_config_request() :: %{
        optional("Tags") => list(tag()()),
        required("StudioLifecycleConfigAppType") => list(any()),
        required("StudioLifecycleConfigContent") => String.t(),
        required("StudioLifecycleConfigName") => String.t()
      }
      
  """
  @type create_studio_lifecycle_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      source_algorithm_specification() :: %{
        "SourceAlgorithms" => list(source_algorithm()())
      }
      
  """
  @type source_algorithm_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      network_config() :: %{
        "EnableInterContainerTrafficEncryption" => boolean(),
        "EnableNetworkIsolation" => boolean(),
        "VpcConfig" => vpc_config()
      }
      
  """
  @type network_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_flow_definition_response() :: %{
        "CreationTime" => non_neg_integer(),
        "FailureReason" => String.t(),
        "FlowDefinitionArn" => String.t(),
        "FlowDefinitionName" => String.t(),
        "FlowDefinitionStatus" => list(any()),
        "HumanLoopActivationConfig" => human_loop_activation_config(),
        "HumanLoopConfig" => human_loop_config(),
        "HumanLoopRequestSource" => human_loop_request_source(),
        "OutputConfig" => flow_definition_output_config(),
        "RoleArn" => String.t()
      }
      
  """
  @type describe_flow_definition_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_studio_lifecycle_config_request() :: %{
        required("StudioLifecycleConfigName") => String.t()
      }
      
  """
  @type delete_studio_lifecycle_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_feature_group_request() :: %{
        required("FeatureGroupName") => String.t()
      }
      
  """
  @type delete_feature_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_cluster_software_request() :: %{
        required("ClusterName") => String.t()
      }
      
  """
  @type update_cluster_software_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      online_store_config_update() :: %{
        "TtlDuration" => ttl_duration()
      }
      
  """
  @type online_store_config_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      pipeline_definition_s3_location() :: %{
        "Bucket" => String.t(),
        "ObjectKey" => String.t(),
        "VersionId" => String.t()
      }
      
  """
  @type pipeline_definition_s3_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      phase() :: %{
        "DurationInSeconds" => integer(),
        "InitialNumberOfUsers" => integer(),
        "SpawnRate" => integer()
      }
      
  """
  @type phase() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_inference_experiment_response() :: %{
        "InferenceExperimentArn" => String.t()
      }
      
  """
  @type create_inference_experiment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_project_input() :: %{
        optional("ProjectDescription") => String.t(),
        optional("ServiceCatalogProvisioningUpdateDetails") => service_catalog_provisioning_update_details(),
        optional("Tags") => list(tag()()),
        required("ProjectName") => String.t()
      }
      
  """
  @type update_project_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      optimization_job_model_source() :: %{
        "S3" => optimization_job_model_source_s3()
      }
      
  """
  @type optimization_job_model_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      additional_s3_data_source() :: %{
        "CompressionType" => list(any()),
        "S3DataType" => list(any()),
        "S3Uri" => String.t()
      }
      
  """
  @type additional_s3_data_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      model_digests() :: %{
        "ArtifactDigest" => String.t()
      }
      
  """
  @type model_digests() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_mlflow_tracking_server_request() :: %{
        required("TrackingServerName") => String.t()
      }
      
  """
  @type start_mlflow_tracking_server_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_search_suggestions_response() :: %{
        "PropertyNameSuggestions" => list(property_name_suggestion()())
      }
      
  """
  @type get_search_suggestions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      oidc_member_definition() :: %{
        "Groups" => list(String.t()())
      }
      
  """
  @type oidc_member_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      time_series_config() :: %{
        "GroupingAttributeNames" => list(String.t()()),
        "ItemIdentifierAttributeName" => String.t(),
        "TargetAttributeName" => String.t(),
        "TimestampAttributeName" => String.t()
      }
      
  """
  @type time_series_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      redshift_dataset_definition() :: %{
        "ClusterId" => String.t(),
        "ClusterRoleArn" => String.t(),
        "Database" => String.t(),
        "DbUser" => String.t(),
        "KmsKeyId" => String.t(),
        "OutputCompression" => list(any()),
        "OutputFormat" => list(any()),
        "OutputS3Uri" => String.t(),
        "QueryString" => String.t()
      }
      
  """
  @type redshift_dataset_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      project_summary() :: %{
        "CreationTime" => non_neg_integer(),
        "ProjectArn" => String.t(),
        "ProjectDescription" => String.t(),
        "ProjectId" => String.t(),
        "ProjectName" => String.t(),
        "ProjectStatus" => list(any())
      }
      
  """
  @type project_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      shadow_model_variant_config() :: %{
        "SamplingPercentage" => integer(),
        "ShadowModelVariantName" => String.t()
      }
      
  """
  @type shadow_model_variant_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_trial_component_request() :: %{
        optional("DisplayName") => String.t(),
        optional("EndTime") => non_neg_integer(),
        optional("InputArtifacts") => map(),
        optional("MetadataProperties") => metadata_properties(),
        optional("OutputArtifacts") => map(),
        optional("Parameters") => map(),
        optional("StartTime") => non_neg_integer(),
        optional("Status") => trial_component_status(),
        optional("Tags") => list(tag()()),
        required("TrialComponentName") => String.t()
      }
      
  """
  @type create_trial_component_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_inference_experiment_request() :: %{
        optional("DesiredModelVariants") => list(model_variant_config()()),
        optional("DesiredState") => list(any()),
        optional("Reason") => String.t(),
        required("ModelVariantActions") => map(),
        required("Name") => String.t()
      }
      
  """
  @type stop_inference_experiment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_inference_experiments_request() :: %{
        optional("CreationTimeAfter") => non_neg_integer(),
        optional("CreationTimeBefore") => non_neg_integer(),
        optional("LastModifiedTimeAfter") => non_neg_integer(),
        optional("LastModifiedTimeBefore") => non_neg_integer(),
        optional("MaxResults") => integer(),
        optional("NameContains") => String.t(),
        optional("NextToken") => String.t(),
        optional("SortBy") => list(any()),
        optional("SortOrder") => list(any()),
        optional("StatusEquals") => list(any()),
        optional("Type") => list(any())
      }
      
  """
  @type list_inference_experiments_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_cluster_node_request() :: %{
        required("ClusterName") => String.t(),
        required("NodeId") => String.t()
      }
      
  """
  @type describe_cluster_node_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      clarify_shap_baseline_config() :: %{
        "MimeType" => String.t(),
        "ShapBaseline" => String.t(),
        "ShapBaselineUri" => String.t()
      }
      
  """
  @type clarify_shap_baseline_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      processing_feature_store_output() :: %{
        "FeatureGroupName" => String.t()
      }
      
  """
  @type processing_feature_store_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_lineage_group_policy_response() :: %{
        "LineageGroupArn" => String.t(),
        "ResourcePolicy" => String.t()
      }
      
  """
  @type get_lineage_group_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      hyper_parameter_tuning_resource_config() :: %{
        "AllocationStrategy" => list(any()),
        "InstanceConfigs" => list(hyper_parameter_tuning_instance_config()()),
        "InstanceCount" => integer(),
        "InstanceType" => list(any()),
        "VolumeKmsKeyId" => String.t(),
        "VolumeSizeInGB" => integer()
      }
      
  """
  @type hyper_parameter_tuning_resource_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_presign() :: %{
        "IamPolicyConstraints" => iam_policy_constraints()
      }
      
  """
  @type s3_presign() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      annotation_consolidation_config() :: %{
        "AnnotationConsolidationLambdaArn" => String.t()
      }
      
  """
  @type annotation_consolidation_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_studio_lifecycle_configs_request() :: %{
        optional("AppTypeEquals") => list(any()),
        optional("CreationTimeAfter") => non_neg_integer(),
        optional("CreationTimeBefore") => non_neg_integer(),
        optional("MaxResults") => integer(),
        optional("ModifiedTimeAfter") => non_neg_integer(),
        optional("ModifiedTimeBefore") => non_neg_integer(),
        optional("NameContains") => String.t(),
        optional("NextToken") => String.t(),
        optional("SortBy") => list(any()),
        optional("SortOrder") => list(any())
      }
      
  """
  @type list_studio_lifecycle_configs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kernel_gateway_app_settings() :: %{
        "CustomImages" => list(custom_image()()),
        "DefaultResourceSpec" => resource_spec(),
        "LifecycleConfigArns" => list(String.t()())
      }
      
  """
  @type kernel_gateway_app_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_context_request() :: %{
        required("ContextName") => String.t()
      }
      
  """
  @type delete_context_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kernel_spec() :: %{
        "DisplayName" => String.t(),
        "Name" => String.t()
      }
      
  """
  @type kernel_spec() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_auto_ml_job_response() :: %{
        "AutoMLJobArn" => String.t()
      }
      
  """
  @type create_auto_ml_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      derived_information() :: %{
        "DerivedDataInputConfig" => String.t()
      }
      
  """
  @type derived_information() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      data_quality_baseline_config() :: %{
        "BaseliningJobName" => String.t(),
        "ConstraintsResource" => monitoring_constraints_resource(),
        "StatisticsResource" => monitoring_statistics_resource()
      }
      
  """
  @type data_quality_baseline_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      shuffle_config() :: %{
        "Seed" => float()
      }
      
  """
  @type shuffle_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_cluster_response() :: %{
        "ClusterArn" => String.t()
      }
      
  """
  @type create_cluster_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_notebook_instances_output() :: %{
        "NextToken" => String.t(),
        "NotebookInstances" => list(notebook_instance_summary()())
      }
      
  """
  @type list_notebook_instances_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_model_card_export_jobs_request() :: %{
        optional("CreationTimeAfter") => non_neg_integer(),
        optional("CreationTimeBefore") => non_neg_integer(),
        optional("MaxResults") => integer(),
        optional("ModelCardExportJobNameContains") => String.t(),
        optional("ModelCardVersion") => integer(),
        optional("NextToken") => String.t(),
        optional("SortBy") => list(any()),
        optional("SortOrder") => list(any()),
        optional("StatusEquals") => list(any()),
        required("ModelCardName") => String.t()
      }
      
  """
  @type list_model_card_export_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      model_card_summary() :: %{
        "CreationTime" => non_neg_integer(),
        "LastModifiedTime" => non_neg_integer(),
        "ModelCardArn" => String.t(),
        "ModelCardName" => String.t(),
        "ModelCardStatus" => list(any())
      }
      
  """
  @type model_card_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_model_card_export_job_response() :: %{
        "ModelCardExportJobArn" => String.t()
      }
      
  """
  @type create_model_card_export_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      inference_recommendation() :: %{
        "EndpointConfiguration" => endpoint_output_configuration(),
        "InvocationEndTime" => non_neg_integer(),
        "InvocationStartTime" => non_neg_integer(),
        "Metrics" => recommendation_metrics(),
        "ModelConfiguration" => model_configuration(),
        "RecommendationId" => String.t()
      }
      
  """
  @type inference_recommendation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_pipeline_response() :: %{
        "PipelineArn" => String.t()
      }
      
  """
  @type create_pipeline_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_monitoring_schedule_request() :: %{
        required("MonitoringScheduleName") => String.t()
      }
      
  """
  @type start_monitoring_schedule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      feature_definition() :: %{
        "CollectionConfig" => list(),
        "CollectionType" => list(any()),
        "FeatureName" => String.t(),
        "FeatureType" => list(any())
      }
      
  """
  @type feature_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      property_name_query() :: %{
        "PropertyNameHint" => String.t()
      }
      
  """
  @type property_name_query() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_inference_component_input() :: %{
        required("InferenceComponentName") => String.t()
      }
      
  """
  @type describe_inference_component_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      trial_component_status() :: %{
        "Message" => String.t(),
        "PrimaryStatus" => list(any())
      }
      
  """
  @type trial_component_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_app_image_config_request() :: %{
        optional("CodeEditorAppImageConfig") => code_editor_app_image_config(),
        optional("JupyterLabAppImageConfig") => jupyter_lab_app_image_config(),
        optional("KernelGatewayImageConfig") => kernel_gateway_image_config(),
        required("AppImageConfigName") => String.t()
      }
      
  """
  @type update_app_image_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      optimization_vpc_config() :: %{
        "SecurityGroupIds" => list(String.t()()),
        "Subnets" => list(String.t()())
      }
      
  """
  @type optimization_vpc_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      training_image_config() :: %{
        "TrainingRepositoryAccessMode" => list(any()),
        "TrainingRepositoryAuthConfig" => training_repository_auth_config()
      }
      
  """
  @type training_image_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_mlflow_tracking_server_response() :: %{
        "TrackingServerArn" => String.t()
      }
      
  """
  @type delete_mlflow_tracking_server_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_stage_devices_request() :: %{
        optional("ExcludeDevicesDeployedInOtherStage") => boolean(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("EdgeDeploymentPlanName") => String.t(),
        required("StageName") => String.t()
      }
      
  """
  @type list_stage_devices_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lineage_group_summary() :: %{
        "CreationTime" => non_neg_integer(),
        "DisplayName" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "LineageGroupArn" => String.t(),
        "LineageGroupName" => String.t()
      }
      
  """
  @type lineage_group_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_inference_experiment_request() :: %{
        required("Name") => String.t()
      }
      
  """
  @type describe_inference_experiment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      experiment_source() :: %{
        "SourceArn" => String.t(),
        "SourceType" => String.t()
      }
      
  """
  @type experiment_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_image_version_response() :: %{
        "ImageVersionArn" => String.t()
      }
      
  """
  @type update_image_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_hub_contents_request() :: %{
        optional("CreationTimeAfter") => non_neg_integer(),
        optional("CreationTimeBefore") => non_neg_integer(),
        optional("MaxResults") => integer(),
        optional("MaxSchemaVersion") => String.t(),
        optional("NameContains") => String.t(),
        optional("NextToken") => String.t(),
        optional("SortBy") => list(any()),
        optional("SortOrder") => list(any()),
        required("HubContentType") => list(any()),
        required("HubName") => String.t()
      }
      
  """
  @type list_hub_contents_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_data_capture_config() :: %{
        "DestinationS3Uri" => String.t(),
        "GenerateInferenceId" => boolean(),
        "KmsKeyId" => String.t()
      }
      
  """
  @type batch_data_capture_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_monitoring_schedules_response() :: %{
        "MonitoringScheduleSummaries" => list(monitoring_schedule_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_monitoring_schedules_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_algorithm_input() :: %{
        required("AlgorithmName") => String.t()
      }
      
  """
  @type delete_algorithm_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      hub_content_info() :: %{
        "CreationTime" => non_neg_integer(),
        "DocumentSchemaVersion" => String.t(),
        "HubContentArn" => String.t(),
        "HubContentDescription" => String.t(),
        "HubContentDisplayName" => String.t(),
        "HubContentName" => String.t(),
        "HubContentSearchKeywords" => list(String.t()()),
        "HubContentStatus" => list(any()),
        "HubContentType" => list(any()),
        "HubContentVersion" => String.t(),
        "OriginalCreationTime" => non_neg_integer(),
        "SageMakerPublicHubContentArn" => String.t(),
        "SupportStatus" => list(any())
      }
      
  """
  @type hub_content_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_model_metadata_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SearchExpression") => model_metadata_search_expression()
      }
      
  """
  @type list_model_metadata_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      auto_ml_security_config() :: %{
        "EnableInterContainerTrafficEncryption" => boolean(),
        "VolumeKmsKeyId" => String.t(),
        "VpcConfig" => vpc_config()
      }
      
  """
  @type auto_ml_security_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      model_metadata_summary() :: %{
        "Domain" => String.t(),
        "Framework" => String.t(),
        "FrameworkVersion" => String.t(),
        "Model" => String.t(),
        "Task" => String.t()
      }
      
  """
  @type model_metadata_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throughput_config() :: %{
        "ProvisionedReadCapacityUnits" => integer(),
        "ProvisionedWriteCapacityUnits" => integer(),
        "ThroughputMode" => list(any())
      }
      
  """
  @type throughput_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      source_ip_config() :: %{
        "Cidrs" => list(String.t()())
      }
      
  """
  @type source_ip_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      pipeline_execution_summary() :: %{
        "PipelineExecutionArn" => String.t(),
        "PipelineExecutionDescription" => String.t(),
        "PipelineExecutionDisplayName" => String.t(),
        "PipelineExecutionFailureReason" => String.t(),
        "PipelineExecutionStatus" => list(any()),
        "StartTime" => non_neg_integer()
      }
      
  """
  @type pipeline_execution_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_transform_jobs_request() :: %{
        optional("CreationTimeAfter") => non_neg_integer(),
        optional("CreationTimeBefore") => non_neg_integer(),
        optional("LastModifiedTimeAfter") => non_neg_integer(),
        optional("LastModifiedTimeBefore") => non_neg_integer(),
        optional("MaxResults") => integer(),
        optional("NameContains") => String.t(),
        optional("NextToken") => String.t(),
        optional("SortBy") => list(any()),
        optional("SortOrder") => list(any()),
        optional("StatusEquals") => list(any())
      }
      
  """
  @type list_transform_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      candidate_generation_config() :: %{
        "AlgorithmsConfig" => list(auto_ml_algorithm_config()())
      }
      
  """
  @type candidate_generation_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      alarm() :: %{
        "AlarmName" => String.t()
      }
      
  """
  @type alarm() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      algorithm_validation_specification() :: %{
        "ValidationProfiles" => list(algorithm_validation_profile()()),
        "ValidationRole" => String.t()
      }
      
  """
  @type algorithm_validation_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      auto_ml_container_definition() :: %{
        "Environment" => map(),
        "Image" => String.t(),
        "ModelDataUrl" => String.t()
      }
      
  """
  @type auto_ml_container_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      target_tracking_scaling_policy_configuration() :: %{
        "MetricSpecification" => list(),
        "TargetValue" => float()
      }
      
  """
  @type target_tracking_scaling_policy_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_domain_response() :: %{
        "DomainArn" => String.t()
      }
      
  """
  @type update_domain_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_in_use() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_in_use() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_inference_recommendations_job_request() :: %{
        required("JobName") => String.t()
      }
      
  """
  @type stop_inference_recommendations_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_action_response() :: %{
        "ActionArn" => String.t(),
        "ActionName" => String.t(),
        "ActionType" => String.t(),
        "CreatedBy" => user_context(),
        "CreationTime" => non_neg_integer(),
        "Description" => String.t(),
        "LastModifiedBy" => user_context(),
        "LastModifiedTime" => non_neg_integer(),
        "LineageGroupArn" => String.t(),
        "MetadataProperties" => metadata_properties(),
        "Properties" => map(),
        "Source" => action_source(),
        "Status" => list(any())
      }
      
  """
  @type describe_action_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_models_output() :: %{
        "Models" => list(model_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_models_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      scaling_policy_objective() :: %{
        "MaxInvocationsPerMinute" => integer(),
        "MinInvocationsPerMinute" => integer()
      }
      
  """
  @type scaling_policy_objective() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      model_summary() :: %{
        "CreationTime" => non_neg_integer(),
        "ModelArn" => String.t(),
        "ModelName" => String.t()
      }
      
  """
  @type model_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      training_repository_auth_config() :: %{
        "TrainingRepositoryCredentialsProviderArn" => String.t()
      }
      
  """
  @type training_repository_auth_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_model_card_versions_response() :: %{
        "ModelCardVersionSummaryList" => list(model_card_version_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_model_card_versions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      trial_component() :: %{
        "CreatedBy" => user_context(),
        "CreationTime" => non_neg_integer(),
        "DisplayName" => String.t(),
        "EndTime" => non_neg_integer(),
        "InputArtifacts" => map(),
        "LastModifiedBy" => user_context(),
        "LastModifiedTime" => non_neg_integer(),
        "LineageGroupArn" => String.t(),
        "MetadataProperties" => metadata_properties(),
        "Metrics" => list(trial_component_metric_summary()()),
        "OutputArtifacts" => map(),
        "Parameters" => map(),
        "Parents" => list(parent()()),
        "RunName" => String.t(),
        "Source" => trial_component_source(),
        "SourceDetail" => trial_component_source_detail(),
        "StartTime" => non_neg_integer(),
        "Status" => trial_component_status(),
        "Tags" => list(tag()()),
        "TrialComponentArn" => String.t(),
        "TrialComponentName" => String.t()
      }
      
  """
  @type trial_component() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deployment_config() :: %{
        "AutoRollbackConfiguration" => auto_rollback_config(),
        "BlueGreenUpdatePolicy" => blue_green_update_policy(),
        "RollingUpdatePolicy" => rolling_update_policy()
      }
      
  """
  @type deployment_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      processing_job_summary() :: %{
        "CreationTime" => non_neg_integer(),
        "ExitMessage" => String.t(),
        "FailureReason" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "ProcessingEndTime" => non_neg_integer(),
        "ProcessingJobArn" => String.t(),
        "ProcessingJobName" => String.t(),
        "ProcessingJobStatus" => list(any())
      }
      
  """
  @type processing_job_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kendra_settings() :: %{
        "Status" => list(any())
      }
      
  """
  @type kendra_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_data_quality_job_definition_response() :: %{
        "JobDefinitionArn" => String.t()
      }
      
  """
  @type create_data_quality_job_definition_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      labeling_job_data_attributes() :: %{
        "ContentClassifiers" => list(list(any())())
      }
      
  """
  @type labeling_job_data_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_trial_request() :: %{
        optional("DisplayName") => String.t(),
        required("TrialName") => String.t()
      }
      
  """
  @type update_trial_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_model_metadata_response() :: %{
        "ModelMetadataSummaries" => list(model_metadata_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_model_metadata_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      inference_recommendations_job() :: %{
        "CompletionTime" => non_neg_integer(),
        "CreationTime" => non_neg_integer(),
        "FailureReason" => String.t(),
        "JobArn" => String.t(),
        "JobDescription" => String.t(),
        "JobName" => String.t(),
        "JobType" => list(any()),
        "LastModifiedTime" => non_neg_integer(),
        "ModelName" => String.t(),
        "ModelPackageVersionArn" => String.t(),
        "RoleArn" => String.t(),
        "SamplePayloadUrl" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type inference_recommendations_job() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      scaling_policy_metric() :: %{
        "InvocationsPerInstance" => integer(),
        "ModelLatency" => integer()
      }
      
  """
  @type scaling_policy_metric() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_app_image_config_request() :: %{
        required("AppImageConfigName") => String.t()
      }
      
  """
  @type describe_app_image_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_edge_deployment_stage_request() :: %{
        required("EdgeDeploymentPlanName") => String.t(),
        required("StageName") => String.t()
      }
      
  """
  @type delete_edge_deployment_stage_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      pipeline_execution() :: %{
        "CreatedBy" => user_context(),
        "CreationTime" => non_neg_integer(),
        "FailureReason" => String.t(),
        "LastModifiedBy" => user_context(),
        "LastModifiedTime" => non_neg_integer(),
        "ParallelismConfiguration" => parallelism_configuration(),
        "PipelineArn" => String.t(),
        "PipelineExecutionArn" => String.t(),
        "PipelineExecutionDescription" => String.t(),
        "PipelineExecutionDisplayName" => String.t(),
        "PipelineExecutionStatus" => list(any()),
        "PipelineExperimentConfig" => pipeline_experiment_config(),
        "PipelineParameters" => list(parameter()()),
        "SelectiveExecutionConfig" => selective_execution_config()
      }
      
  """
  @type pipeline_execution() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      monitoring_alert_summary() :: %{
        "Actions" => monitoring_alert_actions(),
        "AlertStatus" => list(any()),
        "CreationTime" => non_neg_integer(),
        "DatapointsToAlert" => integer(),
        "EvaluationPeriod" => integer(),
        "LastModifiedTime" => non_neg_integer(),
        "MonitoringAlertName" => String.t()
      }
      
  """
  @type monitoring_alert_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      pipeline() :: %{
        "CreatedBy" => user_context(),
        "CreationTime" => non_neg_integer(),
        "LastModifiedBy" => user_context(),
        "LastModifiedTime" => non_neg_integer(),
        "LastRunTime" => non_neg_integer(),
        "ParallelismConfiguration" => parallelism_configuration(),
        "PipelineArn" => String.t(),
        "PipelineDescription" => String.t(),
        "PipelineDisplayName" => String.t(),
        "PipelineName" => String.t(),
        "PipelineStatus" => list(any()),
        "RoleArn" => String.t(),
        "Tags" => list(tag()())
      }
      
  """
  @type pipeline() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_inference_recommendations_job_steps_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("Status") => list(any()),
        optional("StepType") => list(any()),
        required("JobName") => String.t()
      }
      
  """
  @type list_inference_recommendations_job_steps_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_tags_input() :: %{
        required("ResourceArn") => String.t(),
        required("TagKeys") => list(String.t()())
      }
      
  """
  @type delete_tags_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      parameter_ranges() :: %{
        "AutoParameters" => list(auto_parameter()()),
        "CategoricalParameterRanges" => list(categorical_parameter_range()()),
        "ContinuousParameterRanges" => list(continuous_parameter_range()()),
        "IntegerParameterRanges" => list(integer_parameter_range()())
      }
      
  """
  @type parameter_ranges() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_model_quality_job_definitions_request() :: %{
        optional("CreationTimeAfter") => non_neg_integer(),
        optional("CreationTimeBefore") => non_neg_integer(),
        optional("EndpointName") => String.t(),
        optional("MaxResults") => integer(),
        optional("NameContains") => String.t(),
        optional("NextToken") => String.t(),
        optional("SortBy") => list(any()),
        optional("SortOrder") => list(any())
      }
      
  """
  @type list_model_quality_job_definitions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_inference_recommendations_jobs_response() :: %{
        "InferenceRecommendationsJobs" => list(inference_recommendations_job()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_inference_recommendations_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      traffic_pattern() :: %{
        "Phases" => list(phase()()),
        "Stairs" => stairs(),
        "TrafficType" => list(any())
      }
      
  """
  @type traffic_pattern() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_model_package_output() :: %{
        "ModelPackageArn" => String.t()
      }
      
  """
  @type update_model_package_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      human_task_config() :: %{
        "AnnotationConsolidationConfig" => annotation_consolidation_config(),
        "MaxConcurrentTaskCount" => integer(),
        "NumberOfHumanWorkersPerDataObject" => integer(),
        "PreHumanTaskLambdaArn" => String.t(),
        "PublicWorkforceTaskPrice" => public_workforce_task_price(),
        "TaskAvailabilityLifetimeInSeconds" => integer(),
        "TaskDescription" => String.t(),
        "TaskKeywords" => list(String.t()()),
        "TaskTimeLimitInSeconds" => integer(),
        "TaskTitle" => String.t(),
        "UiConfig" => ui_config(),
        "WorkteamArn" => String.t()
      }
      
  """
  @type human_task_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_data_quality_job_definition_request() :: %{
        required("JobDefinitionName") => String.t()
      }
      
  """
  @type delete_data_quality_job_definition_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_candidates_for_auto_ml_job_request() :: %{
        optional("CandidateNameEquals") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SortBy") => list(any()),
        optional("SortOrder") => list(any()),
        optional("StatusEquals") => list(any()),
        required("AutoMLJobName") => String.t()
      }
      
  """
  @type list_candidates_for_auto_ml_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_notebook_instance_output() :: %{}
      
  """
  @type update_notebook_instance_output() :: %{}

  @typedoc """

  ## Example:
      
      optimization_job_output_config() :: %{
        "KmsKeyId" => String.t(),
        "S3OutputLocation" => String.t()
      }
      
  """
  @type optimization_job_output_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_pipeline_execution_steps_response() :: %{
        "NextToken" => String.t(),
        "PipelineExecutionSteps" => list(pipeline_execution_step()())
      }
      
  """
  @type list_pipeline_execution_steps_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_endpoint_input() :: %{
        required("EndpointName") => String.t()
      }
      
  """
  @type describe_endpoint_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_trial_response() :: %{
        "TrialArn" => String.t()
      }
      
  """
  @type delete_trial_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      model_variant_config_summary() :: %{
        "InfrastructureConfig" => model_infrastructure_config(),
        "ModelName" => String.t(),
        "Status" => list(any()),
        "VariantName" => String.t()
      }
      
  """
  @type model_variant_config_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_endpoint_input() :: %{
        optional("DeploymentConfig") => deployment_config(),
        optional("ExcludeRetainedVariantProperties") => list(variant_property()()),
        optional("RetainAllVariantProperties") => boolean(),
        optional("RetainDeploymentConfig") => boolean(),
        required("EndpointConfigName") => String.t(),
        required("EndpointName") => String.t()
      }
      
  """
  @type update_endpoint_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_space_request() :: %{
        required("DomainId") => String.t(),
        required("SpaceName") => String.t()
      }
      
  """
  @type describe_space_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_experiment_response() :: %{
        "ExperimentArn" => String.t()
      }
      
  """
  @type create_experiment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_endpoint_config_input() :: %{
        required("EndpointConfigName") => String.t()
      }
      
  """
  @type describe_endpoint_config_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      flow_definition_summary() :: %{
        "CreationTime" => non_neg_integer(),
        "FailureReason" => String.t(),
        "FlowDefinitionArn" => String.t(),
        "FlowDefinitionName" => String.t(),
        "FlowDefinitionStatus" => list(any())
      }
      
  """
  @type flow_definition_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_code_repository_input() :: %{
        optional("GitConfig") => git_config_for_update(),
        required("CodeRepositoryName") => String.t()
      }
      
  """
  @type update_code_repository_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      parameter_range() :: %{
        "CategoricalParameterRangeSpecification" => categorical_parameter_range_specification(),
        "ContinuousParameterRangeSpecification" => continuous_parameter_range_specification(),
        "IntegerParameterRangeSpecification" => integer_parameter_range_specification()
      }
      
  """
  @type parameter_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      custom_image() :: %{
        "AppImageConfigName" => String.t(),
        "ImageName" => String.t(),
        "ImageVersionNumber" => integer()
      }
      
  """
  @type custom_image() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_notebook_instance_lifecycle_config_output() :: %{}
      
  """
  @type update_notebook_instance_lifecycle_config_output() :: %{}

  @typedoc """

  ## Example:
      
      list_data_quality_job_definitions_response() :: %{
        "JobDefinitionSummaries" => list(monitoring_job_definition_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_data_quality_job_definitions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      explainer_config() :: %{
        "ClarifyExplainerConfig" => clarify_explainer_config()
      }
      
  """
  @type explainer_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      custom_posix_user_config() :: %{
        "Gid" => float(),
        "Uid" => float()
      }
      
  """
  @type custom_posix_user_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      training_specification() :: %{
        "AdditionalS3DataSource" => additional_s3_data_source(),
        "MetricDefinitions" => list(metric_definition()()),
        "SupportedHyperParameters" => list(hyper_parameter_specification()()),
        "SupportedTrainingInstanceTypes" => list(list(any())()),
        "SupportedTuningJobObjectiveMetrics" => list(hyper_parameter_tuning_job_objective()()),
        "SupportsDistributedTraining" => boolean(),
        "TrainingChannels" => list(channel_specification()()),
        "TrainingImage" => String.t(),
        "TrainingImageDigest" => String.t()
      }
      
  """
  @type training_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_user_profile_response() :: %{
        "UserProfileArn" => String.t()
      }
      
  """
  @type update_user_profile_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_lineage_group_request() :: %{
        required("LineageGroupName") => String.t()
      }
      
  """
  @type describe_lineage_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      hyper_parameter_tuning_job_warm_start_config() :: %{
        "ParentHyperParameterTuningJobs" => list(parent_hyper_parameter_tuning_job()()),
        "WarmStartType" => list(any())
      }
      
  """
  @type hyper_parameter_tuning_job_warm_start_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_studio_lifecycle_config_request() :: %{
        required("StudioLifecycleConfigName") => String.t()
      }
      
  """
  @type describe_studio_lifecycle_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      processing_s3_input() :: %{
        "LocalPath" => String.t(),
        "S3CompressionType" => list(any()),
        "S3DataDistributionType" => list(any()),
        "S3DataType" => list(any()),
        "S3InputMode" => list(any()),
        "S3Uri" => String.t()
      }
      
  """
  @type processing_s3_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_trial_component_response() :: %{
        "TrialComponentArn" => String.t()
      }
      
  """
  @type create_trial_component_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      auto_ml_compute_config() :: %{
        "EmrServerlessComputeConfig" => emr_serverless_compute_config()
      }
      
  """
  @type auto_ml_compute_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_endpoint_input() :: %{
        optional("DeploymentConfig") => deployment_config(),
        optional("Tags") => list(tag()()),
        required("EndpointConfigName") => String.t(),
        required("EndpointName") => String.t()
      }
      
  """
  @type create_endpoint_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      pipeline_execution_step() :: %{
        "AttemptCount" => integer(),
        "CacheHitResult" => cache_hit_result(),
        "EndTime" => non_neg_integer(),
        "FailureReason" => String.t(),
        "Metadata" => pipeline_execution_step_metadata(),
        "SelectiveExecutionResult" => selective_execution_result(),
        "StartTime" => non_neg_integer(),
        "StepDescription" => String.t(),
        "StepDisplayName" => String.t(),
        "StepName" => String.t(),
        "StepStatus" => list(any())
      }
      
  """
  @type pipeline_execution_step() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      feature_metadata() :: %{
        "CreationTime" => non_neg_integer(),
        "Description" => String.t(),
        "FeatureGroupArn" => String.t(),
        "FeatureGroupName" => String.t(),
        "FeatureName" => String.t(),
        "FeatureType" => list(any()),
        "LastModifiedTime" => non_neg_integer(),
        "Parameters" => list(feature_parameter()())
      }
      
  """
  @type feature_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_cluster_node_response() :: %{
        "NodeDetails" => cluster_node_details()
      }
      
  """
  @type describe_cluster_node_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_workforce_request() :: %{
        required("WorkforceName") => String.t()
      }
      
  """
  @type delete_workforce_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      endpoint_output_configuration() :: %{
        "EndpointName" => String.t(),
        "InitialInstanceCount" => integer(),
        "InstanceType" => list(any()),
        "ServerlessConfig" => production_variant_serverless_config(),
        "VariantName" => String.t()
      }
      
  """
  @type endpoint_output_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_tags_output() :: %{
        "Tags" => list(tag()())
      }
      
  """
  @type add_tags_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      auto_ml_job_objective() :: %{
        "MetricName" => list(any())
      }
      
  """
  @type auto_ml_job_objective() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_describe_model_package_input() :: %{
        required("ModelPackageArnList") => list(String.t()())
      }
      
  """
  @type batch_describe_model_package_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_trial_component_response() :: %{
        "TrialComponentArn" => String.t()
      }
      
  """
  @type update_trial_component_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_project_output() :: %{
        "ProjectArn" => String.t(),
        "ProjectId" => String.t()
      }
      
  """
  @type create_project_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_hub_contents_response() :: %{
        "HubContentSummaries" => list(hub_content_info()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_hub_contents_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      endpoint_step_metadata() :: %{
        "Arn" => String.t()
      }
      
  """
  @type endpoint_step_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      labeling_job_data_source() :: %{
        "S3DataSource" => labeling_job_s3_data_source(),
        "SnsDataSource" => labeling_job_sns_data_source()
      }
      
  """
  @type labeling_job_data_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_trial_components_response() :: %{
        "NextToken" => String.t(),
        "TrialComponentSummaries" => list(trial_component_summary()())
      }
      
  """
  @type list_trial_components_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_sagemaker_servicecatalog_portfolio_status_output() :: %{
        "Status" => list(any())
      }
      
  """
  @type get_sagemaker_servicecatalog_portfolio_status_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_inference_components_input() :: %{
        optional("CreationTimeAfter") => non_neg_integer(),
        optional("CreationTimeBefore") => non_neg_integer(),
        optional("EndpointNameEquals") => String.t(),
        optional("LastModifiedTimeAfter") => non_neg_integer(),
        optional("LastModifiedTimeBefore") => non_neg_integer(),
        optional("MaxResults") => integer(),
        optional("NameContains") => String.t(),
        optional("NextToken") => String.t(),
        optional("SortBy") => list(any()),
        optional("SortOrder") => list(any()),
        optional("StatusEquals") => list(any()),
        optional("VariantNameEquals") => String.t()
      }
      
  """
  @type list_inference_components_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      capture_content_type_header() :: %{
        "CsvContentTypes" => list(String.t()()),
        "JsonContentTypes" => list(String.t()())
      }
      
  """
  @type capture_content_type_header() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_endpoint_config_input() :: %{
        optional("AsyncInferenceConfig") => async_inference_config(),
        optional("DataCaptureConfig") => data_capture_config(),
        optional("EnableNetworkIsolation") => boolean(),
        optional("ExecutionRoleArn") => String.t(),
        optional("ExplainerConfig") => explainer_config(),
        optional("KmsKeyId") => String.t(),
        optional("ShadowProductionVariants") => list(production_variant()()),
        optional("Tags") => list(tag()()),
        optional("VpcConfig") => vpc_config(),
        required("EndpointConfigName") => String.t(),
        required("ProductionVariants") => list(production_variant()())
      }
      
  """
  @type create_endpoint_config_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kernel_gateway_image_config() :: %{
        "FileSystemConfig" => file_system_config(),
        "KernelSpecs" => list(kernel_spec()())
      }
      
  """
  @type kernel_gateway_image_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      emr_step_metadata() :: %{
        "ClusterId" => String.t(),
        "LogFilePath" => String.t(),
        "StepId" => String.t(),
        "StepName" => String.t()
      }
      
  """
  @type emr_step_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_inference_experiment_response() :: %{
        "InferenceExperimentArn" => String.t()
      }
      
  """
  @type delete_inference_experiment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cognito_config() :: %{
        "ClientId" => String.t(),
        "UserPool" => String.t()
      }
      
  """
  @type cognito_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      model_package_group() :: %{
        "CreatedBy" => user_context(),
        "CreationTime" => non_neg_integer(),
        "ModelPackageGroupArn" => String.t(),
        "ModelPackageGroupDescription" => String.t(),
        "ModelPackageGroupName" => String.t(),
        "ModelPackageGroupStatus" => list(any()),
        "Tags" => list(tag()())
      }
      
  """
  @type model_package_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_artifact_response() :: %{
        "ArtifactArn" => String.t()
      }
      
  """
  @type create_artifact_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      edge_model_stat() :: %{
        "ActiveDeviceCount" => float(),
        "ConnectedDeviceCount" => float(),
        "ModelName" => String.t(),
        "ModelVersion" => String.t(),
        "OfflineDeviceCount" => float(),
        "SamplingDeviceCount" => float()
      }
      
  """
  @type edge_model_stat() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      labeling_job_stopping_conditions() :: %{
        "MaxHumanLabeledObjectCount" => integer(),
        "MaxPercentageOfInputDatasetLabeled" => integer()
      }
      
  """
  @type labeling_job_stopping_conditions() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      monitoring_statistics_resource() :: %{
        "S3Uri" => String.t()
      }
      
  """
  @type monitoring_statistics_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      input_config() :: %{
        "DataInputConfig" => String.t(),
        "Framework" => list(any()),
        "FrameworkVersion" => String.t(),
        "S3Uri" => String.t()
      }
      
  """
  @type input_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      space_settings() :: %{
        "AppType" => list(any()),
        "CodeEditorAppSettings" => space_code_editor_app_settings(),
        "CustomFileSystems" => list(list()()),
        "JupyterLabAppSettings" => space_jupyter_lab_app_settings(),
        "JupyterServerAppSettings" => jupyter_server_app_settings(),
        "KernelGatewayAppSettings" => kernel_gateway_app_settings(),
        "SpaceStorageSettings" => space_storage_settings()
      }
      
  """
  @type space_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_training_job_request() :: %{
        required("TrainingJobName") => String.t()
      }
      
  """
  @type describe_training_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_inference_component_runtime_config_output() :: %{
        "InferenceComponentArn" => String.t()
      }
      
  """
  @type update_inference_component_runtime_config_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_labeling_job_response() :: %{
        "LabelingJobArn" => String.t()
      }
      
  """
  @type create_labeling_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      hyper_parameter_tuning_job_strategy_config() :: %{
        "HyperbandStrategyConfig" => hyperband_strategy_config()
      }
      
  """
  @type hyper_parameter_tuning_job_strategy_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_edge_packaging_job_response() :: %{
        "CompilationJobName" => String.t(),
        "CreationTime" => non_neg_integer(),
        "EdgePackagingJobArn" => String.t(),
        "EdgePackagingJobName" => String.t(),
        "EdgePackagingJobStatus" => list(any()),
        "EdgePackagingJobStatusMessage" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "ModelArtifact" => String.t(),
        "ModelName" => String.t(),
        "ModelSignature" => String.t(),
        "ModelVersion" => String.t(),
        "OutputConfig" => edge_output_config(),
        "PresetDeploymentOutput" => edge_preset_deployment_output(),
        "ResourceKey" => String.t(),
        "RoleArn" => String.t()
      }
      
  """
  @type describe_edge_packaging_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_resource_catalogs_response() :: %{
        "NextToken" => String.t(),
        "ResourceCatalogs" => list(resource_catalog()())
      }
      
  """
  @type list_resource_catalogs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      metric_definition() :: %{
        "Name" => String.t(),
        "Regex" => String.t()
      }
      
  """
  @type metric_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      code_editor_app_image_config() :: %{
        "ContainerConfig" => container_config(),
        "FileSystemConfig" => file_system_config()
      }
      
  """
  @type code_editor_app_image_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_edge_packaging_jobs_request() :: %{
        optional("CreationTimeAfter") => non_neg_integer(),
        optional("CreationTimeBefore") => non_neg_integer(),
        optional("LastModifiedTimeAfter") => non_neg_integer(),
        optional("LastModifiedTimeBefore") => non_neg_integer(),
        optional("MaxResults") => integer(),
        optional("ModelNameContains") => String.t(),
        optional("NameContains") => String.t(),
        optional("NextToken") => String.t(),
        optional("SortBy") => list(any()),
        optional("SortOrder") => list(any()),
        optional("StatusEquals") => list(any())
      }
      
  """
  @type list_edge_packaging_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deregister_devices_request() :: %{
        required("DeviceFleetName") => String.t(),
        required("DeviceNames") => list(String.t()())
      }
      
  """
  @type deregister_devices_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      training_job_definition() :: %{
        "HyperParameters" => map(),
        "InputDataConfig" => list(channel()()),
        "OutputDataConfig" => output_data_config(),
        "ResourceConfig" => resource_config(),
        "StoppingCondition" => stopping_condition(),
        "TrainingInputMode" => list(any())
      }
      
  """
  @type training_job_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      trial_summary() :: %{
        "CreationTime" => non_neg_integer(),
        "DisplayName" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "TrialArn" => String.t(),
        "TrialName" => String.t(),
        "TrialSource" => trial_source()
      }
      
  """
  @type trial_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      workforce_vpc_config_response() :: %{
        "SecurityGroupIds" => list(String.t()()),
        "Subnets" => list(String.t()()),
        "VpcEndpointId" => String.t(),
        "VpcId" => String.t()
      }
      
  """
  @type workforce_vpc_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      jupyter_lab_app_image_config() :: %{
        "ContainerConfig" => container_config(),
        "FileSystemConfig" => file_system_config()
      }
      
  """
  @type jupyter_lab_app_image_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      monitoring_network_config() :: %{
        "EnableInterContainerTrafficEncryption" => boolean(),
        "EnableNetworkIsolation" => boolean(),
        "VpcConfig" => vpc_config()
      }
      
  """
  @type monitoring_network_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_feature_metadata_response() :: %{
        "CreationTime" => non_neg_integer(),
        "Description" => String.t(),
        "FeatureGroupArn" => String.t(),
        "FeatureGroupName" => String.t(),
        "FeatureName" => String.t(),
        "FeatureType" => list(any()),
        "LastModifiedTime" => non_neg_integer(),
        "Parameters" => list(feature_parameter()())
      }
      
  """
  @type describe_feature_metadata_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      model_quality_app_specification() :: %{
        "ContainerArguments" => list(String.t()()),
        "ContainerEntrypoint" => list(String.t()()),
        "Environment" => map(),
        "ImageUri" => String.t(),
        "PostAnalyticsProcessorSourceUri" => String.t(),
        "ProblemType" => list(any()),
        "RecordPreprocessorSourceUri" => String.t()
      }
      
  """
  @type model_quality_app_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_training_jobs_request() :: %{
        optional("CreationTimeAfter") => non_neg_integer(),
        optional("CreationTimeBefore") => non_neg_integer(),
        optional("LastModifiedTimeAfter") => non_neg_integer(),
        optional("LastModifiedTimeBefore") => non_neg_integer(),
        optional("MaxResults") => integer(),
        optional("NameContains") => String.t(),
        optional("NextToken") => String.t(),
        optional("SortBy") => list(any()),
        optional("SortOrder") => list(any()),
        optional("StatusEquals") => list(any()),
        optional("WarmPoolStatusEquals") => list(any())
      }
      
  """
  @type list_training_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      inference_component_startup_parameters() :: %{
        "ContainerStartupHealthCheckTimeoutInSeconds" => integer(),
        "ModelDataDownloadTimeoutInSeconds" => integer()
      }
      
  """
  @type inference_component_startup_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      integer_parameter_range_specification() :: %{
        "MaxValue" => String.t(),
        "MinValue" => String.t()
      }
      
  """
  @type integer_parameter_range_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      auto_ml_data_source() :: %{
        "S3DataSource" => auto_ml_s3_data_source()
      }
      
  """
  @type auto_ml_data_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      auto_ml_partial_failure_reason() :: %{
        "PartialFailureMessage" => String.t()
      }
      
  """
  @type auto_ml_partial_failure_reason() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_app_response() :: %{
        "AppArn" => String.t(),
        "AppName" => String.t(),
        "AppType" => list(any()),
        "CreationTime" => non_neg_integer(),
        "DomainId" => String.t(),
        "FailureReason" => String.t(),
        "LastHealthCheckTimestamp" => non_neg_integer(),
        "LastUserActivityTimestamp" => non_neg_integer(),
        "ResourceSpec" => resource_spec(),
        "SpaceName" => String.t(),
        "Status" => list(any()),
        "UserProfileName" => String.t()
      }
      
  """
  @type describe_app_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      algorithm_status_item() :: %{
        "FailureReason" => String.t(),
        "Name" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type algorithm_status_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_tags_input() :: %{
        required("ResourceArn") => String.t(),
        required("Tags") => list(tag()())
      }
      
  """
  @type add_tags_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_device_fleet_request() :: %{
        required("DeviceFleetName") => String.t()
      }
      
  """
  @type describe_device_fleet_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disable_sagemaker_servicecatalog_portfolio_output() :: %{}
      
  """
  @type disable_sagemaker_servicecatalog_portfolio_output() :: %{}

  @typedoc """

  ## Example:
      
      profiler_config() :: %{
        "DisableProfiler" => boolean(),
        "ProfilingIntervalInMilliseconds" => float(),
        "ProfilingParameters" => map(),
        "S3OutputPath" => String.t()
      }
      
  """
  @type profiler_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_hubs_response() :: %{
        "HubSummaries" => list(hub_info()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_hubs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      r_studio_server_pro_domain_settings_for_update() :: %{
        "DefaultResourceSpec" => resource_spec(),
        "DomainExecutionRoleArn" => String.t(),
        "RStudioConnectUrl" => String.t(),
        "RStudioPackageManagerUrl" => String.t()
      }
      
  """
  @type r_studio_server_pro_domain_settings_for_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      monitoring_parquet_dataset_format() :: %{}
      
  """
  @type monitoring_parquet_dataset_format() :: %{}

  @typedoc """

  ## Example:
      
      endpoint_metadata() :: %{
        "EndpointConfigName" => String.t(),
        "EndpointName" => String.t(),
        "EndpointStatus" => list(any()),
        "FailureReason" => String.t()
      }
      
  """
  @type endpoint_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_inference_experiment_request() :: %{
        required("Name") => String.t()
      }
      
  """
  @type delete_inference_experiment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      endpoint_input() :: %{
        "EndTimeOffset" => String.t(),
        "EndpointName" => String.t(),
        "ExcludeFeaturesAttribute" => String.t(),
        "FeaturesAttribute" => String.t(),
        "InferenceAttribute" => String.t(),
        "LocalPath" => String.t(),
        "ProbabilityAttribute" => String.t(),
        "ProbabilityThresholdAttribute" => float(),
        "S3DataDistributionType" => list(any()),
        "S3InputMode" => list(any()),
        "StartTimeOffset" => String.t()
      }
      
  """
  @type endpoint_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_model_explainability_job_definition_request() :: %{
        required("JobDefinitionName") => String.t()
      }
      
  """
  @type delete_model_explainability_job_definition_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      data_catalog_config() :: %{
        "Catalog" => String.t(),
        "Database" => String.t(),
        "TableName" => String.t()
      }
      
  """
  @type data_catalog_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      image_config() :: %{
        "RepositoryAccessMode" => list(any()),
        "RepositoryAuthConfig" => repository_auth_config()
      }
      
  """
  @type image_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_monitoring_alert_history_response() :: %{
        "MonitoringAlertHistory" => list(monitoring_alert_history_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_monitoring_alert_history_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      space_details() :: %{
        "CreationTime" => non_neg_integer(),
        "DomainId" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "OwnershipSettingsSummary" => ownership_settings_summary(),
        "SpaceDisplayName" => String.t(),
        "SpaceName" => String.t(),
        "SpaceSettingsSummary" => space_settings_summary(),
        "SpaceSharingSettingsSummary" => space_sharing_settings_summary(),
        "Status" => list(any())
      }
      
  """
  @type space_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_feature_metadata_request() :: %{
        required("FeatureGroupName") => String.t(),
        required("FeatureName") => String.t()
      }
      
  """
  @type describe_feature_metadata_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_artifact_response() :: %{
        "ArtifactArn" => String.t()
      }
      
  """
  @type delete_artifact_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_feature_group_response() :: %{
        "CreationTime" => non_neg_integer(),
        "Description" => String.t(),
        "EventTimeFeatureName" => String.t(),
        "FailureReason" => String.t(),
        "FeatureDefinitions" => list(feature_definition()()),
        "FeatureGroupArn" => String.t(),
        "FeatureGroupName" => String.t(),
        "FeatureGroupStatus" => list(any()),
        "LastModifiedTime" => non_neg_integer(),
        "LastUpdateStatus" => last_update_status(),
        "NextToken" => String.t(),
        "OfflineStoreConfig" => offline_store_config(),
        "OfflineStoreStatus" => offline_store_status(),
        "OnlineStoreConfig" => online_store_config(),
        "OnlineStoreTotalSizeBytes" => float(),
        "RecordIdentifierFeatureName" => String.t(),
        "RoleArn" => String.t(),
        "ThroughputConfig" => throughput_config_description()
      }
      
  """
  @type describe_feature_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      drift_check_explainability() :: %{
        "ConfigFile" => file_source(),
        "Constraints" => metrics_source()
      }
      
  """
  @type drift_check_explainability() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      data_capture_config() :: %{
        "CaptureContentTypeHeader" => capture_content_type_header(),
        "CaptureOptions" => list(capture_option()()),
        "DestinationS3Uri" => String.t(),
        "EnableCapture" => boolean(),
        "InitialSamplingPercentage" => integer(),
        "KmsKeyId" => String.t()
      }
      
  """
  @type data_capture_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_hub_content_request() :: %{
        optional("HubContentDescription") => String.t(),
        optional("HubContentDisplayName") => String.t(),
        optional("HubContentMarkdown") => String.t(),
        optional("HubContentSearchKeywords") => list(String.t()()),
        optional("HubContentVersion") => String.t(),
        optional("Tags") => list(tag()()),
        required("DocumentSchemaVersion") => String.t(),
        required("HubContentDocument") => String.t(),
        required("HubContentName") => String.t(),
        required("HubContentType") => list(any()),
        required("HubName") => String.t()
      }
      
  """
  @type import_hub_content_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_model_card_request() :: %{
        required("ModelCardName") => String.t()
      }
      
  """
  @type delete_model_card_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_model_cards_request() :: %{
        optional("CreationTimeAfter") => non_neg_integer(),
        optional("CreationTimeBefore") => non_neg_integer(),
        optional("MaxResults") => integer(),
        optional("ModelCardStatus") => list(any()),
        optional("NameContains") => String.t(),
        optional("NextToken") => String.t(),
        optional("SortBy") => list(any()),
        optional("SortOrder") => list(any())
      }
      
  """
  @type list_model_cards_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      edge_deployment_status() :: %{
        "EdgeDeploymentFailedInStage" => integer(),
        "EdgeDeploymentPendingInStage" => integer(),
        "EdgeDeploymentStageStartTime" => non_neg_integer(),
        "EdgeDeploymentStatusMessage" => String.t(),
        "EdgeDeploymentSuccessInStage" => integer(),
        "StageStatus" => list(any())
      }
      
  """
  @type edge_deployment_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tuning_job_completion_criteria() :: %{
        "BestObjectiveNotImproving" => best_objective_not_improving(),
        "ConvergenceDetected" => convergence_detected(),
        "TargetObjectiveMetricValue" => float()
      }
      
  """
  @type tuning_job_completion_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_model_step_metadata() :: %{
        "Arn" => String.t()
      }
      
  """
  @type register_model_step_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      e_f_s_file_system_config() :: %{
        "FileSystemId" => String.t(),
        "FileSystemPath" => String.t()
      }
      
  """
  @type e_f_s_file_system_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_scaling_configuration_recommendation_response() :: %{
        "DynamicScalingConfiguration" => dynamic_scaling_configuration(),
        "EndpointName" => String.t(),
        "InferenceRecommendationsJobName" => String.t(),
        "Metric" => scaling_policy_metric(),
        "RecommendationId" => String.t(),
        "ScalingPolicyObjective" => scaling_policy_objective(),
        "TargetCpuUtilizationPerCore" => integer()
      }
      
  """
  @type get_scaling_configuration_recommendation_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_processing_job_request() :: %{
        required("ProcessingJobName") => String.t()
      }
      
  """
  @type stop_processing_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_trial_response() :: %{
        "TrialArn" => String.t()
      }
      
  """
  @type create_trial_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      recommendation_job_compiled_output_config() :: %{
        "S3OutputUri" => String.t()
      }
      
  """
  @type recommendation_job_compiled_output_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_endpoint_output() :: %{
        "EndpointArn" => String.t()
      }
      
  """
  @type create_endpoint_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_catalog_provisioning_update_details() :: %{
        "ProvisioningArtifactId" => String.t(),
        "ProvisioningParameters" => list(provisioning_parameter()())
      }
      
  """
  @type service_catalog_provisioning_update_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      repository_auth_config() :: %{
        "RepositoryCredentialsProviderArn" => String.t()
      }
      
  """
  @type repository_auth_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_endpoint_output() :: %{
        "AsyncInferenceConfig" => async_inference_config(),
        "CreationTime" => non_neg_integer(),
        "DataCaptureConfig" => data_capture_config_summary(),
        "EndpointArn" => String.t(),
        "EndpointConfigName" => String.t(),
        "EndpointName" => String.t(),
        "EndpointStatus" => list(any()),
        "ExplainerConfig" => explainer_config(),
        "FailureReason" => String.t(),
        "LastDeploymentConfig" => deployment_config(),
        "LastModifiedTime" => non_neg_integer(),
        "PendingDeploymentSummary" => pending_deployment_summary(),
        "ProductionVariants" => list(production_variant_summary()()),
        "ShadowProductionVariants" => list(production_variant_summary()())
      }
      
  """
  @type describe_endpoint_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      final_auto_ml_job_objective_metric() :: %{
        "MetricName" => list(any()),
        "StandardMetricName" => list(any()),
        "Type" => list(any()),
        "Value" => float()
      }
      
  """
  @type final_auto_ml_job_objective_metric() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_training_job_request() :: %{
        optional("ProfilerConfig") => profiler_config_for_update(),
        optional("ProfilerRuleConfigurations") => list(profiler_rule_configuration()()),
        optional("RemoteDebugConfig") => remote_debug_config_for_update(),
        optional("ResourceConfig") => resource_config_for_update(),
        required("TrainingJobName") => String.t()
      }
      
  """
  @type update_training_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_context_request() :: %{
        required("ContextName") => String.t()
      }
      
  """
  @type describe_context_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      human_task_ui_summary() :: %{
        "CreationTime" => non_neg_integer(),
        "HumanTaskUiArn" => String.t(),
        "HumanTaskUiName" => String.t()
      }
      
  """
  @type human_task_ui_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_presigned_notebook_instance_url_output() :: %{
        "AuthorizedUrl" => String.t()
      }
      
  """
  @type create_presigned_notebook_instance_url_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_cluster_software_response() :: %{
        "ClusterArn" => String.t()
      }
      
  """
  @type update_cluster_software_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      model_metrics() :: %{
        "Bias" => bias(),
        "Explainability" => explainability(),
        "ModelDataQuality" => model_data_quality(),
        "ModelQuality" => model_quality()
      }
      
  """
  @type model_metrics() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_notebook_instance_lifecycle_configs_output() :: %{
        "NextToken" => String.t(),
        "NotebookInstanceLifecycleConfigs" => list(notebook_instance_lifecycle_config_summary()())
      }
      
  """
  @type list_notebook_instance_lifecycle_configs_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_compilation_job_response() :: %{
        "CompilationEndTime" => non_neg_integer(),
        "CompilationJobArn" => String.t(),
        "CompilationJobName" => String.t(),
        "CompilationJobStatus" => list(any()),
        "CompilationStartTime" => non_neg_integer(),
        "CreationTime" => non_neg_integer(),
        "DerivedInformation" => derived_information(),
        "FailureReason" => String.t(),
        "InferenceImage" => String.t(),
        "InputConfig" => input_config(),
        "LastModifiedTime" => non_neg_integer(),
        "ModelArtifacts" => model_artifacts(),
        "ModelDigests" => model_digests(),
        "ModelPackageVersionArn" => String.t(),
        "OutputConfig" => output_config(),
        "RoleArn" => String.t(),
        "StoppingCondition" => stopping_condition(),
        "VpcConfig" => neo_vpc_config()
      }
      
  """
  @type describe_compilation_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_hyper_parameter_tuning_job_request() :: %{
        required("HyperParameterTuningJobName") => String.t()
      }
      
  """
  @type stop_hyper_parameter_tuning_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_trial_component_response() :: %{
        "TrialArn" => String.t(),
        "TrialComponentArn" => String.t()
      }
      
  """
  @type associate_trial_component_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_notebook_instance_input() :: %{
        required("NotebookInstanceName") => String.t()
      }
      
  """
  @type delete_notebook_instance_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_labeling_jobs_for_workteam_request() :: %{
        optional("CreationTimeAfter") => non_neg_integer(),
        optional("CreationTimeBefore") => non_neg_integer(),
        optional("JobReferenceCodeContains") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SortBy") => list(any()),
        optional("SortOrder") => list(any()),
        required("WorkteamArn") => String.t()
      }
      
  """
  @type list_labeling_jobs_for_workteam_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      recommendation_job_vpc_config() :: %{
        "SecurityGroupIds" => list(String.t()()),
        "Subnets" => list(String.t()())
      }
      
  """
  @type recommendation_job_vpc_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_workforce_response() :: %{
        "WorkforceArn" => String.t()
      }
      
  """
  @type create_workforce_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      flow_definition_output_config() :: %{
        "KmsKeyId" => String.t(),
        "S3OutputPath" => String.t()
      }
      
  """
  @type flow_definition_output_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_cluster_request() :: %{
        required("ClusterName") => String.t(),
        required("InstanceGroups") => list(cluster_instance_group_specification()())
      }
      
  """
  @type update_cluster_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_edge_deployment_plan_request() :: %{
        required("EdgeDeploymentPlanName") => String.t()
      }
      
  """
  @type delete_edge_deployment_plan_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_code_repositories_output() :: %{
        "CodeRepositorySummaryList" => list(code_repository_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_code_repositories_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_edge_deployment_stage_request() :: %{
        required("EdgeDeploymentPlanName") => String.t(),
        required("StageName") => String.t()
      }
      
  """
  @type stop_edge_deployment_stage_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      hub_s3_storage_config() :: %{
        "S3OutputPath" => String.t()
      }
      
  """
  @type hub_s3_storage_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_action_response() :: %{
        "ActionArn" => String.t()
      }
      
  """
  @type create_action_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      oidc_config() :: %{
        "AuthenticationRequestExtraParams" => map(),
        "AuthorizationEndpoint" => String.t(),
        "ClientId" => String.t(),
        "ClientSecret" => String.t(),
        "Issuer" => String.t(),
        "JwksUri" => String.t(),
        "LogoutEndpoint" => String.t(),
        "Scope" => String.t(),
        "TokenEndpoint" => String.t(),
        "UserInfoEndpoint" => String.t()
      }
      
  """
  @type oidc_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_model_card_request() :: %{
        optional("SecurityConfig") => model_card_security_config(),
        optional("Tags") => list(tag()()),
        required("Content") => String.t(),
        required("ModelCardName") => String.t(),
        required("ModelCardStatus") => list(any())
      }
      
  """
  @type create_model_card_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      algorithm_specification() :: %{
        "AlgorithmName" => String.t(),
        "ContainerArguments" => list(String.t()()),
        "ContainerEntrypoint" => list(String.t()()),
        "EnableSageMakerMetricsTimeSeries" => boolean(),
        "MetricDefinitions" => list(metric_definition()()),
        "TrainingImage" => String.t(),
        "TrainingImageConfig" => training_image_config(),
        "TrainingInputMode" => list(any())
      }
      
  """
  @type algorithm_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_image_version_request() :: %{
        optional("Aliases") => list(String.t()()),
        optional("Horovod") => boolean(),
        optional("JobType") => list(any()),
        optional("MLFramework") => String.t(),
        optional("Processor") => list(any()),
        optional("ProgrammingLang") => String.t(),
        optional("ReleaseNotes") => String.t(),
        optional("VendorGuidance") => list(any()),
        required("BaseImage") => String.t(),
        required("ClientToken") => String.t(),
        required("ImageName") => String.t()
      }
      
  """
  @type create_image_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      production_variant_summary() :: %{
        "CurrentInstanceCount" => integer(),
        "CurrentServerlessConfig" => production_variant_serverless_config(),
        "CurrentWeight" => float(),
        "DeployedImages" => list(deployed_image()()),
        "DesiredInstanceCount" => integer(),
        "DesiredServerlessConfig" => production_variant_serverless_config(),
        "DesiredWeight" => float(),
        "ManagedInstanceScaling" => production_variant_managed_instance_scaling(),
        "RoutingConfig" => production_variant_routing_config(),
        "VariantName" => String.t(),
        "VariantStatus" => list(production_variant_status()())
      }
      
  """
  @type production_variant_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_edge_packaging_job_request() :: %{
        required("EdgePackagingJobName") => String.t()
      }
      
  """
  @type describe_edge_packaging_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      monitoring_alert_history_summary() :: %{
        "AlertStatus" => list(any()),
        "CreationTime" => non_neg_integer(),
        "MonitoringAlertName" => String.t(),
        "MonitoringScheduleName" => String.t()
      }
      
  """
  @type monitoring_alert_history_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_model_explainability_job_definition_request() :: %{
        optional("ModelExplainabilityBaselineConfig") => model_explainability_baseline_config(),
        optional("NetworkConfig") => monitoring_network_config(),
        optional("StoppingCondition") => monitoring_stopping_condition(),
        optional("Tags") => list(tag()()),
        required("JobDefinitionName") => String.t(),
        required("JobResources") => monitoring_resources(),
        required("ModelExplainabilityAppSpecification") => model_explainability_app_specification(),
        required("ModelExplainabilityJobInput") => model_explainability_job_input(),
        required("ModelExplainabilityJobOutputConfig") => monitoring_output_config(),
        required("RoleArn") => String.t()
      }
      
  """
  @type create_model_explainability_job_definition_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_action_request() :: %{
        optional("Description") => String.t(),
        optional("Properties") => map(),
        optional("PropertiesToRemove") => list(String.t()()),
        optional("Status") => list(any()),
        required("ActionName") => String.t()
      }
      
  """
  @type update_action_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_code_repository_output() :: %{
        "CodeRepositoryArn" => String.t()
      }
      
  """
  @type update_code_repository_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      image_version() :: %{
        "CreationTime" => non_neg_integer(),
        "FailureReason" => String.t(),
        "ImageArn" => String.t(),
        "ImageVersionArn" => String.t(),
        "ImageVersionStatus" => list(any()),
        "LastModifiedTime" => non_neg_integer(),
        "Version" => integer()
      }
      
  """
  @type image_version() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_catalog_provisioning_details() :: %{
        "PathId" => String.t(),
        "ProductId" => String.t(),
        "ProvisioningArtifactId" => String.t(),
        "ProvisioningParameters" => list(provisioning_parameter()())
      }
      
  """
  @type service_catalog_provisioning_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      iam_identity() :: %{
        "Arn" => String.t(),
        "PrincipalId" => String.t(),
        "SourceIdentity" => String.t()
      }
      
  """
  @type iam_identity() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_action_request() :: %{
        required("ActionName") => String.t()
      }
      
  """
  @type describe_action_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      customized_metric_specification() :: %{
        "MetricName" => String.t(),
        "Namespace" => String.t(),
        "Statistic" => list(any())
      }
      
  """
  @type customized_metric_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_association_request() :: %{
        required("DestinationArn") => String.t(),
        required("SourceArn") => String.t()
      }
      
  """
  @type delete_association_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_image_version_response() :: %{}
      
  """
  @type delete_image_version_response() :: %{}

  @typedoc """

  ## Example:
      
      app_specification() :: %{
        "ContainerArguments" => list(String.t()()),
        "ContainerEntrypoint" => list(String.t()()),
        "ImageUri" => String.t()
      }
      
  """
  @type app_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      edge_preset_deployment_output() :: %{
        "Artifact" => String.t(),
        "Status" => list(any()),
        "StatusMessage" => String.t(),
        "Type" => list(any())
      }
      
  """
  @type edge_preset_deployment_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_project_output() :: %{
        "CreatedBy" => user_context(),
        "CreationTime" => non_neg_integer(),
        "LastModifiedBy" => user_context(),
        "LastModifiedTime" => non_neg_integer(),
        "ProjectArn" => String.t(),
        "ProjectDescription" => String.t(),
        "ProjectId" => String.t(),
        "ProjectName" => String.t(),
        "ProjectStatus" => list(any()),
        "ServiceCatalogProvisionedProductDetails" => service_catalog_provisioned_product_details(),
        "ServiceCatalogProvisioningDetails" => service_catalog_provisioning_details()
      }
      
  """
  @type describe_project_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      user_profile_details() :: %{
        "CreationTime" => non_neg_integer(),
        "DomainId" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "Status" => list(any()),
        "UserProfileName" => String.t()
      }
      
  """
  @type user_profile_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_data_quality_job_definition_request() :: %{
        required("JobDefinitionName") => String.t()
      }
      
  """
  @type describe_data_quality_job_definition_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      query_lineage_request() :: %{
        optional("Direction") => list(any()),
        optional("Filters") => query_filters(),
        optional("IncludeEdges") => boolean(),
        optional("MaxDepth") => integer(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("StartArns") => list(String.t()())
      }
      
  """
  @type query_lineage_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_lineage_group_response() :: %{
        "CreatedBy" => user_context(),
        "CreationTime" => non_neg_integer(),
        "Description" => String.t(),
        "DisplayName" => String.t(),
        "LastModifiedBy" => user_context(),
        "LastModifiedTime" => non_neg_integer(),
        "LineageGroupArn" => String.t(),
        "LineageGroupName" => String.t()
      }
      
  """
  @type describe_lineage_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_endpoint_configs_output() :: %{
        "EndpointConfigs" => list(endpoint_config_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_endpoint_configs_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      algorithm_status_details() :: %{
        "ImageScanStatuses" => list(algorithm_status_item()()),
        "ValidationStatuses" => list(algorithm_status_item()())
      }
      
  """
  @type algorithm_status_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      query_lineage_response() :: %{
        "Edges" => list(edge()()),
        "NextToken" => String.t(),
        "Vertices" => list(vertex()())
      }
      
  """
  @type query_lineage_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      async_inference_config() :: %{
        "ClientConfig" => async_inference_client_config(),
        "OutputConfig" => async_inference_output_config()
      }
      
  """
  @type async_inference_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_sagemaker_servicecatalog_portfolio_status_input() :: %{}
      
  """
  @type get_sagemaker_servicecatalog_portfolio_status_input() :: %{}

  @typedoc """

  ## Example:
      
      throughput_config_description() :: %{
        "ProvisionedReadCapacityUnits" => integer(),
        "ProvisionedWriteCapacityUnits" => integer(),
        "ThroughputMode" => list(any())
      }
      
  """
  @type throughput_config_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance_metadata_service_configuration() :: %{
        "MinimumInstanceMetadataServiceVersion" => String.t()
      }
      
  """
  @type instance_metadata_service_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      auto_ml_job_summary() :: %{
        "AutoMLJobArn" => String.t(),
        "AutoMLJobName" => String.t(),
        "AutoMLJobSecondaryStatus" => list(any()),
        "AutoMLJobStatus" => list(any()),
        "CreationTime" => non_neg_integer(),
        "EndTime" => non_neg_integer(),
        "FailureReason" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "PartialFailureReasons" => list(auto_ml_partial_failure_reason()())
      }
      
  """
  @type auto_ml_job_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      member_definition() :: %{
        "CognitoMemberDefinition" => cognito_member_definition(),
        "OidcMemberDefinition" => oidc_member_definition()
      }
      
  """
  @type member_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_mlflow_tracking_servers_response() :: %{
        "NextToken" => String.t(),
        "TrackingServerSummaries" => list(tracking_server_summary()())
      }
      
  """
  @type list_mlflow_tracking_servers_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_image_version_request() :: %{
        optional("Alias") => String.t(),
        optional("Version") => integer(),
        required("ImageName") => String.t()
      }
      
  """
  @type delete_image_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      quality_check_step_metadata() :: %{
        "BaselineUsedForDriftCheckConstraints" => String.t(),
        "BaselineUsedForDriftCheckStatistics" => String.t(),
        "CalculatedBaselineConstraints" => String.t(),
        "CalculatedBaselineStatistics" => String.t(),
        "CheckJobArn" => String.t(),
        "CheckType" => String.t(),
        "ModelPackageGroupName" => String.t(),
        "RegisterNewBaseline" => boolean(),
        "SkipCheck" => boolean(),
        "ViolationReport" => String.t()
      }
      
  """
  @type quality_check_step_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_labeling_jobs_response() :: %{
        "LabelingJobSummaryList" => list(labeling_job_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_labeling_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_model_package_input() :: %{
        required("ModelPackageName") => String.t()
      }
      
  """
  @type delete_model_package_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      model_package() :: %{
        "AdditionalInferenceSpecifications" => list(additional_inference_specification_definition()()),
        "ApprovalDescription" => String.t(),
        "CertifyForMarketplace" => boolean(),
        "CreatedBy" => user_context(),
        "CreationTime" => non_neg_integer(),
        "CustomerMetadataProperties" => map(),
        "Domain" => String.t(),
        "DriftCheckBaselines" => drift_check_baselines(),
        "InferenceSpecification" => inference_specification(),
        "LastModifiedBy" => user_context(),
        "LastModifiedTime" => non_neg_integer(),
        "MetadataProperties" => metadata_properties(),
        "ModelApprovalStatus" => list(any()),
        "ModelCard" => model_package_model_card(),
        "ModelMetrics" => model_metrics(),
        "ModelPackageArn" => String.t(),
        "ModelPackageDescription" => String.t(),
        "ModelPackageGroupName" => String.t(),
        "ModelPackageName" => String.t(),
        "ModelPackageStatus" => list(any()),
        "ModelPackageStatusDetails" => model_package_status_details(),
        "ModelPackageVersion" => integer(),
        "SamplePayloadUrl" => String.t(),
        "SecurityConfig" => model_package_security_config(),
        "SkipModelValidation" => list(any()),
        "SourceAlgorithmSpecification" => source_algorithm_specification(),
        "SourceUri" => String.t(),
        "Tags" => list(tag()()),
        "Task" => String.t(),
        "ValidationSpecification" => model_package_validation_specification()
      }
      
  """
  @type model_package() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      processing_stopping_condition() :: %{
        "MaxRuntimeInSeconds" => integer()
      }
      
  """
  @type processing_stopping_condition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      production_variant_serverless_config() :: %{
        "MaxConcurrency" => integer(),
        "MemorySizeInMB" => integer(),
        "ProvisionedConcurrency" => integer()
      }
      
  """
  @type production_variant_serverless_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      training_job_step_metadata() :: %{
        "Arn" => String.t()
      }
      
  """
  @type training_job_step_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      neo_vpc_config() :: %{
        "SecurityGroupIds" => list(String.t()()),
        "Subnets" => list(String.t()())
      }
      
  """
  @type neo_vpc_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_human_task_ui_request() :: %{
        required("HumanTaskUiName") => String.t()
      }
      
  """
  @type describe_human_task_ui_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      model_quality() :: %{
        "Constraints" => metrics_source(),
        "Statistics" => metrics_source()
      }
      
  """
  @type model_quality() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      edge_packaging_job_summary() :: %{
        "CompilationJobName" => String.t(),
        "CreationTime" => non_neg_integer(),
        "EdgePackagingJobArn" => String.t(),
        "EdgePackagingJobName" => String.t(),
        "EdgePackagingJobStatus" => list(any()),
        "LastModifiedTime" => non_neg_integer(),
        "ModelName" => String.t(),
        "ModelVersion" => String.t()
      }
      
  """
  @type edge_packaging_job_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_transform_job_request() :: %{
        optional("BatchStrategy") => list(any()),
        optional("DataCaptureConfig") => batch_data_capture_config(),
        optional("DataProcessing") => data_processing(),
        optional("Environment") => map(),
        optional("ExperimentConfig") => experiment_config(),
        optional("MaxConcurrentTransforms") => integer(),
        optional("MaxPayloadInMB") => integer(),
        optional("ModelClientConfig") => model_client_config(),
        optional("Tags") => list(tag()()),
        required("ModelName") => String.t(),
        required("TransformInput") => transform_input(),
        required("TransformJobName") => String.t(),
        required("TransformOutput") => transform_output(),
        required("TransformResources") => transform_resources()
      }
      
  """
  @type create_transform_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      transform_job() :: %{
        "AutoMLJobArn" => String.t(),
        "BatchStrategy" => list(any()),
        "CreationTime" => non_neg_integer(),
        "DataCaptureConfig" => batch_data_capture_config(),
        "DataProcessing" => data_processing(),
        "Environment" => map(),
        "ExperimentConfig" => experiment_config(),
        "FailureReason" => String.t(),
        "LabelingJobArn" => String.t(),
        "MaxConcurrentTransforms" => integer(),
        "MaxPayloadInMB" => integer(),
        "ModelClientConfig" => model_client_config(),
        "ModelName" => String.t(),
        "Tags" => list(tag()()),
        "TransformEndTime" => non_neg_integer(),
        "TransformInput" => transform_input(),
        "TransformJobArn" => String.t(),
        "TransformJobName" => String.t(),
        "TransformJobStatus" => list(any()),
        "TransformOutput" => transform_output(),
        "TransformResources" => transform_resources(),
        "TransformStartTime" => non_neg_integer()
      }
      
  """
  @type transform_job() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      suggestion_query() :: %{
        "PropertyNameQuery" => property_name_query()
      }
      
  """
  @type suggestion_query() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_human_task_uis_response() :: %{
        "HumanTaskUiSummaries" => list(human_task_ui_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_human_task_uis_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      selective_execution_result() :: %{
        "SourcePipelineExecutionArn" => String.t()
      }
      
  """
  @type selective_execution_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_workforce_request() :: %{
        required("WorkforceName") => String.t()
      }
      
  """
  @type describe_workforce_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_domain_request() :: %{
        optional("RetentionPolicy") => retention_policy(),
        required("DomainId") => String.t()
      }
      
  """
  @type delete_domain_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster_summary() :: %{
        "ClusterArn" => String.t(),
        "ClusterName" => String.t(),
        "ClusterStatus" => list(any()),
        "CreationTime" => non_neg_integer()
      }
      
  """
  @type cluster_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_trial_response() :: %{
        "CreatedBy" => user_context(),
        "CreationTime" => non_neg_integer(),
        "DisplayName" => String.t(),
        "ExperimentName" => String.t(),
        "LastModifiedBy" => user_context(),
        "LastModifiedTime" => non_neg_integer(),
        "MetadataProperties" => metadata_properties(),
        "Source" => trial_source(),
        "TrialArn" => String.t(),
        "TrialName" => String.t()
      }
      
  """
  @type describe_trial_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      renderable_task() :: %{
        "Input" => String.t()
      }
      
  """
  @type renderable_task() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      app_details() :: %{
        "AppName" => String.t(),
        "AppType" => list(any()),
        "CreationTime" => non_neg_integer(),
        "DomainId" => String.t(),
        "ResourceSpec" => resource_spec(),
        "SpaceName" => String.t(),
        "Status" => list(any()),
        "UserProfileName" => String.t()
      }
      
  """
  @type app_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_model_bias_job_definitions_request() :: %{
        optional("CreationTimeAfter") => non_neg_integer(),
        optional("CreationTimeBefore") => non_neg_integer(),
        optional("EndpointName") => String.t(),
        optional("MaxResults") => integer(),
        optional("NameContains") => String.t(),
        optional("NextToken") => String.t(),
        optional("SortBy") => list(any()),
        optional("SortOrder") => list(any())
      }
      
  """
  @type list_model_bias_job_definitions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_algorithms_input() :: %{
        optional("CreationTimeAfter") => non_neg_integer(),
        optional("CreationTimeBefore") => non_neg_integer(),
        optional("MaxResults") => integer(),
        optional("NameContains") => String.t(),
        optional("NextToken") => String.t(),
        optional("SortBy") => list(any()),
        optional("SortOrder") => list(any())
      }
      
  """
  @type list_algorithms_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      generative_ai_settings() :: %{
        "AmazonBedrockRoleArn" => String.t()
      }
      
  """
  @type generative_ai_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_model_input() :: %{
        optional("Containers") => list(container_definition()()),
        optional("EnableNetworkIsolation") => boolean(),
        optional("ExecutionRoleArn") => String.t(),
        optional("InferenceExecutionConfig") => inference_execution_config(),
        optional("PrimaryContainer") => container_definition(),
        optional("Tags") => list(tag()()),
        optional("VpcConfig") => vpc_config(),
        required("ModelName") => String.t()
      }
      
  """
  @type create_model_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_user_profile_request() :: %{
        required("DomainId") => String.t(),
        required("UserProfileName") => String.t()
      }
      
  """
  @type describe_user_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      hyper_parameter_specification() :: %{
        "DefaultValue" => String.t(),
        "Description" => String.t(),
        "IsRequired" => boolean(),
        "IsTunable" => boolean(),
        "Name" => String.t(),
        "Range" => parameter_range(),
        "Type" => list(any())
      }
      
  """
  @type hyper_parameter_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      inference_execution_config() :: %{
        "Mode" => list(any())
      }
      
  """
  @type inference_execution_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_edge_deployment_stage_request() :: %{
        required("EdgeDeploymentPlanName") => String.t(),
        required("StageName") => String.t()
      }
      
  """
  @type start_edge_deployment_stage_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      model_dashboard_indicator_action() :: %{
        "Enabled" => boolean()
      }
      
  """
  @type model_dashboard_indicator_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_model_bias_job_definition_request() :: %{
        required("JobDefinitionName") => String.t()
      }
      
  """
  @type describe_model_bias_job_definition_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      inference_experiment_schedule() :: %{
        "EndTime" => non_neg_integer(),
        "StartTime" => non_neg_integer()
      }
      
  """
  @type inference_experiment_schedule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      auto_parameter() :: %{
        "Name" => String.t(),
        "ValueHint" => String.t()
      }
      
  """
  @type auto_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      transform_s3_data_source() :: %{
        "S3DataType" => list(any()),
        "S3Uri" => String.t()
      }
      
  """
  @type transform_s3_data_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_model_card_response() :: %{
        "Content" => String.t(),
        "CreatedBy" => user_context(),
        "CreationTime" => non_neg_integer(),
        "LastModifiedBy" => user_context(),
        "LastModifiedTime" => non_neg_integer(),
        "ModelCardArn" => String.t(),
        "ModelCardName" => String.t(),
        "ModelCardProcessingStatus" => list(any()),
        "ModelCardStatus" => list(any()),
        "ModelCardVersion" => integer(),
        "SecurityConfig" => model_card_security_config()
      }
      
  """
  @type describe_model_card_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_device_fleet_request() :: %{
        optional("Description") => String.t(),
        optional("EnableIotRoleAlias") => boolean(),
        optional("RoleArn") => String.t(),
        required("DeviceFleetName") => String.t(),
        required("OutputConfig") => edge_output_config()
      }
      
  """
  @type update_device_fleet_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      output_parameter() :: %{
        "Name" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type output_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_hubs_request() :: %{
        optional("CreationTimeAfter") => non_neg_integer(),
        optional("CreationTimeBefore") => non_neg_integer(),
        optional("LastModifiedTimeAfter") => non_neg_integer(),
        optional("LastModifiedTimeBefore") => non_neg_integer(),
        optional("MaxResults") => integer(),
        optional("NameContains") => String.t(),
        optional("NextToken") => String.t(),
        optional("SortBy") => list(any()),
        optional("SortOrder") => list(any())
      }
      
  """
  @type list_hubs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_notebook_instance_output() :: %{
        "AcceleratorTypes" => list(list(any())()),
        "AdditionalCodeRepositories" => list(String.t()()),
        "CreationTime" => non_neg_integer(),
        "DefaultCodeRepository" => String.t(),
        "DirectInternetAccess" => list(any()),
        "FailureReason" => String.t(),
        "InstanceMetadataServiceConfiguration" => instance_metadata_service_configuration(),
        "InstanceType" => list(any()),
        "KmsKeyId" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "NetworkInterfaceId" => String.t(),
        "NotebookInstanceArn" => String.t(),
        "NotebookInstanceLifecycleConfigName" => String.t(),
        "NotebookInstanceName" => String.t(),
        "NotebookInstanceStatus" => list(any()),
        "PlatformIdentifier" => String.t(),
        "RoleArn" => String.t(),
        "RootAccess" => list(any()),
        "SecurityGroups" => list(String.t()()),
        "SubnetId" => String.t(),
        "Url" => String.t(),
        "VolumeSizeInGB" => integer()
      }
      
  """
  @type describe_notebook_instance_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      recommendation_job_payload_config() :: %{
        "SamplePayloadUrl" => String.t(),
        "SupportedContentTypes" => list(String.t()())
      }
      
  """
  @type recommendation_job_payload_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      model_bias_job_input() :: %{
        "BatchTransformInput" => batch_transform_input(),
        "EndpointInput" => endpoint_input(),
        "GroundTruthS3Input" => monitoring_ground_truth_s3_input()
      }
      
  """
  @type model_bias_job_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      compilation_job_summary() :: %{
        "CompilationEndTime" => non_neg_integer(),
        "CompilationJobArn" => String.t(),
        "CompilationJobName" => String.t(),
        "CompilationJobStatus" => list(any()),
        "CompilationStartTime" => non_neg_integer(),
        "CompilationTargetDevice" => list(any()),
        "CompilationTargetPlatformAccelerator" => list(any()),
        "CompilationTargetPlatformArch" => list(any()),
        "CompilationTargetPlatformOs" => list(any()),
        "CreationTime" => non_neg_integer(),
        "LastModifiedTime" => non_neg_integer()
      }
      
  """
  @type compilation_job_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      hyper_parameter_training_job_definition() :: %{
        "AlgorithmSpecification" => hyper_parameter_algorithm_specification(),
        "CheckpointConfig" => checkpoint_config(),
        "DefinitionName" => String.t(),
        "EnableInterContainerTrafficEncryption" => boolean(),
        "EnableManagedSpotTraining" => boolean(),
        "EnableNetworkIsolation" => boolean(),
        "Environment" => map(),
        "HyperParameterRanges" => parameter_ranges(),
        "HyperParameterTuningResourceConfig" => hyper_parameter_tuning_resource_config(),
        "InputDataConfig" => list(channel()()),
        "OutputDataConfig" => output_data_config(),
        "ResourceConfig" => resource_config(),
        "RetryStrategy" => retry_strategy(),
        "RoleArn" => String.t(),
        "StaticHyperParameters" => map(),
        "StoppingCondition" => stopping_condition(),
        "TuningObjective" => hyper_parameter_tuning_job_objective(),
        "VpcConfig" => vpc_config()
      }
      
  """
  @type hyper_parameter_training_job_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_association_response() :: %{
        "DestinationArn" => String.t(),
        "SourceArn" => String.t()
      }
      
  """
  @type add_association_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      r_studio_server_pro_app_settings() :: %{
        "AccessStatus" => list(any()),
        "UserGroup" => list(any())
      }
      
  """
  @type r_studio_server_pro_app_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      labeling_job_resource_config() :: %{
        "VolumeKmsKeyId" => String.t(),
        "VpcConfig" => vpc_config()
      }
      
  """
  @type labeling_job_resource_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      monitoring_ground_truth_s3_input() :: %{
        "S3Uri" => String.t()
      }
      
  """
  @type monitoring_ground_truth_s3_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      convergence_detected() :: %{
        "CompleteOnConvergence" => list(any())
      }
      
  """
  @type convergence_detected() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_model_card_request() :: %{
        optional("Content") => String.t(),
        optional("ModelCardStatus") => list(any()),
        required("ModelCardName") => String.t()
      }
      
  """
  @type update_model_card_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_model_package_group_policy_input() :: %{
        required("ModelPackageGroupName") => String.t()
      }
      
  """
  @type delete_model_package_group_policy_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_inference_recommendations_job_response() :: %{
        "JobArn" => String.t()
      }
      
  """
  @type create_inference_recommendations_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_context_response() :: %{
        "ContextArn" => String.t(),
        "ContextName" => String.t(),
        "ContextType" => String.t(),
        "CreatedBy" => user_context(),
        "CreationTime" => non_neg_integer(),
        "Description" => String.t(),
        "LastModifiedBy" => user_context(),
        "LastModifiedTime" => non_neg_integer(),
        "LineageGroupArn" => String.t(),
        "Properties" => map(),
        "Source" => context_source()
      }
      
  """
  @type describe_context_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_hyper_parameter_tuning_job_request() :: %{
        required("HyperParameterTuningJobName") => String.t()
      }
      
  """
  @type delete_hyper_parameter_tuning_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      inference_experiment_data_storage_config() :: %{
        "ContentType" => capture_content_type_header(),
        "Destination" => String.t(),
        "KmsKey" => String.t()
      }
      
  """
  @type inference_experiment_data_storage_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      inference_hub_access_config() :: %{
        "HubContentArn" => String.t()
      }
      
  """
  @type inference_hub_access_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      session_chaining_config() :: %{
        "EnableSessionTagChaining" => boolean()
      }
      
  """
  @type session_chaining_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_data_quality_job_definition_request() :: %{
        optional("DataQualityBaselineConfig") => data_quality_baseline_config(),
        optional("NetworkConfig") => monitoring_network_config(),
        optional("StoppingCondition") => monitoring_stopping_condition(),
        optional("Tags") => list(tag()()),
        required("DataQualityAppSpecification") => data_quality_app_specification(),
        required("DataQualityJobInput") => data_quality_job_input(),
        required("DataQualityJobOutputConfig") => monitoring_output_config(),
        required("JobDefinitionName") => String.t(),
        required("JobResources") => monitoring_resources(),
        required("RoleArn") => String.t()
      }
      
  """
  @type create_data_quality_job_definition_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_monitoring_executions_request() :: %{
        optional("CreationTimeAfter") => non_neg_integer(),
        optional("CreationTimeBefore") => non_neg_integer(),
        optional("EndpointName") => String.t(),
        optional("LastModifiedTimeAfter") => non_neg_integer(),
        optional("LastModifiedTimeBefore") => non_neg_integer(),
        optional("MaxResults") => integer(),
        optional("MonitoringJobDefinitionName") => String.t(),
        optional("MonitoringScheduleName") => String.t(),
        optional("MonitoringTypeEquals") => list(any()),
        optional("NextToken") => String.t(),
        optional("ScheduledTimeAfter") => non_neg_integer(),
        optional("ScheduledTimeBefore") => non_neg_integer(),
        optional("SortBy") => list(any()),
        optional("SortOrder") => list(any()),
        optional("StatusEquals") => list(any())
      }
      
  """
  @type list_monitoring_executions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_model_quality_job_definition_request() :: %{
        optional("ModelQualityBaselineConfig") => model_quality_baseline_config(),
        optional("NetworkConfig") => monitoring_network_config(),
        optional("StoppingCondition") => monitoring_stopping_condition(),
        optional("Tags") => list(tag()()),
        required("JobDefinitionName") => String.t(),
        required("JobResources") => monitoring_resources(),
        required("ModelQualityAppSpecification") => model_quality_app_specification(),
        required("ModelQualityJobInput") => model_quality_job_input(),
        required("ModelQualityJobOutputConfig") => monitoring_output_config(),
        required("RoleArn") => String.t()
      }
      
  """
  @type create_model_quality_job_definition_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_monitoring_schedules_request() :: %{
        optional("CreationTimeAfter") => non_neg_integer(),
        optional("CreationTimeBefore") => non_neg_integer(),
        optional("EndpointName") => String.t(),
        optional("LastModifiedTimeAfter") => non_neg_integer(),
        optional("LastModifiedTimeBefore") => non_neg_integer(),
        optional("MaxResults") => integer(),
        optional("MonitoringJobDefinitionName") => String.t(),
        optional("MonitoringTypeEquals") => list(any()),
        optional("NameContains") => String.t(),
        optional("NextToken") => String.t(),
        optional("SortBy") => list(any()),
        optional("SortOrder") => list(any()),
        optional("StatusEquals") => list(any())
      }
      
  """
  @type list_monitoring_schedules_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_flow_definition_request() :: %{
        required("FlowDefinitionName") => String.t()
      }
      
  """
  @type delete_flow_definition_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      capacity_size() :: %{
        "Type" => list(any()),
        "Value" => integer()
      }
      
  """
  @type capacity_size() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_image_versions_request() :: %{
        optional("CreationTimeAfter") => non_neg_integer(),
        optional("CreationTimeBefore") => non_neg_integer(),
        optional("LastModifiedTimeAfter") => non_neg_integer(),
        optional("LastModifiedTimeBefore") => non_neg_integer(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SortBy") => list(any()),
        optional("SortOrder") => list(any()),
        required("ImageName") => String.t()
      }
      
  """
  @type list_image_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_cluster_request() :: %{
        optional("Tags") => list(tag()()),
        optional("VpcConfig") => vpc_config(),
        required("ClusterName") => String.t(),
        required("InstanceGroups") => list(cluster_instance_group_specification()())
      }
      
  """
  @type create_cluster_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_notebook_instance_lifecycle_config_input() :: %{
        optional("OnCreate") => list(notebook_instance_lifecycle_hook()()),
        optional("OnStart") => list(notebook_instance_lifecycle_hook()()),
        required("NotebookInstanceLifecycleConfigName") => String.t()
      }
      
  """
  @type create_notebook_instance_lifecycle_config_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_studio_lifecycle_config_response() :: %{
        "StudioLifecycleConfigArn" => String.t()
      }
      
  """
  @type create_studio_lifecycle_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      auto_ml_candidate_generation_config() :: %{
        "AlgorithmsConfig" => list(auto_ml_algorithm_config()()),
        "FeatureSpecificationS3Uri" => String.t()
      }
      
  """
  @type auto_ml_candidate_generation_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      artifact_source() :: %{
        "SourceTypes" => list(artifact_source_type()()),
        "SourceUri" => String.t()
      }
      
  """
  @type artifact_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      emr_serverless_compute_config() :: %{
        "ExecutionRoleARN" => String.t()
      }
      
  """
  @type emr_serverless_compute_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      metric_datum() :: %{
        "MetricName" => list(any()),
        "Set" => list(any()),
        "StandardMetricName" => list(any()),
        "Value" => float()
      }
      
  """
  @type metric_datum() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      direct_deploy_settings() :: %{
        "Status" => list(any())
      }
      
  """
  @type direct_deploy_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      model_card_version_summary() :: %{
        "CreationTime" => non_neg_integer(),
        "LastModifiedTime" => non_neg_integer(),
        "ModelCardArn" => String.t(),
        "ModelCardName" => String.t(),
        "ModelCardStatus" => list(any()),
        "ModelCardVersion" => integer()
      }
      
  """
  @type model_card_version_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_optimization_job_request() :: %{
        optional("OptimizationEnvironment") => map(),
        optional("Tags") => list(tag()()),
        optional("VpcConfig") => optimization_vpc_config(),
        required("DeploymentInstanceType") => list(any()),
        required("ModelSource") => optimization_job_model_source(),
        required("OptimizationConfigs") => list(list()()),
        required("OptimizationJobName") => String.t(),
        required("OutputConfig") => optimization_job_output_config(),
        required("RoleArn") => String.t(),
        required("StoppingCondition") => stopping_condition()
      }
      
  """
  @type create_optimization_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      pending_deployment_summary() :: %{
        "EndpointConfigName" => String.t(),
        "ProductionVariants" => list(pending_production_variant_summary()()),
        "ShadowProductionVariants" => list(pending_production_variant_summary()()),
        "StartTime" => non_neg_integer()
      }
      
  """
  @type pending_deployment_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_workteam_response() :: %{
        "Success" => boolean()
      }
      
  """
  @type delete_workteam_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      processing_output() :: %{
        "AppManaged" => boolean(),
        "FeatureStoreOutput" => processing_feature_store_output(),
        "OutputName" => String.t(),
        "S3Output" => processing_s3_output()
      }
      
  """
  @type processing_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      clarify_check_step_metadata() :: %{
        "BaselineUsedForDriftCheckConstraints" => String.t(),
        "CalculatedBaselineConstraints" => String.t(),
        "CheckJobArn" => String.t(),
        "CheckType" => String.t(),
        "ModelPackageGroupName" => String.t(),
        "RegisterNewBaseline" => boolean(),
        "SkipCheck" => boolean(),
        "ViolationReport" => String.t()
      }
      
  """
  @type clarify_check_step_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_compilation_job_response() :: %{
        "CompilationJobArn" => String.t()
      }
      
  """
  @type create_compilation_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_pipeline_execution_request() :: %{
        required("PipelineExecutionArn") => String.t()
      }
      
  """
  @type describe_pipeline_execution_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_workteams_response() :: %{
        "NextToken" => String.t(),
        "Workteams" => list(workteam()())
      }
      
  """
  @type list_workteams_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_inference_recommendations_job_steps_response() :: %{
        "NextToken" => String.t(),
        "Steps" => list(inference_recommendations_job_step()())
      }
      
  """
  @type list_inference_recommendations_job_steps_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      send_pipeline_execution_step_failure_response() :: %{
        "PipelineExecutionArn" => String.t()
      }
      
  """
  @type send_pipeline_execution_step_failure_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      container_config() :: %{
        "ContainerArguments" => list(String.t()()),
        "ContainerEntrypoint" => list(String.t()()),
        "ContainerEnvironmentVariables" => map()
      }
      
  """
  @type container_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      auto_ml_candidate_step() :: %{
        "CandidateStepArn" => String.t(),
        "CandidateStepName" => String.t(),
        "CandidateStepType" => list(any())
      }
      
  """
  @type auto_ml_candidate_step() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      retry_pipeline_execution_request() :: %{
        optional("ParallelismConfiguration") => parallelism_configuration(),
        required("ClientRequestToken") => String.t(),
        required("PipelineExecutionArn") => String.t()
      }
      
  """
  @type retry_pipeline_execution_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      online_store_security_config() :: %{
        "KmsKeyId" => String.t()
      }
      
  """
  @type online_store_security_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      time_series_transformations() :: %{
        "Aggregation" => map(),
        "Filling" => map()
      }
      
  """
  @type time_series_transformations() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_artifact_request() :: %{
        required("ArtifactArn") => String.t()
      }
      
  """
  @type describe_artifact_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_notebook_instance_input() :: %{
        optional("AcceleratorTypes") => list(list(any())()),
        optional("AdditionalCodeRepositories") => list(String.t()()),
        optional("DefaultCodeRepository") => String.t(),
        optional("DisassociateAcceleratorTypes") => boolean(),
        optional("DisassociateAdditionalCodeRepositories") => boolean(),
        optional("DisassociateDefaultCodeRepository") => boolean(),
        optional("DisassociateLifecycleConfig") => boolean(),
        optional("InstanceMetadataServiceConfiguration") => instance_metadata_service_configuration(),
        optional("InstanceType") => list(any()),
        optional("LifecycleConfigName") => String.t(),
        optional("RoleArn") => String.t(),
        optional("RootAccess") => list(any()),
        optional("VolumeSizeInGB") => integer(),
        required("NotebookInstanceName") => String.t()
      }
      
  """
  @type update_notebook_instance_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      container_definition() :: %{
        "AdditionalModelDataSources" => list(additional_model_data_source()()),
        "ContainerHostname" => String.t(),
        "Environment" => map(),
        "Image" => String.t(),
        "ImageConfig" => image_config(),
        "InferenceSpecificationName" => String.t(),
        "Mode" => list(any()),
        "ModelDataSource" => model_data_source(),
        "ModelDataUrl" => String.t(),
        "ModelPackageName" => String.t(),
        "MultiModelConfig" => multi_model_config()
      }
      
  """
  @type container_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_space_response() :: %{
        "SpaceArn" => String.t()
      }
      
  """
  @type create_space_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      auto_ml_candidate() :: %{
        "CandidateName" => String.t(),
        "CandidateProperties" => candidate_properties(),
        "CandidateStatus" => list(any()),
        "CandidateSteps" => list(auto_ml_candidate_step()()),
        "CreationTime" => non_neg_integer(),
        "EndTime" => non_neg_integer(),
        "FailureReason" => String.t(),
        "FinalAutoMLJobObjectiveMetric" => final_auto_ml_job_objective_metric(),
        "InferenceContainerDefinitions" => map(),
        "InferenceContainers" => list(auto_ml_container_definition()()),
        "LastModifiedTime" => non_neg_integer(),
        "ObjectiveStatus" => list(any())
      }
      
  """
  @type auto_ml_candidate() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      space_settings_summary() :: %{
        "AppType" => list(any()),
        "SpaceStorageSettings" => space_storage_settings()
      }
      
  """
  @type space_settings_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_model_explainability_job_definition_request() :: %{
        required("JobDefinitionName") => String.t()
      }
      
  """
  @type describe_model_explainability_job_definition_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_monitoring_schedule_request() :: %{
        required("MonitoringScheduleConfig") => monitoring_schedule_config(),
        required("MonitoringScheduleName") => String.t()
      }
      
  """
  @type update_monitoring_schedule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_hyper_parameter_tuning_jobs_request() :: %{
        optional("CreationTimeAfter") => non_neg_integer(),
        optional("CreationTimeBefore") => non_neg_integer(),
        optional("LastModifiedTimeAfter") => non_neg_integer(),
        optional("LastModifiedTimeBefore") => non_neg_integer(),
        optional("MaxResults") => integer(),
        optional("NameContains") => String.t(),
        optional("NextToken") => String.t(),
        optional("SortBy") => list(any()),
        optional("SortOrder") => list(any()),
        optional("StatusEquals") => list(any())
      }
      
  """
  @type list_hyper_parameter_tuning_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_domain_request() :: %{
        optional("AppNetworkAccessType") => list(any()),
        optional("AppSecurityGroupManagement") => list(any()),
        optional("DefaultSpaceSettings") => default_space_settings(),
        optional("DomainSettings") => domain_settings(),
        optional("HomeEfsFileSystemKmsKeyId") => String.t(),
        optional("KmsKeyId") => String.t(),
        optional("Tags") => list(tag()()),
        required("AuthMode") => list(any()),
        required("DefaultUserSettings") => user_settings(),
        required("DomainName") => String.t(),
        required("SubnetIds") => list(String.t()()),
        required("VpcId") => String.t()
      }
      
  """
  @type create_domain_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      auto_ml_algorithm_config() :: %{
        "AutoMLAlgorithms" => list(list(any())())
      }
      
  """
  @type auto_ml_algorithm_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_artifact_request() :: %{
        optional("ArtifactArn") => String.t(),
        optional("Source") => artifact_source()
      }
      
  """
  @type delete_artifact_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      categorical_parameter() :: %{
        "Name" => String.t(),
        "Value" => list(String.t()())
      }
      
  """
  @type categorical_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_monitoring_alerts_response() :: %{
        "MonitoringAlertSummaries" => list(monitoring_alert_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_monitoring_alerts_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      model_deploy_config() :: %{
        "AutoGenerateEndpointName" => boolean(),
        "EndpointName" => String.t()
      }
      
  """
  @type model_deploy_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_mlflow_tracking_server_request() :: %{
        required("TrackingServerName") => String.t()
      }
      
  """
  @type stop_mlflow_tracking_server_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_model_explainability_job_definition_response() :: %{
        "JobDefinitionArn" => String.t()
      }
      
  """
  @type create_model_explainability_job_definition_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_model_package_group_output() :: %{
        "ModelPackageGroupArn" => String.t()
      }
      
  """
  @type create_model_package_group_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_experiment_request() :: %{
        required("ExperimentName") => String.t()
      }
      
  """
  @type delete_experiment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_pipeline_execution_response() :: %{
        "PipelineExecutionArn" => String.t()
      }
      
  """
  @type update_pipeline_execution_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_image_version_request() :: %{
        optional("Alias") => String.t(),
        optional("Version") => integer(),
        required("ImageName") => String.t()
      }
      
  """
  @type describe_image_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_trial_component_request() :: %{
        required("TrialComponentName") => String.t()
      }
      
  """
  @type describe_trial_component_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_feature_group_response() :: %{
        "FeatureGroupArn" => String.t()
      }
      
  """
  @type create_feature_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      edge_output_config() :: %{
        "KmsKeyId" => String.t(),
        "PresetDeploymentConfig" => String.t(),
        "PresetDeploymentType" => list(any()),
        "S3OutputLocation" => String.t()
      }
      
  """
  @type edge_output_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag() :: %{
        "Key" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_auto_ml_jobs_request() :: %{
        optional("CreationTimeAfter") => non_neg_integer(),
        optional("CreationTimeBefore") => non_neg_integer(),
        optional("LastModifiedTimeAfter") => non_neg_integer(),
        optional("LastModifiedTimeBefore") => non_neg_integer(),
        optional("MaxResults") => integer(),
        optional("NameContains") => String.t(),
        optional("NextToken") => String.t(),
        optional("SortBy") => list(any()),
        optional("SortOrder") => list(any()),
        optional("StatusEquals") => list(any())
      }
      
  """
  @type list_auto_ml_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_image_version_response() :: %{
        "BaseImage" => String.t(),
        "ContainerImage" => String.t(),
        "CreationTime" => non_neg_integer(),
        "FailureReason" => String.t(),
        "Horovod" => boolean(),
        "ImageArn" => String.t(),
        "ImageVersionArn" => String.t(),
        "ImageVersionStatus" => list(any()),
        "JobType" => list(any()),
        "LastModifiedTime" => non_neg_integer(),
        "MLFramework" => String.t(),
        "Processor" => list(any()),
        "ProgrammingLang" => String.t(),
        "ReleaseNotes" => String.t(),
        "VendorGuidance" => list(any()),
        "Version" => integer()
      }
      
  """
  @type describe_image_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_hub_request() :: %{
        required("HubName") => String.t()
      }
      
  """
  @type delete_hub_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      last_update_status() :: %{
        "FailureReason" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type last_update_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      project() :: %{
        "CreatedBy" => user_context(),
        "CreationTime" => non_neg_integer(),
        "LastModifiedBy" => user_context(),
        "LastModifiedTime" => non_neg_integer(),
        "ProjectArn" => String.t(),
        "ProjectDescription" => String.t(),
        "ProjectId" => String.t(),
        "ProjectName" => String.t(),
        "ProjectStatus" => list(any()),
        "ServiceCatalogProvisionedProductDetails" => service_catalog_provisioned_product_details(),
        "ServiceCatalogProvisioningDetails" => service_catalog_provisioning_details(),
        "Tags" => list(tag()())
      }
      
  """
  @type project() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_algorithm_output() :: %{
        "AlgorithmArn" => String.t(),
        "AlgorithmDescription" => String.t(),
        "AlgorithmName" => String.t(),
        "AlgorithmStatus" => list(any()),
        "AlgorithmStatusDetails" => algorithm_status_details(),
        "CertifyForMarketplace" => boolean(),
        "CreationTime" => non_neg_integer(),
        "InferenceSpecification" => inference_specification(),
        "ProductId" => String.t(),
        "TrainingSpecification" => training_specification(),
        "ValidationSpecification" => algorithm_validation_specification()
      }
      
  """
  @type describe_algorithm_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      processing_s3_output() :: %{
        "LocalPath" => String.t(),
        "S3UploadMode" => list(any()),
        "S3Uri" => String.t()
      }
      
  """
  @type processing_s3_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_feature_group_request() :: %{
        optional("Description") => String.t(),
        optional("OfflineStoreConfig") => offline_store_config(),
        optional("OnlineStoreConfig") => online_store_config(),
        optional("RoleArn") => String.t(),
        optional("Tags") => list(tag()()),
        optional("ThroughputConfig") => throughput_config(),
        required("EventTimeFeatureName") => String.t(),
        required("FeatureDefinitions") => list(feature_definition()()),
        required("FeatureGroupName") => String.t(),
        required("RecordIdentifierFeatureName") => String.t()
      }
      
  """
  @type create_feature_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_notebook_instance_input() :: %{
        required("NotebookInstanceName") => String.t()
      }
      
  """
  @type describe_notebook_instance_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dataset_definition() :: %{
        "AthenaDatasetDefinition" => athena_dataset_definition(),
        "DataDistributionType" => list(any()),
        "InputMode" => list(any()),
        "LocalPath" => String.t(),
        "RedshiftDatasetDefinition" => redshift_dataset_definition()
      }
      
  """
  @type dataset_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_model_explainability_job_definitions_response() :: %{
        "JobDefinitionSummaries" => list(monitoring_job_definition_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_model_explainability_job_definitions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_space_request() :: %{
        optional("OwnershipSettings") => ownership_settings(),
        optional("SpaceDisplayName") => String.t(),
        optional("SpaceSettings") => space_settings(),
        optional("SpaceSharingSettings") => space_sharing_settings(),
        optional("Tags") => list(tag()()),
        required("DomainId") => String.t(),
        required("SpaceName") => String.t()
      }
      
  """
  @type create_space_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      clarify_shap_config() :: %{
        "NumberOfSamples" => integer(),
        "Seed" => integer(),
        "ShapBaselineConfig" => clarify_shap_baseline_config(),
        "TextConfig" => clarify_text_config(),
        "UseLogit" => boolean()
      }
      
  """
  @type clarify_shap_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_trial_components_request() :: %{
        optional("CreatedAfter") => non_neg_integer(),
        optional("CreatedBefore") => non_neg_integer(),
        optional("ExperimentName") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SortBy") => list(any()),
        optional("SortOrder") => list(any()),
        optional("SourceArn") => String.t(),
        optional("TrialName") => String.t()
      }
      
  """
  @type list_trial_components_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      hyper_parameter_tuning_job_search_entity() :: %{
        "BestTrainingJob" => hyper_parameter_training_job_summary(),
        "ConsumedResources" => hyper_parameter_tuning_job_consumed_resources(),
        "CreationTime" => non_neg_integer(),
        "FailureReason" => String.t(),
        "HyperParameterTuningEndTime" => non_neg_integer(),
        "HyperParameterTuningJobArn" => String.t(),
        "HyperParameterTuningJobConfig" => hyper_parameter_tuning_job_config(),
        "HyperParameterTuningJobName" => String.t(),
        "HyperParameterTuningJobStatus" => list(any()),
        "LastModifiedTime" => non_neg_integer(),
        "ObjectiveStatusCounters" => objective_status_counters(),
        "OverallBestTrainingJob" => hyper_parameter_training_job_summary(),
        "Tags" => list(tag()()),
        "TrainingJobDefinition" => hyper_parameter_training_job_definition(),
        "TrainingJobDefinitions" => list(hyper_parameter_training_job_definition()()),
        "TrainingJobStatusCounters" => training_job_status_counters(),
        "TuningJobCompletionDetails" => hyper_parameter_tuning_job_completion_details(),
        "WarmStartConfig" => hyper_parameter_tuning_job_warm_start_config()
      }
      
  """
  @type hyper_parameter_tuning_job_search_entity() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_model_card_versions_request() :: %{
        optional("CreationTimeAfter") => non_neg_integer(),
        optional("CreationTimeBefore") => non_neg_integer(),
        optional("MaxResults") => integer(),
        optional("ModelCardStatus") => list(any()),
        optional("NextToken") => String.t(),
        optional("SortBy") => list(any()),
        optional("SortOrder") => list(any()),
        required("ModelCardName") => String.t()
      }
      
  """
  @type list_model_card_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      monitoring_resources() :: %{
        "ClusterConfig" => monitoring_cluster_config()
      }
      
  """
  @type monitoring_resources() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_image_request() :: %{
        optional("Description") => String.t(),
        optional("DisplayName") => String.t(),
        optional("Tags") => list(tag()()),
        required("ImageName") => String.t(),
        required("RoleArn") => String.t()
      }
      
  """
  @type create_image_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_pipeline_request() :: %{
        optional("ParallelismConfiguration") => parallelism_configuration(),
        optional("PipelineDefinition") => String.t(),
        optional("PipelineDefinitionS3Location") => pipeline_definition_s3_location(),
        optional("PipelineDescription") => String.t(),
        optional("PipelineDisplayName") => String.t(),
        optional("Tags") => list(tag()()),
        required("ClientRequestToken") => String.t(),
        required("PipelineName") => String.t(),
        required("RoleArn") => String.t()
      }
      
  """
  @type create_pipeline_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_subscribed_workteam_request() :: %{
        required("WorkteamArn") => String.t()
      }
      
  """
  @type describe_subscribed_workteam_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      property_name_suggestion() :: %{
        "PropertyName" => String.t()
      }
      
  """
  @type property_name_suggestion() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      source_algorithm() :: %{
        "AlgorithmName" => String.t(),
        "ModelDataSource" => model_data_source(),
        "ModelDataUrl" => String.t()
      }
      
  """
  @type source_algorithm() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_describe_model_package_output() :: %{
        "BatchDescribeModelPackageErrorMap" => map(),
        "ModelPackageSummaries" => map()
      }
      
  """
  @type batch_describe_model_package_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_user_profile_request() :: %{
        required("DomainId") => String.t(),
        required("UserProfileName") => String.t()
      }
      
  """
  @type delete_user_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_artifact_request() :: %{
        optional("ArtifactName") => String.t(),
        optional("MetadataProperties") => metadata_properties(),
        optional("Properties") => map(),
        optional("Tags") => list(tag()()),
        required("ArtifactType") => String.t(),
        required("Source") => artifact_source()
      }
      
  """
  @type create_artifact_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_model_quality_job_definition_request() :: %{
        required("JobDefinitionName") => String.t()
      }
      
  """
  @type describe_model_quality_job_definition_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_image_request() :: %{
        optional("DeleteProperties") => list(String.t()()),
        optional("Description") => String.t(),
        optional("DisplayName") => String.t(),
        optional("RoleArn") => String.t(),
        required("ImageName") => String.t()
      }
      
  """
  @type update_image_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_contexts_request() :: %{
        optional("ContextType") => String.t(),
        optional("CreatedAfter") => non_neg_integer(),
        optional("CreatedBefore") => non_neg_integer(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SortBy") => list(any()),
        optional("SortOrder") => list(any()),
        optional("SourceUri") => String.t()
      }
      
  """
  @type list_contexts_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_labeling_job_response() :: %{
        "CreationTime" => non_neg_integer(),
        "FailureReason" => String.t(),
        "HumanTaskConfig" => human_task_config(),
        "InputConfig" => labeling_job_input_config(),
        "JobReferenceCode" => String.t(),
        "LabelAttributeName" => String.t(),
        "LabelCategoryConfigS3Uri" => String.t(),
        "LabelCounters" => label_counters(),
        "LabelingJobAlgorithmsConfig" => labeling_job_algorithms_config(),
        "LabelingJobArn" => String.t(),
        "LabelingJobName" => String.t(),
        "LabelingJobOutput" => labeling_job_output(),
        "LabelingJobStatus" => list(any()),
        "LastModifiedTime" => non_neg_integer(),
        "OutputConfig" => labeling_job_output_config(),
        "RoleArn" => String.t(),
        "StoppingConditions" => labeling_job_stopping_conditions(),
        "Tags" => list(tag()())
      }
      
  """
  @type describe_labeling_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sharing_settings() :: %{
        "NotebookOutputOption" => list(any()),
        "S3KmsKeyId" => String.t(),
        "S3OutputPath" => String.t()
      }
      
  """
  @type sharing_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_device_request() :: %{
        optional("NextToken") => String.t(),
        required("DeviceFleetName") => String.t(),
        required("DeviceName") => String.t()
      }
      
  """
  @type describe_device_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_projects_output() :: %{
        "NextToken" => String.t(),
        "ProjectSummaryList" => list(project_summary()())
      }
      
  """
  @type list_projects_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      human_loop_request_source() :: %{
        "AwsManagedHumanLoopRequestSource" => list(any())
      }
      
  """
  @type human_loop_request_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_feature_groups_response() :: %{
        "FeatureGroupSummaries" => list(feature_group_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_feature_groups_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_pipeline_request() :: %{
        optional("ParallelismConfiguration") => parallelism_configuration(),
        optional("PipelineDefinition") => String.t(),
        optional("PipelineDefinitionS3Location") => pipeline_definition_s3_location(),
        optional("PipelineDescription") => String.t(),
        optional("PipelineDisplayName") => String.t(),
        optional("RoleArn") => String.t(),
        required("PipelineName") => String.t()
      }
      
  """
  @type update_pipeline_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_studio_lifecycle_config_response() :: %{
        "CreationTime" => non_neg_integer(),
        "LastModifiedTime" => non_neg_integer(),
        "StudioLifecycleConfigAppType" => list(any()),
        "StudioLifecycleConfigArn" => String.t(),
        "StudioLifecycleConfigContent" => String.t(),
        "StudioLifecycleConfigName" => String.t()
      }
      
  """
  @type describe_studio_lifecycle_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      model_explainability_baseline_config() :: %{
        "BaseliningJobName" => String.t(),
        "ConstraintsResource" => monitoring_constraints_resource()
      }
      
  """
  @type model_explainability_baseline_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_code_repositories_input() :: %{
        optional("CreationTimeAfter") => non_neg_integer(),
        optional("CreationTimeBefore") => non_neg_integer(),
        optional("LastModifiedTimeAfter") => non_neg_integer(),
        optional("LastModifiedTimeBefore") => non_neg_integer(),
        optional("MaxResults") => integer(),
        optional("NameContains") => String.t(),
        optional("NextToken") => String.t(),
        optional("SortBy") => list(any()),
        optional("SortOrder") => list(any())
      }
      
  """
  @type list_code_repositories_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_images_request() :: %{
        optional("CreationTimeAfter") => non_neg_integer(),
        optional("CreationTimeBefore") => non_neg_integer(),
        optional("LastModifiedTimeAfter") => non_neg_integer(),
        optional("LastModifiedTimeBefore") => non_neg_integer(),
        optional("MaxResults") => integer(),
        optional("NameContains") => String.t(),
        optional("NextToken") => String.t(),
        optional("SortBy") => list(any()),
        optional("SortOrder") => list(any())
      }
      
  """
  @type list_images_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_auto_ml_jobs_response() :: %{
        "AutoMLJobSummaries" => list(auto_ml_job_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_auto_ml_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_human_task_ui_response() :: %{
        "CreationTime" => non_neg_integer(),
        "HumanTaskUiArn" => String.t(),
        "HumanTaskUiName" => String.t(),
        "HumanTaskUiStatus" => list(any()),
        "UiTemplate" => ui_template_info()
      }
      
  """
  @type describe_human_task_ui_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      model_package_status_item() :: %{
        "FailureReason" => String.t(),
        "Name" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type model_package_status_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_project_input() :: %{
        required("ProjectName") => String.t()
      }
      
  """
  @type describe_project_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_trial_component_request() :: %{
        optional("DisplayName") => String.t(),
        optional("EndTime") => non_neg_integer(),
        optional("InputArtifacts") => map(),
        optional("InputArtifactsToRemove") => list(String.t()()),
        optional("OutputArtifacts") => map(),
        optional("OutputArtifactsToRemove") => list(String.t()()),
        optional("Parameters") => map(),
        optional("ParametersToRemove") => list(String.t()()),
        optional("StartTime") => non_neg_integer(),
        optional("Status") => trial_component_status(),
        required("TrialComponentName") => String.t()
      }
      
  """
  @type update_trial_component_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      recommendation_job_input_config() :: %{
        "ContainerConfig" => recommendation_job_container_config(),
        "EndpointConfigurations" => list(endpoint_input_configuration()()),
        "Endpoints" => list(endpoint_info()()),
        "JobDurationInSeconds" => integer(),
        "ModelName" => String.t(),
        "ModelPackageVersionArn" => String.t(),
        "ResourceLimit" => recommendation_job_resource_limit(),
        "TrafficPattern" => traffic_pattern(),
        "VolumeKmsKeyId" => String.t(),
        "VpcConfig" => recommendation_job_vpc_config()
      }
      
  """
  @type recommendation_job_input_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_action_request() :: %{
        optional("Description") => String.t(),
        optional("MetadataProperties") => metadata_properties(),
        optional("Properties") => map(),
        optional("Status") => list(any()),
        optional("Tags") => list(tag()()),
        required("ActionName") => String.t(),
        required("ActionType") => String.t(),
        required("Source") => action_source()
      }
      
  """
  @type create_action_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_hyper_parameter_tuning_job_response() :: %{
        "HyperParameterTuningJobArn" => String.t()
      }
      
  """
  @type create_hyper_parameter_tuning_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_endpoint_weights_and_capacities_output() :: %{
        "EndpointArn" => String.t()
      }
      
  """
  @type update_endpoint_weights_and_capacities_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_domains_response() :: %{
        "Domains" => list(domain_details()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_domains_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      offline_store_config() :: %{
        "DataCatalogConfig" => data_catalog_config(),
        "DisableGlueTableCreation" => boolean(),
        "S3StorageConfig" => s3_storage_config(),
        "TableFormat" => list(any())
      }
      
  """
  @type offline_store_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      model_quality_baseline_config() :: %{
        "BaseliningJobName" => String.t(),
        "ConstraintsResource" => monitoring_constraints_resource()
      }
      
  """
  @type model_quality_baseline_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_pipeline_request() :: %{
        required("ClientRequestToken") => String.t(),
        required("PipelineName") => String.t()
      }
      
  """
  @type delete_pipeline_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      endpoint_summary() :: %{
        "CreationTime" => non_neg_integer(),
        "EndpointArn" => String.t(),
        "EndpointName" => String.t(),
        "EndpointStatus" => list(any()),
        "LastModifiedTime" => non_neg_integer()
      }
      
  """
  @type endpoint_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      auto_ml_data_split_config() :: %{
        "ValidationFraction" => float()
      }
      
  """
  @type auto_ml_data_split_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_presigned_domain_url_response() :: %{
        "AuthorizedUrl" => String.t()
      }
      
  """
  @type create_presigned_domain_url_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_auto_ml_job_request() :: %{
        required("AutoMLJobName") => String.t()
      }
      
  """
  @type describe_auto_ml_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_optimization_job_request() :: %{
        required("OptimizationJobName") => String.t()
      }
      
  """
  @type describe_optimization_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      trial_component_artifact() :: %{
        "MediaType" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type trial_component_artifact() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_workteam_request() :: %{
        optional("Description") => String.t(),
        optional("MemberDefinitions") => list(member_definition()()),
        optional("NotificationConfiguration") => notification_configuration(),
        optional("WorkerAccessConfiguration") => worker_access_configuration(),
        required("WorkteamName") => String.t()
      }
      
  """
  @type update_workteam_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_devices_request() :: %{
        required("DeviceFleetName") => String.t(),
        required("Devices") => list(device()())
      }
      
  """
  @type update_devices_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      profiler_rule_configuration() :: %{
        "InstanceType" => list(any()),
        "LocalPath" => String.t(),
        "RuleConfigurationName" => String.t(),
        "RuleEvaluatorImage" => String.t(),
        "RuleParameters" => map(),
        "S3OutputPath" => String.t(),
        "VolumeSizeInGB" => integer()
      }
      
  """
  @type profiler_rule_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      jupyter_server_app_settings() :: %{
        "CodeRepositories" => list(code_repository()()),
        "DefaultResourceSpec" => resource_spec(),
        "LifecycleConfigArns" => list(String.t()())
      }
      
  """
  @type jupyter_server_app_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      data_quality_app_specification() :: %{
        "ContainerArguments" => list(String.t()()),
        "ContainerEntrypoint" => list(String.t()()),
        "Environment" => map(),
        "ImageUri" => String.t(),
        "PostAnalyticsProcessorSourceUri" => String.t(),
        "RecordPreprocessorSourceUri" => String.t()
      }
      
  """
  @type data_quality_app_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_auto_ml_job_response() :: %{
        "AutoMLJobArn" => String.t(),
        "AutoMLJobArtifacts" => auto_ml_job_artifacts(),
        "AutoMLJobConfig" => auto_ml_job_config(),
        "AutoMLJobName" => String.t(),
        "AutoMLJobObjective" => auto_ml_job_objective(),
        "AutoMLJobSecondaryStatus" => list(any()),
        "AutoMLJobStatus" => list(any()),
        "BestCandidate" => auto_ml_candidate(),
        "CreationTime" => non_neg_integer(),
        "EndTime" => non_neg_integer(),
        "FailureReason" => String.t(),
        "GenerateCandidateDefinitionsOnly" => boolean(),
        "InputDataConfig" => list(auto_ml_channel()()),
        "LastModifiedTime" => non_neg_integer(),
        "ModelDeployConfig" => model_deploy_config(),
        "ModelDeployResult" => model_deploy_result(),
        "OutputDataConfig" => auto_ml_output_data_config(),
        "PartialFailureReasons" => list(auto_ml_partial_failure_reason()()),
        "ProblemType" => list(any()),
        "ResolvedAttributes" => resolved_attributes(),
        "RoleArn" => String.t()
      }
      
  """
  @type describe_auto_ml_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_edge_deployment_plan_response() :: %{
        "EdgeDeploymentPlanArn" => String.t()
      }
      
  """
  @type create_edge_deployment_plan_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      association_summary() :: %{
        "AssociationType" => list(any()),
        "CreatedBy" => user_context(),
        "CreationTime" => non_neg_integer(),
        "DestinationArn" => String.t(),
        "DestinationName" => String.t(),
        "DestinationType" => String.t(),
        "SourceArn" => String.t(),
        "SourceName" => String.t(),
        "SourceType" => String.t()
      }
      
  """
  @type association_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      production_variant() :: %{
        "AcceleratorType" => list(any()),
        "ContainerStartupHealthCheckTimeoutInSeconds" => integer(),
        "CoreDumpConfig" => production_variant_core_dump_config(),
        "EnableSSMAccess" => boolean(),
        "InferenceAmiVersion" => list(any()),
        "InitialInstanceCount" => integer(),
        "InitialVariantWeight" => float(),
        "InstanceType" => list(any()),
        "ManagedInstanceScaling" => production_variant_managed_instance_scaling(),
        "ModelDataDownloadTimeoutInSeconds" => integer(),
        "ModelName" => String.t(),
        "RoutingConfig" => production_variant_routing_config(),
        "ServerlessConfig" => production_variant_serverless_config(),
        "VariantName" => String.t(),
        "VolumeSizeInGB" => integer()
      }
      
  """
  @type production_variant() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      identity_provider_o_auth_setting() :: %{
        "DataSourceName" => list(any()),
        "SecretArn" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type identity_provider_o_auth_setting() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ui_template_info() :: %{
        "ContentSha256" => String.t(),
        "Url" => String.t()
      }
      
  """
  @type ui_template_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_associations_response() :: %{
        "AssociationSummaries" => list(association_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_associations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      checkpoint_config() :: %{
        "LocalPath" => String.t(),
        "S3Uri" => String.t()
      }
      
  """
  @type checkpoint_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stopping_condition() :: %{
        "MaxPendingTimeInSeconds" => integer(),
        "MaxRuntimeInSeconds" => integer(),
        "MaxWaitTimeInSeconds" => integer()
      }
      
  """
  @type stopping_condition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      device_deployment_summary() :: %{
        "DeployedStageName" => String.t(),
        "DeploymentStartTime" => non_neg_integer(),
        "Description" => String.t(),
        "DeviceArn" => String.t(),
        "DeviceDeploymentStatus" => list(any()),
        "DeviceDeploymentStatusMessage" => String.t(),
        "DeviceFleetName" => String.t(),
        "DeviceName" => String.t(),
        "EdgeDeploymentPlanArn" => String.t(),
        "EdgeDeploymentPlanName" => String.t(),
        "StageName" => String.t()
      }
      
  """
  @type device_deployment_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_hub_content_request() :: %{
        optional("HubContentVersion") => String.t(),
        required("HubContentName") => String.t(),
        required("HubContentType") => list(any()),
        required("HubName") => String.t()
      }
      
  """
  @type describe_hub_content_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_trial_component_request() :: %{
        required("TrialComponentName") => String.t(),
        required("TrialName") => String.t()
      }
      
  """
  @type disassociate_trial_component_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      send_pipeline_execution_step_success_response() :: %{
        "PipelineExecutionArn" => String.t()
      }
      
  """
  @type send_pipeline_execution_step_success_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_mlflow_tracking_server_request() :: %{
        optional("ArtifactStoreUri") => String.t(),
        optional("AutomaticModelRegistration") => boolean(),
        optional("TrackingServerSize") => list(any()),
        optional("WeeklyMaintenanceWindowStart") => String.t(),
        required("TrackingServerName") => String.t()
      }
      
  """
  @type update_mlflow_tracking_server_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_processing_jobs_request() :: %{
        optional("CreationTimeAfter") => non_neg_integer(),
        optional("CreationTimeBefore") => non_neg_integer(),
        optional("LastModifiedTimeAfter") => non_neg_integer(),
        optional("LastModifiedTimeBefore") => non_neg_integer(),
        optional("MaxResults") => integer(),
        optional("NameContains") => String.t(),
        optional("NextToken") => String.t(),
        optional("SortBy") => list(any()),
        optional("SortOrder") => list(any()),
        optional("StatusEquals") => list(any())
      }
      
  """
  @type list_processing_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      code_repository() :: %{
        "RepositoryUrl" => String.t()
      }
      
  """
  @type code_repository() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      auto_ml_s3_data_source() :: %{
        "S3DataType" => list(any()),
        "S3Uri" => String.t()
      }
      
  """
  @type auto_ml_s3_data_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_endpoint_configs_input() :: %{
        optional("CreationTimeAfter") => non_neg_integer(),
        optional("CreationTimeBefore") => non_neg_integer(),
        optional("MaxResults") => integer(),
        optional("NameContains") => String.t(),
        optional("NextToken") => String.t(),
        optional("SortBy") => list(any()),
        optional("SortOrder") => list(any())
      }
      
  """
  @type list_endpoint_configs_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_edge_deployment_plan_response() :: %{
        "CreationTime" => non_neg_integer(),
        "DeviceFleetName" => String.t(),
        "EdgeDeploymentFailed" => integer(),
        "EdgeDeploymentPending" => integer(),
        "EdgeDeploymentPlanArn" => String.t(),
        "EdgeDeploymentPlanName" => String.t(),
        "EdgeDeploymentSuccess" => integer(),
        "LastModifiedTime" => non_neg_integer(),
        "ModelConfigs" => list(edge_deployment_model_config()()),
        "NextToken" => String.t(),
        "Stages" => list(deployment_stage_status_summary()())
      }
      
  """
  @type describe_edge_deployment_plan_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_monitoring_schedule_response() :: %{
        "CreationTime" => non_neg_integer(),
        "EndpointName" => String.t(),
        "FailureReason" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "LastMonitoringExecutionSummary" => monitoring_execution_summary(),
        "MonitoringScheduleArn" => String.t(),
        "MonitoringScheduleConfig" => monitoring_schedule_config(),
        "MonitoringScheduleName" => String.t(),
        "MonitoringScheduleStatus" => list(any()),
        "MonitoringType" => list(any())
      }
      
  """
  @type describe_monitoring_schedule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      endpoint_config_summary() :: %{
        "CreationTime" => non_neg_integer(),
        "EndpointConfigArn" => String.t(),
        "EndpointConfigName" => String.t()
      }
      
  """
  @type endpoint_config_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      training_job_status_counters() :: %{
        "Completed" => integer(),
        "InProgress" => integer(),
        "NonRetryableError" => integer(),
        "RetryableError" => integer(),
        "Stopped" => integer()
      }
      
  """
  @type training_job_status_counters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_training_job_response() :: %{
        "TrainingJobArn" => String.t()
      }
      
  """
  @type update_training_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      variant_property() :: %{
        "VariantPropertyType" => list(any())
      }
      
  """
  @type variant_property() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_mlflow_tracking_servers_request() :: %{
        optional("CreatedAfter") => non_neg_integer(),
        optional("CreatedBefore") => non_neg_integer(),
        optional("MaxResults") => integer(),
        optional("MlflowVersion") => String.t(),
        optional("NextToken") => String.t(),
        optional("SortBy") => list(any()),
        optional("SortOrder") => list(any()),
        optional("TrackingServerStatus") => list(any())
      }
      
  """
  @type list_mlflow_tracking_servers_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_hub_content_reference_response() :: %{
        "HubArn" => String.t(),
        "HubContentArn" => String.t()
      }
      
  """
  @type create_hub_content_reference_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      offline_store_status() :: %{
        "BlockedReason" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type offline_store_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      labeling_job_output_config() :: %{
        "KmsKeyId" => String.t(),
        "S3OutputPath" => String.t(),
        "SnsTopicArn" => String.t()
      }
      
  """
  @type labeling_job_output_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_notebook_instance_input() :: %{
        required("NotebookInstanceName") => String.t()
      }
      
  """
  @type stop_notebook_instance_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_optimization_job_response() :: %{
        "CreationTime" => non_neg_integer(),
        "DeploymentInstanceType" => list(any()),
        "FailureReason" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "ModelSource" => optimization_job_model_source(),
        "OptimizationConfigs" => list(list()()),
        "OptimizationEndTime" => non_neg_integer(),
        "OptimizationEnvironment" => map(),
        "OptimizationJobArn" => String.t(),
        "OptimizationJobName" => String.t(),
        "OptimizationJobStatus" => list(any()),
        "OptimizationOutput" => optimization_output(),
        "OptimizationStartTime" => non_neg_integer(),
        "OutputConfig" => optimization_job_output_config(),
        "RoleArn" => String.t(),
        "StoppingCondition" => stopping_condition(),
        "VpcConfig" => optimization_vpc_config()
      }
      
  """
  @type describe_optimization_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_endpoints_output() :: %{
        "Endpoints" => list(endpoint_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_endpoints_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      text_generation_resolved_attributes() :: %{
        "BaseModelName" => String.t()
      }
      
  """
  @type text_generation_resolved_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      parameter() :: %{
        "Name" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      r_studio_server_pro_domain_settings() :: %{
        "DefaultResourceSpec" => resource_spec(),
        "DomainExecutionRoleArn" => String.t(),
        "RStudioConnectUrl" => String.t(),
        "RStudioPackageManagerUrl" => String.t()
      }
      
  """
  @type r_studio_server_pro_domain_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_pipeline_execution_request() :: %{
        required("ClientRequestToken") => String.t(),
        required("PipelineExecutionArn") => String.t()
      }
      
  """
  @type stop_pipeline_execution_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      vpc_config() :: %{
        "SecurityGroupIds" => list(String.t()()),
        "Subnets" => list(String.t()())
      }
      
  """
  @type vpc_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      model_package_model_card() :: %{
        "ModelCardContent" => String.t(),
        "ModelCardStatus" => list(any())
      }
      
  """
  @type model_package_model_card() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remote_debug_config_for_update() :: %{
        "EnableRemoteDebug" => boolean()
      }
      
  """
  @type remote_debug_config_for_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_user_profiles_request() :: %{
        optional("DomainIdEquals") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SortBy") => list(any()),
        optional("SortOrder") => list(any()),
        optional("UserProfileNameContains") => String.t()
      }
      
  """
  @type list_user_profiles_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_auto_ml_job_v2_request() :: %{
        optional("AutoMLComputeConfig") => auto_ml_compute_config(),
        optional("AutoMLJobObjective") => auto_ml_job_objective(),
        optional("DataSplitConfig") => auto_ml_data_split_config(),
        optional("ModelDeployConfig") => model_deploy_config(),
        optional("SecurityConfig") => auto_ml_security_config(),
        optional("Tags") => list(tag()()),
        required("AutoMLJobInputDataConfig") => list(auto_ml_job_channel()()),
        required("AutoMLJobName") => String.t(),
        required("AutoMLProblemTypeConfig") => list(),
        required("OutputDataConfig") => auto_ml_output_data_config(),
        required("RoleArn") => String.t()
      }
      
  """
  @type create_auto_ml_job_v2_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      algorithm_validation_profile() :: %{
        "ProfileName" => String.t(),
        "TrainingJobDefinition" => training_job_definition(),
        "TransformJobDefinition" => transform_job_definition()
      }
      
  """
  @type algorithm_validation_profile() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_config_for_update() :: %{
        "KeepAlivePeriodInSeconds" => integer()
      }
      
  """
  @type resource_config_for_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      pipeline_summary() :: %{
        "CreationTime" => non_neg_integer(),
        "LastExecutionTime" => non_neg_integer(),
        "LastModifiedTime" => non_neg_integer(),
        "PipelineArn" => String.t(),
        "PipelineDescription" => String.t(),
        "PipelineDisplayName" => String.t(),
        "PipelineName" => String.t(),
        "RoleArn" => String.t()
      }
      
  """
  @type pipeline_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      clarify_explainer_config() :: %{
        "EnableExplanations" => String.t(),
        "InferenceConfig" => clarify_inference_config(),
        "ShapConfig" => clarify_shap_config()
      }
      
  """
  @type clarify_explainer_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_model_package_group_input() :: %{
        required("ModelPackageGroupName") => String.t()
      }
      
  """
  @type describe_model_package_group_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      u_s_d() :: %{
        "Cents" => integer(),
        "Dollars" => integer(),
        "TenthFractionsOfACent" => integer()
      }
      
  """
  @type u_s_d() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deployment_stage() :: %{
        "DeploymentConfig" => edge_deployment_config(),
        "DeviceSelectionConfig" => device_selection_config(),
        "StageName" => String.t()
      }
      
  """
  @type deployment_stage() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      inference_component_container_specification_summary() :: %{
        "ArtifactUrl" => String.t(),
        "DeployedImage" => deployed_image(),
        "Environment" => map()
      }
      
  """
  @type inference_component_container_specification_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      domain_settings_for_update() :: %{
        "AmazonQSettings" => amazon_q_settings(),
        "DockerSettings" => docker_settings(),
        "ExecutionRoleIdentityConfig" => list(any()),
        "RStudioServerProDomainSettingsForUpdate" => r_studio_server_pro_domain_settings_for_update(),
        "SecurityGroupIds" => list(String.t()())
      }
      
  """
  @type domain_settings_for_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_pipeline_response() :: %{
        "CreatedBy" => user_context(),
        "CreationTime" => non_neg_integer(),
        "LastModifiedBy" => user_context(),
        "LastModifiedTime" => non_neg_integer(),
        "LastRunTime" => non_neg_integer(),
        "ParallelismConfiguration" => parallelism_configuration(),
        "PipelineArn" => String.t(),
        "PipelineDefinition" => String.t(),
        "PipelineDescription" => String.t(),
        "PipelineDisplayName" => String.t(),
        "PipelineName" => String.t(),
        "PipelineStatus" => list(any()),
        "RoleArn" => String.t()
      }
      
  """
  @type describe_pipeline_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_action_response() :: %{
        "ActionArn" => String.t()
      }
      
  """
  @type update_action_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_pipeline_definition_for_execution_request() :: %{
        required("PipelineExecutionArn") => String.t()
      }
      
  """
  @type describe_pipeline_definition_for_execution_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_training_jobs_response() :: %{
        "NextToken" => String.t(),
        "TrainingJobSummaries" => list(training_job_summary()())
      }
      
  """
  @type list_training_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      time_series_forecasting_settings() :: %{
        "AmazonForecastRoleArn" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type time_series_forecasting_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      model_card() :: %{
        "Content" => String.t(),
        "CreatedBy" => user_context(),
        "CreationTime" => non_neg_integer(),
        "LastModifiedBy" => user_context(),
        "LastModifiedTime" => non_neg_integer(),
        "ModelCardArn" => String.t(),
        "ModelCardName" => String.t(),
        "ModelCardStatus" => list(any()),
        "ModelCardVersion" => integer(),
        "ModelId" => String.t(),
        "ModelPackageGroupName" => String.t(),
        "RiskRating" => String.t(),
        "SecurityConfig" => model_card_security_config(),
        "Tags" => list(tag()())
      }
      
  """
  @type model_card() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      monitoring_execution_summary() :: %{
        "CreationTime" => non_neg_integer(),
        "EndpointName" => String.t(),
        "FailureReason" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "MonitoringExecutionStatus" => list(any()),
        "MonitoringJobDefinitionName" => String.t(),
        "MonitoringScheduleName" => String.t(),
        "MonitoringType" => list(any()),
        "ProcessingJobArn" => String.t(),
        "ScheduledTime" => non_neg_integer()
      }
      
  """
  @type monitoring_execution_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      continuous_parameter_range_specification() :: %{
        "MaxValue" => String.t(),
        "MinValue" => String.t()
      }
      
  """
  @type continuous_parameter_range_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      workteam() :: %{
        "CreateDate" => non_neg_integer(),
        "Description" => String.t(),
        "LastUpdatedDate" => non_neg_integer(),
        "MemberDefinitions" => list(member_definition()()),
        "NotificationConfiguration" => notification_configuration(),
        "ProductListingIds" => list(String.t()()),
        "SubDomain" => String.t(),
        "WorkerAccessConfiguration" => worker_access_configuration(),
        "WorkforceArn" => String.t(),
        "WorkteamArn" => String.t(),
        "WorkteamName" => String.t()
      }
      
  """
  @type workteam() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      drift_check_bias() :: %{
        "ConfigFile" => file_source(),
        "PostTrainingConstraints" => metrics_source(),
        "PreTrainingConstraints" => metrics_source()
      }
      
  """
  @type drift_check_bias() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_hyper_parameter_tuning_job_request() :: %{
        required("HyperParameterTuningJobName") => String.t()
      }
      
  """
  @type describe_hyper_parameter_tuning_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      model_quality_job_input() :: %{
        "BatchTransformInput" => batch_transform_input(),
        "EndpointInput" => endpoint_input(),
        "GroundTruthS3Input" => monitoring_ground_truth_s3_input()
      }
      
  """
  @type model_quality_job_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_domain_response() :: %{
        "AppNetworkAccessType" => list(any()),
        "AppSecurityGroupManagement" => list(any()),
        "AuthMode" => list(any()),
        "CreationTime" => non_neg_integer(),
        "DefaultSpaceSettings" => default_space_settings(),
        "DefaultUserSettings" => user_settings(),
        "DomainArn" => String.t(),
        "DomainId" => String.t(),
        "DomainName" => String.t(),
        "DomainSettings" => domain_settings(),
        "FailureReason" => String.t(),
        "HomeEfsFileSystemId" => String.t(),
        "HomeEfsFileSystemKmsKeyId" => String.t(),
        "KmsKeyId" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "SecurityGroupIdForDomainBoundary" => String.t(),
        "SingleSignOnApplicationArn" => String.t(),
        "SingleSignOnManagedApplicationInstanceId" => String.t(),
        "Status" => list(any()),
        "SubnetIds" => list(String.t()()),
        "Url" => String.t(),
        "VpcId" => String.t()
      }
      
  """
  @type describe_domain_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rendering_error() :: %{
        "Code" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type rendering_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_devices_response() :: %{
        "DeviceSummaries" => list(device_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_devices_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_experiment_response() :: %{
        "CreatedBy" => user_context(),
        "CreationTime" => non_neg_integer(),
        "Description" => String.t(),
        "DisplayName" => String.t(),
        "ExperimentArn" => String.t(),
        "ExperimentName" => String.t(),
        "LastModifiedBy" => user_context(),
        "LastModifiedTime" => non_neg_integer(),
        "Source" => experiment_source()
      }
      
  """
  @type describe_experiment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_compilation_jobs_response() :: %{
        "CompilationJobSummaries" => list(compilation_job_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_compilation_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      pipeline_experiment_config() :: %{
        "ExperimentName" => String.t(),
        "TrialName" => String.t()
      }
      
  """
  @type pipeline_experiment_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      candidate_properties() :: %{
        "CandidateArtifactLocations" => candidate_artifact_locations(),
        "CandidateMetrics" => list(metric_datum()())
      }
      
  """
  @type candidate_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_algorithm_input() :: %{
        required("AlgorithmName") => String.t()
      }
      
  """
  @type describe_algorithm_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      async_inference_notification_config() :: %{
        "ErrorTopic" => String.t(),
        "IncludeInferenceResponseIn" => list(list(any())()),
        "SuccessTopic" => String.t()
      }
      
  """
  @type async_inference_notification_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      model_metadata_filter() :: %{
        "Name" => list(any()),
        "Value" => String.t()
      }
      
  """
  @type model_metadata_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      additional_model_data_source() :: %{
        "ChannelName" => String.t(),
        "S3DataSource" => s3_model_data_source()
      }
      
  """
  @type additional_model_data_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_inference_experiment_response() :: %{
        "InferenceExperimentArn" => String.t()
      }
      
  """
  @type start_inference_experiment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      recommendation_job_resource_limit() :: %{
        "MaxNumberOfTests" => integer(),
        "MaxParallelOfTests" => integer()
      }
      
  """
  @type recommendation_job_resource_limit() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      selective_execution_config() :: %{
        "SelectedSteps" => list(selected_step()()),
        "SourcePipelineExecutionArn" => String.t()
      }
      
  """
  @type selective_execution_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      labeling_job_summary() :: %{
        "AnnotationConsolidationLambdaArn" => String.t(),
        "CreationTime" => non_neg_integer(),
        "FailureReason" => String.t(),
        "InputConfig" => labeling_job_input_config(),
        "LabelCounters" => label_counters(),
        "LabelingJobArn" => String.t(),
        "LabelingJobName" => String.t(),
        "LabelingJobOutput" => labeling_job_output(),
        "LabelingJobStatus" => list(any()),
        "LastModifiedTime" => non_neg_integer(),
        "PreHumanTaskLambdaArn" => String.t(),
        "WorkteamArn" => String.t()
      }
      
  """
  @type labeling_job_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      enable_sagemaker_servicecatalog_portfolio_output() :: %{}
      
  """
  @type enable_sagemaker_servicecatalog_portfolio_output() :: %{}

  @typedoc """

  ## Example:
      
      list_image_versions_response() :: %{
        "ImageVersions" => list(image_version()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_image_versions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      public_workforce_task_price() :: %{
        "AmountInUsd" => u_s_d()
      }
      
  """
  @type public_workforce_task_price() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      monitoring_csv_dataset_format() :: %{
        "Header" => boolean()
      }
      
  """
  @type monitoring_csv_dataset_format() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      debug_rule_evaluation_status() :: %{
        "LastModifiedTime" => non_neg_integer(),
        "RuleConfigurationName" => String.t(),
        "RuleEvaluationJobArn" => String.t(),
        "RuleEvaluationStatus" => list(any()),
        "StatusDetails" => String.t()
      }
      
  """
  @type debug_rule_evaluation_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      file_system_config() :: %{
        "DefaultGid" => integer(),
        "DefaultUid" => integer(),
        "MountPath" => String.t()
      }
      
  """
  @type file_system_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_actions_response() :: %{
        "ActionSummaries" => list(action_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_actions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_notebook_instances_input() :: %{
        optional("AdditionalCodeRepositoryEquals") => String.t(),
        optional("CreationTimeAfter") => non_neg_integer(),
        optional("CreationTimeBefore") => non_neg_integer(),
        optional("DefaultCodeRepositoryContains") => String.t(),
        optional("LastModifiedTimeAfter") => non_neg_integer(),
        optional("LastModifiedTimeBefore") => non_neg_integer(),
        optional("MaxResults") => integer(),
        optional("NameContains") => String.t(),
        optional("NextToken") => String.t(),
        optional("NotebookInstanceLifecycleConfigNameContains") => String.t(),
        optional("SortBy") => list(any()),
        optional("SortOrder") => list(any()),
        optional("StatusEquals") => list(any())
      }
      
  """
  @type list_notebook_instances_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_training_job_request() :: %{
        optional("CheckpointConfig") => checkpoint_config(),
        optional("DebugHookConfig") => debug_hook_config(),
        optional("DebugRuleConfigurations") => list(debug_rule_configuration()()),
        optional("EnableInterContainerTrafficEncryption") => boolean(),
        optional("EnableManagedSpotTraining") => boolean(),
        optional("EnableNetworkIsolation") => boolean(),
        optional("Environment") => map(),
        optional("ExperimentConfig") => experiment_config(),
        optional("HyperParameters") => map(),
        optional("InfraCheckConfig") => infra_check_config(),
        optional("InputDataConfig") => list(channel()()),
        optional("ProfilerConfig") => profiler_config(),
        optional("ProfilerRuleConfigurations") => list(profiler_rule_configuration()()),
        optional("RemoteDebugConfig") => remote_debug_config(),
        optional("RetryStrategy") => retry_strategy(),
        optional("SessionChainingConfig") => session_chaining_config(),
        optional("Tags") => list(tag()()),
        optional("TensorBoardOutputConfig") => tensor_board_output_config(),
        optional("VpcConfig") => vpc_config(),
        required("AlgorithmSpecification") => algorithm_specification(),
        required("OutputDataConfig") => output_data_config(),
        required("ResourceConfig") => resource_config(),
        required("RoleArn") => String.t(),
        required("StoppingCondition") => stopping_condition(),
        required("TrainingJobName") => String.t()
      }
      
  """
  @type create_training_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_hub_content_versions_request() :: %{
        optional("CreationTimeAfter") => non_neg_integer(),
        optional("CreationTimeBefore") => non_neg_integer(),
        optional("MaxResults") => integer(),
        optional("MaxSchemaVersion") => String.t(),
        optional("MinVersion") => String.t(),
        optional("NextToken") => String.t(),
        optional("SortBy") => list(any()),
        optional("SortOrder") => list(any()),
        required("HubContentName") => String.t(),
        required("HubContentType") => list(any()),
        required("HubName") => String.t()
      }
      
  """
  @type list_hub_content_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      monitoring_job_definition_summary() :: %{
        "CreationTime" => non_neg_integer(),
        "EndpointName" => String.t(),
        "MonitoringJobDefinitionArn" => String.t(),
        "MonitoringJobDefinitionName" => String.t()
      }
      
  """
  @type monitoring_job_definition_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_image_version_response() :: %{
        "ImageVersionArn" => String.t()
      }
      
  """
  @type create_image_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      space_storage_settings() :: %{
        "EbsStorageSettings" => ebs_storage_settings()
      }
      
  """
  @type space_storage_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      monitoring_input() :: %{
        "BatchTransformInput" => batch_transform_input(),
        "EndpointInput" => endpoint_input()
      }
      
  """
  @type monitoring_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster_node_summary() :: %{
        "InstanceGroupName" => String.t(),
        "InstanceId" => String.t(),
        "InstanceStatus" => cluster_instance_status_details(),
        "InstanceType" => list(any()),
        "LaunchTime" => non_neg_integer()
      }
      
  """
  @type cluster_node_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ebs_storage_settings() :: %{
        "EbsVolumeSizeInGb" => integer()
      }
      
  """
  @type ebs_storage_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      file_system_data_source() :: %{
        "DirectoryPath" => String.t(),
        "FileSystemAccessMode" => list(any()),
        "FileSystemId" => String.t(),
        "FileSystemType" => list(any())
      }
      
  """
  @type file_system_data_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_actions_request() :: %{
        optional("ActionType") => String.t(),
        optional("CreatedAfter") => non_neg_integer(),
        optional("CreatedBefore") => non_neg_integer(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SortBy") => list(any()),
        optional("SortOrder") => list(any()),
        optional("SourceUri") => String.t()
      }
      
  """
  @type list_actions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      athena_dataset_definition() :: %{
        "Catalog" => String.t(),
        "Database" => String.t(),
        "KmsKeyId" => String.t(),
        "OutputCompression" => list(any()),
        "OutputFormat" => list(any()),
        "OutputS3Uri" => String.t(),
        "QueryString" => String.t(),
        "WorkGroup" => String.t()
      }
      
  """
  @type athena_dataset_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance_group() :: %{
        "InstanceCount" => integer(),
        "InstanceGroupName" => String.t(),
        "InstanceType" => list(any())
      }
      
  """
  @type instance_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      optimization_output() :: %{
        "RecommendedInferenceImage" => String.t()
      }
      
  """
  @type optimization_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      profiler_rule_evaluation_status() :: %{
        "LastModifiedTime" => non_neg_integer(),
        "RuleConfigurationName" => String.t(),
        "RuleEvaluationJobArn" => String.t(),
        "RuleEvaluationStatus" => list(any()),
        "StatusDetails" => String.t()
      }
      
  """
  @type profiler_rule_evaluation_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_space_response() :: %{
        "SpaceArn" => String.t()
      }
      
  """
  @type update_space_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      inference_component_runtime_config() :: %{
        "CopyCount" => integer()
      }
      
  """
  @type inference_component_runtime_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      model_package_status_details() :: %{
        "ImageScanStatuses" => list(model_package_status_item()()),
        "ValidationStatuses" => list(model_package_status_item()())
      }
      
  """
  @type model_package_status_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_clusters_response() :: %{
        "ClusterSummaries" => list(cluster_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_clusters_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      human_loop_activation_conditions_config() :: %{
        "HumanLoopActivationConditions" => String.t()
      }
      
  """
  @type human_loop_activation_conditions_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_pipeline_execution_response() :: %{
        "PipelineExecutionArn" => String.t()
      }
      
  """
  @type stop_pipeline_execution_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      categorical_parameter_range() :: %{
        "Name" => String.t(),
        "Values" => list(String.t()())
      }
      
  """
  @type categorical_parameter_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      render_ui_template_request() :: %{
        optional("HumanTaskUiArn") => String.t(),
        optional("UiTemplate") => ui_template(),
        required("RoleArn") => String.t(),
        required("Task") => renderable_task()
      }
      
  """
  @type render_ui_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_notebook_instance_lifecycle_config_input() :: %{
        required("NotebookInstanceLifecycleConfigName") => String.t()
      }
      
  """
  @type describe_notebook_instance_lifecycle_config_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_model_package_input() :: %{
        optional("AdditionalInferenceSpecificationsToAdd") => list(additional_inference_specification_definition()()),
        optional("ApprovalDescription") => String.t(),
        optional("CustomerMetadataProperties") => map(),
        optional("CustomerMetadataPropertiesToRemove") => list(String.t()()),
        optional("InferenceSpecification") => inference_specification(),
        optional("ModelApprovalStatus") => list(any()),
        optional("ModelCard") => model_package_model_card(),
        optional("SourceUri") => String.t(),
        required("ModelPackageArn") => String.t()
      }
      
  """
  @type update_model_package_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      feature_group_summary() :: %{
        "CreationTime" => non_neg_integer(),
        "FeatureGroupArn" => String.t(),
        "FeatureGroupName" => String.t(),
        "FeatureGroupStatus" => list(any()),
        "OfflineStoreStatus" => offline_store_status()
      }
      
  """
  @type feature_group_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_workteam_response() :: %{
        "WorkteamArn" => String.t()
      }
      
  """
  @type create_workteam_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_cluster_response() :: %{
        "ClusterArn" => String.t()
      }
      
  """
  @type delete_cluster_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_presigned_domain_url_request() :: %{
        optional("ExpiresInSeconds") => integer(),
        optional("LandingUri") => String.t(),
        optional("SessionExpirationDurationInSeconds") => integer(),
        optional("SpaceName") => String.t(),
        required("DomainId") => String.t(),
        required("UserProfileName") => String.t()
      }
      
  """
  @type create_presigned_domain_url_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      model_configuration() :: %{
        "CompilationJobName" => String.t(),
        "EnvironmentParameters" => list(environment_parameter()()),
        "InferenceSpecificationName" => String.t()
      }
      
  """
  @type model_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_expression() :: %{
        "Filters" => list(filter()()),
        "NestedFilters" => list(nested_filters()()),
        "Operator" => list(any()),
        "SubExpressions" => list(search_expression()())
      }
      
  """
  @type search_expression() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_devices_request() :: %{
        optional("Tags") => list(tag()()),
        required("DeviceFleetName") => String.t(),
        required("Devices") => list(device()())
      }
      
  """
  @type register_devices_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      monitoring_json_dataset_format() :: %{
        "Line" => boolean()
      }
      
  """
  @type monitoring_json_dataset_format() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      labeling_job_for_workteam_summary() :: %{
        "CreationTime" => non_neg_integer(),
        "JobReferenceCode" => String.t(),
        "LabelCounters" => label_counters_for_workteam(),
        "LabelingJobName" => String.t(),
        "NumberOfHumanWorkersPerDataObject" => integer(),
        "WorkRequesterAccountId" => String.t()
      }
      
  """
  @type labeling_job_for_workteam_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      vertex() :: %{
        "Arn" => String.t(),
        "LineageType" => list(any()),
        "Type" => String.t()
      }
      
  """
  @type vertex() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      feature_parameter() :: %{
        "Key" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type feature_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_device_fleets_request() :: %{
        optional("CreationTimeAfter") => non_neg_integer(),
        optional("CreationTimeBefore") => non_neg_integer(),
        optional("LastModifiedTimeAfter") => non_neg_integer(),
        optional("LastModifiedTimeBefore") => non_neg_integer(),
        optional("MaxResults") => integer(),
        optional("NameContains") => String.t(),
        optional("NextToken") => String.t(),
        optional("SortBy") => list(any()),
        optional("SortOrder") => list(any())
      }
      
  """
  @type list_device_fleets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lambda_step_metadata() :: %{
        "Arn" => String.t(),
        "OutputParameters" => list(output_parameter()())
      }
      
  """
  @type lambda_step_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      experiment_config() :: %{
        "ExperimentName" => String.t(),
        "RunName" => String.t(),
        "TrialComponentDisplayName" => String.t(),
        "TrialName" => String.t()
      }
      
  """
  @type experiment_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ttl_duration() :: %{
        "Unit" => list(any()),
        "Value" => integer()
      }
      
  """
  @type ttl_duration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      filter() :: %{
        "Name" => String.t(),
        "Operator" => list(any()),
        "Value" => String.t()
      }
      
  """
  @type filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_image_response() :: %{
        "CreationTime" => non_neg_integer(),
        "Description" => String.t(),
        "DisplayName" => String.t(),
        "FailureReason" => String.t(),
        "ImageArn" => String.t(),
        "ImageName" => String.t(),
        "ImageStatus" => list(any()),
        "LastModifiedTime" => non_neg_integer(),
        "RoleArn" => String.t()
      }
      
  """
  @type describe_image_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_experiment_request() :: %{
        optional("Description") => String.t(),
        optional("DisplayName") => String.t(),
        required("ExperimentName") => String.t()
      }
      
  """
  @type update_experiment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_hub_content_reference_request() :: %{
        required("HubContentName") => String.t(),
        required("HubContentType") => list(any()),
        required("HubName") => String.t()
      }
      
  """
  @type delete_hub_content_reference_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      algorithm_summary() :: %{
        "AlgorithmArn" => String.t(),
        "AlgorithmDescription" => String.t(),
        "AlgorithmName" => String.t(),
        "AlgorithmStatus" => list(any()),
        "CreationTime" => non_neg_integer()
      }
      
  """
  @type algorithm_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_model_package_group_input() :: %{
        optional("ModelPackageGroupDescription") => String.t(),
        optional("Tags") => list(tag()()),
        required("ModelPackageGroupName") => String.t()
      }
      
  """
  @type create_model_package_group_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_model_quality_job_definitions_response() :: %{
        "JobDefinitionSummaries" => list(monitoring_job_definition_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_model_quality_job_definitions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_artifact_response() :: %{
        "ArtifactArn" => String.t(),
        "ArtifactName" => String.t(),
        "ArtifactType" => String.t(),
        "CreatedBy" => user_context(),
        "CreationTime" => non_neg_integer(),
        "LastModifiedBy" => user_context(),
        "LastModifiedTime" => non_neg_integer(),
        "LineageGroupArn" => String.t(),
        "MetadataProperties" => metadata_properties(),
        "Properties" => map(),
        "Source" => artifact_source()
      }
      
  """
  @type describe_artifact_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      inference_recommendations_job_step() :: %{
        "InferenceBenchmark" => recommendation_job_inference_benchmark(),
        "JobName" => String.t(),
        "Status" => list(any()),
        "StepType" => list(any())
      }
      
  """
  @type inference_recommendations_job_step() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      infra_check_config() :: %{
        "EnableInfraCheck" => boolean()
      }
      
  """
  @type infra_check_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      async_inference_client_config() :: %{
        "MaxConcurrentInvocationsPerInstance" => integer()
      }
      
  """
  @type async_inference_client_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      canvas_app_settings() :: %{
        "DirectDeploySettings" => direct_deploy_settings(),
        "EmrServerlessSettings" => emr_serverless_settings(),
        "GenerativeAiSettings" => generative_ai_settings(),
        "IdentityProviderOAuthSettings" => list(identity_provider_o_auth_setting()()),
        "KendraSettings" => kendra_settings(),
        "ModelRegisterSettings" => model_register_settings(),
        "TimeSeriesForecastingSettings" => time_series_forecasting_settings(),
        "WorkspaceSettings" => workspace_settings()
      }
      
  """
  @type canvas_app_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_images_response() :: %{
        "Images" => list(image()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_images_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_experiment_request() :: %{
        optional("Description") => String.t(),
        optional("DisplayName") => String.t(),
        optional("Tags") => list(tag()()),
        required("ExperimentName") => String.t()
      }
      
  """
  @type create_experiment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      auto_ml_job_channel() :: %{
        "ChannelType" => list(any()),
        "CompressionType" => list(any()),
        "ContentType" => String.t(),
        "DataSource" => auto_ml_data_source()
      }
      
  """
  @type auto_ml_job_channel() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      agent_version() :: %{
        "AgentCount" => float(),
        "Version" => String.t()
      }
      
  """
  @type agent_version() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_model_package_groups_input() :: %{
        optional("CreationTimeAfter") => non_neg_integer(),
        optional("CreationTimeBefore") => non_neg_integer(),
        optional("CrossAccountFilterOption") => list(any()),
        optional("MaxResults") => integer(),
        optional("NameContains") => String.t(),
        optional("NextToken") => String.t(),
        optional("SortBy") => list(any()),
        optional("SortOrder") => list(any())
      }
      
  """
  @type list_model_package_groups_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_contexts_response() :: %{
        "ContextSummaries" => list(context_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_contexts_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_app_image_configs_response() :: %{
        "AppImageConfigs" => list(app_image_config_details()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_app_image_configs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      warm_pool_status() :: %{
        "ResourceRetainedBillableTimeInSeconds" => integer(),
        "ReusedByJob" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type warm_pool_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_model_package_input() :: %{
        optional("AdditionalInferenceSpecifications") => list(additional_inference_specification_definition()()),
        optional("CertifyForMarketplace") => boolean(),
        optional("ClientToken") => String.t(),
        optional("CustomerMetadataProperties") => map(),
        optional("Domain") => String.t(),
        optional("DriftCheckBaselines") => drift_check_baselines(),
        optional("InferenceSpecification") => inference_specification(),
        optional("MetadataProperties") => metadata_properties(),
        optional("ModelApprovalStatus") => list(any()),
        optional("ModelCard") => model_package_model_card(),
        optional("ModelMetrics") => model_metrics(),
        optional("ModelPackageDescription") => String.t(),
        optional("ModelPackageGroupName") => String.t(),
        optional("ModelPackageName") => String.t(),
        optional("SamplePayloadUrl") => String.t(),
        optional("SecurityConfig") => model_package_security_config(),
        optional("SkipModelValidation") => list(any()),
        optional("SourceAlgorithmSpecification") => source_algorithm_specification(),
        optional("SourceUri") => String.t(),
        optional("Tags") => list(tag()()),
        optional("Task") => String.t(),
        optional("ValidationSpecification") => model_package_validation_specification()
      }
      
  """
  @type create_model_package_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      recommendation_job_container_config() :: %{
        "DataInputConfig" => String.t(),
        "Domain" => String.t(),
        "Framework" => String.t(),
        "FrameworkVersion" => String.t(),
        "NearestModelName" => String.t(),
        "PayloadConfig" => recommendation_job_payload_config(),
        "SupportedEndpointType" => list(any()),
        "SupportedInstanceTypes" => list(String.t()()),
        "SupportedResponseMIMETypes" => list(String.t()()),
        "Task" => String.t()
      }
      
  """
  @type recommendation_job_container_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_training_jobs_for_hyper_parameter_tuning_job_response() :: %{
        "NextToken" => String.t(),
        "TrainingJobSummaries" => list(hyper_parameter_training_job_summary()())
      }
      
  """
  @type list_training_jobs_for_hyper_parameter_tuning_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      provisioning_parameter() :: %{
        "Key" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type provisioning_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster_instance_status_details() :: %{
        "Message" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type cluster_instance_status_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_processing_job_request() :: %{
        optional("Environment") => map(),
        optional("ExperimentConfig") => experiment_config(),
        optional("NetworkConfig") => network_config(),
        optional("ProcessingInputs") => list(processing_input()()),
        optional("ProcessingOutputConfig") => processing_output_config(),
        optional("StoppingCondition") => processing_stopping_condition(),
        optional("Tags") => list(tag()()),
        required("AppSpecification") => app_specification(),
        required("ProcessingJobName") => String.t(),
        required("ProcessingResources") => processing_resources(),
        required("RoleArn") => String.t()
      }
      
  """
  @type create_processing_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      notification_configuration() :: %{
        "NotificationTopicArn" => String.t()
      }
      
  """
  @type notification_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_project_input() :: %{
        optional("ProjectDescription") => String.t(),
        optional("Tags") => list(tag()()),
        required("ProjectName") => String.t(),
        required("ServiceCatalogProvisioningDetails") => service_catalog_provisioning_details()
      }
      
  """
  @type create_project_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      inference_component_specification_summary() :: %{
        "ComputeResourceRequirements" => inference_component_compute_resource_requirements(),
        "Container" => inference_component_container_specification_summary(),
        "ModelName" => String.t(),
        "StartupParameters" => inference_component_startup_parameters()
      }
      
  """
  @type inference_component_specification_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_workteam_response() :: %{
        "Workteam" => workteam()
      }
      
  """
  @type describe_workteam_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_mlflow_tracking_server_response() :: %{
        "TrackingServerArn" => String.t()
      }
      
  """
  @type start_mlflow_tracking_server_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      endpoint() :: %{
        "CreationTime" => non_neg_integer(),
        "DataCaptureConfig" => data_capture_config_summary(),
        "EndpointArn" => String.t(),
        "EndpointConfigName" => String.t(),
        "EndpointName" => String.t(),
        "EndpointStatus" => list(any()),
        "FailureReason" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "MonitoringSchedules" => list(monitoring_schedule()()),
        "ProductionVariants" => list(production_variant_summary()()),
        "ShadowProductionVariants" => list(production_variant_summary()()),
        "Tags" => list(tag()())
      }
      
  """
  @type endpoint() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      recommendation_job_output_config() :: %{
        "CompiledOutputConfig" => recommendation_job_compiled_output_config(),
        "KmsKeyId" => String.t()
      }
      
  """
  @type recommendation_job_output_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      model_register_settings() :: %{
        "CrossAccountModelRegisterRoleArn" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type model_register_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      fail_step_metadata() :: %{
        "ErrorMessage" => String.t()
      }
      
  """
  @type fail_step_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_edge_deployment_plan_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("EdgeDeploymentPlanName") => String.t()
      }
      
  """
  @type describe_edge_deployment_plan_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_hub_content_versions_response() :: %{
        "HubContentSummaries" => list(hub_content_info()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_hub_content_versions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      recommendation_job_inference_benchmark() :: %{
        "EndpointConfiguration" => endpoint_output_configuration(),
        "EndpointMetrics" => inference_metrics(),
        "FailureReason" => String.t(),
        "InvocationEndTime" => non_neg_integer(),
        "InvocationStartTime" => non_neg_integer(),
        "Metrics" => recommendation_metrics(),
        "ModelConfiguration" => model_configuration()
      }
      
  """
  @type recommendation_job_inference_benchmark() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      model_infrastructure_config() :: %{
        "InfrastructureType" => list(any()),
        "RealTimeInferenceConfig" => real_time_inference_config()
      }
      
  """
  @type model_infrastructure_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_image_request() :: %{
        required("ImageName") => String.t()
      }
      
  """
  @type delete_image_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_workforce_response() :: %{}
      
  """
  @type delete_workforce_response() :: %{}

  @typedoc """

  ## Example:
      
      model_metadata_search_expression() :: %{
        "Filters" => list(model_metadata_filter()())
      }
      
  """
  @type model_metadata_search_expression() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_clusters_request() :: %{
        optional("CreationTimeAfter") => non_neg_integer(),
        optional("CreationTimeBefore") => non_neg_integer(),
        optional("MaxResults") => integer(),
        optional("NameContains") => String.t(),
        optional("NextToken") => String.t(),
        optional("SortBy") => list(any()),
        optional("SortOrder") => list(any())
      }
      
  """
  @type list_clusters_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      schedule_config() :: %{
        "DataAnalysisEndTime" => String.t(),
        "DataAnalysisStartTime" => String.t(),
        "ScheduleExpression" => String.t()
      }
      
  """
  @type schedule_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_edge_deployment_plans_request() :: %{
        optional("CreationTimeAfter") => non_neg_integer(),
        optional("CreationTimeBefore") => non_neg_integer(),
        optional("DeviceFleetNameContains") => String.t(),
        optional("LastModifiedTimeAfter") => non_neg_integer(),
        optional("LastModifiedTimeBefore") => non_neg_integer(),
        optional("MaxResults") => integer(),
        optional("NameContains") => String.t(),
        optional("NextToken") => String.t(),
        optional("SortBy") => list(any()),
        optional("SortOrder") => list(any())
      }
      
  """
  @type list_edge_deployment_plans_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tuning_job_step_meta_data() :: %{
        "Arn" => String.t()
      }
      
  """
  @type tuning_job_step_meta_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_workforces_request() :: %{
        optional("MaxResults") => integer(),
        optional("NameContains") => String.t(),
        optional("NextToken") => String.t(),
        optional("SortBy") => list(any()),
        optional("SortOrder") => list(any())
      }
      
  """
  @type list_workforces_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_inference_experiment_response() :: %{
        "InferenceExperimentArn" => String.t()
      }
      
  """
  @type update_inference_experiment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      trial_component_simple_summary() :: %{
        "CreatedBy" => user_context(),
        "CreationTime" => non_neg_integer(),
        "TrialComponentArn" => String.t(),
        "TrialComponentName" => String.t(),
        "TrialComponentSource" => trial_component_source()
      }
      
  """
  @type trial_component_simple_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      send_pipeline_execution_step_failure_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("FailureReason") => String.t(),
        required("CallbackToken") => String.t()
      }
      
  """
  @type send_pipeline_execution_step_failure_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      domain_settings() :: %{
        "AmazonQSettings" => amazon_q_settings(),
        "DockerSettings" => docker_settings(),
        "ExecutionRoleIdentityConfig" => list(any()),
        "RStudioServerProDomainSettings" => r_studio_server_pro_domain_settings(),
        "SecurityGroupIds" => list(String.t()())
      }
      
  """
  @type domain_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      device_summary() :: %{
        "AgentVersion" => String.t(),
        "Description" => String.t(),
        "DeviceArn" => String.t(),
        "DeviceFleetName" => String.t(),
        "DeviceName" => String.t(),
        "IotThingName" => String.t(),
        "LatestHeartbeat" => non_neg_integer(),
        "Models" => list(edge_model_summary()()),
        "RegistrationTime" => non_neg_integer()
      }
      
  """
  @type device_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      labeling_job_algorithms_config() :: %{
        "InitialActiveLearningModelArn" => String.t(),
        "LabelingJobAlgorithmSpecificationArn" => String.t(),
        "LabelingJobResourceConfig" => labeling_job_resource_config()
      }
      
  """
  @type labeling_job_algorithms_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_image_response() :: %{
        "ImageArn" => String.t()
      }
      
  """
  @type update_image_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_monitoring_schedule_request() :: %{
        optional("Tags") => list(tag()()),
        required("MonitoringScheduleConfig") => monitoring_schedule_config(),
        required("MonitoringScheduleName") => String.t()
      }
      
  """
  @type create_monitoring_schedule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_domains_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_domains_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_flow_definition_response() :: %{
        "FlowDefinitionArn" => String.t()
      }
      
  """
  @type create_flow_definition_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      recommendation_metrics() :: %{
        "CostPerHour" => float(),
        "CostPerInference" => float(),
        "CpuUtilization" => float(),
        "MaxInvocations" => integer(),
        "MemoryUtilization" => float(),
        "ModelLatency" => integer(),
        "ModelSetupTime" => integer()
      }
      
  """
  @type recommendation_metrics() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_model_package_group_policy_input() :: %{
        required("ModelPackageGroupName") => String.t()
      }
      
  """
  @type get_model_package_group_policy_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_space_response() :: %{
        "CreationTime" => non_neg_integer(),
        "DomainId" => String.t(),
        "FailureReason" => String.t(),
        "HomeEfsFileSystemUid" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "OwnershipSettings" => ownership_settings(),
        "SpaceArn" => String.t(),
        "SpaceDisplayName" => String.t(),
        "SpaceName" => String.t(),
        "SpaceSettings" => space_settings(),
        "SpaceSharingSettings" => space_sharing_settings(),
        "Status" => list(any()),
        "Url" => String.t()
      }
      
  """
  @type describe_space_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      monitoring_dataset_format() :: %{
        "Csv" => monitoring_csv_dataset_format(),
        "Json" => monitoring_json_dataset_format(),
        "Parquet" => monitoring_parquet_dataset_format()
      }
      
  """
  @type monitoring_dataset_format() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      training_job_summary() :: %{
        "CreationTime" => non_neg_integer(),
        "LastModifiedTime" => non_neg_integer(),
        "TrainingEndTime" => non_neg_integer(),
        "TrainingJobArn" => String.t(),
        "TrainingJobName" => String.t(),
        "TrainingJobStatus" => list(any()),
        "WarmPoolStatus" => warm_pool_status()
      }
      
  """
  @type training_job_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_training_job_response() :: %{
        "CreationTime" => non_neg_integer(),
        "TrainingJobArn" => String.t(),
        "OutputDataConfig" => output_data_config(),
        "EnableManagedSpotTraining" => boolean(),
        "TrainingStartTime" => non_neg_integer(),
        "VpcConfig" => vpc_config(),
        "LastModifiedTime" => non_neg_integer(),
        "CheckpointConfig" => checkpoint_config(),
        "ProfilerRuleConfigurations" => list(profiler_rule_configuration()()),
        "TrainingEndTime" => non_neg_integer(),
        "WarmPoolStatus" => warm_pool_status(),
        "BillableTimeInSeconds" => integer(),
        "LabelingJobArn" => String.t(),
        "TensorBoardOutputConfig" => tensor_board_output_config(),
        "TrainingTimeInSeconds" => integer(),
        "ProfilingStatus" => list(any()),
        "EnableInterContainerTrafficEncryption" => boolean(),
        "InfraCheckConfig" => infra_check_config(),
        "ResourceConfig" => resource_config(),
        "HyperParameters" => map(),
        "SecondaryStatus" => list(any()),
        "TrainingJobStatus" => list(any()),
        "ProfilerConfig" => profiler_config(),
        "TrainingJobName" => String.t(),
        "DebugRuleEvaluationStatuses" => list(debug_rule_evaluation_status()()),
        "AutoMLJobArn" => String.t(),
        "DebugRuleConfigurations" => list(debug_rule_configuration()()),
        "RetryStrategy" => retry_strategy(),
        "Environment" => map(),
        "AlgorithmSpecification" => algorithm_specification(),
        "SecondaryStatusTransitions" => list(secondary_status_transition()()),
        "TuningJobArn" => String.t(),
        "InputDataConfig" => list(channel()()),
        "ModelArtifacts" => model_artifacts(),
        "FinalMetricDataList" => list(metric_data()()),
        "ProfilerRuleEvaluationStatuses" => list(profiler_rule_evaluation_status()()),
        "RoleArn" => String.t(),
        "FailureReason" => String.t(),
        "StoppingCondition" => stopping_condition(),
        "ExperimentConfig" => experiment_config(),
        "RemoteDebugConfig" => remote_debug_config(),
        "EnableNetworkIsolation" => boolean(),
        "DebugHookConfig" => debug_hook_config()
      }
      
  """
  @type describe_training_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      real_time_inference_recommendation() :: %{
        "Environment" => map(),
        "InstanceType" => list(any()),
        "RecommendationId" => String.t()
      }
      
  """
  @type real_time_inference_recommendation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_trial_component_response() :: %{
        "TrialArn" => String.t(),
        "TrialComponentArn" => String.t()
      }
      
  """
  @type disassociate_trial_component_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_hyper_parameter_tuning_job_response() :: %{
        "Autotune" => autotune(),
        "BestTrainingJob" => hyper_parameter_training_job_summary(),
        "ConsumedResources" => hyper_parameter_tuning_job_consumed_resources(),
        "CreationTime" => non_neg_integer(),
        "FailureReason" => String.t(),
        "HyperParameterTuningEndTime" => non_neg_integer(),
        "HyperParameterTuningJobArn" => String.t(),
        "HyperParameterTuningJobConfig" => hyper_parameter_tuning_job_config(),
        "HyperParameterTuningJobName" => String.t(),
        "HyperParameterTuningJobStatus" => list(any()),
        "LastModifiedTime" => non_neg_integer(),
        "ObjectiveStatusCounters" => objective_status_counters(),
        "OverallBestTrainingJob" => hyper_parameter_training_job_summary(),
        "TrainingJobDefinition" => hyper_parameter_training_job_definition(),
        "TrainingJobDefinitions" => list(hyper_parameter_training_job_definition()()),
        "TrainingJobStatusCounters" => training_job_status_counters(),
        "TuningJobCompletionDetails" => hyper_parameter_tuning_job_completion_details(),
        "WarmStartConfig" => hyper_parameter_tuning_job_warm_start_config()
      }
      
  """
  @type describe_hyper_parameter_tuning_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      additional_inference_specification_definition() :: %{
        "Containers" => list(model_package_container_definition()()),
        "Description" => String.t(),
        "Name" => String.t(),
        "SupportedContentTypes" => list(String.t()()),
        "SupportedRealtimeInferenceInstanceTypes" => list(list(any())()),
        "SupportedResponseMIMETypes" => list(String.t()()),
        "SupportedTransformInstanceTypes" => list(list(any())())
      }
      
  """
  @type additional_inference_specification_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      parallelism_configuration() :: %{
        "MaxParallelExecutionSteps" => integer()
      }
      
  """
  @type parallelism_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_model_bias_job_definition_request() :: %{
        optional("ModelBiasBaselineConfig") => model_bias_baseline_config(),
        optional("NetworkConfig") => monitoring_network_config(),
        optional("StoppingCondition") => monitoring_stopping_condition(),
        optional("Tags") => list(tag()()),
        required("JobDefinitionName") => String.t(),
        required("JobResources") => monitoring_resources(),
        required("ModelBiasAppSpecification") => model_bias_app_specification(),
        required("ModelBiasJobInput") => model_bias_job_input(),
        required("ModelBiasJobOutputConfig") => monitoring_output_config(),
        required("RoleArn") => String.t()
      }
      
  """
  @type create_model_bias_job_definition_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_hub_response() :: %{
        "HubArn" => String.t()
      }
      
  """
  @type update_hub_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      context_source() :: %{
        "SourceId" => String.t(),
        "SourceType" => String.t(),
        "SourceUri" => String.t()
      }
      
  """
  @type context_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_inference_component_output() :: %{
        "InferenceComponentArn" => String.t()
      }
      
  """
  @type create_inference_component_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_notebook_instance_input() :: %{
        optional("AcceleratorTypes") => list(list(any())()),
        optional("AdditionalCodeRepositories") => list(String.t()()),
        optional("DefaultCodeRepository") => String.t(),
        optional("DirectInternetAccess") => list(any()),
        optional("InstanceMetadataServiceConfiguration") => instance_metadata_service_configuration(),
        optional("KmsKeyId") => String.t(),
        optional("LifecycleConfigName") => String.t(),
        optional("PlatformIdentifier") => String.t(),
        optional("RootAccess") => list(any()),
        optional("SecurityGroupIds") => list(String.t()()),
        optional("SubnetId") => String.t(),
        optional("Tags") => list(tag()()),
        optional("VolumeSizeInGB") => integer(),
        required("InstanceType") => list(any()),
        required("NotebookInstanceName") => String.t(),
        required("RoleArn") => String.t()
      }
      
  """
  @type create_notebook_instance_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      monitoring_s3_output() :: %{
        "LocalPath" => String.t(),
        "S3UploadMode" => list(any()),
        "S3Uri" => String.t()
      }
      
  """
  @type monitoring_s3_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      clarify_inference_config() :: %{
        "ContentTemplate" => String.t(),
        "FeatureHeaders" => list(String.t()()),
        "FeatureTypes" => list(list(any())()),
        "FeaturesAttribute" => String.t(),
        "LabelAttribute" => String.t(),
        "LabelHeaders" => list(String.t()()),
        "LabelIndex" => integer(),
        "MaxPayloadInMB" => integer(),
        "MaxRecordCount" => integer(),
        "ProbabilityAttribute" => String.t(),
        "ProbabilityIndex" => integer()
      }
      
  """
  @type clarify_inference_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      pending_production_variant_summary() :: %{
        "AcceleratorType" => list(any()),
        "CurrentInstanceCount" => integer(),
        "CurrentServerlessConfig" => production_variant_serverless_config(),
        "CurrentWeight" => float(),
        "DeployedImages" => list(deployed_image()()),
        "DesiredInstanceCount" => integer(),
        "DesiredServerlessConfig" => production_variant_serverless_config(),
        "DesiredWeight" => float(),
        "InstanceType" => list(any()),
        "ManagedInstanceScaling" => production_variant_managed_instance_scaling(),
        "RoutingConfig" => production_variant_routing_config(),
        "VariantName" => String.t(),
        "VariantStatus" => list(production_variant_status()())
      }
      
  """
  @type pending_production_variant_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      production_variant_routing_config() :: %{
        "RoutingStrategy" => list(any())
      }
      
  """
  @type production_variant_routing_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_associations_request() :: %{
        optional("AssociationType") => list(any()),
        optional("CreatedAfter") => non_neg_integer(),
        optional("CreatedBefore") => non_neg_integer(),
        optional("DestinationArn") => String.t(),
        optional("DestinationType") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SortBy") => list(any()),
        optional("SortOrder") => list(any()),
        optional("SourceArn") => String.t(),
        optional("SourceType") => String.t()
      }
      
  """
  @type list_associations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_pipeline_executions_response() :: %{
        "NextToken" => String.t(),
        "PipelineExecutionSummaries" => list(pipeline_execution_summary()())
      }
      
  """
  @type list_pipeline_executions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_labeling_job_request() :: %{
        optional("LabelCategoryConfigS3Uri") => String.t(),
        optional("LabelingJobAlgorithmsConfig") => labeling_job_algorithms_config(),
        optional("StoppingConditions") => labeling_job_stopping_conditions(),
        optional("Tags") => list(tag()()),
        required("HumanTaskConfig") => human_task_config(),
        required("InputConfig") => labeling_job_input_config(),
        required("LabelAttributeName") => String.t(),
        required("LabelingJobName") => String.t(),
        required("OutputConfig") => labeling_job_output_config(),
        required("RoleArn") => String.t()
      }
      
  """
  @type create_labeling_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_model_card_export_job_request() :: %{
        required("ModelCardExportJobArn") => String.t()
      }
      
  """
  @type describe_model_card_export_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_code_repository_input() :: %{
        required("CodeRepositoryName") => String.t()
      }
      
  """
  @type delete_code_repository_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      trial_source() :: %{
        "SourceArn" => String.t(),
        "SourceType" => String.t()
      }
      
  """
  @type trial_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      workforce() :: %{
        "CognitoConfig" => cognito_config(),
        "CreateDate" => non_neg_integer(),
        "FailureReason" => String.t(),
        "LastUpdatedDate" => non_neg_integer(),
        "OidcConfig" => oidc_config_for_response(),
        "SourceIpConfig" => source_ip_config(),
        "Status" => list(any()),
        "SubDomain" => String.t(),
        "WorkforceArn" => String.t(),
        "WorkforceName" => String.t(),
        "WorkforceVpcConfig" => workforce_vpc_config_response()
      }
      
  """
  @type workforce() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cache_hit_result() :: %{
        "SourcePipelineExecutionArn" => String.t()
      }
      
  """
  @type cache_hit_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      hyper_parameter_training_job_summary() :: %{
        "CreationTime" => non_neg_integer(),
        "FailureReason" => String.t(),
        "FinalHyperParameterTuningJobObjectiveMetric" => final_hyper_parameter_tuning_job_objective_metric(),
        "ObjectiveStatus" => list(any()),
        "TrainingEndTime" => non_neg_integer(),
        "TrainingJobArn" => String.t(),
        "TrainingJobDefinitionName" => String.t(),
        "TrainingJobName" => String.t(),
        "TrainingJobStatus" => list(any()),
        "TrainingStartTime" => non_neg_integer(),
        "TunedHyperParameters" => map(),
        "TuningJobName" => String.t()
      }
      
  """
  @type hyper_parameter_training_job_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      image_classification_job_config() :: %{
        "CompletionCriteria" => auto_ml_job_completion_criteria()
      }
      
  """
  @type image_classification_job_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_workteam_request() :: %{
        required("WorkteamName") => String.t()
      }
      
  """
  @type delete_workteam_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      debug_rule_configuration() :: %{
        "InstanceType" => list(any()),
        "LocalPath" => String.t(),
        "RuleConfigurationName" => String.t(),
        "RuleEvaluatorImage" => String.t(),
        "RuleParameters" => map(),
        "S3OutputPath" => String.t(),
        "VolumeSizeInGB" => integer()
      }
      
  """
  @type debug_rule_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_model_card_request() :: %{
        optional("ModelCardVersion") => integer(),
        required("ModelCardName") => String.t()
      }
      
  """
  @type describe_model_card_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_model_packages_input() :: %{
        optional("CreationTimeAfter") => non_neg_integer(),
        optional("CreationTimeBefore") => non_neg_integer(),
        optional("MaxResults") => integer(),
        optional("ModelApprovalStatus") => list(any()),
        optional("ModelPackageGroupName") => String.t(),
        optional("ModelPackageType") => list(any()),
        optional("NameContains") => String.t(),
        optional("NextToken") => String.t(),
        optional("SortBy") => list(any()),
        optional("SortOrder") => list(any())
      }
      
  """
  @type list_model_packages_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_human_task_ui_response() :: %{
        "HumanTaskUiArn" => String.t()
      }
      
  """
  @type create_human_task_ui_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      model_dashboard_model_card() :: %{
        "CreatedBy" => user_context(),
        "CreationTime" => non_neg_integer(),
        "LastModifiedBy" => user_context(),
        "LastModifiedTime" => non_neg_integer(),
        "ModelCardArn" => String.t(),
        "ModelCardName" => String.t(),
        "ModelCardStatus" => list(any()),
        "ModelCardVersion" => integer(),
        "ModelId" => String.t(),
        "RiskRating" => String.t(),
        "SecurityConfig" => model_card_security_config(),
        "Tags" => list(tag()())
      }
      
  """
  @type model_dashboard_model_card() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_trial_request() :: %{
        optional("DisplayName") => String.t(),
        optional("MetadataProperties") => metadata_properties(),
        optional("Tags") => list(tag()()),
        required("ExperimentName") => String.t(),
        required("TrialName") => String.t()
      }
      
  """
  @type create_trial_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_app_image_config_request() :: %{
        optional("CodeEditorAppImageConfig") => code_editor_app_image_config(),
        optional("JupyterLabAppImageConfig") => jupyter_lab_app_image_config(),
        optional("KernelGatewayImageConfig") => kernel_gateway_image_config(),
        optional("Tags") => list(tag()()),
        required("AppImageConfigName") => String.t()
      }
      
  """
  @type create_app_image_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      optimization_job_model_source_s3() :: %{
        "ModelAccessConfig" => optimization_model_access_config(),
        "S3Uri" => String.t()
      }
      
  """
  @type optimization_job_model_source_s3() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deployed_image() :: %{
        "ResolutionTime" => non_neg_integer(),
        "ResolvedImage" => String.t(),
        "SpecifiedImage" => String.t()
      }
      
  """
  @type deployed_image() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      inference_component_summary() :: %{
        "CreationTime" => non_neg_integer(),
        "EndpointArn" => String.t(),
        "EndpointName" => String.t(),
        "InferenceComponentArn" => String.t(),
        "InferenceComponentName" => String.t(),
        "InferenceComponentStatus" => list(any()),
        "LastModifiedTime" => non_neg_integer(),
        "VariantName" => String.t()
      }
      
  """
  @type inference_component_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_cluster_request() :: %{
        required("ClusterName") => String.t()
      }
      
  """
  @type delete_cluster_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_transform_job_request() :: %{
        required("TransformJobName") => String.t()
      }
      
  """
  @type describe_transform_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_app_request() :: %{
        optional("SpaceName") => String.t(),
        optional("UserProfileName") => String.t(),
        required("AppName") => String.t(),
        required("AppType") => list(any()),
        required("DomainId") => String.t()
      }
      
  """
  @type delete_app_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      objective_status_counters() :: %{
        "Failed" => integer(),
        "Pending" => integer(),
        "Succeeded" => integer()
      }
      
  """
  @type objective_status_counters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      parent_hyper_parameter_tuning_job() :: %{
        "HyperParameterTuningJobName" => String.t()
      }
      
  """
  @type parent_hyper_parameter_tuning_job() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      render_ui_template_response() :: %{
        "Errors" => list(rendering_error()()),
        "RenderedContent" => String.t()
      }
      
  """
  @type render_ui_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_auto_ml_job_v2_response() :: %{
        "AutoMLComputeConfig" => auto_ml_compute_config(),
        "AutoMLJobArn" => String.t(),
        "AutoMLJobArtifacts" => auto_ml_job_artifacts(),
        "AutoMLJobInputDataConfig" => list(auto_ml_job_channel()()),
        "AutoMLJobName" => String.t(),
        "AutoMLJobObjective" => auto_ml_job_objective(),
        "AutoMLJobSecondaryStatus" => list(any()),
        "AutoMLJobStatus" => list(any()),
        "AutoMLProblemTypeConfig" => list(),
        "AutoMLProblemTypeConfigName" => list(any()),
        "BestCandidate" => auto_ml_candidate(),
        "CreationTime" => non_neg_integer(),
        "DataSplitConfig" => auto_ml_data_split_config(),
        "EndTime" => non_neg_integer(),
        "FailureReason" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "ModelDeployConfig" => model_deploy_config(),
        "ModelDeployResult" => model_deploy_result(),
        "OutputDataConfig" => auto_ml_output_data_config(),
        "PartialFailureReasons" => list(auto_ml_partial_failure_reason()()),
        "ResolvedAttributes" => auto_ml_resolved_attributes(),
        "RoleArn" => String.t(),
        "SecurityConfig" => auto_ml_security_config()
      }
      
  """
  @type describe_auto_ml_job_v2_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_trial_component_request() :: %{
        required("TrialComponentName") => String.t()
      }
      
  """
  @type delete_trial_component_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      model_package_group_summary() :: %{
        "CreationTime" => non_neg_integer(),
        "ModelPackageGroupArn" => String.t(),
        "ModelPackageGroupDescription" => String.t(),
        "ModelPackageGroupName" => String.t(),
        "ModelPackageGroupStatus" => list(any())
      }
      
  """
  @type model_package_group_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      artifact_summary() :: %{
        "ArtifactArn" => String.t(),
        "ArtifactName" => String.t(),
        "ArtifactType" => String.t(),
        "CreationTime" => non_neg_integer(),
        "LastModifiedTime" => non_neg_integer(),
        "Source" => artifact_source()
      }
      
  """
  @type artifact_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      image() :: %{
        "CreationTime" => non_neg_integer(),
        "Description" => String.t(),
        "DisplayName" => String.t(),
        "FailureReason" => String.t(),
        "ImageArn" => String.t(),
        "ImageName" => String.t(),
        "ImageStatus" => list(any()),
        "LastModifiedTime" => non_neg_integer()
      }
      
  """
  @type image() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      device_fleet_summary() :: %{
        "CreationTime" => non_neg_integer(),
        "DeviceFleetArn" => String.t(),
        "DeviceFleetName" => String.t(),
        "LastModifiedTime" => non_neg_integer()
      }
      
  """
  @type device_fleet_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_compilation_job_request() :: %{
        optional("InputConfig") => input_config(),
        optional("ModelPackageVersionArn") => String.t(),
        optional("Tags") => list(tag()()),
        optional("VpcConfig") => neo_vpc_config(),
        required("CompilationJobName") => String.t(),
        required("OutputConfig") => output_config(),
        required("RoleArn") => String.t(),
        required("StoppingCondition") => stopping_condition()
      }
      
  """
  @type create_compilation_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      label_counters() :: %{
        "FailedNonRetryableError" => integer(),
        "HumanLabeled" => integer(),
        "MachineLabeled" => integer(),
        "TotalLabeled" => integer(),
        "Unlabeled" => integer()
      }
      
  """
  @type label_counters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      drift_check_model_quality() :: %{
        "Constraints" => metrics_source(),
        "Statistics" => metrics_source()
      }
      
  """
  @type drift_check_model_quality() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      explainability() :: %{
        "Report" => metrics_source()
      }
      
  """
  @type explainability() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_monitoring_schedule_response() :: %{
        "MonitoringScheduleArn" => String.t()
      }
      
  """
  @type update_monitoring_schedule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_experiment_request() :: %{
        required("ExperimentName") => String.t()
      }
      
  """
  @type describe_experiment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_model_bias_job_definition_response() :: %{
        "JobDefinitionArn" => String.t()
      }
      
  """
  @type create_model_bias_job_definition_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_action_response() :: %{
        "ActionArn" => String.t()
      }
      
  """
  @type delete_action_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_app_request() :: %{
        optional("SpaceName") => String.t(),
        optional("UserProfileName") => String.t(),
        required("AppName") => String.t(),
        required("AppType") => list(any()),
        required("DomainId") => String.t()
      }
      
  """
  @type describe_app_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      collection_configuration() :: %{
        "CollectionName" => String.t(),
        "CollectionParameters" => map()
      }
      
  """
  @type collection_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_config() :: %{
        "InstanceCount" => integer(),
        "InstanceGroups" => list(instance_group()()),
        "InstanceType" => list(any()),
        "KeepAlivePeriodInSeconds" => integer(),
        "VolumeKmsKeyId" => String.t(),
        "VolumeSizeInGB" => integer()
      }
      
  """
  @type resource_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      amazon_q_settings() :: %{
        "QProfileArn" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type amazon_q_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_project_output() :: %{
        "ProjectArn" => String.t()
      }
      
  """
  @type update_project_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_mlflow_tracking_server_response() :: %{
        "ArtifactStoreUri" => String.t(),
        "AutomaticModelRegistration" => boolean(),
        "CreatedBy" => user_context(),
        "CreationTime" => non_neg_integer(),
        "IsActive" => list(any()),
        "LastModifiedBy" => user_context(),
        "LastModifiedTime" => non_neg_integer(),
        "MlflowVersion" => String.t(),
        "RoleArn" => String.t(),
        "TrackingServerArn" => String.t(),
        "TrackingServerName" => String.t(),
        "TrackingServerSize" => list(any()),
        "TrackingServerStatus" => list(any()),
        "TrackingServerUrl" => String.t(),
        "WeeklyMaintenanceWindowStart" => String.t()
      }
      
  """
  @type describe_mlflow_tracking_server_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      real_time_inference_config() :: %{
        "InstanceCount" => integer(),
        "InstanceType" => list(any())
      }
      
  """
  @type real_time_inference_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_transform_job_response() :: %{
        "AutoMLJobArn" => String.t(),
        "BatchStrategy" => list(any()),
        "CreationTime" => non_neg_integer(),
        "DataCaptureConfig" => batch_data_capture_config(),
        "DataProcessing" => data_processing(),
        "Environment" => map(),
        "ExperimentConfig" => experiment_config(),
        "FailureReason" => String.t(),
        "LabelingJobArn" => String.t(),
        "MaxConcurrentTransforms" => integer(),
        "MaxPayloadInMB" => integer(),
        "ModelClientConfig" => model_client_config(),
        "ModelName" => String.t(),
        "TransformEndTime" => non_neg_integer(),
        "TransformInput" => transform_input(),
        "TransformJobArn" => String.t(),
        "TransformJobName" => String.t(),
        "TransformJobStatus" => list(any()),
        "TransformOutput" => transform_output(),
        "TransformResources" => transform_resources(),
        "TransformStartTime" => non_neg_integer()
      }
      
  """
  @type describe_transform_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      optimization_model_access_config() :: %{
        "AcceptEula" => boolean()
      }
      
  """
  @type optimization_model_access_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_workteams_request() :: %{
        optional("MaxResults") => integer(),
        optional("NameContains") => String.t(),
        optional("NextToken") => String.t(),
        optional("SortBy") => list(any()),
        optional("SortOrder") => list(any())
      }
      
  """
  @type list_workteams_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      online_store_config() :: %{
        "EnableOnlineStore" => boolean(),
        "SecurityConfig" => online_store_security_config(),
        "StorageType" => list(any()),
        "TtlDuration" => ttl_duration()
      }
      
  """
  @type online_store_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      processing_job_step_metadata() :: %{
        "Arn" => String.t()
      }
      
  """
  @type processing_job_step_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      label_counters_for_workteam() :: %{
        "HumanLabeled" => integer(),
        "PendingHuman" => integer(),
        "Total" => integer()
      }
      
  """
  @type label_counters_for_workteam() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_artifacts_response() :: %{
        "ArtifactSummaries" => list(artifact_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_artifacts_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_hub_response() :: %{
        "CreationTime" => non_neg_integer(),
        "FailureReason" => String.t(),
        "HubArn" => String.t(),
        "HubDescription" => String.t(),
        "HubDisplayName" => String.t(),
        "HubName" => String.t(),
        "HubSearchKeywords" => list(String.t()()),
        "HubStatus" => list(any()),
        "LastModifiedTime" => non_neg_integer(),
        "S3StorageConfig" => hub_s3_storage_config()
      }
      
  """
  @type describe_hub_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_app_image_config_request() :: %{
        required("AppImageConfigName") => String.t()
      }
      
  """
  @type delete_app_image_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_feature_group_request() :: %{
        optional("NextToken") => String.t(),
        required("FeatureGroupName") => String.t()
      }
      
  """
  @type describe_feature_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_compilation_job_request() :: %{
        required("CompilationJobName") => String.t()
      }
      
  """
  @type delete_compilation_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      data_capture_config_summary() :: %{
        "CaptureStatus" => list(any()),
        "CurrentSamplingPercentage" => integer(),
        "DestinationS3Uri" => String.t(),
        "EnableCapture" => boolean(),
        "KmsKeyId" => String.t()
      }
      
  """
  @type data_capture_config_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      monitoring_schedule_config() :: %{
        "MonitoringJobDefinition" => monitoring_job_definition(),
        "MonitoringJobDefinitionName" => String.t(),
        "MonitoringType" => list(any()),
        "ScheduleConfig" => schedule_config()
      }
      
  """
  @type monitoring_schedule_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      profiler_config_for_update() :: %{
        "DisableProfiler" => boolean(),
        "ProfilingIntervalInMilliseconds" => float(),
        "ProfilingParameters" => map(),
        "S3OutputPath" => String.t()
      }
      
  """
  @type profiler_config_for_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rolling_update_policy() :: %{
        "MaximumBatchSize" => capacity_size(),
        "MaximumExecutionTimeoutInSeconds" => integer(),
        "RollbackMaximumBatchSize" => capacity_size(),
        "WaitIntervalInSeconds" => integer()
      }
      
  """
  @type rolling_update_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      app_image_config_details() :: %{
        "AppImageConfigArn" => String.t(),
        "AppImageConfigName" => String.t(),
        "CodeEditorAppImageConfig" => code_editor_app_image_config(),
        "CreationTime" => non_neg_integer(),
        "JupyterLabAppImageConfig" => jupyter_lab_app_image_config(),
        "KernelGatewayImageConfig" => kernel_gateway_image_config(),
        "LastModifiedTime" => non_neg_integer()
      }
      
  """
  @type app_image_config_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      model_compilation_config() :: %{
        "Image" => String.t(),
        "OverrideEnvironment" => map()
      }
      
  """
  @type model_compilation_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_feature_metadata_request() :: %{
        optional("Description") => String.t(),
        optional("ParameterAdditions") => list(feature_parameter()()),
        optional("ParameterRemovals") => list(String.t()()),
        required("FeatureGroupName") => String.t(),
        required("FeatureName") => String.t()
      }
      
  """
  @type update_feature_metadata_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_labeling_job_request() :: %{
        required("LabelingJobName") => String.t()
      }
      
  """
  @type describe_labeling_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_domain_request() :: %{
        required("DomainId") => String.t()
      }
      
  """
  @type describe_domain_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_stage_devices_response() :: %{
        "DeviceDeploymentSummaries" => list(device_deployment_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_stage_devices_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_presigned_notebook_instance_url_input() :: %{
        optional("SessionExpirationDurationInSeconds") => integer(),
        required("NotebookInstanceName") => String.t()
      }
      
  """
  @type create_presigned_notebook_instance_url_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      model_explainability_job_input() :: %{
        "BatchTransformInput" => batch_transform_input(),
        "EndpointInput" => endpoint_input()
      }
      
  """
  @type model_explainability_job_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_space_request() :: %{
        optional("SpaceDisplayName") => String.t(),
        optional("SpaceSettings") => space_settings(),
        required("DomainId") => String.t(),
        required("SpaceName") => String.t()
      }
      
  """
  @type update_space_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      trial_component_source_detail() :: %{
        "ProcessingJob" => processing_job(),
        "SourceArn" => String.t(),
        "TrainingJob" => training_job(),
        "TransformJob" => transform_job()
      }
      
  """
  @type trial_component_source_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_candidates_for_auto_ml_job_response() :: %{
        "Candidates" => list(auto_ml_candidate()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_candidates_for_auto_ml_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      predefined_metric_specification() :: %{
        "PredefinedMetricType" => String.t()
      }
      
  """
  @type predefined_metric_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      endpoint_input_configuration() :: %{
        "EnvironmentParameterRanges" => environment_parameter_ranges(),
        "InferenceSpecificationName" => String.t(),
        "InstanceType" => list(any()),
        "ServerlessConfig" => production_variant_serverless_config()
      }
      
  """
  @type endpoint_input_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_model_input() :: %{
        required("ModelName") => String.t()
      }
      
  """
  @type delete_model_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_monitoring_schedule_request() :: %{
        required("MonitoringScheduleName") => String.t()
      }
      
  """
  @type describe_monitoring_schedule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      action_source() :: %{
        "SourceId" => String.t(),
        "SourceType" => String.t(),
        "SourceUri" => String.t()
      }
      
  """
  @type action_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      hyper_parameter_tuning_job_summary() :: %{
        "CreationTime" => non_neg_integer(),
        "HyperParameterTuningEndTime" => non_neg_integer(),
        "HyperParameterTuningJobArn" => String.t(),
        "HyperParameterTuningJobName" => String.t(),
        "HyperParameterTuningJobStatus" => list(any()),
        "LastModifiedTime" => non_neg_integer(),
        "ObjectiveStatusCounters" => objective_status_counters(),
        "ResourceLimits" => resource_limits(),
        "Strategy" => list(any()),
        "TrainingJobStatusCounters" => training_job_status_counters()
      }
      
  """
  @type hyper_parameter_tuning_job_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      multi_model_config() :: %{
        "ModelCacheSetting" => list(any())
      }
      
  """
  @type multi_model_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      model_artifacts() :: %{
        "S3ModelArtifacts" => String.t()
      }
      
  """
  @type model_artifacts() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_user_profile_request() :: %{
        optional("SingleSignOnUserIdentifier") => String.t(),
        optional("SingleSignOnUserValue") => String.t(),
        optional("Tags") => list(tag()()),
        optional("UserSettings") => user_settings(),
        required("DomainId") => String.t(),
        required("UserProfileName") => String.t()
      }
      
  """
  @type create_user_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      processing_input() :: %{
        "AppManaged" => boolean(),
        "DatasetDefinition" => dataset_definition(),
        "InputName" => String.t(),
        "S3Input" => processing_s3_input()
      }
      
  """
  @type processing_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_feature_group_request() :: %{
        optional("FeatureAdditions") => list(feature_definition()()),
        optional("OnlineStoreConfig") => online_store_config_update(),
        optional("ThroughputConfig") => throughput_config_update(),
        required("FeatureGroupName") => String.t()
      }
      
  """
  @type update_feature_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_edge_deployment_plans_response() :: %{
        "EdgeDeploymentPlanSummaries" => list(edge_deployment_plan_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_edge_deployment_plans_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_monitoring_alert_response() :: %{
        "MonitoringAlertName" => String.t(),
        "MonitoringScheduleArn" => String.t()
      }
      
  """
  @type update_monitoring_alert_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tensor_board_output_config() :: %{
        "LocalPath" => String.t(),
        "S3OutputPath" => String.t()
      }
      
  """
  @type tensor_board_output_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      monitoring_app_specification() :: %{
        "ContainerArguments" => list(String.t()()),
        "ContainerEntrypoint" => list(String.t()()),
        "ImageUri" => String.t(),
        "PostAnalyticsProcessorSourceUri" => String.t(),
        "RecordPreprocessorSourceUri" => String.t()
      }
      
  """
  @type monitoring_app_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      model_input() :: %{
        "DataInputConfig" => String.t()
      }
      
  """
  @type model_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      model_package_security_config() :: %{
        "KmsKeyId" => String.t()
      }
      
  """
  @type model_package_security_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      data_quality_job_input() :: %{
        "BatchTransformInput" => batch_transform_input(),
        "EndpointInput" => endpoint_input()
      }
      
  """
  @type data_quality_job_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_subscribed_workteams_request() :: %{
        optional("MaxResults") => integer(),
        optional("NameContains") => String.t(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_subscribed_workteams_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_studio_lifecycle_configs_response() :: %{
        "NextToken" => String.t(),
        "StudioLifecycleConfigs" => list(studio_lifecycle_config_details()())
      }
      
  """
  @type list_studio_lifecycle_configs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      data_processing() :: %{
        "InputFilter" => String.t(),
        "JoinSource" => list(any()),
        "OutputFilter" => String.t()
      }
      
  """
  @type data_processing() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      monitoring_output() :: %{
        "S3Output" => monitoring_s3_output()
      }
      
  """
  @type monitoring_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_model_bias_job_definitions_response() :: %{
        "JobDefinitionSummaries" => list(monitoring_job_definition_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_model_bias_job_definitions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tabular_job_config() :: %{
        "CandidateGenerationConfig" => candidate_generation_config(),
        "CompletionCriteria" => auto_ml_job_completion_criteria(),
        "FeatureSpecificationS3Uri" => String.t(),
        "GenerateCandidateDefinitionsOnly" => boolean(),
        "Mode" => list(any()),
        "ProblemType" => list(any()),
        "SampleWeightAttributeName" => String.t(),
        "TargetAttributeName" => String.t()
      }
      
  """
  @type tabular_job_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_subscribed_workteam_response() :: %{
        "SubscribedWorkteam" => subscribed_workteam()
      }
      
  """
  @type describe_subscribed_workteam_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_projects_input() :: %{
        optional("CreationTimeAfter") => non_neg_integer(),
        optional("CreationTimeBefore") => non_neg_integer(),
        optional("MaxResults") => integer(),
        optional("NameContains") => String.t(),
        optional("NextToken") => String.t(),
        optional("SortBy") => list(any()),
        optional("SortOrder") => list(any())
      }
      
  """
  @type list_projects_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_transform_input() :: %{
        "DataCapturedDestinationS3Uri" => String.t(),
        "DatasetFormat" => monitoring_dataset_format(),
        "EndTimeOffset" => String.t(),
        "ExcludeFeaturesAttribute" => String.t(),
        "FeaturesAttribute" => String.t(),
        "InferenceAttribute" => String.t(),
        "LocalPath" => String.t(),
        "ProbabilityAttribute" => String.t(),
        "ProbabilityThresholdAttribute" => float(),
        "S3DataDistributionType" => list(any()),
        "S3InputMode" => list(any()),
        "StartTimeOffset" => String.t()
      }
      
  """
  @type batch_transform_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_inference_recommendations_jobs_request() :: %{
        optional("CreationTimeAfter") => non_neg_integer(),
        optional("CreationTimeBefore") => non_neg_integer(),
        optional("LastModifiedTimeAfter") => non_neg_integer(),
        optional("LastModifiedTimeBefore") => non_neg_integer(),
        optional("MaxResults") => integer(),
        optional("ModelNameEquals") => String.t(),
        optional("ModelPackageVersionArnEquals") => String.t(),
        optional("NameContains") => String.t(),
        optional("NextToken") => String.t(),
        optional("SortBy") => list(any()),
        optional("SortOrder") => list(any()),
        optional("StatusEquals") => list(any())
      }
      
  """
  @type list_inference_recommendations_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      endpoint_info() :: %{
        "EndpointName" => String.t()
      }
      
  """
  @type endpoint_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      enable_sagemaker_servicecatalog_portfolio_input() :: %{}
      
  """
  @type enable_sagemaker_servicecatalog_portfolio_input() :: %{}

  @typedoc """

  ## Example:
      
      inference_experiment_summary() :: %{
        "CompletionTime" => non_neg_integer(),
        "CreationTime" => non_neg_integer(),
        "Description" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t(),
        "RoleArn" => String.t(),
        "Schedule" => inference_experiment_schedule(),
        "Status" => list(any()),
        "StatusReason" => String.t(),
        "Type" => list(any())
      }
      
  """
  @type inference_experiment_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_models_input() :: %{
        optional("CreationTimeAfter") => non_neg_integer(),
        optional("CreationTimeBefore") => non_neg_integer(),
        optional("MaxResults") => integer(),
        optional("NameContains") => String.t(),
        optional("NextToken") => String.t(),
        optional("SortBy") => list(any()),
        optional("SortOrder") => list(any())
      }
      
  """
  @type list_models_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      transform_job_definition() :: %{
        "BatchStrategy" => list(any()),
        "Environment" => map(),
        "MaxConcurrentTransforms" => integer(),
        "MaxPayloadInMB" => integer(),
        "TransformInput" => transform_input(),
        "TransformOutput" => transform_output(),
        "TransformResources" => transform_resources()
      }
      
  """
  @type transform_job_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      model_card_export_job_summary() :: %{
        "CreatedAt" => non_neg_integer(),
        "LastModifiedAt" => non_neg_integer(),
        "ModelCardExportJobArn" => String.t(),
        "ModelCardExportJobName" => String.t(),
        "ModelCardName" => String.t(),
        "ModelCardVersion" => integer(),
        "Status" => list(any())
      }
      
  """
  @type model_card_export_job_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      model_package_validation_profile() :: %{
        "ProfileName" => String.t(),
        "TransformJobDefinition" => transform_job_definition()
      }
      
  """
  @type model_package_validation_profile() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      output_config() :: %{
        "CompilerOptions" => String.t(),
        "KmsKeyId" => String.t(),
        "S3OutputLocation" => String.t(),
        "TargetDevice" => list(any()),
        "TargetPlatform" => target_platform()
      }
      
  """
  @type output_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_trial_request() :: %{
        required("TrialName") => String.t()
      }
      
  """
  @type delete_trial_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      hyper_parameter_tuning_job_objective() :: %{
        "MetricName" => String.t(),
        "Type" => list(any())
      }
      
  """
  @type hyper_parameter_tuning_job_objective() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_flow_definition_request() :: %{
        required("FlowDefinitionName") => String.t()
      }
      
  """
  @type describe_flow_definition_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      hyper_parameter_algorithm_specification() :: %{
        "AlgorithmName" => String.t(),
        "MetricDefinitions" => list(metric_definition()()),
        "TrainingImage" => String.t(),
        "TrainingInputMode" => list(any())
      }
      
  """
  @type hyper_parameter_algorithm_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_model_data_source() :: %{
        "CompressionType" => list(any()),
        "HubAccessConfig" => inference_hub_access_config(),
        "ModelAccessConfig" => model_access_config(),
        "S3DataType" => list(any()),
        "S3Uri" => String.t()
      }
      
  """
  @type s3_model_data_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      traffic_routing_config() :: %{
        "CanarySize" => capacity_size(),
        "LinearStepSize" => capacity_size(),
        "Type" => list(any()),
        "WaitIntervalInSeconds" => integer()
      }
      
  """
  @type traffic_routing_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_inference_experiment_request() :: %{
        optional("DataStorageConfig") => inference_experiment_data_storage_config(),
        optional("Description") => String.t(),
        optional("KmsKey") => String.t(),
        optional("Schedule") => inference_experiment_schedule(),
        optional("Tags") => list(tag()()),
        required("EndpointName") => String.t(),
        required("ModelVariants") => list(model_variant_config()()),
        required("Name") => String.t(),
        required("RoleArn") => String.t(),
        required("ShadowModeConfig") => shadow_mode_config(),
        required("Type") => list(any())
      }
      
  """
  @type create_inference_experiment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      recommendation_job_stopping_conditions() :: %{
        "FlatInvocations" => list(any()),
        "MaxInvocations" => integer(),
        "ModelLatencyThresholds" => list(model_latency_threshold()())
      }
      
  """
  @type recommendation_job_stopping_conditions() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      vector_config() :: %{
        "Dimension" => integer()
      }
      
  """
  @type vector_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disable_sagemaker_servicecatalog_portfolio_input() :: %{}
      
  """
  @type disable_sagemaker_servicecatalog_portfolio_input() :: %{}

  @typedoc """

  ## Example:
      
      get_device_fleet_report_request() :: %{
        required("DeviceFleetName") => String.t()
      }
      
  """
  @type get_device_fleet_report_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_endpoint_input() :: %{
        required("EndpointName") => String.t()
      }
      
  """
  @type delete_endpoint_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      transform_resources() :: %{
        "InstanceCount" => integer(),
        "InstanceType" => list(any()),
        "VolumeKmsKeyId" => String.t()
      }
      
  """
  @type transform_resources() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_model_explainability_job_definition_response() :: %{
        "CreationTime" => non_neg_integer(),
        "JobDefinitionArn" => String.t(),
        "JobDefinitionName" => String.t(),
        "JobResources" => monitoring_resources(),
        "ModelExplainabilityAppSpecification" => model_explainability_app_specification(),
        "ModelExplainabilityBaselineConfig" => model_explainability_baseline_config(),
        "ModelExplainabilityJobInput" => model_explainability_job_input(),
        "ModelExplainabilityJobOutputConfig" => monitoring_output_config(),
        "NetworkConfig" => monitoring_network_config(),
        "RoleArn" => String.t(),
        "StoppingCondition" => monitoring_stopping_condition()
      }
      
  """
  @type describe_model_explainability_job_definition_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_data_quality_job_definition_response() :: %{
        "CreationTime" => non_neg_integer(),
        "DataQualityAppSpecification" => data_quality_app_specification(),
        "DataQualityBaselineConfig" => data_quality_baseline_config(),
        "DataQualityJobInput" => data_quality_job_input(),
        "DataQualityJobOutputConfig" => monitoring_output_config(),
        "JobDefinitionArn" => String.t(),
        "JobDefinitionName" => String.t(),
        "JobResources" => monitoring_resources(),
        "NetworkConfig" => monitoring_network_config(),
        "RoleArn" => String.t(),
        "StoppingCondition" => monitoring_stopping_condition()
      }
      
  """
  @type describe_data_quality_job_definition_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      edge_model() :: %{
        "LatestInference" => non_neg_integer(),
        "LatestSampleTime" => non_neg_integer(),
        "ModelName" => String.t(),
        "ModelVersion" => String.t()
      }
      
  """
  @type edge_model() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_training_job_request() :: %{
        required("TrainingJobName") => String.t()
      }
      
  """
  @type stop_training_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_workforce_request() :: %{
        optional("OidcConfig") => oidc_config(),
        optional("SourceIpConfig") => source_ip_config(),
        optional("WorkforceVpcConfig") => workforce_vpc_config_request(),
        required("WorkforceName") => String.t()
      }
      
  """
  @type update_workforce_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_inference_components_output() :: %{
        "InferenceComponents" => list(inference_component_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_inference_components_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      labeling_job_input_config() :: %{
        "DataAttributes" => labeling_job_data_attributes(),
        "DataSource" => labeling_job_data_source()
      }
      
  """
  @type labeling_job_input_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_artifact_response() :: %{
        "ArtifactArn" => String.t()
      }
      
  """
  @type update_artifact_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      iam_policy_constraints() :: %{
        "SourceIp" => list(any()),
        "VpcSourceIp" => list(any())
      }
      
  """
  @type iam_policy_constraints() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_association_response() :: %{
        "DestinationArn" => String.t(),
        "SourceArn" => String.t()
      }
      
  """
  @type delete_association_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_trial_component_response() :: %{
        "TrialComponentArn" => String.t()
      }
      
  """
  @type delete_trial_component_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_algorithm_output() :: %{
        "AlgorithmArn" => String.t()
      }
      
  """
  @type create_algorithm_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      training_job() :: %{
        "CreationTime" => non_neg_integer(),
        "TrainingJobArn" => String.t(),
        "OutputDataConfig" => output_data_config(),
        "EnableManagedSpotTraining" => boolean(),
        "TrainingStartTime" => non_neg_integer(),
        "VpcConfig" => vpc_config(),
        "LastModifiedTime" => non_neg_integer(),
        "CheckpointConfig" => checkpoint_config(),
        "Tags" => list(tag()()),
        "TrainingEndTime" => non_neg_integer(),
        "BillableTimeInSeconds" => integer(),
        "LabelingJobArn" => String.t(),
        "TensorBoardOutputConfig" => tensor_board_output_config(),
        "TrainingTimeInSeconds" => integer(),
        "EnableInterContainerTrafficEncryption" => boolean(),
        "ResourceConfig" => resource_config(),
        "HyperParameters" => map(),
        "SecondaryStatus" => list(any()),
        "TrainingJobStatus" => list(any()),
        "ProfilerConfig" => profiler_config(),
        "TrainingJobName" => String.t(),
        "DebugRuleEvaluationStatuses" => list(debug_rule_evaluation_status()()),
        "AutoMLJobArn" => String.t(),
        "DebugRuleConfigurations" => list(debug_rule_configuration()()),
        "RetryStrategy" => retry_strategy(),
        "Environment" => map(),
        "AlgorithmSpecification" => algorithm_specification(),
        "SecondaryStatusTransitions" => list(secondary_status_transition()()),
        "TuningJobArn" => String.t(),
        "InputDataConfig" => list(channel()()),
        "ModelArtifacts" => model_artifacts(),
        "FinalMetricDataList" => list(metric_data()()),
        "RoleArn" => String.t(),
        "FailureReason" => String.t(),
        "StoppingCondition" => stopping_condition(),
        "ExperimentConfig" => experiment_config(),
        "EnableNetworkIsolation" => boolean(),
        "DebugHookConfig" => debug_hook_config()
      }
      
  """
  @type training_job() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_workteam_request() :: %{
        optional("NotificationConfiguration") => notification_configuration(),
        optional("Tags") => list(tag()()),
        optional("WorkerAccessConfiguration") => worker_access_configuration(),
        optional("WorkforceName") => String.t(),
        required("Description") => String.t(),
        required("MemberDefinitions") => list(member_definition()()),
        required("WorkteamName") => String.t()
      }
      
  """
  @type create_workteam_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_lineage_groups_request() :: %{
        optional("CreatedAfter") => non_neg_integer(),
        optional("CreatedBefore") => non_neg_integer(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SortBy") => list(any()),
        optional("SortOrder") => list(any())
      }
      
  """
  @type list_lineage_groups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_mlflow_tracking_server_request() :: %{
        optional("AutomaticModelRegistration") => boolean(),
        optional("MlflowVersion") => String.t(),
        optional("Tags") => list(tag()()),
        optional("TrackingServerSize") => list(any()),
        optional("WeeklyMaintenanceWindowStart") => String.t(),
        required("ArtifactStoreUri") => String.t(),
        required("RoleArn") => String.t(),
        required("TrackingServerName") => String.t()
      }
      
  """
  @type create_mlflow_tracking_server_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_pipeline_execution_request() :: %{
        optional("ParallelismConfiguration") => parallelism_configuration(),
        optional("PipelineExecutionDescription") => String.t(),
        optional("PipelineExecutionDisplayName") => String.t(),
        optional("PipelineParameters") => list(parameter()()),
        optional("SelectiveExecutionConfig") => selective_execution_config(),
        required("ClientRequestToken") => String.t(),
        required("PipelineName") => String.t()
      }
      
  """
  @type start_pipeline_execution_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_spaces_response() :: %{
        "NextToken" => String.t(),
        "Spaces" => list(space_details()())
      }
      
  """
  @type list_spaces_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_pipeline_execution_response() :: %{
        "CreatedBy" => user_context(),
        "CreationTime" => non_neg_integer(),
        "FailureReason" => String.t(),
        "LastModifiedBy" => user_context(),
        "LastModifiedTime" => non_neg_integer(),
        "ParallelismConfiguration" => parallelism_configuration(),
        "PipelineArn" => String.t(),
        "PipelineExecutionArn" => String.t(),
        "PipelineExecutionDescription" => String.t(),
        "PipelineExecutionDisplayName" => String.t(),
        "PipelineExecutionStatus" => list(any()),
        "PipelineExperimentConfig" => pipeline_experiment_config(),
        "SelectiveExecutionConfig" => selective_execution_config()
      }
      
  """
  @type describe_pipeline_execution_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_hyper_parameter_tuning_job_request() :: %{
        optional("Autotune") => autotune(),
        optional("Tags") => list(tag()()),
        optional("TrainingJobDefinition") => hyper_parameter_training_job_definition(),
        optional("TrainingJobDefinitions") => list(hyper_parameter_training_job_definition()()),
        optional("WarmStartConfig") => hyper_parameter_tuning_job_warm_start_config(),
        required("HyperParameterTuningJobConfig") => hyper_parameter_tuning_job_config(),
        required("HyperParameterTuningJobName") => String.t()
      }
      
  """
  @type create_hyper_parameter_tuning_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_user_profile_response() :: %{
        "UserProfileArn" => String.t()
      }
      
  """
  @type create_user_profile_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_auto_ml_job_v2_request() :: %{
        required("AutoMLJobName") => String.t()
      }
      
  """
  @type describe_auto_ml_job_v2_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      target_platform() :: %{
        "Accelerator" => list(any()),
        "Arch" => list(any()),
        "Os" => list(any())
      }
      
  """
  @type target_platform() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      auto_ml_channel() :: %{
        "ChannelType" => list(any()),
        "CompressionType" => list(any()),
        "ContentType" => String.t(),
        "DataSource" => auto_ml_data_source(),
        "SampleWeightAttributeName" => String.t(),
        "TargetAttributeName" => String.t()
      }
      
  """
  @type auto_ml_channel() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_lineage_groups_response() :: %{
        "LineageGroupSummaries" => list(lineage_group_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_lineage_groups_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_mlflow_tracking_server_response() :: %{
        "TrackingServerArn" => String.t()
      }
      
  """
  @type update_mlflow_tracking_server_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_artifacts_request() :: %{
        optional("ArtifactType") => String.t(),
        optional("CreatedAfter") => non_neg_integer(),
        optional("CreatedBefore") => non_neg_integer(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SortBy") => list(any()),
        optional("SortOrder") => list(any()),
        optional("SourceUri") => String.t()
      }
      
  """
  @type list_artifacts_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      inference_component_compute_resource_requirements() :: %{
        "MaxMemoryRequiredInMb" => integer(),
        "MinMemoryRequiredInMb" => integer(),
        "NumberOfAcceleratorDevicesRequired" => float(),
        "NumberOfCpuCoresRequired" => float()
      }
      
  """
  @type inference_component_compute_resource_requirements() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_edge_deployment_plan_request() :: %{
        optional("Stages") => list(deployment_stage()()),
        optional("Tags") => list(tag()()),
        required("DeviceFleetName") => String.t(),
        required("EdgeDeploymentPlanName") => String.t(),
        required("ModelConfigs") => list(edge_deployment_model_config()())
      }
      
  """
  @type create_edge_deployment_plan_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      artifact_source_type() :: %{
        "SourceIdType" => list(any()),
        "Value" => String.t()
      }
      
  """
  @type artifact_source_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      model_card_export_output_config() :: %{
        "S3OutputPath" => String.t()
      }
      
  """
  @type model_card_export_output_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_model_bias_job_definition_response() :: %{
        "CreationTime" => non_neg_integer(),
        "JobDefinitionArn" => String.t(),
        "JobDefinitionName" => String.t(),
        "JobResources" => monitoring_resources(),
        "ModelBiasAppSpecification" => model_bias_app_specification(),
        "ModelBiasBaselineConfig" => model_bias_baseline_config(),
        "ModelBiasJobInput" => model_bias_job_input(),
        "ModelBiasJobOutputConfig" => monitoring_output_config(),
        "NetworkConfig" => monitoring_network_config(),
        "RoleArn" => String.t(),
        "StoppingCondition" => monitoring_stopping_condition()
      }
      
  """
  @type describe_model_bias_job_definition_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      r_session_app_settings() :: %{
        "CustomImages" => list(custom_image()()),
        "DefaultResourceSpec" => resource_spec()
      }
      
  """
  @type r_session_app_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_feature_groups_request() :: %{
        optional("CreationTimeAfter") => non_neg_integer(),
        optional("CreationTimeBefore") => non_neg_integer(),
        optional("FeatureGroupStatusEquals") => list(any()),
        optional("MaxResults") => integer(),
        optional("NameContains") => String.t(),
        optional("NextToken") => String.t(),
        optional("OfflineStoreStatusEquals") => list(any()),
        optional("SortBy") => list(any()),
        optional("SortOrder") => list(any())
      }
      
  """
  @type list_feature_groups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      continuous_parameter_range() :: %{
        "MaxValue" => String.t(),
        "MinValue" => String.t(),
        "Name" => String.t(),
        "ScalingType" => list(any())
      }
      
  """
  @type continuous_parameter_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_code_repository_output() :: %{
        "CodeRepositoryArn" => String.t(),
        "CodeRepositoryName" => String.t(),
        "CreationTime" => non_neg_integer(),
        "GitConfig" => git_config(),
        "LastModifiedTime" => non_neg_integer()
      }
      
  """
  @type describe_code_repository_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_endpoint_config_output() :: %{
        "EndpointConfigArn" => String.t()
      }
      
  """
  @type create_endpoint_config_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      model_bias_app_specification() :: %{
        "ConfigUri" => String.t(),
        "Environment" => map(),
        "ImageUri" => String.t()
      }
      
  """
  @type model_bias_app_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      secondary_status_transition() :: %{
        "EndTime" => non_neg_integer(),
        "StartTime" => non_neg_integer(),
        "Status" => list(any()),
        "StatusMessage" => String.t()
      }
      
  """
  @type secondary_status_transition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      edge_deployment_model_config() :: %{
        "EdgePackagingJobName" => String.t(),
        "ModelHandle" => String.t()
      }
      
  """
  @type edge_deployment_model_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_experiments_request() :: %{
        optional("CreatedAfter") => non_neg_integer(),
        optional("CreatedBefore") => non_neg_integer(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SortBy") => list(any()),
        optional("SortOrder") => list(any())
      }
      
  """
  @type list_experiments_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      clarify_text_config() :: %{
        "Granularity" => list(any()),
        "Language" => list(any())
      }
      
  """
  @type clarify_text_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      retry_pipeline_execution_response() :: %{
        "PipelineExecutionArn" => String.t()
      }
      
  """
  @type retry_pipeline_execution_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      shadow_mode_config() :: %{
        "ShadowModelVariants" => list(shadow_model_variant_config()()),
        "SourceModelVariantName" => String.t()
      }
      
  """
  @type shadow_mode_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_lineage_group_policy_request() :: %{
        required("LineageGroupName") => String.t()
      }
      
  """
  @type get_lineage_group_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_auto_ml_job_v2_response() :: %{
        "AutoMLJobArn" => String.t()
      }
      
  """
  @type create_auto_ml_job_v2_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_mlflow_tracking_server_response() :: %{
        "TrackingServerArn" => String.t()
      }
      
  """
  @type create_mlflow_tracking_server_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_workforce_request() :: %{
        optional("CognitoConfig") => cognito_config(),
        optional("OidcConfig") => oidc_config(),
        optional("SourceIpConfig") => source_ip_config(),
        optional("Tags") => list(tag()()),
        optional("WorkforceVpcConfig") => workforce_vpc_config_request(),
        required("WorkforceName") => String.t()
      }
      
  """
  @type create_workforce_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("ResourceArn") => String.t()
      }
      
  """
  @type list_tags_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_labeling_jobs_request() :: %{
        optional("CreationTimeAfter") => non_neg_integer(),
        optional("CreationTimeBefore") => non_neg_integer(),
        optional("LastModifiedTimeAfter") => non_neg_integer(),
        optional("LastModifiedTimeBefore") => non_neg_integer(),
        optional("MaxResults") => integer(),
        optional("NameContains") => String.t(),
        optional("NextToken") => String.t(),
        optional("SortBy") => list(any()),
        optional("SortOrder") => list(any()),
        optional("StatusEquals") => list(any())
      }
      
  """
  @type list_labeling_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      context_summary() :: %{
        "ContextArn" => String.t(),
        "ContextName" => String.t(),
        "ContextType" => String.t(),
        "CreationTime" => non_neg_integer(),
        "LastModifiedTime" => non_neg_integer(),
        "Source" => context_source()
      }
      
  """
  @type context_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      auto_ml_job_artifacts() :: %{
        "CandidateDefinitionNotebookLocation" => String.t(),
        "DataExplorationNotebookLocation" => String.t()
      }
      
  """
  @type auto_ml_job_artifacts() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_model_package_group_policy_input() :: %{
        required("ModelPackageGroupName") => String.t(),
        required("ResourcePolicy") => String.t()
      }
      
  """
  @type put_model_package_group_policy_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_domain_response() :: %{
        "DomainArn" => String.t(),
        "Url" => String.t()
      }
      
  """
  @type create_domain_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_training_jobs_for_hyper_parameter_tuning_job_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SortBy") => list(any()),
        optional("SortOrder") => list(any()),
        optional("StatusEquals") => list(any()),
        required("HyperParameterTuningJobName") => String.t()
      }
      
  """
  @type list_training_jobs_for_hyper_parameter_tuning_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_code_repository_input() :: %{
        optional("Tags") => list(tag()()),
        required("CodeRepositoryName") => String.t(),
        required("GitConfig") => git_config()
      }
      
  """
  @type create_code_repository_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deployment_recommendation() :: %{
        "RealTimeInferenceRecommendations" => list(real_time_inference_recommendation()()),
        "RecommendationStatus" => list(any())
      }
      
  """
  @type deployment_recommendation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_inference_component_runtime_config_input() :: %{
        required("DesiredRuntimeConfig") => inference_component_runtime_config(),
        required("InferenceComponentName") => String.t()
      }
      
  """
  @type update_inference_component_runtime_config_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_endpoint_weights_and_capacities_input() :: %{
        required("DesiredWeightsAndCapacities") => list(desired_weight_and_capacity()()),
        required("EndpointName") => String.t()
      }
      
  """
  @type update_endpoint_weights_and_capacities_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      channel() :: %{
        "ChannelName" => String.t(),
        "CompressionType" => list(any()),
        "ContentType" => String.t(),
        "DataSource" => data_source(),
        "InputMode" => list(any()),
        "RecordWrapperType" => list(any()),
        "ShuffleConfig" => shuffle_config()
      }
      
  """
  @type channel() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      send_pipeline_execution_step_success_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("OutputParameters") => list(output_parameter()()),
        required("CallbackToken") => String.t()
      }
      
  """
  @type send_pipeline_execution_step_success_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_image_response() :: %{}
      
  """
  @type delete_image_response() :: %{}

  @typedoc """

  ## Example:
      
      update_notebook_instance_lifecycle_config_input() :: %{
        optional("OnCreate") => list(notebook_instance_lifecycle_hook()()),
        optional("OnStart") => list(notebook_instance_lifecycle_hook()()),
        required("NotebookInstanceLifecycleConfigName") => String.t()
      }
      
  """
  @type update_notebook_instance_lifecycle_config_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_notebook_instance_input() :: %{
        required("NotebookInstanceName") => String.t()
      }
      
  """
  @type start_notebook_instance_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_workforce_response() :: %{
        "Workforce" => workforce()
      }
      
  """
  @type update_workforce_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_code_repository_input() :: %{
        required("CodeRepositoryName") => String.t()
      }
      
  """
  @type describe_code_repository_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_model_package_group_policy_output() :: %{
        "ModelPackageGroupArn" => String.t()
      }
      
  """
  @type put_model_package_group_policy_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cognito_member_definition() :: %{
        "ClientId" => String.t(),
        "UserGroup" => String.t(),
        "UserPool" => String.t()
      }
      
  """
  @type cognito_member_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster_life_cycle_config() :: %{
        "OnCreate" => String.t(),
        "SourceS3Uri" => String.t()
      }
      
  """
  @type cluster_life_cycle_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      labeling_job_s3_data_source() :: %{
        "ManifestS3Uri" => String.t()
      }
      
  """
  @type labeling_job_s3_data_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      candidate_artifact_locations() :: %{
        "BacktestResults" => String.t(),
        "Explainability" => String.t(),
        "ModelInsights" => String.t()
      }
      
  """
  @type candidate_artifact_locations() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_model_package_group_policy_output() :: %{
        "ResourcePolicy" => String.t()
      }
      
  """
  @type get_model_package_group_policy_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_mlflow_tracking_server_request() :: %{
        required("TrackingServerName") => String.t()
      }
      
  """
  @type describe_mlflow_tracking_server_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_flow_definition_response() :: %{}
      
  """
  @type delete_flow_definition_response() :: %{}

  @typedoc """

  ## Example:
      
      subscribed_workteam() :: %{
        "ListingId" => String.t(),
        "MarketplaceDescription" => String.t(),
        "MarketplaceTitle" => String.t(),
        "SellerName" => String.t(),
        "WorkteamArn" => String.t()
      }
      
  """
  @type subscribed_workteam() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_hub_request() :: %{
        optional("HubDisplayName") => String.t(),
        optional("HubSearchKeywords") => list(String.t()()),
        optional("S3StorageConfig") => hub_s3_storage_config(),
        optional("Tags") => list(tag()()),
        required("HubDescription") => String.t(),
        required("HubName") => String.t()
      }
      
  """
  @type create_hub_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      auto_ml_job_config() :: %{
        "CandidateGenerationConfig" => auto_ml_candidate_generation_config(),
        "CompletionCriteria" => auto_ml_job_completion_criteria(),
        "DataSplitConfig" => auto_ml_data_split_config(),
        "Mode" => list(any()),
        "SecurityConfig" => auto_ml_security_config()
      }
      
  """
  @type auto_ml_job_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      e_f_s_file_system() :: %{
        "FileSystemId" => String.t()
      }
      
  """
  @type e_f_s_file_system() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_model_card_export_job_response() :: %{
        "CreatedAt" => non_neg_integer(),
        "ExportArtifacts" => model_card_export_artifacts(),
        "FailureReason" => String.t(),
        "LastModifiedAt" => non_neg_integer(),
        "ModelCardExportJobArn" => String.t(),
        "ModelCardExportJobName" => String.t(),
        "ModelCardName" => String.t(),
        "ModelCardVersion" => integer(),
        "OutputConfig" => model_card_export_output_config(),
        "Status" => list(any())
      }
      
  """
  @type describe_model_card_export_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      inference_metrics() :: %{
        "MaxInvocations" => integer(),
        "ModelLatency" => integer()
      }
      
  """
  @type inference_metrics() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_mlflow_tracking_server_response() :: %{
        "TrackingServerArn" => String.t()
      }
      
  """
  @type stop_mlflow_tracking_server_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_pipeline_parameters_for_execution_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("PipelineExecutionArn") => String.t()
      }
      
  """
  @type list_pipeline_parameters_for_execution_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      callback_step_metadata() :: %{
        "CallbackToken" => String.t(),
        "OutputParameters" => list(output_parameter()()),
        "SqsQueueUrl" => String.t()
      }
      
  """
  @type callback_step_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      inference_component_container_specification() :: %{
        "ArtifactUrl" => String.t(),
        "Environment" => map(),
        "Image" => String.t()
      }
      
  """
  @type inference_component_container_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_spec() :: %{
        "InstanceType" => list(any()),
        "LifecycleConfigArn" => String.t(),
        "SageMakerImageArn" => String.t(),
        "SageMakerImageVersionAlias" => String.t(),
        "SageMakerImageVersionArn" => String.t()
      }
      
  """
  @type resource_spec() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_project_input() :: %{
        required("ProjectName") => String.t()
      }
      
  """
  @type delete_project_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_transform_job_response() :: %{
        "TransformJobArn" => String.t()
      }
      
  """
  @type create_transform_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_processing_job_response() :: %{
        "ProcessingJobArn" => String.t()
      }
      
  """
  @type create_processing_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      transform_job_step_metadata() :: %{
        "Arn" => String.t()
      }
      
  """
  @type transform_job_step_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      model_deploy_result() :: %{
        "EndpointName" => String.t()
      }
      
  """
  @type model_deploy_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_inference_component_input() :: %{
        optional("RuntimeConfig") => inference_component_runtime_config(),
        optional("Specification") => inference_component_specification(),
        required("InferenceComponentName") => String.t()
      }
      
  """
  @type update_inference_component_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      debug_hook_config() :: %{
        "CollectionConfigurations" => list(collection_configuration()()),
        "HookParameters" => map(),
        "LocalPath" => String.t(),
        "S3OutputPath" => String.t()
      }
      
  """
  @type debug_hook_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      endpoint_performance() :: %{
        "EndpointInfo" => endpoint_info(),
        "Metrics" => inference_metrics()
      }
      
  """
  @type endpoint_performance() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      query_filters() :: %{
        "CreatedAfter" => non_neg_integer(),
        "CreatedBefore" => non_neg_integer(),
        "LineageTypes" => list(list(any())()),
        "ModifiedAfter" => non_neg_integer(),
        "ModifiedBefore" => non_neg_integer(),
        "Properties" => map(),
        "Types" => list(String.t()())
      }
      
  """
  @type query_filters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_context_response() :: %{
        "ContextArn" => String.t()
      }
      
  """
  @type delete_context_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      retry_strategy() :: %{
        "MaximumRetryAttempts" => integer()
      }
      
  """
  @type retry_strategy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      production_variant_status() :: %{
        "StartTime" => non_neg_integer(),
        "Status" => list(any()),
        "StatusMessage" => String.t()
      }
      
  """
  @type production_variant_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      oidc_config_for_response() :: %{
        "AuthenticationRequestExtraParams" => map(),
        "AuthorizationEndpoint" => String.t(),
        "ClientId" => String.t(),
        "Issuer" => String.t(),
        "JwksUri" => String.t(),
        "LogoutEndpoint" => String.t(),
        "Scope" => String.t(),
        "TokenEndpoint" => String.t(),
        "UserInfoEndpoint" => String.t()
      }
      
  """
  @type oidc_config_for_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      monitoring_output_config() :: %{
        "KmsKeyId" => String.t(),
        "MonitoringOutputs" => list(monitoring_output()())
      }
      
  """
  @type monitoring_output_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_monitoring_alert_history_request() :: %{
        optional("CreationTimeAfter") => non_neg_integer(),
        optional("CreationTimeBefore") => non_neg_integer(),
        optional("MaxResults") => integer(),
        optional("MonitoringAlertName") => String.t(),
        optional("MonitoringScheduleName") => String.t(),
        optional("NextToken") => String.t(),
        optional("SortBy") => list(any()),
        optional("SortOrder") => list(any()),
        optional("StatusEquals") => list(any())
      }
      
  """
  @type list_monitoring_alert_history_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      feature_group() :: %{
        "CreationTime" => non_neg_integer(),
        "Description" => String.t(),
        "EventTimeFeatureName" => String.t(),
        "FailureReason" => String.t(),
        "FeatureDefinitions" => list(feature_definition()()),
        "FeatureGroupArn" => String.t(),
        "FeatureGroupName" => String.t(),
        "FeatureGroupStatus" => list(any()),
        "LastModifiedTime" => non_neg_integer(),
        "LastUpdateStatus" => last_update_status(),
        "OfflineStoreConfig" => offline_store_config(),
        "OfflineStoreStatus" => offline_store_status(),
        "OnlineStoreConfig" => online_store_config(),
        "RecordIdentifierFeatureName" => String.t(),
        "RoleArn" => String.t(),
        "Tags" => list(tag()())
      }
      
  """
  @type feature_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      model_client_config() :: %{
        "InvocationsMaxRetries" => integer(),
        "InvocationsTimeoutInSeconds" => integer()
      }
      
  """
  @type model_client_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      output_data_config() :: %{
        "CompressionType" => list(any()),
        "KmsKeyId" => String.t(),
        "S3OutputPath" => String.t()
      }
      
  """
  @type output_data_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_model_output() :: %{
        "Containers" => list(container_definition()()),
        "CreationTime" => non_neg_integer(),
        "DeploymentRecommendation" => deployment_recommendation(),
        "EnableNetworkIsolation" => boolean(),
        "ExecutionRoleArn" => String.t(),
        "InferenceExecutionConfig" => inference_execution_config(),
        "ModelArn" => String.t(),
        "ModelName" => String.t(),
        "PrimaryContainer" => container_definition(),
        "VpcConfig" => vpc_config()
      }
      
  """
  @type describe_model_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster_instance_group_specification() :: %{
        "ExecutionRole" => String.t(),
        "InstanceCount" => integer(),
        "InstanceGroupName" => String.t(),
        "InstanceStorageConfigs" => list(list()()),
        "InstanceType" => list(any()),
        "LifeCycleConfig" => cluster_life_cycle_config(),
        "ThreadsPerCore" => integer()
      }
      
  """
  @type cluster_instance_group_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      edge_model_summary() :: %{
        "ModelName" => String.t(),
        "ModelVersion" => String.t()
      }
      
  """
  @type edge_model_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_hub_content_reference_request() :: %{
        optional("HubContentName") => String.t(),
        optional("MinVersion") => String.t(),
        optional("Tags") => list(tag()()),
        required("HubName") => String.t(),
        required("SageMakerPublicHubContentArn") => String.t()
      }
      
  """
  @type create_hub_content_reference_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_apps_request() :: %{
        optional("DomainIdEquals") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SortBy") => list(any()),
        optional("SortOrder") => list(any()),
        optional("SpaceNameEquals") => String.t(),
        optional("UserProfileNameEquals") => String.t()
      }
      
  """
  @type list_apps_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_optimization_job_request() :: %{
        required("OptimizationJobName") => String.t()
      }
      
  """
  @type stop_optimization_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deployment_stage_status_summary() :: %{
        "DeploymentConfig" => edge_deployment_config(),
        "DeploymentStatus" => edge_deployment_status(),
        "DeviceSelectionConfig" => device_selection_config(),
        "StageName" => String.t()
      }
      
  """
  @type deployment_stage_status_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      git_config() :: %{
        "Branch" => String.t(),
        "RepositoryUrl" => String.t(),
        "SecretArn" => String.t()
      }
      
  """
  @type git_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      nested_filters() :: %{
        "Filters" => list(filter()()),
        "NestedPropertyName" => String.t()
      }
      
  """
  @type nested_filters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_response() :: %{
        "NextToken" => String.t(),
        "Results" => list(search_record()())
      }
      
  """
  @type search_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      edge_deployment_config() :: %{
        "FailureHandlingPolicy" => list(any())
      }
      
  """
  @type edge_deployment_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      device_selection_config() :: %{
        "DeviceNameContains" => String.t(),
        "DeviceNames" => list(String.t()()),
        "DeviceSubsetType" => list(any()),
        "Percentage" => integer()
      }
      
  """
  @type device_selection_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_context_request() :: %{
        optional("Description") => String.t(),
        optional("Properties") => map(),
        optional("Tags") => list(tag()()),
        required("ContextName") => String.t(),
        required("ContextType") => String.t(),
        required("Source") => context_source()
      }
      
  """
  @type create_context_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      worker_access_configuration() :: %{
        "S3Presign" => s3_presign()
      }
      
  """
  @type worker_access_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_algorithm_input() :: %{
        optional("AlgorithmDescription") => String.t(),
        optional("CertifyForMarketplace") => boolean(),
        optional("InferenceSpecification") => inference_specification(),
        optional("Tags") => list(tag()()),
        optional("ValidationSpecification") => algorithm_validation_specification(),
        required("AlgorithmName") => String.t(),
        required("TrainingSpecification") => training_specification()
      }
      
  """
  @type create_algorithm_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stairs() :: %{
        "DurationInSeconds" => integer(),
        "NumberOfSteps" => integer(),
        "UsersPerStep" => integer()
      }
      
  """
  @type stairs() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_describe_model_package_error() :: %{
        "ErrorCode" => String.t(),
        "ErrorResponse" => String.t()
      }
      
  """
  @type batch_describe_model_package_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_data_quality_job_definitions_request() :: %{
        optional("CreationTimeAfter") => non_neg_integer(),
        optional("CreationTimeBefore") => non_neg_integer(),
        optional("EndpointName") => String.t(),
        optional("MaxResults") => integer(),
        optional("NameContains") => String.t(),
        optional("NextToken") => String.t(),
        optional("SortBy") => list(any()),
        optional("SortOrder") => list(any())
      }
      
  """
  @type list_data_quality_job_definitions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_model_card_response() :: %{
        "ModelCardArn" => String.t()
      }
      
  """
  @type create_model_card_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_auto_ml_job_request() :: %{
        optional("AutoMLJobConfig") => auto_ml_job_config(),
        optional("AutoMLJobObjective") => auto_ml_job_objective(),
        optional("GenerateCandidateDefinitionsOnly") => boolean(),
        optional("ModelDeployConfig") => model_deploy_config(),
        optional("ProblemType") => list(any()),
        optional("Tags") => list(tag()()),
        required("AutoMLJobName") => String.t(),
        required("InputDataConfig") => list(auto_ml_channel()()),
        required("OutputDataConfig") => auto_ml_output_data_config(),
        required("RoleArn") => String.t()
      }
      
  """
  @type create_auto_ml_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      notebook_instance_lifecycle_config_summary() :: %{
        "CreationTime" => non_neg_integer(),
        "LastModifiedTime" => non_neg_integer(),
        "NotebookInstanceLifecycleConfigArn" => String.t(),
        "NotebookInstanceLifecycleConfigName" => String.t()
      }
      
  """
  @type notebook_instance_lifecycle_config_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_model_card_export_jobs_response() :: %{
        "ModelCardExportJobSummaries" => list(model_card_export_job_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_model_card_export_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_monitoring_alerts_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("MonitoringScheduleName") => String.t()
      }
      
  """
  @type list_monitoring_alerts_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tabular_resolved_attributes() :: %{
        "ProblemType" => list(any())
      }
      
  """
  @type tabular_resolved_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      space_sharing_settings() :: %{
        "SharingType" => list(any())
      }
      
  """
  @type space_sharing_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ownership_settings_summary() :: %{
        "OwnerUserProfileName" => String.t()
      }
      
  """
  @type ownership_settings_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      default_ebs_storage_settings() :: %{
        "DefaultEbsVolumeSizeInGb" => integer(),
        "MaximumEbsVolumeSizeInGb" => integer()
      }
      
  """
  @type default_ebs_storage_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      emr_settings() :: %{
        "AssumableRoleArns" => list(String.t()()),
        "ExecutionRoleArns" => list(String.t()())
      }
      
  """
  @type emr_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_cluster_nodes_response() :: %{
        "ClusterNodeSummaries" => list(cluster_node_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_cluster_nodes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_inference_experiment_request() :: %{
        required("Name") => String.t()
      }
      
  """
  @type start_inference_experiment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_model_quality_job_definition_request() :: %{
        required("JobDefinitionName") => String.t()
      }
      
  """
  @type delete_model_quality_job_definition_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_labeling_job_request() :: %{
        required("LabelingJobName") => String.t()
      }
      
  """
  @type stop_labeling_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_model_package_groups_output() :: %{
        "ModelPackageGroupSummaryList" => list(model_package_group_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_model_package_groups_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      model_bias_baseline_config() :: %{
        "BaseliningJobName" => String.t(),
        "ConstraintsResource" => monitoring_constraints_resource()
      }
      
  """
  @type model_bias_baseline_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      user_context() :: %{
        "DomainId" => String.t(),
        "IamIdentity" => iam_identity(),
        "UserProfileArn" => String.t(),
        "UserProfileName" => String.t()
      }
      
  """
  @type user_context() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_model_package_group_input() :: %{
        required("ModelPackageGroupName") => String.t()
      }
      
  """
  @type delete_model_package_group_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      model_dashboard_monitoring_schedule() :: %{
        "BatchTransformInput" => batch_transform_input(),
        "CreationTime" => non_neg_integer(),
        "EndpointName" => String.t(),
        "FailureReason" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "LastMonitoringExecutionSummary" => monitoring_execution_summary(),
        "MonitoringAlertSummaries" => list(monitoring_alert_summary()()),
        "MonitoringScheduleArn" => String.t(),
        "MonitoringScheduleConfig" => monitoring_schedule_config(),
        "MonitoringScheduleName" => String.t(),
        "MonitoringScheduleStatus" => list(any()),
        "MonitoringType" => list(any())
      }
      
  """
  @type model_dashboard_monitoring_schedule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_compilation_job_request() :: %{
        required("CompilationJobName") => String.t()
      }
      
  """
  @type stop_compilation_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tracking_server_summary() :: %{
        "CreationTime" => non_neg_integer(),
        "IsActive" => list(any()),
        "LastModifiedTime" => non_neg_integer(),
        "MlflowVersion" => String.t(),
        "TrackingServerArn" => String.t(),
        "TrackingServerName" => String.t(),
        "TrackingServerStatus" => list(any())
      }
      
  """
  @type tracking_server_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_device_fleet_report_response() :: %{
        "AgentVersions" => list(agent_version()()),
        "Description" => String.t(),
        "DeviceFleetArn" => String.t(),
        "DeviceFleetName" => String.t(),
        "DeviceStats" => device_stats(),
        "ModelStats" => list(edge_model_stat()()),
        "OutputConfig" => edge_output_config(),
        "ReportGenerated" => non_neg_integer()
      }
      
  """
  @type get_device_fleet_report_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      transform_job_summary() :: %{
        "CreationTime" => non_neg_integer(),
        "FailureReason" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "TransformEndTime" => non_neg_integer(),
        "TransformJobArn" => String.t(),
        "TransformJobName" => String.t(),
        "TransformJobStatus" => list(any())
      }
      
  """
  @type transform_job_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      model_step_metadata() :: %{
        "Arn" => String.t()
      }
      
  """
  @type model_step_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_pipeline_execution_steps_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("PipelineExecutionArn") => String.t(),
        optional("SortOrder") => list(any())
      }
      
  """
  @type list_pipeline_execution_steps_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      monitoring_job_definition() :: %{
        "BaselineConfig" => monitoring_baseline_config(),
        "Environment" => map(),
        "MonitoringAppSpecification" => monitoring_app_specification(),
        "MonitoringInputs" => list(monitoring_input()()),
        "MonitoringOutputConfig" => monitoring_output_config(),
        "MonitoringResources" => monitoring_resources(),
        "NetworkConfig" => network_config(),
        "RoleArn" => String.t(),
        "StoppingCondition" => monitoring_stopping_condition()
      }
      
  """
  @type monitoring_job_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_model_package_output() :: %{
        "ModelPackageArn" => String.t()
      }
      
  """
  @type create_model_package_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      user_settings() :: %{
        "CanvasAppSettings" => canvas_app_settings(),
        "CodeEditorAppSettings" => code_editor_app_settings(),
        "CustomFileSystemConfigs" => list(list()()),
        "CustomPosixUserConfig" => custom_posix_user_config(),
        "DefaultLandingUri" => String.t(),
        "ExecutionRole" => String.t(),
        "JupyterLabAppSettings" => jupyter_lab_app_settings(),
        "JupyterServerAppSettings" => jupyter_server_app_settings(),
        "KernelGatewayAppSettings" => kernel_gateway_app_settings(),
        "RSessionAppSettings" => r_session_app_settings(),
        "RStudioServerProAppSettings" => r_studio_server_pro_app_settings(),
        "SecurityGroups" => list(String.t()()),
        "SharingSettings" => sharing_settings(),
        "SpaceStorageSettings" => default_space_storage_settings(),
        "StudioWebPortal" => list(any()),
        "StudioWebPortalSettings" => studio_web_portal_settings(),
        "TensorBoardAppSettings" => tensor_board_app_settings()
      }
      
  """
  @type user_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      studio_web_portal_settings() :: %{
        "HiddenAppTypes" => list(list(any())()),
        "HiddenMlTools" => list(list(any())())
      }
      
  """
  @type studio_web_portal_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_workteam_request() :: %{
        required("WorkteamName") => String.t()
      }
      
  """
  @type describe_workteam_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      model_package_validation_specification() :: %{
        "ValidationProfiles" => list(model_package_validation_profile()()),
        "ValidationRole" => String.t()
      }
      
  """
  @type model_package_validation_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_endpoint_output() :: %{
        "EndpointArn" => String.t()
      }
      
  """
  @type update_endpoint_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      channel_specification() :: %{
        "Description" => String.t(),
        "IsRequired" => boolean(),
        "Name" => String.t(),
        "SupportedCompressionTypes" => list(list(any())()),
        "SupportedContentTypes" => list(String.t()()),
        "SupportedInputModes" => list(list(any())())
      }
      
  """
  @type channel_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      metrics_source() :: %{
        "ContentDigest" => String.t(),
        "ContentType" => String.t(),
        "S3Uri" => String.t()
      }
      
  """
  @type metrics_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      endpoint_config_step_metadata() :: %{
        "Arn" => String.t()
      }
      
  """
  @type endpoint_config_step_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      trial_component_summary() :: %{
        "CreatedBy" => user_context(),
        "CreationTime" => non_neg_integer(),
        "DisplayName" => String.t(),
        "EndTime" => non_neg_integer(),
        "LastModifiedBy" => user_context(),
        "LastModifiedTime" => non_neg_integer(),
        "StartTime" => non_neg_integer(),
        "Status" => trial_component_status(),
        "TrialComponentArn" => String.t(),
        "TrialComponentName" => String.t(),
        "TrialComponentSource" => trial_component_source()
      }
      
  """
  @type trial_component_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      domain_details() :: %{
        "CreationTime" => non_neg_integer(),
        "DomainArn" => String.t(),
        "DomainId" => String.t(),
        "DomainName" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "Status" => list(any()),
        "Url" => String.t()
      }
      
  """
  @type domain_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      model_explainability_app_specification() :: %{
        "ConfigUri" => String.t(),
        "Environment" => map(),
        "ImageUri" => String.t()
      }
      
  """
  @type model_explainability_app_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_edge_packaging_jobs_response() :: %{
        "EdgePackagingJobSummaries" => list(edge_packaging_job_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_edge_packaging_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_notebook_instance_lifecycle_configs_input() :: %{
        optional("CreationTimeAfter") => non_neg_integer(),
        optional("CreationTimeBefore") => non_neg_integer(),
        optional("LastModifiedTimeAfter") => non_neg_integer(),
        optional("LastModifiedTimeBefore") => non_neg_integer(),
        optional("MaxResults") => integer(),
        optional("NameContains") => String.t(),
        optional("NextToken") => String.t(),
        optional("SortBy") => list(any()),
        optional("SortOrder") => list(any())
      }
      
  """
  @type list_notebook_instance_lifecycle_configs_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_optimization_job_response() :: %{
        "OptimizationJobArn" => String.t()
      }
      
  """
  @type create_optimization_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_inference_recommendations_job_request() :: %{
        optional("JobDescription") => String.t(),
        optional("OutputConfig") => recommendation_job_output_config(),
        optional("StoppingConditions") => recommendation_job_stopping_conditions(),
        optional("Tags") => list(tag()()),
        required("InputConfig") => recommendation_job_input_config(),
        required("JobName") => String.t(),
        required("JobType") => list(any()),
        required("RoleArn") => String.t()
      }
      
  """
  @type create_inference_recommendations_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      holiday_config_attributes() :: %{
        "CountryCode" => String.t()
      }
      
  """
  @type holiday_config_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_model_quality_job_definition_response() :: %{
        "JobDefinitionArn" => String.t()
      }
      
  """
  @type create_model_quality_job_definition_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      monitoring_schedule() :: %{
        "CreationTime" => non_neg_integer(),
        "EndpointName" => String.t(),
        "FailureReason" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "LastMonitoringExecutionSummary" => monitoring_execution_summary(),
        "MonitoringScheduleArn" => String.t(),
        "MonitoringScheduleConfig" => monitoring_schedule_config(),
        "MonitoringScheduleName" => String.t(),
        "MonitoringScheduleStatus" => list(any()),
        "MonitoringType" => list(any()),
        "Tags" => list(tag()())
      }
      
  """
  @type monitoring_schedule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_monitoring_schedule_request() :: %{
        required("MonitoringScheduleName") => String.t()
      }
      
  """
  @type delete_monitoring_schedule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_pipeline_execution_response() :: %{
        "PipelineExecutionArn" => String.t()
      }
      
  """
  @type start_pipeline_execution_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      model_access_config() :: %{
        "AcceptEula" => boolean()
      }
      
  """
  @type model_access_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_user_profile_response() :: %{
        "CreationTime" => non_neg_integer(),
        "DomainId" => String.t(),
        "FailureReason" => String.t(),
        "HomeEfsFileSystemUid" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "SingleSignOnUserIdentifier" => String.t(),
        "SingleSignOnUserValue" => String.t(),
        "Status" => list(any()),
        "UserProfileArn" => String.t(),
        "UserProfileName" => String.t(),
        "UserSettings" => user_settings()
      }
      
  """
  @type describe_user_profile_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      transform_input() :: %{
        "CompressionType" => list(any()),
        "ContentType" => String.t(),
        "DataSource" => transform_data_source(),
        "SplitType" => list(any())
      }
      
  """
  @type transform_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      trial_component_metric_summary() :: %{
        "Avg" => float(),
        "Count" => integer(),
        "Last" => float(),
        "Max" => float(),
        "MetricName" => String.t(),
        "Min" => float(),
        "SourceArn" => String.t(),
        "StdDev" => float(),
        "TimeStamp" => non_neg_integer()
      }
      
  """
  @type trial_component_metric_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      device() :: %{
        "Description" => String.t(),
        "DeviceName" => String.t(),
        "IotThingName" => String.t()
      }
      
  """
  @type device() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_workteam_response() :: %{
        "Workteam" => workteam()
      }
      
  """
  @type update_workteam_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      desired_weight_and_capacity() :: %{
        "DesiredInstanceCount" => integer(),
        "DesiredWeight" => float(),
        "ServerlessUpdateConfig" => production_variant_serverless_update_config(),
        "VariantName" => String.t()
      }
      
  """
  @type desired_weight_and_capacity() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      parent() :: %{
        "ExperimentName" => String.t(),
        "TrialName" => String.t()
      }
      
  """
  @type parent() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      text_classification_job_config() :: %{
        "CompletionCriteria" => auto_ml_job_completion_criteria(),
        "ContentColumn" => String.t(),
        "TargetLabelColumn" => String.t()
      }
      
  """
  @type text_classification_job_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      final_hyper_parameter_tuning_job_objective_metric() :: %{
        "MetricName" => String.t(),
        "Type" => list(any()),
        "Value" => float()
      }
      
  """
  @type final_hyper_parameter_tuning_job_objective_metric() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_pipeline_request() :: %{
        required("PipelineName") => String.t()
      }
      
  """
  @type describe_pipeline_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      data_source() :: %{
        "FileSystemDataSource" => file_system_data_source(),
        "S3DataSource" => s3_data_source()
      }
      
  """
  @type data_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_training_job_response() :: %{
        "TrainingJobArn" => String.t()
      }
      
  """
  @type create_training_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_model_bias_job_definition_request() :: %{
        required("JobDefinitionName") => String.t()
      }
      
  """
  @type delete_model_bias_job_definition_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_model_cards_response() :: %{
        "ModelCardSummaries" => list(model_card_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_model_cards_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_context_response() :: %{
        "ContextArn" => String.t()
      }
      
  """
  @type update_context_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_device_fleet_response() :: %{
        "CreationTime" => non_neg_integer(),
        "Description" => String.t(),
        "DeviceFleetArn" => String.t(),
        "DeviceFleetName" => String.t(),
        "IotRoleAlias" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "OutputConfig" => edge_output_config(),
        "RoleArn" => String.t()
      }
      
  """
  @type describe_device_fleet_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_trials_response() :: %{
        "NextToken" => String.t(),
        "TrialSummaries" => list(trial_summary()())
      }
      
  """
  @type list_trials_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      labeling_job_sns_data_source() :: %{
        "SnsTopicArn" => String.t()
      }
      
  """
  @type labeling_job_sns_data_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_transform_jobs_response() :: %{
        "NextToken" => String.t(),
        "TransformJobSummaries" => list(transform_job_summary()())
      }
      
  """
  @type list_transform_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_hub_content_request() :: %{
        required("HubContentName") => String.t(),
        required("HubContentType") => list(any()),
        required("HubContentVersion") => String.t(),
        required("HubName") => String.t()
      }
      
  """
  @type delete_hub_content_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      space_jupyter_lab_app_settings() :: %{
        "CodeRepositories" => list(code_repository()()),
        "DefaultResourceSpec" => resource_spec()
      }
      
  """
  @type space_jupyter_lab_app_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_flow_definitions_response() :: %{
        "FlowDefinitionSummaries" => list(flow_definition_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_flow_definitions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      edge() :: %{
        "AssociationType" => list(any()),
        "DestinationArn" => String.t(),
        "SourceArn" => String.t()
      }
      
  """
  @type edge() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      model_package_container_definition() :: %{
        "AdditionalS3DataSource" => additional_s3_data_source(),
        "ContainerHostname" => String.t(),
        "Environment" => map(),
        "Framework" => String.t(),
        "FrameworkVersion" => String.t(),
        "Image" => String.t(),
        "ImageDigest" => String.t(),
        "ModelDataSource" => model_data_source(),
        "ModelDataUrl" => String.t(),
        "ModelInput" => model_input(),
        "NearestModelName" => String.t(),
        "ProductId" => String.t()
      }
      
  """
  @type model_package_container_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      monitoring_constraints_resource() :: %{
        "S3Uri" => String.t()
      }
      
  """
  @type monitoring_constraints_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      experiment() :: %{
        "CreatedBy" => user_context(),
        "CreationTime" => non_neg_integer(),
        "Description" => String.t(),
        "DisplayName" => String.t(),
        "ExperimentArn" => String.t(),
        "ExperimentName" => String.t(),
        "LastModifiedBy" => user_context(),
        "LastModifiedTime" => non_neg_integer(),
        "Source" => experiment_source(),
        "Tags" => list(tag()())
      }
      
  """
  @type experiment() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ownership_settings() :: %{
        "OwnerUserProfileName" => String.t()
      }
      
  """
  @type ownership_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      default_space_settings() :: %{
        "CustomFileSystemConfigs" => list(list()()),
        "CustomPosixUserConfig" => custom_posix_user_config(),
        "ExecutionRole" => String.t(),
        "JupyterLabAppSettings" => jupyter_lab_app_settings(),
        "JupyterServerAppSettings" => jupyter_server_app_settings(),
        "KernelGatewayAppSettings" => kernel_gateway_app_settings(),
        "SecurityGroups" => list(String.t()()),
        "SpaceStorageSettings" => default_space_storage_settings()
      }
      
  """
  @type default_space_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_monitoring_schedule_request() :: %{
        required("MonitoringScheduleName") => String.t()
      }
      
  """
  @type stop_monitoring_schedule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_app_response() :: %{
        "AppArn" => String.t()
      }
      
  """
  @type create_app_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_model_card_export_job_request() :: %{
        optional("ModelCardVersion") => integer(),
        required("ModelCardExportJobName") => String.t(),
        required("ModelCardName") => String.t(),
        required("OutputConfig") => model_card_export_output_config()
      }
      
  """
  @type create_model_card_export_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      selected_step() :: %{
        "StepName" => String.t()
      }
      
  """
  @type selected_step() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_trial_response() :: %{
        "TrialArn" => String.t()
      }
      
  """
  @type update_trial_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_app_image_configs_request() :: %{
        optional("CreationTimeAfter") => non_neg_integer(),
        optional("CreationTimeBefore") => non_neg_integer(),
        optional("MaxResults") => integer(),
        optional("ModifiedTimeAfter") => non_neg_integer(),
        optional("ModifiedTimeBefore") => non_neg_integer(),
        optional("NameContains") => String.t(),
        optional("NextToken") => String.t(),
        optional("SortBy") => list(any()),
        optional("SortOrder") => list(any())
      }
      
  """
  @type list_app_image_configs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_monitoring_alert_request() :: %{
        required("DatapointsToAlert") => integer(),
        required("EvaluationPeriod") => integer(),
        required("MonitoringAlertName") => String.t(),
        required("MonitoringScheduleName") => String.t()
      }
      
  """
  @type update_monitoring_alert_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_trial_component_response() :: %{
        "CreatedBy" => user_context(),
        "CreationTime" => non_neg_integer(),
        "DisplayName" => String.t(),
        "EndTime" => non_neg_integer(),
        "InputArtifacts" => map(),
        "LastModifiedBy" => user_context(),
        "LastModifiedTime" => non_neg_integer(),
        "LineageGroupArn" => String.t(),
        "MetadataProperties" => metadata_properties(),
        "Metrics" => list(trial_component_metric_summary()()),
        "OutputArtifacts" => map(),
        "Parameters" => map(),
        "Source" => trial_component_source(),
        "Sources" => list(trial_component_source()()),
        "StartTime" => non_neg_integer(),
        "Status" => trial_component_status(),
        "TrialComponentArn" => String.t(),
        "TrialComponentName" => String.t()
      }
      
  """
  @type describe_trial_component_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_limit_exceeded() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_limit_exceeded() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_monitoring_executions_response() :: %{
        "MonitoringExecutionSummaries" => list(monitoring_execution_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_monitoring_executions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      hyper_parameter_tuning_job_completion_details() :: %{
        "ConvergenceDetectedTime" => non_neg_integer(),
        "NumberOfTrainingJobsObjectiveNotImproving" => integer()
      }
      
  """
  @type hyper_parameter_tuning_job_completion_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      model_data_source() :: %{
        "S3DataSource" => s3_model_data_source()
      }
      
  """
  @type model_data_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      inference_component_specification() :: %{
        "ComputeResourceRequirements" => inference_component_compute_resource_requirements(),
        "Container" => inference_component_container_specification(),
        "ModelName" => String.t(),
        "StartupParameters" => inference_component_startup_parameters()
      }
      
  """
  @type inference_component_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      auto_rollback_config() :: %{
        "Alarms" => list(alarm()())
      }
      
  """
  @type auto_rollback_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_flow_definitions_request() :: %{
        optional("CreationTimeAfter") => non_neg_integer(),
        optional("CreationTimeBefore") => non_neg_integer(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SortOrder") => list(any())
      }
      
  """
  @type list_flow_definitions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      drift_check_baselines() :: %{
        "Bias" => drift_check_bias(),
        "Explainability" => drift_check_explainability(),
        "ModelDataQuality" => drift_check_model_data_quality(),
        "ModelQuality" => drift_check_model_quality()
      }
      
  """
  @type drift_check_baselines() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_notebook_instance_output() :: %{
        "NotebookInstanceArn" => String.t()
      }
      
  """
  @type create_notebook_instance_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_hyper_parameter_tuning_jobs_response() :: %{
        "HyperParameterTuningJobSummaries" => list(hyper_parameter_tuning_job_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_hyper_parameter_tuning_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      monitoring_schedule_summary() :: %{
        "CreationTime" => non_neg_integer(),
        "EndpointName" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "MonitoringJobDefinitionName" => String.t(),
        "MonitoringScheduleArn" => String.t(),
        "MonitoringScheduleName" => String.t(),
        "MonitoringScheduleStatus" => list(any()),
        "MonitoringType" => list(any())
      }
      
  """
  @type monitoring_schedule_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster_instance_placement() :: %{
        "AvailabilityZone" => String.t(),
        "AvailabilityZoneId" => String.t()
      }
      
  """
  @type cluster_instance_placement() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_model_packages_output() :: %{
        "ModelPackageSummaryList" => list(model_package_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_model_packages_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_catalog() :: %{
        "CreationTime" => non_neg_integer(),
        "Description" => String.t(),
        "ResourceCatalogArn" => String.t(),
        "ResourceCatalogName" => String.t()
      }
      
  """
  @type resource_catalog() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      processing_output_config() :: %{
        "KmsKeyId" => String.t(),
        "Outputs" => list(processing_output()())
      }
      
  """
  @type processing_output_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      production_variant_managed_instance_scaling() :: %{
        "MaxInstanceCount" => integer(),
        "MinInstanceCount" => integer(),
        "Status" => list(any())
      }
      
  """
  @type production_variant_managed_instance_scaling() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_workforce_response() :: %{
        "Workforce" => workforce()
      }
      
  """
  @type describe_workforce_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_record() :: %{
        "Endpoint" => endpoint(),
        "Experiment" => experiment(),
        "FeatureGroup" => feature_group(),
        "FeatureMetadata" => feature_metadata(),
        "HyperParameterTuningJob" => hyper_parameter_tuning_job_search_entity(),
        "Model" => model_dashboard_model(),
        "ModelCard" => model_card(),
        "ModelPackage" => model_package(),
        "ModelPackageGroup" => model_package_group(),
        "Pipeline" => pipeline(),
        "PipelineExecution" => pipeline_execution(),
        "Project" => project(),
        "TrainingJob" => training_job(),
        "Trial" => trial(),
        "TrialComponent" => trial_component()
      }
      
  """
  @type search_record() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      trial() :: %{
        "CreatedBy" => user_context(),
        "CreationTime" => non_neg_integer(),
        "DisplayName" => String.t(),
        "ExperimentName" => String.t(),
        "LastModifiedBy" => user_context(),
        "LastModifiedTime" => non_neg_integer(),
        "MetadataProperties" => metadata_properties(),
        "Source" => trial_source(),
        "Tags" => list(tag()()),
        "TrialArn" => String.t(),
        "TrialComponentSummaries" => list(trial_component_simple_summary()()),
        "TrialName" => String.t()
      }
      
  """
  @type trial() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      processing_cluster_config() :: %{
        "InstanceCount" => integer(),
        "InstanceType" => list(any()),
        "VolumeKmsKeyId" => String.t(),
        "VolumeSizeInGB" => integer()
      }
      
  """
  @type processing_cluster_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      device_stats() :: %{
        "ConnectedDeviceCount" => float(),
        "RegisteredDeviceCount" => float()
      }
      
  """
  @type device_stats() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_model_input() :: %{
        required("ModelName") => String.t()
      }
      
  """
  @type describe_model_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      environment_parameter() :: %{
        "Key" => String.t(),
        "Value" => String.t(),
        "ValueType" => String.t()
      }
      
  """
  @type environment_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      model_dashboard_endpoint() :: %{
        "CreationTime" => non_neg_integer(),
        "EndpointArn" => String.t(),
        "EndpointName" => String.t(),
        "EndpointStatus" => list(any()),
        "LastModifiedTime" => non_neg_integer()
      }
      
  """
  @type model_dashboard_endpoint() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_device_fleet_request() :: %{
        required("DeviceFleetName") => String.t()
      }
      
  """
  @type delete_device_fleet_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      jupyter_lab_app_settings() :: %{
        "CodeRepositories" => list(code_repository()()),
        "CustomImages" => list(custom_image()()),
        "DefaultResourceSpec" => resource_spec(),
        "EmrSettings" => emr_settings(),
        "LifecycleConfigArns" => list(String.t()())
      }
      
  """
  @type jupyter_lab_app_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_experiment_response() :: %{
        "ExperimentArn" => String.t()
      }
      
  """
  @type update_experiment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_algorithms_output() :: %{
        "AlgorithmSummaryList" => list(algorithm_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_algorithms_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_notebook_instance_lifecycle_config_input() :: %{
        required("NotebookInstanceLifecycleConfigName") => String.t()
      }
      
  """
  @type delete_notebook_instance_lifecycle_config_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      human_loop_config() :: %{
        "HumanTaskUiArn" => String.t(),
        "PublicWorkforceTaskPrice" => public_workforce_task_price(),
        "TaskAvailabilityLifetimeInSeconds" => integer(),
        "TaskCount" => integer(),
        "TaskDescription" => String.t(),
        "TaskKeywords" => list(String.t()()),
        "TaskTimeLimitInSeconds" => integer(),
        "TaskTitle" => String.t(),
        "WorkteamArn" => String.t()
      }
      
  """
  @type human_loop_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      monitoring_baseline_config() :: %{
        "BaseliningJobName" => String.t(),
        "ConstraintsResource" => monitoring_constraints_resource(),
        "StatisticsResource" => monitoring_statistics_resource()
      }
      
  """
  @type monitoring_baseline_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      model() :: %{
        "Containers" => list(container_definition()()),
        "CreationTime" => non_neg_integer(),
        "DeploymentRecommendation" => deployment_recommendation(),
        "EnableNetworkIsolation" => boolean(),
        "ExecutionRoleArn" => String.t(),
        "InferenceExecutionConfig" => inference_execution_config(),
        "ModelArn" => String.t(),
        "ModelName" => String.t(),
        "PrimaryContainer" => container_definition(),
        "Tags" => list(tag()()),
        "VpcConfig" => vpc_config()
      }
      
  """
  @type model() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_compilation_jobs_request() :: %{
        optional("CreationTimeAfter") => non_neg_integer(),
        optional("CreationTimeBefore") => non_neg_integer(),
        optional("LastModifiedTimeAfter") => non_neg_integer(),
        optional("LastModifiedTimeBefore") => non_neg_integer(),
        optional("MaxResults") => integer(),
        optional("NameContains") => String.t(),
        optional("NextToken") => String.t(),
        optional("SortBy") => list(any()),
        optional("SortOrder") => list(any()),
        optional("StatusEquals") => list(any())
      }
      
  """
  @type list_compilation_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      transform_output() :: %{
        "Accept" => String.t(),
        "AssembleWith" => list(any()),
        "KmsKeyId" => String.t(),
        "S3OutputPath" => String.t()
      }
      
  """
  @type transform_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_model_package_output() :: %{
        "AdditionalInferenceSpecifications" => list(additional_inference_specification_definition()()),
        "ApprovalDescription" => String.t(),
        "CertifyForMarketplace" => boolean(),
        "CreatedBy" => user_context(),
        "CreationTime" => non_neg_integer(),
        "CustomerMetadataProperties" => map(),
        "Domain" => String.t(),
        "DriftCheckBaselines" => drift_check_baselines(),
        "InferenceSpecification" => inference_specification(),
        "LastModifiedBy" => user_context(),
        "LastModifiedTime" => non_neg_integer(),
        "MetadataProperties" => metadata_properties(),
        "ModelApprovalStatus" => list(any()),
        "ModelCard" => model_package_model_card(),
        "ModelMetrics" => model_metrics(),
        "ModelPackageArn" => String.t(),
        "ModelPackageDescription" => String.t(),
        "ModelPackageGroupName" => String.t(),
        "ModelPackageName" => String.t(),
        "ModelPackageStatus" => list(any()),
        "ModelPackageStatusDetails" => model_package_status_details(),
        "ModelPackageVersion" => integer(),
        "SamplePayloadUrl" => String.t(),
        "SecurityConfig" => model_package_security_config(),
        "SkipModelValidation" => list(any()),
        "SourceAlgorithmSpecification" => source_algorithm_specification(),
        "SourceUri" => String.t(),
        "Task" => String.t(),
        "ValidationSpecification" => model_package_validation_specification()
      }
      
  """
  @type describe_model_package_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_output() :: %{
        "NextToken" => String.t(),
        "Tags" => list(tag()())
      }
      
  """
  @type list_tags_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_pipeline_parameters_for_execution_response() :: %{
        "NextToken" => String.t(),
        "PipelineParameters" => list(parameter()())
      }
      
  """
  @type list_pipeline_parameters_for_execution_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      workspace_settings() :: %{
        "S3ArtifactPath" => String.t(),
        "S3KmsKeyId" => String.t()
      }
      
  """
  @type workspace_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      space_code_editor_app_settings() :: %{
        "DefaultResourceSpec" => resource_spec()
      }
      
  """
  @type space_code_editor_app_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      autotune() :: %{
        "Mode" => list(any())
      }
      
  """
  @type autotune() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_describe_model_package_summary() :: %{
        "CreationTime" => non_neg_integer(),
        "InferenceSpecification" => inference_specification(),
        "ModelApprovalStatus" => list(any()),
        "ModelPackageArn" => String.t(),
        "ModelPackageDescription" => String.t(),
        "ModelPackageGroupName" => String.t(),
        "ModelPackageStatus" => list(any()),
        "ModelPackageVersion" => integer()
      }
      
  """
  @type batch_describe_model_package_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_processing_jobs_response() :: %{
        "NextToken" => String.t(),
        "ProcessingJobSummaries" => list(processing_job_summary()())
      }
      
  """
  @type list_processing_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_notebook_instance_lifecycle_config_output() :: %{
        "CreationTime" => non_neg_integer(),
        "LastModifiedTime" => non_neg_integer(),
        "NotebookInstanceLifecycleConfigArn" => String.t(),
        "NotebookInstanceLifecycleConfigName" => String.t(),
        "OnCreate" => list(notebook_instance_lifecycle_hook()()),
        "OnStart" => list(notebook_instance_lifecycle_hook()())
      }
      
  """
  @type describe_notebook_instance_lifecycle_config_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      hyper_parameter_tuning_job_config() :: %{
        "HyperParameterTuningJobObjective" => hyper_parameter_tuning_job_objective(),
        "ParameterRanges" => parameter_ranges(),
        "RandomSeed" => integer(),
        "ResourceLimits" => resource_limits(),
        "Strategy" => list(any()),
        "StrategyConfig" => hyper_parameter_tuning_job_strategy_config(),
        "TrainingJobEarlyStoppingType" => list(any()),
        "TuningJobCompletionCriteria" => tuning_job_completion_criteria()
      }
      
  """
  @type hyper_parameter_tuning_job_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      emr_serverless_settings() :: %{
        "ExecutionRoleArn" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type emr_serverless_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_context_response() :: %{
        "ContextArn" => String.t()
      }
      
  """
  @type create_context_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_compilation_job_request() :: %{
        required("CompilationJobName") => String.t()
      }
      
  """
  @type describe_compilation_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      auto_ml_job_completion_criteria() :: %{
        "MaxAutoMLJobRuntimeInSeconds" => integer(),
        "MaxCandidates" => integer(),
        "MaxRuntimePerTrainingJobInSeconds" => integer()
      }
      
  """
  @type auto_ml_job_completion_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      file_source() :: %{
        "ContentDigest" => String.t(),
        "ContentType" => String.t(),
        "S3Uri" => String.t()
      }
      
  """
  @type file_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_device_fleet_request() :: %{
        optional("Description") => String.t(),
        optional("EnableIotRoleAlias") => boolean(),
        optional("RoleArn") => String.t(),
        optional("Tags") => list(tag()()),
        required("DeviceFleetName") => String.t(),
        required("OutputConfig") => edge_output_config()
      }
      
  """
  @type create_device_fleet_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_inference_component_input() :: %{
        required("InferenceComponentName") => String.t()
      }
      
  """
  @type delete_inference_component_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_image_version_request() :: %{
        optional("Alias") => String.t(),
        optional("AliasesToAdd") => list(String.t()()),
        optional("AliasesToDelete") => list(String.t()()),
        optional("Horovod") => boolean(),
        optional("JobType") => list(any()),
        optional("MLFramework") => String.t(),
        optional("Processor") => list(any()),
        optional("ProgrammingLang") => String.t(),
        optional("ReleaseNotes") => String.t(),
        optional("VendorGuidance") => list(any()),
        optional("Version") => integer(),
        required("ImageName") => String.t()
      }
      
  """
  @type update_image_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_trials_request() :: %{
        optional("CreatedAfter") => non_neg_integer(),
        optional("CreatedBefore") => non_neg_integer(),
        optional("ExperimentName") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SortBy") => list(any()),
        optional("SortOrder") => list(any()),
        optional("TrialComponentName") => String.t()
      }
      
  """
  @type list_trials_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster_instance_group_details() :: %{
        "CurrentCount" => integer(),
        "ExecutionRole" => String.t(),
        "InstanceGroupName" => String.t(),
        "InstanceStorageConfigs" => list(list()()),
        "InstanceType" => list(any()),
        "LifeCycleConfig" => cluster_life_cycle_config(),
        "TargetCount" => integer(),
        "ThreadsPerCore" => integer()
      }
      
  """
  @type cluster_instance_group_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      notebook_instance_lifecycle_hook() :: %{
        "Content" => String.t()
      }
      
  """
  @type notebook_instance_lifecycle_hook() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      model_quantization_config() :: %{
        "Image" => String.t(),
        "OverrideEnvironment" => map()
      }
      
  """
  @type model_quantization_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      condition_step_metadata() :: %{
        "Outcome" => list(any())
      }
      
  """
  @type condition_step_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      code_editor_app_settings() :: %{
        "CustomImages" => list(custom_image()()),
        "DefaultResourceSpec" => resource_spec(),
        "LifecycleConfigArns" => list(String.t()())
      }
      
  """
  @type code_editor_app_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      hyper_parameter_tuning_instance_config() :: %{
        "InstanceCount" => integer(),
        "InstanceType" => list(any()),
        "VolumeSizeInGB" => integer()
      }
      
  """
  @type hyper_parameter_tuning_instance_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      model_dashboard_model() :: %{
        "Endpoints" => list(model_dashboard_endpoint()()),
        "LastBatchTransformJob" => transform_job(),
        "Model" => model(),
        "ModelCard" => model_dashboard_model_card(),
        "MonitoringSchedules" => list(model_dashboard_monitoring_schedule()())
      }
      
  """
  @type model_dashboard_model() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      workforce_vpc_config_request() :: %{
        "SecurityGroupIds" => list(String.t()()),
        "Subnets" => list(String.t()()),
        "VpcId" => String.t()
      }
      
  """
  @type workforce_vpc_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_auto_ml_job_request() :: %{
        required("AutoMLJobName") => String.t()
      }
      
  """
  @type stop_auto_ml_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tensor_board_app_settings() :: %{
        "DefaultResourceSpec" => resource_spec()
      }
      
  """
  @type tensor_board_app_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_trial_component_request() :: %{
        required("TrialComponentName") => String.t(),
        required("TrialName") => String.t()
      }
      
  """
  @type associate_trial_component_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_human_task_ui_response() :: %{}
      
  """
  @type delete_human_task_ui_response() :: %{}

  @typedoc """

  ## Example:
      
      stop_edge_packaging_job_request() :: %{
        required("EdgePackagingJobName") => String.t()
      }
      
  """
  @type stop_edge_packaging_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_subscribed_workteams_response() :: %{
        "NextToken" => String.t(),
        "SubscribedWorkteams" => list(subscribed_workteam()())
      }
      
  """
  @type list_subscribed_workteams_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_endpoint_config_input() :: %{
        required("EndpointConfigName") => String.t()
      }
      
  """
  @type delete_endpoint_config_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      optimization_job_summary() :: %{
        "CreationTime" => non_neg_integer(),
        "DeploymentInstanceType" => list(any()),
        "LastModifiedTime" => non_neg_integer(),
        "OptimizationEndTime" => non_neg_integer(),
        "OptimizationJobArn" => String.t(),
        "OptimizationJobName" => String.t(),
        "OptimizationJobStatus" => list(any()),
        "OptimizationStartTime" => non_neg_integer(),
        "OptimizationTypes" => list(String.t()())
      }
      
  """
  @type optimization_job_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_edge_packaging_job_request() :: %{
        optional("ResourceKey") => String.t(),
        optional("Tags") => list(tag()()),
        required("CompilationJobName") => String.t(),
        required("EdgePackagingJobName") => String.t(),
        required("ModelName") => String.t(),
        required("ModelVersion") => String.t(),
        required("OutputConfig") => edge_output_config(),
        required("RoleArn") => String.t()
      }
      
  """
  @type create_edge_packaging_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_monitoring_schedule_response() :: %{
        "MonitoringScheduleArn" => String.t()
      }
      
  """
  @type create_monitoring_schedule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_optimization_job_request() :: %{
        required("OptimizationJobName") => String.t()
      }
      
  """
  @type delete_optimization_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      auto_ml_job_step_metadata() :: %{
        "Arn" => String.t()
      }
      
  """
  @type auto_ml_job_step_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      human_loop_activation_config() :: %{
        "HumanLoopActivationConditionsConfig" => human_loop_activation_conditions_config()
      }
      
  """
  @type human_loop_activation_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_image_request() :: %{
        required("ImageName") => String.t()
      }
      
  """
  @type describe_image_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_pipeline_response() :: %{
        "PipelineArn" => String.t()
      }
      
  """
  @type delete_pipeline_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_pipeline_executions_request() :: %{
        optional("CreatedAfter") => non_neg_integer(),
        optional("CreatedBefore") => non_neg_integer(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SortBy") => list(any()),
        optional("SortOrder") => list(any()),
        required("PipelineName") => String.t()
      }
      
  """
  @type list_pipeline_executions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster_node_details() :: %{
        "InstanceGroupName" => String.t(),
        "InstanceId" => String.t(),
        "InstanceStatus" => cluster_instance_status_details(),
        "InstanceStorageConfigs" => list(list()()),
        "InstanceType" => list(any()),
        "LaunchTime" => non_neg_integer(),
        "LifeCycleConfig" => cluster_life_cycle_config(),
        "Placement" => cluster_instance_placement(),
        "PrivateDnsHostname" => String.t(),
        "PrivatePrimaryIp" => String.t(),
        "ThreadsPerCore" => integer()
      }
      
  """
  @type cluster_node_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_catalog_provisioned_product_details() :: %{
        "ProvisionedProductId" => String.t(),
        "ProvisionedProductStatusMessage" => String.t()
      }
      
  """
  @type service_catalog_provisioned_product_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_inference_experiments_response() :: %{
        "InferenceExperiments" => list(inference_experiment_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_inference_experiments_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      production_variant_core_dump_config() :: %{
        "DestinationS3Uri" => String.t(),
        "KmsKeyId" => String.t()
      }
      
  """
  @type production_variant_core_dump_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_optimization_jobs_response() :: %{
        "NextToken" => String.t(),
        "OptimizationJobSummaries" => list(optimization_job_summary()())
      }
      
  """
  @type list_optimization_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      model_package_summary() :: %{
        "CreationTime" => non_neg_integer(),
        "ModelApprovalStatus" => list(any()),
        "ModelPackageArn" => String.t(),
        "ModelPackageDescription" => String.t(),
        "ModelPackageGroupName" => String.t(),
        "ModelPackageName" => String.t(),
        "ModelPackageStatus" => list(any()),
        "ModelPackageVersion" => integer()
      }
      
  """
  @type model_package_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_tags_output() :: %{}
      
  """
  @type delete_tags_output() :: %{}

  @typedoc """

  ## Example:
      
      create_notebook_instance_lifecycle_config_output() :: %{
        "NotebookInstanceLifecycleConfigArn" => String.t()
      }
      
  """
  @type create_notebook_instance_lifecycle_config_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster_ebs_volume_config() :: %{
        "VolumeSizeInGB" => integer()
      }
      
  """
  @type cluster_ebs_volume_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_feature_group_response() :: %{
        "FeatureGroupArn" => String.t()
      }
      
  """
  @type update_feature_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      code_repository_summary() :: %{
        "CodeRepositoryArn" => String.t(),
        "CodeRepositoryName" => String.t(),
        "CreationTime" => non_neg_integer(),
        "GitConfig" => git_config(),
        "LastModifiedTime" => non_neg_integer()
      }
      
  """
  @type code_repository_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_mlflow_tracking_server_request() :: %{
        required("TrackingServerName") => String.t()
      }
      
  """
  @type delete_mlflow_tracking_server_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      retention_policy() :: %{
        "HomeEfsFileSystem" => list(any())
      }
      
  """
  @type retention_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dynamic_scaling_configuration() :: %{
        "MaxCapacity" => integer(),
        "MinCapacity" => integer(),
        "ScaleInCooldown" => integer(),
        "ScaleOutCooldown" => integer(),
        "ScalingPolicies" => list(list()())
      }
      
  """
  @type dynamic_scaling_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_spaces_request() :: %{
        optional("DomainIdEquals") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SortBy") => list(any()),
        optional("SortOrder") => list(any()),
        optional("SpaceNameContains") => String.t()
      }
      
  """
  @type list_spaces_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      processing_job() :: %{
        "AppSpecification" => app_specification(),
        "AutoMLJobArn" => String.t(),
        "CreationTime" => non_neg_integer(),
        "Environment" => map(),
        "ExitMessage" => String.t(),
        "ExperimentConfig" => experiment_config(),
        "FailureReason" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "MonitoringScheduleArn" => String.t(),
        "NetworkConfig" => network_config(),
        "ProcessingEndTime" => non_neg_integer(),
        "ProcessingInputs" => list(processing_input()()),
        "ProcessingJobArn" => String.t(),
        "ProcessingJobName" => String.t(),
        "ProcessingJobStatus" => list(any()),
        "ProcessingOutputConfig" => processing_output_config(),
        "ProcessingResources" => processing_resources(),
        "ProcessingStartTime" => non_neg_integer(),
        "RoleArn" => String.t(),
        "StoppingCondition" => processing_stopping_condition(),
        "Tags" => list(tag()()),
        "TrainingJobArn" => String.t()
      }
      
  """
  @type processing_job() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_human_task_uis_request() :: %{
        optional("CreationTimeAfter") => non_neg_integer(),
        optional("CreationTimeBefore") => non_neg_integer(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SortOrder") => list(any())
      }
      
  """
  @type list_human_task_uis_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      space_sharing_settings_summary() :: %{
        "SharingType" => list(any())
      }
      
  """
  @type space_sharing_settings_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_cluster_response() :: %{
        "ClusterArn" => String.t()
      }
      
  """
  @type update_cluster_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_flow_definition_request() :: %{
        optional("HumanLoopActivationConfig") => human_loop_activation_config(),
        optional("HumanLoopConfig") => human_loop_config(),
        optional("HumanLoopRequestSource") => human_loop_request_source(),
        optional("Tags") => list(tag()()),
        required("FlowDefinitionName") => String.t(),
        required("OutputConfig") => flow_definition_output_config(),
        required("RoleArn") => String.t()
      }
      
  """
  @type create_flow_definition_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_code_repository_output() :: %{
        "CodeRepositoryArn" => String.t()
      }
      
  """
  @type create_code_repository_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_device_fleets_response() :: %{
        "DeviceFleetSummaries" => list(device_fleet_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_device_fleets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_device_response() :: %{
        "AgentVersion" => String.t(),
        "Description" => String.t(),
        "DeviceArn" => String.t(),
        "DeviceFleetName" => String.t(),
        "DeviceName" => String.t(),
        "IotThingName" => String.t(),
        "LatestHeartbeat" => non_neg_integer(),
        "MaxModels" => integer(),
        "Models" => list(edge_model()()),
        "NextToken" => String.t(),
        "RegistrationTime" => non_neg_integer()
      }
      
  """
  @type describe_device_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      default_space_storage_settings() :: %{
        "DefaultEbsStorageSettings" => default_ebs_storage_settings()
      }
      
  """
  @type default_space_storage_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_data_source() :: %{
        "AttributeNames" => list(String.t()()),
        "InstanceGroupNames" => list(String.t()()),
        "S3DataDistributionType" => list(any()),
        "S3DataType" => list(any()),
        "S3Uri" => String.t()
      }
      
  """
  @type s3_data_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_labeling_jobs_for_workteam_response() :: %{
        "LabelingJobSummaryList" => list(labeling_job_for_workteam_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_labeling_jobs_for_workteam_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remote_debug_config() :: %{
        "EnableRemoteDebug" => boolean()
      }
      
  """
  @type remote_debug_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_hub_response() :: %{
        "HubArn" => String.t()
      }
      
  """
  @type create_hub_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      async_inference_output_config() :: %{
        "KmsKeyId" => String.t(),
        "NotificationConfig" => async_inference_notification_config(),
        "S3FailurePath" => String.t(),
        "S3OutputPath" => String.t()
      }
      
  """
  @type async_inference_output_config() :: %{String.t() => any()}

  @type add_association_errors() :: resource_limit_exceeded() | resource_not_found()

  @type associate_trial_component_errors() :: resource_limit_exceeded() | resource_not_found()

  @type create_action_errors() :: resource_limit_exceeded()

  @type create_app_errors() :: resource_limit_exceeded() | resource_in_use()

  @type create_app_image_config_errors() :: resource_in_use()

  @type create_artifact_errors() :: resource_limit_exceeded()

  @type create_auto_ml_job_errors() :: resource_limit_exceeded() | resource_in_use()

  @type create_auto_ml_job_v2_errors() :: resource_limit_exceeded() | resource_in_use()

  @type create_cluster_errors() :: resource_limit_exceeded() | resource_in_use()

  @type create_compilation_job_errors() :: resource_limit_exceeded() | resource_in_use()

  @type create_context_errors() :: resource_limit_exceeded()

  @type create_data_quality_job_definition_errors() ::
          resource_limit_exceeded() | resource_in_use()

  @type create_device_fleet_errors() :: resource_limit_exceeded() | resource_in_use()

  @type create_domain_errors() :: resource_limit_exceeded() | resource_in_use()

  @type create_edge_deployment_plan_errors() :: resource_limit_exceeded()

  @type create_edge_deployment_stage_errors() :: resource_limit_exceeded()

  @type create_edge_packaging_job_errors() :: resource_limit_exceeded()

  @type create_endpoint_errors() :: resource_limit_exceeded()

  @type create_endpoint_config_errors() :: resource_limit_exceeded()

  @type create_experiment_errors() :: resource_limit_exceeded()

  @type create_feature_group_errors() :: resource_limit_exceeded() | resource_in_use()

  @type create_flow_definition_errors() :: resource_limit_exceeded() | resource_in_use()

  @type create_hub_errors() :: resource_limit_exceeded() | resource_in_use()

  @type create_hub_content_reference_errors() ::
          resource_limit_exceeded() | resource_in_use() | resource_not_found()

  @type create_human_task_ui_errors() :: resource_limit_exceeded() | resource_in_use()

  @type create_hyper_parameter_tuning_job_errors() ::
          resource_limit_exceeded() | resource_in_use()

  @type create_image_errors() :: resource_limit_exceeded() | resource_in_use()

  @type create_image_version_errors() ::
          resource_limit_exceeded() | resource_in_use() | resource_not_found()

  @type create_inference_component_errors() :: resource_limit_exceeded()

  @type create_inference_experiment_errors() :: resource_limit_exceeded() | resource_in_use()

  @type create_inference_recommendations_job_errors() ::
          resource_limit_exceeded() | resource_in_use()

  @type create_labeling_job_errors() :: resource_limit_exceeded() | resource_in_use()

  @type create_mlflow_tracking_server_errors() :: resource_limit_exceeded()

  @type create_model_errors() :: resource_limit_exceeded()

  @type create_model_bias_job_definition_errors() :: resource_limit_exceeded() | resource_in_use()

  @type create_model_card_errors() :: resource_limit_exceeded() | conflict_exception()

  @type create_model_card_export_job_errors() ::
          resource_limit_exceeded() | conflict_exception() | resource_not_found()

  @type create_model_explainability_job_definition_errors() ::
          resource_limit_exceeded() | resource_in_use()

  @type create_model_package_errors() :: resource_limit_exceeded() | conflict_exception()

  @type create_model_package_group_errors() :: resource_limit_exceeded()

  @type create_model_quality_job_definition_errors() ::
          resource_limit_exceeded() | resource_in_use()

  @type create_monitoring_schedule_errors() :: resource_limit_exceeded() | resource_in_use()

  @type create_notebook_instance_errors() :: resource_limit_exceeded()

  @type create_notebook_instance_lifecycle_config_errors() :: resource_limit_exceeded()

  @type create_optimization_job_errors() :: resource_limit_exceeded() | resource_in_use()

  @type create_pipeline_errors() ::
          resource_limit_exceeded() | conflict_exception() | resource_not_found()

  @type create_presigned_domain_url_errors() :: resource_not_found()

  @type create_presigned_mlflow_tracking_server_url_errors() :: resource_not_found()

  @type create_processing_job_errors() ::
          resource_limit_exceeded() | resource_in_use() | resource_not_found()

  @type create_project_errors() :: resource_limit_exceeded()

  @type create_space_errors() :: resource_limit_exceeded() | resource_in_use()

  @type create_studio_lifecycle_config_errors() :: resource_in_use()

  @type create_training_job_errors() ::
          resource_limit_exceeded() | resource_in_use() | resource_not_found()

  @type create_transform_job_errors() ::
          resource_limit_exceeded() | resource_in_use() | resource_not_found()

  @type create_trial_errors() :: resource_limit_exceeded() | resource_not_found()

  @type create_trial_component_errors() :: resource_limit_exceeded()

  @type create_user_profile_errors() :: resource_limit_exceeded() | resource_in_use()

  @type create_workteam_errors() :: resource_limit_exceeded() | resource_in_use()

  @type delete_action_errors() :: resource_not_found()

  @type delete_algorithm_errors() :: conflict_exception()

  @type delete_app_errors() :: resource_in_use() | resource_not_found()

  @type delete_app_image_config_errors() :: resource_not_found()

  @type delete_artifact_errors() :: resource_not_found()

  @type delete_association_errors() :: resource_not_found()

  @type delete_cluster_errors() :: conflict_exception() | resource_not_found()

  @type delete_compilation_job_errors() :: resource_not_found()

  @type delete_context_errors() :: resource_not_found()

  @type delete_data_quality_job_definition_errors() :: resource_not_found()

  @type delete_device_fleet_errors() :: resource_in_use()

  @type delete_domain_errors() :: resource_in_use() | resource_not_found()

  @type delete_edge_deployment_plan_errors() :: resource_in_use()

  @type delete_edge_deployment_stage_errors() :: resource_in_use()

  @type delete_experiment_errors() :: resource_not_found()

  @type delete_feature_group_errors() :: resource_not_found()

  @type delete_flow_definition_errors() :: resource_in_use() | resource_not_found()

  @type delete_hub_errors() :: resource_in_use() | resource_not_found()

  @type delete_hub_content_errors() :: resource_in_use() | resource_not_found()

  @type delete_hub_content_reference_errors() :: resource_not_found()

  @type delete_human_task_ui_errors() :: resource_not_found()

  @type delete_image_errors() :: resource_in_use() | resource_not_found()

  @type delete_image_version_errors() :: resource_in_use() | resource_not_found()

  @type delete_inference_experiment_errors() :: conflict_exception() | resource_not_found()

  @type delete_mlflow_tracking_server_errors() :: resource_not_found()

  @type delete_model_bias_job_definition_errors() :: resource_not_found()

  @type delete_model_card_errors() :: conflict_exception() | resource_not_found()

  @type delete_model_explainability_job_definition_errors() :: resource_not_found()

  @type delete_model_package_errors() :: conflict_exception()

  @type delete_model_package_group_errors() :: conflict_exception()

  @type delete_model_quality_job_definition_errors() :: resource_not_found()

  @type delete_monitoring_schedule_errors() :: resource_not_found()

  @type delete_optimization_job_errors() :: resource_not_found()

  @type delete_pipeline_errors() :: conflict_exception() | resource_not_found()

  @type delete_project_errors() :: conflict_exception()

  @type delete_space_errors() :: resource_in_use() | resource_not_found()

  @type delete_studio_lifecycle_config_errors() :: resource_in_use() | resource_not_found()

  @type delete_trial_errors() :: resource_not_found()

  @type delete_trial_component_errors() :: resource_not_found()

  @type delete_user_profile_errors() :: resource_in_use() | resource_not_found()

  @type delete_workteam_errors() :: resource_limit_exceeded()

  @type describe_action_errors() :: resource_not_found()

  @type describe_app_errors() :: resource_not_found()

  @type describe_app_image_config_errors() :: resource_not_found()

  @type describe_artifact_errors() :: resource_not_found()

  @type describe_auto_ml_job_errors() :: resource_not_found()

  @type describe_auto_ml_job_v2_errors() :: resource_not_found()

  @type describe_cluster_errors() :: resource_not_found()

  @type describe_cluster_node_errors() :: resource_not_found()

  @type describe_compilation_job_errors() :: resource_not_found()

  @type describe_context_errors() :: resource_not_found()

  @type describe_data_quality_job_definition_errors() :: resource_not_found()

  @type describe_device_errors() :: resource_not_found()

  @type describe_device_fleet_errors() :: resource_not_found()

  @type describe_domain_errors() :: resource_not_found()

  @type describe_edge_deployment_plan_errors() :: resource_not_found()

  @type describe_edge_packaging_job_errors() :: resource_not_found()

  @type describe_experiment_errors() :: resource_not_found()

  @type describe_feature_group_errors() :: resource_not_found()

  @type describe_feature_metadata_errors() :: resource_not_found()

  @type describe_flow_definition_errors() :: resource_not_found()

  @type describe_hub_errors() :: resource_not_found()

  @type describe_hub_content_errors() :: resource_not_found()

  @type describe_human_task_ui_errors() :: resource_not_found()

  @type describe_hyper_parameter_tuning_job_errors() :: resource_not_found()

  @type describe_image_errors() :: resource_not_found()

  @type describe_image_version_errors() :: resource_not_found()

  @type describe_inference_experiment_errors() :: resource_not_found()

  @type describe_inference_recommendations_job_errors() :: resource_not_found()

  @type describe_labeling_job_errors() :: resource_not_found()

  @type describe_lineage_group_errors() :: resource_not_found()

  @type describe_mlflow_tracking_server_errors() :: resource_not_found()

  @type describe_model_bias_job_definition_errors() :: resource_not_found()

  @type describe_model_card_errors() :: resource_not_found()

  @type describe_model_card_export_job_errors() :: resource_not_found()

  @type describe_model_explainability_job_definition_errors() :: resource_not_found()

  @type describe_model_quality_job_definition_errors() :: resource_not_found()

  @type describe_monitoring_schedule_errors() :: resource_not_found()

  @type describe_optimization_job_errors() :: resource_not_found()

  @type describe_pipeline_errors() :: resource_not_found()

  @type describe_pipeline_definition_for_execution_errors() :: resource_not_found()

  @type describe_pipeline_execution_errors() :: resource_not_found()

  @type describe_processing_job_errors() :: resource_not_found()

  @type describe_space_errors() :: resource_not_found()

  @type describe_studio_lifecycle_config_errors() :: resource_not_found()

  @type describe_training_job_errors() :: resource_not_found()

  @type describe_transform_job_errors() :: resource_not_found()

  @type describe_trial_errors() :: resource_not_found()

  @type describe_trial_component_errors() :: resource_not_found()

  @type describe_user_profile_errors() :: resource_limit_exceeded() | resource_not_found()

  @type disassociate_trial_component_errors() :: resource_not_found()

  @type get_lineage_group_policy_errors() :: resource_not_found()

  @type get_scaling_configuration_recommendation_errors() :: resource_not_found()

  @type import_hub_content_errors() ::
          resource_limit_exceeded() | resource_in_use() | resource_not_found()

  @type list_actions_errors() :: resource_not_found()

  @type list_aliases_errors() :: resource_not_found()

  @type list_artifacts_errors() :: resource_not_found()

  @type list_associations_errors() :: resource_not_found()

  @type list_candidates_for_auto_ml_job_errors() :: resource_not_found()

  @type list_cluster_nodes_errors() :: resource_not_found()

  @type list_contexts_errors() :: resource_not_found()

  @type list_hub_content_versions_errors() :: resource_not_found()

  @type list_hub_contents_errors() :: resource_not_found()

  @type list_image_versions_errors() :: resource_not_found()

  @type list_inference_recommendations_job_steps_errors() :: resource_not_found()

  @type list_labeling_jobs_for_workteam_errors() :: resource_not_found()

  @type list_model_card_versions_errors() :: resource_not_found()

  @type list_monitoring_alert_history_errors() :: resource_not_found()

  @type list_monitoring_alerts_errors() :: resource_not_found()

  @type list_pipeline_execution_steps_errors() :: resource_not_found()

  @type list_pipeline_executions_errors() :: resource_not_found()

  @type list_pipeline_parameters_for_execution_errors() :: resource_not_found()

  @type list_studio_lifecycle_configs_errors() :: resource_in_use()

  @type list_training_jobs_for_hyper_parameter_tuning_job_errors() :: resource_not_found()

  @type list_trial_components_errors() :: resource_not_found()

  @type list_trials_errors() :: resource_not_found()

  @type put_model_package_group_policy_errors() :: conflict_exception()

  @type query_lineage_errors() :: resource_not_found()

  @type register_devices_errors() :: resource_limit_exceeded()

  @type render_ui_template_errors() :: resource_not_found()

  @type retry_pipeline_execution_errors() ::
          resource_limit_exceeded() | conflict_exception() | resource_not_found()

  @type send_pipeline_execution_step_failure_errors() ::
          resource_limit_exceeded() | conflict_exception() | resource_not_found()

  @type send_pipeline_execution_step_success_errors() ::
          resource_limit_exceeded() | conflict_exception() | resource_not_found()

  @type start_inference_experiment_errors() :: conflict_exception() | resource_not_found()

  @type start_mlflow_tracking_server_errors() :: conflict_exception() | resource_not_found()

  @type start_monitoring_schedule_errors() :: resource_not_found()

  @type start_notebook_instance_errors() :: resource_limit_exceeded()

  @type start_pipeline_execution_errors() ::
          resource_limit_exceeded() | conflict_exception() | resource_not_found()

  @type stop_auto_ml_job_errors() :: resource_not_found()

  @type stop_compilation_job_errors() :: resource_not_found()

  @type stop_hyper_parameter_tuning_job_errors() :: resource_not_found()

  @type stop_inference_experiment_errors() :: conflict_exception() | resource_not_found()

  @type stop_inference_recommendations_job_errors() :: resource_not_found()

  @type stop_labeling_job_errors() :: resource_not_found()

  @type stop_mlflow_tracking_server_errors() :: conflict_exception() | resource_not_found()

  @type stop_monitoring_schedule_errors() :: resource_not_found()

  @type stop_optimization_job_errors() :: resource_not_found()

  @type stop_pipeline_execution_errors() :: conflict_exception() | resource_not_found()

  @type stop_processing_job_errors() :: resource_not_found()

  @type stop_training_job_errors() :: resource_not_found()

  @type stop_transform_job_errors() :: resource_not_found()

  @type update_action_errors() :: conflict_exception() | resource_not_found()

  @type update_app_image_config_errors() :: resource_not_found()

  @type update_artifact_errors() :: conflict_exception() | resource_not_found()

  @type update_cluster_errors() ::
          resource_limit_exceeded() | conflict_exception() | resource_not_found()

  @type update_cluster_software_errors() :: conflict_exception() | resource_not_found()

  @type update_code_repository_errors() :: conflict_exception()

  @type update_context_errors() :: conflict_exception() | resource_not_found()

  @type update_device_fleet_errors() :: resource_in_use()

  @type update_domain_errors() ::
          resource_limit_exceeded() | resource_in_use() | resource_not_found()

  @type update_endpoint_errors() :: resource_limit_exceeded()

  @type update_endpoint_weights_and_capacities_errors() :: resource_limit_exceeded()

  @type update_experiment_errors() :: conflict_exception() | resource_not_found()

  @type update_feature_group_errors() :: resource_limit_exceeded() | resource_not_found()

  @type update_feature_metadata_errors() :: resource_not_found()

  @type update_hub_errors() :: resource_not_found()

  @type update_image_errors() :: resource_in_use() | resource_not_found()

  @type update_image_version_errors() :: resource_in_use() | resource_not_found()

  @type update_inference_component_errors() :: resource_limit_exceeded()

  @type update_inference_component_runtime_config_errors() :: resource_limit_exceeded()

  @type update_inference_experiment_errors() :: conflict_exception() | resource_not_found()

  @type update_mlflow_tracking_server_errors() ::
          resource_limit_exceeded() | conflict_exception() | resource_not_found()

  @type update_model_card_errors() ::
          resource_limit_exceeded() | conflict_exception() | resource_not_found()

  @type update_model_package_errors() :: conflict_exception()

  @type update_monitoring_alert_errors() :: resource_limit_exceeded() | resource_not_found()

  @type update_monitoring_schedule_errors() :: resource_limit_exceeded() | resource_not_found()

  @type update_notebook_instance_errors() :: resource_limit_exceeded()

  @type update_notebook_instance_lifecycle_config_errors() :: resource_limit_exceeded()

  @type update_pipeline_errors() :: conflict_exception() | resource_not_found()

  @type update_pipeline_execution_errors() :: conflict_exception() | resource_not_found()

  @type update_project_errors() :: conflict_exception()

  @type update_space_errors() ::
          resource_limit_exceeded() | resource_in_use() | resource_not_found()

  @type update_training_job_errors() :: resource_limit_exceeded() | resource_not_found()

  @type update_trial_errors() :: conflict_exception() | resource_not_found()

  @type update_trial_component_errors() :: conflict_exception() | resource_not_found()

  @type update_user_profile_errors() ::
          resource_limit_exceeded() | resource_in_use() | resource_not_found()

  @type update_workforce_errors() :: conflict_exception()

  @type update_workteam_errors() :: resource_limit_exceeded()

  def metadata do
    %{
      api_version: "2017-07-24",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "api.sagemaker",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "SageMaker",
      signature_version: "v4",
      signing_name: "sagemaker",
      target_prefix: "SageMaker"
    }
  end

  @doc """
  Creates an *association* between the source and the destination.

  A
  source can be associated with multiple destinations, and a destination can be
  associated
  with multiple sources. An association is a lineage tracking entity. For more
  information, see
  [Amazon SageMaker ML Lineage
  Tracking](https://docs.aws.amazon.com/sagemaker/latest/dg/lineage-tracking.html).
  """
  @spec add_association(map(), add_association_request(), list()) ::
          {:ok, add_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, add_association_errors()}
  def add_association(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AddAssociation", input, options)
  end

  @doc """
  Adds or overwrites one or more tags for the specified SageMaker resource.

  You can add
  tags to notebook instances, training jobs, hyperparameter tuning jobs, batch
  transform
  jobs, models, labeling jobs, work teams, endpoint configurations, and
  endpoints.

  Each tag consists of a key and an optional value. Tag keys must be unique per
  resource. For more information about tags, see For more information, see [Amazon Web Services Tagging
  Strategies](https://aws.amazon.com/answers/account-management/aws-tagging-strategies/).

  Tags that you add to a hyperparameter tuning job by calling this API are also
  added to any training jobs that the hyperparameter tuning job launches after you
  call this API, but not to training jobs that the hyperparameter tuning job
  launched
  before you called this API. To make sure that the tags associated with a
  hyperparameter tuning job are also added to all training jobs that the
  hyperparameter tuning job launches, add the tags when you first create the
  tuning
  job by specifying them in the `Tags` parameter of
  [CreateHyperParameterTuningJob](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateHyperParameterTuningJob.html) 

  Tags that you add to a SageMaker Domain or User Profile by calling this API are
  also added to any Apps that the Domain or User Profile launches after you call
  this
  API, but not to Apps that the Domain or User Profile launched before you called
  this
  API. To make sure that the tags associated with a Domain or User Profile are
  also
  added to all Apps that the Domain or User Profile launches, add the tags when
  you
  first create the Domain or User Profile by specifying them in the `Tags`
  parameter of
  [CreateDomain](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateDomain.html)
  or
  [CreateUserProfile](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateUserProfile.html).
  """
  @spec add_tags(map(), add_tags_input(), list()) ::
          {:ok, add_tags_output(), any()}
          | {:error, {:unexpected_response, any()}}
  def add_tags(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AddTags", input, options)
  end

  @doc """
  Associates a trial component with a trial.

  A trial component can be associated with
  multiple trials. To disassociate a trial component from a trial, call the
  [DisassociateTrialComponent](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DisassociateTrialComponent.html)
  API.
  """
  @spec associate_trial_component(map(), associate_trial_component_request(), list()) ::
          {:ok, associate_trial_component_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_trial_component_errors()}
  def associate_trial_component(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssociateTrialComponent", input, options)
  end

  @doc """
  This action batch describes a list of versioned model packages
  """
  @spec batch_describe_model_package(map(), batch_describe_model_package_input(), list()) ::
          {:ok, batch_describe_model_package_output(), any()}
          | {:error, {:unexpected_response, any()}}
  def batch_describe_model_package(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchDescribeModelPackage", input, options)
  end

  @doc """
  Creates an *action*.

  An action is a lineage tracking entity that
  represents an action or activity. For example, a model deployment or an HPO job.
  Generally, an action involves at least one input or output artifact. For more
  information, see
  [Amazon SageMaker ML Lineage
  Tracking](https://docs.aws.amazon.com/sagemaker/latest/dg/lineage-tracking.html).
  """
  @spec create_action(map(), create_action_request(), list()) ::
          {:ok, create_action_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_action_errors()}
  def create_action(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateAction", input, options)
  end

  @doc """
  Create a machine learning algorithm that you can use in SageMaker and list in
  the Amazon Web Services Marketplace.
  """
  @spec create_algorithm(map(), create_algorithm_input(), list()) ::
          {:ok, create_algorithm_output(), any()}
          | {:error, {:unexpected_response, any()}}
  def create_algorithm(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateAlgorithm", input, options)
  end

  @doc """
  Creates a running app for the specified UserProfile.

  This operation is automatically
  invoked by Amazon SageMaker upon access to the associated Domain, and when new
  kernel
  configurations are selected by the user. A user may have multiple Apps active
  simultaneously.
  """
  @spec create_app(map(), create_app_request(), list()) ::
          {:ok, create_app_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_app_errors()}
  def create_app(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateApp", input, options)
  end

  @doc """
  Creates a configuration for running a SageMaker image as a KernelGateway app.

  The
  configuration specifies the Amazon Elastic File System storage volume on the
  image, and a list of the
  kernels in the image.
  """
  @spec create_app_image_config(map(), create_app_image_config_request(), list()) ::
          {:ok, create_app_image_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_app_image_config_errors()}
  def create_app_image_config(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateAppImageConfig", input, options)
  end

  @doc """
  Creates an *artifact*.

  An artifact is a lineage tracking entity that
  represents a URI addressable object or data. Some examples are the S3 URI of a
  dataset and
  the ECR registry path of an image. For more information, see
  [Amazon SageMaker ML Lineage
  Tracking](https://docs.aws.amazon.com/sagemaker/latest/dg/lineage-tracking.html).
  """
  @spec create_artifact(map(), create_artifact_request(), list()) ::
          {:ok, create_artifact_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_artifact_errors()}
  def create_artifact(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateArtifact", input, options)
  end

  @doc """
  Creates an Autopilot job also referred to as Autopilot experiment or AutoML job.

  An AutoML job in SageMaker is a fully automated process that allows you to build
  machine
  learning models with minimal effort and machine learning expertise. When
  initiating an
  AutoML job, you provide your data and optionally specify parameters tailored to
  your use
  case. SageMaker then automates the entire model development lifecycle, including
  data
  preprocessing, model training, tuning, and evaluation. AutoML jobs are designed
  to simplify
  and accelerate the model building process by automating various tasks and
  exploring
  different combinations of machine learning algorithms, data preprocessing
  techniques, and
  hyperparameter values. The output of an AutoML job comprises one or more trained
  models
  ready for deployment and inference. Additionally, SageMaker AutoML jobs generate
  a candidate
  model leaderboard, allowing you to select the best-performing model for
  deployment.

  For more information about AutoML jobs, see
  [https://docs.aws.amazon.com/sagemaker/latest/dg/autopilot-automate-model-development.html](https://docs.aws.amazon.com/sagemaker/latest/dg/autopilot-automate-model-development.html) in the SageMaker developer guide.

  We recommend using the new versions
  [CreateAutoMLJobV2](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateAutoMLJobV2.html)
  and
  [DescribeAutoMLJobV2](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DescribeAutoMLJobV2.html), which offer backward compatibility.

  `CreateAutoMLJobV2` can manage tabular problem types identical to those of
  its previous version `CreateAutoMLJob`, as well as time-series forecasting,
  non-tabular problem types such as image or text classification, and text
  generation
  (LLMs fine-tuning).

  Find guidelines about how to migrate a `CreateAutoMLJob` to
  `CreateAutoMLJobV2` in [Migrate a CreateAutoMLJob to
  CreateAutoMLJobV2](https://docs.aws.amazon.com/sagemaker/latest/dg/autopilot-automate-model-development-create-experiment.html#autopilot-create-experiment-api-migrate-v1-v2).

  You can find the best-performing model after you run an AutoML job by calling
  [DescribeAutoMLJobV2](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DescribeAutoMLJobV2.html) (recommended) or
  [DescribeAutoMLJob](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DescribeAutoMLJob.html).
  """
  @spec create_auto_ml_job(map(), create_auto_ml_job_request(), list()) ::
          {:ok, create_auto_ml_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_auto_ml_job_errors()}
  def create_auto_ml_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateAutoMLJob", input, options)
  end

  @doc """
  Creates an Autopilot job also referred to as Autopilot experiment or AutoML job
  V2.

  An AutoML job in SageMaker is a fully automated process that allows you to build
  machine
  learning models with minimal effort and machine learning expertise. When
  initiating an
  AutoML job, you provide your data and optionally specify parameters tailored to
  your use
  case. SageMaker then automates the entire model development lifecycle, including
  data
  preprocessing, model training, tuning, and evaluation. AutoML jobs are designed
  to simplify
  and accelerate the model building process by automating various tasks and
  exploring
  different combinations of machine learning algorithms, data preprocessing
  techniques, and
  hyperparameter values. The output of an AutoML job comprises one or more trained
  models
  ready for deployment and inference. Additionally, SageMaker AutoML jobs generate
  a candidate
  model leaderboard, allowing you to select the best-performing model for
  deployment.

  For more information about AutoML jobs, see
  [https://docs.aws.amazon.com/sagemaker/latest/dg/autopilot-automate-model-development.html](https://docs.aws.amazon.com/sagemaker/latest/dg/autopilot-automate-model-development.html) in the SageMaker developer guide.

  AutoML jobs V2 support various problem types such as regression, binary, and
  multiclass
  classification with tabular data, text and image classification, time-series
  forecasting,
  and fine-tuning of large language models (LLMs) for text generation.

  [CreateAutoMLJobV2](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateAutoMLJobV2.html)
  and
  [DescribeAutoMLJobV2](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DescribeAutoMLJobV2.html) are new versions of
  [CreateAutoMLJob](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateAutoMLJob.html)
  and
  [DescribeAutoMLJob](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DescribeAutoMLJob.html) which offer backward compatibility.

  `CreateAutoMLJobV2` can manage tabular problem types identical to those of
  its previous version `CreateAutoMLJob`, as well as time-series forecasting,
  non-tabular problem types such as image or text classification, and text
  generation
  (LLMs fine-tuning).

  Find guidelines about how to migrate a `CreateAutoMLJob` to
  `CreateAutoMLJobV2` in [Migrate a CreateAutoMLJob to
  CreateAutoMLJobV2](https://docs.aws.amazon.com/sagemaker/latest/dg/autopilot-automate-model-development-create-experiment.html#autopilot-create-experiment-api-migrate-v1-v2).

  For the list of available problem types supported by `CreateAutoMLJobV2`, see
  [AutoMLProblemTypeConfig](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_AutoMLProblemTypeConfig.html). 
  You can find the best-performing model after you run an AutoML job V2 by calling
  [DescribeAutoMLJobV2](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DescribeAutoMLJobV2.html).
  """
  @spec create_auto_ml_job_v2(map(), create_auto_ml_job_v2_request(), list()) ::
          {:ok, create_auto_ml_job_v2_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_auto_ml_job_v2_errors()}
  def create_auto_ml_job_v2(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateAutoMLJobV2", input, options)
  end

  @doc """
  Creates a SageMaker HyperPod cluster.

  SageMaker HyperPod is a capability of SageMaker for creating and managing
  persistent clusters for developing large machine learning models, such as large
  language
  models (LLMs) and diffusion models. To learn more, see [Amazon SageMaker HyperPod](https://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-hyperpod.html)
  in the
  *Amazon SageMaker Developer Guide*.
  """
  @spec create_cluster(map(), create_cluster_request(), list()) ::
          {:ok, create_cluster_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_cluster_errors()}
  def create_cluster(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateCluster", input, options)
  end

  @doc """
  Creates a Git repository as a resource in your SageMaker account.

  You can associate the
  repository with notebook instances so that you can use Git source control for
  the
  notebooks you create. The Git repository is a resource in your SageMaker
  account, so it can
  be associated with more than one notebook instance, and it persists
  independently from
  the lifecycle of any notebook instances it is associated with.

  The repository can be hosted either in [Amazon Web Services CodeCommit](https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html)
  or in any other Git repository.
  """
  @spec create_code_repository(map(), create_code_repository_input(), list()) ::
          {:ok, create_code_repository_output(), any()}
          | {:error, {:unexpected_response, any()}}
  def create_code_repository(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateCodeRepository", input, options)
  end

  @doc """
  Starts a model compilation job.

  After the model has been compiled, Amazon SageMaker saves the
  resulting model artifacts to an Amazon Simple Storage Service (Amazon S3) bucket
  that you specify.

  If
  you choose to host your model using Amazon SageMaker hosting services, you can
  use the resulting
  model artifacts as part of the model. You can also use the artifacts with
  Amazon Web Services IoT Greengrass. In that case, deploy them as an ML
  resource.

  In the request body, you provide the following:

    *
  A name for the compilation job

    *
  Information about the input model artifacts

    *
  The output location for the compiled model and the device (target) that the
  model runs on

    *
  The Amazon Resource Name (ARN) of the IAM role that Amazon SageMaker assumes to
  perform
  the model compilation job.

  You can also provide a `Tag` to track the model compilation job's resource
  use and costs. The response body contains the
  `CompilationJobArn`
  for the compiled job.

  To stop a model compilation job, use
  [StopCompilationJob](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_StopCompilationJob.html). To get information about a particular model compilation
  job, use
  [DescribeCompilationJob](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DescribeCompilationJob.html).
  To get information about multiple model compilation
  jobs, use
  [ListCompilationJobs](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_ListCompilationJobs.html).
  """
  @spec create_compilation_job(map(), create_compilation_job_request(), list()) ::
          {:ok, create_compilation_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_compilation_job_errors()}
  def create_compilation_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateCompilationJob", input, options)
  end

  @doc """
  Creates a *context*.

  A context is a lineage tracking entity that
  represents a logical grouping of other tracking or experiment entities. Some
  examples are
  an endpoint and a model package. For more information, see
  [Amazon SageMaker ML Lineage
  Tracking](https://docs.aws.amazon.com/sagemaker/latest/dg/lineage-tracking.html).
  """
  @spec create_context(map(), create_context_request(), list()) ::
          {:ok, create_context_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_context_errors()}
  def create_context(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateContext", input, options)
  end

  @doc """
  Creates a definition for a job that monitors data quality and drift.

  For information
  about model monitor, see [Amazon SageMaker Model Monitor](https://docs.aws.amazon.com/sagemaker/latest/dg/model-monitor.html).
  """
  @spec create_data_quality_job_definition(
          map(),
          create_data_quality_job_definition_request(),
          list()
        ) ::
          {:ok, create_data_quality_job_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_data_quality_job_definition_errors()}
  def create_data_quality_job_definition(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateDataQualityJobDefinition", input, options)
  end

  @doc """
  Creates a device fleet.
  """
  @spec create_device_fleet(map(), create_device_fleet_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_device_fleet_errors()}
  def create_device_fleet(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateDeviceFleet", input, options)
  end

  @doc """
  Creates a `Domain`.

  A domain consists of an associated Amazon Elastic File System
  volume, a list of authorized users, and a variety of security, application,
  policy, and
  Amazon Virtual Private Cloud (VPC) configurations. Users within a domain can
  share notebook files
  and other artifacts with each other.

  ## EFS storage

  When a domain is created, an EFS volume is created for use by all of the users
  within the
  domain. Each user receives a private home directory within the EFS volume for
  notebooks, Git
  repositories, and data files.

  SageMaker uses the Amazon Web Services Key Management Service (Amazon Web
  Services
  KMS) to encrypt the EFS volume attached to the domain with an Amazon Web
  Services managed key
  by default. For more control, you can specify a customer managed key. For more
  information,
  see [Protect Data at Rest Using
  Encryption](https://docs.aws.amazon.com/sagemaker/latest/dg/encryption-at-rest.html).

  ## VPC configuration

  All traffic between the domain and the Amazon EFS volume is through the
  specified
  VPC and subnets. For other traffic, you can specify the `AppNetworkAccessType`
  parameter. `AppNetworkAccessType` corresponds to the network access type that
  you
  choose when you onboard to the domain. The following options are available:

    *

  `PublicInternetOnly` - Non-EFS traffic goes through a VPC managed by
  Amazon SageMaker, which allows internet access. This is the default value.

    *

  `VpcOnly` - All traffic is through the specified VPC and subnets. Internet
  access is disabled by default. To allow internet access, you must specify a NAT
  gateway.

  When internet access is disabled, you won't be able to run a Amazon SageMaker
  Studio notebook or to train or host models unless your VPC has an interface
  endpoint to
  the SageMaker API and runtime or a NAT gateway and your security groups allow
  outbound connections.

  NFS traffic over TCP on port 2049 needs to be allowed in both inbound and
  outbound rules
  in order to launch a Amazon SageMaker Studio app successfully.

  For more information, see [Connect Amazon SageMaker Studio Notebooks to Resources in a
  VPC](https://docs.aws.amazon.com/sagemaker/latest/dg/studio-notebooks-and-internet-access.html).
  """
  @spec create_domain(map(), create_domain_request(), list()) ::
          {:ok, create_domain_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_domain_errors()}
  def create_domain(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateDomain", input, options)
  end

  @doc """
  Creates an edge deployment plan, consisting of multiple stages.

  Each stage may have a
  different deployment configuration and devices.
  """
  @spec create_edge_deployment_plan(map(), create_edge_deployment_plan_request(), list()) ::
          {:ok, create_edge_deployment_plan_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_edge_deployment_plan_errors()}
  def create_edge_deployment_plan(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateEdgeDeploymentPlan", input, options)
  end

  @doc """
  Creates a new stage in an existing edge deployment plan.
  """
  @spec create_edge_deployment_stage(map(), create_edge_deployment_stage_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_edge_deployment_stage_errors()}
  def create_edge_deployment_stage(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateEdgeDeploymentStage", input, options)
  end

  @doc """
  Starts a SageMaker Edge Manager model packaging job.

  Edge Manager will use the model artifacts from the Amazon Simple Storage Service
  bucket that you specify. After the model has been packaged, Amazon SageMaker
  saves the resulting artifacts to an S3 bucket that you specify.
  """
  @spec create_edge_packaging_job(map(), create_edge_packaging_job_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_edge_packaging_job_errors()}
  def create_edge_packaging_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateEdgePackagingJob", input, options)
  end

  @doc """
  Creates an endpoint using the endpoint configuration specified in the request.

  SageMaker
  uses the endpoint to provision resources and deploy models. You create the
  endpoint
  configuration with the
  [CreateEndpointConfig](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateEndpointConfig.html) API.

  Use this API to deploy models using SageMaker hosting services.

  You must not delete an `EndpointConfig` that is in use by an endpoint
  that is live or while the `UpdateEndpoint` or `CreateEndpoint`
  operations are being performed on the endpoint. To update an endpoint, you must
  create a new `EndpointConfig`.

  The endpoint name must be unique within an Amazon Web Services Region in your
  Amazon Web Services account.

  When it receives the request, SageMaker creates the endpoint, launches the
  resources (ML
  compute instances), and deploys the model(s) on them.

  When you call
  [CreateEndpoint](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateEndpoint.html),
  a load call is made to DynamoDB to verify that your
  endpoint configuration exists. When you read data from a DynamoDB table
  supporting
  [
  `Eventually Consistent Reads`
  ](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.ReadConsistency.html),
  the response might not
  reflect the results of a recently completed write operation. The response might
  include some stale data. If the dependent entities are not yet in DynamoDB, this
  causes a validation error. If you repeat your read request after a short time,
  the
  response should return the latest data. So retry logic is recommended to handle
  these possible issues. We also recommend that customers call
  [DescribeEndpointConfig](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DescribeEndpointConfig.html) before calling
  [CreateEndpoint](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateEndpoint.html)
  to minimize the potential impact of a DynamoDB
  eventually consistent read.

  When SageMaker receives the request, it sets the endpoint status to
  `Creating`. After it creates the endpoint, it sets the status to
  `InService`. SageMaker can then process incoming requests for inferences. To
  check the status of an endpoint, use the
  [DescribeEndpoint](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DescribeEndpoint.html) API.

  If any of the models hosted at this endpoint get model data from an Amazon S3
  location,
  SageMaker uses Amazon Web Services Security Token Service to download model
  artifacts from the
  S3 path you provided. Amazon Web Services STS is activated in your Amazon Web
  Services
  account by default. If you previously deactivated Amazon Web Services STS for a
  region,
  you need to reactivate Amazon Web Services STS for that region. For more
  information, see
  [Activating and
  Deactivating Amazon Web Services STS in an Amazon Web Services
  Region](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html)
  in the
  *Amazon Web Services Identity and Access Management User
  Guide*.

  To add the IAM role policies for using this API operation, go to the [IAM console](https://console.aws.amazon.com/iam/), and choose
  Roles in the left navigation pane. Search the IAM role that you want to grant
  access to use the
  [CreateEndpoint](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateEndpoint.html) and
  [CreateEndpointConfig](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateEndpointConfig.html)
  API operations, add the following policies to the
  role.

    
  Option 1: For a full SageMaker access, search and attach the
  `AmazonSageMakerFullAccess` policy.

    
  Option 2: For granting a limited access to an IAM role, paste the
  following Action elements manually into the JSON file of the IAM role:

  ```
  "Action": ["sagemaker:CreateEndpoint", "sagemaker:CreateEndpointConfig"]
  ```

  `"Resource": [` 

  `"arn:aws:sagemaker:region:account-id:endpoint/endpointName"`

  `"arn:aws:sagemaker:region:account-id:endpoint-config/endpointConfigName"`

  `]`

  For more information, see [SageMaker API Permissions: Actions, Permissions, and Resources
  Reference](https://docs.aws.amazon.com/sagemaker/latest/dg/api-permissions-reference.html).
  """
  @spec create_endpoint(map(), create_endpoint_input(), list()) ::
          {:ok, create_endpoint_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_endpoint_errors()}
  def create_endpoint(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateEndpoint", input, options)
  end

  @doc """
  Creates an endpoint configuration that SageMaker hosting services uses to deploy
  models.

  In
  the configuration, you identify one or more models, created using the
  `CreateModel` API, to deploy and the resources that you want SageMaker to
  provision. Then you call the
  [CreateEndpoint](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateEndpoint.html) API.

  Use this API if you want to use SageMaker hosting services to deploy models into
  production.

  In the request, you define a `ProductionVariant`, for each model that you
  want to deploy. Each `ProductionVariant` parameter also describes the
  resources that you want SageMaker to provision. This includes the number and
  type of ML
  compute instances to deploy.

  If you are hosting multiple models, you also assign a `VariantWeight` to
  specify how much traffic you want to allocate to each model. For example,
  suppose that
  you want to host two models, A and B, and you assign traffic weight 2 for model
  A and 1
  for model B. SageMaker distributes two-thirds of the traffic to Model A, and
  one-third to
  model B.

  When you call
  [CreateEndpoint](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateEndpoint.html),
  a load call is made to DynamoDB to verify that your
  endpoint configuration exists. When you read data from a DynamoDB table
  supporting
  [
  `Eventually Consistent Reads`
  ](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.ReadConsistency.html),
  the response might not
  reflect the results of a recently completed write operation. The response might
  include some stale data. If the dependent entities are not yet in DynamoDB, this
  causes a validation error. If you repeat your read request after a short time,
  the
  response should return the latest data. So retry logic is recommended to handle
  these possible issues. We also recommend that customers call
  [DescribeEndpointConfig](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DescribeEndpointConfig.html) before calling
  [CreateEndpoint](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateEndpoint.html)
  to minimize the potential impact of a DynamoDB
  eventually consistent read.
  """
  @spec create_endpoint_config(map(), create_endpoint_config_input(), list()) ::
          {:ok, create_endpoint_config_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_endpoint_config_errors()}
  def create_endpoint_config(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateEndpointConfig", input, options)
  end

  @doc """
  Creates a SageMaker *experiment*.

  An experiment is a collection of
  *trials* that are observed, compared and evaluated as a group. A trial is
  a set of steps, called *trial components*, that produce a machine learning
  model.

  In the Studio UI, trials are referred to as *run groups* and trial
  components are referred to as *runs*.

  The goal of an experiment is to determine the components that produce the best
  model.
  Multiple trials are performed, each one isolating and measuring the impact of a
  change to one
  or more inputs, while keeping the remaining inputs constant.

  When you use SageMaker Studio or the SageMaker Python SDK, all experiments,
  trials, and trial
  components are automatically tracked, logged, and indexed. When you use the
  Amazon Web Services SDK for Python (Boto), you
  must use the logging APIs provided by the SDK.

  You can add tags to experiments, trials, trial components and then use the
  [Search](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_Search.html) API to search for the tags.

  To add a description to an experiment, specify the optional `Description`
  parameter. To add a description later, or to change the description, call the
  [UpdateExperiment](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_UpdateExperiment.html)
  API.

  To get a list of all your experiments, call the
  [ListExperiments](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_ListExperiments.html) API. To
  view an experiment's properties, call the
  [DescribeExperiment](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DescribeExperiment.html)
  API. To get a
  list of all the trials associated with an experiment, call the
  [ListTrials](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_ListTrials.html) API. To create a trial call the
  [CreateTrial](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateTrial.html)
  API.
  """
  @spec create_experiment(map(), create_experiment_request(), list()) ::
          {:ok, create_experiment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_experiment_errors()}
  def create_experiment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateExperiment", input, options)
  end

  @doc """
  Create a new `FeatureGroup`.

  A `FeatureGroup` is a group of
  `Features` defined in the `FeatureStore` to describe a
  `Record`.

  The `FeatureGroup` defines the schema and features contained in the
  `FeatureGroup`. A `FeatureGroup` definition is composed of a list
  of `Features`, a `RecordIdentifierFeatureName`, an
  `EventTimeFeatureName` and configurations for its `OnlineStore`
  and `OfflineStore`. Check [Amazon Web Services service quotas](https://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html)
  to see the `FeatureGroup`s quota for your Amazon Web Services
  account.

  Note that it can take approximately 10-15 minutes to provision an
  `OnlineStore`
  `FeatureGroup` with the `InMemory`
  `StorageType`.

  You must include at least one of `OnlineStoreConfig` and
  `OfflineStoreConfig` to create a `FeatureGroup`.
  """
  @spec create_feature_group(map(), create_feature_group_request(), list()) ::
          {:ok, create_feature_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_feature_group_errors()}
  def create_feature_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateFeatureGroup", input, options)
  end

  @doc """
  Creates a flow definition.
  """
  @spec create_flow_definition(map(), create_flow_definition_request(), list()) ::
          {:ok, create_flow_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_flow_definition_errors()}
  def create_flow_definition(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateFlowDefinition", input, options)
  end

  @doc """
  Create a hub.
  """
  @spec create_hub(map(), create_hub_request(), list()) ::
          {:ok, create_hub_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_hub_errors()}
  def create_hub(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateHub", input, options)
  end

  @doc """
  Create a hub content reference in order to add a model in the JumpStart public
  hub to a private hub.
  """
  @spec create_hub_content_reference(map(), create_hub_content_reference_request(), list()) ::
          {:ok, create_hub_content_reference_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_hub_content_reference_errors()}
  def create_hub_content_reference(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateHubContentReference", input, options)
  end

  @doc """
  Defines the settings you will use for the human review workflow user interface.

  Reviewers will see a three-panel interface with an instruction area, the item to
  review, and an input area.
  """
  @spec create_human_task_ui(map(), create_human_task_ui_request(), list()) ::
          {:ok, create_human_task_ui_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_human_task_ui_errors()}
  def create_human_task_ui(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateHumanTaskUi", input, options)
  end

  @doc """
  Starts a hyperparameter tuning job.

  A hyperparameter tuning job finds the best version
  of a model by running many training jobs on your dataset using the algorithm you
  choose
  and values for hyperparameters within ranges that you specify. It then chooses
  the
  hyperparameter values that result in a model that performs the best, as measured
  by an
  objective metric that you choose.

  A hyperparameter tuning job automatically creates Amazon SageMaker experiments,
  trials, and
  trial components for each training job that it runs. You can view these entities
  in
  Amazon SageMaker Studio. For more information, see [View Experiments, Trials, and Trial
  Components](https://docs.aws.amazon.com/sagemaker/latest/dg/experiments-view-compare.html#experiments-view).

  Do not include any security-sensitive information including account access IDs,
  secrets or tokens in any hyperparameter field. If the use of security-sensitive
  credentials are detected, SageMaker will reject your training job request and
  return an
  exception error.
  """
  @spec create_hyper_parameter_tuning_job(
          map(),
          create_hyper_parameter_tuning_job_request(),
          list()
        ) ::
          {:ok, create_hyper_parameter_tuning_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_hyper_parameter_tuning_job_errors()}
  def create_hyper_parameter_tuning_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateHyperParameterTuningJob", input, options)
  end

  @doc """
  Creates a custom SageMaker image.

  A SageMaker image is a set of image versions. Each image
  version represents a container image stored in Amazon ECR. For more information,
  see
  [Bring your own SageMaker image](https://docs.aws.amazon.com/sagemaker/latest/dg/studio-byoi.html).
  """
  @spec create_image(map(), create_image_request(), list()) ::
          {:ok, create_image_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_image_errors()}
  def create_image(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateImage", input, options)
  end

  @doc """
  Creates a version of the SageMaker image specified by `ImageName`.

  The version
  represents the Amazon ECR container image specified by `BaseImage`.
  """
  @spec create_image_version(map(), create_image_version_request(), list()) ::
          {:ok, create_image_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_image_version_errors()}
  def create_image_version(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateImageVersion", input, options)
  end

  @doc """
  Creates an inference component, which is a SageMaker hosting object that you can
  use to deploy a model to an endpoint.

  In the inference component settings, you specify the
  model, the endpoint, and how the model utilizes the resources that the endpoint
  hosts. You
  can optimize resource utilization by tailoring how the required CPU cores,
  accelerators,
  and memory are allocated. You can deploy multiple inference components to an
  endpoint,
  where each inference component contains one model and the resource utilization
  needs for
  that individual model. After you deploy an inference component, you can directly
  invoke the
  associated model when you use the InvokeEndpoint API action.
  """
  @spec create_inference_component(map(), create_inference_component_input(), list()) ::
          {:ok, create_inference_component_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_inference_component_errors()}
  def create_inference_component(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateInferenceComponent", input, options)
  end

  @doc """

  Creates an inference experiment using the configurations specified in the
  request.

  Use this API to setup and schedule an experiment to compare model variants on a
  Amazon SageMaker inference endpoint. For
  more information about inference experiments, see [Shadow tests](https://docs.aws.amazon.com/sagemaker/latest/dg/shadow-tests.html).

  Amazon SageMaker begins your experiment at the scheduled time and routes traffic
  to your endpoint's model variants based
  on your specified configuration.

  While the experiment is in progress or after it has concluded, you can view
  metrics that compare your model
  variants. For more information, see [View, monitor, and edit shadow tests](https://docs.aws.amazon.com/sagemaker/latest/dg/shadow-tests-view-monitor-edit.html).
  """
  @spec create_inference_experiment(map(), create_inference_experiment_request(), list()) ::
          {:ok, create_inference_experiment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_inference_experiment_errors()}
  def create_inference_experiment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateInferenceExperiment", input, options)
  end

  @doc """
  Starts a recommendation job.

  You can create either an instance
  recommendation or load test job.
  """
  @spec create_inference_recommendations_job(
          map(),
          create_inference_recommendations_job_request(),
          list()
        ) ::
          {:ok, create_inference_recommendations_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_inference_recommendations_job_errors()}
  def create_inference_recommendations_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateInferenceRecommendationsJob", input, options)
  end

  @doc """
  Creates a job that uses workers to label the data objects in your input dataset.

  You
  can use the labeled data to train machine learning models.

  You can select your workforce from one of three providers:

    *
  A private workforce that you create. It can include employees, contractors,
  and outside experts. Use a private workforce when want the data to stay within
  your organization or when a specific set of skills is required.

    *
  One or more vendors that you select from the Amazon Web Services Marketplace.
  Vendors provide
  expertise in specific areas.

    *
  The Amazon Mechanical Turk workforce. This is the largest workforce, but it
  should only be used for public data or data that has been stripped of any
  personally identifiable information.

  You can also use *automated data labeling* to reduce the number of
  data objects that need to be labeled by a human. Automated data labeling uses
  *active learning* to determine if a data object can be labeled by
  machine or if it needs to be sent to a human worker. For more information, see
  [Using Automated Data
  Labeling](https://docs.aws.amazon.com/sagemaker/latest/dg/sms-automated-labeling.html).

  The data objects to be labeled are contained in an Amazon S3 bucket. You create
  a
  *manifest file* that describes the location of each object. For
  more information, see [Using Input and Output Data](https://docs.aws.amazon.com/sagemaker/latest/dg/sms-data.html).

  The output can be used as the manifest file for another labeling job or as
  training
  data for your machine learning models.

  You can use this operation to create a static labeling job or a streaming
  labeling
  job. A static labeling job stops if all data objects in the input manifest file
  identified in `ManifestS3Uri` have been labeled. A streaming labeling job
  runs perpetually until it is manually stopped, or remains idle for 10 days. You
  can send
  new data objects to an active (`InProgress`) streaming labeling job in real
  time. To learn how to create a static labeling job, see [Create a Labeling Job (API)
  ](https://docs.aws.amazon.com/sagemaker/latest/dg/sms-create-labeling-job-api.html)
  in the Amazon SageMaker Developer Guide. To learn how to create a streaming
  labeling job, see [Create a Streaming Labeling Job](https://docs.aws.amazon.com/sagemaker/latest/dg/sms-streaming-create-job.html).
  """
  @spec create_labeling_job(map(), create_labeling_job_request(), list()) ::
          {:ok, create_labeling_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_labeling_job_errors()}
  def create_labeling_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateLabelingJob", input, options)
  end

  @doc """
  Creates an MLflow Tracking Server using a general purpose Amazon S3 bucket as
  the artifact
  store.

  For more information, see [Create an MLflow Tracking Server](https://docs.aws.amazon.com/sagemaker/latest/dg/mlflow-create-tracking-server.html).
  """
  @spec create_mlflow_tracking_server(map(), create_mlflow_tracking_server_request(), list()) ::
          {:ok, create_mlflow_tracking_server_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_mlflow_tracking_server_errors()}
  def create_mlflow_tracking_server(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateMlflowTrackingServer", input, options)
  end

  @doc """
  Creates a model in SageMaker.

  In the request, you name the model and describe a primary
  container. For the primary container, you specify the Docker image that
  contains inference code, artifacts (from prior training), and a custom
  environment map
  that the inference code uses when you deploy the model for predictions.

  Use this API to create a model if you want to use SageMaker hosting services or
  run a batch
  transform job.

  To host your model, you create an endpoint configuration with the
  `CreateEndpointConfig` API, and then create an endpoint with the
  `CreateEndpoint` API. SageMaker then deploys all of the containers that you
  defined for the model in the hosting environment.

  To run a batch transform using your model, you start a job with the
  `CreateTransformJob` API. SageMaker uses your model and your dataset to get
  inferences which are then saved to a specified S3 location.

  In the request, you also provide an IAM role that SageMaker can assume to access
  model
  artifacts and docker image for deployment on ML compute hosting instances or for
  batch
  transform jobs. In addition, you also use the IAM role to manage permissions the
  inference code needs. For example, if the inference code access any other Amazon
  Web Services resources, you grant necessary permissions via this role.
  """
  @spec create_model(map(), create_model_input(), list()) ::
          {:ok, create_model_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_model_errors()}
  def create_model(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateModel", input, options)
  end

  @doc """
  Creates the definition for a model bias job.
  """
  @spec create_model_bias_job_definition(
          map(),
          create_model_bias_job_definition_request(),
          list()
        ) ::
          {:ok, create_model_bias_job_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_model_bias_job_definition_errors()}
  def create_model_bias_job_definition(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateModelBiasJobDefinition", input, options)
  end

  @doc """
  Creates an Amazon SageMaker Model Card.

  For information about how to use model cards, see [Amazon SageMaker Model Card](https://docs.aws.amazon.com/sagemaker/latest/dg/model-cards.html).
  """
  @spec create_model_card(map(), create_model_card_request(), list()) ::
          {:ok, create_model_card_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_model_card_errors()}
  def create_model_card(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateModelCard", input, options)
  end

  @doc """
  Creates an Amazon SageMaker Model Card export job.
  """
  @spec create_model_card_export_job(map(), create_model_card_export_job_request(), list()) ::
          {:ok, create_model_card_export_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_model_card_export_job_errors()}
  def create_model_card_export_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateModelCardExportJob", input, options)
  end

  @doc """
  Creates the definition for a model explainability job.
  """
  @spec create_model_explainability_job_definition(
          map(),
          create_model_explainability_job_definition_request(),
          list()
        ) ::
          {:ok, create_model_explainability_job_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_model_explainability_job_definition_errors()}
  def create_model_explainability_job_definition(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateModelExplainabilityJobDefinition", input, options)
  end

  @doc """
  Creates a model package that you can use to create SageMaker models or list on
  Amazon Web Services
  Marketplace, or a versioned model that is part of a model group.

  Buyers can subscribe to
  model packages listed on Amazon Web Services Marketplace to create models in
  SageMaker.

  To create a model package by specifying a Docker container that contains your
  inference code and the Amazon S3 location of your model artifacts, provide
  values for
  `InferenceSpecification`. To create a model from an algorithm resource
  that you created or subscribed to in Amazon Web Services Marketplace, provide a
  value for
  `SourceAlgorithmSpecification`.

  There are two types of model packages:

    
  Versioned - a model that is part of a model group in the model
  registry.

    
  Unversioned - a model package that is not part of a model group.
  """
  @spec create_model_package(map(), create_model_package_input(), list()) ::
          {:ok, create_model_package_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_model_package_errors()}
  def create_model_package(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateModelPackage", input, options)
  end

  @doc """
  Creates a model group.

  A model group contains a group of model versions.
  """
  @spec create_model_package_group(map(), create_model_package_group_input(), list()) ::
          {:ok, create_model_package_group_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_model_package_group_errors()}
  def create_model_package_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateModelPackageGroup", input, options)
  end

  @doc """
  Creates a definition for a job that monitors model quality and drift.

  For information
  about model monitor, see [Amazon SageMaker Model Monitor](https://docs.aws.amazon.com/sagemaker/latest/dg/model-monitor.html).
  """
  @spec create_model_quality_job_definition(
          map(),
          create_model_quality_job_definition_request(),
          list()
        ) ::
          {:ok, create_model_quality_job_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_model_quality_job_definition_errors()}
  def create_model_quality_job_definition(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateModelQualityJobDefinition", input, options)
  end

  @doc """
  Creates a schedule that regularly starts Amazon SageMaker Processing Jobs to
  monitor the data captured for an Amazon SageMaker Endpoint.
  """
  @spec create_monitoring_schedule(map(), create_monitoring_schedule_request(), list()) ::
          {:ok, create_monitoring_schedule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_monitoring_schedule_errors()}
  def create_monitoring_schedule(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateMonitoringSchedule", input, options)
  end

  @doc """
  Creates an SageMaker notebook instance.

  A notebook instance is a machine learning (ML)
  compute instance running on a Jupyter notebook.

  In a `CreateNotebookInstance` request, specify the type of ML compute
  instance that you want to run. SageMaker launches the instance, installs common
  libraries
  that you can use to explore datasets for model training, and attaches an ML
  storage
  volume to the notebook instance.

  SageMaker also provides a set of example notebooks. Each notebook demonstrates
  how to
  use SageMaker with a specific algorithm or with a machine learning framework.

  After receiving the request, SageMaker does the following:

    1.
  Creates a network interface in the SageMaker VPC.

    2.
  (Option) If you specified `SubnetId`, SageMaker creates a network
  interface in your own VPC, which is inferred from the subnet ID that you provide
  in the input. When creating this network interface, SageMaker attaches the
  security
  group that you specified in the request to the network interface that it creates
  in your VPC.

    3.
  Launches an EC2 instance of the type specified in the request in the SageMaker
  VPC. If you specified `SubnetId` of your VPC, SageMaker specifies both
  network interfaces when launching this instance. This enables inbound traffic
  from your own VPC to the notebook instance, assuming that the security groups
  allow it.

  After creating the notebook instance, SageMaker returns its Amazon Resource Name
  (ARN).
  You can't change the name of a notebook instance after you create it.

  After SageMaker creates the notebook instance, you can connect to the Jupyter
  server and
  work in Jupyter notebooks. For example, you can write code to explore a dataset
  that you
  can use for model training, train a model, host models by creating SageMaker
  endpoints, and
  validate hosted models.

  For more information, see [How It Works](https://docs.aws.amazon.com/sagemaker/latest/dg/how-it-works.html).
  """
  @spec create_notebook_instance(map(), create_notebook_instance_input(), list()) ::
          {:ok, create_notebook_instance_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_notebook_instance_errors()}
  def create_notebook_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateNotebookInstance", input, options)
  end

  @doc """
  Creates a lifecycle configuration that you can associate with a notebook
  instance.

  A
  *lifecycle configuration* is a collection of shell scripts that
  run when you create or start a notebook instance.

  Each lifecycle configuration script has a limit of 16384 characters.

  The value of the `$PATH` environment variable that is available to both
  scripts is `/sbin:bin:/usr/sbin:/usr/bin`.

  View Amazon CloudWatch Logs for notebook instance lifecycle configurations in
  log group
  `/aws/sagemaker/NotebookInstances` in log stream
  `[notebook-instance-name]/[LifecycleConfigHook]`.   Lifecycle configuration scripts cannot run for longer than 5 minutes. If a
  script runs
  for longer than 5 minutes, it fails and the notebook instance is not created or
  started.

  For information about notebook instance lifestyle configurations, see [Step
  2.1: (Optional) Customize a Notebook
  Instance](https://docs.aws.amazon.com/sagemaker/latest/dg/notebook-lifecycle-config.html).
  """
  @spec create_notebook_instance_lifecycle_config(
          map(),
          create_notebook_instance_lifecycle_config_input(),
          list()
        ) ::
          {:ok, create_notebook_instance_lifecycle_config_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_notebook_instance_lifecycle_config_errors()}
  def create_notebook_instance_lifecycle_config(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateNotebookInstanceLifecycleConfig", input, options)
  end

  @doc """
  Creates a job that optimizes a model for inference performance.

  To create the job, you
  provide the location of a source model, and you provide the settings for the
  optimization
  techniques that you want the job to apply. When the job completes successfully,
  SageMaker
  uploads the new optimized model to the output destination that you specify.

  For more information about how to use this action, and about the supported
  optimization
  techniques, see [Optimize model inference with Amazon SageMaker](https://docs.aws.amazon.com/sagemaker/latest/dg/model-optimize.html).
  """
  @spec create_optimization_job(map(), create_optimization_job_request(), list()) ::
          {:ok, create_optimization_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_optimization_job_errors()}
  def create_optimization_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateOptimizationJob", input, options)
  end

  @doc """
  Creates a pipeline using a JSON pipeline definition.
  """
  @spec create_pipeline(map(), create_pipeline_request(), list()) ::
          {:ok, create_pipeline_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_pipeline_errors()}
  def create_pipeline(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreatePipeline", input, options)
  end

  @doc """
  Creates a URL for a specified UserProfile in a Domain.

  When accessed in a web browser, the
  user will be automatically signed in to the domain, and granted access to all of
  the Apps and
  files associated with the Domain's Amazon Elastic File System volume. This
  operation can only be
  called when the authentication mode equals IAM.

  The IAM role or user passed to this API defines the permissions to access
  the app. Once the presigned URL is created, no additional permission is required
  to access
  this URL. IAM authorization policies for this API are also enforced for every
  HTTP request and WebSocket frame that attempts to connect to the app.

  You can restrict access to this API and to the URL that it returns to a list of
  IP
  addresses, Amazon VPCs or Amazon VPC Endpoints that you specify. For more
  information, see [Connect to Amazon SageMaker Studio Through an Interface VPC
  Endpoint](https://docs.aws.amazon.com/sagemaker/latest/dg/studio-interface-endpoint.html)
  .

  The URL that you get from a call to `CreatePresignedDomainUrl` has a default
  timeout of 5 minutes. You can configure this value using `ExpiresInSeconds`. If
  you try to use the URL after the timeout limit expires, you are directed to the
  Amazon Web Services console sign-in page.
  """
  @spec create_presigned_domain_url(map(), create_presigned_domain_url_request(), list()) ::
          {:ok, create_presigned_domain_url_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_presigned_domain_url_errors()}
  def create_presigned_domain_url(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreatePresignedDomainUrl", input, options)
  end

  @doc """
  Returns a presigned URL that you can use to connect to the MLflow UI attached to
  your
  tracking server.

  For more information, see [Launch the MLflow UI using a presigned URL](https://docs.aws.amazon.com/sagemaker/latest/dg/mlflow-launch-ui.html).
  """
  @spec create_presigned_mlflow_tracking_server_url(
          map(),
          create_presigned_mlflow_tracking_server_url_request(),
          list()
        ) ::
          {:ok, create_presigned_mlflow_tracking_server_url_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_presigned_mlflow_tracking_server_url_errors()}
  def create_presigned_mlflow_tracking_server_url(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreatePresignedMlflowTrackingServerUrl", input, options)
  end

  @doc """
  Returns a URL that you can use to connect to the Jupyter server from a notebook
  instance.

  In the SageMaker console, when you choose `Open` next to a notebook
  instance, SageMaker opens a new tab showing the Jupyter server home page from
  the notebook
  instance. The console uses this API to get the URL and show the page.

  The IAM role or user used to call this API defines the permissions to access the
  notebook instance. Once the presigned URL is created, no additional permission
  is
  required to access this URL. IAM authorization policies for this API are also
  enforced
  for every HTTP request and WebSocket frame that attempts to connect to the
  notebook
  instance.

  You can restrict access to this API and to the URL that it returns to a list of
  IP
  addresses that you specify. Use the `NotIpAddress` condition operator and the
  `aws:SourceIP` condition context key to specify the list of IP addresses
  that you want to have access to the notebook instance. For more information, see
  [Limit Access to a Notebook Instance by IP Address](https://docs.aws.amazon.com/sagemaker/latest/dg/security_iam_id-based-policy-examples.html#nbi-ip-filter).

  The URL that you get from a call to
  [CreatePresignedNotebookInstanceUrl](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreatePresignedNotebookInstanceUrl.html)
  is valid only for 5 minutes. If you
  try to use the URL after the 5-minute limit expires, you are directed to the
  Amazon Web Services console sign-in page.
  """
  @spec create_presigned_notebook_instance_url(
          map(),
          create_presigned_notebook_instance_url_input(),
          list()
        ) ::
          {:ok, create_presigned_notebook_instance_url_output(), any()}
          | {:error, {:unexpected_response, any()}}
  def create_presigned_notebook_instance_url(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreatePresignedNotebookInstanceUrl", input, options)
  end

  @doc """
  Creates a processing job.
  """
  @spec create_processing_job(map(), create_processing_job_request(), list()) ::
          {:ok, create_processing_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_processing_job_errors()}
  def create_processing_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateProcessingJob", input, options)
  end

  @doc """
  Creates a machine learning (ML) project that can contain one or more templates
  that set
  up an ML pipeline from training to deploying an approved model.
  """
  @spec create_project(map(), create_project_input(), list()) ::
          {:ok, create_project_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_project_errors()}
  def create_project(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateProject", input, options)
  end

  @doc """
  Creates a private space or a space used for real time collaboration in a domain.
  """
  @spec create_space(map(), create_space_request(), list()) ::
          {:ok, create_space_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_space_errors()}
  def create_space(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateSpace", input, options)
  end

  @doc """
  Creates a new Amazon SageMaker Studio Lifecycle Configuration.
  """
  @spec create_studio_lifecycle_config(map(), create_studio_lifecycle_config_request(), list()) ::
          {:ok, create_studio_lifecycle_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_studio_lifecycle_config_errors()}
  def create_studio_lifecycle_config(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateStudioLifecycleConfig", input, options)
  end

  @doc """
  Starts a model training job.

  After training completes, SageMaker saves the resulting
  model artifacts to an Amazon S3 location that you specify.

  If you choose to host your model using SageMaker hosting services, you can use
  the
  resulting model artifacts as part of the model. You can also use the artifacts
  in a
  machine learning service other than SageMaker, provided that you know how to use
  them for
  inference.

  In the request body, you provide the following:

    *

  `AlgorithmSpecification` - Identifies the training algorithm to
  use.

    *

  `HyperParameters` - Specify these algorithm-specific parameters to
  enable the estimation of model parameters during training. Hyperparameters can
  be tuned to optimize this learning process. For a list of hyperparameters for
  each training algorithm provided by SageMaker, see
  [Algorithms](https://docs.aws.amazon.com/sagemaker/latest/dg/algos.html). 
  Do not include any security-sensitive information including account access
  IDs, secrets or tokens in any hyperparameter field. If the use of
  security-sensitive credentials are detected, SageMaker will reject your training
  job request and return an exception error.

    *

  `InputDataConfig` - Describes the input required by the training
  job and the Amazon S3, EFS, or FSx location where it is stored.

    *

  `OutputDataConfig` - Identifies the Amazon S3 bucket where you want
  SageMaker to save the results of model training.

    *

  `ResourceConfig` - Identifies the resources, ML compute
  instances, and ML storage volumes to deploy for model training. In distributed
  training, you specify more than one instance.

    *

  `EnableManagedSpotTraining` - Optimize the cost of training machine
  learning models by up to 80% by using Amazon EC2 Spot instances. For more
  information, see [Managed Spot
  Training](https://docs.aws.amazon.com/sagemaker/latest/dg/model-managed-spot-training.html).

    *

  `RoleArn` - The Amazon Resource Name (ARN) that SageMaker assumes to perform
  tasks on
  your behalf during model training.

  You must grant this role the necessary permissions so that SageMaker can
  successfully
  complete model training.

    *

  `StoppingCondition` - To help cap training costs, use
  `MaxRuntimeInSeconds` to set a time limit for training. Use
  `MaxWaitTimeInSeconds` to specify how long a managed spot
  training job has to complete.

    *

  `Environment` - The environment variables to set in the Docker
  container.

    *

  `RetryStrategy` - The number of times to retry the job when the job
  fails due to an `InternalServerError`.

  For more information about SageMaker, see [How It Works](https://docs.aws.amazon.com/sagemaker/latest/dg/how-it-works.html).
  """
  @spec create_training_job(map(), create_training_job_request(), list()) ::
          {:ok, create_training_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_training_job_errors()}
  def create_training_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateTrainingJob", input, options)
  end

  @doc """
  Starts a transform job.

  A transform job uses a trained model to get inferences on a
  dataset and saves these results to an Amazon S3 location that you specify.

  To perform batch transformations, you create a transform job and use the data
  that you
  have readily available.

  In the request body, you provide the following:

    *

  `TransformJobName` - Identifies the transform job. The name must be
  unique within an Amazon Web Services Region in an Amazon Web Services account.

    *

  `ModelName` - Identifies the model to use. `ModelName`
  must be the name of an existing Amazon SageMaker model in the same Amazon Web
  Services Region and Amazon Web Services
  account. For information on creating a model, see
  [CreateModel](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateModel.html). 

    *

  `TransformInput` - Describes the dataset to be transformed and the
  Amazon S3 location where it is stored.

    *

  `TransformOutput` - Identifies the Amazon S3 location where you want
  Amazon SageMaker to save the results from the transform job.

    *

  `TransformResources` - Identifies the ML compute instances for the
  transform job.

  For more information about how batch transformation works, see [Batch
  Transform](https://docs.aws.amazon.com/sagemaker/latest/dg/batch-transform.html).
  """
  @spec create_transform_job(map(), create_transform_job_request(), list()) ::
          {:ok, create_transform_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_transform_job_errors()}
  def create_transform_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateTransformJob", input, options)
  end

  @doc """
  Creates an SageMaker *trial*.

  A trial is a set of steps called
  *trial components* that produce a machine learning model. A trial is part
  of a single SageMaker *experiment*.

  When you use SageMaker Studio or the SageMaker Python SDK, all experiments,
  trials, and trial
  components are automatically tracked, logged, and indexed. When you use the
  Amazon Web Services SDK for Python (Boto), you
  must use the logging APIs provided by the SDK.

  You can add tags to a trial and then use the
  [Search](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_Search.html) API to search for
  the tags.

  To get a list of all your trials, call the
  [ListTrials](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_ListTrials.html)
  API. To view a
  trial's properties, call the
  [DescribeTrial](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DescribeTrial.html) API. To create a trial component,
  call the
  [CreateTrialComponent](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateTrialComponent.html)
  API.
  """
  @spec create_trial(map(), create_trial_request(), list()) ::
          {:ok, create_trial_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_trial_errors()}
  def create_trial(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateTrial", input, options)
  end

  @doc """
  Creates a *trial component*, which is a stage of a machine learning
  *trial*.

  A trial is composed of one or more trial components. A trial
  component can be used in multiple trials.

  Trial components include pre-processing jobs, training jobs, and batch transform
  jobs.

  When you use SageMaker Studio or the SageMaker Python SDK, all experiments,
  trials, and trial
  components are automatically tracked, logged, and indexed. When you use the
  Amazon Web Services SDK for Python (Boto), you
  must use the logging APIs provided by the SDK.

  You can add tags to a trial component and then use the
  [Search](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_Search.html)
  API to
  search for the tags.
  """
  @spec create_trial_component(map(), create_trial_component_request(), list()) ::
          {:ok, create_trial_component_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_trial_component_errors()}
  def create_trial_component(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateTrialComponent", input, options)
  end

  @doc """
  Creates a user profile.

  A user profile represents a single user within a domain, and is
  the main way to reference a "person" for the purposes of sharing, reporting, and
  other
  user-oriented features. This entity is created when a user onboards to a domain.
  If an
  administrator invites a person by email or imports them from IAM Identity
  Center, a user
  profile is automatically created. A user profile is the primary holder of
  settings for an
  individual user and has a reference to the user's private Amazon Elastic File
  System home
  directory.
  """
  @spec create_user_profile(map(), create_user_profile_request(), list()) ::
          {:ok, create_user_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_user_profile_errors()}
  def create_user_profile(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateUserProfile", input, options)
  end

  @doc """
  Use this operation to create a workforce.

  This operation will return an error
  if a workforce already exists in the Amazon Web Services Region that you
  specify. You can only
  create one workforce in each Amazon Web Services Region per Amazon Web Services
  account.

  If you want to create a new workforce in an Amazon Web Services Region where
  a workforce already exists, use the
  [DeleteWorkforce](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DeleteWorkforce.html) API
  operation to delete the existing workforce and then use `CreateWorkforce`
  to create a new workforce.

  To create a private workforce using Amazon Cognito, you must specify a Cognito
  user pool
  in `CognitoConfig`.
  You can also create an Amazon Cognito workforce using the Amazon SageMaker
  console.
  For more information, see
  [
  Create a Private Workforce (Amazon
  Cognito)](https://docs.aws.amazon.com/sagemaker/latest/dg/sms-workforce-create-private.html).

  To create a private workforce using your own OIDC Identity Provider (IdP),
  specify your IdP
  configuration in `OidcConfig`. Your OIDC IdP must support *groups*
  because groups are used by Ground Truth and Amazon A2I to create work teams.
  For more information, see [
  Create a Private Workforce (OIDC
  IdP)](https://docs.aws.amazon.com/sagemaker/latest/dg/sms-workforce-create-private-oidc.html).
  """
  @spec create_workforce(map(), create_workforce_request(), list()) ::
          {:ok, create_workforce_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def create_workforce(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateWorkforce", input, options)
  end

  @doc """
  Creates a new work team for labeling your data.

  A work team is defined by one or more
  Amazon Cognito user pools. You must first create the user pools before you can
  create a work
  team.

  You cannot create more than 25 work teams in an account and region.
  """
  @spec create_workteam(map(), create_workteam_request(), list()) ::
          {:ok, create_workteam_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_workteam_errors()}
  def create_workteam(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateWorkteam", input, options)
  end

  @doc """
  Deletes an action.
  """
  @spec delete_action(map(), delete_action_request(), list()) ::
          {:ok, delete_action_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_action_errors()}
  def delete_action(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteAction", input, options)
  end

  @doc """
  Removes the specified algorithm from your account.
  """
  @spec delete_algorithm(map(), delete_algorithm_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_algorithm_errors()}
  def delete_algorithm(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteAlgorithm", input, options)
  end

  @doc """
  Used to stop and delete an app.
  """
  @spec delete_app(map(), delete_app_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_app_errors()}
  def delete_app(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteApp", input, options)
  end

  @doc """
  Deletes an AppImageConfig.
  """
  @spec delete_app_image_config(map(), delete_app_image_config_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_app_image_config_errors()}
  def delete_app_image_config(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteAppImageConfig", input, options)
  end

  @doc """
  Deletes an artifact.

  Either `ArtifactArn` or `Source` must be
  specified.
  """
  @spec delete_artifact(map(), delete_artifact_request(), list()) ::
          {:ok, delete_artifact_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_artifact_errors()}
  def delete_artifact(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteArtifact", input, options)
  end

  @doc """
  Deletes an association.
  """
  @spec delete_association(map(), delete_association_request(), list()) ::
          {:ok, delete_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_association_errors()}
  def delete_association(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteAssociation", input, options)
  end

  @doc """
  Delete a SageMaker HyperPod cluster.
  """
  @spec delete_cluster(map(), delete_cluster_request(), list()) ::
          {:ok, delete_cluster_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_cluster_errors()}
  def delete_cluster(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteCluster", input, options)
  end

  @doc """
  Deletes the specified Git repository from your account.
  """
  @spec delete_code_repository(map(), delete_code_repository_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
  def delete_code_repository(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteCodeRepository", input, options)
  end

  @doc """
  Deletes the specified compilation job.

  This action deletes only the compilation job
  resource in Amazon SageMaker. It doesn't delete other resources that are related
  to
  that job, such as the model artifacts that the job creates, the compilation logs
  in
  CloudWatch, the compiled model, or the IAM role.

  You can delete a compilation job only if its current status is `COMPLETED`,
  `FAILED`, or `STOPPED`. If the job status is
  `STARTING` or `INPROGRESS`, stop the job, and then delete it
  after its status becomes `STOPPED`.
  """
  @spec delete_compilation_job(map(), delete_compilation_job_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_compilation_job_errors()}
  def delete_compilation_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteCompilationJob", input, options)
  end

  @doc """
  Deletes an context.
  """
  @spec delete_context(map(), delete_context_request(), list()) ::
          {:ok, delete_context_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_context_errors()}
  def delete_context(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteContext", input, options)
  end

  @doc """
  Deletes a data quality monitoring job definition.
  """
  @spec delete_data_quality_job_definition(
          map(),
          delete_data_quality_job_definition_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_data_quality_job_definition_errors()}
  def delete_data_quality_job_definition(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteDataQualityJobDefinition", input, options)
  end

  @doc """
  Deletes a fleet.
  """
  @spec delete_device_fleet(map(), delete_device_fleet_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_device_fleet_errors()}
  def delete_device_fleet(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteDeviceFleet", input, options)
  end

  @doc """
  Used to delete a domain.

  If you onboarded with IAM mode, you will need to delete your
  domain to onboard again using IAM Identity Center. Use with caution. All of the
  members of the
  domain will lose access to their EFS volume, including data, notebooks, and
  other artifacts.
  """
  @spec delete_domain(map(), delete_domain_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_domain_errors()}
  def delete_domain(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteDomain", input, options)
  end

  @doc """
  Deletes an edge deployment plan if (and only if) all the stages in the plan are
  inactive or there are no stages in the plan.
  """
  @spec delete_edge_deployment_plan(map(), delete_edge_deployment_plan_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_edge_deployment_plan_errors()}
  def delete_edge_deployment_plan(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteEdgeDeploymentPlan", input, options)
  end

  @doc """
  Delete a stage in an edge deployment plan if (and only if) the stage is
  inactive.
  """
  @spec delete_edge_deployment_stage(map(), delete_edge_deployment_stage_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_edge_deployment_stage_errors()}
  def delete_edge_deployment_stage(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteEdgeDeploymentStage", input, options)
  end

  @doc """
  Deletes an endpoint.

  SageMaker frees up all of the resources that were deployed when the
  endpoint was created.

  SageMaker retires any custom KMS key grants associated with the endpoint,
  meaning you don't
  need to use the
  [RevokeGrant](http://docs.aws.amazon.com/kms/latest/APIReference/API_RevokeGrant.html) API call.

  When you delete your endpoint, SageMaker asynchronously deletes associated
  endpoint
  resources such as KMS key grants. You might still see these resources in your
  account
  for a few minutes after deleting your endpoint. Do not delete or revoke the
  permissions
  for your

  ```

  [ExecutionRoleArn](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateModel.html#sagemaker-CreateModel-request-ExecutionRoleArn)

  ```

  , otherwise SageMaker cannot delete these
  resources.
  """
  @spec delete_endpoint(map(), delete_endpoint_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
  def delete_endpoint(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteEndpoint", input, options)
  end

  @doc """
  Deletes an endpoint configuration.

  The `DeleteEndpointConfig` API
  deletes only the specified configuration. It does not delete endpoints created
  using the
  configuration.

  You must not delete an `EndpointConfig` in use by an endpoint that is
  live or while the `UpdateEndpoint` or `CreateEndpoint` operations
  are being performed on the endpoint. If you delete the `EndpointConfig` of an
  endpoint that is active or being created or updated you may lose visibility into
  the
  instance type the endpoint is using. The endpoint must be deleted in order to
  stop
  incurring charges.
  """
  @spec delete_endpoint_config(map(), delete_endpoint_config_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
  def delete_endpoint_config(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteEndpointConfig", input, options)
  end

  @doc """
  Deletes an SageMaker experiment.

  All trials associated with the experiment must be deleted
  first. Use the
  [ListTrials](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_ListTrials.html)
  API to get a list of the trials associated with
  the experiment.
  """
  @spec delete_experiment(map(), delete_experiment_request(), list()) ::
          {:ok, delete_experiment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_experiment_errors()}
  def delete_experiment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteExperiment", input, options)
  end

  @doc """
  Delete the `FeatureGroup` and any data that was written to the
  `OnlineStore` of the `FeatureGroup`.

  Data cannot be accessed from
  the `OnlineStore` immediately after `DeleteFeatureGroup` is called.

  Data written into the `OfflineStore` will not be deleted. The Amazon Web
  Services Glue database and tables that are automatically created for your
  `OfflineStore` are not deleted.

  Note that it can take approximately 10-15 minutes to delete an `OnlineStore`
  `FeatureGroup` with the `InMemory`
  `StorageType`.
  """
  @spec delete_feature_group(map(), delete_feature_group_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_feature_group_errors()}
  def delete_feature_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteFeatureGroup", input, options)
  end

  @doc """
  Deletes the specified flow definition.
  """
  @spec delete_flow_definition(map(), delete_flow_definition_request(), list()) ::
          {:ok, delete_flow_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_flow_definition_errors()}
  def delete_flow_definition(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteFlowDefinition", input, options)
  end

  @doc """
  Delete a hub.
  """
  @spec delete_hub(map(), delete_hub_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_hub_errors()}
  def delete_hub(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteHub", input, options)
  end

  @doc """
  Delete the contents of a hub.
  """
  @spec delete_hub_content(map(), delete_hub_content_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_hub_content_errors()}
  def delete_hub_content(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteHubContent", input, options)
  end

  @doc """
  Delete a hub content reference in order to remove a model from a private hub.
  """
  @spec delete_hub_content_reference(map(), delete_hub_content_reference_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_hub_content_reference_errors()}
  def delete_hub_content_reference(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteHubContentReference", input, options)
  end

  @doc """
  Use this operation to delete a human task user interface (worker task template).

  To see a list of human task user interfaces
  (work task templates) in your account, use
  [ListHumanTaskUis](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_ListHumanTaskUis.html).
  When you delete a worker task template, it no longer appears when you call
  `ListHumanTaskUis`.
  """
  @spec delete_human_task_ui(map(), delete_human_task_ui_request(), list()) ::
          {:ok, delete_human_task_ui_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_human_task_ui_errors()}
  def delete_human_task_ui(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteHumanTaskUi", input, options)
  end

  @doc """
  Deletes a hyperparameter tuning job.

  The `DeleteHyperParameterTuningJob`
  API deletes only the tuning job entry that was created in SageMaker when you
  called the
  `CreateHyperParameterTuningJob` API. It does not delete training jobs,
  artifacts, or the IAM role that you specified when creating the model.
  """
  @spec delete_hyper_parameter_tuning_job(
          map(),
          delete_hyper_parameter_tuning_job_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
  def delete_hyper_parameter_tuning_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteHyperParameterTuningJob", input, options)
  end

  @doc """
  Deletes a SageMaker image and all versions of the image.

  The container images aren't
  deleted.
  """
  @spec delete_image(map(), delete_image_request(), list()) ::
          {:ok, delete_image_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_image_errors()}
  def delete_image(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteImage", input, options)
  end

  @doc """
  Deletes a version of a SageMaker image.

  The container image the version represents isn't
  deleted.
  """
  @spec delete_image_version(map(), delete_image_version_request(), list()) ::
          {:ok, delete_image_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_image_version_errors()}
  def delete_image_version(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteImageVersion", input, options)
  end

  @doc """
  Deletes an inference component.
  """
  @spec delete_inference_component(map(), delete_inference_component_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
  def delete_inference_component(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteInferenceComponent", input, options)
  end

  @doc """
  Deletes an inference experiment.

  This operation does not delete your endpoint, variants, or any underlying
  resources. This operation only
  deletes the metadata of your experiment.
  """
  @spec delete_inference_experiment(map(), delete_inference_experiment_request(), list()) ::
          {:ok, delete_inference_experiment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_inference_experiment_errors()}
  def delete_inference_experiment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteInferenceExperiment", input, options)
  end

  @doc """
  Deletes an MLflow Tracking Server.

  For more information, see [Clean up MLflow resources](https://docs.aws.amazon.com/sagemaker/latest/dg/mlflow-cleanup.html.html).
  """
  @spec delete_mlflow_tracking_server(map(), delete_mlflow_tracking_server_request(), list()) ::
          {:ok, delete_mlflow_tracking_server_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_mlflow_tracking_server_errors()}
  def delete_mlflow_tracking_server(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteMlflowTrackingServer", input, options)
  end

  @doc """
  Deletes a model.

  The `DeleteModel` API deletes only the model entry that
  was created in SageMaker when you called the `CreateModel` API. It does not
  delete
  model artifacts, inference code, or the IAM role that you specified when
  creating the
  model.
  """
  @spec delete_model(map(), delete_model_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
  def delete_model(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteModel", input, options)
  end

  @doc """
  Deletes an Amazon SageMaker model bias job definition.
  """
  @spec delete_model_bias_job_definition(
          map(),
          delete_model_bias_job_definition_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_model_bias_job_definition_errors()}
  def delete_model_bias_job_definition(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteModelBiasJobDefinition", input, options)
  end

  @doc """
  Deletes an Amazon SageMaker Model Card.
  """
  @spec delete_model_card(map(), delete_model_card_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_model_card_errors()}
  def delete_model_card(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteModelCard", input, options)
  end

  @doc """
  Deletes an Amazon SageMaker model explainability job definition.
  """
  @spec delete_model_explainability_job_definition(
          map(),
          delete_model_explainability_job_definition_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_model_explainability_job_definition_errors()}
  def delete_model_explainability_job_definition(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteModelExplainabilityJobDefinition", input, options)
  end

  @doc """
  Deletes a model package.

  A model package is used to create SageMaker models or list on Amazon Web
  Services Marketplace. Buyers can
  subscribe to model packages listed on Amazon Web Services Marketplace to create
  models in SageMaker.
  """
  @spec delete_model_package(map(), delete_model_package_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_model_package_errors()}
  def delete_model_package(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteModelPackage", input, options)
  end

  @doc """
  Deletes the specified model group.
  """
  @spec delete_model_package_group(map(), delete_model_package_group_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_model_package_group_errors()}
  def delete_model_package_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteModelPackageGroup", input, options)
  end

  @doc """
  Deletes a model group resource policy.
  """
  @spec delete_model_package_group_policy(
          map(),
          delete_model_package_group_policy_input(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
  def delete_model_package_group_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteModelPackageGroupPolicy", input, options)
  end

  @doc """
  Deletes the secified model quality monitoring job definition.
  """
  @spec delete_model_quality_job_definition(
          map(),
          delete_model_quality_job_definition_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_model_quality_job_definition_errors()}
  def delete_model_quality_job_definition(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteModelQualityJobDefinition", input, options)
  end

  @doc """
  Deletes a monitoring schedule.

  Also stops the schedule had not already been stopped.
  This does not delete the job execution history of the monitoring schedule.
  """
  @spec delete_monitoring_schedule(map(), delete_monitoring_schedule_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_monitoring_schedule_errors()}
  def delete_monitoring_schedule(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteMonitoringSchedule", input, options)
  end

  @doc """
  Deletes an SageMaker notebook instance.

  Before you can delete a notebook instance, you
  must call the `StopNotebookInstance` API.

  When you delete a notebook instance, you lose all of your data. SageMaker
  removes
  the ML compute instance, and deletes the ML storage volume and the network
  interface
  associated with the notebook instance.
  """
  @spec delete_notebook_instance(map(), delete_notebook_instance_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
  def delete_notebook_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteNotebookInstance", input, options)
  end

  @doc """
  Deletes a notebook instance lifecycle configuration.
  """
  @spec delete_notebook_instance_lifecycle_config(
          map(),
          delete_notebook_instance_lifecycle_config_input(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
  def delete_notebook_instance_lifecycle_config(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteNotebookInstanceLifecycleConfig", input, options)
  end

  @doc """
  Deletes an optimization job.
  """
  @spec delete_optimization_job(map(), delete_optimization_job_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_optimization_job_errors()}
  def delete_optimization_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteOptimizationJob", input, options)
  end

  @doc """
  Deletes a pipeline if there are no running instances of the pipeline.

  To delete a
  pipeline, you must stop all running instances of the pipeline using the
  `StopPipelineExecution` API. When you delete a pipeline, all instances of the
  pipeline are deleted.
  """
  @spec delete_pipeline(map(), delete_pipeline_request(), list()) ::
          {:ok, delete_pipeline_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_pipeline_errors()}
  def delete_pipeline(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeletePipeline", input, options)
  end

  @doc """
  Delete the specified project.
  """
  @spec delete_project(map(), delete_project_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_project_errors()}
  def delete_project(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteProject", input, options)
  end

  @doc """
  Used to delete a space.
  """
  @spec delete_space(map(), delete_space_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_space_errors()}
  def delete_space(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteSpace", input, options)
  end

  @doc """
  Deletes the Amazon SageMaker Studio Lifecycle Configuration.

  In order to delete the
  Lifecycle Configuration, there must be no running apps using the Lifecycle
  Configuration. You
  must also remove the Lifecycle Configuration from UserSettings in all Domains
  and
  UserProfiles.
  """
  @spec delete_studio_lifecycle_config(map(), delete_studio_lifecycle_config_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_studio_lifecycle_config_errors()}
  def delete_studio_lifecycle_config(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteStudioLifecycleConfig", input, options)
  end

  @doc """
  Deletes the specified tags from an SageMaker resource.

  To list a resource's tags, use the `ListTags` API.

  When you call this API to delete tags from a hyperparameter tuning job, the
  deleted tags are not removed from training jobs that the hyperparameter tuning
  job
  launched before you called this API.

  When you call this API to delete tags from a SageMaker Domain or User Profile,
  the
  deleted tags are not removed from Apps that the SageMaker Domain or User Profile
  launched before you called this API.
  """
  @spec delete_tags(map(), delete_tags_input(), list()) ::
          {:ok, delete_tags_output(), any()}
          | {:error, {:unexpected_response, any()}}
  def delete_tags(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteTags", input, options)
  end

  @doc """
  Deletes the specified trial.

  All trial components that make up the trial must be deleted
  first. Use the
  [DescribeTrialComponent](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DescribeTrialComponent.html)
  API to get the list of trial
  components.
  """
  @spec delete_trial(map(), delete_trial_request(), list()) ::
          {:ok, delete_trial_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_trial_errors()}
  def delete_trial(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteTrial", input, options)
  end

  @doc """
  Deletes the specified trial component.

  A trial component must be disassociated from all
  trials before the trial component can be deleted. To disassociate a trial
  component from a
  trial, call the
  [DisassociateTrialComponent](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DisassociateTrialComponent.html)
  API.
  """
  @spec delete_trial_component(map(), delete_trial_component_request(), list()) ::
          {:ok, delete_trial_component_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_trial_component_errors()}
  def delete_trial_component(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteTrialComponent", input, options)
  end

  @doc """
  Deletes a user profile.

  When a user profile is deleted, the user loses access to their EFS
  volume, including data, notebooks, and other artifacts.
  """
  @spec delete_user_profile(map(), delete_user_profile_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_user_profile_errors()}
  def delete_user_profile(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteUserProfile", input, options)
  end

  @doc """
  Use this operation to delete a workforce.

  If you want to create a new workforce in an Amazon Web Services Region where
  a workforce already exists, use this operation to delete the
  existing workforce and then use
  [CreateWorkforce](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateWorkforce.html) to create a new workforce.

  If a private workforce contains one or more work teams, you must use
  the
  [DeleteWorkteam](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DeleteWorkteam.html)
  operation to delete all work teams before you delete the workforce.
  If you try to delete a workforce that contains one or more work teams,
  you will receive a `ResourceInUse` error.
  """
  @spec delete_workforce(map(), delete_workforce_request(), list()) ::
          {:ok, delete_workforce_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def delete_workforce(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteWorkforce", input, options)
  end

  @doc """
  Deletes an existing work team.

  This operation can't be undone.
  """
  @spec delete_workteam(map(), delete_workteam_request(), list()) ::
          {:ok, delete_workteam_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_workteam_errors()}
  def delete_workteam(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteWorkteam", input, options)
  end

  @doc """
  Deregisters the specified devices.

  After you deregister a device, you will need to re-register the devices.
  """
  @spec deregister_devices(map(), deregister_devices_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
  def deregister_devices(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeregisterDevices", input, options)
  end

  @doc """
  Describes an action.
  """
  @spec describe_action(map(), describe_action_request(), list()) ::
          {:ok, describe_action_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_action_errors()}
  def describe_action(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAction", input, options)
  end

  @doc """
  Returns a description of the specified algorithm that is in your account.
  """
  @spec describe_algorithm(map(), describe_algorithm_input(), list()) ::
          {:ok, describe_algorithm_output(), any()}
          | {:error, {:unexpected_response, any()}}
  def describe_algorithm(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAlgorithm", input, options)
  end

  @doc """
  Describes the app.
  """
  @spec describe_app(map(), describe_app_request(), list()) ::
          {:ok, describe_app_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_app_errors()}
  def describe_app(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeApp", input, options)
  end

  @doc """
  Describes an AppImageConfig.
  """
  @spec describe_app_image_config(map(), describe_app_image_config_request(), list()) ::
          {:ok, describe_app_image_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_app_image_config_errors()}
  def describe_app_image_config(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAppImageConfig", input, options)
  end

  @doc """
  Describes an artifact.
  """
  @spec describe_artifact(map(), describe_artifact_request(), list()) ::
          {:ok, describe_artifact_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_artifact_errors()}
  def describe_artifact(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeArtifact", input, options)
  end

  @doc """
  Returns information about an AutoML job created by calling
  [CreateAutoMLJob](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateAutoMLJob.html). 

  AutoML jobs created by calling
  [CreateAutoMLJobV2](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateAutoMLJobV2.html)
  cannot be described by
  `DescribeAutoMLJob`.
  """
  @spec describe_auto_ml_job(map(), describe_auto_ml_job_request(), list()) ::
          {:ok, describe_auto_ml_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_auto_ml_job_errors()}
  def describe_auto_ml_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAutoMLJob", input, options)
  end

  @doc """
  Returns information about an AutoML job created by calling
  [CreateAutoMLJobV2](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateAutoMLJobV2.html) or
  [CreateAutoMLJob](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateAutoMLJob.html).
  """
  @spec describe_auto_ml_job_v2(map(), describe_auto_ml_job_v2_request(), list()) ::
          {:ok, describe_auto_ml_job_v2_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_auto_ml_job_v2_errors()}
  def describe_auto_ml_job_v2(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAutoMLJobV2", input, options)
  end

  @doc """
  Retrieves information of a SageMaker HyperPod cluster.
  """
  @spec describe_cluster(map(), describe_cluster_request(), list()) ::
          {:ok, describe_cluster_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_cluster_errors()}
  def describe_cluster(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeCluster", input, options)
  end

  @doc """
  Retrieves information of a node (also called a *instance*
  interchangeably) of a SageMaker HyperPod cluster.
  """
  @spec describe_cluster_node(map(), describe_cluster_node_request(), list()) ::
          {:ok, describe_cluster_node_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_cluster_node_errors()}
  def describe_cluster_node(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeClusterNode", input, options)
  end

  @doc """
  Gets details about the specified Git repository.
  """
  @spec describe_code_repository(map(), describe_code_repository_input(), list()) ::
          {:ok, describe_code_repository_output(), any()}
          | {:error, {:unexpected_response, any()}}
  def describe_code_repository(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeCodeRepository", input, options)
  end

  @doc """
  Returns information about a model compilation job.

  To create a model compilation job, use
  [CreateCompilationJob](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateCompilationJob.html). To get information about multiple model compilation
  jobs, use
  [ListCompilationJobs](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_ListCompilationJobs.html).
  """
  @spec describe_compilation_job(map(), describe_compilation_job_request(), list()) ::
          {:ok, describe_compilation_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_compilation_job_errors()}
  def describe_compilation_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeCompilationJob", input, options)
  end

  @doc """
  Describes a context.
  """
  @spec describe_context(map(), describe_context_request(), list()) ::
          {:ok, describe_context_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_context_errors()}
  def describe_context(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeContext", input, options)
  end

  @doc """
  Gets the details of a data quality monitoring job definition.
  """
  @spec describe_data_quality_job_definition(
          map(),
          describe_data_quality_job_definition_request(),
          list()
        ) ::
          {:ok, describe_data_quality_job_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_data_quality_job_definition_errors()}
  def describe_data_quality_job_definition(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeDataQualityJobDefinition", input, options)
  end

  @doc """
  Describes the device.
  """
  @spec describe_device(map(), describe_device_request(), list()) ::
          {:ok, describe_device_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_device_errors()}
  def describe_device(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeDevice", input, options)
  end

  @doc """
  A description of the fleet the device belongs to.
  """
  @spec describe_device_fleet(map(), describe_device_fleet_request(), list()) ::
          {:ok, describe_device_fleet_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_device_fleet_errors()}
  def describe_device_fleet(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeDeviceFleet", input, options)
  end

  @doc """
  The description of the domain.
  """
  @spec describe_domain(map(), describe_domain_request(), list()) ::
          {:ok, describe_domain_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_domain_errors()}
  def describe_domain(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeDomain", input, options)
  end

  @doc """
  Describes an edge deployment plan with deployment status per stage.
  """
  @spec describe_edge_deployment_plan(map(), describe_edge_deployment_plan_request(), list()) ::
          {:ok, describe_edge_deployment_plan_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_edge_deployment_plan_errors()}
  def describe_edge_deployment_plan(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeEdgeDeploymentPlan", input, options)
  end

  @doc """
  A description of edge packaging jobs.
  """
  @spec describe_edge_packaging_job(map(), describe_edge_packaging_job_request(), list()) ::
          {:ok, describe_edge_packaging_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_edge_packaging_job_errors()}
  def describe_edge_packaging_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeEdgePackagingJob", input, options)
  end

  @doc """
  Returns the description of an endpoint.
  """
  @spec describe_endpoint(map(), describe_endpoint_input(), list()) ::
          {:ok, describe_endpoint_output(), any()}
          | {:error, {:unexpected_response, any()}}
  def describe_endpoint(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeEndpoint", input, options)
  end

  @doc """
  Returns the description of an endpoint configuration created using the
  `CreateEndpointConfig` API.
  """
  @spec describe_endpoint_config(map(), describe_endpoint_config_input(), list()) ::
          {:ok, describe_endpoint_config_output(), any()}
          | {:error, {:unexpected_response, any()}}
  def describe_endpoint_config(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeEndpointConfig", input, options)
  end

  @doc """
  Provides a list of an experiment's properties.
  """
  @spec describe_experiment(map(), describe_experiment_request(), list()) ::
          {:ok, describe_experiment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_experiment_errors()}
  def describe_experiment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeExperiment", input, options)
  end

  @doc """
  Use this operation to describe a `FeatureGroup`.

  The response includes
  information on the creation time, `FeatureGroup` name, the unique identifier for
  each `FeatureGroup`, and more.
  """
  @spec describe_feature_group(map(), describe_feature_group_request(), list()) ::
          {:ok, describe_feature_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_feature_group_errors()}
  def describe_feature_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeFeatureGroup", input, options)
  end

  @doc """
  Shows the metadata for a feature within a feature group.
  """
  @spec describe_feature_metadata(map(), describe_feature_metadata_request(), list()) ::
          {:ok, describe_feature_metadata_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_feature_metadata_errors()}
  def describe_feature_metadata(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeFeatureMetadata", input, options)
  end

  @doc """
  Returns information about the specified flow definition.
  """
  @spec describe_flow_definition(map(), describe_flow_definition_request(), list()) ::
          {:ok, describe_flow_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_flow_definition_errors()}
  def describe_flow_definition(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeFlowDefinition", input, options)
  end

  @doc """
  Describes a hub.
  """
  @spec describe_hub(map(), describe_hub_request(), list()) ::
          {:ok, describe_hub_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_hub_errors()}
  def describe_hub(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeHub", input, options)
  end

  @doc """
  Describe the content of a hub.
  """
  @spec describe_hub_content(map(), describe_hub_content_request(), list()) ::
          {:ok, describe_hub_content_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_hub_content_errors()}
  def describe_hub_content(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeHubContent", input, options)
  end

  @doc """
  Returns information about the requested human task user interface (worker task
  template).
  """
  @spec describe_human_task_ui(map(), describe_human_task_ui_request(), list()) ::
          {:ok, describe_human_task_ui_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_human_task_ui_errors()}
  def describe_human_task_ui(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeHumanTaskUi", input, options)
  end

  @doc """
  Returns a description of a hyperparameter tuning job, depending on the fields
  selected.

  These fields can include the name, Amazon Resource Name (ARN), job status of
  your tuning job and more.
  """
  @spec describe_hyper_parameter_tuning_job(
          map(),
          describe_hyper_parameter_tuning_job_request(),
          list()
        ) ::
          {:ok, describe_hyper_parameter_tuning_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_hyper_parameter_tuning_job_errors()}
  def describe_hyper_parameter_tuning_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeHyperParameterTuningJob", input, options)
  end

  @doc """
  Describes a SageMaker image.
  """
  @spec describe_image(map(), describe_image_request(), list()) ::
          {:ok, describe_image_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_image_errors()}
  def describe_image(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeImage", input, options)
  end

  @doc """
  Describes a version of a SageMaker image.
  """
  @spec describe_image_version(map(), describe_image_version_request(), list()) ::
          {:ok, describe_image_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_image_version_errors()}
  def describe_image_version(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeImageVersion", input, options)
  end

  @doc """
  Returns information about an inference component.
  """
  @spec describe_inference_component(map(), describe_inference_component_input(), list()) ::
          {:ok, describe_inference_component_output(), any()}
          | {:error, {:unexpected_response, any()}}
  def describe_inference_component(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeInferenceComponent", input, options)
  end

  @doc """
  Returns details about an inference experiment.
  """
  @spec describe_inference_experiment(map(), describe_inference_experiment_request(), list()) ::
          {:ok, describe_inference_experiment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_inference_experiment_errors()}
  def describe_inference_experiment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeInferenceExperiment", input, options)
  end

  @doc """
  Provides the results of the Inference Recommender job.

  One or more recommendation jobs are returned.
  """
  @spec describe_inference_recommendations_job(
          map(),
          describe_inference_recommendations_job_request(),
          list()
        ) ::
          {:ok, describe_inference_recommendations_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_inference_recommendations_job_errors()}
  def describe_inference_recommendations_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeInferenceRecommendationsJob", input, options)
  end

  @doc """
  Gets information about a labeling job.
  """
  @spec describe_labeling_job(map(), describe_labeling_job_request(), list()) ::
          {:ok, describe_labeling_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_labeling_job_errors()}
  def describe_labeling_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeLabelingJob", input, options)
  end

  @doc """
  Provides a list of properties for the requested lineage group.

  For more information, see [
  Cross-Account Lineage Tracking
  ](https://docs.aws.amazon.com/sagemaker/latest/dg/xaccount-lineage-tracking.html)
  in the *Amazon SageMaker Developer Guide*.
  """
  @spec describe_lineage_group(map(), describe_lineage_group_request(), list()) ::
          {:ok, describe_lineage_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_lineage_group_errors()}
  def describe_lineage_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeLineageGroup", input, options)
  end

  @doc """
  Returns information about an MLflow Tracking Server.
  """
  @spec describe_mlflow_tracking_server(map(), describe_mlflow_tracking_server_request(), list()) ::
          {:ok, describe_mlflow_tracking_server_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_mlflow_tracking_server_errors()}
  def describe_mlflow_tracking_server(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeMlflowTrackingServer", input, options)
  end

  @doc """
  Describes a model that you created using the `CreateModel`
  API.
  """
  @spec describe_model(map(), describe_model_input(), list()) ::
          {:ok, describe_model_output(), any()}
          | {:error, {:unexpected_response, any()}}
  def describe_model(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeModel", input, options)
  end

  @doc """
  Returns a description of a model bias job definition.
  """
  @spec describe_model_bias_job_definition(
          map(),
          describe_model_bias_job_definition_request(),
          list()
        ) ::
          {:ok, describe_model_bias_job_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_model_bias_job_definition_errors()}
  def describe_model_bias_job_definition(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeModelBiasJobDefinition", input, options)
  end

  @doc """
  Describes the content, creation time, and security configuration of an Amazon
  SageMaker Model Card.
  """
  @spec describe_model_card(map(), describe_model_card_request(), list()) ::
          {:ok, describe_model_card_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_model_card_errors()}
  def describe_model_card(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeModelCard", input, options)
  end

  @doc """
  Describes an Amazon SageMaker Model Card export job.
  """
  @spec describe_model_card_export_job(map(), describe_model_card_export_job_request(), list()) ::
          {:ok, describe_model_card_export_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_model_card_export_job_errors()}
  def describe_model_card_export_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeModelCardExportJob", input, options)
  end

  @doc """
  Returns a description of a model explainability job definition.
  """
  @spec describe_model_explainability_job_definition(
          map(),
          describe_model_explainability_job_definition_request(),
          list()
        ) ::
          {:ok, describe_model_explainability_job_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_model_explainability_job_definition_errors()}
  def describe_model_explainability_job_definition(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeModelExplainabilityJobDefinition", input, options)
  end

  @doc """
  Returns a description of the specified model package, which is used to create
  SageMaker
  models or list them on Amazon Web Services Marketplace.

  If you provided a KMS Key ID when you created your model package,
  you will see the [KMS Decrypt](https://docs.aws.amazon.com/kms/latest/APIReference/API_Decrypt.html)
  API call in your CloudTrail logs when you use this API.

  To create models in SageMaker, buyers can subscribe to model packages listed on
  Amazon Web Services
  Marketplace.
  """
  @spec describe_model_package(map(), describe_model_package_input(), list()) ::
          {:ok, describe_model_package_output(), any()}
          | {:error, {:unexpected_response, any()}}
  def describe_model_package(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeModelPackage", input, options)
  end

  @doc """
  Gets a description for the specified model group.
  """
  @spec describe_model_package_group(map(), describe_model_package_group_input(), list()) ::
          {:ok, describe_model_package_group_output(), any()}
          | {:error, {:unexpected_response, any()}}
  def describe_model_package_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeModelPackageGroup", input, options)
  end

  @doc """
  Returns a description of a model quality job definition.
  """
  @spec describe_model_quality_job_definition(
          map(),
          describe_model_quality_job_definition_request(),
          list()
        ) ::
          {:ok, describe_model_quality_job_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_model_quality_job_definition_errors()}
  def describe_model_quality_job_definition(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeModelQualityJobDefinition", input, options)
  end

  @doc """
  Describes the schedule for a monitoring job.
  """
  @spec describe_monitoring_schedule(map(), describe_monitoring_schedule_request(), list()) ::
          {:ok, describe_monitoring_schedule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_monitoring_schedule_errors()}
  def describe_monitoring_schedule(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeMonitoringSchedule", input, options)
  end

  @doc """
  Returns information about a notebook instance.
  """
  @spec describe_notebook_instance(map(), describe_notebook_instance_input(), list()) ::
          {:ok, describe_notebook_instance_output(), any()}
          | {:error, {:unexpected_response, any()}}
  def describe_notebook_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeNotebookInstance", input, options)
  end

  @doc """
  Returns a description of a notebook instance lifecycle configuration.

  For information about notebook instance lifestyle configurations, see [Step 2.1: (Optional) Customize a Notebook
  Instance](https://docs.aws.amazon.com/sagemaker/latest/dg/notebook-lifecycle-config.html).
  """
  @spec describe_notebook_instance_lifecycle_config(
          map(),
          describe_notebook_instance_lifecycle_config_input(),
          list()
        ) ::
          {:ok, describe_notebook_instance_lifecycle_config_output(), any()}
          | {:error, {:unexpected_response, any()}}
  def describe_notebook_instance_lifecycle_config(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeNotebookInstanceLifecycleConfig", input, options)
  end

  @doc """
  Provides the properties of the specified optimization job.
  """
  @spec describe_optimization_job(map(), describe_optimization_job_request(), list()) ::
          {:ok, describe_optimization_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_optimization_job_errors()}
  def describe_optimization_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeOptimizationJob", input, options)
  end

  @doc """
  Describes the details of a pipeline.
  """
  @spec describe_pipeline(map(), describe_pipeline_request(), list()) ::
          {:ok, describe_pipeline_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_pipeline_errors()}
  def describe_pipeline(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribePipeline", input, options)
  end

  @doc """
  Describes the details of an execution's pipeline definition.
  """
  @spec describe_pipeline_definition_for_execution(
          map(),
          describe_pipeline_definition_for_execution_request(),
          list()
        ) ::
          {:ok, describe_pipeline_definition_for_execution_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_pipeline_definition_for_execution_errors()}
  def describe_pipeline_definition_for_execution(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribePipelineDefinitionForExecution", input, options)
  end

  @doc """
  Describes the details of a pipeline execution.
  """
  @spec describe_pipeline_execution(map(), describe_pipeline_execution_request(), list()) ::
          {:ok, describe_pipeline_execution_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_pipeline_execution_errors()}
  def describe_pipeline_execution(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribePipelineExecution", input, options)
  end

  @doc """
  Returns a description of a processing job.
  """
  @spec describe_processing_job(map(), describe_processing_job_request(), list()) ::
          {:ok, describe_processing_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_processing_job_errors()}
  def describe_processing_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeProcessingJob", input, options)
  end

  @doc """
  Describes the details of a project.
  """
  @spec describe_project(map(), describe_project_input(), list()) ::
          {:ok, describe_project_output(), any()}
          | {:error, {:unexpected_response, any()}}
  def describe_project(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeProject", input, options)
  end

  @doc """
  Describes the space.
  """
  @spec describe_space(map(), describe_space_request(), list()) ::
          {:ok, describe_space_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_space_errors()}
  def describe_space(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeSpace", input, options)
  end

  @doc """
  Describes the Amazon SageMaker Studio Lifecycle Configuration.
  """
  @spec describe_studio_lifecycle_config(
          map(),
          describe_studio_lifecycle_config_request(),
          list()
        ) ::
          {:ok, describe_studio_lifecycle_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_studio_lifecycle_config_errors()}
  def describe_studio_lifecycle_config(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeStudioLifecycleConfig", input, options)
  end

  @doc """
  Gets information about a work team provided by a vendor.

  It returns details about the
  subscription with a vendor in the Amazon Web Services Marketplace.
  """
  @spec describe_subscribed_workteam(map(), describe_subscribed_workteam_request(), list()) ::
          {:ok, describe_subscribed_workteam_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def describe_subscribed_workteam(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeSubscribedWorkteam", input, options)
  end

  @doc """
  Returns information about a training job.

  Some of the attributes below only appear if the training job successfully
  starts.
  If the training job fails, `TrainingJobStatus` is `Failed` and,
  depending on the `FailureReason`, attributes like
  `TrainingStartTime`, `TrainingTimeInSeconds`,
  `TrainingEndTime`, and `BillableTimeInSeconds` may not be
  present in the response.
  """
  @spec describe_training_job(map(), describe_training_job_request(), list()) ::
          {:ok, describe_training_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_training_job_errors()}
  def describe_training_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeTrainingJob", input, options)
  end

  @doc """
  Returns information about a transform job.
  """
  @spec describe_transform_job(map(), describe_transform_job_request(), list()) ::
          {:ok, describe_transform_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_transform_job_errors()}
  def describe_transform_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeTransformJob", input, options)
  end

  @doc """
  Provides a list of a trial's properties.
  """
  @spec describe_trial(map(), describe_trial_request(), list()) ::
          {:ok, describe_trial_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_trial_errors()}
  def describe_trial(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeTrial", input, options)
  end

  @doc """
  Provides a list of a trials component's properties.
  """
  @spec describe_trial_component(map(), describe_trial_component_request(), list()) ::
          {:ok, describe_trial_component_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_trial_component_errors()}
  def describe_trial_component(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeTrialComponent", input, options)
  end

  @doc """
  Describes a user profile.

  For more information, see `CreateUserProfile`.
  """
  @spec describe_user_profile(map(), describe_user_profile_request(), list()) ::
          {:ok, describe_user_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_user_profile_errors()}
  def describe_user_profile(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeUserProfile", input, options)
  end

  @doc """
  Lists private workforce information, including workforce name, Amazon Resource
  Name
  (ARN), and, if applicable, allowed IP address ranges
  ([CIDRs](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Subnets.html)).

  Allowable IP address
  ranges are the IP addresses that workers can use to access tasks.

  This operation applies only to private workforces.
  """
  @spec describe_workforce(map(), describe_workforce_request(), list()) ::
          {:ok, describe_workforce_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def describe_workforce(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeWorkforce", input, options)
  end

  @doc """
  Gets information about a specific work team.

  You can see information such as the
  creation date, the last updated date, membership information, and the work
  team's Amazon
  Resource Name (ARN).
  """
  @spec describe_workteam(map(), describe_workteam_request(), list()) ::
          {:ok, describe_workteam_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def describe_workteam(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeWorkteam", input, options)
  end

  @doc """
  Disables using Service Catalog in SageMaker.

  Service Catalog is used to create
  SageMaker projects.
  """
  @spec disable_sagemaker_servicecatalog_portfolio(
          map(),
          disable_sagemaker_servicecatalog_portfolio_input(),
          list()
        ) ::
          {:ok, disable_sagemaker_servicecatalog_portfolio_output(), any()}
          | {:error, {:unexpected_response, any()}}
  def disable_sagemaker_servicecatalog_portfolio(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisableSagemakerServicecatalogPortfolio", input, options)
  end

  @doc """
  Disassociates a trial component from a trial.

  This doesn't effect other trials the
  component is associated with. Before you can delete a component, you must
  disassociate the
  component from all trials it is associated with. To associate a trial component
  with a trial,
  call the
  [AssociateTrialComponent](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_AssociateTrialComponent.html) API.

  To get a list of the trials a component is associated with, use the
  [Search](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_Search.html)
  API. Specify `ExperimentTrialComponent` for the `Resource` parameter.
  The list appears in the response under `Results.TrialComponent.Parents`.
  """
  @spec disassociate_trial_component(map(), disassociate_trial_component_request(), list()) ::
          {:ok, disassociate_trial_component_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_trial_component_errors()}
  def disassociate_trial_component(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisassociateTrialComponent", input, options)
  end

  @doc """
  Enables using Service Catalog in SageMaker.

  Service Catalog is used to create
  SageMaker projects.
  """
  @spec enable_sagemaker_servicecatalog_portfolio(
          map(),
          enable_sagemaker_servicecatalog_portfolio_input(),
          list()
        ) ::
          {:ok, enable_sagemaker_servicecatalog_portfolio_output(), any()}
          | {:error, {:unexpected_response, any()}}
  def enable_sagemaker_servicecatalog_portfolio(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "EnableSagemakerServicecatalogPortfolio", input, options)
  end

  @doc """
  Describes a fleet.
  """
  @spec get_device_fleet_report(map(), get_device_fleet_report_request(), list()) ::
          {:ok, get_device_fleet_report_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def get_device_fleet_report(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetDeviceFleetReport", input, options)
  end

  @doc """
  The resource policy for the lineage group.
  """
  @spec get_lineage_group_policy(map(), get_lineage_group_policy_request(), list()) ::
          {:ok, get_lineage_group_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_lineage_group_policy_errors()}
  def get_lineage_group_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetLineageGroupPolicy", input, options)
  end

  @doc """
  Gets a resource policy that manages access for a model group.

  For information about
  resource policies, see [Identity-based policies and resource-based
  policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_identity-vs-resource.html)
  in the *Amazon Web Services Identity and
  Access Management User Guide.*.
  """
  @spec get_model_package_group_policy(map(), get_model_package_group_policy_input(), list()) ::
          {:ok, get_model_package_group_policy_output(), any()}
          | {:error, {:unexpected_response, any()}}
  def get_model_package_group_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetModelPackageGroupPolicy", input, options)
  end

  @doc """
  Gets the status of Service Catalog in SageMaker.

  Service Catalog is used to create
  SageMaker projects.
  """
  @spec get_sagemaker_servicecatalog_portfolio_status(
          map(),
          get_sagemaker_servicecatalog_portfolio_status_input(),
          list()
        ) ::
          {:ok, get_sagemaker_servicecatalog_portfolio_status_output(), any()}
          | {:error, {:unexpected_response, any()}}
  def get_sagemaker_servicecatalog_portfolio_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "GetSagemakerServicecatalogPortfolioStatus",
      input,
      options
    )
  end

  @doc """
  Starts an Amazon SageMaker Inference Recommender autoscaling recommendation job.

  Returns recommendations for autoscaling policies
  that you can apply to your SageMaker endpoint.
  """
  @spec get_scaling_configuration_recommendation(
          map(),
          get_scaling_configuration_recommendation_request(),
          list()
        ) ::
          {:ok, get_scaling_configuration_recommendation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_scaling_configuration_recommendation_errors()}
  def get_scaling_configuration_recommendation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetScalingConfigurationRecommendation", input, options)
  end

  @doc """
  An auto-complete API for the search functionality in the SageMaker console.

  It returns
  suggestions of possible matches for the property name to use in `Search`
  queries. Provides suggestions for `HyperParameters`, `Tags`, and
  `Metrics`.
  """
  @spec get_search_suggestions(map(), get_search_suggestions_request(), list()) ::
          {:ok, get_search_suggestions_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def get_search_suggestions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetSearchSuggestions", input, options)
  end

  @doc """
  Import hub content.
  """
  @spec import_hub_content(map(), import_hub_content_request(), list()) ::
          {:ok, import_hub_content_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, import_hub_content_errors()}
  def import_hub_content(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ImportHubContent", input, options)
  end

  @doc """
  Lists the actions in your account and their properties.
  """
  @spec list_actions(map(), list_actions_request(), list()) ::
          {:ok, list_actions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_actions_errors()}
  def list_actions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListActions", input, options)
  end

  @doc """
  Lists the machine learning algorithms that have been created.
  """
  @spec list_algorithms(map(), list_algorithms_input(), list()) ::
          {:ok, list_algorithms_output(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_algorithms(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAlgorithms", input, options)
  end

  @doc """
  Lists the aliases of a specified image or image version.
  """
  @spec list_aliases(map(), list_aliases_request(), list()) ::
          {:ok, list_aliases_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_aliases_errors()}
  def list_aliases(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAliases", input, options)
  end

  @doc """
  Lists the AppImageConfigs in your account and their properties.

  The list can be
  filtered by creation time or modified time, and whether the AppImageConfig name
  contains
  a specified string.
  """
  @spec list_app_image_configs(map(), list_app_image_configs_request(), list()) ::
          {:ok, list_app_image_configs_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_app_image_configs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAppImageConfigs", input, options)
  end

  @doc """
  Lists apps.
  """
  @spec list_apps(map(), list_apps_request(), list()) ::
          {:ok, list_apps_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_apps(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListApps", input, options)
  end

  @doc """
  Lists the artifacts in your account and their properties.
  """
  @spec list_artifacts(map(), list_artifacts_request(), list()) ::
          {:ok, list_artifacts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_artifacts_errors()}
  def list_artifacts(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListArtifacts", input, options)
  end

  @doc """
  Lists the associations in your account and their properties.
  """
  @spec list_associations(map(), list_associations_request(), list()) ::
          {:ok, list_associations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_associations_errors()}
  def list_associations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAssociations", input, options)
  end

  @doc """
  Request a list of jobs.
  """
  @spec list_auto_ml_jobs(map(), list_auto_ml_jobs_request(), list()) ::
          {:ok, list_auto_ml_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_auto_ml_jobs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAutoMLJobs", input, options)
  end

  @doc """
  List the candidates created for the job.
  """
  @spec list_candidates_for_auto_ml_job(map(), list_candidates_for_auto_ml_job_request(), list()) ::
          {:ok, list_candidates_for_auto_ml_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_candidates_for_auto_ml_job_errors()}
  def list_candidates_for_auto_ml_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListCandidatesForAutoMLJob", input, options)
  end

  @doc """
  Retrieves the list of instances (also called *nodes* interchangeably)
  in a SageMaker HyperPod cluster.
  """
  @spec list_cluster_nodes(map(), list_cluster_nodes_request(), list()) ::
          {:ok, list_cluster_nodes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_cluster_nodes_errors()}
  def list_cluster_nodes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListClusterNodes", input, options)
  end

  @doc """
  Retrieves the list of SageMaker HyperPod clusters.
  """
  @spec list_clusters(map(), list_clusters_request(), list()) ::
          {:ok, list_clusters_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_clusters(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListClusters", input, options)
  end

  @doc """
  Gets a list of the Git repositories in your account.
  """
  @spec list_code_repositories(map(), list_code_repositories_input(), list()) ::
          {:ok, list_code_repositories_output(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_code_repositories(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListCodeRepositories", input, options)
  end

  @doc """
  Lists model compilation jobs that satisfy various filters.

  To create a model compilation job, use
  [CreateCompilationJob](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateCompilationJob.html). To get information about a particular model
  compilation job you have created, use
  [DescribeCompilationJob](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DescribeCompilationJob.html).
  """
  @spec list_compilation_jobs(map(), list_compilation_jobs_request(), list()) ::
          {:ok, list_compilation_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_compilation_jobs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListCompilationJobs", input, options)
  end

  @doc """
  Lists the contexts in your account and their properties.
  """
  @spec list_contexts(map(), list_contexts_request(), list()) ::
          {:ok, list_contexts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_contexts_errors()}
  def list_contexts(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListContexts", input, options)
  end

  @doc """
  Lists the data quality job definitions in your account.
  """
  @spec list_data_quality_job_definitions(
          map(),
          list_data_quality_job_definitions_request(),
          list()
        ) ::
          {:ok, list_data_quality_job_definitions_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_data_quality_job_definitions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListDataQualityJobDefinitions", input, options)
  end

  @doc """
  Returns a list of devices in the fleet.
  """
  @spec list_device_fleets(map(), list_device_fleets_request(), list()) ::
          {:ok, list_device_fleets_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_device_fleets(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListDeviceFleets", input, options)
  end

  @doc """
  A list of devices.
  """
  @spec list_devices(map(), list_devices_request(), list()) ::
          {:ok, list_devices_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_devices(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListDevices", input, options)
  end

  @doc """
  Lists the domains.
  """
  @spec list_domains(map(), list_domains_request(), list()) ::
          {:ok, list_domains_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_domains(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListDomains", input, options)
  end

  @doc """
  Lists all edge deployment plans.
  """
  @spec list_edge_deployment_plans(map(), list_edge_deployment_plans_request(), list()) ::
          {:ok, list_edge_deployment_plans_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_edge_deployment_plans(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListEdgeDeploymentPlans", input, options)
  end

  @doc """
  Returns a list of edge packaging jobs.
  """
  @spec list_edge_packaging_jobs(map(), list_edge_packaging_jobs_request(), list()) ::
          {:ok, list_edge_packaging_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_edge_packaging_jobs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListEdgePackagingJobs", input, options)
  end

  @doc """
  Lists endpoint configurations.
  """
  @spec list_endpoint_configs(map(), list_endpoint_configs_input(), list()) ::
          {:ok, list_endpoint_configs_output(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_endpoint_configs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListEndpointConfigs", input, options)
  end

  @doc """
  Lists endpoints.
  """
  @spec list_endpoints(map(), list_endpoints_input(), list()) ::
          {:ok, list_endpoints_output(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_endpoints(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListEndpoints", input, options)
  end

  @doc """
  Lists all the experiments in your account.

  The list can be filtered to show only
  experiments that were created in a specific time range. The list can be sorted
  by experiment
  name or creation time.
  """
  @spec list_experiments(map(), list_experiments_request(), list()) ::
          {:ok, list_experiments_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_experiments(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListExperiments", input, options)
  end

  @doc """
  List `FeatureGroup`s based on given filter and order.
  """
  @spec list_feature_groups(map(), list_feature_groups_request(), list()) ::
          {:ok, list_feature_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_feature_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListFeatureGroups", input, options)
  end

  @doc """
  Returns information about the flow definitions in your account.
  """
  @spec list_flow_definitions(map(), list_flow_definitions_request(), list()) ::
          {:ok, list_flow_definitions_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_flow_definitions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListFlowDefinitions", input, options)
  end

  @doc """
  List hub content versions.
  """
  @spec list_hub_content_versions(map(), list_hub_content_versions_request(), list()) ::
          {:ok, list_hub_content_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_hub_content_versions_errors()}
  def list_hub_content_versions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListHubContentVersions", input, options)
  end

  @doc """
  List the contents of a hub.
  """
  @spec list_hub_contents(map(), list_hub_contents_request(), list()) ::
          {:ok, list_hub_contents_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_hub_contents_errors()}
  def list_hub_contents(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListHubContents", input, options)
  end

  @doc """
  List all existing hubs.
  """
  @spec list_hubs(map(), list_hubs_request(), list()) ::
          {:ok, list_hubs_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_hubs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListHubs", input, options)
  end

  @doc """
  Returns information about the human task user interfaces in your account.
  """
  @spec list_human_task_uis(map(), list_human_task_uis_request(), list()) ::
          {:ok, list_human_task_uis_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_human_task_uis(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListHumanTaskUis", input, options)
  end

  @doc """
  Gets a list of
  [HyperParameterTuningJobSummary](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_HyperParameterTuningJobSummary.html)
  objects that
  describe
  the hyperparameter tuning jobs launched in your account.
  """
  @spec list_hyper_parameter_tuning_jobs(
          map(),
          list_hyper_parameter_tuning_jobs_request(),
          list()
        ) ::
          {:ok, list_hyper_parameter_tuning_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_hyper_parameter_tuning_jobs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListHyperParameterTuningJobs", input, options)
  end

  @doc """
  Lists the versions of a specified image and their properties.

  The list can be filtered
  by creation time or modified time.
  """
  @spec list_image_versions(map(), list_image_versions_request(), list()) ::
          {:ok, list_image_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_image_versions_errors()}
  def list_image_versions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListImageVersions", input, options)
  end

  @doc """
  Lists the images in your account and their properties.

  The list can be filtered by
  creation time or modified time, and whether the image name contains a specified
  string.
  """
  @spec list_images(map(), list_images_request(), list()) ::
          {:ok, list_images_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_images(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListImages", input, options)
  end

  @doc """
  Lists the inference components in your account and their properties.
  """
  @spec list_inference_components(map(), list_inference_components_input(), list()) ::
          {:ok, list_inference_components_output(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_inference_components(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListInferenceComponents", input, options)
  end

  @doc """
  Returns the list of all inference experiments.
  """
  @spec list_inference_experiments(map(), list_inference_experiments_request(), list()) ::
          {:ok, list_inference_experiments_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_inference_experiments(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListInferenceExperiments", input, options)
  end

  @doc """
  Returns a list of the subtasks for an Inference Recommender job.

  The supported subtasks are benchmarks, which evaluate the performance of your
  model on different instance types.
  """
  @spec list_inference_recommendations_job_steps(
          map(),
          list_inference_recommendations_job_steps_request(),
          list()
        ) ::
          {:ok, list_inference_recommendations_job_steps_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_inference_recommendations_job_steps_errors()}
  def list_inference_recommendations_job_steps(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListInferenceRecommendationsJobSteps", input, options)
  end

  @doc """
  Lists recommendation jobs that satisfy various filters.
  """
  @spec list_inference_recommendations_jobs(
          map(),
          list_inference_recommendations_jobs_request(),
          list()
        ) ::
          {:ok, list_inference_recommendations_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_inference_recommendations_jobs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListInferenceRecommendationsJobs", input, options)
  end

  @doc """
  Gets a list of labeling jobs.
  """
  @spec list_labeling_jobs(map(), list_labeling_jobs_request(), list()) ::
          {:ok, list_labeling_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_labeling_jobs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListLabelingJobs", input, options)
  end

  @doc """
  Gets a list of labeling jobs assigned to a specified work team.
  """
  @spec list_labeling_jobs_for_workteam(map(), list_labeling_jobs_for_workteam_request(), list()) ::
          {:ok, list_labeling_jobs_for_workteam_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_labeling_jobs_for_workteam_errors()}
  def list_labeling_jobs_for_workteam(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListLabelingJobsForWorkteam", input, options)
  end

  @doc """
  A list of lineage groups shared with your Amazon Web Services account.

  For more information, see [
  Cross-Account Lineage Tracking
  ](https://docs.aws.amazon.com/sagemaker/latest/dg/xaccount-lineage-tracking.html)
  in the *Amazon SageMaker Developer Guide*.
  """
  @spec list_lineage_groups(map(), list_lineage_groups_request(), list()) ::
          {:ok, list_lineage_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_lineage_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListLineageGroups", input, options)
  end

  @doc """
  Lists all MLflow Tracking Servers.
  """
  @spec list_mlflow_tracking_servers(map(), list_mlflow_tracking_servers_request(), list()) ::
          {:ok, list_mlflow_tracking_servers_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_mlflow_tracking_servers(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListMlflowTrackingServers", input, options)
  end

  @doc """
  Lists model bias jobs definitions that satisfy various filters.
  """
  @spec list_model_bias_job_definitions(map(), list_model_bias_job_definitions_request(), list()) ::
          {:ok, list_model_bias_job_definitions_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_model_bias_job_definitions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListModelBiasJobDefinitions", input, options)
  end

  @doc """
  List the export jobs for the Amazon SageMaker Model Card.
  """
  @spec list_model_card_export_jobs(map(), list_model_card_export_jobs_request(), list()) ::
          {:ok, list_model_card_export_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_model_card_export_jobs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListModelCardExportJobs", input, options)
  end

  @doc """
  List existing versions of an Amazon SageMaker Model Card.
  """
  @spec list_model_card_versions(map(), list_model_card_versions_request(), list()) ::
          {:ok, list_model_card_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_model_card_versions_errors()}
  def list_model_card_versions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListModelCardVersions", input, options)
  end

  @doc """
  List existing model cards.
  """
  @spec list_model_cards(map(), list_model_cards_request(), list()) ::
          {:ok, list_model_cards_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_model_cards(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListModelCards", input, options)
  end

  @doc """
  Lists model explainability job definitions that satisfy various filters.
  """
  @spec list_model_explainability_job_definitions(
          map(),
          list_model_explainability_job_definitions_request(),
          list()
        ) ::
          {:ok, list_model_explainability_job_definitions_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_model_explainability_job_definitions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListModelExplainabilityJobDefinitions", input, options)
  end

  @doc """
  Lists the domain, framework, task, and model name of standard
  machine learning models found in common model zoos.
  """
  @spec list_model_metadata(map(), list_model_metadata_request(), list()) ::
          {:ok, list_model_metadata_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_model_metadata(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListModelMetadata", input, options)
  end

  @doc """
  Gets a list of the model groups in your Amazon Web Services account.
  """
  @spec list_model_package_groups(map(), list_model_package_groups_input(), list()) ::
          {:ok, list_model_package_groups_output(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_model_package_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListModelPackageGroups", input, options)
  end

  @doc """
  Lists the model packages that have been created.
  """
  @spec list_model_packages(map(), list_model_packages_input(), list()) ::
          {:ok, list_model_packages_output(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_model_packages(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListModelPackages", input, options)
  end

  @doc """
  Gets a list of model quality monitoring job definitions in your account.
  """
  @spec list_model_quality_job_definitions(
          map(),
          list_model_quality_job_definitions_request(),
          list()
        ) ::
          {:ok, list_model_quality_job_definitions_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_model_quality_job_definitions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListModelQualityJobDefinitions", input, options)
  end

  @doc """
  Lists models created with the `CreateModel` API.
  """
  @spec list_models(map(), list_models_input(), list()) ::
          {:ok, list_models_output(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_models(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListModels", input, options)
  end

  @doc """
  Gets a list of past alerts in a model monitoring schedule.
  """
  @spec list_monitoring_alert_history(map(), list_monitoring_alert_history_request(), list()) ::
          {:ok, list_monitoring_alert_history_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_monitoring_alert_history_errors()}
  def list_monitoring_alert_history(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListMonitoringAlertHistory", input, options)
  end

  @doc """
  Gets the alerts for a single monitoring schedule.
  """
  @spec list_monitoring_alerts(map(), list_monitoring_alerts_request(), list()) ::
          {:ok, list_monitoring_alerts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_monitoring_alerts_errors()}
  def list_monitoring_alerts(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListMonitoringAlerts", input, options)
  end

  @doc """
  Returns list of all monitoring job executions.
  """
  @spec list_monitoring_executions(map(), list_monitoring_executions_request(), list()) ::
          {:ok, list_monitoring_executions_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_monitoring_executions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListMonitoringExecutions", input, options)
  end

  @doc """
  Returns list of all monitoring schedules.
  """
  @spec list_monitoring_schedules(map(), list_monitoring_schedules_request(), list()) ::
          {:ok, list_monitoring_schedules_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_monitoring_schedules(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListMonitoringSchedules", input, options)
  end

  @doc """
  Lists notebook instance lifestyle configurations created with the
  [CreateNotebookInstanceLifecycleConfig](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateNotebookInstanceLifecycleConfig.html)
  API.
  """
  @spec list_notebook_instance_lifecycle_configs(
          map(),
          list_notebook_instance_lifecycle_configs_input(),
          list()
        ) ::
          {:ok, list_notebook_instance_lifecycle_configs_output(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_notebook_instance_lifecycle_configs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListNotebookInstanceLifecycleConfigs", input, options)
  end

  @doc """
  Returns a list of the SageMaker notebook instances in the requester's account in
  an
  Amazon Web Services Region.
  """
  @spec list_notebook_instances(map(), list_notebook_instances_input(), list()) ::
          {:ok, list_notebook_instances_output(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_notebook_instances(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListNotebookInstances", input, options)
  end

  @doc """
  Lists the optimization jobs in your account and their properties.
  """
  @spec list_optimization_jobs(map(), list_optimization_jobs_request(), list()) ::
          {:ok, list_optimization_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_optimization_jobs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListOptimizationJobs", input, options)
  end

  @doc """
  Gets a list of `PipeLineExecutionStep` objects.
  """
  @spec list_pipeline_execution_steps(map(), list_pipeline_execution_steps_request(), list()) ::
          {:ok, list_pipeline_execution_steps_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_pipeline_execution_steps_errors()}
  def list_pipeline_execution_steps(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListPipelineExecutionSteps", input, options)
  end

  @doc """
  Gets a list of the pipeline executions.
  """
  @spec list_pipeline_executions(map(), list_pipeline_executions_request(), list()) ::
          {:ok, list_pipeline_executions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_pipeline_executions_errors()}
  def list_pipeline_executions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListPipelineExecutions", input, options)
  end

  @doc """
  Gets a list of parameters for a pipeline execution.
  """
  @spec list_pipeline_parameters_for_execution(
          map(),
          list_pipeline_parameters_for_execution_request(),
          list()
        ) ::
          {:ok, list_pipeline_parameters_for_execution_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_pipeline_parameters_for_execution_errors()}
  def list_pipeline_parameters_for_execution(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListPipelineParametersForExecution", input, options)
  end

  @doc """
  Gets a list of pipelines.
  """
  @spec list_pipelines(map(), list_pipelines_request(), list()) ::
          {:ok, list_pipelines_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_pipelines(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListPipelines", input, options)
  end

  @doc """
  Lists processing jobs that satisfy various filters.
  """
  @spec list_processing_jobs(map(), list_processing_jobs_request(), list()) ::
          {:ok, list_processing_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_processing_jobs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListProcessingJobs", input, options)
  end

  @doc """
  Gets a list of the projects in an Amazon Web Services account.
  """
  @spec list_projects(map(), list_projects_input(), list()) ::
          {:ok, list_projects_output(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_projects(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListProjects", input, options)
  end

  @doc """
  Lists Amazon SageMaker Catalogs based on given filters and orders.

  The maximum number of
  `ResourceCatalog`s viewable is 1000.
  """
  @spec list_resource_catalogs(map(), list_resource_catalogs_request(), list()) ::
          {:ok, list_resource_catalogs_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_resource_catalogs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListResourceCatalogs", input, options)
  end

  @doc """
  Lists spaces.
  """
  @spec list_spaces(map(), list_spaces_request(), list()) ::
          {:ok, list_spaces_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_spaces(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListSpaces", input, options)
  end

  @doc """
  Lists devices allocated to the stage, containing detailed device information and
  deployment status.
  """
  @spec list_stage_devices(map(), list_stage_devices_request(), list()) ::
          {:ok, list_stage_devices_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_stage_devices(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListStageDevices", input, options)
  end

  @doc """
  Lists the Amazon SageMaker Studio Lifecycle Configurations in your Amazon Web
  Services
  Account.
  """
  @spec list_studio_lifecycle_configs(map(), list_studio_lifecycle_configs_request(), list()) ::
          {:ok, list_studio_lifecycle_configs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_studio_lifecycle_configs_errors()}
  def list_studio_lifecycle_configs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListStudioLifecycleConfigs", input, options)
  end

  @doc """
  Gets a list of the work teams that you are subscribed to in the Amazon Web
  Services Marketplace.

  The
  list may be empty if no work team satisfies the filter specified in the
  `NameContains` parameter.
  """
  @spec list_subscribed_workteams(map(), list_subscribed_workteams_request(), list()) ::
          {:ok, list_subscribed_workteams_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_subscribed_workteams(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListSubscribedWorkteams", input, options)
  end

  @doc """
  Returns the tags for the specified SageMaker resource.
  """
  @spec list_tags(map(), list_tags_input(), list()) ::
          {:ok, list_tags_output(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_tags(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTags", input, options)
  end

  @doc """
  Lists training jobs.

  When `StatusEquals` and `MaxResults` are set at the same
  time, the `MaxResults` number of training jobs are first retrieved
  ignoring the `StatusEquals` parameter and then they are filtered by the
  `StatusEquals` parameter, which is returned as a response.

  For example, if `ListTrainingJobs` is invoked with the following
  parameters:

  `{ ... MaxResults: 100, StatusEquals: InProgress ... }`

  First, 100 trainings jobs with any status, including those other than
  `InProgress`, are selected (sorted according to the creation time,
  from the most current to the oldest). Next, those with a status of
  `InProgress` are returned.

  You can quickly test the API using the following Amazon Web Services CLI
  code.

  ```
  aws sagemaker list-training-jobs --max-results 100 --status-equals
  InProgress
  ```
  """
  @spec list_training_jobs(map(), list_training_jobs_request(), list()) ::
          {:ok, list_training_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_training_jobs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTrainingJobs", input, options)
  end

  @doc """
  Gets a list of
  [TrainingJobSummary](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_TrainingJobSummary.html)
  objects that describe the training jobs that a
  hyperparameter tuning job launched.
  """
  @spec list_training_jobs_for_hyper_parameter_tuning_job(
          map(),
          list_training_jobs_for_hyper_parameter_tuning_job_request(),
          list()
        ) ::
          {:ok, list_training_jobs_for_hyper_parameter_tuning_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_training_jobs_for_hyper_parameter_tuning_job_errors()}
  def list_training_jobs_for_hyper_parameter_tuning_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "ListTrainingJobsForHyperParameterTuningJob",
      input,
      options
    )
  end

  @doc """
  Lists transform jobs.
  """
  @spec list_transform_jobs(map(), list_transform_jobs_request(), list()) ::
          {:ok, list_transform_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_transform_jobs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTransformJobs", input, options)
  end

  @doc """
  Lists the trial components in your account.

  You can sort the list by trial component name
  or creation time. You can filter the list to show only components that were
  created in a
  specific time range. You can also filter on one of the following:

    *

  `ExperimentName`

    *

  `SourceArn`

    *

  `TrialName`
  """
  @spec list_trial_components(map(), list_trial_components_request(), list()) ::
          {:ok, list_trial_components_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_trial_components_errors()}
  def list_trial_components(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTrialComponents", input, options)
  end

  @doc """
  Lists the trials in your account.

  Specify an experiment name to limit the list to the
  trials that are part of that experiment. Specify a trial component name to limit
  the list to
  the trials that associated with that trial component. The list can be filtered
  to show only
  trials that were created in a specific time range. The list can be sorted by
  trial name or
  creation time.
  """
  @spec list_trials(map(), list_trials_request(), list()) ::
          {:ok, list_trials_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_trials_errors()}
  def list_trials(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTrials", input, options)
  end

  @doc """
  Lists user profiles.
  """
  @spec list_user_profiles(map(), list_user_profiles_request(), list()) ::
          {:ok, list_user_profiles_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_user_profiles(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListUserProfiles", input, options)
  end

  @doc """
  Use this operation to list all private and vendor workforces in an Amazon Web
  Services Region.

  Note that you can only
  have one private workforce per Amazon Web Services Region.
  """
  @spec list_workforces(map(), list_workforces_request(), list()) ::
          {:ok, list_workforces_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_workforces(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListWorkforces", input, options)
  end

  @doc """
  Gets a list of private work teams that you have defined in a region.

  The list may be empty if
  no work team satisfies the filter specified in the `NameContains`
  parameter.
  """
  @spec list_workteams(map(), list_workteams_request(), list()) ::
          {:ok, list_workteams_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_workteams(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListWorkteams", input, options)
  end

  @doc """
  Adds a resouce policy to control access to a model group.

  For information about
  resoure policies, see [Identity-based policies and resource-based
  policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_identity-vs-resource.html)
  in the *Amazon Web Services Identity and Access Management User Guide.*.
  """
  @spec put_model_package_group_policy(map(), put_model_package_group_policy_input(), list()) ::
          {:ok, put_model_package_group_policy_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_model_package_group_policy_errors()}
  def put_model_package_group_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutModelPackageGroupPolicy", input, options)
  end

  @doc """
  Use this action to inspect your lineage and discover relationships between
  entities.

  For more information, see [
  Querying Lineage
  Entities](https://docs.aws.amazon.com/sagemaker/latest/dg/querying-lineage-entities.html)
  in the *Amazon SageMaker Developer Guide*.
  """
  @spec query_lineage(map(), query_lineage_request(), list()) ::
          {:ok, query_lineage_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, query_lineage_errors()}
  def query_lineage(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "QueryLineage", input, options)
  end

  @doc """
  Register devices.
  """
  @spec register_devices(map(), register_devices_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, register_devices_errors()}
  def register_devices(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RegisterDevices", input, options)
  end

  @doc """
  Renders the UI template so that you can preview the worker's experience.
  """
  @spec render_ui_template(map(), render_ui_template_request(), list()) ::
          {:ok, render_ui_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, render_ui_template_errors()}
  def render_ui_template(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RenderUiTemplate", input, options)
  end

  @doc """
  Retry the execution of the pipeline.
  """
  @spec retry_pipeline_execution(map(), retry_pipeline_execution_request(), list()) ::
          {:ok, retry_pipeline_execution_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, retry_pipeline_execution_errors()}
  def retry_pipeline_execution(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RetryPipelineExecution", input, options)
  end

  @doc """
  Finds SageMaker resources that match a search query.

  Matching resources are returned
  as a list of `SearchRecord` objects in the response. You can sort the search
  results by any resource property in a ascending or descending order.

  You can query against the following value types: numeric, text, Boolean, and
  timestamp.

  The Search API may provide access to otherwise restricted data. See [Amazon SageMaker
  API Permissions: Actions, Permissions, and Resources
  Reference](https://docs.aws.amazon.com/sagemaker/latest/dg/api-permissions-reference.html)
  for more
  information.
  """
  @spec search(map(), search_request(), list()) ::
          {:ok, search_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def search(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "Search", input, options)
  end

  @doc """
  Notifies the pipeline that the execution of a callback step failed, along with a
  message describing why.

  When a callback step is run, the pipeline generates a callback
  token and includes the token in a message sent to Amazon Simple Queue Service
  (Amazon SQS).
  """
  @spec send_pipeline_execution_step_failure(
          map(),
          send_pipeline_execution_step_failure_request(),
          list()
        ) ::
          {:ok, send_pipeline_execution_step_failure_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, send_pipeline_execution_step_failure_errors()}
  def send_pipeline_execution_step_failure(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SendPipelineExecutionStepFailure", input, options)
  end

  @doc """
  Notifies the pipeline that the execution of a callback step succeeded and
  provides a
  list of the step's output parameters.

  When a callback step is run, the pipeline generates
  a callback token and includes the token in a message sent to Amazon Simple Queue
  Service (Amazon SQS).
  """
  @spec send_pipeline_execution_step_success(
          map(),
          send_pipeline_execution_step_success_request(),
          list()
        ) ::
          {:ok, send_pipeline_execution_step_success_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, send_pipeline_execution_step_success_errors()}
  def send_pipeline_execution_step_success(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SendPipelineExecutionStepSuccess", input, options)
  end

  @doc """
  Starts a stage in an edge deployment plan.
  """
  @spec start_edge_deployment_stage(map(), start_edge_deployment_stage_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
  def start_edge_deployment_stage(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartEdgeDeploymentStage", input, options)
  end

  @doc """
  Starts an inference experiment.
  """
  @spec start_inference_experiment(map(), start_inference_experiment_request(), list()) ::
          {:ok, start_inference_experiment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_inference_experiment_errors()}
  def start_inference_experiment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartInferenceExperiment", input, options)
  end

  @doc """
  Programmatically start an MLflow Tracking Server.
  """
  @spec start_mlflow_tracking_server(map(), start_mlflow_tracking_server_request(), list()) ::
          {:ok, start_mlflow_tracking_server_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_mlflow_tracking_server_errors()}
  def start_mlflow_tracking_server(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartMlflowTrackingServer", input, options)
  end

  @doc """
  Starts a previously stopped monitoring schedule.

  By default, when you successfully create a new schedule, the status of a
  monitoring
  schedule is `scheduled`.
  """
  @spec start_monitoring_schedule(map(), start_monitoring_schedule_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_monitoring_schedule_errors()}
  def start_monitoring_schedule(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartMonitoringSchedule", input, options)
  end

  @doc """
  Launches an ML compute instance with the latest version of the libraries and
  attaches your ML storage volume.

  After configuring the notebook instance, SageMaker sets the
  notebook instance status to `InService`. A notebook instance's status must be
  `InService` before you can connect to your Jupyter notebook.
  """
  @spec start_notebook_instance(map(), start_notebook_instance_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_notebook_instance_errors()}
  def start_notebook_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartNotebookInstance", input, options)
  end

  @doc """
  Starts a pipeline execution.
  """
  @spec start_pipeline_execution(map(), start_pipeline_execution_request(), list()) ::
          {:ok, start_pipeline_execution_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_pipeline_execution_errors()}
  def start_pipeline_execution(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartPipelineExecution", input, options)
  end

  @doc """
  A method for forcing a running job to shut down.
  """
  @spec stop_auto_ml_job(map(), stop_auto_ml_job_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_auto_ml_job_errors()}
  def stop_auto_ml_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopAutoMLJob", input, options)
  end

  @doc """
  Stops a model compilation job.

  To stop a job, Amazon SageMaker sends the algorithm the SIGTERM signal. This
  gracefully shuts the
  job down. If the job hasn't stopped, it sends the SIGKILL signal.

  When it receives a `StopCompilationJob` request, Amazon SageMaker changes the
  `CompilationJobStatus` of the job to `Stopping`. After Amazon
  SageMaker stops the job, it sets the `CompilationJobStatus` to
  `Stopped`.
  """
  @spec stop_compilation_job(map(), stop_compilation_job_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_compilation_job_errors()}
  def stop_compilation_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopCompilationJob", input, options)
  end

  @doc """
  Stops a stage in an edge deployment plan.
  """
  @spec stop_edge_deployment_stage(map(), stop_edge_deployment_stage_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
  def stop_edge_deployment_stage(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopEdgeDeploymentStage", input, options)
  end

  @doc """
  Request to stop an edge packaging job.
  """
  @spec stop_edge_packaging_job(map(), stop_edge_packaging_job_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
  def stop_edge_packaging_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopEdgePackagingJob", input, options)
  end

  @doc """
  Stops a running hyperparameter tuning job and all running training jobs that the
  tuning job launched.

  All model artifacts output from the training jobs are stored in Amazon Simple
  Storage Service (Amazon S3). All
  data that the training jobs write to Amazon CloudWatch Logs are still available
  in CloudWatch. After the
  tuning job moves to the `Stopped` state, it releases all
  reserved
  resources for the tuning job.
  """
  @spec stop_hyper_parameter_tuning_job(map(), stop_hyper_parameter_tuning_job_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_hyper_parameter_tuning_job_errors()}
  def stop_hyper_parameter_tuning_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopHyperParameterTuningJob", input, options)
  end

  @doc """
  Stops an inference experiment.
  """
  @spec stop_inference_experiment(map(), stop_inference_experiment_request(), list()) ::
          {:ok, stop_inference_experiment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_inference_experiment_errors()}
  def stop_inference_experiment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopInferenceExperiment", input, options)
  end

  @doc """
  Stops an Inference Recommender job.
  """
  @spec stop_inference_recommendations_job(
          map(),
          stop_inference_recommendations_job_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_inference_recommendations_job_errors()}
  def stop_inference_recommendations_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopInferenceRecommendationsJob", input, options)
  end

  @doc """
  Stops a running labeling job.

  A job that is stopped cannot be restarted. Any results
  obtained before the job is stopped are placed in the Amazon S3 output bucket.
  """
  @spec stop_labeling_job(map(), stop_labeling_job_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_labeling_job_errors()}
  def stop_labeling_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopLabelingJob", input, options)
  end

  @doc """
  Programmatically stop an MLflow Tracking Server.
  """
  @spec stop_mlflow_tracking_server(map(), stop_mlflow_tracking_server_request(), list()) ::
          {:ok, stop_mlflow_tracking_server_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_mlflow_tracking_server_errors()}
  def stop_mlflow_tracking_server(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopMlflowTrackingServer", input, options)
  end

  @doc """
  Stops a previously started monitoring schedule.
  """
  @spec stop_monitoring_schedule(map(), stop_monitoring_schedule_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_monitoring_schedule_errors()}
  def stop_monitoring_schedule(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopMonitoringSchedule", input, options)
  end

  @doc """
  Terminates the ML compute instance.

  Before terminating the instance, SageMaker
  disconnects the ML storage volume from it. SageMaker preserves the ML storage
  volume. SageMaker
  stops charging you for the ML compute instance when you call
  `StopNotebookInstance`.

  To access data on the ML storage volume for a notebook instance that has been
  terminated, call the `StartNotebookInstance` API.
  `StartNotebookInstance` launches another ML compute instance, configures
  it, and attaches the preserved ML storage volume so you can continue your work.
  """
  @spec stop_notebook_instance(map(), stop_notebook_instance_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
  def stop_notebook_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopNotebookInstance", input, options)
  end

  @doc """
  Ends a running inference optimization job.
  """
  @spec stop_optimization_job(map(), stop_optimization_job_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_optimization_job_errors()}
  def stop_optimization_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopOptimizationJob", input, options)
  end

  @doc """
  Stops a pipeline execution.

  ## Callback Step

  A pipeline execution won't stop while a callback step is running.
  When you call `StopPipelineExecution`
  on a pipeline execution with a running callback step, SageMaker Pipelines sends
  an
  additional Amazon SQS message to the specified SQS queue. The body of the SQS
  message
  contains a "Status" field which is set to "Stopping".

  You should add logic to your Amazon SQS message consumer to take any needed
  action (for
  example, resource cleanup) upon receipt of the message followed by a call to
  `SendPipelineExecutionStepSuccess` or
  `SendPipelineExecutionStepFailure`.

  Only when SageMaker Pipelines receives one of these calls will it stop the
  pipeline execution.

  ## Lambda Step

  A pipeline execution can't be stopped while a lambda step is running because the
  Lambda
  function invoked by the lambda step can't be stopped. If you attempt to stop the
  execution
  while the Lambda function is running, the pipeline waits for the Lambda function
  to finish
  or until the timeout is hit, whichever occurs first, and then stops. If the
  Lambda function
  finishes, the pipeline execution status is `Stopped`. If the timeout is hit
  the pipeline execution status is `Failed`.
  """
  @spec stop_pipeline_execution(map(), stop_pipeline_execution_request(), list()) ::
          {:ok, stop_pipeline_execution_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_pipeline_execution_errors()}
  def stop_pipeline_execution(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopPipelineExecution", input, options)
  end

  @doc """
  Stops a processing job.
  """
  @spec stop_processing_job(map(), stop_processing_job_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_processing_job_errors()}
  def stop_processing_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopProcessingJob", input, options)
  end

  @doc """
  Stops a training job.

  To stop a job, SageMaker sends the algorithm the
  `SIGTERM` signal, which delays job termination for 120 seconds.
  Algorithms might use this 120-second window to save the model artifacts, so the
  results
  of the training is not lost.

  When it receives a `StopTrainingJob` request, SageMaker changes the status of
  the job to `Stopping`. After SageMaker stops the job, it sets the status to
  `Stopped`.
  """
  @spec stop_training_job(map(), stop_training_job_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_training_job_errors()}
  def stop_training_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopTrainingJob", input, options)
  end

  @doc """
  Stops a batch transform job.

  When Amazon SageMaker receives a `StopTransformJob` request, the status of the
  job
  changes to `Stopping`. After Amazon SageMaker
  stops
  the job, the status is set to `Stopped`. When you stop a batch transform job
  before
  it is completed, Amazon SageMaker doesn't store the job's output in Amazon S3.
  """
  @spec stop_transform_job(map(), stop_transform_job_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_transform_job_errors()}
  def stop_transform_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopTransformJob", input, options)
  end

  @doc """
  Updates an action.
  """
  @spec update_action(map(), update_action_request(), list()) ::
          {:ok, update_action_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_action_errors()}
  def update_action(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateAction", input, options)
  end

  @doc """
  Updates the properties of an AppImageConfig.
  """
  @spec update_app_image_config(map(), update_app_image_config_request(), list()) ::
          {:ok, update_app_image_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_app_image_config_errors()}
  def update_app_image_config(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateAppImageConfig", input, options)
  end

  @doc """
  Updates an artifact.
  """
  @spec update_artifact(map(), update_artifact_request(), list()) ::
          {:ok, update_artifact_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_artifact_errors()}
  def update_artifact(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateArtifact", input, options)
  end

  @doc """
  Updates a SageMaker HyperPod cluster.
  """
  @spec update_cluster(map(), update_cluster_request(), list()) ::
          {:ok, update_cluster_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_cluster_errors()}
  def update_cluster(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateCluster", input, options)
  end

  @doc """
  Updates the platform software of a SageMaker HyperPod cluster for security
  patching.

  To learn how to
  use this API, see [Update the SageMaker HyperPod platform software of a cluster](https://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-hyperpod-operate.html#sagemaker-hyperpod-operate-cli-command-update-cluster-software).
  """
  @spec update_cluster_software(map(), update_cluster_software_request(), list()) ::
          {:ok, update_cluster_software_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_cluster_software_errors()}
  def update_cluster_software(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateClusterSoftware", input, options)
  end

  @doc """
  Updates the specified Git repository with the specified values.
  """
  @spec update_code_repository(map(), update_code_repository_input(), list()) ::
          {:ok, update_code_repository_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_code_repository_errors()}
  def update_code_repository(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateCodeRepository", input, options)
  end

  @doc """
  Updates a context.
  """
  @spec update_context(map(), update_context_request(), list()) ::
          {:ok, update_context_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_context_errors()}
  def update_context(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateContext", input, options)
  end

  @doc """
  Updates a fleet of devices.
  """
  @spec update_device_fleet(map(), update_device_fleet_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_device_fleet_errors()}
  def update_device_fleet(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateDeviceFleet", input, options)
  end

  @doc """
  Updates one or more devices in a fleet.
  """
  @spec update_devices(map(), update_devices_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
  def update_devices(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateDevices", input, options)
  end

  @doc """
  Updates the default settings for new user profiles in the domain.
  """
  @spec update_domain(map(), update_domain_request(), list()) ::
          {:ok, update_domain_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_domain_errors()}
  def update_domain(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateDomain", input, options)
  end

  @doc """
  Deploys the `EndpointConfig` specified in the request to a new fleet of
  instances.

  SageMaker shifts endpoint traffic to the new instances with the updated endpoint
  configuration and then deletes the old instances using the previous
  `EndpointConfig` (there is no availability loss). For more information
  about how to control the update and traffic shifting process, see [ Update models in
  production](https://docs.aws.amazon.com/sagemaker/latest/dg/deployment-guardrails.html).

  When SageMaker receives the request, it sets the endpoint status to `Updating`.
  After updating the endpoint, it sets the status to `InService`. To check the
  status of an endpoint, use the
  [DescribeEndpoint](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DescribeEndpoint.html)
  API.

  You must not delete an `EndpointConfig` in use by an endpoint that is
  live or while the `UpdateEndpoint` or `CreateEndpoint`
  operations are being performed on the endpoint. To update an endpoint, you must
  create a new `EndpointConfig`.

  If you delete the `EndpointConfig` of an endpoint that is active or
  being created or updated you may lose visibility into the instance type the
  endpoint
  is using. The endpoint must be deleted in order to stop incurring charges.
  """
  @spec update_endpoint(map(), update_endpoint_input(), list()) ::
          {:ok, update_endpoint_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_endpoint_errors()}
  def update_endpoint(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateEndpoint", input, options)
  end

  @doc """
  Updates variant weight of one or more variants associated with an existing
  endpoint, or capacity of one variant associated with an existing endpoint.

  When it
  receives the request, SageMaker sets the endpoint status to `Updating`. After
  updating the endpoint, it sets the status to `InService`. To check the status
  of an endpoint, use the
  [DescribeEndpoint](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DescribeEndpoint.html)
  API.
  """
  @spec update_endpoint_weights_and_capacities(
          map(),
          update_endpoint_weights_and_capacities_input(),
          list()
        ) ::
          {:ok, update_endpoint_weights_and_capacities_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_endpoint_weights_and_capacities_errors()}
  def update_endpoint_weights_and_capacities(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateEndpointWeightsAndCapacities", input, options)
  end

  @doc """
  Adds, updates, or removes the description of an experiment.

  Updates the display name of an
  experiment.
  """
  @spec update_experiment(map(), update_experiment_request(), list()) ::
          {:ok, update_experiment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_experiment_errors()}
  def update_experiment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateExperiment", input, options)
  end

  @doc """
  Updates the feature group by either adding features or updating the online store
  configuration.

  Use one of the following request parameters at a time while using the
  `UpdateFeatureGroup` API.

  You can add features for your feature group using the `FeatureAdditions`
  request parameter. Features cannot be removed from a feature group.

  You can update the online store configuration by using the
  `OnlineStoreConfig` request parameter. If a `TtlDuration` is
  specified, the default `TtlDuration` applies for all records added to the
  feature group *after the feature group is updated*. If a record level
  `TtlDuration` exists from using the `PutRecord` API, the record
  level `TtlDuration` applies to that record instead of the default
  `TtlDuration`. To remove the default `TtlDuration` from an
  existing feature group, use the `UpdateFeatureGroup` API and set the
  `TtlDuration`
  `Unit` and `Value` to `null`.
  """
  @spec update_feature_group(map(), update_feature_group_request(), list()) ::
          {:ok, update_feature_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_feature_group_errors()}
  def update_feature_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateFeatureGroup", input, options)
  end

  @doc """
  Updates the description and parameters of the feature group.
  """
  @spec update_feature_metadata(map(), update_feature_metadata_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_feature_metadata_errors()}
  def update_feature_metadata(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateFeatureMetadata", input, options)
  end

  @doc """
  Update a hub.
  """
  @spec update_hub(map(), update_hub_request(), list()) ::
          {:ok, update_hub_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_hub_errors()}
  def update_hub(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateHub", input, options)
  end

  @doc """
  Updates the properties of a SageMaker image.

  To change the image's tags, use the
  [AddTags](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_AddTags.html) and
  [DeleteTags](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DeleteTags.html)
  APIs.
  """
  @spec update_image(map(), update_image_request(), list()) ::
          {:ok, update_image_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_image_errors()}
  def update_image(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateImage", input, options)
  end

  @doc """
  Updates the properties of a SageMaker image version.
  """
  @spec update_image_version(map(), update_image_version_request(), list()) ::
          {:ok, update_image_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_image_version_errors()}
  def update_image_version(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateImageVersion", input, options)
  end

  @doc """
  Updates an inference component.
  """
  @spec update_inference_component(map(), update_inference_component_input(), list()) ::
          {:ok, update_inference_component_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_inference_component_errors()}
  def update_inference_component(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateInferenceComponent", input, options)
  end

  @doc """
  Runtime settings for a model that is deployed with an inference component.
  """
  @spec update_inference_component_runtime_config(
          map(),
          update_inference_component_runtime_config_input(),
          list()
        ) ::
          {:ok, update_inference_component_runtime_config_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_inference_component_runtime_config_errors()}
  def update_inference_component_runtime_config(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateInferenceComponentRuntimeConfig", input, options)
  end

  @doc """

  Updates an inference experiment that you created.

  The status of the inference experiment has to be either
  `Created`, `Running`. For more information on the status of an inference
  experiment,
  see
  [DescribeInferenceExperiment](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DescribeInferenceExperiment.html).
  """
  @spec update_inference_experiment(map(), update_inference_experiment_request(), list()) ::
          {:ok, update_inference_experiment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_inference_experiment_errors()}
  def update_inference_experiment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateInferenceExperiment", input, options)
  end

  @doc """
  Updates properties of an existing MLflow Tracking Server.
  """
  @spec update_mlflow_tracking_server(map(), update_mlflow_tracking_server_request(), list()) ::
          {:ok, update_mlflow_tracking_server_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_mlflow_tracking_server_errors()}
  def update_mlflow_tracking_server(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateMlflowTrackingServer", input, options)
  end

  @doc """
  Update an Amazon SageMaker Model Card.

  You cannot update both model card content and model card status in a single
  call.
  """
  @spec update_model_card(map(), update_model_card_request(), list()) ::
          {:ok, update_model_card_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_model_card_errors()}
  def update_model_card(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateModelCard", input, options)
  end

  @doc """
  Updates a versioned model.
  """
  @spec update_model_package(map(), update_model_package_input(), list()) ::
          {:ok, update_model_package_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_model_package_errors()}
  def update_model_package(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateModelPackage", input, options)
  end

  @doc """
  Update the parameters of a model monitor alert.
  """
  @spec update_monitoring_alert(map(), update_monitoring_alert_request(), list()) ::
          {:ok, update_monitoring_alert_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_monitoring_alert_errors()}
  def update_monitoring_alert(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateMonitoringAlert", input, options)
  end

  @doc """
  Updates a previously created schedule.
  """
  @spec update_monitoring_schedule(map(), update_monitoring_schedule_request(), list()) ::
          {:ok, update_monitoring_schedule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_monitoring_schedule_errors()}
  def update_monitoring_schedule(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateMonitoringSchedule", input, options)
  end

  @doc """
  Updates a notebook instance.

  NotebookInstance updates include upgrading or
  downgrading the ML compute instance used for your notebook instance to
  accommodate
  changes in your workload requirements.
  """
  @spec update_notebook_instance(map(), update_notebook_instance_input(), list()) ::
          {:ok, update_notebook_instance_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_notebook_instance_errors()}
  def update_notebook_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateNotebookInstance", input, options)
  end

  @doc """
  Updates a notebook instance lifecycle configuration created with the
  [CreateNotebookInstanceLifecycleConfig](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateNotebookInstanceLifecycleConfig.html)
  API.
  """
  @spec update_notebook_instance_lifecycle_config(
          map(),
          update_notebook_instance_lifecycle_config_input(),
          list()
        ) ::
          {:ok, update_notebook_instance_lifecycle_config_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_notebook_instance_lifecycle_config_errors()}
  def update_notebook_instance_lifecycle_config(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateNotebookInstanceLifecycleConfig", input, options)
  end

  @doc """
  Updates a pipeline.
  """
  @spec update_pipeline(map(), update_pipeline_request(), list()) ::
          {:ok, update_pipeline_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_pipeline_errors()}
  def update_pipeline(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdatePipeline", input, options)
  end

  @doc """
  Updates a pipeline execution.
  """
  @spec update_pipeline_execution(map(), update_pipeline_execution_request(), list()) ::
          {:ok, update_pipeline_execution_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_pipeline_execution_errors()}
  def update_pipeline_execution(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdatePipelineExecution", input, options)
  end

  @doc """
  Updates a machine learning (ML) project that is created from a template that
  sets up an ML pipeline from training to deploying an approved model.

  You must not update a project that is in use. If you update the
  `ServiceCatalogProvisioningUpdateDetails` of a project that is active
  or being created, or updated, you may lose resources already created by the
  project.
  """
  @spec update_project(map(), update_project_input(), list()) ::
          {:ok, update_project_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_project_errors()}
  def update_project(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateProject", input, options)
  end

  @doc """
  Updates the settings of a space.
  """
  @spec update_space(map(), update_space_request(), list()) ::
          {:ok, update_space_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_space_errors()}
  def update_space(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateSpace", input, options)
  end

  @doc """
  Update a model training job to request a new Debugger profiling configuration or
  to
  change warm pool retention length.
  """
  @spec update_training_job(map(), update_training_job_request(), list()) ::
          {:ok, update_training_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_training_job_errors()}
  def update_training_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateTrainingJob", input, options)
  end

  @doc """
  Updates the display name of a trial.
  """
  @spec update_trial(map(), update_trial_request(), list()) ::
          {:ok, update_trial_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_trial_errors()}
  def update_trial(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateTrial", input, options)
  end

  @doc """
  Updates one or more properties of a trial component.
  """
  @spec update_trial_component(map(), update_trial_component_request(), list()) ::
          {:ok, update_trial_component_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_trial_component_errors()}
  def update_trial_component(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateTrialComponent", input, options)
  end

  @doc """
  Updates a user profile.
  """
  @spec update_user_profile(map(), update_user_profile_request(), list()) ::
          {:ok, update_user_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_user_profile_errors()}
  def update_user_profile(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateUserProfile", input, options)
  end

  @doc """
  Use this operation to update your workforce.

  You can use this operation to
  require that workers use specific IP addresses to work on tasks
  and to update your OpenID Connect (OIDC) Identity Provider (IdP) workforce
  configuration.

  The worker portal is now supported in VPC and public internet.

  Use `SourceIpConfig` to restrict worker access to tasks to a specific range of
  IP addresses.
  You specify allowed IP addresses by creating a list of up to ten
  [CIDRs](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Subnets.html). By default, a workforce isn't restricted to specific IP addresses. If you
  specify a
  range of IP addresses, workers who attempt to access tasks using any IP address
  outside
  the specified range are denied and get a `Not Found` error message on
  the worker portal.

  To restrict access to all the workers in public internet, add the
  `SourceIpConfig` CIDR value as "10.0.0.0/16".

  Amazon SageMaker does not support Source Ip restriction for worker portals in
  VPC.

  Use `OidcConfig` to update the configuration of a workforce created using
  your own OIDC IdP.

  You can only update your OIDC IdP configuration when there are no work teams
  associated with your workforce. You can delete work teams using the
  [DeleteWorkteam](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DeleteWorkteam.html)
  operation.

  After restricting access to a range of IP addresses or updating your OIDC IdP
  configuration with this operation, you
  can view details about your update workforce using the
  [DescribeWorkforce](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DescribeWorkforce.html)
  operation.

  This operation only applies to private workforces.
  """
  @spec update_workforce(map(), update_workforce_request(), list()) ::
          {:ok, update_workforce_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_workforce_errors()}
  def update_workforce(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateWorkforce", input, options)
  end

  @doc """
  Updates an existing work team with new member definitions or description.
  """
  @spec update_workteam(map(), update_workteam_request(), list()) ::
          {:ok, update_workteam_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_workteam_errors()}
  def update_workteam(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateWorkteam", input, options)
  end
end
